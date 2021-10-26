
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
  "uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "069b8a06-f854-4e98-85f7-ca1a537d116a",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "2aa20327-abfe-4413-9818-8a7685ec047b",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "8bb82420-e273-4d3d-995c-be4ccccb5ec8",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "c93338f4-a996-4325-97e8-bf415e1835c7",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "d22da46c-aa4a-4cff-a73c-f2b32ad86fde",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "ad65bcb8-58f2-4fb7-8876-75286a92489a",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "6bfc8482-5608-48ba-ba58-78ae9207e2d1",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
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
      "uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
      "parent_uuid": "60c214a2-7216-4fa6-8a39-2195279e8622",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "5ff6ce90-ccbf-4e1e-b369-00481126d772",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "fc60a1ce-d5c6-435e-b4a6-9b0efeb285e3",
              "parent_uuid": "5ff6ce90-ccbf-4e1e-b369-00481126d772",
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
              "uuid": "d444eee0-1078-454d-9729-8d2dd5f59ad7",
              "parent_uuid": "5ff6ce90-ccbf-4e1e-b369-00481126d772",
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
              "uuid": "edeb5bf3-2057-41dc-bcf1-bcb628c031c6",
              "parent_uuid": "5ff6ce90-ccbf-4e1e-b369-00481126d772",
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
              "uuid": "a5359795-5f83-41d5-8b99-9883c67a1733",
              "parent_uuid": "5ff6ce90-ccbf-4e1e-b369-00481126d772",
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
          "uuid": "daae9d42-c820-4352-9cd5-e23c144cffb5",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "8b846f8f-4e91-4454-b80c-802ad7c93029",
              "parent_uuid": "daae9d42-c820-4352-9cd5-e23c144cffb5",
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
              "uuid": "51f2280f-bb04-4a2c-8603-3011599bab72",
              "parent_uuid": "daae9d42-c820-4352-9cd5-e23c144cffb5",
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
              "uuid": "daf33cad-62df-4d88-b784-1b1768e7161e",
              "parent_uuid": "daae9d42-c820-4352-9cd5-e23c144cffb5",
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
              "uuid": "592a8f93-7cc5-4baa-a8ef-861b0486d0f8",
              "parent_uuid": "daae9d42-c820-4352-9cd5-e23c144cffb5",
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
          "uuid": "94c05423-a498-4347-8fed-4c10e084b628",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3c9c13e6-5a5b-4033-b039-3312f35ad4a1",
              "parent_uuid": "94c05423-a498-4347-8fed-4c10e084b628",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "ade8b1ba-ec00-46cb-aa84-a29fbffe3b95",
              "parent_uuid": "94c05423-a498-4347-8fed-4c10e084b628",
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
              "uuid": "6b16131b-e445-406b-9b4d-dd0d66200fd4",
              "parent_uuid": "94c05423-a498-4347-8fed-4c10e084b628",
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
              "uuid": "e2e57b2d-88f5-42c9-b537-ae37358fb841",
              "parent_uuid": "94c05423-a498-4347-8fed-4c10e084b628",
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
              "uuid": "0653298e-0eb9-4637-8145-ac3e0ca4b425",
              "parent_uuid": "94c05423-a498-4347-8fed-4c10e084b628",
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
              "uuid": "3dc0050c-0876-4926-9bbf-cb6f640224a6",
              "parent_uuid": "94c05423-a498-4347-8fed-4c10e084b628",
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
          "uuid": "a130634c-db7f-43e5-a3a2-a1116df6d2fc",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cdd587b9-2525-439a-9234-8dcd58d8a4d3",
              "parent_uuid": "a130634c-db7f-43e5-a3a2-a1116df6d2fc",
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
          "uuid": "bdfe9b06-3383-4bb8-b864-a1d6c5b230bb",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f173ef67-ab9c-4e1a-b000-a160b8af4804",
              "parent_uuid": "bdfe9b06-3383-4bb8-b864-a1d6c5b230bb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9763045c-c024-4b94-a042-456c9463d544",
              "parent_uuid": "bdfe9b06-3383-4bb8-b864-a1d6c5b230bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ea0beeb2-4e7b-4af5-8a74-43265f952bac",
              "parent_uuid": "bdfe9b06-3383-4bb8-b864-a1d6c5b230bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b95d2a3c-e49b-4448-b0fb-265472b8c9cd",
                  "parent_uuid": "ea0beeb2-4e7b-4af5-8a74-43265f952bac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68a11240-348b-4bfc-8df9-a856763031aa",
              "parent_uuid": "bdfe9b06-3383-4bb8-b864-a1d6c5b230bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "561de4c2-69fe-4ad1-802a-4a98251bdc10",
                  "parent_uuid": "68a11240-348b-4bfc-8df9-a856763031aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8263ae5a-391e-4b40-8c94-30535bf3ce15",
              "parent_uuid": "bdfe9b06-3383-4bb8-b864-a1d6c5b230bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "bd48da84-9abe-4751-8324-b09371f92de8",
                  "parent_uuid": "8263ae5a-391e-4b40-8c94-30535bf3ce15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca21ae88-c181-4d99-9ac8-a7bc0a904f16",
              "parent_uuid": "bdfe9b06-3383-4bb8-b864-a1d6c5b230bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7b923bc4-d468-4b87-adc7-590c7b34a420",
                  "parent_uuid": "ca21ae88-c181-4d99-9ac8-a7bc0a904f16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "81ca9384-2826-4d08-a5ae-c81a45aec663",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "03f0d045-ca75-4833-a45d-a78f52dbb4aa",
              "parent_uuid": "81ca9384-2826-4d08-a5ae-c81a45aec663",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4ed276c8-73e2-4ccc-8d60-37bfeef80bea",
              "parent_uuid": "81ca9384-2826-4d08-a5ae-c81a45aec663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "0b744838-5cee-4f0a-b0d2-7529c0c97353",
              "parent_uuid": "81ca9384-2826-4d08-a5ae-c81a45aec663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "fd3fe48d-76e0-44da-9f23-faa01519fbd5",
                  "parent_uuid": "0b744838-5cee-4f0a-b0d2-7529c0c97353",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a245ea5-17de-4f47-9aa5-7bc00985b057",
              "parent_uuid": "81ca9384-2826-4d08-a5ae-c81a45aec663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0259caf3-c4cf-4cd8-a4ec-931f86877abe",
                  "parent_uuid": "8a245ea5-17de-4f47-9aa5-7bc00985b057",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e02782c-b4d1-4255-9688-5dbca71c7fae",
              "parent_uuid": "81ca9384-2826-4d08-a5ae-c81a45aec663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a30ae8a5-146d-4a2c-96c3-3faa799ea5ca",
                  "parent_uuid": "7e02782c-b4d1-4255-9688-5dbca71c7fae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1d19752-219f-454f-a7d0-07ace13c1507",
              "parent_uuid": "81ca9384-2826-4d08-a5ae-c81a45aec663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "88f2bd83-de2b-4afd-aeee-1c4fb6282bbd",
                  "parent_uuid": "b1d19752-219f-454f-a7d0-07ace13c1507",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e25f9f1e-0d69-4177-a308-22b059877dc7",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6376f77-3ce8-4274-b45f-b6b8a63e12f4",
              "parent_uuid": "e25f9f1e-0d69-4177-a308-22b059877dc7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "35cdc115-059e-4801-8d24-115686295a6d",
              "parent_uuid": "e25f9f1e-0d69-4177-a308-22b059877dc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "faa061bc-f62c-47e7-8b84-4ebd8a4eb522",
              "parent_uuid": "e25f9f1e-0d69-4177-a308-22b059877dc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6d89842-4387-43a1-9311-dcaff0fa961a",
                  "parent_uuid": "faa061bc-f62c-47e7-8b84-4ebd8a4eb522",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0730e5c1-8c56-4db4-af58-4ba4bbe7f038",
              "parent_uuid": "e25f9f1e-0d69-4177-a308-22b059877dc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82d79395-f2f0-4cef-ac0c-859a4602e14e",
                  "parent_uuid": "0730e5c1-8c56-4db4-af58-4ba4bbe7f038",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31f4ed4f-96d1-4c14-ba27-adec8aa39931",
              "parent_uuid": "e25f9f1e-0d69-4177-a308-22b059877dc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "065b0e93-a143-473b-b173-52a411ea9855",
                  "parent_uuid": "31f4ed4f-96d1-4c14-ba27-adec8aa39931",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c737a29-e29d-4f90-8023-68890c76012f",
              "parent_uuid": "e25f9f1e-0d69-4177-a308-22b059877dc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30ea61d4-7cdc-4b86-8c28-2787eaf52aa6",
                  "parent_uuid": "2c737a29-e29d-4f90-8023-68890c76012f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "499a2a18-6054-410a-8116-f7fa4e510791",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b0450be-081f-4714-a1a8-9d0d24f51641",
              "parent_uuid": "499a2a18-6054-410a-8116-f7fa4e510791",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e59170fc-d7ea-49cc-8ac3-f59c7ea669a7",
              "parent_uuid": "499a2a18-6054-410a-8116-f7fa4e510791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "1234a11b-7197-449c-a199-2358e49559ba",
              "parent_uuid": "499a2a18-6054-410a-8116-f7fa4e510791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05148f0a-3224-40f0-9489-da5129e25d7a",
                  "parent_uuid": "1234a11b-7197-449c-a199-2358e49559ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03c4d42e-049e-4ca2-b056-1063ad40eff5",
              "parent_uuid": "499a2a18-6054-410a-8116-f7fa4e510791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "115c76b4-571a-48e8-a665-8b14d1096ef4",
                  "parent_uuid": "03c4d42e-049e-4ca2-b056-1063ad40eff5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd7db008-12ba-4f7c-834c-7c2e9b7c8a59",
              "parent_uuid": "499a2a18-6054-410a-8116-f7fa4e510791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df9df123-4eb8-4090-8e75-1e1aae80a7ce",
                  "parent_uuid": "bd7db008-12ba-4f7c-834c-7c2e9b7c8a59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c34641a-9ec1-4890-8f7e-f1f8064c1594",
              "parent_uuid": "499a2a18-6054-410a-8116-f7fa4e510791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7bdee46-10ef-493f-9193-56b03f2faf6a",
                  "parent_uuid": "8c34641a-9ec1-4890-8f7e-f1f8064c1594",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d263baa5-4c0b-4d38-8058-11714e8146d5",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eacfee67-c426-436c-82ee-8e813337303e",
              "parent_uuid": "d263baa5-4c0b-4d38-8058-11714e8146d5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "49bb63f9-f342-456b-851e-20053e620e98",
              "parent_uuid": "d263baa5-4c0b-4d38-8058-11714e8146d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "2d39c7d3-f423-4efa-9979-1a3d1c76b9db",
              "parent_uuid": "d263baa5-4c0b-4d38-8058-11714e8146d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2b9af59-f2b2-4573-a3bb-7c3d168006cc",
                  "parent_uuid": "2d39c7d3-f423-4efa-9979-1a3d1c76b9db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a0b287d-cbe7-4616-b4fd-817b2ea4dec1",
              "parent_uuid": "d263baa5-4c0b-4d38-8058-11714e8146d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7da6401e-1246-4a3b-9239-1a0e999995eb",
                  "parent_uuid": "6a0b287d-cbe7-4616-b4fd-817b2ea4dec1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c667a87-eeb8-44e1-92da-6571f7bca36a",
              "parent_uuid": "d263baa5-4c0b-4d38-8058-11714e8146d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad744a30-71f5-44aa-a0d5-35f2c41fce39",
                  "parent_uuid": "1c667a87-eeb8-44e1-92da-6571f7bca36a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7ad4e86-6fa3-402b-aff8-60c8d17234da",
              "parent_uuid": "d263baa5-4c0b-4d38-8058-11714e8146d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d370e37e-037b-4203-81d7-089c5c63cd68",
                  "parent_uuid": "e7ad4e86-6fa3-402b-aff8-60c8d17234da",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "688d1642-d62c-4a50-9d01-7b100d80a6d9",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "428469fc-4507-4163-b385-0534e5d176b5",
              "parent_uuid": "688d1642-d62c-4a50-9d01-7b100d80a6d9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ed99ee7c-b2ad-4e2d-8609-642dca091eb6",
              "parent_uuid": "688d1642-d62c-4a50-9d01-7b100d80a6d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d56c876d-fdc5-4b97-b1ef-9148f4b99d54",
              "parent_uuid": "688d1642-d62c-4a50-9d01-7b100d80a6d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edf82bbf-de40-4f84-ba07-5d95247fa494",
                  "parent_uuid": "d56c876d-fdc5-4b97-b1ef-9148f4b99d54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f25cac9-d04f-4405-b00b-75f1b45d05b0",
              "parent_uuid": "688d1642-d62c-4a50-9d01-7b100d80a6d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95cd2bfc-43e0-4e60-a8ad-be9ee66690dd",
                  "parent_uuid": "5f25cac9-d04f-4405-b00b-75f1b45d05b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01094bfd-6f4a-4676-a4f8-22df77b2442f",
              "parent_uuid": "688d1642-d62c-4a50-9d01-7b100d80a6d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b137abd1-3965-4da7-bae1-e2984dd70895",
                  "parent_uuid": "01094bfd-6f4a-4676-a4f8-22df77b2442f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1eec992-bd0c-48c5-8b14-db33c2ab452d",
              "parent_uuid": "688d1642-d62c-4a50-9d01-7b100d80a6d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16217b9a-1981-41d1-b7e3-96fb715525f0",
                  "parent_uuid": "a1eec992-bd0c-48c5-8b14-db33c2ab452d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f92df126-f702-4a54-8c78-b299acfa182a",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ac961ae-955f-418f-b740-71bd6637891d",
              "parent_uuid": "f92df126-f702-4a54-8c78-b299acfa182a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8d1d2677-a90d-4e51-8196-a7260de099ba",
              "parent_uuid": "f92df126-f702-4a54-8c78-b299acfa182a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d6a40024-b65e-4384-92a6-eb9250092f51",
              "parent_uuid": "f92df126-f702-4a54-8c78-b299acfa182a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f81f03ef-f112-4782-a2ea-e7820d9be3bc",
                  "parent_uuid": "d6a40024-b65e-4384-92a6-eb9250092f51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae447361-1334-4c03-bf72-fdb6aa394f43",
              "parent_uuid": "f92df126-f702-4a54-8c78-b299acfa182a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53e78147-ca09-446a-a016-97193a7d6f88",
                  "parent_uuid": "ae447361-1334-4c03-bf72-fdb6aa394f43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07ad8d7a-3128-4f6d-8171-9bca8f8a637b",
              "parent_uuid": "f92df126-f702-4a54-8c78-b299acfa182a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80aa57f3-717b-4861-b2ed-fd015c89d9b0",
                  "parent_uuid": "07ad8d7a-3128-4f6d-8171-9bca8f8a637b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75a32d4b-ad7c-449a-bf0f-66bc9d03fdd1",
              "parent_uuid": "f92df126-f702-4a54-8c78-b299acfa182a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "033c70b9-f832-4500-a7cd-0a275e30d4dc",
                  "parent_uuid": "75a32d4b-ad7c-449a-bf0f-66bc9d03fdd1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "10d5c8b4-dc34-4e21-a053-78fff14e02e5",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "619e7877-dc46-46f7-b336-f3b545f0299c",
              "parent_uuid": "10d5c8b4-dc34-4e21-a053-78fff14e02e5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "233539ca-6685-48fb-a38e-4c991a388161",
              "parent_uuid": "10d5c8b4-dc34-4e21-a053-78fff14e02e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "97b6d3d7-f48f-411e-9d2f-a2f8ca95cd5e",
              "parent_uuid": "10d5c8b4-dc34-4e21-a053-78fff14e02e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "caad64a9-172c-40ab-9a85-b1c4201db76c",
                  "parent_uuid": "97b6d3d7-f48f-411e-9d2f-a2f8ca95cd5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34c6fb5c-2c60-49aa-82a3-afb5bef5f222",
              "parent_uuid": "10d5c8b4-dc34-4e21-a053-78fff14e02e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43c7f95a-8bcc-44de-ab92-ad95fb4c9b19",
                  "parent_uuid": "34c6fb5c-2c60-49aa-82a3-afb5bef5f222",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c05e1825-cc0b-4215-8d16-337cbda9553e",
              "parent_uuid": "10d5c8b4-dc34-4e21-a053-78fff14e02e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a220173c-d81e-47e8-8e26-d0e854d04abc",
                  "parent_uuid": "c05e1825-cc0b-4215-8d16-337cbda9553e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "916b0a6c-5d92-4e00-a063-e1de3d9e6189",
              "parent_uuid": "10d5c8b4-dc34-4e21-a053-78fff14e02e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44b77d17-5349-4a15-afa3-9ef965e85de5",
                  "parent_uuid": "916b0a6c-5d92-4e00-a063-e1de3d9e6189",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "72b584ac-39d4-43d9-a66c-a81c639c4191",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aff3eb6e-d595-40c3-8dec-461c0fb7d272",
              "parent_uuid": "72b584ac-39d4-43d9-a66c-a81c639c4191",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7bda56e1-fa85-4c66-a564-5af756bc22ca",
              "parent_uuid": "72b584ac-39d4-43d9-a66c-a81c639c4191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "5889d16d-8009-437b-8434-f52d0044013f",
              "parent_uuid": "72b584ac-39d4-43d9-a66c-a81c639c4191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab4d12f2-ada3-4104-971c-87da7289a8c4",
                  "parent_uuid": "5889d16d-8009-437b-8434-f52d0044013f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b21feb4-85b9-4939-b0b2-cd178a9fe1b0",
              "parent_uuid": "72b584ac-39d4-43d9-a66c-a81c639c4191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c974b93-0e30-4149-a0a7-121ffdeac648",
                  "parent_uuid": "6b21feb4-85b9-4939-b0b2-cd178a9fe1b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a98c64a-2d51-458c-8433-35bce9b5969d",
              "parent_uuid": "72b584ac-39d4-43d9-a66c-a81c639c4191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40ceaeca-924b-4c7b-97da-fdda4f4ca55b",
                  "parent_uuid": "3a98c64a-2d51-458c-8433-35bce9b5969d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20e0de1a-d326-495e-8da2-c0e9fb58f19e",
              "parent_uuid": "72b584ac-39d4-43d9-a66c-a81c639c4191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb4b7e63-2876-4b75-bfbd-15a98a142836",
                  "parent_uuid": "20e0de1a-d326-495e-8da2-c0e9fb58f19e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "77107862-729b-4d93-ab3d-784c79cea537",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c389f683-5b72-465a-b385-d1c6d56d62dc",
              "parent_uuid": "77107862-729b-4d93-ab3d-784c79cea537",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "442eebaf-ab3f-4f97-8198-2f55ddfd96b2",
              "parent_uuid": "77107862-729b-4d93-ab3d-784c79cea537",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ab597a0f-7a03-4d1e-ae7f-06dfaa343afe",
              "parent_uuid": "77107862-729b-4d93-ab3d-784c79cea537",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a864f9ed-325d-4b2b-898b-3f3a72716508",
                  "parent_uuid": "ab597a0f-7a03-4d1e-ae7f-06dfaa343afe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77d3fffc-a0b3-440a-9461-745cd0ded691",
              "parent_uuid": "77107862-729b-4d93-ab3d-784c79cea537",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4de49f2b-cc42-4c3f-a54d-8cb67a3cedf5",
                  "parent_uuid": "77d3fffc-a0b3-440a-9461-745cd0ded691",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ce4db5d-5611-4830-80f4-8c381347c151",
              "parent_uuid": "77107862-729b-4d93-ab3d-784c79cea537",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50dd26c1-32f9-407a-bb23-7b516360a2a0",
                  "parent_uuid": "3ce4db5d-5611-4830-80f4-8c381347c151",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ad9b7d2-e492-43d6-8ac2-a6f8f3f8a061",
              "parent_uuid": "77107862-729b-4d93-ab3d-784c79cea537",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa49a114-de23-4792-8446-16edbdbb1335",
                  "parent_uuid": "6ad9b7d2-e492-43d6-8ac2-a6f8f3f8a061",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "205a3344-59de-4572-9704-3ea2ff9232b9",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b7e2ace-f343-490d-9fb3-700a49667b09",
              "parent_uuid": "205a3344-59de-4572-9704-3ea2ff9232b9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fc68a160-167d-4549-bb9e-16e2b4b63f4c",
              "parent_uuid": "205a3344-59de-4572-9704-3ea2ff9232b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "de0656c0-400f-4ca0-aa23-383409401fc2",
              "parent_uuid": "205a3344-59de-4572-9704-3ea2ff9232b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8323264-8729-442a-8a38-48381db0fe6e",
                  "parent_uuid": "de0656c0-400f-4ca0-aa23-383409401fc2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86e1215c-667b-484e-80c2-322c939c41e7",
              "parent_uuid": "205a3344-59de-4572-9704-3ea2ff9232b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "026dde9e-5cf1-474f-8a34-5703820f25c2",
                  "parent_uuid": "86e1215c-667b-484e-80c2-322c939c41e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96c62a53-8eb6-4596-b024-108fedcb7b43",
              "parent_uuid": "205a3344-59de-4572-9704-3ea2ff9232b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a465fe7a-7202-4602-9cac-ddeb93afcba8",
                  "parent_uuid": "96c62a53-8eb6-4596-b024-108fedcb7b43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5d8e7dd-0194-4b4b-9ad7-7c671cc7a153",
              "parent_uuid": "205a3344-59de-4572-9704-3ea2ff9232b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afe46089-6c32-4cf2-bb8c-8bc5e72534ab",
                  "parent_uuid": "f5d8e7dd-0194-4b4b-9ad7-7c671cc7a153",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bdd4b63d-b54d-4193-9952-7ab41a0358a8",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2105d072-315b-4e1f-b950-2e3e55bd5bfb",
              "parent_uuid": "bdd4b63d-b54d-4193-9952-7ab41a0358a8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "082d95a1-b90a-4b92-af82-a894c3492777",
              "parent_uuid": "bdd4b63d-b54d-4193-9952-7ab41a0358a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "849c9d58-4494-41e1-9945-d68c9c081b1d",
              "parent_uuid": "bdd4b63d-b54d-4193-9952-7ab41a0358a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6212ca5f-6263-49d1-af5a-3efbbea335c6",
                  "parent_uuid": "849c9d58-4494-41e1-9945-d68c9c081b1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "748c74d0-e854-47c8-a0c9-2c81daad55ba",
              "parent_uuid": "bdd4b63d-b54d-4193-9952-7ab41a0358a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21350304-f632-4962-bb71-5ca670b77cf2",
                  "parent_uuid": "748c74d0-e854-47c8-a0c9-2c81daad55ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4257a725-6a5b-4791-8048-e2ae20633997",
              "parent_uuid": "bdd4b63d-b54d-4193-9952-7ab41a0358a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a218397e-6cb7-4ad4-9d46-27bec2f687e9",
                  "parent_uuid": "4257a725-6a5b-4791-8048-e2ae20633997",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05f2acc4-e830-4e6f-8e75-fd71fd218e75",
              "parent_uuid": "bdd4b63d-b54d-4193-9952-7ab41a0358a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0348e11-a92f-4613-beb8-fc9c143bb00d",
                  "parent_uuid": "05f2acc4-e830-4e6f-8e75-fd71fd218e75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ad7b5173-33e7-48dd-bdb9-94e7854eec59",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3368ad08-7b72-490f-bfea-b29e0888202a",
              "parent_uuid": "ad7b5173-33e7-48dd-bdb9-94e7854eec59",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2c28d01f-da15-4793-ae2e-a0821bf40973",
              "parent_uuid": "ad7b5173-33e7-48dd-bdb9-94e7854eec59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "77908307-0cae-4d15-bb17-d20990c88bbe",
              "parent_uuid": "ad7b5173-33e7-48dd-bdb9-94e7854eec59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39a9599b-a131-484e-aef9-d65d30406be6",
                  "parent_uuid": "77908307-0cae-4d15-bb17-d20990c88bbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f86f5864-7b8f-42a1-bac1-b6cc93fe678b",
              "parent_uuid": "ad7b5173-33e7-48dd-bdb9-94e7854eec59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e1824e0-d135-45e9-a3cf-ea98663efed9",
                  "parent_uuid": "f86f5864-7b8f-42a1-bac1-b6cc93fe678b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48513f1a-ee43-476e-b64e-651b8689ca79",
              "parent_uuid": "ad7b5173-33e7-48dd-bdb9-94e7854eec59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62a2e7cd-2b23-470f-b8d1-73702312cb21",
                  "parent_uuid": "48513f1a-ee43-476e-b64e-651b8689ca79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "951693c7-fed1-4571-b59b-c0acee479be1",
              "parent_uuid": "ad7b5173-33e7-48dd-bdb9-94e7854eec59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aafad91a-5d16-4b58-9326-46109356dd35",
                  "parent_uuid": "951693c7-fed1-4571-b59b-c0acee479be1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f6519ae7-7971-4805-abae-7eb2ccc54c9a",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a7f6bc3-18b8-4dd6-b81a-ee157fe84dec",
              "parent_uuid": "f6519ae7-7971-4805-abae-7eb2ccc54c9a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "00a80f92-3b3d-4f15-a3a9-da7f3eb2c5b8",
              "parent_uuid": "f6519ae7-7971-4805-abae-7eb2ccc54c9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "2268608a-e670-465f-b760-d3578c22c8a3",
              "parent_uuid": "f6519ae7-7971-4805-abae-7eb2ccc54c9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb6bf768-69b3-4fb1-81b9-af811595ee91",
                  "parent_uuid": "2268608a-e670-465f-b760-d3578c22c8a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c817606e-be71-40aa-b07c-eae231b83d47",
              "parent_uuid": "f6519ae7-7971-4805-abae-7eb2ccc54c9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d16737c0-761b-4b6c-a66a-c2fce7bc0844",
                  "parent_uuid": "c817606e-be71-40aa-b07c-eae231b83d47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c907d9b-f672-4ea0-b41f-3d0a8cc19a61",
              "parent_uuid": "f6519ae7-7971-4805-abae-7eb2ccc54c9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be2c8349-b10a-4b03-b82e-6445a4b4997e",
                  "parent_uuid": "4c907d9b-f672-4ea0-b41f-3d0a8cc19a61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a69a66e-e3b6-4ae1-ac7e-0230d7ecd398",
              "parent_uuid": "f6519ae7-7971-4805-abae-7eb2ccc54c9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c2f2ab2-e56a-4b04-a377-04ee2ea4ce9d",
                  "parent_uuid": "8a69a66e-e3b6-4ae1-ac7e-0230d7ecd398",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b103557-565c-4b14-9bc3-614fb39b87c0",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a76f866e-66a4-400f-a101-064f365bba11",
              "parent_uuid": "8b103557-565c-4b14-9bc3-614fb39b87c0",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "73e47240-7a30-474d-97b0-d79bf05bc2c8",
              "parent_uuid": "8b103557-565c-4b14-9bc3-614fb39b87c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c7486759-a4b7-45fc-ae61-982daed99f98",
              "parent_uuid": "8b103557-565c-4b14-9bc3-614fb39b87c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9932f6d7-0684-45da-850c-e7a90ddb1b72",
                  "parent_uuid": "c7486759-a4b7-45fc-ae61-982daed99f98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae584648-1ec5-4c93-849e-070558e33cb2",
              "parent_uuid": "8b103557-565c-4b14-9bc3-614fb39b87c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb1ee043-3776-4bed-8da6-08af25fddded",
                  "parent_uuid": "ae584648-1ec5-4c93-849e-070558e33cb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "095189b3-0d4a-4dc9-8e6d-4f6cb042c61f",
              "parent_uuid": "8b103557-565c-4b14-9bc3-614fb39b87c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "522603d4-a71b-4344-b37d-a6679ee0509c",
                  "parent_uuid": "095189b3-0d4a-4dc9-8e6d-4f6cb042c61f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8901d25-f8d7-423d-8f7f-df707d86b0a2",
              "parent_uuid": "8b103557-565c-4b14-9bc3-614fb39b87c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "033b97d1-b663-4f59-b3a7-0f574ba19130",
                  "parent_uuid": "b8901d25-f8d7-423d-8f7f-df707d86b0a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "519d38eb-02dc-4cf2-b5b7-e713e997681d",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7351c734-2e3a-4182-90c5-1024fc021d1e",
              "parent_uuid": "519d38eb-02dc-4cf2-b5b7-e713e997681d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4e6304da-8cf8-46b3-be71-7d2d70c0594a",
              "parent_uuid": "519d38eb-02dc-4cf2-b5b7-e713e997681d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "89e5ecdc-b0a3-4cd4-b6d9-81a44cb931dd",
              "parent_uuid": "519d38eb-02dc-4cf2-b5b7-e713e997681d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d1bedb4-16ba-458d-8be7-aa6d2220eed7",
                  "parent_uuid": "89e5ecdc-b0a3-4cd4-b6d9-81a44cb931dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cce678c7-3587-474f-be00-293f375d5c5a",
              "parent_uuid": "519d38eb-02dc-4cf2-b5b7-e713e997681d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88dc0b4f-c734-4d1b-841c-4a7ee96741f7",
                  "parent_uuid": "cce678c7-3587-474f-be00-293f375d5c5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64a42a58-4a72-4be1-81a1-e0474133dcdd",
              "parent_uuid": "519d38eb-02dc-4cf2-b5b7-e713e997681d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dde737d1-1cc5-4b7b-aeaf-faa66611364e",
                  "parent_uuid": "64a42a58-4a72-4be1-81a1-e0474133dcdd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57388d05-e6a2-4c7b-a5dc-320e8c306d1b",
              "parent_uuid": "519d38eb-02dc-4cf2-b5b7-e713e997681d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97292fb0-c049-4ec3-b8b2-b002de02a850",
                  "parent_uuid": "57388d05-e6a2-4c7b-a5dc-320e8c306d1b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2de2e2e4-91f8-4687-beb7-b9f286ae83e5",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7faf680-e8ad-49ec-b1dc-7d57fddedd2a",
              "parent_uuid": "2de2e2e4-91f8-4687-beb7-b9f286ae83e5",
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
          "uuid": "19673f6a-86bd-4f47-a112-5661adac6c7f",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8c4e117-7431-448a-a3f5-f3b59782bb9b",
              "parent_uuid": "19673f6a-86bd-4f47-a112-5661adac6c7f",
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
          "uuid": "45a132a2-5bb6-4ea9-b337-15a5e39df0f0",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e59d3f2c-135d-4ee5-8876-2918472492a6",
              "parent_uuid": "45a132a2-5bb6-4ea9-b337-15a5e39df0f0",
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
                  "uuid": "f71888d3-84db-4b01-9af5-a4a3182bf62f",
                  "parent_uuid": "e59d3f2c-135d-4ee5-8876-2918472492a6",
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
          "uuid": "d6e1ac29-eb18-471a-bf4a-41252702ebbe",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "6a602fba-268c-4db8-94ea-bf92447c6a8f",
              "parent_uuid": "d6e1ac29-eb18-471a-bf4a-41252702ebbe",
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
          "uuid": "9fc88d2d-272f-4e39-9310-936d9c999c20",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "88bf3b16-5438-4a6a-9136-a7e9f535c1aa",
              "parent_uuid": "9fc88d2d-272f-4e39-9310-936d9c999c20",
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
          "uuid": "95898e65-a4cd-42e3-9416-84e8ac12c7ab",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "392d48b9-415a-4758-90a1-073e697ef82c",
              "parent_uuid": "95898e65-a4cd-42e3-9416-84e8ac12c7ab",
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
              "uuid": "0a72d5a4-6a56-4d4f-bcdb-2f16aada51a0",
              "parent_uuid": "95898e65-a4cd-42e3-9416-84e8ac12c7ab",
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
              "uuid": "69571d0a-b230-487e-ac80-db149b394c81",
              "parent_uuid": "95898e65-a4cd-42e3-9416-84e8ac12c7ab",
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
              "uuid": "5a15c897-4aa8-4d61-b739-5bb908d02c63",
              "parent_uuid": "95898e65-a4cd-42e3-9416-84e8ac12c7ab",
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
              "uuid": "c76c17cc-ddec-4e31-a9bf-93bbbe87c384",
              "parent_uuid": "95898e65-a4cd-42e3-9416-84e8ac12c7ab",
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
              "uuid": "e23262f3-4d26-4223-86fa-8b11d2a2f996",
              "parent_uuid": "95898e65-a4cd-42e3-9416-84e8ac12c7ab",
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
          "uuid": "ee12a15f-1f17-494b-be83-2adbf231ff17",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "f82098d1-58d5-4776-9876-66db91134a4d",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "038a9452-ca9f-4638-8da6-02d917f76901",
              "parent_uuid": "f82098d1-58d5-4776-9876-66db91134a4d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8c28b797-02a1-461d-817c-85a7a1f3b0d2",
              "parent_uuid": "f82098d1-58d5-4776-9876-66db91134a4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c3821767-f454-4d0b-a27a-0307904f611f",
              "parent_uuid": "f82098d1-58d5-4776-9876-66db91134a4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c06d94ab-df48-4921-a339-34a6708cee45",
                  "parent_uuid": "c3821767-f454-4d0b-a27a-0307904f611f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c022929-fffe-4cbe-bec8-3032ce540778",
              "parent_uuid": "f82098d1-58d5-4776-9876-66db91134a4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa4c1c29-f434-4eab-897f-9ef99d25cd85",
                  "parent_uuid": "0c022929-fffe-4cbe-bec8-3032ce540778",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7e3ee16-ab56-4fb4-b220-0b71ea61eddd",
              "parent_uuid": "f82098d1-58d5-4776-9876-66db91134a4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bafb01dd-56b4-467d-9fbf-06c46dc89fa6",
                  "parent_uuid": "f7e3ee16-ab56-4fb4-b220-0b71ea61eddd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81427b8d-469b-4ce4-a9be-72b6d04dc143",
              "parent_uuid": "f82098d1-58d5-4776-9876-66db91134a4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7eee12d2-c9d3-48af-aa4e-69b5e4055f8a",
                  "parent_uuid": "81427b8d-469b-4ce4-a9be-72b6d04dc143",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2dc774b6-8712-482d-9161-e8ab9f140a06",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4091d1a2-cfb3-4cea-b739-07e63c843e89",
              "parent_uuid": "2dc774b6-8712-482d-9161-e8ab9f140a06",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f60d6c97-2711-484f-9ad7-bf38d15bdd8c",
              "parent_uuid": "2dc774b6-8712-482d-9161-e8ab9f140a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "672eb797-e600-4b25-81ef-2599bb0d54c1",
              "parent_uuid": "2dc774b6-8712-482d-9161-e8ab9f140a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1201760-98d2-411e-90b8-73cd8e62da43",
                  "parent_uuid": "672eb797-e600-4b25-81ef-2599bb0d54c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7761c47-fe84-4e10-833f-b71ee836c4fa",
              "parent_uuid": "2dc774b6-8712-482d-9161-e8ab9f140a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5b17db8-6f7c-4853-afc2-7be08f9badd1",
                  "parent_uuid": "d7761c47-fe84-4e10-833f-b71ee836c4fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11e6ba43-2dde-4a71-9a50-4c0c6c2ad754",
              "parent_uuid": "2dc774b6-8712-482d-9161-e8ab9f140a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf571108-3068-4b38-8dfe-2f235276e6f3",
                  "parent_uuid": "11e6ba43-2dde-4a71-9a50-4c0c6c2ad754",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95a6a6c1-b1e3-4065-bf14-b187c6f82df0",
              "parent_uuid": "2dc774b6-8712-482d-9161-e8ab9f140a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37dc6d8f-e3ce-43ce-a889-60e267caf4f8",
                  "parent_uuid": "95a6a6c1-b1e3-4065-bf14-b187c6f82df0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d63466ab-4d00-4156-8d92-a4a95ba5fb5b",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82d5f7d2-c599-4268-9438-57d81c45adbb",
              "parent_uuid": "d63466ab-4d00-4156-8d92-a4a95ba5fb5b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a4007970-6a21-45f9-96ad-728c0b0b0f58",
              "parent_uuid": "d63466ab-4d00-4156-8d92-a4a95ba5fb5b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "1214e3d9-2234-42d7-9251-b45e58c40c77",
              "parent_uuid": "d63466ab-4d00-4156-8d92-a4a95ba5fb5b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8af59d23-288b-4b72-b771-939c15f18ca7",
                  "parent_uuid": "1214e3d9-2234-42d7-9251-b45e58c40c77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7eef8e8b-bfa8-4aff-8ea7-6e51b4013c0a",
              "parent_uuid": "d63466ab-4d00-4156-8d92-a4a95ba5fb5b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44e85ac9-2424-4bf6-b5aa-669a953ebb47",
                  "parent_uuid": "7eef8e8b-bfa8-4aff-8ea7-6e51b4013c0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f9d314a-9449-49e1-a5be-eb048c3c6ddf",
              "parent_uuid": "d63466ab-4d00-4156-8d92-a4a95ba5fb5b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "724480a0-ced4-41a2-9180-a95c869e912a",
                  "parent_uuid": "9f9d314a-9449-49e1-a5be-eb048c3c6ddf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6724206-1b53-4cc5-bfad-347b86ffa0a2",
              "parent_uuid": "d63466ab-4d00-4156-8d92-a4a95ba5fb5b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b07ff282-c3d9-4343-856d-23e24566bacb",
                  "parent_uuid": "b6724206-1b53-4cc5-bfad-347b86ffa0a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3b3b5234-295d-4aa8-a58e-d7d7334023dc",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "411f447c-21c3-42ea-9854-503a11da8736",
              "parent_uuid": "3b3b5234-295d-4aa8-a58e-d7d7334023dc",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "40102f4c-ba44-443e-a6db-936e2f4efc13",
              "parent_uuid": "3b3b5234-295d-4aa8-a58e-d7d7334023dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c615bba5-3716-4f38-8334-f026c07ed4d0",
              "parent_uuid": "3b3b5234-295d-4aa8-a58e-d7d7334023dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a87d3482-3660-4875-ad0e-fb3a05616bbf",
                  "parent_uuid": "c615bba5-3716-4f38-8334-f026c07ed4d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ff0588a-8b3d-4bf1-af00-b055bf5bc3f0",
              "parent_uuid": "3b3b5234-295d-4aa8-a58e-d7d7334023dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2c77aa9-504d-43c8-b6ac-1e3dd7a16725",
                  "parent_uuid": "9ff0588a-8b3d-4bf1-af00-b055bf5bc3f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d3ae351-afed-47f1-a678-b67ce26f8370",
              "parent_uuid": "3b3b5234-295d-4aa8-a58e-d7d7334023dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1456e04-882f-4b17-9218-3ce66bea2792",
                  "parent_uuid": "9d3ae351-afed-47f1-a678-b67ce26f8370",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ea481fc-16f8-4f89-bd85-657105f315f9",
              "parent_uuid": "3b3b5234-295d-4aa8-a58e-d7d7334023dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2030b5d0-4f4e-4046-b429-911c839827cb",
                  "parent_uuid": "0ea481fc-16f8-4f89-bd85-657105f315f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84076e6c-4cf1-47d9-bf24-d6bdd9a01a94",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3f65937-fc40-4b2f-af1d-5ed0ebc47499",
              "parent_uuid": "84076e6c-4cf1-47d9-bf24-d6bdd9a01a94",
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
          "uuid": "12a63534-aa63-4dc8-9d6f-b89ee64a8052",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c465bdf-e86d-47a5-a17f-3be91d203290",
              "parent_uuid": "12a63534-aa63-4dc8-9d6f-b89ee64a8052",
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
          "uuid": "578bc86e-c1a4-4dd0-bc73-a61b771068f0",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a16bf7b9-f208-4972-beb2-b2a73645cf63",
              "parent_uuid": "578bc86e-c1a4-4dd0-bc73-a61b771068f0",
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
                  "uuid": "d72995f7-c156-4755-9652-c63a678f0304",
                  "parent_uuid": "a16bf7b9-f208-4972-beb2-b2a73645cf63",
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
          "uuid": "d2bb4b47-4a80-42c2-a1a8-db9437261977",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "a6d211cb-e272-47a0-b75c-7f96f915c348",
              "parent_uuid": "d2bb4b47-4a80-42c2-a1a8-db9437261977",
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
          "uuid": "7fb26d1f-b3dc-40f8-8242-bb0b66cc98ef",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "98e96c33-3cad-4d56-bdb4-652833214c0f",
              "parent_uuid": "7fb26d1f-b3dc-40f8-8242-bb0b66cc98ef",
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
          "uuid": "a01fdd14-c338-49cd-9dce-233606f41c53",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba676c6f-f9cb-4245-8740-b1219722460c",
              "parent_uuid": "a01fdd14-c338-49cd-9dce-233606f41c53",
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
              "uuid": "95bc19d6-bad8-4cf9-9cf0-13ecbc6e3807",
              "parent_uuid": "a01fdd14-c338-49cd-9dce-233606f41c53",
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
              "uuid": "9df8db78-e32f-4e74-b958-a1f2b31087b9",
              "parent_uuid": "a01fdd14-c338-49cd-9dce-233606f41c53",
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
              "uuid": "ca1aec0d-1274-4d0e-a3f8-063b21141719",
              "parent_uuid": "a01fdd14-c338-49cd-9dce-233606f41c53",
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
              "uuid": "79211569-1e32-4373-866b-d0fa0a774226",
              "parent_uuid": "a01fdd14-c338-49cd-9dce-233606f41c53",
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
              "uuid": "b16d7055-d83f-4ba2-9d38-685cee96b898",
              "parent_uuid": "a01fdd14-c338-49cd-9dce-233606f41c53",
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
          "uuid": "105ee0d1-fdf1-4afa-a278-fd06a397a01a",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89538ee7-5af1-474b-b361-e321c5083f81",
              "parent_uuid": "105ee0d1-fdf1-4afa-a278-fd06a397a01a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bcb71a3e-966e-4706-bc81-eb9fa4e12c7f",
              "parent_uuid": "105ee0d1-fdf1-4afa-a278-fd06a397a01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "51c57d46-7d20-4ecb-bec1-c64007fb6a27",
              "parent_uuid": "105ee0d1-fdf1-4afa-a278-fd06a397a01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bda14b7-6a83-400b-baee-f4e19a5d1f3a",
                  "parent_uuid": "51c57d46-7d20-4ecb-bec1-c64007fb6a27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6b3f9f9-7da5-4849-b7b4-9a1d7dace1dd",
              "parent_uuid": "105ee0d1-fdf1-4afa-a278-fd06a397a01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f35c1bc-bdab-4ea0-8451-69f1c3d36ef7",
                  "parent_uuid": "e6b3f9f9-7da5-4849-b7b4-9a1d7dace1dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96ef0692-a0ab-4b78-8e93-dee557798a5e",
              "parent_uuid": "105ee0d1-fdf1-4afa-a278-fd06a397a01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e25d9458-fe39-4271-940b-b911c629f7b5",
                  "parent_uuid": "96ef0692-a0ab-4b78-8e93-dee557798a5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eafafe3a-3f11-45cc-a3db-94001badc7f6",
              "parent_uuid": "105ee0d1-fdf1-4afa-a278-fd06a397a01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "611cde3b-a9a1-4fa6-845b-911cb3f36445",
                  "parent_uuid": "eafafe3a-3f11-45cc-a3db-94001badc7f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e9fc404b-3df1-4c14-bade-367f00ac8faf",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f96004b2-6488-4300-a3bd-4475598e7edf",
              "parent_uuid": "e9fc404b-3df1-4c14-bade-367f00ac8faf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a891bd6d-4aed-42a7-9053-8aab531bf436",
              "parent_uuid": "e9fc404b-3df1-4c14-bade-367f00ac8faf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "979850ff-7ca0-4a88-af4e-33a3a282af75",
              "parent_uuid": "e9fc404b-3df1-4c14-bade-367f00ac8faf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6242dc7-ec63-489b-b1c4-d9651425a4de",
                  "parent_uuid": "979850ff-7ca0-4a88-af4e-33a3a282af75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad82f322-2a81-47eb-9f83-c625daa33560",
              "parent_uuid": "e9fc404b-3df1-4c14-bade-367f00ac8faf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5d97a6d-566d-4d06-af9a-f79d73129125",
                  "parent_uuid": "ad82f322-2a81-47eb-9f83-c625daa33560",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ca67a6e-fd6a-475a-8cf7-25c14d4346ff",
              "parent_uuid": "e9fc404b-3df1-4c14-bade-367f00ac8faf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7146ac43-ec7f-4ae7-a9e2-e96968708295",
                  "parent_uuid": "6ca67a6e-fd6a-475a-8cf7-25c14d4346ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53938052-303a-496e-b554-c76eec4264d0",
              "parent_uuid": "e9fc404b-3df1-4c14-bade-367f00ac8faf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cc5ef47-d941-49f0-b07f-7817ceab0d96",
                  "parent_uuid": "53938052-303a-496e-b554-c76eec4264d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a20672a1-0812-4ce7-b61a-4916544b2cb3",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32a028ac-d590-4358-8c09-1e4ed9c4fcc5",
              "parent_uuid": "a20672a1-0812-4ce7-b61a-4916544b2cb3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "660a49f7-aeac-4b05-92cb-e4c22269a935",
              "parent_uuid": "a20672a1-0812-4ce7-b61a-4916544b2cb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "65a8066b-1be2-40d8-9428-a4352e2d96f7",
              "parent_uuid": "a20672a1-0812-4ce7-b61a-4916544b2cb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d63b8e97-6e99-4ef1-8175-fc8f4f7dfc4a",
                  "parent_uuid": "65a8066b-1be2-40d8-9428-a4352e2d96f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10f9a2be-b1cb-4d3c-bb23-bbc6c95fdb91",
              "parent_uuid": "a20672a1-0812-4ce7-b61a-4916544b2cb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "246c6d97-4d26-4aa9-a5f4-94131d9e7fa5",
                  "parent_uuid": "10f9a2be-b1cb-4d3c-bb23-bbc6c95fdb91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02de5c86-bb34-462d-a4b1-fce62589a038",
              "parent_uuid": "a20672a1-0812-4ce7-b61a-4916544b2cb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a91cb70-fb5a-4c59-bf57-1ad14e94b519",
                  "parent_uuid": "02de5c86-bb34-462d-a4b1-fce62589a038",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4527ea10-7a41-4f62-b714-cb8e4ceb7070",
              "parent_uuid": "a20672a1-0812-4ce7-b61a-4916544b2cb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c8ff61a-067f-4d6f-b80d-f833273ac6de",
                  "parent_uuid": "4527ea10-7a41-4f62-b714-cb8e4ceb7070",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a8b3b6f4-cd38-4ebd-b4be-42b29ad8a791",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74965569-c518-4bc7-bd95-de6c13478d82",
              "parent_uuid": "a8b3b6f4-cd38-4ebd-b4be-42b29ad8a791",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "eeb30d76-6807-428b-8046-b288a9c72aa1",
              "parent_uuid": "a8b3b6f4-cd38-4ebd-b4be-42b29ad8a791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "256eb6a6-a7e8-431c-b195-1ffc300e14cb",
              "parent_uuid": "a8b3b6f4-cd38-4ebd-b4be-42b29ad8a791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2125f46-accb-4bec-bfb3-a488cd626a0a",
                  "parent_uuid": "256eb6a6-a7e8-431c-b195-1ffc300e14cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5081bdfa-60d3-4308-b3dc-7a6ecee89add",
              "parent_uuid": "a8b3b6f4-cd38-4ebd-b4be-42b29ad8a791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebb61684-ee1b-40b3-93d3-5258212a0b4e",
                  "parent_uuid": "5081bdfa-60d3-4308-b3dc-7a6ecee89add",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a642b872-65b2-4cea-b2ff-b7a2614039c6",
              "parent_uuid": "a8b3b6f4-cd38-4ebd-b4be-42b29ad8a791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f3d41ce-d117-493d-9213-0a86767f8701",
                  "parent_uuid": "a642b872-65b2-4cea-b2ff-b7a2614039c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4476eac2-6a65-4237-8826-597d6b493f74",
              "parent_uuid": "a8b3b6f4-cd38-4ebd-b4be-42b29ad8a791",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37fe3e6a-5061-46fa-a5a5-287943be33c2",
                  "parent_uuid": "4476eac2-6a65-4237-8826-597d6b493f74",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5645d021-0ace-41f9-91a7-44a02ad8ec20",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc494506-ced9-434b-b79a-910cc2247739",
              "parent_uuid": "5645d021-0ace-41f9-91a7-44a02ad8ec20",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "51d371f4-47d0-42f6-b43b-b1eb07689d03",
              "parent_uuid": "5645d021-0ace-41f9-91a7-44a02ad8ec20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "a8c646f1-9c94-486f-9187-1d5c1dddd174",
              "parent_uuid": "5645d021-0ace-41f9-91a7-44a02ad8ec20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7af6dd56-dfcd-4fa5-91b5-fd26eea9161e",
                  "parent_uuid": "a8c646f1-9c94-486f-9187-1d5c1dddd174",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b60c8bc-c108-4be7-97af-4ebdb9235b7a",
              "parent_uuid": "5645d021-0ace-41f9-91a7-44a02ad8ec20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "111f0e1c-3c14-459b-9f2c-f5bc45114365",
                  "parent_uuid": "3b60c8bc-c108-4be7-97af-4ebdb9235b7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40f86382-971a-4c77-bfa9-a4b4c1f6602b",
              "parent_uuid": "5645d021-0ace-41f9-91a7-44a02ad8ec20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c007493e-ae47-4142-9734-b250c86f617f",
                  "parent_uuid": "40f86382-971a-4c77-bfa9-a4b4c1f6602b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "842e3087-95f7-4167-8b94-515cba5b0a74",
              "parent_uuid": "5645d021-0ace-41f9-91a7-44a02ad8ec20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a32792b-9812-424a-a440-fb7c0906ed8e",
                  "parent_uuid": "842e3087-95f7-4167-8b94-515cba5b0a74",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2ba558f-50fc-4b64-ace1-64281165a33e",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "632cac6a-8f3e-40bf-9e03-6be81f732328",
              "parent_uuid": "c2ba558f-50fc-4b64-ace1-64281165a33e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "29e063e9-22b3-4d99-8c98-0d30de94326a",
              "parent_uuid": "c2ba558f-50fc-4b64-ace1-64281165a33e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "fe51218c-fcf5-4b5a-9f24-654bc201e743",
              "parent_uuid": "c2ba558f-50fc-4b64-ace1-64281165a33e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e1be2cb-6790-4d99-9e4a-b1f4456bbcc7",
                  "parent_uuid": "fe51218c-fcf5-4b5a-9f24-654bc201e743",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6d2ef60-f46e-4f05-a897-83650b88e472",
              "parent_uuid": "c2ba558f-50fc-4b64-ace1-64281165a33e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1a2f7ba-2c6d-4fb5-ac0e-6b7684c63bde",
                  "parent_uuid": "d6d2ef60-f46e-4f05-a897-83650b88e472",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b823b984-35dc-4cf3-817b-bfff58b112e2",
              "parent_uuid": "c2ba558f-50fc-4b64-ace1-64281165a33e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c912344-bb1c-4df0-ae25-a02091101866",
                  "parent_uuid": "b823b984-35dc-4cf3-817b-bfff58b112e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd7e9891-4ee7-4eab-a3a1-2455e4a6966f",
              "parent_uuid": "c2ba558f-50fc-4b64-ace1-64281165a33e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05c912f2-ddd4-44c7-b1b0-7b818977d6bd",
                  "parent_uuid": "cd7e9891-4ee7-4eab-a3a1-2455e4a6966f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "66e6be21-2c34-41dd-a4e1-2752affca0e4",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b505450-8a76-4c75-8cdc-c861be910708",
              "parent_uuid": "66e6be21-2c34-41dd-a4e1-2752affca0e4",
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
          "uuid": "9fbd8540-8c01-4234-9ec9-45a1e9602166",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5b40e84-13d9-483c-8409-3449b62ee998",
              "parent_uuid": "9fbd8540-8c01-4234-9ec9-45a1e9602166",
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
          "uuid": "05d3ed2b-5029-439d-8b42-f3cb71d1acb3",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49d1f253-f700-4cf7-8fb8-a944c0361554",
              "parent_uuid": "05d3ed2b-5029-439d-8b42-f3cb71d1acb3",
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
                  "uuid": "f7847962-1978-4ffd-9166-b2d829e6269f",
                  "parent_uuid": "49d1f253-f700-4cf7-8fb8-a944c0361554",
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
          "uuid": "0f8483a0-ad31-4a24-ac59-8921a927b179",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e45b1d1c-1a6f-4c1d-9cb1-a414fcfb5a67",
              "parent_uuid": "0f8483a0-ad31-4a24-ac59-8921a927b179",
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
          "uuid": "353f1130-a6d2-40da-95dd-78b3c8bef391",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a806902a-9379-4318-9225-aca8b09c7ad8",
              "parent_uuid": "353f1130-a6d2-40da-95dd-78b3c8bef391",
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
          "uuid": "4c0f03a4-9bab-4d03-94da-7a992fd14288",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f741da17-1327-4bed-ade1-49a526b67c93",
              "parent_uuid": "4c0f03a4-9bab-4d03-94da-7a992fd14288",
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
              "uuid": "f7034633-70e3-461b-b1a3-0d692d292c4e",
              "parent_uuid": "4c0f03a4-9bab-4d03-94da-7a992fd14288",
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
              "uuid": "ca1732d2-9ed9-4d49-837c-303a5459941d",
              "parent_uuid": "4c0f03a4-9bab-4d03-94da-7a992fd14288",
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
              "uuid": "77d79019-81b9-49c6-8f6f-1d95e33d9c60",
              "parent_uuid": "4c0f03a4-9bab-4d03-94da-7a992fd14288",
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
              "uuid": "bdb674ab-8c98-4bf1-bf24-f650c6555f30",
              "parent_uuid": "4c0f03a4-9bab-4d03-94da-7a992fd14288",
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
          "uuid": "4e0119ae-86d7-4f34-8935-6ecebb2fa3f2",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b94478c1-671c-4fe7-afcb-dce24ec969f7",
              "parent_uuid": "4e0119ae-86d7-4f34-8935-6ecebb2fa3f2",
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
              "uuid": "56f3cac6-e001-45a1-8c81-bcd27c1761ba",
              "parent_uuid": "4e0119ae-86d7-4f34-8935-6ecebb2fa3f2",
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
              "uuid": "43bfed5c-8db0-4b04-afa7-8142cbbe2d8e",
              "parent_uuid": "4e0119ae-86d7-4f34-8935-6ecebb2fa3f2",
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
              "uuid": "d474ab66-6bdf-4d2a-8203-0080313aee46",
              "parent_uuid": "4e0119ae-86d7-4f34-8935-6ecebb2fa3f2",
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
              "uuid": "475b80c8-35a5-4dd6-80fc-9603c770c5c2",
              "parent_uuid": "4e0119ae-86d7-4f34-8935-6ecebb2fa3f2",
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
          "uuid": "a9e5e905-9e58-4717-9b99-f967a63cec64",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ae44eb3-f84d-49ea-8ff3-f7f80267573d",
              "parent_uuid": "a9e5e905-9e58-4717-9b99-f967a63cec64",
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
              "uuid": "3fd4ad60-2887-4cbc-bdb0-0cfc70757444",
              "parent_uuid": "a9e5e905-9e58-4717-9b99-f967a63cec64",
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
              "uuid": "bc4b9740-267c-42ef-9bcb-64b07c0f8092",
              "parent_uuid": "a9e5e905-9e58-4717-9b99-f967a63cec64",
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
              "uuid": "924f87ae-7946-42ba-935f-b7f2dc180520",
              "parent_uuid": "a9e5e905-9e58-4717-9b99-f967a63cec64",
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
              "uuid": "16c73580-13be-47d5-8ccf-22830f034260",
              "parent_uuid": "a9e5e905-9e58-4717-9b99-f967a63cec64",
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
          "uuid": "1353cf59-e739-4717-80b3-20c1deffa449",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e65c1e38-67d6-420d-94d3-54dec33d8b7b",
              "parent_uuid": "1353cf59-e739-4717-80b3-20c1deffa449",
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
              "uuid": "52b34f54-6569-4265-a90d-e41b6be68127",
              "parent_uuid": "1353cf59-e739-4717-80b3-20c1deffa449",
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
              "uuid": "f9906e64-1dfd-4861-b51a-e4998853b1ca",
              "parent_uuid": "1353cf59-e739-4717-80b3-20c1deffa449",
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
              "uuid": "e5ab0aa6-eebe-493e-ba4f-eeacfbe6487c",
              "parent_uuid": "1353cf59-e739-4717-80b3-20c1deffa449",
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
              "uuid": "2a56ea18-ed79-4c31-824a-25648b7fec55",
              "parent_uuid": "1353cf59-e739-4717-80b3-20c1deffa449",
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
          "uuid": "c7e07c55-2c72-42df-8970-2529808de94e",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1530f0e1-4119-442e-9786-53245777e97a",
              "parent_uuid": "c7e07c55-2c72-42df-8970-2529808de94e",
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
              "uuid": "6f6a0e8a-3d41-4d69-9ad4-5fc356470102",
              "parent_uuid": "c7e07c55-2c72-42df-8970-2529808de94e",
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
              "uuid": "2e199eff-b2c7-4caf-8372-21a8464fccb1",
              "parent_uuid": "c7e07c55-2c72-42df-8970-2529808de94e",
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
              "uuid": "9837e1bc-a793-48f1-98e7-dbaf94d93b51",
              "parent_uuid": "c7e07c55-2c72-42df-8970-2529808de94e",
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
              "uuid": "e455c33c-018f-42e6-849b-8537441bbf97",
              "parent_uuid": "c7e07c55-2c72-42df-8970-2529808de94e",
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
          "uuid": "510228e7-554d-4508-bd71-3824ff8389fc",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d6eeb8c-f30b-4a5e-9026-234b4cd77d4f",
              "parent_uuid": "510228e7-554d-4508-bd71-3824ff8389fc",
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
              "uuid": "dbce2e1d-adae-4303-9a48-ac2e9ae7eec8",
              "parent_uuid": "510228e7-554d-4508-bd71-3824ff8389fc",
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
              "uuid": "bd015427-31b7-4dad-bbde-50874ce6395a",
              "parent_uuid": "510228e7-554d-4508-bd71-3824ff8389fc",
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
              "uuid": "afb05efb-2989-418f-9720-afa07483850b",
              "parent_uuid": "510228e7-554d-4508-bd71-3824ff8389fc",
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
              "uuid": "e86eb109-ad39-4f96-844d-87716e0ddbbd",
              "parent_uuid": "510228e7-554d-4508-bd71-3824ff8389fc",
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
          "uuid": "99563645-5c2e-41c0-81c5-f9239acd40f1",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "565b7723-66e3-4105-8b73-c71d9ef8d0fe",
              "parent_uuid": "99563645-5c2e-41c0-81c5-f9239acd40f1",
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
              "uuid": "9b50e988-95ed-42d0-9133-f8acfc4af674",
              "parent_uuid": "99563645-5c2e-41c0-81c5-f9239acd40f1",
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
              "uuid": "b3500542-e8e3-4608-9a88-e1ed5697513b",
              "parent_uuid": "99563645-5c2e-41c0-81c5-f9239acd40f1",
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
              "uuid": "2550cc74-20a1-4a30-b77e-2c1d43fb85b6",
              "parent_uuid": "99563645-5c2e-41c0-81c5-f9239acd40f1",
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
              "uuid": "417741c1-c232-4db8-bda1-db81f0c0963b",
              "parent_uuid": "99563645-5c2e-41c0-81c5-f9239acd40f1",
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
          "uuid": "c2145940-92c0-4835-815a-c7403a29a3a1",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b69cde0-3c4d-423d-8fe6-41548367b280",
              "parent_uuid": "c2145940-92c0-4835-815a-c7403a29a3a1",
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
              "uuid": "f40cfff5-9eba-4244-8cf0-421f662b44ba",
              "parent_uuid": "c2145940-92c0-4835-815a-c7403a29a3a1",
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
              "uuid": "7157ff79-fd99-463e-9c45-f3b16c1014e1",
              "parent_uuid": "c2145940-92c0-4835-815a-c7403a29a3a1",
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
              "uuid": "6937104a-3837-4a7c-be6b-8f6bcc90c9b1",
              "parent_uuid": "c2145940-92c0-4835-815a-c7403a29a3a1",
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
              "uuid": "17ba29f8-18ab-4d37-b636-56a96d7980b4",
              "parent_uuid": "c2145940-92c0-4835-815a-c7403a29a3a1",
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
          "uuid": "0f92fe03-9e0c-4aac-9356-7ddaa0c9957c",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9acee007-beca-4665-baf2-4fa81992cf20",
              "parent_uuid": "0f92fe03-9e0c-4aac-9356-7ddaa0c9957c",
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
              "uuid": "9140daa3-a26b-488d-91a5-6a1e7c45efce",
              "parent_uuid": "0f92fe03-9e0c-4aac-9356-7ddaa0c9957c",
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
              "uuid": "eb33f1cc-b649-4355-80ae-72595ca14486",
              "parent_uuid": "0f92fe03-9e0c-4aac-9356-7ddaa0c9957c",
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
              "uuid": "04122373-d68c-4f74-a986-717622892769",
              "parent_uuid": "0f92fe03-9e0c-4aac-9356-7ddaa0c9957c",
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
              "uuid": "f34946d5-3f6b-4b1b-8e78-512c9914520e",
              "parent_uuid": "0f92fe03-9e0c-4aac-9356-7ddaa0c9957c",
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
          "uuid": "3967bea5-edff-4ed7-9370-c2a01c7707f0",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35ff6319-df1f-4176-a8d3-4d8a24930021",
              "parent_uuid": "3967bea5-edff-4ed7-9370-c2a01c7707f0",
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
              "uuid": "00b85d88-a1d4-4e8c-8dc6-79c7be206c93",
              "parent_uuid": "3967bea5-edff-4ed7-9370-c2a01c7707f0",
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
              "uuid": "2db0c587-8671-4262-bdb9-4dfcf26094a4",
              "parent_uuid": "3967bea5-edff-4ed7-9370-c2a01c7707f0",
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
              "uuid": "12bef1af-6f52-4e62-bc46-dff8fe58f8ae",
              "parent_uuid": "3967bea5-edff-4ed7-9370-c2a01c7707f0",
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
              "uuid": "55d67dad-ccf1-43b2-8fdb-e47e37f71140",
              "parent_uuid": "3967bea5-edff-4ed7-9370-c2a01c7707f0",
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
          "uuid": "593515c8-5611-4a12-ae10-19675eb0524b",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a3486aa-1645-4012-ab0a-eb5a5d61b195",
              "parent_uuid": "593515c8-5611-4a12-ae10-19675eb0524b",
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
              "uuid": "706eb1bd-460a-4126-9211-989c40032089",
              "parent_uuid": "593515c8-5611-4a12-ae10-19675eb0524b",
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
              "uuid": "38837e45-5e4e-4c60-9399-d6bcfbb4d0f9",
              "parent_uuid": "593515c8-5611-4a12-ae10-19675eb0524b",
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
              "uuid": "ec7734e6-6f74-4300-a2e8-1b4a87dfe416",
              "parent_uuid": "593515c8-5611-4a12-ae10-19675eb0524b",
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
              "uuid": "a221f053-1747-4e8c-a7eb-a23dbea3a710",
              "parent_uuid": "593515c8-5611-4a12-ae10-19675eb0524b",
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
          "uuid": "e762ed38-76c0-4893-b302-96c9b1852d54",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d79da96-022e-4119-9e2b-2bf8b77e5416",
              "parent_uuid": "e762ed38-76c0-4893-b302-96c9b1852d54",
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
              "uuid": "0b7b870b-729b-4ed3-8f88-84f2becae418",
              "parent_uuid": "e762ed38-76c0-4893-b302-96c9b1852d54",
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
              "uuid": "4b61714a-f979-4708-901a-39dc76a12dd8",
              "parent_uuid": "e762ed38-76c0-4893-b302-96c9b1852d54",
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
              "uuid": "494b04a8-d77e-4d58-94dd-78cfe59177f0",
              "parent_uuid": "e762ed38-76c0-4893-b302-96c9b1852d54",
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
              "uuid": "ad26d58a-22b6-4dd8-b10f-47c664704069",
              "parent_uuid": "e762ed38-76c0-4893-b302-96c9b1852d54",
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
          "uuid": "55e890ff-2fdb-44c4-acc1-0dc66ed1dc33",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "179c314a-555c-4824-a964-fd78653a8681",
              "parent_uuid": "55e890ff-2fdb-44c4-acc1-0dc66ed1dc33",
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
              "uuid": "c15c2ab1-ee9c-43a2-94d1-51616349ceae",
              "parent_uuid": "55e890ff-2fdb-44c4-acc1-0dc66ed1dc33",
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
              "uuid": "1a1356c7-0ab8-4c94-8f47-ed547343f9bc",
              "parent_uuid": "55e890ff-2fdb-44c4-acc1-0dc66ed1dc33",
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
              "uuid": "1a3fcace-5885-4141-9366-85429cca2620",
              "parent_uuid": "55e890ff-2fdb-44c4-acc1-0dc66ed1dc33",
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
              "uuid": "74cc8bf2-a7df-417e-a3e9-c24ca89071c1",
              "parent_uuid": "55e890ff-2fdb-44c4-acc1-0dc66ed1dc33",
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
          "uuid": "4074124c-f979-4130-bec2-550eb3397306",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9ce846b-dc61-4e1e-94d2-4aa51195c9e4",
              "parent_uuid": "4074124c-f979-4130-bec2-550eb3397306",
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
          "uuid": "7a7fb6d5-86eb-410f-a3ac-65ae2eb1f717",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d6623a3c-e837-471d-8a86-d6b0b0ad6da3",
              "parent_uuid": "7a7fb6d5-86eb-410f-a3ac-65ae2eb1f717",
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
          "uuid": "e66408ee-f27e-4ae7-87b1-3c2f23b0e3ac",
          "parent_uuid": "cde7dc7b-7b75-4a37-acd7-07edf3472c89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b71cfe7-7357-4b2d-a030-62c25bd99c1a",
              "parent_uuid": "e66408ee-f27e-4ae7-87b1-3c2f23b0e3ac",
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
                  "uuid": "9423690e-f30f-4251-81d2-574a24bd4a3d",
                  "parent_uuid": "8b71cfe7-7357-4b2d-a030-62c25bd99c1a",
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

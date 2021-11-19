
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
  "uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
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
      "uuid": "42d0f85e-72c1-4442-92f3-3ed5f6c26eb6",
      "parent_uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
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
      "uuid": "0b317fd6-7421-4cc6-abd1-f00d82e53664",
      "parent_uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
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
      "uuid": "1335fe15-5f77-423e-b9d4-ff5e4600404b",
      "parent_uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
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
      "uuid": "594a810a-3ad9-4652-a984-06311c647e78",
      "parent_uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
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
      "uuid": "f4446163-a85b-4a99-871f-863740d09e50",
      "parent_uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
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
      "uuid": "d6c180ca-9215-4f1e-af36-e1457d1c328e",
      "parent_uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
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
      "uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
      "parent_uuid": "44304cb2-bd84-45fe-b770-877b416327c7",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "43660d69-b6eb-4e93-abdc-2836636cb9c9",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "c1973aba-0500-4ceb-b413-d12397454a51",
              "parent_uuid": "43660d69-b6eb-4e93-abdc-2836636cb9c9",
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
              "uuid": "a26adaac-78b8-4b18-8211-287c54f8f92d",
              "parent_uuid": "43660d69-b6eb-4e93-abdc-2836636cb9c9",
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
              "uuid": "94c1e086-12cd-4fd9-9c8e-9a2a26508fba",
              "parent_uuid": "43660d69-b6eb-4e93-abdc-2836636cb9c9",
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
              "uuid": "45ca6b14-7852-4287-a974-5271be568f1c",
              "parent_uuid": "43660d69-b6eb-4e93-abdc-2836636cb9c9",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "7"
                ],
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
          "uuid": "4a0303f6-034a-47b8-8988-c87245dd903f",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "9c968d1f-133b-45a4-9547-c909c8cb3790",
              "parent_uuid": "4a0303f6-034a-47b8-8988-c87245dd903f",
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
              "uuid": "fe16a593-0489-4639-8b46-08d96022e74e",
              "parent_uuid": "4a0303f6-034a-47b8-8988-c87245dd903f",
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
              "uuid": "34ec14cc-6f67-4f61-8a2c-e0fd659071c4",
              "parent_uuid": "4a0303f6-034a-47b8-8988-c87245dd903f",
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
              "uuid": "82a21d9f-64ce-4503-a3d6-5070f1acbf9a",
              "parent_uuid": "4a0303f6-034a-47b8-8988-c87245dd903f",
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
                  "7"
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
          "uuid": "3059a1eb-9fa5-42b3-b035-150a9ade675d",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "e17217dd-6967-4a96-8d6a-5ecffe274a1c",
              "parent_uuid": "3059a1eb-9fa5-42b3-b035-150a9ade675d",
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
              "uuid": "e4b8614f-d717-4925-b52d-abe277b1bde0",
              "parent_uuid": "3059a1eb-9fa5-42b3-b035-150a9ade675d",
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
              "uuid": "0af627c3-18f0-4287-8624-d35c02b44de7",
              "parent_uuid": "3059a1eb-9fa5-42b3-b035-150a9ade675d",
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
              "uuid": "f83b72bd-bab0-4892-8f93-51f7012b69f4",
              "parent_uuid": "3059a1eb-9fa5-42b3-b035-150a9ade675d",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
                [
                  "colspan",
                  "7"
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
          "uuid": "81c85b3e-baf5-4360-a4e7-fa88f47a502e",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e468884c-02a7-4a8f-806e-a2c873835847",
              "parent_uuid": "81c85b3e-baf5-4360-a4e7-fa88f47a502e",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d993c482-6787-45be-bcd9-dafcaa373c9a",
              "parent_uuid": "81c85b3e-baf5-4360-a4e7-fa88f47a502e",
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
              "uuid": "2bbc40e2-805c-4f3f-9a5a-ad128eae628d",
              "parent_uuid": "81c85b3e-baf5-4360-a4e7-fa88f47a502e",
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
              "uuid": "576dc04c-ca1e-4194-b93b-1333b117305f",
              "parent_uuid": "81c85b3e-baf5-4360-a4e7-fa88f47a502e",
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
              "uuid": "54e42bae-8f5e-4d0a-ba4c-e0e752eef952",
              "parent_uuid": "81c85b3e-baf5-4360-a4e7-fa88f47a502e",
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
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "a3b18262-f10d-4019-a367-71859f429608",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "18e6aff8-91e1-4950-8ea5-57ea93d8f7b5",
              "parent_uuid": "a3b18262-f10d-4019-a367-71859f429608",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "10"
                ],
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
          "uuid": "7300e934-4972-4327-8e4c-cdead989917a",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81b42973-fe3a-4ab8-885c-b3a995c370f8",
              "parent_uuid": "7300e934-4972-4327-8e4c-cdead989917a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f5a20111-b998-4c79-9be2-fc8b2f351fb0",
              "parent_uuid": "7300e934-4972-4327-8e4c-cdead989917a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "76eae5a6-3b03-4e17-8262-70cc44691829",
              "parent_uuid": "7300e934-4972-4327-8e4c-cdead989917a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "02cf053f-67b2-4795-bf30-c938718c9312",
                  "parent_uuid": "76eae5a6-3b03-4e17-8262-70cc44691829",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf542aed-8830-4cdb-8cbd-d0eb21b91f19",
              "parent_uuid": "7300e934-4972-4327-8e4c-cdead989917a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e729f80c-9b36-4fea-af78-6d93aabd057d",
                  "parent_uuid": "bf542aed-8830-4cdb-8cbd-d0eb21b91f19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "701d29ce-07a1-46e3-88df-55438757beed",
              "parent_uuid": "7300e934-4972-4327-8e4c-cdead989917a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2aa46ea3-9eb2-4ced-a4bd-3a11e15ccb38",
                  "parent_uuid": "701d29ce-07a1-46e3-88df-55438757beed",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "7f3fba86-ed81-4169-8e15-d9cb30e23196",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a0a1c0b-75d4-4ee9-9c79-2a9171ecfc10",
              "parent_uuid": "7f3fba86-ed81-4169-8e15-d9cb30e23196",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0cd355d4-cb6d-48e3-baaf-7651d717ab38",
              "parent_uuid": "7f3fba86-ed81-4169-8e15-d9cb30e23196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "0689e741-eb67-48a8-ad13-f58c34c18c94",
              "parent_uuid": "7f3fba86-ed81-4169-8e15-d9cb30e23196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "d3d05096-9735-42bd-9561-f1c47a161763",
                  "parent_uuid": "0689e741-eb67-48a8-ad13-f58c34c18c94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8b75e25-4614-47e3-a17a-396a9844b519",
              "parent_uuid": "7f3fba86-ed81-4169-8e15-d9cb30e23196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "922e2f63-d74f-4cae-892a-37171d7dc973",
                  "parent_uuid": "a8b75e25-4614-47e3-a17a-396a9844b519",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27ce9b8e-7bc8-48e7-9aaf-a16eba23b69b",
              "parent_uuid": "7f3fba86-ed81-4169-8e15-d9cb30e23196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c3063690-96d8-456f-8210-509e48912a5c",
                  "parent_uuid": "27ce9b8e-7bc8-48e7-9aaf-a16eba23b69b",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "76c1806e-6e12-46b8-8301-b1331ac111a3",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a03f2fae-7731-45bc-a2ce-56a671423601",
              "parent_uuid": "76c1806e-6e12-46b8-8301-b1331ac111a3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "926f9a47-dea2-4e2d-a9a7-7db924fdd9fd",
              "parent_uuid": "76c1806e-6e12-46b8-8301-b1331ac111a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f7384e61-fa5e-408d-bcd8-202a33d92d55",
              "parent_uuid": "76c1806e-6e12-46b8-8301-b1331ac111a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f123c38-4a50-497c-856b-34dd9a1cf917",
                  "parent_uuid": "f7384e61-fa5e-408d-bcd8-202a33d92d55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34553cca-f7b8-45e9-b315-935cf9046937",
              "parent_uuid": "76c1806e-6e12-46b8-8301-b1331ac111a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfbf9bfe-ae27-4bf0-9eed-df6126a11cdd",
                  "parent_uuid": "34553cca-f7b8-45e9-b315-935cf9046937",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3593f3d-3533-4382-98ad-06c284541bf6",
              "parent_uuid": "76c1806e-6e12-46b8-8301-b1331ac111a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec692acf-0661-47f3-93e8-90475759086c",
                  "parent_uuid": "f3593f3d-3533-4382-98ad-06c284541bf6",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "d43bafa7-de4d-468c-955c-1c6e672a8cc5",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fceced2-505e-4423-b19e-958d9eb4a1f4",
              "parent_uuid": "d43bafa7-de4d-468c-955c-1c6e672a8cc5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1c587347-1926-44b3-abb4-bb5db2bf19ab",
              "parent_uuid": "d43bafa7-de4d-468c-955c-1c6e672a8cc5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "fae3d699-a870-4fe9-921c-14f43c5a8191",
              "parent_uuid": "d43bafa7-de4d-468c-955c-1c6e672a8cc5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2032369-eabd-4c25-af54-bc6503225cfa",
                  "parent_uuid": "fae3d699-a870-4fe9-921c-14f43c5a8191",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "debfd9a4-8acc-4ee5-914a-6fb6aae3569a",
              "parent_uuid": "d43bafa7-de4d-468c-955c-1c6e672a8cc5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b501dab-830d-48cb-bf79-1efe0fe87886",
                  "parent_uuid": "debfd9a4-8acc-4ee5-914a-6fb6aae3569a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1c5cdea-da10-4bd1-a8ce-d2a7523dfab3",
              "parent_uuid": "d43bafa7-de4d-468c-955c-1c6e672a8cc5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fac861d6-6ac9-4d9b-a317-90b6fe092757",
                  "parent_uuid": "a1c5cdea-da10-4bd1-a8ce-d2a7523dfab3",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "aa4467ce-7c28-4272-b672-d1d22f8d8883",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c2ca021-ad47-4147-a6fc-b12203660e93",
              "parent_uuid": "aa4467ce-7c28-4272-b672-d1d22f8d8883",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f14e5dda-49b8-48c1-8968-fc8089d441fd",
              "parent_uuid": "aa4467ce-7c28-4272-b672-d1d22f8d8883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f0efaf2b-0359-497d-a195-4376c366bbca",
              "parent_uuid": "aa4467ce-7c28-4272-b672-d1d22f8d8883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dc286db-9268-453f-91a0-f1ff49f0420f",
                  "parent_uuid": "f0efaf2b-0359-497d-a195-4376c366bbca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5afe1eba-4be7-42a7-827f-10e9ff4bc56b",
              "parent_uuid": "aa4467ce-7c28-4272-b672-d1d22f8d8883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2063796-074f-45e5-af9f-3681f373e7af",
                  "parent_uuid": "5afe1eba-4be7-42a7-827f-10e9ff4bc56b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6e45723-f043-4050-9740-339f61edc053",
              "parent_uuid": "aa4467ce-7c28-4272-b672-d1d22f8d8883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e9611d0-19eb-47c1-817a-1bf313d463b8",
                  "parent_uuid": "f6e45723-f043-4050-9740-339f61edc053",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "452ad734-ab69-4cde-b547-9064108b50ee",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efed4000-171e-4609-ab1e-a4f4e7e3bdbe",
              "parent_uuid": "452ad734-ab69-4cde-b547-9064108b50ee",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "36e7b9a4-cb89-4930-9dd8-1c520102b4f3",
              "parent_uuid": "452ad734-ab69-4cde-b547-9064108b50ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "a689e638-c16c-4d0a-b024-00cc67130658",
              "parent_uuid": "452ad734-ab69-4cde-b547-9064108b50ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "413e327d-1920-41c8-8f83-afcdbe29d9df",
                  "parent_uuid": "a689e638-c16c-4d0a-b024-00cc67130658",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a87ceb3f-a725-4a52-b402-10fa7bbcbe4d",
              "parent_uuid": "452ad734-ab69-4cde-b547-9064108b50ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5e21359-28f5-47b1-817b-194f85385906",
                  "parent_uuid": "a87ceb3f-a725-4a52-b402-10fa7bbcbe4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3a4f90d-8623-431a-a055-c13f525f00b2",
              "parent_uuid": "452ad734-ab69-4cde-b547-9064108b50ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a78775e0-a900-47f1-a135-8fa7748624f0",
                  "parent_uuid": "b3a4f90d-8623-431a-a055-c13f525f00b2",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "edc1acd0-e360-4e81-948a-209892de45c9",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0cb9906f-51c0-4f9a-abaa-a819a0e3730a",
              "parent_uuid": "edc1acd0-e360-4e81-948a-209892de45c9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c8ffd54d-1cce-4dba-9fa3-edbb0885bd38",
              "parent_uuid": "edc1acd0-e360-4e81-948a-209892de45c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "9396856c-85a9-46b0-95c8-c16649663694",
              "parent_uuid": "edc1acd0-e360-4e81-948a-209892de45c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a11641a4-dd60-4836-b9fa-206422e977d1",
                  "parent_uuid": "9396856c-85a9-46b0-95c8-c16649663694",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "963d7915-9d9d-4c13-8cd7-6beae9713044",
              "parent_uuid": "edc1acd0-e360-4e81-948a-209892de45c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cb677b9-0fc4-4ff3-ab7d-c792ebbefcad",
                  "parent_uuid": "963d7915-9d9d-4c13-8cd7-6beae9713044",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb7c1f3f-127a-44f0-8250-706228ad1c4a",
              "parent_uuid": "edc1acd0-e360-4e81-948a-209892de45c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e007cf6e-588c-447b-9119-89ddfb0eb73e",
                  "parent_uuid": "cb7c1f3f-127a-44f0-8250-706228ad1c4a",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "1dde33ef-e34c-4fb6-857b-c3257ae77a54",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a852d0b-ff80-4225-b4a6-a64da16b7d48",
              "parent_uuid": "1dde33ef-e34c-4fb6-857b-c3257ae77a54",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7ee3d919-0d49-4cff-a169-1afd41314646",
              "parent_uuid": "1dde33ef-e34c-4fb6-857b-c3257ae77a54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "2ed581bd-8b09-4692-9058-5ee45d5b131a",
              "parent_uuid": "1dde33ef-e34c-4fb6-857b-c3257ae77a54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2884ab5b-f633-4ed7-907e-378c7007d9fa",
                  "parent_uuid": "2ed581bd-8b09-4692-9058-5ee45d5b131a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3b3b96c-ca0d-449e-a82f-25ad6a047d7c",
              "parent_uuid": "1dde33ef-e34c-4fb6-857b-c3257ae77a54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f59d8c2d-354f-4132-b668-d9dedbe87ae0",
                  "parent_uuid": "b3b3b96c-ca0d-449e-a82f-25ad6a047d7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "770b253a-1b1a-420e-8370-9e5ebd93fc76",
              "parent_uuid": "1dde33ef-e34c-4fb6-857b-c3257ae77a54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "689bd9a7-1288-47ae-8cc5-43c9ce17e097",
                  "parent_uuid": "770b253a-1b1a-420e-8370-9e5ebd93fc76",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "f72b55a9-019e-46e7-b2dc-641919fb7bd9",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d76062c-a6bc-4f18-be77-4b074992b567",
              "parent_uuid": "f72b55a9-019e-46e7-b2dc-641919fb7bd9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0498262b-35c4-4fb4-b6e0-28de63fae153",
              "parent_uuid": "f72b55a9-019e-46e7-b2dc-641919fb7bd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ea711d64-822a-437a-9cd6-2d5d859b3d3f",
              "parent_uuid": "f72b55a9-019e-46e7-b2dc-641919fb7bd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e90be3c-a770-4fe6-a1de-ddba922bd3e8",
                  "parent_uuid": "ea711d64-822a-437a-9cd6-2d5d859b3d3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a92f24b-3e1a-4ef5-bb65-e12b86855a00",
              "parent_uuid": "f72b55a9-019e-46e7-b2dc-641919fb7bd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba753efc-081d-4546-a42a-203707bb76c2",
                  "parent_uuid": "5a92f24b-3e1a-4ef5-bb65-e12b86855a00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1985a906-bb63-4420-8374-a0c06a9d247a",
              "parent_uuid": "f72b55a9-019e-46e7-b2dc-641919fb7bd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40de081f-636d-4717-b67e-a92e48dd56b4",
                  "parent_uuid": "1985a906-bb63-4420-8374-a0c06a9d247a",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "a568add7-86c6-41c2-ab72-38157664ab00",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae52cebe-6ee7-4cfc-b086-cae1347780dc",
              "parent_uuid": "a568add7-86c6-41c2-ab72-38157664ab00",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "99d1e9c1-eabc-4afe-b590-22446f384271",
              "parent_uuid": "a568add7-86c6-41c2-ab72-38157664ab00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "5339aa02-767a-431b-95ee-4437de49c528",
              "parent_uuid": "a568add7-86c6-41c2-ab72-38157664ab00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0e74c8d-20ee-4a88-9995-971d2ac94fc6",
                  "parent_uuid": "5339aa02-767a-431b-95ee-4437de49c528",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66a2c6d8-f1c6-4e40-9028-c76cfab9e10b",
              "parent_uuid": "a568add7-86c6-41c2-ab72-38157664ab00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3457ccbd-0895-4216-8727-30310e448c44",
                  "parent_uuid": "66a2c6d8-f1c6-4e40-9028-c76cfab9e10b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c162c6b1-32ad-46ec-bfed-be5d78088dbe",
              "parent_uuid": "a568add7-86c6-41c2-ab72-38157664ab00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cafe3a9-1131-48e5-adf3-6435bf31ea2c",
                  "parent_uuid": "c162c6b1-32ad-46ec-bfed-be5d78088dbe",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "22b9331e-887a-4064-8cdf-c1e48147efae",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95a8aad5-0f71-48f9-8039-b94e220cc452",
              "parent_uuid": "22b9331e-887a-4064-8cdf-c1e48147efae",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bbd2a971-5882-423f-97c5-ecd7f80812e7",
              "parent_uuid": "22b9331e-887a-4064-8cdf-c1e48147efae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c6f6c9f3-dff1-440d-9621-0445e3ac450b",
              "parent_uuid": "22b9331e-887a-4064-8cdf-c1e48147efae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e59efc79-c4cf-48c0-9ce3-4a1b6b6a1680",
                  "parent_uuid": "c6f6c9f3-dff1-440d-9621-0445e3ac450b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d26afe5f-18bd-4868-bfb1-b4097669057a",
              "parent_uuid": "22b9331e-887a-4064-8cdf-c1e48147efae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9805cf8b-3047-49ad-b74b-e65f3c33cc07",
                  "parent_uuid": "d26afe5f-18bd-4868-bfb1-b4097669057a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afd33e9c-5249-4602-9d02-cf974fb02951",
              "parent_uuid": "22b9331e-887a-4064-8cdf-c1e48147efae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d7ea5fe-0280-4087-b567-3b31b1199236",
                  "parent_uuid": "afd33e9c-5249-4602-9d02-cf974fb02951",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "3a7e434c-cede-4b23-82eb-e50f01dbb41c",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2a093c2-cca9-4c1d-a6e5-cad8fb27b00a",
              "parent_uuid": "3a7e434c-cede-4b23-82eb-e50f01dbb41c",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "53b8aefc-fb0d-45a1-ab13-ea28335057e6",
              "parent_uuid": "3a7e434c-cede-4b23-82eb-e50f01dbb41c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "0e2baa8f-dcc8-4c03-86a0-4a9f13cb5c52",
              "parent_uuid": "3a7e434c-cede-4b23-82eb-e50f01dbb41c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b559d71d-5962-482a-a9ad-d8528d94c3e8",
                  "parent_uuid": "0e2baa8f-dcc8-4c03-86a0-4a9f13cb5c52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc2f7b0e-851e-4b83-b179-0ca0c40cc63f",
              "parent_uuid": "3a7e434c-cede-4b23-82eb-e50f01dbb41c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9e85d55-ddfc-48fa-8cac-a65aeb0040bb",
                  "parent_uuid": "fc2f7b0e-851e-4b83-b179-0ca0c40cc63f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8f842d0-d408-4d21-8326-43b2567b2044",
              "parent_uuid": "3a7e434c-cede-4b23-82eb-e50f01dbb41c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bd066d9-d543-46b3-a676-3f4c67df49c5",
                  "parent_uuid": "f8f842d0-d408-4d21-8326-43b2567b2044",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "79db95d2-5902-411b-8732-4eb00c1267ea",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be3f9221-05db-4a82-a60c-9f4bfead1f38",
              "parent_uuid": "79db95d2-5902-411b-8732-4eb00c1267ea",
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
                  "10"
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
          "uuid": "5ef16b48-5376-417d-a43f-57cfc345b939",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aad4ea46-8009-4e87-a38e-0798bfae6e79",
              "parent_uuid": "5ef16b48-5376-417d-a43f-57cfc345b939",
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
                  "10"
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
          "uuid": "a5503835-d5eb-48e9-8f6c-b4b8655bed13",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db4bc222-09c5-452d-918c-120f6f09f59e",
              "parent_uuid": "a5503835-d5eb-48e9-8f6c-b4b8655bed13",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "172e618d-d382-4947-8016-280c078099f8",
                  "parent_uuid": "db4bc222-09c5-452d-918c-120f6f09f59e",
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
          "uuid": "2c4e389f-94fd-48f0-bb9e-15c7331a5bf8",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "841c4dd2-fdce-406c-a607-b5b2c632d26d",
              "parent_uuid": "2c4e389f-94fd-48f0-bb9e-15c7331a5bf8",
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
                  "10"
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
          "uuid": "9770661d-c716-4db9-8d71-8900ff6a5967",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "4a6bea13-cba5-42ff-b076-5ea9b9bde510",
              "parent_uuid": "9770661d-c716-4db9-8d71-8900ff6a5967",
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
                  "10"
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
          "uuid": "88992be3-b9a8-4b38-aac9-c194677badbc",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30e3cb78-05c4-4613-b699-356c7af4d950",
              "parent_uuid": "88992be3-b9a8-4b38-aac9-c194677badbc",
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
              "uuid": "21980bed-96e3-4a62-aa6e-9c90481b2aac",
              "parent_uuid": "88992be3-b9a8-4b38-aac9-c194677badbc",
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
              "uuid": "4292e8c9-d3e6-4913-bd7c-95469862db4f",
              "parent_uuid": "88992be3-b9a8-4b38-aac9-c194677badbc",
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
              "uuid": "ef4000d0-e176-4558-a61d-252a377aff33",
              "parent_uuid": "88992be3-b9a8-4b38-aac9-c194677badbc",
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
              "uuid": "e21111a7-5401-471b-aefe-6bfc6f77e20b",
              "parent_uuid": "88992be3-b9a8-4b38-aac9-c194677badbc",
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
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "13f02e8e-952f-4679-b5fa-5517202f3969",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "115229b5-abfa-4c10-8d0f-e5b114af09a5",
              "parent_uuid": "13f02e8e-952f-4679-b5fa-5517202f3969",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d86d3b6b-d00f-43bd-b58d-ac48e0ecbacb",
              "parent_uuid": "13f02e8e-952f-4679-b5fa-5517202f3969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "4944f7f8-7a74-40d5-a419-d58f8956cec0",
              "parent_uuid": "13f02e8e-952f-4679-b5fa-5517202f3969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6a79cb8-5376-48ad-8064-6c6bd35b9cbe",
                  "parent_uuid": "4944f7f8-7a74-40d5-a419-d58f8956cec0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c8c5fa3-37ae-47ac-aa65-5e4c2d79a201",
              "parent_uuid": "13f02e8e-952f-4679-b5fa-5517202f3969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12ce1572-bb91-4466-a4c0-23de2475ccc0",
                  "parent_uuid": "1c8c5fa3-37ae-47ac-aa65-5e4c2d79a201",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5702d002-1e73-425e-a3e8-2dbfc14a6462",
              "parent_uuid": "13f02e8e-952f-4679-b5fa-5517202f3969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39839c8d-4591-4ab6-8a81-0506689dac3d",
                  "parent_uuid": "5702d002-1e73-425e-a3e8-2dbfc14a6462",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "3192875a-d265-4998-b55e-5f3e5b26f5fd",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcc4e362-77c8-4f1d-9b12-e5796a870ffe",
              "parent_uuid": "3192875a-d265-4998-b55e-5f3e5b26f5fd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2263e89b-e92e-4c11-ad54-6cdc001d069d",
              "parent_uuid": "3192875a-d265-4998-b55e-5f3e5b26f5fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c1a9653f-8ce0-401a-b117-729679f070e1",
              "parent_uuid": "3192875a-d265-4998-b55e-5f3e5b26f5fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "741a8b62-d566-4eec-94cc-5e402769b4e7",
                  "parent_uuid": "c1a9653f-8ce0-401a-b117-729679f070e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "248511db-935c-4ecc-8340-4274d0cff49c",
              "parent_uuid": "3192875a-d265-4998-b55e-5f3e5b26f5fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "840fff01-2d5f-4615-a247-421f51fa43ca",
                  "parent_uuid": "248511db-935c-4ecc-8340-4274d0cff49c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4d420b8-9e8c-432d-845b-db02489de2fd",
              "parent_uuid": "3192875a-d265-4998-b55e-5f3e5b26f5fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59931a52-af12-44b3-8b9e-408700e064fa",
                  "parent_uuid": "e4d420b8-9e8c-432d-845b-db02489de2fd",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "6191ee78-1873-45f8-b8b2-242bccf26e10",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b3a512d-a0d0-41ac-bc6a-5b56b8f63a2b",
              "parent_uuid": "6191ee78-1873-45f8-b8b2-242bccf26e10",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b77caa29-6fce-4756-a908-82153d10d1be",
              "parent_uuid": "6191ee78-1873-45f8-b8b2-242bccf26e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "5aaf75ba-67d6-4424-8da1-beaabcdbee4f",
              "parent_uuid": "6191ee78-1873-45f8-b8b2-242bccf26e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "466c9bfc-73b1-486d-b867-574ba24df922",
                  "parent_uuid": "5aaf75ba-67d6-4424-8da1-beaabcdbee4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d71cad6-5f30-4df7-831c-bb10ca460362",
              "parent_uuid": "6191ee78-1873-45f8-b8b2-242bccf26e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac257ae2-38d3-430b-aea8-d5c577c344a3",
                  "parent_uuid": "4d71cad6-5f30-4df7-831c-bb10ca460362",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06c44d18-4895-4e5c-a39a-647930734147",
              "parent_uuid": "6191ee78-1873-45f8-b8b2-242bccf26e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c09cabcf-25e2-42b3-a08b-c957cf4c6ddd",
                  "parent_uuid": "06c44d18-4895-4e5c-a39a-647930734147",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "2614be9e-72da-43ed-ac00-c8eb2372f142",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9d3bafb-5739-4b6d-bb76-b1ce3caf7f70",
              "parent_uuid": "2614be9e-72da-43ed-ac00-c8eb2372f142",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e6a984a3-79d6-4d62-81a2-b03c62d85905",
              "parent_uuid": "2614be9e-72da-43ed-ac00-c8eb2372f142",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "908c8d3a-7c83-4934-828e-6e690201544b",
              "parent_uuid": "2614be9e-72da-43ed-ac00-c8eb2372f142",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6289c688-78fd-4260-ae9f-7457c0e449e7",
                  "parent_uuid": "908c8d3a-7c83-4934-828e-6e690201544b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "672301f0-0021-467e-9671-7a972dd53e95",
              "parent_uuid": "2614be9e-72da-43ed-ac00-c8eb2372f142",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c0fe68e-3311-45ea-9441-0c5c6f8dd455",
                  "parent_uuid": "672301f0-0021-467e-9671-7a972dd53e95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ba74779-5cb1-40ae-8261-bf3f9de58f5e",
              "parent_uuid": "2614be9e-72da-43ed-ac00-c8eb2372f142",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6220612-055f-4c84-bb36-95b3f0717164",
                  "parent_uuid": "1ba74779-5cb1-40ae-8261-bf3f9de58f5e",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "7af97aa4-1817-450e-8aac-f67726a783c6",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fe06713-d0a6-4b94-88fc-e2104991f746",
              "parent_uuid": "7af97aa4-1817-450e-8aac-f67726a783c6",
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
                  "10"
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
          "uuid": "21b384b0-082f-4ede-8856-7d775d029b23",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e68019e8-c075-477e-a28f-7f2ef20af4e1",
              "parent_uuid": "21b384b0-082f-4ede-8856-7d775d029b23",
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
                  "10"
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
          "uuid": "97459c57-11aa-4238-87af-3572738c3d8f",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9167213-493f-43fe-81d1-eda2ed54b57e",
              "parent_uuid": "97459c57-11aa-4238-87af-3572738c3d8f",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "12ee48ad-0e37-41ee-932f-eb21ea10ec72",
                  "parent_uuid": "f9167213-493f-43fe-81d1-eda2ed54b57e",
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
          "uuid": "f2bfb881-c1eb-419e-8b1f-52b4321e65a1",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26f3e12b-10b6-4276-93b0-650be81b154a",
              "parent_uuid": "f2bfb881-c1eb-419e-8b1f-52b4321e65a1",
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
                  "10"
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
          "uuid": "80265a17-577d-42c5-af59-f32928ab6d15",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5dba50e7-a250-4ead-911c-6938b1a0033b",
              "parent_uuid": "80265a17-577d-42c5-af59-f32928ab6d15",
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
                  "10"
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
          "uuid": "9037c113-63e4-49a0-827c-529ae6c8b7b7",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c829f827-3340-44d0-95b1-6b9878321eaa",
              "parent_uuid": "9037c113-63e4-49a0-827c-529ae6c8b7b7",
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
              "uuid": "0477ebea-27f7-406f-81c4-e2d26d5acf77",
              "parent_uuid": "9037c113-63e4-49a0-827c-529ae6c8b7b7",
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
              "uuid": "6f5859aa-78f9-495d-856a-411a68ec3cbe",
              "parent_uuid": "9037c113-63e4-49a0-827c-529ae6c8b7b7",
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
              "uuid": "02bc9e68-eaa8-47da-abc9-020878bef993",
              "parent_uuid": "9037c113-63e4-49a0-827c-529ae6c8b7b7",
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
              "uuid": "d2a9f4b5-2e04-46f2-aba1-3910bb393d84",
              "parent_uuid": "9037c113-63e4-49a0-827c-529ae6c8b7b7",
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
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "6a20f539-81b9-4bc3-88d2-c946c0f1cb0a",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "d32c17ee-bc0f-4f74-8172-32103f6f9fe3",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69635152-6636-4eaf-88ef-4627666b4537",
              "parent_uuid": "d32c17ee-bc0f-4f74-8172-32103f6f9fe3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "20f23696-9e93-43f3-954c-4000d1d88162",
              "parent_uuid": "d32c17ee-bc0f-4f74-8172-32103f6f9fe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b77b2407-9673-44b9-950e-b2aa25fea47e",
              "parent_uuid": "d32c17ee-bc0f-4f74-8172-32103f6f9fe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d6fa957-2d3e-4902-9631-27c1d2f8e134",
                  "parent_uuid": "b77b2407-9673-44b9-950e-b2aa25fea47e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "663aa640-2c2e-499b-82b7-a7bd5ae5b6c3",
              "parent_uuid": "d32c17ee-bc0f-4f74-8172-32103f6f9fe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "231e84f5-79c7-4667-bda1-a85ef4666879",
                  "parent_uuid": "663aa640-2c2e-499b-82b7-a7bd5ae5b6c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02cb6da6-146c-4871-9348-48b3c15f18dc",
              "parent_uuid": "d32c17ee-bc0f-4f74-8172-32103f6f9fe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e227f8f-c847-4a5f-8d13-3159cbf2b5e6",
                  "parent_uuid": "02cb6da6-146c-4871-9348-48b3c15f18dc",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "5dcfb940-e462-4e2d-b1c3-f4a35d42fd5a",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "490389e3-9827-4db7-a987-0e292d495362",
              "parent_uuid": "5dcfb940-e462-4e2d-b1c3-f4a35d42fd5a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "740c4526-7445-4a38-a2de-cbf8015e288f",
              "parent_uuid": "5dcfb940-e462-4e2d-b1c3-f4a35d42fd5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "386d7f97-57e9-4b87-a3d9-c591f1578b9b",
              "parent_uuid": "5dcfb940-e462-4e2d-b1c3-f4a35d42fd5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff01a4b4-da2d-43ef-8337-a5dfb3e7702e",
                  "parent_uuid": "386d7f97-57e9-4b87-a3d9-c591f1578b9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f67cdc98-b59f-4eae-884a-56b39f93375a",
              "parent_uuid": "5dcfb940-e462-4e2d-b1c3-f4a35d42fd5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e6d7c84-7bd8-4ba7-83fd-5e1afb8fc962",
                  "parent_uuid": "f67cdc98-b59f-4eae-884a-56b39f93375a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "262e7a97-deb7-4c88-a6a5-15f25324b0ee",
              "parent_uuid": "5dcfb940-e462-4e2d-b1c3-f4a35d42fd5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "941f1484-fbd1-4e75-a983-4864e26394e7",
                  "parent_uuid": "262e7a97-deb7-4c88-a6a5-15f25324b0ee",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "a2797bc1-dfff-465a-929a-8fec7de06e06",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d75cea43-f637-4f9b-9945-b64ae71b9b55",
              "parent_uuid": "a2797bc1-dfff-465a-929a-8fec7de06e06",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "54c4f220-a60a-47ec-af2e-3fbff12f55e3",
              "parent_uuid": "a2797bc1-dfff-465a-929a-8fec7de06e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b2354b9b-bff0-4cda-8686-a195725375d8",
              "parent_uuid": "a2797bc1-dfff-465a-929a-8fec7de06e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0a500e3-ef9b-42c3-89a6-cd121a47a1f7",
                  "parent_uuid": "b2354b9b-bff0-4cda-8686-a195725375d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40cebed5-a44e-491b-b75d-c173c7779cfe",
              "parent_uuid": "a2797bc1-dfff-465a-929a-8fec7de06e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa9622f9-f25d-4d89-a8fc-900de2eb52b0",
                  "parent_uuid": "40cebed5-a44e-491b-b75d-c173c7779cfe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e7296e3-a360-41a0-a538-9ec60e7dd5b3",
              "parent_uuid": "a2797bc1-dfff-465a-929a-8fec7de06e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1ac1450-5d57-4e11-9c07-75b5a71e0c88",
                  "parent_uuid": "5e7296e3-a360-41a0-a538-9ec60e7dd5b3",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "f7d18bee-d1aa-4ad8-8117-4afbf8d76115",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b6d55ff-8f6b-40e5-baa8-cec8cfab3c8a",
              "parent_uuid": "f7d18bee-d1aa-4ad8-8117-4afbf8d76115",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5446b026-8b0f-4183-92a1-3209f3347106",
              "parent_uuid": "f7d18bee-d1aa-4ad8-8117-4afbf8d76115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "4025d3c3-68fb-464b-82c9-148be0f9aac6",
              "parent_uuid": "f7d18bee-d1aa-4ad8-8117-4afbf8d76115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34fc2cca-51c0-4b5b-b979-515487a0438b",
                  "parent_uuid": "4025d3c3-68fb-464b-82c9-148be0f9aac6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4628948c-9874-4e43-a83d-02531ef07b48",
              "parent_uuid": "f7d18bee-d1aa-4ad8-8117-4afbf8d76115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7944899d-c4ed-429f-aba3-2895507e97ec",
                  "parent_uuid": "4628948c-9874-4e43-a83d-02531ef07b48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e25069a5-c916-4ddb-9d0d-3cd8e6c5a604",
              "parent_uuid": "f7d18bee-d1aa-4ad8-8117-4afbf8d76115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e92b8cf-55c3-4e8d-bda6-ae873c1a431c",
                  "parent_uuid": "e25069a5-c916-4ddb-9d0d-3cd8e6c5a604",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "6a22ea19-8413-4cdd-a0d8-d3b77eb79ee4",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50c50e94-fe12-4ade-ae49-d0bc6d5754f4",
              "parent_uuid": "6a22ea19-8413-4cdd-a0d8-d3b77eb79ee4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "76801744-9dd5-44e9-8023-7ae50139b98c",
              "parent_uuid": "6a22ea19-8413-4cdd-a0d8-d3b77eb79ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "fb34221d-2489-4e92-8b18-18643b776bb5",
              "parent_uuid": "6a22ea19-8413-4cdd-a0d8-d3b77eb79ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fad1c7e7-e4de-4c3b-b16d-be3664fbf6dc",
                  "parent_uuid": "fb34221d-2489-4e92-8b18-18643b776bb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69c3381e-cb4d-4125-b719-f76b579c087f",
              "parent_uuid": "6a22ea19-8413-4cdd-a0d8-d3b77eb79ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f38205af-365f-4b45-94f9-026f13237a27",
                  "parent_uuid": "69c3381e-cb4d-4125-b719-f76b579c087f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5e9804c-ebb1-4eef-9e9d-12b4bc514ab2",
              "parent_uuid": "6a22ea19-8413-4cdd-a0d8-d3b77eb79ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e92c03f4-3b2a-454d-963e-0b2ea3b28da9",
                  "parent_uuid": "c5e9804c-ebb1-4eef-9e9d-12b4bc514ab2",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "d04578fa-10f5-4b95-9aec-62edbf8e29f7",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a43fef5b-1dfa-4f51-96fd-646fdcf5ae08",
              "parent_uuid": "d04578fa-10f5-4b95-9aec-62edbf8e29f7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "acefc29e-f833-4283-97a3-66b4ff0b5a49",
              "parent_uuid": "d04578fa-10f5-4b95-9aec-62edbf8e29f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "52e62936-d28d-483a-a3eb-728bd54558f7",
              "parent_uuid": "d04578fa-10f5-4b95-9aec-62edbf8e29f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cbb5a19-7c64-47f7-9cfc-3989b9b982eb",
                  "parent_uuid": "52e62936-d28d-483a-a3eb-728bd54558f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ca5f6bc-c20a-4bbc-a8c5-3aa970a6dea0",
              "parent_uuid": "d04578fa-10f5-4b95-9aec-62edbf8e29f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47b894bb-4ccb-4705-bdd5-0e7edb0e2338",
                  "parent_uuid": "6ca5f6bc-c20a-4bbc-a8c5-3aa970a6dea0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06d73d87-9b68-46df-a3d5-4fa058ad21bf",
              "parent_uuid": "d04578fa-10f5-4b95-9aec-62edbf8e29f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccff33c3-bdb5-4724-9991-3c5779a539c6",
                  "parent_uuid": "06d73d87-9b68-46df-a3d5-4fa058ad21bf",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "e2421158-3a86-49ed-8d36-4423a855730a",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1bdc421-f7af-495f-930f-3352865d2167",
              "parent_uuid": "e2421158-3a86-49ed-8d36-4423a855730a",
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
                  "10"
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
          "uuid": "43a29d81-2748-4e19-b486-2cbccc7d52f2",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "786ee29e-32ca-4209-a4ca-7ee6fe559089",
              "parent_uuid": "43a29d81-2748-4e19-b486-2cbccc7d52f2",
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
                  "10"
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
          "uuid": "ce4d6499-b376-4731-a66b-45995e91225e",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "338a8787-312f-4654-adbb-6ae71826a741",
              "parent_uuid": "ce4d6499-b376-4731-a66b-45995e91225e",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "1cf21e21-4915-4cb3-af64-2d6f2cc35f5b",
                  "parent_uuid": "338a8787-312f-4654-adbb-6ae71826a741",
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
          "uuid": "399e8ab5-30d6-4d5c-a617-3a06bef553d0",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8a85f88-b57e-4a86-a577-eaccd830821a",
              "parent_uuid": "399e8ab5-30d6-4d5c-a617-3a06bef553d0",
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
                  "10"
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
          "uuid": "3a23cbba-554a-4d09-a6d1-6b7314ba497e",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "42155eaf-74d3-409d-af02-2e5ffb8db2f0",
              "parent_uuid": "3a23cbba-554a-4d09-a6d1-6b7314ba497e",
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
                  "10"
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
          "uuid": "831e75d8-4fb7-402e-a304-6a0fac272f50",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "944f487d-a6f0-4b3d-8105-c500d5e8ea49",
              "parent_uuid": "831e75d8-4fb7-402e-a304-6a0fac272f50",
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
              "uuid": "5d5978e8-245e-471b-b2bb-6ea00dd166bd",
              "parent_uuid": "831e75d8-4fb7-402e-a304-6a0fac272f50",
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
              "uuid": "7e3c1e0f-2dcf-4705-a7d9-c2e7be5eee8e",
              "parent_uuid": "831e75d8-4fb7-402e-a304-6a0fac272f50",
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
              "uuid": "5360316d-decb-46a3-9e74-ba94b330ed16",
              "parent_uuid": "831e75d8-4fb7-402e-a304-6a0fac272f50",
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
            }
          ],
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "fc33a97f-e19e-477a-81aa-d251cc33fc52",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57c4e9c7-c528-4f31-9faf-bbad22cda506",
              "parent_uuid": "fc33a97f-e19e-477a-81aa-d251cc33fc52",
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
              "uuid": "e48e444f-e88a-4558-b63a-5ccd5613c551",
              "parent_uuid": "fc33a97f-e19e-477a-81aa-d251cc33fc52",
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
              "uuid": "6240fde5-d8f3-4ca2-a49e-4edb8638979c",
              "parent_uuid": "fc33a97f-e19e-477a-81aa-d251cc33fc52",
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
              "uuid": "cce97d65-3a47-4b2d-82de-83322d6ea49b",
              "parent_uuid": "fc33a97f-e19e-477a-81aa-d251cc33fc52",
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
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "675ec51f-9cf3-4c24-91b0-0808982cc00b",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4b08518-aa40-45a6-99c4-c6cc4af64d3c",
              "parent_uuid": "675ec51f-9cf3-4c24-91b0-0808982cc00b",
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
              "uuid": "182ff1c6-1b39-4171-b2f3-20c11833c35d",
              "parent_uuid": "675ec51f-9cf3-4c24-91b0-0808982cc00b",
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
              "uuid": "bd1eca4f-0140-4696-b37d-2e95ff8b56cf",
              "parent_uuid": "675ec51f-9cf3-4c24-91b0-0808982cc00b",
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
              "uuid": "c8e96836-760e-4f94-8f39-174f6a81f577",
              "parent_uuid": "675ec51f-9cf3-4c24-91b0-0808982cc00b",
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
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "127d09a8-cd82-4f98-be9e-e3cd71fd7013",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91cf64e4-d1c2-4b81-92b9-7887def9a7d9",
              "parent_uuid": "127d09a8-cd82-4f98-be9e-e3cd71fd7013",
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
              "uuid": "0307ff52-88ac-4f43-8815-d078e48b9e41",
              "parent_uuid": "127d09a8-cd82-4f98-be9e-e3cd71fd7013",
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
              "uuid": "aa1e6d4e-85d6-44e0-97fe-7ad4b63a57e4",
              "parent_uuid": "127d09a8-cd82-4f98-be9e-e3cd71fd7013",
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
              "uuid": "99efd7c2-5217-4bea-9519-88fb2a41a81c",
              "parent_uuid": "127d09a8-cd82-4f98-be9e-e3cd71fd7013",
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
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "ec634922-bc37-4c06-9d81-52d2dd19259d",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "237fbf92-4de4-4633-a81a-b6a1394c7a7c",
              "parent_uuid": "ec634922-bc37-4c06-9d81-52d2dd19259d",
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
              "uuid": "46514d85-0928-48ac-9eb8-bcc8386df07b",
              "parent_uuid": "ec634922-bc37-4c06-9d81-52d2dd19259d",
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
              "uuid": "bcbb61f9-5984-48e7-8446-eb4b313c5262",
              "parent_uuid": "ec634922-bc37-4c06-9d81-52d2dd19259d",
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
              "uuid": "74082714-1bc4-4c24-89c9-59e3d63828f7",
              "parent_uuid": "ec634922-bc37-4c06-9d81-52d2dd19259d",
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
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "65491ca6-5417-420a-91c2-93caf8c96aaa",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04f78123-9aaf-4c96-a945-c77c4910d0da",
              "parent_uuid": "65491ca6-5417-420a-91c2-93caf8c96aaa",
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
              "uuid": "434ed32f-6821-4c25-9c97-a17377039610",
              "parent_uuid": "65491ca6-5417-420a-91c2-93caf8c96aaa",
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
              "uuid": "677f3ade-e110-49d2-9cb0-2518fdaf1bba",
              "parent_uuid": "65491ca6-5417-420a-91c2-93caf8c96aaa",
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
              "uuid": "42b07463-fef7-47cf-ad5d-3afc8d248da7",
              "parent_uuid": "65491ca6-5417-420a-91c2-93caf8c96aaa",
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
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "1c2043c6-0519-4edb-97ed-1086cddcb001",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3026e726-393a-47df-b202-338192c7c5ee",
              "parent_uuid": "1c2043c6-0519-4edb-97ed-1086cddcb001",
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
              "uuid": "e3dec03a-096f-4574-a34f-5901666aca3e",
              "parent_uuid": "1c2043c6-0519-4edb-97ed-1086cddcb001",
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
              "uuid": "5d64554e-31aa-4cab-aa04-15726861def1",
              "parent_uuid": "1c2043c6-0519-4edb-97ed-1086cddcb001",
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
              "uuid": "2d2afbe0-660e-432e-969c-e4065b548d62",
              "parent_uuid": "1c2043c6-0519-4edb-97ed-1086cddcb001",
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
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "7bd55db1-fb6d-4600-83de-6efe6eec9a42",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "767f497f-2af2-4b85-9c79-a0ff2469e137",
              "parent_uuid": "7bd55db1-fb6d-4600-83de-6efe6eec9a42",
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
              "uuid": "4ac190b4-ede4-4db8-90e6-f45df8a30cb4",
              "parent_uuid": "7bd55db1-fb6d-4600-83de-6efe6eec9a42",
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
              "uuid": "03691d13-4225-46ca-8f97-997492053a0b",
              "parent_uuid": "7bd55db1-fb6d-4600-83de-6efe6eec9a42",
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
              "uuid": "146dd273-88c2-4baf-b350-0b38c6c0cee5",
              "parent_uuid": "7bd55db1-fb6d-4600-83de-6efe6eec9a42",
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
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "6ed8f6ca-4957-41e5-82f7-de9cfa185f61",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "afe25e80-1c8d-4bcd-ab57-b989759d9f71",
              "parent_uuid": "6ed8f6ca-4957-41e5-82f7-de9cfa185f61",
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
              "uuid": "4bc50ee9-4d2f-41c3-a78b-3c066ac6f38b",
              "parent_uuid": "6ed8f6ca-4957-41e5-82f7-de9cfa185f61",
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
              "uuid": "d1ed280b-8c6e-4343-a087-e3635af0b180",
              "parent_uuid": "6ed8f6ca-4957-41e5-82f7-de9cfa185f61",
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
              "uuid": "55640635-c6fe-4cba-9021-76da4a281d17",
              "parent_uuid": "6ed8f6ca-4957-41e5-82f7-de9cfa185f61",
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
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "1ebece90-df43-45c6-91f3-258480ff963e",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6210cc24-22dc-415f-9de2-801eb42c57b8",
              "parent_uuid": "1ebece90-df43-45c6-91f3-258480ff963e",
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
                  "10"
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
          "uuid": "03c1a569-d6f9-4459-8a57-fb3127bd52b5",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fba9b81-a6ba-49a3-a180-67715ed0578a",
              "parent_uuid": "03c1a569-d6f9-4459-8a57-fb3127bd52b5",
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
                  "10"
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
          "uuid": "21a17f65-2e21-485c-b2bc-a7f9672a9e24",
          "parent_uuid": "d6e83bf9-0d5d-4c39-896e-81a5087892f4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2a200c8-13b6-4e25-a28d-219ff95656d0",
              "parent_uuid": "21a17f65-2e21-485c-b2bc-a7f9672a9e24",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "b63051a4-f6a5-49cb-9cbc-aad46e5c74f4",
                  "parent_uuid": "d2a200c8-13b6-4e25-a28d-219ff95656d0",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
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

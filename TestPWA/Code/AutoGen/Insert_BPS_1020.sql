
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
  "uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "d957b8bf-9afd-46d4-bf16-a6609b5440e4",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "be520a36-4a46-4fb9-a35a-63ff84e65ace",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "9aafca1e-bdaf-46ae-9028-500bf00ccad4",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "4abe1106-c7f2-438e-abe8-c2a959db1a75",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "ba61f3cb-97fb-447e-b1b4-3ce389a5724e",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "9d875c31-2152-4577-8719-2cd6acc89664",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "a5296a55-7ed6-4689-b934-30270a33c5ce",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
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
      "uuid": "1886340d-2094-47f9-a049-d7891fc75474",
      "parent_uuid": "63e45482-5e7b-446c-85bf-d0b182a9a2f0",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "96bfe658-c816-4860-bacf-abcf5dd72ac7",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "5ecf1bff-8b6f-4ed1-a0a6-4a683f153c4c",
              "parent_uuid": "96bfe658-c816-4860-bacf-abcf5dd72ac7",
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
              "uuid": "4a1a926c-24db-43ff-9ce7-1a55e1dc96ea",
              "parent_uuid": "96bfe658-c816-4860-bacf-abcf5dd72ac7",
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
              "uuid": "1e964e0c-dd7c-48a9-b220-05c14871cbd4",
              "parent_uuid": "96bfe658-c816-4860-bacf-abcf5dd72ac7",
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
              "uuid": "e316b5cc-3b79-47da-ac42-c1a1580cdad2",
              "parent_uuid": "96bfe658-c816-4860-bacf-abcf5dd72ac7",
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
          "uuid": "2f14936f-6424-494e-950c-fa1a87244574",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "a3b5c96e-760f-43ab-b921-02f6190aee6b",
              "parent_uuid": "2f14936f-6424-494e-950c-fa1a87244574",
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
              "uuid": "83b7f88a-8e1d-48d9-8dad-242dd5a03323",
              "parent_uuid": "2f14936f-6424-494e-950c-fa1a87244574",
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
              "uuid": "61fd99d7-00ef-4cfa-8819-a1687fe1a756",
              "parent_uuid": "2f14936f-6424-494e-950c-fa1a87244574",
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
              "uuid": "b6efaa34-45df-468f-a5a0-8f1b13e8c8fd",
              "parent_uuid": "2f14936f-6424-494e-950c-fa1a87244574",
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
          "uuid": "709da54f-2a8b-47bc-90f8-fa552c685ef4",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "b241788b-c275-494f-a625-86fa0988d521",
              "parent_uuid": "709da54f-2a8b-47bc-90f8-fa552c685ef4",
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
              "uuid": "fe8f746c-5f85-4655-88f7-10830674d3b2",
              "parent_uuid": "709da54f-2a8b-47bc-90f8-fa552c685ef4",
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
              "uuid": "7358bb96-6fa8-4c3a-9cf4-fe07b39bb4ee",
              "parent_uuid": "709da54f-2a8b-47bc-90f8-fa552c685ef4",
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
              "uuid": "963f13db-a14f-4f5b-b4ac-4df39a19b7d6",
              "parent_uuid": "709da54f-2a8b-47bc-90f8-fa552c685ef4",
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
          "uuid": "fd18c184-a345-4d95-a1ed-cc4b69dde653",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26e5b697-bf6c-4e33-8c1e-aaf5090280b4",
              "parent_uuid": "fd18c184-a345-4d95-a1ed-cc4b69dde653",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a3f57b46-92b2-424a-bd5c-e8527b58bbda",
              "parent_uuid": "fd18c184-a345-4d95-a1ed-cc4b69dde653",
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
              "uuid": "eb682b60-e318-46bb-985e-3697f8ad97d5",
              "parent_uuid": "fd18c184-a345-4d95-a1ed-cc4b69dde653",
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
              "uuid": "532773fd-a43c-427f-91aa-51e84d6783fe",
              "parent_uuid": "fd18c184-a345-4d95-a1ed-cc4b69dde653",
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
              "uuid": "2682d122-3123-4ab1-86e1-d2f689f8a3c4",
              "parent_uuid": "fd18c184-a345-4d95-a1ed-cc4b69dde653",
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
              "uuid": "fd854d5d-abb4-4fb4-970f-5fe25fef8f31",
              "parent_uuid": "fd18c184-a345-4d95-a1ed-cc4b69dde653",
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
          "uuid": "9d6104fe-9609-497f-bb89-bb329906b1de",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "95844223-9869-4f11-ab6d-500ac3708cd5",
              "parent_uuid": "9d6104fe-9609-497f-bb89-bb329906b1de",
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
          "uuid": "809a223d-2385-4a86-928d-8ebb988973eb",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fdde11e-8ded-4353-b9ea-5c2e3370bf92",
              "parent_uuid": "809a223d-2385-4a86-928d-8ebb988973eb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dc171882-1fb6-46ed-83f6-3405c1764157",
              "parent_uuid": "809a223d-2385-4a86-928d-8ebb988973eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f6dae1b7-9f01-4d85-a4e2-668759ee0f7c",
              "parent_uuid": "809a223d-2385-4a86-928d-8ebb988973eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "d89587df-03b3-484c-abdd-9cf95956a3f6",
                  "parent_uuid": "f6dae1b7-9f01-4d85-a4e2-668759ee0f7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57ddd469-a97a-467b-aad0-fd5d05728efc",
              "parent_uuid": "809a223d-2385-4a86-928d-8ebb988973eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "8a5c3548-f31e-4f0c-a00b-9bbd06583bf5",
                  "parent_uuid": "57ddd469-a97a-467b-aad0-fd5d05728efc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8140b6b1-bcc8-4e19-94a8-558b0f150e47",
              "parent_uuid": "809a223d-2385-4a86-928d-8ebb988973eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c0fdb35d-a8ce-44dd-a9d3-5d05d4e2a803",
                  "parent_uuid": "8140b6b1-bcc8-4e19-94a8-558b0f150e47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "242c028f-c97d-4340-8665-189df23bb372",
              "parent_uuid": "809a223d-2385-4a86-928d-8ebb988973eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "48b84278-5e85-46a3-9033-ec444ef486f0",
                  "parent_uuid": "242c028f-c97d-4340-8665-189df23bb372",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "04d57d0b-69f9-42f6-809b-89222c0e20cf",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b183ead-e58d-427b-94bd-184b09c471a2",
              "parent_uuid": "04d57d0b-69f9-42f6-809b-89222c0e20cf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d53a0b1c-a790-454c-8f77-24b5992b12c0",
              "parent_uuid": "04d57d0b-69f9-42f6-809b-89222c0e20cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "44ff2d1b-fdd6-4552-a2de-18c2768ca555",
              "parent_uuid": "04d57d0b-69f9-42f6-809b-89222c0e20cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "d3bc64b0-516f-4ebb-8c3a-6538f9e846d1",
                  "parent_uuid": "44ff2d1b-fdd6-4552-a2de-18c2768ca555",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55bd5ebe-d145-4f54-bdf7-17a8b0c428cf",
              "parent_uuid": "04d57d0b-69f9-42f6-809b-89222c0e20cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3e731144-b25c-4095-ba13-13d5f30d59f1",
                  "parent_uuid": "55bd5ebe-d145-4f54-bdf7-17a8b0c428cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4173cc4-ce32-4dfd-aad4-791da8fc6cd2",
              "parent_uuid": "04d57d0b-69f9-42f6-809b-89222c0e20cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cc248249-ca6b-4f2a-90f9-2ff13991d66b",
                  "parent_uuid": "d4173cc4-ce32-4dfd-aad4-791da8fc6cd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b51405e-427a-4281-a4d1-bdc3f55ca35c",
              "parent_uuid": "04d57d0b-69f9-42f6-809b-89222c0e20cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "f7c4149a-f340-4221-9f27-2d307863885b",
                  "parent_uuid": "4b51405e-427a-4281-a4d1-bdc3f55ca35c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eea23ee7-eae2-4983-8a47-88e320560967",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b43e9c83-deb4-42eb-8d3e-45ec6dfcb412",
              "parent_uuid": "eea23ee7-eae2-4983-8a47-88e320560967",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c3c43430-31e3-494b-8d2f-c1317933ab4e",
              "parent_uuid": "eea23ee7-eae2-4983-8a47-88e320560967",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "99647e73-6e0a-4306-afd9-bb7c1e11efa9",
              "parent_uuid": "eea23ee7-eae2-4983-8a47-88e320560967",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4155cd43-eb6c-48b4-9cfd-ef9e1d5e2564",
                  "parent_uuid": "99647e73-6e0a-4306-afd9-bb7c1e11efa9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61e65a22-9529-476c-97a4-7b45b17d9452",
              "parent_uuid": "eea23ee7-eae2-4983-8a47-88e320560967",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3512771e-c723-4f0b-b287-6ea654f8c943",
                  "parent_uuid": "61e65a22-9529-476c-97a4-7b45b17d9452",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b553400d-fa1f-4157-b61f-cd40345aff4d",
              "parent_uuid": "eea23ee7-eae2-4983-8a47-88e320560967",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1068ad8c-187b-45f4-9eef-bfd330028dea",
                  "parent_uuid": "b553400d-fa1f-4157-b61f-cd40345aff4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6d1cc51-ce5d-4d28-af16-157fba0c348d",
              "parent_uuid": "eea23ee7-eae2-4983-8a47-88e320560967",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40502b66-a8cd-448a-b40a-77cf6025470f",
                  "parent_uuid": "f6d1cc51-ce5d-4d28-af16-157fba0c348d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3748b26f-05e9-4a8b-a066-f3d2444b6383",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "83d5a252-efc2-4956-a88f-7792e3905090",
              "parent_uuid": "3748b26f-05e9-4a8b-a066-f3d2444b6383",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b85ec637-84a2-4d0f-a22f-0686177b885f",
              "parent_uuid": "3748b26f-05e9-4a8b-a066-f3d2444b6383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b6558c06-1c20-41cd-9b58-ea5272fe9871",
              "parent_uuid": "3748b26f-05e9-4a8b-a066-f3d2444b6383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea4d064a-0923-4c07-adf6-580b4c2ed570",
                  "parent_uuid": "b6558c06-1c20-41cd-9b58-ea5272fe9871",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7fb71b85-4b8e-4fc4-ae80-3c8a484a0b3e",
              "parent_uuid": "3748b26f-05e9-4a8b-a066-f3d2444b6383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6ab5acb-7a12-45ae-a42f-4ca6cf45069b",
                  "parent_uuid": "7fb71b85-4b8e-4fc4-ae80-3c8a484a0b3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "495a7191-b6fc-4f7d-a45a-88d724a90655",
              "parent_uuid": "3748b26f-05e9-4a8b-a066-f3d2444b6383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "323681e7-6a85-4e4b-ace9-aef0324c6727",
                  "parent_uuid": "495a7191-b6fc-4f7d-a45a-88d724a90655",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90c31bc1-b571-4fed-a644-4e79db68a11d",
              "parent_uuid": "3748b26f-05e9-4a8b-a066-f3d2444b6383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6eb6b6c-c40e-4f24-8d29-9fefa0301bc6",
                  "parent_uuid": "90c31bc1-b571-4fed-a644-4e79db68a11d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "228dc189-81ba-463a-8e99-8c6af7b22d84",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "402dd740-c943-4efc-b64b-9f4f1dc9a1ec",
              "parent_uuid": "228dc189-81ba-463a-8e99-8c6af7b22d84",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "993c2bec-48a0-4ddb-8e27-e04733abbe71",
              "parent_uuid": "228dc189-81ba-463a-8e99-8c6af7b22d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d41adaff-0665-43c7-9023-1620fe4bf14f",
              "parent_uuid": "228dc189-81ba-463a-8e99-8c6af7b22d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "684ac173-655f-4cf6-811f-517726aea55a",
                  "parent_uuid": "d41adaff-0665-43c7-9023-1620fe4bf14f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f700549-c256-47e0-9d46-d111dc225b68",
              "parent_uuid": "228dc189-81ba-463a-8e99-8c6af7b22d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa38f922-5b69-4931-8114-c96a5a39da30",
                  "parent_uuid": "0f700549-c256-47e0-9d46-d111dc225b68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3de3b819-1511-4e96-8c66-e6eb43e5b350",
              "parent_uuid": "228dc189-81ba-463a-8e99-8c6af7b22d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f9398ea-d005-4de7-ad2e-eee93bbf61c4",
                  "parent_uuid": "3de3b819-1511-4e96-8c66-e6eb43e5b350",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64ded7ac-37ab-43d2-8d9f-b5e558b3840d",
              "parent_uuid": "228dc189-81ba-463a-8e99-8c6af7b22d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0713d97-60de-4637-bce1-4abc4ace032c",
                  "parent_uuid": "64ded7ac-37ab-43d2-8d9f-b5e558b3840d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0ff61a37-c149-47e8-b0f3-57a0814eba96",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "939c320c-618c-41b4-bfa7-466337e948e8",
              "parent_uuid": "0ff61a37-c149-47e8-b0f3-57a0814eba96",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ac4f182f-2cd1-406b-8557-ad703f97e7dc",
              "parent_uuid": "0ff61a37-c149-47e8-b0f3-57a0814eba96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b564fec8-2ab5-46ab-843f-a286f669aa8c",
              "parent_uuid": "0ff61a37-c149-47e8-b0f3-57a0814eba96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee7661bb-b9c1-4003-850c-de7f54aabefd",
                  "parent_uuid": "b564fec8-2ab5-46ab-843f-a286f669aa8c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d0c99ff-ca2d-4d7f-97e1-7a7bf02fddf4",
              "parent_uuid": "0ff61a37-c149-47e8-b0f3-57a0814eba96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bdd482d7-44d5-48e6-8ecb-5be71c06fa35",
                  "parent_uuid": "1d0c99ff-ca2d-4d7f-97e1-7a7bf02fddf4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bff54bfe-d22b-43c8-b839-ae2fe6e9c51d",
              "parent_uuid": "0ff61a37-c149-47e8-b0f3-57a0814eba96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e40f7ab4-1dcd-4f0b-af17-f99aaebba47b",
                  "parent_uuid": "bff54bfe-d22b-43c8-b839-ae2fe6e9c51d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16cad230-0f5b-41db-a5ed-2295ac9d8182",
              "parent_uuid": "0ff61a37-c149-47e8-b0f3-57a0814eba96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f310e45-be6f-4c0d-ad05-f5493389c917",
                  "parent_uuid": "16cad230-0f5b-41db-a5ed-2295ac9d8182",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "64b1e624-90df-4ac1-9170-ae476d4339be",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "173eaebf-c260-442d-aee1-2cb936396fab",
              "parent_uuid": "64b1e624-90df-4ac1-9170-ae476d4339be",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d85bffaf-9085-4744-94fe-35f969dc2aad",
              "parent_uuid": "64b1e624-90df-4ac1-9170-ae476d4339be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "01bbf8ff-4046-4268-8337-6748c84b2c08",
              "parent_uuid": "64b1e624-90df-4ac1-9170-ae476d4339be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1aefc546-7bec-4abd-aeb8-813ef3ac1d6c",
                  "parent_uuid": "01bbf8ff-4046-4268-8337-6748c84b2c08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97c86a91-67e9-462d-82fc-82ac181bd48b",
              "parent_uuid": "64b1e624-90df-4ac1-9170-ae476d4339be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0dc06f4-4b3d-4d26-a6a1-b8005e7bbbba",
                  "parent_uuid": "97c86a91-67e9-462d-82fc-82ac181bd48b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93a954e1-098d-4c30-9fc4-5d0d3038587d",
              "parent_uuid": "64b1e624-90df-4ac1-9170-ae476d4339be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2eac6a1a-c53e-4c1b-8c35-15b7aec04aee",
                  "parent_uuid": "93a954e1-098d-4c30-9fc4-5d0d3038587d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56f85c25-12fc-47b4-96c8-9821e72d0c4e",
              "parent_uuid": "64b1e624-90df-4ac1-9170-ae476d4339be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37246fea-6d30-4d39-a7c8-4ebbf796f7a9",
                  "parent_uuid": "56f85c25-12fc-47b4-96c8-9821e72d0c4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d0803e7-ed1e-47f7-a7d6-cba7d77fb937",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9d99786d-237d-4279-b6cb-7fa73db71ebf",
              "parent_uuid": "9d0803e7-ed1e-47f7-a7d6-cba7d77fb937",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b2c8fa3d-b1e9-437c-9a71-7907acbe659b",
              "parent_uuid": "9d0803e7-ed1e-47f7-a7d6-cba7d77fb937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d8798ecf-192e-491c-8a3f-738e3f1eaa0a",
              "parent_uuid": "9d0803e7-ed1e-47f7-a7d6-cba7d77fb937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06329d92-cb21-4910-a070-1898866e92b6",
                  "parent_uuid": "d8798ecf-192e-491c-8a3f-738e3f1eaa0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22a5160e-0a3a-4a8f-9c45-fd219d959fa4",
              "parent_uuid": "9d0803e7-ed1e-47f7-a7d6-cba7d77fb937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ba5a5eb-bbb7-473a-8fcf-1f39ea8fcac7",
                  "parent_uuid": "22a5160e-0a3a-4a8f-9c45-fd219d959fa4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7a4cda8-afda-468e-8da7-46fb0cf13932",
              "parent_uuid": "9d0803e7-ed1e-47f7-a7d6-cba7d77fb937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8223eed1-6494-43c1-a64b-a04b08cd431c",
                  "parent_uuid": "d7a4cda8-afda-468e-8da7-46fb0cf13932",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0a0654b-f68d-4885-90cf-baaee1ec42bf",
              "parent_uuid": "9d0803e7-ed1e-47f7-a7d6-cba7d77fb937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "928d13ac-234b-4e82-a4d5-355eba2f18e4",
                  "parent_uuid": "d0a0654b-f68d-4885-90cf-baaee1ec42bf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "baadb818-775f-465b-a561-eb47c67e6738",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da97b9d0-b869-49a7-8816-9f5ca01c9811",
              "parent_uuid": "baadb818-775f-465b-a561-eb47c67e6738",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1de3eb86-919b-4f79-b9ee-9cb7d6c4a0e8",
              "parent_uuid": "baadb818-775f-465b-a561-eb47c67e6738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "a6edab82-e02e-4d86-bc34-625dc08abdc6",
              "parent_uuid": "baadb818-775f-465b-a561-eb47c67e6738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95c5095f-6007-439a-9029-862b3070b7dc",
                  "parent_uuid": "a6edab82-e02e-4d86-bc34-625dc08abdc6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70e3f4aa-3d74-453a-b849-97c3657e1dd7",
              "parent_uuid": "baadb818-775f-465b-a561-eb47c67e6738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa499765-b14d-40bd-96b9-5655942a26d8",
                  "parent_uuid": "70e3f4aa-3d74-453a-b849-97c3657e1dd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8936d304-3fed-4519-8025-d8b9b34c41c9",
              "parent_uuid": "baadb818-775f-465b-a561-eb47c67e6738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f85fa3ae-897a-48d9-b24a-63f83a73de66",
                  "parent_uuid": "8936d304-3fed-4519-8025-d8b9b34c41c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8bcc5879-7951-45d4-b4be-28f63e020a91",
              "parent_uuid": "baadb818-775f-465b-a561-eb47c67e6738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14359c55-6c0a-45c1-b90a-248b7059e9c6",
                  "parent_uuid": "8bcc5879-7951-45d4-b4be-28f63e020a91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c4aedb2-043a-443e-a4e2-da1d26baeaac",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51e6a148-b92e-4902-8a7f-28da4b3a6964",
              "parent_uuid": "0c4aedb2-043a-443e-a4e2-da1d26baeaac",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e61f3bd3-e50d-45af-8682-3aca3cecf23d",
              "parent_uuid": "0c4aedb2-043a-443e-a4e2-da1d26baeaac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "86ca755e-591d-4ec9-94be-75bd3db83a2f",
              "parent_uuid": "0c4aedb2-043a-443e-a4e2-da1d26baeaac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ff91c3f-66a5-4749-b5fd-eae102f64378",
                  "parent_uuid": "86ca755e-591d-4ec9-94be-75bd3db83a2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9565ce2c-3521-4d9d-a309-079b8fff7741",
              "parent_uuid": "0c4aedb2-043a-443e-a4e2-da1d26baeaac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01ca2db5-5f4e-40c4-b69e-624a05604de4",
                  "parent_uuid": "9565ce2c-3521-4d9d-a309-079b8fff7741",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd72090e-07f4-42ee-8348-8432f57ff15e",
              "parent_uuid": "0c4aedb2-043a-443e-a4e2-da1d26baeaac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15ecd350-07e9-4e19-b7d0-775d05b80aa4",
                  "parent_uuid": "fd72090e-07f4-42ee-8348-8432f57ff15e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9737c8b-95ba-4d99-99f9-93ed3efe9f7e",
              "parent_uuid": "0c4aedb2-043a-443e-a4e2-da1d26baeaac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e663b324-22fc-44d7-8a39-f3a41110e8f4",
                  "parent_uuid": "c9737c8b-95ba-4d99-99f9-93ed3efe9f7e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "56029c2c-8277-405c-8e09-376a6d60e7e4",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e632917-1263-4aee-b749-b3c517fa8174",
              "parent_uuid": "56029c2c-8277-405c-8e09-376a6d60e7e4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "54b31418-bc0f-4ae3-a3f9-1f74166fe01d",
              "parent_uuid": "56029c2c-8277-405c-8e09-376a6d60e7e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c99f8da3-cdaf-4b74-8f1f-56a5ad262d10",
              "parent_uuid": "56029c2c-8277-405c-8e09-376a6d60e7e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50efe412-11aa-4295-8104-ec3d2e59bf97",
                  "parent_uuid": "c99f8da3-cdaf-4b74-8f1f-56a5ad262d10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0151a6a9-1961-479f-aed0-7905a1594b82",
              "parent_uuid": "56029c2c-8277-405c-8e09-376a6d60e7e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "068d55b9-fee6-40c3-b1fa-8752f9c48b6a",
                  "parent_uuid": "0151a6a9-1961-479f-aed0-7905a1594b82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80154da5-f61e-4923-8ec3-f4a1f04e2ef3",
              "parent_uuid": "56029c2c-8277-405c-8e09-376a6d60e7e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e0e1d4b-a5d9-4f04-bc5c-f471e812ace7",
                  "parent_uuid": "80154da5-f61e-4923-8ec3-f4a1f04e2ef3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4b0c505-28a6-4780-baf4-a33b0662dfe4",
              "parent_uuid": "56029c2c-8277-405c-8e09-376a6d60e7e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6360536-0140-4f73-9556-83bfaecd255b",
                  "parent_uuid": "f4b0c505-28a6-4780-baf4-a33b0662dfe4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "59eecbb1-9277-43e8-aaf6-798117fdc8d7",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e26e73d1-acc2-41f6-a4d8-145989e45c80",
              "parent_uuid": "59eecbb1-9277-43e8-aaf6-798117fdc8d7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9309c99a-940b-47ad-a735-7fbcfe391c04",
              "parent_uuid": "59eecbb1-9277-43e8-aaf6-798117fdc8d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "26fc17dd-d87a-42bd-a3e6-e3d845d14adf",
              "parent_uuid": "59eecbb1-9277-43e8-aaf6-798117fdc8d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8f749fd-2bca-401c-ba82-bc95ab1fb2b7",
                  "parent_uuid": "26fc17dd-d87a-42bd-a3e6-e3d845d14adf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78f162e7-be49-46af-82ed-78a18ac6e227",
              "parent_uuid": "59eecbb1-9277-43e8-aaf6-798117fdc8d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "438ae554-4abf-4521-b7b4-9e5f4d1fb548",
                  "parent_uuid": "78f162e7-be49-46af-82ed-78a18ac6e227",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "088d0ca0-3f3a-4edd-a5f2-26f9c55c5fef",
              "parent_uuid": "59eecbb1-9277-43e8-aaf6-798117fdc8d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e4a3392-01f3-4554-a6e3-980d86888741",
                  "parent_uuid": "088d0ca0-3f3a-4edd-a5f2-26f9c55c5fef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bab0e15c-9959-4332-91df-042eaa680e91",
              "parent_uuid": "59eecbb1-9277-43e8-aaf6-798117fdc8d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19905676-ffc5-41b1-b008-ae1ea7be39fa",
                  "parent_uuid": "bab0e15c-9959-4332-91df-042eaa680e91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "40c0724e-1fb7-47ac-ba30-d7bf32def637",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "359d2ae2-c252-4e1f-9015-49689de2335f",
              "parent_uuid": "40c0724e-1fb7-47ac-ba30-d7bf32def637",
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
          "uuid": "2cf266d6-c6d5-467a-beed-326a8679d1a3",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b8ee425-0d0e-4080-9888-c4368a6a255d",
              "parent_uuid": "2cf266d6-c6d5-467a-beed-326a8679d1a3",
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
          "uuid": "8e708b29-4d15-46cf-ad46-555f815625b8",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e9fb7f3-140b-4e97-9379-2aaf8607e088",
              "parent_uuid": "8e708b29-4d15-46cf-ad46-555f815625b8",
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
                  "uuid": "3a864276-23b6-41ab-9498-1fa834165039",
                  "parent_uuid": "5e9fb7f3-140b-4e97-9379-2aaf8607e088",
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
          "uuid": "df877f96-22ea-4877-939a-5599ee712909",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ad081be-c27d-41d2-b571-7d9d842d4214",
              "parent_uuid": "df877f96-22ea-4877-939a-5599ee712909",
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
          "uuid": "1a33c159-f67a-4105-bc6a-528b601d07ea",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "b10ba978-dece-4168-894d-00df239dc12e",
              "parent_uuid": "1a33c159-f67a-4105-bc6a-528b601d07ea",
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
          "uuid": "f728cdaf-84d6-4ec9-a5b8-a436d499bd02",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9750d833-6120-4f54-9b52-59650e41c1dc",
              "parent_uuid": "f728cdaf-84d6-4ec9-a5b8-a436d499bd02",
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
              "uuid": "3aac351b-e6d8-4bed-a64c-5b1a6632eca7",
              "parent_uuid": "f728cdaf-84d6-4ec9-a5b8-a436d499bd02",
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
              "uuid": "a7c4a8f1-3eab-4715-8b34-4929e1db05aa",
              "parent_uuid": "f728cdaf-84d6-4ec9-a5b8-a436d499bd02",
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
              "uuid": "cf1b8ac0-602b-4b58-95e2-335cc776cbaa",
              "parent_uuid": "f728cdaf-84d6-4ec9-a5b8-a436d499bd02",
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
              "uuid": "038162ae-c022-46f5-9909-9800ceaf5f9b",
              "parent_uuid": "f728cdaf-84d6-4ec9-a5b8-a436d499bd02",
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
              "uuid": "6ff77297-ca8d-4457-960f-50af720f1c1d",
              "parent_uuid": "f728cdaf-84d6-4ec9-a5b8-a436d499bd02",
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
          "uuid": "7dbc2131-c188-4670-b492-ed71029390cf",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1dc57355-de67-498c-a33b-9d8eb933509b",
              "parent_uuid": "7dbc2131-c188-4670-b492-ed71029390cf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "956543e9-fdde-4d4a-a0b8-64fdbe345f37",
              "parent_uuid": "7dbc2131-c188-4670-b492-ed71029390cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "0d772726-ceaa-4e15-ac8a-5eb42c467181",
              "parent_uuid": "7dbc2131-c188-4670-b492-ed71029390cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61a28b9e-577c-4eaa-ac7d-125d8f32d635",
                  "parent_uuid": "0d772726-ceaa-4e15-ac8a-5eb42c467181",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c69156f3-019d-466d-996f-7fa48a6c0c22",
              "parent_uuid": "7dbc2131-c188-4670-b492-ed71029390cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9615512f-6936-4e4c-8f29-23b2af4b97fe",
                  "parent_uuid": "c69156f3-019d-466d-996f-7fa48a6c0c22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9648b7b8-a949-48ce-804a-f43acbc695d4",
              "parent_uuid": "7dbc2131-c188-4670-b492-ed71029390cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b46dc78-6043-4737-98eb-d38984c39f3b",
                  "parent_uuid": "9648b7b8-a949-48ce-804a-f43acbc695d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f953ad4d-dba6-4f38-84bb-211a94f98310",
              "parent_uuid": "7dbc2131-c188-4670-b492-ed71029390cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2bdc81e-5a20-4b04-98ac-d2afdd718025",
                  "parent_uuid": "f953ad4d-dba6-4f38-84bb-211a94f98310",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "02d7fb06-92e1-4fa5-aa6a-c7dc30ce8b59",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2be6e401-63df-4883-b96f-6a52e8a51dc7",
              "parent_uuid": "02d7fb06-92e1-4fa5-aa6a-c7dc30ce8b59",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c676109a-e7d3-4efe-86bf-8fed534b2a46",
              "parent_uuid": "02d7fb06-92e1-4fa5-aa6a-c7dc30ce8b59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "fce5a071-5975-422c-a9d2-924f7c3a40af",
              "parent_uuid": "02d7fb06-92e1-4fa5-aa6a-c7dc30ce8b59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1f0209f-6acb-4a69-ad41-9650c5c23bcc",
                  "parent_uuid": "fce5a071-5975-422c-a9d2-924f7c3a40af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92c14c46-fc3b-4d8e-9d32-19430ec639d7",
              "parent_uuid": "02d7fb06-92e1-4fa5-aa6a-c7dc30ce8b59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8bf9d45d-a270-41f2-a8d9-a0185388396a",
                  "parent_uuid": "92c14c46-fc3b-4d8e-9d32-19430ec639d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efdfe640-657f-412d-9e08-c1d0febc8e60",
              "parent_uuid": "02d7fb06-92e1-4fa5-aa6a-c7dc30ce8b59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67b4be9f-3daa-4c8f-a140-a5aa98fca17c",
                  "parent_uuid": "efdfe640-657f-412d-9e08-c1d0febc8e60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49061c19-9216-42a4-ac74-7528a2831230",
              "parent_uuid": "02d7fb06-92e1-4fa5-aa6a-c7dc30ce8b59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3072dc60-cc6c-4593-a498-48aa49089922",
                  "parent_uuid": "49061c19-9216-42a4-ac74-7528a2831230",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "deed1962-c97a-4b35-bd8c-28fd09239db9",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c558ee23-7f9d-48da-ad81-be69f84d5d1b",
              "parent_uuid": "deed1962-c97a-4b35-bd8c-28fd09239db9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "15a7bd38-40fb-4881-b56b-a51540611b1a",
              "parent_uuid": "deed1962-c97a-4b35-bd8c-28fd09239db9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "489a61f5-3242-43ef-b0b3-c8b087a4a8ab",
              "parent_uuid": "deed1962-c97a-4b35-bd8c-28fd09239db9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f28fbab-55ac-4852-b545-878a505a9aa7",
                  "parent_uuid": "489a61f5-3242-43ef-b0b3-c8b087a4a8ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22c3c7c5-a6ed-48ad-9411-1d43b3a8ec9e",
              "parent_uuid": "deed1962-c97a-4b35-bd8c-28fd09239db9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6501b08c-ff7b-4559-bd34-28b5e41b1777",
                  "parent_uuid": "22c3c7c5-a6ed-48ad-9411-1d43b3a8ec9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7034e269-9598-4f2a-ad4b-3a564d7297dc",
              "parent_uuid": "deed1962-c97a-4b35-bd8c-28fd09239db9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63258704-1e53-4ddf-8b46-77e1032b19d6",
                  "parent_uuid": "7034e269-9598-4f2a-ad4b-3a564d7297dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45b2aced-5d6e-4685-ae10-6106b4a85ba3",
              "parent_uuid": "deed1962-c97a-4b35-bd8c-28fd09239db9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "891527cf-61ce-4cc1-911c-76360d68f337",
                  "parent_uuid": "45b2aced-5d6e-4685-ae10-6106b4a85ba3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "56f5f45d-4bc1-4dd1-b86f-254f6d659a1a",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e6b060f-d7ba-43d9-ba7a-f9f7a8cf108a",
              "parent_uuid": "56f5f45d-4bc1-4dd1-b86f-254f6d659a1a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0f262572-d203-4fe1-9813-e6224db5acf6",
              "parent_uuid": "56f5f45d-4bc1-4dd1-b86f-254f6d659a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "e5e07323-4787-4559-a901-6bfdc1dab11a",
              "parent_uuid": "56f5f45d-4bc1-4dd1-b86f-254f6d659a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8483d074-4e51-4498-953b-56c16957db2a",
                  "parent_uuid": "e5e07323-4787-4559-a901-6bfdc1dab11a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6840e0c5-9952-4865-bf86-9257dd564806",
              "parent_uuid": "56f5f45d-4bc1-4dd1-b86f-254f6d659a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b6a4fbe-353e-4693-ad5c-cc3dd1854c77",
                  "parent_uuid": "6840e0c5-9952-4865-bf86-9257dd564806",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "651048b1-d4cb-4688-b77e-5f58043a01d4",
              "parent_uuid": "56f5f45d-4bc1-4dd1-b86f-254f6d659a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5aa7b010-fff9-4fc5-bef9-ea863b50cb69",
                  "parent_uuid": "651048b1-d4cb-4688-b77e-5f58043a01d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c76528bb-088f-459e-b9f4-e318b2bfd1dd",
              "parent_uuid": "56f5f45d-4bc1-4dd1-b86f-254f6d659a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9ada0a9-dd87-4845-bce7-48ad80a6b450",
                  "parent_uuid": "c76528bb-088f-459e-b9f4-e318b2bfd1dd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1e1c5f71-70ed-47ce-93c2-2ae98b9fe813",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a5662b5-f938-4f2d-a356-ee1d389a87cb",
              "parent_uuid": "1e1c5f71-70ed-47ce-93c2-2ae98b9fe813",
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
          "uuid": "f1623d1c-119b-4701-a3a3-d6e4a5587ad1",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7e26e56-ac98-403b-a6b7-d4d4dccfb91c",
              "parent_uuid": "f1623d1c-119b-4701-a3a3-d6e4a5587ad1",
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
          "uuid": "2f771279-a62f-4ac4-99d1-038ce19a5d88",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2302f27-4c8f-4a6c-b7d3-8310059365a0",
              "parent_uuid": "2f771279-a62f-4ac4-99d1-038ce19a5d88",
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
                  "uuid": "e882b309-ae3a-4185-bff4-9bd54c4820e2",
                  "parent_uuid": "f2302f27-4c8f-4a6c-b7d3-8310059365a0",
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
          "uuid": "9c6a22b7-4203-4d79-88ac-9e52fc607ee3",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a42bea12-269d-4b09-83cf-6058dc9ca948",
              "parent_uuid": "9c6a22b7-4203-4d79-88ac-9e52fc607ee3",
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
          "uuid": "012c091f-afdf-4383-8388-e126873b2e6b",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4af48ae5-da3a-4063-b445-a3c4bf96e66e",
              "parent_uuid": "012c091f-afdf-4383-8388-e126873b2e6b",
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
          "uuid": "5b102f67-8d67-4428-8181-33e31d615c4f",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c1b10f3c-004b-48ab-858d-8188078d64c9",
              "parent_uuid": "5b102f67-8d67-4428-8181-33e31d615c4f",
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
              "uuid": "db66f455-9469-433e-b1c4-45f704149d20",
              "parent_uuid": "5b102f67-8d67-4428-8181-33e31d615c4f",
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
              "uuid": "4b414659-a74d-4298-9b4c-487ba800d114",
              "parent_uuid": "5b102f67-8d67-4428-8181-33e31d615c4f",
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
              "uuid": "75e5c43f-51a2-49a5-b296-51e44dff47a6",
              "parent_uuid": "5b102f67-8d67-4428-8181-33e31d615c4f",
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
              "uuid": "1ba3e2fc-ff62-478a-b7a9-9e6b7a3a7000",
              "parent_uuid": "5b102f67-8d67-4428-8181-33e31d615c4f",
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
              "uuid": "20e01ec1-db3f-4219-9c4c-824db3e2f399",
              "parent_uuid": "5b102f67-8d67-4428-8181-33e31d615c4f",
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
          "uuid": "ce58301e-257d-42ec-bbf7-912b248a635e",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "666ac20b-dfa7-478d-8ad3-c2421e260cd8",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19c74b30-192b-4e7e-9e03-ec0a1695f05f",
              "parent_uuid": "666ac20b-dfa7-478d-8ad3-c2421e260cd8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e6335965-f062-4539-8d5e-11b4f4e9a8fc",
              "parent_uuid": "666ac20b-dfa7-478d-8ad3-c2421e260cd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "3fe2e9d5-4798-4c88-b941-00a17a820d6e",
              "parent_uuid": "666ac20b-dfa7-478d-8ad3-c2421e260cd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "188d1a0d-2738-42e6-a59e-9f5ec8609c47",
                  "parent_uuid": "3fe2e9d5-4798-4c88-b941-00a17a820d6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be12b75f-61e9-4b2a-b163-01885596251e",
              "parent_uuid": "666ac20b-dfa7-478d-8ad3-c2421e260cd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d25d2e28-d80a-42bc-a262-b42bc53420bf",
                  "parent_uuid": "be12b75f-61e9-4b2a-b163-01885596251e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2130eeb-b035-41f0-a8fc-5cda903feaf2",
              "parent_uuid": "666ac20b-dfa7-478d-8ad3-c2421e260cd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4429b4b4-efa6-41c2-96a3-f24bc2c8e321",
                  "parent_uuid": "d2130eeb-b035-41f0-a8fc-5cda903feaf2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "054bb46b-1759-4f9e-8a8f-4024a8aae4b2",
              "parent_uuid": "666ac20b-dfa7-478d-8ad3-c2421e260cd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0738edf5-b9a3-4078-86df-0994c9d41fcc",
                  "parent_uuid": "054bb46b-1759-4f9e-8a8f-4024a8aae4b2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c8d9ac11-d907-4f57-9822-a7c82964daed",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66951043-0254-4ceb-94d2-3b6f3748b8fc",
              "parent_uuid": "c8d9ac11-d907-4f57-9822-a7c82964daed",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5c09fa5b-ab31-4bd1-a884-f9a756d52c54",
              "parent_uuid": "c8d9ac11-d907-4f57-9822-a7c82964daed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "1dbb297f-d95d-4ef5-95a6-aba998512d61",
              "parent_uuid": "c8d9ac11-d907-4f57-9822-a7c82964daed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67cb8d0f-f4ee-460e-b241-7f8eb31697d4",
                  "parent_uuid": "1dbb297f-d95d-4ef5-95a6-aba998512d61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b53a778c-4c64-45ed-a213-7d13c166b2bd",
              "parent_uuid": "c8d9ac11-d907-4f57-9822-a7c82964daed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d08c703b-840e-4f87-b2e0-c9f27f66a24c",
                  "parent_uuid": "b53a778c-4c64-45ed-a213-7d13c166b2bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "612394b9-20bd-4571-ab2e-d9dc0974c2f6",
              "parent_uuid": "c8d9ac11-d907-4f57-9822-a7c82964daed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "287166e6-7608-4f85-8731-f6901b067eef",
                  "parent_uuid": "612394b9-20bd-4571-ab2e-d9dc0974c2f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5eab847c-bb14-416f-a5b7-2f2e8302298a",
              "parent_uuid": "c8d9ac11-d907-4f57-9822-a7c82964daed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e7e0742-51bd-4e72-9865-c73b891c4c77",
                  "parent_uuid": "5eab847c-bb14-416f-a5b7-2f2e8302298a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9f0350f7-2d26-40f0-b5b4-0b287bcdc787",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2bf906b-313e-439b-b4d0-083afaf125b2",
              "parent_uuid": "9f0350f7-2d26-40f0-b5b4-0b287bcdc787",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6978c6c1-4e85-4bb2-8e44-1117eea0f1ef",
              "parent_uuid": "9f0350f7-2d26-40f0-b5b4-0b287bcdc787",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "57a4da34-1cad-4401-9781-51dce3b38ede",
              "parent_uuid": "9f0350f7-2d26-40f0-b5b4-0b287bcdc787",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8cc3857-8289-49d9-b67b-c52cc8538623",
                  "parent_uuid": "57a4da34-1cad-4401-9781-51dce3b38ede",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed6cc9b9-13d4-4776-a579-29c7dd202b03",
              "parent_uuid": "9f0350f7-2d26-40f0-b5b4-0b287bcdc787",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d9697cc-943e-44dd-bd93-fde044756f5d",
                  "parent_uuid": "ed6cc9b9-13d4-4776-a579-29c7dd202b03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f46aca0d-35b3-45a0-aed5-a462e5ce633b",
              "parent_uuid": "9f0350f7-2d26-40f0-b5b4-0b287bcdc787",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7eed29e-5a8f-44b3-b6a3-8a2d0a2d614f",
                  "parent_uuid": "f46aca0d-35b3-45a0-aed5-a462e5ce633b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a0185e1-01ad-4b06-ab06-2e77eb2f671d",
              "parent_uuid": "9f0350f7-2d26-40f0-b5b4-0b287bcdc787",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3dc3aec-265f-41de-949f-504a68a93777",
                  "parent_uuid": "6a0185e1-01ad-4b06-ab06-2e77eb2f671d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b46c60c1-dc3f-4cf7-8c69-053cdd07978e",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f7a9dfc-5a97-4fe1-9493-7884eb569379",
              "parent_uuid": "b46c60c1-dc3f-4cf7-8c69-053cdd07978e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ac4040ac-b9eb-433a-9ca4-2466b3299d01",
              "parent_uuid": "b46c60c1-dc3f-4cf7-8c69-053cdd07978e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "537eb4d9-e334-45f8-bfee-8eb205d79433",
              "parent_uuid": "b46c60c1-dc3f-4cf7-8c69-053cdd07978e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35ee9288-237d-4f47-b47a-3ff84677042f",
                  "parent_uuid": "537eb4d9-e334-45f8-bfee-8eb205d79433",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "786b3ac6-c0b4-44a9-9c98-6058c7938473",
              "parent_uuid": "b46c60c1-dc3f-4cf7-8c69-053cdd07978e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e56e8c8b-4e22-4284-a583-1b55472f6435",
                  "parent_uuid": "786b3ac6-c0b4-44a9-9c98-6058c7938473",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be376a5d-0ffd-49a4-a9e6-e71635633866",
              "parent_uuid": "b46c60c1-dc3f-4cf7-8c69-053cdd07978e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b08bdf30-ca95-4bbc-a323-e25fd333944c",
                  "parent_uuid": "be376a5d-0ffd-49a4-a9e6-e71635633866",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a41628c9-3bea-4fb5-ba5f-19f3f4273c21",
              "parent_uuid": "b46c60c1-dc3f-4cf7-8c69-053cdd07978e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b12c24d-9805-409c-b4b4-553b0d7a75fd",
                  "parent_uuid": "a41628c9-3bea-4fb5-ba5f-19f3f4273c21",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d83801d-c0aa-4df8-855c-f4671c678b30",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60241fb3-d57f-4897-9a2b-94e231e4a6ce",
              "parent_uuid": "2d83801d-c0aa-4df8-855c-f4671c678b30",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0fdaedf4-b029-42f4-ae9c-95f4bac3e1f8",
              "parent_uuid": "2d83801d-c0aa-4df8-855c-f4671c678b30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b95c77e9-6638-430c-9378-e8d460322858",
              "parent_uuid": "2d83801d-c0aa-4df8-855c-f4671c678b30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc2dc6d2-85b2-41e0-8af3-f5e49e2b4005",
                  "parent_uuid": "b95c77e9-6638-430c-9378-e8d460322858",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24bcace3-527d-49ea-ac48-729584d8d43c",
              "parent_uuid": "2d83801d-c0aa-4df8-855c-f4671c678b30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f379f37d-209c-4a1b-b066-8ebe6fb1afd9",
                  "parent_uuid": "24bcace3-527d-49ea-ac48-729584d8d43c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f3acb51-32b1-43b2-944d-8e043f39c690",
              "parent_uuid": "2d83801d-c0aa-4df8-855c-f4671c678b30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb3bdf44-1528-45a9-90f8-31cef5b1df85",
                  "parent_uuid": "9f3acb51-32b1-43b2-944d-8e043f39c690",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6baab2d5-d18c-4e93-8794-6b1ba83955b4",
              "parent_uuid": "2d83801d-c0aa-4df8-855c-f4671c678b30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44228a1c-05c8-4d3a-a23e-47748b9d70c2",
                  "parent_uuid": "6baab2d5-d18c-4e93-8794-6b1ba83955b4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "382fdf43-3caf-43bd-8927-dc2a6445f9f1",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60e5d0e3-9052-48a8-9a39-6699b287bf35",
              "parent_uuid": "382fdf43-3caf-43bd-8927-dc2a6445f9f1",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9be97210-ff19-4b00-a013-329cae551c44",
              "parent_uuid": "382fdf43-3caf-43bd-8927-dc2a6445f9f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "231d09f6-397b-4992-aae6-29787492e4a9",
              "parent_uuid": "382fdf43-3caf-43bd-8927-dc2a6445f9f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cebd4b2-9f21-4e8b-950f-fd972f7549aa",
                  "parent_uuid": "231d09f6-397b-4992-aae6-29787492e4a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4614ffec-e2e8-45f1-8c59-b8ce40d75b0b",
              "parent_uuid": "382fdf43-3caf-43bd-8927-dc2a6445f9f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82864291-2707-467b-8352-5bb6c01d843d",
                  "parent_uuid": "4614ffec-e2e8-45f1-8c59-b8ce40d75b0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "228d254b-2420-49aa-bc72-72472fc346c4",
              "parent_uuid": "382fdf43-3caf-43bd-8927-dc2a6445f9f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8104a7bc-95c3-4ec2-9c26-72bb216e3e36",
                  "parent_uuid": "228d254b-2420-49aa-bc72-72472fc346c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e482c33-ba4c-4b6a-86b1-11a986058930",
              "parent_uuid": "382fdf43-3caf-43bd-8927-dc2a6445f9f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5845ab3-08db-463d-9627-ef1817d144b8",
                  "parent_uuid": "0e482c33-ba4c-4b6a-86b1-11a986058930",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c002bc76-8881-4e49-9b2a-806083bb847a",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32393337-7fc6-4a79-b225-c6d44ade0a75",
              "parent_uuid": "c002bc76-8881-4e49-9b2a-806083bb847a",
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
          "uuid": "333b4d6c-73d1-4371-b132-0d0d598a0659",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "916fd240-6725-4fe4-9527-d1f6ac45e0e9",
              "parent_uuid": "333b4d6c-73d1-4371-b132-0d0d598a0659",
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
          "uuid": "b88e0808-77f3-4269-b81b-38f926419320",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40d1ea55-71af-40a9-af7e-0706f40d5f42",
              "parent_uuid": "b88e0808-77f3-4269-b81b-38f926419320",
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
                  "uuid": "07e4c123-3ab2-4e5c-b302-cd5505689047",
                  "parent_uuid": "40d1ea55-71af-40a9-af7e-0706f40d5f42",
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
          "uuid": "aa9fa7ae-f2ad-4298-a11b-02fe20427491",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ddd8f05-519f-4d34-957e-34bba1fcf599",
              "parent_uuid": "aa9fa7ae-f2ad-4298-a11b-02fe20427491",
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
          "uuid": "f57b9372-ed5f-4b80-b398-279073c52089",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0f321934-b0d0-484c-abab-0eaaf236a0f4",
              "parent_uuid": "f57b9372-ed5f-4b80-b398-279073c52089",
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
          "uuid": "f3c71e95-d962-4df1-9b85-584040646ef6",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27966afc-97bd-4149-84ab-bdf027a2eec2",
              "parent_uuid": "f3c71e95-d962-4df1-9b85-584040646ef6",
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
              "uuid": "f65507f7-6f22-42c6-ac4c-14790bacabe5",
              "parent_uuid": "f3c71e95-d962-4df1-9b85-584040646ef6",
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
              "uuid": "4c80199d-0c64-420c-87b3-fe671e4cd26b",
              "parent_uuid": "f3c71e95-d962-4df1-9b85-584040646ef6",
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
              "uuid": "4b0f6d00-d3d1-40ce-85e0-80dbd9aac9c7",
              "parent_uuid": "f3c71e95-d962-4df1-9b85-584040646ef6",
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
              "uuid": "d3cbc703-8888-4354-889f-6202d8eb2a9e",
              "parent_uuid": "f3c71e95-d962-4df1-9b85-584040646ef6",
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
          "uuid": "c5a5a314-e516-4ded-872f-99c30f74bee9",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcaeaa3b-df91-4f2c-abc1-79606d515dbc",
              "parent_uuid": "c5a5a314-e516-4ded-872f-99c30f74bee9",
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
              "uuid": "3904e400-41b4-4fb4-8d3d-2596199aa101",
              "parent_uuid": "c5a5a314-e516-4ded-872f-99c30f74bee9",
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
              "uuid": "f7bd480d-7f93-4fcb-9378-f71d4c22b5d6",
              "parent_uuid": "c5a5a314-e516-4ded-872f-99c30f74bee9",
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
              "uuid": "a64a27cc-c56e-4bfa-b236-4a413d69ab9e",
              "parent_uuid": "c5a5a314-e516-4ded-872f-99c30f74bee9",
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
              "uuid": "dbf01f76-3b64-4fae-a9c7-e17dc60f57b6",
              "parent_uuid": "c5a5a314-e516-4ded-872f-99c30f74bee9",
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
          "uuid": "2bd15d16-94a6-4848-85fd-88c114019348",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ceb781d8-83b0-4f68-9a4c-a746c86b61f5",
              "parent_uuid": "2bd15d16-94a6-4848-85fd-88c114019348",
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
              "uuid": "a84eaeb6-529b-49dc-a69f-3b9d494a45d5",
              "parent_uuid": "2bd15d16-94a6-4848-85fd-88c114019348",
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
              "uuid": "9d6aa814-f38f-47eb-855a-cd0cc13f8f0c",
              "parent_uuid": "2bd15d16-94a6-4848-85fd-88c114019348",
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
              "uuid": "99ae6a9d-e816-4f73-8774-0e470fdd0313",
              "parent_uuid": "2bd15d16-94a6-4848-85fd-88c114019348",
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
              "uuid": "f59e3d07-76eb-47d5-a5dd-9f335d6e476e",
              "parent_uuid": "2bd15d16-94a6-4848-85fd-88c114019348",
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
          "uuid": "9ccb1cf1-f937-4526-ae62-6b5cab1ea33e",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efd0386d-ca37-4f12-ab0b-0ee2b90b208b",
              "parent_uuid": "9ccb1cf1-f937-4526-ae62-6b5cab1ea33e",
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
              "uuid": "69cb9c75-f135-4dcc-a88a-ca2c3ae05ba6",
              "parent_uuid": "9ccb1cf1-f937-4526-ae62-6b5cab1ea33e",
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
              "uuid": "9bad5151-1cdf-48ef-8bd6-77b893580185",
              "parent_uuid": "9ccb1cf1-f937-4526-ae62-6b5cab1ea33e",
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
              "uuid": "48792ec3-78d2-4ed6-bf3f-5b9ad6819efe",
              "parent_uuid": "9ccb1cf1-f937-4526-ae62-6b5cab1ea33e",
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
              "uuid": "5d6b4f84-7c48-4fcd-b567-2498810de3e1",
              "parent_uuid": "9ccb1cf1-f937-4526-ae62-6b5cab1ea33e",
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
          "uuid": "463957a5-e373-4c81-b8d0-2395d0d5cc4f",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c535e0eb-1136-4bb9-9a99-d246a7e4f15d",
              "parent_uuid": "463957a5-e373-4c81-b8d0-2395d0d5cc4f",
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
              "uuid": "dd3008c5-37c9-4cee-a83b-e88ccf2be8fd",
              "parent_uuid": "463957a5-e373-4c81-b8d0-2395d0d5cc4f",
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
              "uuid": "5f9af4b7-4d1f-4a04-8f9a-9ad40d2831c7",
              "parent_uuid": "463957a5-e373-4c81-b8d0-2395d0d5cc4f",
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
              "uuid": "6f88e04a-271d-49f9-813c-42602a1c087b",
              "parent_uuid": "463957a5-e373-4c81-b8d0-2395d0d5cc4f",
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
              "uuid": "0a8985f2-ad8c-40ae-90a7-18a44471ad7b",
              "parent_uuid": "463957a5-e373-4c81-b8d0-2395d0d5cc4f",
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
          "uuid": "c52113e6-4638-4889-8ecf-dc8fdc893ab4",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef7c5af9-5bdb-41d4-91b4-590a22bd9c00",
              "parent_uuid": "c52113e6-4638-4889-8ecf-dc8fdc893ab4",
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
              "uuid": "cab22014-353d-429b-a362-ea213e617703",
              "parent_uuid": "c52113e6-4638-4889-8ecf-dc8fdc893ab4",
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
              "uuid": "5435a91f-000b-46ec-93d1-d9fa7e68a92b",
              "parent_uuid": "c52113e6-4638-4889-8ecf-dc8fdc893ab4",
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
              "uuid": "063192ea-5f7e-43ef-a549-564de4d9c007",
              "parent_uuid": "c52113e6-4638-4889-8ecf-dc8fdc893ab4",
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
              "uuid": "5769f191-9682-40b8-aeac-193e19864f16",
              "parent_uuid": "c52113e6-4638-4889-8ecf-dc8fdc893ab4",
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
          "uuid": "a8d6b82c-dfd5-44e2-8ad6-ad2308ef3471",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be94990e-7822-40bc-accd-8f8e6a670395",
              "parent_uuid": "a8d6b82c-dfd5-44e2-8ad6-ad2308ef3471",
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
              "uuid": "ec4ca174-d964-4ccb-95d5-1b9d60c2fd97",
              "parent_uuid": "a8d6b82c-dfd5-44e2-8ad6-ad2308ef3471",
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
              "uuid": "298a10d9-f469-45fc-bcfb-ced726d5b105",
              "parent_uuid": "a8d6b82c-dfd5-44e2-8ad6-ad2308ef3471",
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
              "uuid": "e0e5c966-3739-4c76-87f8-3aa47d26bbc5",
              "parent_uuid": "a8d6b82c-dfd5-44e2-8ad6-ad2308ef3471",
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
              "uuid": "d94b6e16-9c22-4f1b-9c54-0711cc0a97d8",
              "parent_uuid": "a8d6b82c-dfd5-44e2-8ad6-ad2308ef3471",
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
          "uuid": "ff768b9c-a1b2-4802-a171-f7e4d55cd60d",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0253501e-3d95-4e41-9515-7c7d5378bbab",
              "parent_uuid": "ff768b9c-a1b2-4802-a171-f7e4d55cd60d",
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
              "uuid": "bf22585a-9bb3-4092-8cc6-cf05f2cba7c3",
              "parent_uuid": "ff768b9c-a1b2-4802-a171-f7e4d55cd60d",
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
              "uuid": "84430ce4-e747-4692-9785-e7b3645b297e",
              "parent_uuid": "ff768b9c-a1b2-4802-a171-f7e4d55cd60d",
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
              "uuid": "7b59c19a-4a85-4de2-9667-8db0bcde1ce0",
              "parent_uuid": "ff768b9c-a1b2-4802-a171-f7e4d55cd60d",
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
              "uuid": "00c840f4-2531-4dc6-8acb-6661ca2a74c4",
              "parent_uuid": "ff768b9c-a1b2-4802-a171-f7e4d55cd60d",
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
          "uuid": "f911be09-8cc6-49a6-bad3-4786b8fb7024",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbda6ca7-f93c-43fc-9b14-55543f32fba2",
              "parent_uuid": "f911be09-8cc6-49a6-bad3-4786b8fb7024",
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
              "uuid": "027d70ef-7ceb-44d0-aecf-2d11916f8935",
              "parent_uuid": "f911be09-8cc6-49a6-bad3-4786b8fb7024",
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
              "uuid": "6068db9f-1983-4020-9280-b7b4ea6426a7",
              "parent_uuid": "f911be09-8cc6-49a6-bad3-4786b8fb7024",
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
              "uuid": "3cd1aaf7-008b-4a12-904f-44b475d7afc3",
              "parent_uuid": "f911be09-8cc6-49a6-bad3-4786b8fb7024",
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
              "uuid": "3373e942-7427-4243-9138-fe38484c9d1c",
              "parent_uuid": "f911be09-8cc6-49a6-bad3-4786b8fb7024",
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
          "uuid": "a07e64ae-4da4-41dd-ad42-402b24d8dc28",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5987e2dd-c993-40aa-bf72-49fe021cee1b",
              "parent_uuid": "a07e64ae-4da4-41dd-ad42-402b24d8dc28",
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
          "uuid": "8f048c91-ec43-47be-8a49-b5e1528569e5",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a922e0b9-2e59-4a08-acef-b6c63f1b25e7",
              "parent_uuid": "8f048c91-ec43-47be-8a49-b5e1528569e5",
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
          "uuid": "57b1ae18-e1fd-46a6-bbd3-1414dd690155",
          "parent_uuid": "1886340d-2094-47f9-a049-d7891fc75474",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "15892328-08b6-434d-9619-aaf806223316",
              "parent_uuid": "57b1ae18-e1fd-46a6-bbd3-1414dd690155",
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
                  "uuid": "12aa13ec-7283-4d84-9cbf-6f34938cab85",
                  "parent_uuid": "15892328-08b6-434d-9619-aaf806223316",
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


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
  "uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
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
      "uuid": "a925ceae-4eaa-4ba4-9e2c-f0bd713a825c",
      "parent_uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
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
      "uuid": "0ead73c3-ecb5-4ca0-abfe-07d2e6678a21",
      "parent_uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
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
      "uuid": "78b33abc-b06a-4c48-9ff1-6a5da66c357d",
      "parent_uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
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
      "uuid": "7a0e6088-6a38-4af2-92b4-614ee51dfcf9",
      "parent_uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
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
      "uuid": "ac1838e0-62f9-4a2a-b0f6-47c7486ad455",
      "parent_uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
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
      "uuid": "4aa501db-612c-4bde-ba95-4c9ead09e64a",
      "parent_uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
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
      "uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
      "parent_uuid": "c2fc6e57-00b7-46d8-97f9-4a642f3b84f0",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "8353fe59-077b-4469-acc1-22c180160ac0",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "5633b551-ca83-41ee-bf42-b6650bd3fc68",
              "parent_uuid": "8353fe59-077b-4469-acc1-22c180160ac0",
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
              "uuid": "4d254f04-1b58-4aef-9ae9-2340c35c94c1",
              "parent_uuid": "8353fe59-077b-4469-acc1-22c180160ac0",
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
              "uuid": "de4e6b71-c7b6-4bf1-b789-efbb8eaf7301",
              "parent_uuid": "8353fe59-077b-4469-acc1-22c180160ac0",
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
              "uuid": "db273d31-3973-4433-86a3-f3e168651d22",
              "parent_uuid": "8353fe59-077b-4469-acc1-22c180160ac0",
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
          "uuid": "aacad1b9-7e95-41f9-a074-9220a725bcb4",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "3f34c727-12c8-426d-8030-5c0ef2c5d439",
              "parent_uuid": "aacad1b9-7e95-41f9-a074-9220a725bcb4",
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
              "uuid": "4e0a3a3e-ab48-4e87-9b1f-1cd5ea7aa715",
              "parent_uuid": "aacad1b9-7e95-41f9-a074-9220a725bcb4",
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
              "uuid": "01a98262-8d1b-498b-8772-30c3565d33db",
              "parent_uuid": "aacad1b9-7e95-41f9-a074-9220a725bcb4",
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
              "uuid": "f7317f05-2835-47ac-8043-3e3bb3e3ab64",
              "parent_uuid": "aacad1b9-7e95-41f9-a074-9220a725bcb4",
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
          "uuid": "f8347879-4129-400a-a52a-d9af1660fe0d",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "f15e3e30-63b3-4a30-bbe9-836aa21a0b13",
              "parent_uuid": "f8347879-4129-400a-a52a-d9af1660fe0d",
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
              "uuid": "dda1ad4b-4810-4a8e-8306-144a6804f2cb",
              "parent_uuid": "f8347879-4129-400a-a52a-d9af1660fe0d",
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
              "uuid": "4350bdd0-ae02-4339-b5cd-8973d10d41a9",
              "parent_uuid": "f8347879-4129-400a-a52a-d9af1660fe0d",
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
              "uuid": "757e4aea-9489-40b4-95b7-dfabe74d50c4",
              "parent_uuid": "f8347879-4129-400a-a52a-d9af1660fe0d",
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
          "uuid": "3883f750-0db1-45b1-a0f5-bbfd0055813b",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30435330-3249-4429-800b-cd2d281ab170",
              "parent_uuid": "3883f750-0db1-45b1-a0f5-bbfd0055813b",
              "tagName": "td",
              "properties": [
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
              "uuid": "486626c1-071b-4da1-beee-9e8d4fe8bb64",
              "parent_uuid": "3883f750-0db1-45b1-a0f5-bbfd0055813b",
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
              "uuid": "321dd2d1-1257-41ad-917d-ba4d6c0d98cd",
              "parent_uuid": "3883f750-0db1-45b1-a0f5-bbfd0055813b",
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
              "uuid": "4ba13241-3b9d-49b6-bc94-26a563d6ad5e",
              "parent_uuid": "3883f750-0db1-45b1-a0f5-bbfd0055813b",
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
              "uuid": "607e688a-0941-48ee-8654-b718c0769c10",
              "parent_uuid": "3883f750-0db1-45b1-a0f5-bbfd0055813b",
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
          "uuid": "5f1d2ffb-c02a-4c8c-86bd-ba8f31c5836e",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6b9c29ac-17ed-4d28-8e16-1334b022bda6",
              "parent_uuid": "5f1d2ffb-c02a-4c8c-86bd-ba8f31c5836e",
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
          "uuid": "a26409dd-9c81-4bc3-83c7-0dad4c8e42ff",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26bddaa8-18fb-41ca-8a4c-2e24f076942b",
              "parent_uuid": "a26409dd-9c81-4bc3-83c7-0dad4c8e42ff",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a96d4b3c-f6c2-44c6-b600-6f8ff7decc88",
              "parent_uuid": "a26409dd-9c81-4bc3-83c7-0dad4c8e42ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "7a10d462-c98a-47dd-b5ff-126cd2e0c79e",
              "parent_uuid": "a26409dd-9c81-4bc3-83c7-0dad4c8e42ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "aff1c596-09ff-4862-9d7a-7b954c08d628",
                  "parent_uuid": "7a10d462-c98a-47dd-b5ff-126cd2e0c79e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bbe0535-58be-4683-9535-bb308fbe6353",
              "parent_uuid": "a26409dd-9c81-4bc3-83c7-0dad4c8e42ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b3a3fc99-b907-4acb-ae87-2e300491f7fa",
                  "parent_uuid": "1bbe0535-58be-4683-9535-bb308fbe6353",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9546b982-f732-453e-b7ad-3150ff870311",
              "parent_uuid": "a26409dd-9c81-4bc3-83c7-0dad4c8e42ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a9162c99-91ad-47a0-ab0f-92eb0b551bba",
                  "parent_uuid": "9546b982-f732-453e-b7ad-3150ff870311",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "947084f8-f15c-4ddb-9099-159da01d4770",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e4a7757-6191-4bb3-aafe-2bb1a0ced89f",
              "parent_uuid": "947084f8-f15c-4ddb-9099-159da01d4770",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ecdbd7d0-2a88-4189-ab9c-5a308a21eb44",
              "parent_uuid": "947084f8-f15c-4ddb-9099-159da01d4770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "99f29456-6fba-4434-901d-02120287e3d6",
              "parent_uuid": "947084f8-f15c-4ddb-9099-159da01d4770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0679d661-d29f-42b0-9075-3cbaed6de3a8",
                  "parent_uuid": "99f29456-6fba-4434-901d-02120287e3d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32f31453-7079-475c-bd12-1ec9963890d0",
              "parent_uuid": "947084f8-f15c-4ddb-9099-159da01d4770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "d7d40cb5-2fc4-4219-8aa1-0c5e668bce82",
                  "parent_uuid": "32f31453-7079-475c-bd12-1ec9963890d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3263e98b-a41f-417c-9631-d4e0e3126d09",
              "parent_uuid": "947084f8-f15c-4ddb-9099-159da01d4770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "dc59f2e6-dc27-4888-8099-9fa634325f97",
                  "parent_uuid": "3263e98b-a41f-417c-9631-d4e0e3126d09",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b57ca05c-480f-4c86-b40e-2b18ea4aa7e1",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a803e14c-7eb2-4c6b-9dba-8d253bdfd987",
              "parent_uuid": "b57ca05c-480f-4c86-b40e-2b18ea4aa7e1",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ace81343-65c7-4862-85d9-1ab31cd35084",
              "parent_uuid": "b57ca05c-480f-4c86-b40e-2b18ea4aa7e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "7b19d808-8c1f-4da2-b26b-8b9086dc3c9d",
              "parent_uuid": "b57ca05c-480f-4c86-b40e-2b18ea4aa7e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "884e8a90-fefc-4e3f-b291-562cba50d0b6",
                  "parent_uuid": "7b19d808-8c1f-4da2-b26b-8b9086dc3c9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "289eed05-d30d-42c3-bcf9-40dbddc738e2",
              "parent_uuid": "b57ca05c-480f-4c86-b40e-2b18ea4aa7e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79a547b3-8c9e-486e-9f43-da76e2c1507d",
                  "parent_uuid": "289eed05-d30d-42c3-bcf9-40dbddc738e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e15661a-b9a5-41ae-a974-827173eb8c1d",
              "parent_uuid": "b57ca05c-480f-4c86-b40e-2b18ea4aa7e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31132a0f-9121-4204-b3e5-18e4a6ea80f7",
                  "parent_uuid": "0e15661a-b9a5-41ae-a974-827173eb8c1d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38b37663-4055-4b5b-9a27-8d7a8f9d3591",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2d60dd2-625a-4fb9-8c3b-dcf351723a1c",
              "parent_uuid": "38b37663-4055-4b5b-9a27-8d7a8f9d3591",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "151fb2fa-4def-46c9-aeba-ccf2b49759db",
              "parent_uuid": "38b37663-4055-4b5b-9a27-8d7a8f9d3591",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "975a259e-44d8-4174-9a02-fea9f57448be",
              "parent_uuid": "38b37663-4055-4b5b-9a27-8d7a8f9d3591",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3032026a-0104-4dd8-bbac-b6f778f1f3a3",
                  "parent_uuid": "975a259e-44d8-4174-9a02-fea9f57448be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4fa846a4-9c17-40b2-8845-74c543a35c0e",
              "parent_uuid": "38b37663-4055-4b5b-9a27-8d7a8f9d3591",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "295e1a95-6ff4-45cc-8fca-061c4f311801",
                  "parent_uuid": "4fa846a4-9c17-40b2-8845-74c543a35c0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ead96516-8c94-4bf8-9a3b-0c13dcaad525",
              "parent_uuid": "38b37663-4055-4b5b-9a27-8d7a8f9d3591",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc45507f-304e-4db4-822c-b9c0f823c6f6",
                  "parent_uuid": "ead96516-8c94-4bf8-9a3b-0c13dcaad525",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "16c446a2-09ce-4eb9-9c9a-91576fe68cca",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68aefa4e-3ad4-4e7a-9448-4ed9cc5a9607",
              "parent_uuid": "16c446a2-09ce-4eb9-9c9a-91576fe68cca",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9fc37317-a8bc-41d5-bf67-b549b0f52a33",
              "parent_uuid": "16c446a2-09ce-4eb9-9c9a-91576fe68cca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "2823107c-48f2-418f-8e3a-071889979bcf",
              "parent_uuid": "16c446a2-09ce-4eb9-9c9a-91576fe68cca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90040d47-4e9f-40b4-b192-310de50c7e07",
                  "parent_uuid": "2823107c-48f2-418f-8e3a-071889979bcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ee178fd-c2bb-46e7-ab35-a71ad1012d84",
              "parent_uuid": "16c446a2-09ce-4eb9-9c9a-91576fe68cca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aeac992b-952c-43f5-9b6d-367faab5d1f1",
                  "parent_uuid": "2ee178fd-c2bb-46e7-ab35-a71ad1012d84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eebb4d86-0a01-4117-b2f6-bc0c6635fcac",
              "parent_uuid": "16c446a2-09ce-4eb9-9c9a-91576fe68cca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4eaf2cea-a525-4fbb-a515-0f94a1862b2e",
                  "parent_uuid": "eebb4d86-0a01-4117-b2f6-bc0c6635fcac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73e2c8c1-1dfe-45d4-8c2b-eba6705be14f",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "236a62b8-9c88-469a-981c-9730351813f8",
              "parent_uuid": "73e2c8c1-1dfe-45d4-8c2b-eba6705be14f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5d70ba10-690a-4fb5-b3a6-99f503fb50a8",
              "parent_uuid": "73e2c8c1-1dfe-45d4-8c2b-eba6705be14f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c182bbf9-a4e6-4120-8af6-758114a088a1",
              "parent_uuid": "73e2c8c1-1dfe-45d4-8c2b-eba6705be14f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3771a5a-adb5-4477-83ec-6df28cd789c2",
                  "parent_uuid": "c182bbf9-a4e6-4120-8af6-758114a088a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e33757e2-a67d-4c34-8647-e7522d3d655c",
              "parent_uuid": "73e2c8c1-1dfe-45d4-8c2b-eba6705be14f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b3842ad-e63a-4e2a-b846-eafe31e42a6d",
                  "parent_uuid": "e33757e2-a67d-4c34-8647-e7522d3d655c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e6b08ec-6bbe-44fa-adb2-c108b7bb5c62",
              "parent_uuid": "73e2c8c1-1dfe-45d4-8c2b-eba6705be14f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45e91917-2782-41a2-9e53-c287437691e4",
                  "parent_uuid": "4e6b08ec-6bbe-44fa-adb2-c108b7bb5c62",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2365ca96-10df-4eb6-ac83-03ccbf25e97e",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "73ad9848-2b1e-4575-9ff2-a780601ac8df",
              "parent_uuid": "2365ca96-10df-4eb6-ac83-03ccbf25e97e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "cf97cf74-daaf-4879-9ded-dd57488633ee",
              "parent_uuid": "2365ca96-10df-4eb6-ac83-03ccbf25e97e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "679c72dd-d398-4b8c-b570-7ae761bf0b64",
              "parent_uuid": "2365ca96-10df-4eb6-ac83-03ccbf25e97e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c18c85c-fd17-41b5-b82e-6ca5bdc14f8d",
                  "parent_uuid": "679c72dd-d398-4b8c-b570-7ae761bf0b64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "813bf0b5-030b-441d-a4dc-5fafb048567d",
              "parent_uuid": "2365ca96-10df-4eb6-ac83-03ccbf25e97e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99f4ee61-35cd-4038-a882-174833da49c7",
                  "parent_uuid": "813bf0b5-030b-441d-a4dc-5fafb048567d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab74d7fd-b241-4662-9e9d-81fc5fcb19e8",
              "parent_uuid": "2365ca96-10df-4eb6-ac83-03ccbf25e97e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7094d427-a88c-4fbb-8372-73559650617f",
                  "parent_uuid": "ab74d7fd-b241-4662-9e9d-81fc5fcb19e8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9add9c4c-68f3-49db-bf79-cd72da1eb4b3",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a3611818-165e-4749-9d07-eb22a5a81062",
              "parent_uuid": "9add9c4c-68f3-49db-bf79-cd72da1eb4b3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6edcdbfa-38fc-4faf-bc58-9c8538c03d87",
              "parent_uuid": "9add9c4c-68f3-49db-bf79-cd72da1eb4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "e18ea1a7-7e8e-4f41-9844-b4da46908416",
              "parent_uuid": "9add9c4c-68f3-49db-bf79-cd72da1eb4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "003941c7-aedc-4ef9-9d64-6c76df8efce9",
                  "parent_uuid": "e18ea1a7-7e8e-4f41-9844-b4da46908416",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16acaec0-90ea-494a-9cac-ce5d10c09bf3",
              "parent_uuid": "9add9c4c-68f3-49db-bf79-cd72da1eb4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d164f9d-e4ce-4134-a648-24dd3b533553",
                  "parent_uuid": "16acaec0-90ea-494a-9cac-ce5d10c09bf3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e059000-b79d-4ead-ab0f-6a670ade7140",
              "parent_uuid": "9add9c4c-68f3-49db-bf79-cd72da1eb4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7800145c-7cd7-472f-bce2-736a5c84bceb",
                  "parent_uuid": "6e059000-b79d-4ead-ab0f-6a670ade7140",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2f55976a-a5dd-4f29-a5d3-166afde24550",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d655061e-2684-41b2-8bae-0b3dfdf7418a",
              "parent_uuid": "2f55976a-a5dd-4f29-a5d3-166afde24550",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a9c7857c-3f8c-4ff9-b5b7-3eabec1dd054",
              "parent_uuid": "2f55976a-a5dd-4f29-a5d3-166afde24550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "2f0ac27a-b95e-424f-928c-16150fc22675",
              "parent_uuid": "2f55976a-a5dd-4f29-a5d3-166afde24550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d96d719-db46-4d1b-82e8-4ad54fb0f035",
                  "parent_uuid": "2f0ac27a-b95e-424f-928c-16150fc22675",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "225c7c06-b58d-4455-83db-0dda8ecb3e58",
              "parent_uuid": "2f55976a-a5dd-4f29-a5d3-166afde24550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de42a96e-e7f9-4db6-af0b-25286b9513a1",
                  "parent_uuid": "225c7c06-b58d-4455-83db-0dda8ecb3e58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd53f4e4-f5ac-417c-9ff9-87971499701f",
              "parent_uuid": "2f55976a-a5dd-4f29-a5d3-166afde24550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eaf71d5d-f700-4e0c-a0f1-6f990f2052b6",
                  "parent_uuid": "dd53f4e4-f5ac-417c-9ff9-87971499701f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d77c3c9e-3eb0-4658-9ce8-4c63d5a21023",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "320e334a-848c-4c21-8735-0e7c6bc51a38",
              "parent_uuid": "d77c3c9e-3eb0-4658-9ce8-4c63d5a21023",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dce8448c-a9b9-4ede-b455-bf800c03daa4",
              "parent_uuid": "d77c3c9e-3eb0-4658-9ce8-4c63d5a21023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "816ac79c-569f-40df-b1df-a0054ae2b4b2",
              "parent_uuid": "d77c3c9e-3eb0-4658-9ce8-4c63d5a21023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93668f7a-ca51-4b0f-92b6-528bbf57a672",
                  "parent_uuid": "816ac79c-569f-40df-b1df-a0054ae2b4b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42b78dc2-33b2-4558-8079-ba7e7e1e2814",
              "parent_uuid": "d77c3c9e-3eb0-4658-9ce8-4c63d5a21023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4b9250a-7180-4cc9-9713-a87fdc25d7b4",
                  "parent_uuid": "42b78dc2-33b2-4558-8079-ba7e7e1e2814",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a13a53b-a7ad-4e51-bd85-c18d6209a6a2",
              "parent_uuid": "d77c3c9e-3eb0-4658-9ce8-4c63d5a21023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31363561-7abf-4486-933c-8636ec0e6a27",
                  "parent_uuid": "8a13a53b-a7ad-4e51-bd85-c18d6209a6a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6b37c7b3-507a-4f47-a4b8-e7174153b38a",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04d079c8-fcde-4439-954a-a6bf7d23619d",
              "parent_uuid": "6b37c7b3-507a-4f47-a4b8-e7174153b38a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "28bb65ca-16f3-4aa0-a4e2-bd2acb41fe32",
              "parent_uuid": "6b37c7b3-507a-4f47-a4b8-e7174153b38a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "4791901f-b8f7-4c1d-ad95-f1f68cbe5ae8",
              "parent_uuid": "6b37c7b3-507a-4f47-a4b8-e7174153b38a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9284cf2-9f59-4877-bdbb-01818b4ca497",
                  "parent_uuid": "4791901f-b8f7-4c1d-ad95-f1f68cbe5ae8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02edeccb-43d1-4e0a-befa-9ca3e72a8d90",
              "parent_uuid": "6b37c7b3-507a-4f47-a4b8-e7174153b38a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a28db24b-b122-46eb-8ca4-50a4dd3e6af3",
                  "parent_uuid": "02edeccb-43d1-4e0a-befa-9ca3e72a8d90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4032306b-c734-4e2c-82e5-70ace1cb4a87",
              "parent_uuid": "6b37c7b3-507a-4f47-a4b8-e7174153b38a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af6dca95-59cc-4845-8d07-3329c5eff413",
                  "parent_uuid": "4032306b-c734-4e2c-82e5-70ace1cb4a87",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "45a57c23-f568-41fe-8016-d844a4b401b6",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e7489b8-8847-4ff3-8a53-9f69b04fd5ab",
              "parent_uuid": "45a57c23-f568-41fe-8016-d844a4b401b6",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a7b83752-fd37-4200-a8c0-4e45d0b6dee1",
              "parent_uuid": "45a57c23-f568-41fe-8016-d844a4b401b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "9a28a288-72f4-4328-842a-50a1a8959a51",
              "parent_uuid": "45a57c23-f568-41fe-8016-d844a4b401b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e14f208f-9db9-4975-97ce-21e795a29ffd",
                  "parent_uuid": "9a28a288-72f4-4328-842a-50a1a8959a51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07a2ca3c-4fbc-447e-a6c7-2a645a8b9f49",
              "parent_uuid": "45a57c23-f568-41fe-8016-d844a4b401b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bba3c61-6a49-42c5-903d-8477ba2a1428",
                  "parent_uuid": "07a2ca3c-4fbc-447e-a6c7-2a645a8b9f49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a798f5aa-e2d4-4047-b8c9-1d83655af5fd",
              "parent_uuid": "45a57c23-f568-41fe-8016-d844a4b401b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fdd08154-ab94-4968-80e4-473a9b691b56",
                  "parent_uuid": "a798f5aa-e2d4-4047-b8c9-1d83655af5fd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b2a35341-ef3f-4072-bf61-c0b2bb873e0d",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85f5c2d3-f0f7-4c37-a07b-f2f4e648445f",
              "parent_uuid": "b2a35341-ef3f-4072-bf61-c0b2bb873e0d",
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
          "uuid": "0b5fd07b-ca49-4e15-9e72-d803ff4c20a5",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26592f9a-2a3c-4794-8fb1-d2843eb77fe8",
              "parent_uuid": "0b5fd07b-ca49-4e15-9e72-d803ff4c20a5",
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
          "uuid": "83e86f28-eb22-401b-9f0d-a627845f4e21",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40a0ba83-3b55-4e3c-9915-f0bc7070ced1",
              "parent_uuid": "83e86f28-eb22-401b-9f0d-a627845f4e21",
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
                  "uuid": "054ad998-245b-4b8a-a818-c0671f882ada",
                  "parent_uuid": "40a0ba83-3b55-4e3c-9915-f0bc7070ced1",
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
          "uuid": "7fb0c60c-c600-4ba0-bf9f-d2075ff16c7b",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a37fe4f7-fa5b-4a33-a5f8-9cc45fd62e56",
              "parent_uuid": "7fb0c60c-c600-4ba0-bf9f-d2075ff16c7b",
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
          "uuid": "af88e9ce-cdf8-48a8-81aa-7faf8c8e51c5",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "4f576880-6f1c-4490-9631-9ec8c1727007",
              "parent_uuid": "af88e9ce-cdf8-48a8-81aa-7faf8c8e51c5",
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
          "uuid": "a49d8dc1-21f4-4a17-a390-9802bf3f950c",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f3b7d19-62d7-4a49-b9bf-689ab93f06bb",
              "parent_uuid": "a49d8dc1-21f4-4a17-a390-9802bf3f950c",
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
              "uuid": "6b59d3ad-79e9-414b-a0a8-1db1adb62247",
              "parent_uuid": "a49d8dc1-21f4-4a17-a390-9802bf3f950c",
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
              "uuid": "1860103a-8869-4fd0-b8d7-85f4dee9f06f",
              "parent_uuid": "a49d8dc1-21f4-4a17-a390-9802bf3f950c",
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
              "uuid": "89bf102b-b2ec-4ddf-8f1d-7bbfa59ed2cb",
              "parent_uuid": "a49d8dc1-21f4-4a17-a390-9802bf3f950c",
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
              "uuid": "f81fcd7b-58b9-4439-beef-73f9771b0a3e",
              "parent_uuid": "a49d8dc1-21f4-4a17-a390-9802bf3f950c",
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
          "uuid": "415d2736-3eed-43c9-9c54-02e53ee32754",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6da3435a-6bc8-420c-9b23-3c0359784fad",
              "parent_uuid": "415d2736-3eed-43c9-9c54-02e53ee32754",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "69e5573c-4354-4f52-a69d-10be51de78c0",
              "parent_uuid": "415d2736-3eed-43c9-9c54-02e53ee32754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "8187cb5f-7d47-4b76-8f77-0acbe15f2c43",
              "parent_uuid": "415d2736-3eed-43c9-9c54-02e53ee32754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aad52674-035b-4f6a-a804-74cf8b23a132",
                  "parent_uuid": "8187cb5f-7d47-4b76-8f77-0acbe15f2c43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "110174a2-96f4-4061-bcbd-3c9ed93a52c1",
              "parent_uuid": "415d2736-3eed-43c9-9c54-02e53ee32754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d179b19-e20a-41f7-9f1f-d3820582249b",
                  "parent_uuid": "110174a2-96f4-4061-bcbd-3c9ed93a52c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "905ded4b-9d7c-462c-84e1-8b6e4ca3f655",
              "parent_uuid": "415d2736-3eed-43c9-9c54-02e53ee32754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "beab62df-93d5-47d3-aa1a-f73b7d4833c4",
                  "parent_uuid": "905ded4b-9d7c-462c-84e1-8b6e4ca3f655",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26b52f0e-486b-49fc-a22f-2c82a8ebea49",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0c09b1c-50a1-4e48-b032-5dcc81e69f2c",
              "parent_uuid": "26b52f0e-486b-49fc-a22f-2c82a8ebea49",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0adab439-e81b-4a6a-93f4-7c671b4f6940",
              "parent_uuid": "26b52f0e-486b-49fc-a22f-2c82a8ebea49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f74831b2-39c2-4e07-b04c-6ecec6706bc3",
              "parent_uuid": "26b52f0e-486b-49fc-a22f-2c82a8ebea49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6420bdda-de30-44f0-b2a7-38f74e85310e",
                  "parent_uuid": "f74831b2-39c2-4e07-b04c-6ecec6706bc3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "682398e9-0a4d-405a-b554-720e8c2addff",
              "parent_uuid": "26b52f0e-486b-49fc-a22f-2c82a8ebea49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7933729-798a-4a36-a132-bdedd32e9d39",
                  "parent_uuid": "682398e9-0a4d-405a-b554-720e8c2addff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9dd876a7-571a-44b2-9602-a4de933753e0",
              "parent_uuid": "26b52f0e-486b-49fc-a22f-2c82a8ebea49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84d45042-9f57-41b7-be93-5eae717c131a",
                  "parent_uuid": "9dd876a7-571a-44b2-9602-a4de933753e0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09e29830-d9fd-41e7-9c15-4ad12e40ff08",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18153cf1-e6f9-417b-84e5-279b0d71b612",
              "parent_uuid": "09e29830-d9fd-41e7-9c15-4ad12e40ff08",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "12751bb0-ba90-4bde-93f8-f23d1d79df49",
              "parent_uuid": "09e29830-d9fd-41e7-9c15-4ad12e40ff08",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "443158bf-c346-4c54-8085-47ac938e74ab",
              "parent_uuid": "09e29830-d9fd-41e7-9c15-4ad12e40ff08",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0182c806-18d9-41a2-90f3-567faca52dff",
                  "parent_uuid": "443158bf-c346-4c54-8085-47ac938e74ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e90bd3e4-2941-444c-9261-acd21e0a7a70",
              "parent_uuid": "09e29830-d9fd-41e7-9c15-4ad12e40ff08",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0214de2-a89a-48f7-b008-b67f8f3f9666",
                  "parent_uuid": "e90bd3e4-2941-444c-9261-acd21e0a7a70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24608d2e-fbb9-40b4-a6de-3e9661442003",
              "parent_uuid": "09e29830-d9fd-41e7-9c15-4ad12e40ff08",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "776494dd-52a6-4adb-bc1c-9e5eecbf0ad4",
                  "parent_uuid": "24608d2e-fbb9-40b4-a6de-3e9661442003",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ef8a93da-4057-4994-a9d4-e12b56bb5ce9",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7456dbac-0fc4-4ae1-92b3-ffadd0f7666b",
              "parent_uuid": "ef8a93da-4057-4994-a9d4-e12b56bb5ce9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d2583868-ed22-4028-9174-e514898b9393",
              "parent_uuid": "ef8a93da-4057-4994-a9d4-e12b56bb5ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "527b21e2-eb7c-410d-b7d2-91c342163d7b",
              "parent_uuid": "ef8a93da-4057-4994-a9d4-e12b56bb5ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e7897a5-cfc1-48f9-9525-f9e6947db5bd",
                  "parent_uuid": "527b21e2-eb7c-410d-b7d2-91c342163d7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31abf08b-3194-40de-8f2e-b27d0ff710b8",
              "parent_uuid": "ef8a93da-4057-4994-a9d4-e12b56bb5ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a882f4b-1ce8-4449-bc7a-bd5e2db3c333",
                  "parent_uuid": "31abf08b-3194-40de-8f2e-b27d0ff710b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "527192a3-3bbc-4c5f-b09e-129b56243a48",
              "parent_uuid": "ef8a93da-4057-4994-a9d4-e12b56bb5ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96a1e77a-acb4-411d-893e-791f8b24dd49",
                  "parent_uuid": "527192a3-3bbc-4c5f-b09e-129b56243a48",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7733292b-d777-4d19-8d79-c7ad6367146c",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f27f37fa-1422-4d78-a0aa-028683eefcf2",
              "parent_uuid": "7733292b-d777-4d19-8d79-c7ad6367146c",
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
          "uuid": "c81fba3c-7533-40c7-a1fb-82c75a03a174",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "193157fc-afd6-4dc4-a2e7-1a5dbc3d0ad8",
              "parent_uuid": "c81fba3c-7533-40c7-a1fb-82c75a03a174",
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
          "uuid": "b3945695-11d7-4e95-9575-52c1932b681c",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "953dafa5-b4bd-4ee3-b23e-c15f0b676766",
              "parent_uuid": "b3945695-11d7-4e95-9575-52c1932b681c",
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
                  "uuid": "8a1867b9-74ff-4ea4-821c-cbf6a91b5560",
                  "parent_uuid": "953dafa5-b4bd-4ee3-b23e-c15f0b676766",
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
          "uuid": "4b857371-3561-4eee-ba7e-fd608ef6415e",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8396c7e0-8bbd-43d8-bf0a-4df45830459e",
              "parent_uuid": "4b857371-3561-4eee-ba7e-fd608ef6415e",
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
          "uuid": "4d9963cc-b6d0-43d7-aced-e762274a38a2",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "6d2dab0a-bd2b-4831-81f1-ecd4e9d6d1f3",
              "parent_uuid": "4d9963cc-b6d0-43d7-aced-e762274a38a2",
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
          "uuid": "f3a3d9ca-07c0-4f7e-8e82-e6ce8a79e077",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cad5051c-15f5-4599-a9b3-47e5bf11f8ef",
              "parent_uuid": "f3a3d9ca-07c0-4f7e-8e82-e6ce8a79e077",
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
              "uuid": "aba55dd8-fd82-4800-9473-e00f0c80e53c",
              "parent_uuid": "f3a3d9ca-07c0-4f7e-8e82-e6ce8a79e077",
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
              "uuid": "115803bc-9fc0-4d73-a9ff-5dc5edb3cf21",
              "parent_uuid": "f3a3d9ca-07c0-4f7e-8e82-e6ce8a79e077",
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
              "uuid": "ab250226-1ba3-4194-a1b8-1c7e62265772",
              "parent_uuid": "f3a3d9ca-07c0-4f7e-8e82-e6ce8a79e077",
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
              "uuid": "459af216-e407-4324-9f6e-aadb44a1b1e0",
              "parent_uuid": "f3a3d9ca-07c0-4f7e-8e82-e6ce8a79e077",
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
          "uuid": "f31136ff-4380-4901-b14a-029b028fe8e0",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "abb622ce-dad9-4a6c-8e8a-1a0f236f4ec8",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9cad9b1d-dbb6-41e3-852a-78f4a7cad93b",
              "parent_uuid": "abb622ce-dad9-4a6c-8e8a-1a0f236f4ec8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "604ec38b-2373-435c-8d9e-319372da6dfb",
              "parent_uuid": "abb622ce-dad9-4a6c-8e8a-1a0f236f4ec8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b5ac29a6-a34a-4440-9e70-d066b414fe4f",
              "parent_uuid": "abb622ce-dad9-4a6c-8e8a-1a0f236f4ec8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3849bb01-b7df-4dd4-a5ae-e1107da0a982",
                  "parent_uuid": "b5ac29a6-a34a-4440-9e70-d066b414fe4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "adbe053a-72bf-4e15-b8b7-193f7e6a5456",
              "parent_uuid": "abb622ce-dad9-4a6c-8e8a-1a0f236f4ec8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad3bb434-a224-4c47-b843-752b64c73539",
                  "parent_uuid": "adbe053a-72bf-4e15-b8b7-193f7e6a5456",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cf18d08-b88a-4de6-b760-4d7e7841bed5",
              "parent_uuid": "abb622ce-dad9-4a6c-8e8a-1a0f236f4ec8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0aa45d1-5211-4173-bf1b-a16380429968",
                  "parent_uuid": "7cf18d08-b88a-4de6-b760-4d7e7841bed5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ad7c9bdd-0246-4fb0-a7af-03ef3ed57e15",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1122e6a0-c052-4d6d-a420-6bc0900902cf",
              "parent_uuid": "ad7c9bdd-0246-4fb0-a7af-03ef3ed57e15",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d4cc7c8a-3bfe-41c3-a162-eb1722ba712e",
              "parent_uuid": "ad7c9bdd-0246-4fb0-a7af-03ef3ed57e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "25ec0f17-4da3-4ed2-b48e-70216ffe0e59",
              "parent_uuid": "ad7c9bdd-0246-4fb0-a7af-03ef3ed57e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60f39224-c8e5-4e9e-9391-19c65617224c",
                  "parent_uuid": "25ec0f17-4da3-4ed2-b48e-70216ffe0e59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8966e6f7-5d68-4726-b951-2fe4dbdcdb28",
              "parent_uuid": "ad7c9bdd-0246-4fb0-a7af-03ef3ed57e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4ddf85a-0372-4544-8018-9f2325b5525c",
                  "parent_uuid": "8966e6f7-5d68-4726-b951-2fe4dbdcdb28",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af8e1f5b-bca3-4c80-a824-c5e7cfbfe8fa",
              "parent_uuid": "ad7c9bdd-0246-4fb0-a7af-03ef3ed57e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5c6c84c-dc77-4cbe-8980-f4933ec3dbf2",
                  "parent_uuid": "af8e1f5b-bca3-4c80-a824-c5e7cfbfe8fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e7e9f3e7-2902-4f3e-ad17-934edf25bc87",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34d79222-d5c4-4bbb-be66-03bf4c63dc73",
              "parent_uuid": "e7e9f3e7-2902-4f3e-ad17-934edf25bc87",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1beedff4-e0a5-4dd1-a5e7-af97b94c60d2",
              "parent_uuid": "e7e9f3e7-2902-4f3e-ad17-934edf25bc87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "babcf7fd-1c32-407a-86ab-a94803ae142c",
              "parent_uuid": "e7e9f3e7-2902-4f3e-ad17-934edf25bc87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8889fce4-c9a8-41f6-8de7-deb5a053eb22",
                  "parent_uuid": "babcf7fd-1c32-407a-86ab-a94803ae142c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c698112-df94-4d03-9be1-848c25128e94",
              "parent_uuid": "e7e9f3e7-2902-4f3e-ad17-934edf25bc87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b79c00e-b7f3-4ff9-838d-83076f97bc5c",
                  "parent_uuid": "9c698112-df94-4d03-9be1-848c25128e94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e077735-0949-4794-8a03-4fe223e30cae",
              "parent_uuid": "e7e9f3e7-2902-4f3e-ad17-934edf25bc87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4413dd27-e867-4cea-968f-42c5674ca9ea",
                  "parent_uuid": "3e077735-0949-4794-8a03-4fe223e30cae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "00d78d3c-aadf-4e30-bc54-d58b36da3eae",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9627aab7-7022-4eaa-92f5-40fc4238b591",
              "parent_uuid": "00d78d3c-aadf-4e30-bc54-d58b36da3eae",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fd786077-1776-4319-8e03-6b90c1b69158",
              "parent_uuid": "00d78d3c-aadf-4e30-bc54-d58b36da3eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f3ea91da-c149-49ed-84bc-e6c00e61a611",
              "parent_uuid": "00d78d3c-aadf-4e30-bc54-d58b36da3eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "028f42a7-7825-4f1f-83b0-310e280fc355",
                  "parent_uuid": "f3ea91da-c149-49ed-84bc-e6c00e61a611",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b179268a-c4cb-4f42-bd67-06bc7428b432",
              "parent_uuid": "00d78d3c-aadf-4e30-bc54-d58b36da3eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e708af26-c15e-4066-8335-47664e7500b5",
                  "parent_uuid": "b179268a-c4cb-4f42-bd67-06bc7428b432",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc948afc-7cc7-4ef4-a598-8ebb646f94e9",
              "parent_uuid": "00d78d3c-aadf-4e30-bc54-d58b36da3eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "076bc2bd-bfcf-4f9f-8b09-69f5962241bd",
                  "parent_uuid": "cc948afc-7cc7-4ef4-a598-8ebb646f94e9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "050062df-bd4c-4cb9-8c76-9f0720031837",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a9396f7-c6c4-4878-abcd-47cdc5e64634",
              "parent_uuid": "050062df-bd4c-4cb9-8c76-9f0720031837",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5ac5dd9a-7b84-4932-b025-5d580a905779",
              "parent_uuid": "050062df-bd4c-4cb9-8c76-9f0720031837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c4b5c844-5d85-4e0b-8a93-6a8b901cc8fc",
              "parent_uuid": "050062df-bd4c-4cb9-8c76-9f0720031837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a1802c4-e691-45aa-913b-50b4196734e3",
                  "parent_uuid": "c4b5c844-5d85-4e0b-8a93-6a8b901cc8fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bc37732-b115-4742-98d7-8853e7149c46",
              "parent_uuid": "050062df-bd4c-4cb9-8c76-9f0720031837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f39fc55-f044-4413-bd50-aa738ddde4bf",
                  "parent_uuid": "6bc37732-b115-4742-98d7-8853e7149c46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43ed6ad4-f940-4505-8db7-0277919fa012",
              "parent_uuid": "050062df-bd4c-4cb9-8c76-9f0720031837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e98a693-9a44-414e-b885-d2f6ce4ef9e5",
                  "parent_uuid": "43ed6ad4-f940-4505-8db7-0277919fa012",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f56577a4-f591-4ad9-9584-7f470637943c",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd12c521-3f71-41aa-8010-bdce5e02a508",
              "parent_uuid": "f56577a4-f591-4ad9-9584-7f470637943c",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "24c7baf6-d7b0-487d-9be1-ebf0f9281ce6",
              "parent_uuid": "f56577a4-f591-4ad9-9584-7f470637943c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b94de729-8692-4645-8cd4-98c66541a226",
              "parent_uuid": "f56577a4-f591-4ad9-9584-7f470637943c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6aaf1cbf-94dc-4d23-901a-4c926f76f0d9",
                  "parent_uuid": "b94de729-8692-4645-8cd4-98c66541a226",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e83ffd3-f6fe-406e-9bee-9006e6c775ae",
              "parent_uuid": "f56577a4-f591-4ad9-9584-7f470637943c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fff96164-c046-4f7f-8899-94274050a704",
                  "parent_uuid": "6e83ffd3-f6fe-406e-9bee-9006e6c775ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9a65ed4-6086-4ca3-99c3-7df59d9690ee",
              "parent_uuid": "f56577a4-f591-4ad9-9584-7f470637943c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03c68f57-4983-4a66-8d45-a899f7e99c03",
                  "parent_uuid": "a9a65ed4-6086-4ca3-99c3-7df59d9690ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fbc56b31-627e-432a-a6e0-bec9eef89d7c",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a5758d3-b308-4dbf-809c-fa0952d8bc63",
              "parent_uuid": "fbc56b31-627e-432a-a6e0-bec9eef89d7c",
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
          "uuid": "f503e26a-7ad8-4609-877b-fa2825788930",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f84dc75-c89c-412d-a192-0ad9601d11d8",
              "parent_uuid": "f503e26a-7ad8-4609-877b-fa2825788930",
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
          "uuid": "f5538338-5080-420d-bced-b086d44193e9",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85ebb9a3-2a5e-43ba-a2f8-20950ec7c23e",
              "parent_uuid": "f5538338-5080-420d-bced-b086d44193e9",
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
                  "uuid": "828010c4-5bbb-4ec1-bdc7-72c5a469344e",
                  "parent_uuid": "85ebb9a3-2a5e-43ba-a2f8-20950ec7c23e",
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
          "uuid": "ab2db82e-47db-4376-825c-32d43b89dc2d",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3518abe7-8a8a-45b4-9301-e30ca302fb97",
              "parent_uuid": "ab2db82e-47db-4376-825c-32d43b89dc2d",
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
          "uuid": "4f2873e2-ee49-470c-b807-245ea5c02efb",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "817048b6-abbc-4440-9487-e2651303d4c3",
              "parent_uuid": "4f2873e2-ee49-470c-b807-245ea5c02efb",
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
          "uuid": "c40ee833-05d5-4a79-8e27-161192e0d7bf",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bd057a4e-d55a-4f0d-b041-a6a4e7c012e0",
              "parent_uuid": "c40ee833-05d5-4a79-8e27-161192e0d7bf",
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
              "uuid": "d2a1aa9c-811f-4969-a25b-3d88d9f228c6",
              "parent_uuid": "c40ee833-05d5-4a79-8e27-161192e0d7bf",
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
              "uuid": "773bd201-c063-4b92-a815-0e7ef33a5bd6",
              "parent_uuid": "c40ee833-05d5-4a79-8e27-161192e0d7bf",
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
              "uuid": "edc1584b-69ad-4f07-8d03-dc9c2b134a26",
              "parent_uuid": "c40ee833-05d5-4a79-8e27-161192e0d7bf",
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
          "uuid": "a46f57cf-51cd-42f3-8785-1b57a7040a79",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "974dc8db-eda5-44ab-b788-9400174df9b8",
              "parent_uuid": "a46f57cf-51cd-42f3-8785-1b57a7040a79",
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
              "uuid": "c2d2e588-47b4-4693-87a4-666e4d456cf5",
              "parent_uuid": "a46f57cf-51cd-42f3-8785-1b57a7040a79",
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
              "uuid": "e37fd298-f463-4bd9-b420-fbaeaadfb819",
              "parent_uuid": "a46f57cf-51cd-42f3-8785-1b57a7040a79",
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
              "uuid": "f04e4290-dddc-46f8-bf96-a13b90750137",
              "parent_uuid": "a46f57cf-51cd-42f3-8785-1b57a7040a79",
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
          "uuid": "61a2d0f4-458f-496b-82b7-ceffc1a6ec42",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "acddd469-9630-4c99-b7c1-6ebbcb1d64a7",
              "parent_uuid": "61a2d0f4-458f-496b-82b7-ceffc1a6ec42",
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
              "uuid": "efbbe6de-2c06-4bc9-9e44-c2c9e530323c",
              "parent_uuid": "61a2d0f4-458f-496b-82b7-ceffc1a6ec42",
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
              "uuid": "7ca54ee2-8d40-48be-bb79-45feac01565c",
              "parent_uuid": "61a2d0f4-458f-496b-82b7-ceffc1a6ec42",
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
              "uuid": "dd5a2539-7d47-43a9-ae0f-dccdd3daa2a4",
              "parent_uuid": "61a2d0f4-458f-496b-82b7-ceffc1a6ec42",
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
          "uuid": "bd3a4664-e4d4-4e0a-b571-cc14d31b20b0",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bffb9633-66b0-4e19-a649-dcc884dc7967",
              "parent_uuid": "bd3a4664-e4d4-4e0a-b571-cc14d31b20b0",
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
              "uuid": "a40d60df-520b-44bc-9241-328f8d85d663",
              "parent_uuid": "bd3a4664-e4d4-4e0a-b571-cc14d31b20b0",
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
              "uuid": "6b035f1b-3071-4846-b842-0bf5663f5b3e",
              "parent_uuid": "bd3a4664-e4d4-4e0a-b571-cc14d31b20b0",
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
              "uuid": "bd8a34ef-d587-471a-89cb-aadaae27feb1",
              "parent_uuid": "bd3a4664-e4d4-4e0a-b571-cc14d31b20b0",
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
          "uuid": "e119ef67-5bd2-4887-8ae3-cf001d67dc92",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da7f3483-3348-4a3f-aa86-b1061e5675a6",
              "parent_uuid": "e119ef67-5bd2-4887-8ae3-cf001d67dc92",
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
              "uuid": "cd9a550b-206f-43d5-866c-d542cea25319",
              "parent_uuid": "e119ef67-5bd2-4887-8ae3-cf001d67dc92",
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
              "uuid": "3cacb140-4e6a-473d-9c76-00f0a901c426",
              "parent_uuid": "e119ef67-5bd2-4887-8ae3-cf001d67dc92",
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
              "uuid": "8ead1000-a8fc-46a4-ac5a-00e2c73e2cb1",
              "parent_uuid": "e119ef67-5bd2-4887-8ae3-cf001d67dc92",
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
          "uuid": "35808cfa-ac0f-43db-a5f5-b1227bdd3eea",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5af9a87b-475d-4678-b41e-38fd0ec9c743",
              "parent_uuid": "35808cfa-ac0f-43db-a5f5-b1227bdd3eea",
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
              "uuid": "c68c9011-868b-42a5-b302-413a0a6120fe",
              "parent_uuid": "35808cfa-ac0f-43db-a5f5-b1227bdd3eea",
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
              "uuid": "dd717636-f1e5-4418-84e3-4c006f21f436",
              "parent_uuid": "35808cfa-ac0f-43db-a5f5-b1227bdd3eea",
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
              "uuid": "a39c5d70-58c2-4c95-ab60-ed3ebe0793f2",
              "parent_uuid": "35808cfa-ac0f-43db-a5f5-b1227bdd3eea",
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
          "uuid": "b625e0d7-c5c3-4836-a1ec-c1f77dbe3880",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d844cc7-4580-46d0-b923-fa8c91f16141",
              "parent_uuid": "b625e0d7-c5c3-4836-a1ec-c1f77dbe3880",
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
              "uuid": "403aaa50-cd92-40a3-979f-fe9ea860fb7f",
              "parent_uuid": "b625e0d7-c5c3-4836-a1ec-c1f77dbe3880",
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
              "uuid": "a74f90f7-6180-4e73-9d63-d7a3cacf9cc7",
              "parent_uuid": "b625e0d7-c5c3-4836-a1ec-c1f77dbe3880",
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
              "uuid": "b1638abf-db3f-43df-b515-34062fc5920d",
              "parent_uuid": "b625e0d7-c5c3-4836-a1ec-c1f77dbe3880",
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
          "uuid": "f2c39f3a-2157-4766-acae-2cc5296145f4",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f427f87-8d89-4394-b703-6e43f10dfc63",
              "parent_uuid": "f2c39f3a-2157-4766-acae-2cc5296145f4",
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
              "uuid": "2838e4c9-fa16-4877-b70f-29fea63704ce",
              "parent_uuid": "f2c39f3a-2157-4766-acae-2cc5296145f4",
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
              "uuid": "e89aa926-01fe-4466-bf3c-c4f686b91d17",
              "parent_uuid": "f2c39f3a-2157-4766-acae-2cc5296145f4",
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
              "uuid": "d5a1f929-0a3d-4872-a20f-c4d4010d92b5",
              "parent_uuid": "f2c39f3a-2157-4766-acae-2cc5296145f4",
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
          "uuid": "c8546097-e139-4064-8098-96e976d2d9fb",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cccdf0ab-38ce-4b82-8523-62edcd944dc0",
              "parent_uuid": "c8546097-e139-4064-8098-96e976d2d9fb",
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
              "uuid": "1efb127e-547d-4061-b5f3-ca6105e77756",
              "parent_uuid": "c8546097-e139-4064-8098-96e976d2d9fb",
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
              "uuid": "3ff1b294-f945-48c4-8f99-534953c7e7b2",
              "parent_uuid": "c8546097-e139-4064-8098-96e976d2d9fb",
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
              "uuid": "d1c55fe9-7da0-4c92-b1f7-6998db92d98b",
              "parent_uuid": "c8546097-e139-4064-8098-96e976d2d9fb",
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
          "uuid": "cee27daf-9540-4100-ac36-0f367e71b966",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3076cfe-b78a-4748-aa2f-e49e361b5fb0",
              "parent_uuid": "cee27daf-9540-4100-ac36-0f367e71b966",
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
          "uuid": "175bfeb7-a867-4da1-9758-f271080229e2",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb0c8573-0fda-4f63-ab57-830218d99250",
              "parent_uuid": "175bfeb7-a867-4da1-9758-f271080229e2",
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
          "uuid": "60063523-5e7f-4774-8283-407ef41524e2",
          "parent_uuid": "ad4080c0-5b12-40a0-bd2c-31c35fd6e346",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc7c074f-a7c8-403a-8e81-b3097ab7479a",
              "parent_uuid": "60063523-5e7f-4774-8283-407ef41524e2",
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
                  "uuid": "aab15ccd-4a05-4fad-8d74-eee43af7d6dd",
                  "parent_uuid": "bc7c074f-a7c8-403a-8e81-b3097ab7479a",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

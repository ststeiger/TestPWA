
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
  "uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "18725d89-e958-4929-b596-9eebf044cc80",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "f1fc0302-2db0-4c0d-8da2-ef4e354efcf3",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "9e749b2a-f7af-4ae4-8439-4fc41b321daf",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "78921191-9250-4662-991d-72bd8ed1e50f",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "4f753670-1276-4daa-84eb-89e757ed9d37",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "adc6a798-1de0-4728-9246-03654ef93fcf",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "2b7fe991-50fd-4dee-81d4-e7e047201444",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
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
      "uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
      "parent_uuid": "a4b4e84b-636f-4ad4-b372-f3dfc6c5c747",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "a4429603-d76e-4362-8205-6f550e2d4e39",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "ca846166-e4eb-4fa1-b104-01063731d514",
              "parent_uuid": "a4429603-d76e-4362-8205-6f550e2d4e39",
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
              "uuid": "c6d87a90-7f60-4043-9305-7c323e470ee2",
              "parent_uuid": "a4429603-d76e-4362-8205-6f550e2d4e39",
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
              "uuid": "42a419a4-3882-4d7b-b67b-ed1012235175",
              "parent_uuid": "a4429603-d76e-4362-8205-6f550e2d4e39",
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
              "uuid": "fe023d1d-8217-4621-92c4-15977c41bec3",
              "parent_uuid": "a4429603-d76e-4362-8205-6f550e2d4e39",
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
          "uuid": "a133d16c-3afd-48e4-8afe-c073bb256b39",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "16c4c056-b855-40d6-a880-289a7ca54832",
              "parent_uuid": "a133d16c-3afd-48e4-8afe-c073bb256b39",
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
              "uuid": "b0b82b5b-8cc0-4566-b2bf-588f2b60d5bd",
              "parent_uuid": "a133d16c-3afd-48e4-8afe-c073bb256b39",
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
              "uuid": "ed22c154-b9ee-4a4f-8f5f-b9e1e6b47d29",
              "parent_uuid": "a133d16c-3afd-48e4-8afe-c073bb256b39",
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
              "uuid": "8349c43a-8eee-4f05-adf6-f0c5934d595b",
              "parent_uuid": "a133d16c-3afd-48e4-8afe-c073bb256b39",
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
          "uuid": "5b5903e8-a237-4fb9-8b4f-d8ea90a18e37",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "6cc8ccd7-ea29-4218-bba0-0e34e331183d",
              "parent_uuid": "5b5903e8-a237-4fb9-8b4f-d8ea90a18e37",
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
              "uuid": "53944b16-c207-44dd-94e8-dcb6ee550e94",
              "parent_uuid": "5b5903e8-a237-4fb9-8b4f-d8ea90a18e37",
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
              "uuid": "b2a53563-e0c6-406f-b627-15aabf2606db",
              "parent_uuid": "5b5903e8-a237-4fb9-8b4f-d8ea90a18e37",
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
              "uuid": "6841cd17-ad8c-456e-8ea6-14dd79a2be8b",
              "parent_uuid": "5b5903e8-a237-4fb9-8b4f-d8ea90a18e37",
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
          "uuid": "4e285bad-dbf1-4a33-b80d-eaeb8ce89f2d",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33e6d5ce-bafa-4338-8bbe-246ed4459bd2",
              "parent_uuid": "4e285bad-dbf1-4a33-b80d-eaeb8ce89f2d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "55499aea-d006-47b1-b086-628525673581",
              "parent_uuid": "4e285bad-dbf1-4a33-b80d-eaeb8ce89f2d",
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
              "uuid": "b9b0da6a-4beb-4d28-8006-fbd2c170999d",
              "parent_uuid": "4e285bad-dbf1-4a33-b80d-eaeb8ce89f2d",
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
              "uuid": "1bb8dcc5-4d28-4391-a0ad-66d1da950527",
              "parent_uuid": "4e285bad-dbf1-4a33-b80d-eaeb8ce89f2d",
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
              "uuid": "8dde4ce6-746d-411d-bd83-4cf5cf33ab1f",
              "parent_uuid": "4e285bad-dbf1-4a33-b80d-eaeb8ce89f2d",
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
              "uuid": "db33e6c0-2814-4787-82a8-b1a6d9815176",
              "parent_uuid": "4e285bad-dbf1-4a33-b80d-eaeb8ce89f2d",
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
          "uuid": "d94466ef-5868-4ddb-8fac-01c4a5bc053b",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "627cbc88-f539-429b-872d-ec72beee507f",
              "parent_uuid": "d94466ef-5868-4ddb-8fac-01c4a5bc053b",
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
          "uuid": "0402ab6b-cde1-485d-bd2f-db8b6e029cbe",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2baf748a-ff32-4026-a6e3-8d41f600fbdd",
              "parent_uuid": "0402ab6b-cde1-485d-bd2f-db8b6e029cbe",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "486dd170-0883-49dd-bc1b-e6836f54cb6c",
              "parent_uuid": "0402ab6b-cde1-485d-bd2f-db8b6e029cbe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "18d6571f-0530-457b-baa8-4041b6c10ffc",
              "parent_uuid": "0402ab6b-cde1-485d-bd2f-db8b6e029cbe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "4d8dc1e4-b5f5-4835-b4a9-5d81263bcb79",
                  "parent_uuid": "18d6571f-0530-457b-baa8-4041b6c10ffc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a357da0-c578-4cb8-bfdf-1369bd3a3ed8",
              "parent_uuid": "0402ab6b-cde1-485d-bd2f-db8b6e029cbe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "fceb33e3-b3ef-4fb1-952d-1ae31baa8bf6",
                  "parent_uuid": "6a357da0-c578-4cb8-bfdf-1369bd3a3ed8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7aa27579-da2e-4ac3-830f-4e3f69edf534",
              "parent_uuid": "0402ab6b-cde1-485d-bd2f-db8b6e029cbe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "75ef9a60-f2a9-4053-8f0e-4513790705fb",
                  "parent_uuid": "7aa27579-da2e-4ac3-830f-4e3f69edf534",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b029a06-4b46-4de1-b9a7-8ce39d1cb799",
              "parent_uuid": "0402ab6b-cde1-485d-bd2f-db8b6e029cbe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "05cbba42-0f42-4c97-b5d4-77930e55f844",
                  "parent_uuid": "4b029a06-4b46-4de1-b9a7-8ce39d1cb799",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c105e6e4-0e44-4dfb-8164-0cab17c448d4",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0dce481a-7b51-4cf0-ba4f-7c8e23451ca1",
              "parent_uuid": "c105e6e4-0e44-4dfb-8164-0cab17c448d4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8368c7a0-5be1-428b-a08d-ca2551a7b28e",
              "parent_uuid": "c105e6e4-0e44-4dfb-8164-0cab17c448d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ac656819-59b8-4f16-bc45-72e457dce254",
              "parent_uuid": "c105e6e4-0e44-4dfb-8164-0cab17c448d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ee8e64db-fb53-4873-8ecb-d4e83038cf8c",
                  "parent_uuid": "ac656819-59b8-4f16-bc45-72e457dce254",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a135652f-45d0-4566-8078-0befde40c929",
              "parent_uuid": "c105e6e4-0e44-4dfb-8164-0cab17c448d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "56a2d928-1463-419d-b9e3-1f1ecc2aa873",
                  "parent_uuid": "a135652f-45d0-4566-8078-0befde40c929",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77ca7c2a-5539-4bf9-be45-ab8070d6edd8",
              "parent_uuid": "c105e6e4-0e44-4dfb-8164-0cab17c448d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "f1e3a085-eba1-4f8d-b42e-ca8ddfb11909",
                  "parent_uuid": "77ca7c2a-5539-4bf9-be45-ab8070d6edd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "375b1dcd-9265-4841-a32f-596e323d7cfc",
              "parent_uuid": "c105e6e4-0e44-4dfb-8164-0cab17c448d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "22044498-2ce0-4952-893c-52f3434e4c2c",
                  "parent_uuid": "375b1dcd-9265-4841-a32f-596e323d7cfc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37f214ba-d83e-4b21-8cad-4405043cd4f0",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de5da035-912a-45c4-a551-61c2d44e76d5",
              "parent_uuid": "37f214ba-d83e-4b21-8cad-4405043cd4f0",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "aceaeef9-79aa-4025-bb67-efe5c126e9c8",
              "parent_uuid": "37f214ba-d83e-4b21-8cad-4405043cd4f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "90ea301b-b7a0-4c4e-aa65-a850306b7fbe",
              "parent_uuid": "37f214ba-d83e-4b21-8cad-4405043cd4f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "360f6626-04c9-44e9-9e43-96faef324603",
                  "parent_uuid": "90ea301b-b7a0-4c4e-aa65-a850306b7fbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10d2426a-dd55-4583-ab8d-dc6c064a3f0b",
              "parent_uuid": "37f214ba-d83e-4b21-8cad-4405043cd4f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cec22ae7-33c0-4654-8e48-f5f325e85999",
                  "parent_uuid": "10d2426a-dd55-4583-ab8d-dc6c064a3f0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f4248c0-6ff2-4cb9-9bb8-533ea06fe384",
              "parent_uuid": "37f214ba-d83e-4b21-8cad-4405043cd4f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5352ebb5-53c1-40a6-8a97-e83c0eda4959",
                  "parent_uuid": "4f4248c0-6ff2-4cb9-9bb8-533ea06fe384",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0930de6c-c04b-4b40-bff9-4179060271ea",
              "parent_uuid": "37f214ba-d83e-4b21-8cad-4405043cd4f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15db8313-352a-4e26-bbc8-e377f00fd388",
                  "parent_uuid": "0930de6c-c04b-4b40-bff9-4179060271ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e35bf31-e254-4de8-83d0-99bca02cba34",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c8ea97b-ed1e-41b0-85a8-3a145cd134bc",
              "parent_uuid": "8e35bf31-e254-4de8-83d0-99bca02cba34",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "593afb1a-f0c2-4165-9c92-ba86caf2192b",
              "parent_uuid": "8e35bf31-e254-4de8-83d0-99bca02cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "edf6ab3a-c2b3-46e1-a49c-00bbeb6a30d6",
              "parent_uuid": "8e35bf31-e254-4de8-83d0-99bca02cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1df62ec-380f-417c-b56e-9cd9fb04eefe",
                  "parent_uuid": "edf6ab3a-c2b3-46e1-a49c-00bbeb6a30d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fd1c965-3481-462a-be7c-2cf27a971f07",
              "parent_uuid": "8e35bf31-e254-4de8-83d0-99bca02cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "697dca8b-01e3-465a-82a5-4dc9ed392231",
                  "parent_uuid": "6fd1c965-3481-462a-be7c-2cf27a971f07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d5398cf-5022-4e35-8ea2-10eec331a944",
              "parent_uuid": "8e35bf31-e254-4de8-83d0-99bca02cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "357799dd-306a-476a-9919-30a69dc6daec",
                  "parent_uuid": "0d5398cf-5022-4e35-8ea2-10eec331a944",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "beb154f2-ab88-4de7-aeb6-08de2e7601c6",
              "parent_uuid": "8e35bf31-e254-4de8-83d0-99bca02cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e060d0ab-5f42-408e-8c73-86278c6d8f2c",
                  "parent_uuid": "beb154f2-ab88-4de7-aeb6-08de2e7601c6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd0ac0ff-b329-471b-80da-978f0967257d",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e09f992-dd06-4376-8e9e-c01fd2a25224",
              "parent_uuid": "fd0ac0ff-b329-471b-80da-978f0967257d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1a080808-81aa-4a02-8b81-522be38c436d",
              "parent_uuid": "fd0ac0ff-b329-471b-80da-978f0967257d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "8425bbb6-5c01-4e22-917f-f008f15fa849",
              "parent_uuid": "fd0ac0ff-b329-471b-80da-978f0967257d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "015b1e20-bfd3-4c85-b920-04ca959d21b7",
                  "parent_uuid": "8425bbb6-5c01-4e22-917f-f008f15fa849",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "474503d3-f98f-40cf-9e55-72a6c82f9bca",
              "parent_uuid": "fd0ac0ff-b329-471b-80da-978f0967257d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c97c696f-fac3-47cf-af14-0a473056ad46",
                  "parent_uuid": "474503d3-f98f-40cf-9e55-72a6c82f9bca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6591568a-511a-46dc-99ac-854c99e5d67d",
              "parent_uuid": "fd0ac0ff-b329-471b-80da-978f0967257d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd9e4268-c8a6-4799-aa7e-96e97cb80a1d",
                  "parent_uuid": "6591568a-511a-46dc-99ac-854c99e5d67d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b4eae00-dd1f-4cf8-9b32-f838a05b9d0c",
              "parent_uuid": "fd0ac0ff-b329-471b-80da-978f0967257d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32842555-6c60-4b8f-8125-293c683a14d2",
                  "parent_uuid": "5b4eae00-dd1f-4cf8-9b32-f838a05b9d0c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b35ff39f-eb19-4fbb-843c-8243fe403663",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b328832c-8411-4566-85bd-fb5e2c82e89b",
              "parent_uuid": "b35ff39f-eb19-4fbb-843c-8243fe403663",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dbcfa982-f512-4c6f-9e39-4bfee3b6a457",
              "parent_uuid": "b35ff39f-eb19-4fbb-843c-8243fe403663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "37cc33da-56da-41a6-a8cb-e7b83bcf34fa",
              "parent_uuid": "b35ff39f-eb19-4fbb-843c-8243fe403663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2148799d-0756-4b62-9299-e3743844c729",
                  "parent_uuid": "37cc33da-56da-41a6-a8cb-e7b83bcf34fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53b58b0c-a980-425a-bbbe-cb60b3f7744c",
              "parent_uuid": "b35ff39f-eb19-4fbb-843c-8243fe403663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7971e386-548c-4014-8f27-4fbce1cbbf27",
                  "parent_uuid": "53b58b0c-a980-425a-bbbe-cb60b3f7744c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69f0aaf4-d711-48d4-b30e-dec62e42b16b",
              "parent_uuid": "b35ff39f-eb19-4fbb-843c-8243fe403663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c6ecb67-e9d8-4e87-9e7b-09909b07d665",
                  "parent_uuid": "69f0aaf4-d711-48d4-b30e-dec62e42b16b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "799f8863-384a-4de6-acce-8e47515ffaf6",
              "parent_uuid": "b35ff39f-eb19-4fbb-843c-8243fe403663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f974d411-cd9d-4d72-b351-cf6a08c684b3",
                  "parent_uuid": "799f8863-384a-4de6-acce-8e47515ffaf6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ab1519ad-8097-45de-b5f7-95341ed5cdd6",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0473d383-15b3-4016-9654-46edc5398496",
              "parent_uuid": "ab1519ad-8097-45de-b5f7-95341ed5cdd6",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bed4cc03-339c-4c27-9c4e-080674199bd0",
              "parent_uuid": "ab1519ad-8097-45de-b5f7-95341ed5cdd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "47dc9a1b-7d67-451c-889d-81157ea4877e",
              "parent_uuid": "ab1519ad-8097-45de-b5f7-95341ed5cdd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45c7b1cd-d9b4-4694-9366-58fd4d06c40f",
                  "parent_uuid": "47dc9a1b-7d67-451c-889d-81157ea4877e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5653f486-1e35-4f51-a6e3-5148c2985654",
              "parent_uuid": "ab1519ad-8097-45de-b5f7-95341ed5cdd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fed4f0d-d3ce-406a-bf18-7fb913e5a14a",
                  "parent_uuid": "5653f486-1e35-4f51-a6e3-5148c2985654",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2ff0835-103b-4403-9c3b-ba8c67d345c7",
              "parent_uuid": "ab1519ad-8097-45de-b5f7-95341ed5cdd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6a0c038-8bbd-431c-a108-8eb62143b345",
                  "parent_uuid": "a2ff0835-103b-4403-9c3b-ba8c67d345c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bc816b3-1f47-44c2-94a2-9f833a1175ab",
              "parent_uuid": "ab1519ad-8097-45de-b5f7-95341ed5cdd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cabeee8c-0eb7-4eea-bd5b-552f72c8eae6",
                  "parent_uuid": "6bc816b3-1f47-44c2-94a2-9f833a1175ab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f842198e-e920-402f-bc9a-f91d613b34b7",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "008a6f5d-2e05-4e28-a36e-fe6d36d0f67e",
              "parent_uuid": "f842198e-e920-402f-bc9a-f91d613b34b7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "98618539-b0a2-47d8-8594-fc0ae14f2f04",
              "parent_uuid": "f842198e-e920-402f-bc9a-f91d613b34b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ad743efb-2148-464e-9705-553e529feaea",
              "parent_uuid": "f842198e-e920-402f-bc9a-f91d613b34b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f732e5ce-68c3-4439-866e-6946af1172e0",
                  "parent_uuid": "ad743efb-2148-464e-9705-553e529feaea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1e02057-857d-4882-9df8-21de0600fa22",
              "parent_uuid": "f842198e-e920-402f-bc9a-f91d613b34b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef8223ba-3830-4457-84cc-339b4585e1a6",
                  "parent_uuid": "f1e02057-857d-4882-9df8-21de0600fa22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a733042-627c-4e48-8fc8-f90d5f62081c",
              "parent_uuid": "f842198e-e920-402f-bc9a-f91d613b34b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5165a52f-3fe5-4239-bff1-857edf833410",
                  "parent_uuid": "6a733042-627c-4e48-8fc8-f90d5f62081c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1a00977-6c6a-4a0e-b10e-9ab6efdee270",
              "parent_uuid": "f842198e-e920-402f-bc9a-f91d613b34b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6d004e9-c101-4a55-8146-170ba887fdc0",
                  "parent_uuid": "e1a00977-6c6a-4a0e-b10e-9ab6efdee270",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73be34c7-2eb4-4114-a4ea-b0ce94569125",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae7ea539-e377-40f7-b82e-cd2de4069329",
              "parent_uuid": "73be34c7-2eb4-4114-a4ea-b0ce94569125",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "16247298-2613-4861-a004-0082383e7d13",
              "parent_uuid": "73be34c7-2eb4-4114-a4ea-b0ce94569125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "7bd5edc0-c7dc-412d-bb23-fa0d09ae50db",
              "parent_uuid": "73be34c7-2eb4-4114-a4ea-b0ce94569125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69f29dae-5b90-40c9-8271-2a003ee4f594",
                  "parent_uuid": "7bd5edc0-c7dc-412d-bb23-fa0d09ae50db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81dced69-a7fb-404f-8caf-d3576184bd41",
              "parent_uuid": "73be34c7-2eb4-4114-a4ea-b0ce94569125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4508b45b-bd00-4831-8277-f2244a2bfb42",
                  "parent_uuid": "81dced69-a7fb-404f-8caf-d3576184bd41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0dab0c3-8759-4c97-b7c9-5b7a382b29cd",
              "parent_uuid": "73be34c7-2eb4-4114-a4ea-b0ce94569125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc37761e-d966-4187-b091-c97efbd802a5",
                  "parent_uuid": "c0dab0c3-8759-4c97-b7c9-5b7a382b29cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2221473-db8c-412c-baf7-9a123fd953e5",
              "parent_uuid": "73be34c7-2eb4-4114-a4ea-b0ce94569125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b20b76a-0e5d-40a3-92e6-4f90670f3725",
                  "parent_uuid": "c2221473-db8c-412c-baf7-9a123fd953e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "94440fd4-1097-4607-89ac-8c3d7a3bd49d",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39dc182a-904b-49cc-95bc-19d097dc82f9",
              "parent_uuid": "94440fd4-1097-4607-89ac-8c3d7a3bd49d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d62392b8-a429-4732-8b52-5d9e077e44cd",
              "parent_uuid": "94440fd4-1097-4607-89ac-8c3d7a3bd49d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "43874067-1a9d-41c2-ba28-2a9a87222bc7",
              "parent_uuid": "94440fd4-1097-4607-89ac-8c3d7a3bd49d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af87c861-aced-4247-91e3-34927f407d1b",
                  "parent_uuid": "43874067-1a9d-41c2-ba28-2a9a87222bc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b8aad3a-21c2-4c3d-b2ef-5e7ab6f2261e",
              "parent_uuid": "94440fd4-1097-4607-89ac-8c3d7a3bd49d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "157f491d-3424-40ce-a4ca-dd5c6bceae95",
                  "parent_uuid": "4b8aad3a-21c2-4c3d-b2ef-5e7ab6f2261e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf89d603-eb79-47a4-811a-8953561fccd9",
              "parent_uuid": "94440fd4-1097-4607-89ac-8c3d7a3bd49d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcd2938f-99ce-4575-a754-55e1242b047c",
                  "parent_uuid": "bf89d603-eb79-47a4-811a-8953561fccd9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5be47eaa-31ff-4bbd-b1a1-fe219bcd35fc",
              "parent_uuid": "94440fd4-1097-4607-89ac-8c3d7a3bd49d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2cce17a-eda4-48d9-a770-e4ac82f92975",
                  "parent_uuid": "5be47eaa-31ff-4bbd-b1a1-fe219bcd35fc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cb0b9381-7061-42ab-8a26-c67b55f16da9",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "067e058c-7363-4f92-bad0-7a79d3f6f9e2",
              "parent_uuid": "cb0b9381-7061-42ab-8a26-c67b55f16da9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "110fbacf-108f-4363-a2ec-dbbd3acce86a",
              "parent_uuid": "cb0b9381-7061-42ab-8a26-c67b55f16da9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "8a656828-e0c4-450e-bc90-388563efae17",
              "parent_uuid": "cb0b9381-7061-42ab-8a26-c67b55f16da9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d0d0c77-ac2c-42c6-923c-4bf70650d4b0",
                  "parent_uuid": "8a656828-e0c4-450e-bc90-388563efae17",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc90a236-2e9b-4281-a9a0-8d6261d534eb",
              "parent_uuid": "cb0b9381-7061-42ab-8a26-c67b55f16da9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "102bbdc6-6e09-4384-9f13-7f56d7609cd6",
                  "parent_uuid": "bc90a236-2e9b-4281-a9a0-8d6261d534eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bdef6103-225e-46c0-8b46-50ee055baa70",
              "parent_uuid": "cb0b9381-7061-42ab-8a26-c67b55f16da9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fee9452-764f-4ad1-8110-2682a0494bbb",
                  "parent_uuid": "bdef6103-225e-46c0-8b46-50ee055baa70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b644d48-5d37-46d1-99bc-6b6f585faaa3",
              "parent_uuid": "cb0b9381-7061-42ab-8a26-c67b55f16da9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fefc50c-ffa0-4feb-b550-b81539616dda",
                  "parent_uuid": "7b644d48-5d37-46d1-99bc-6b6f585faaa3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5e49cbaa-6acf-4813-915b-ca22c73383f6",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c04b2e86-9f2c-4296-ab14-79b7c2082aea",
              "parent_uuid": "5e49cbaa-6acf-4813-915b-ca22c73383f6",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "325d22c6-5223-44dc-82b1-e90c5856b830",
              "parent_uuid": "5e49cbaa-6acf-4813-915b-ca22c73383f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "affef405-aca0-4a91-af7f-c80a72e9988d",
              "parent_uuid": "5e49cbaa-6acf-4813-915b-ca22c73383f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf1b940d-7932-4890-b5a5-0d86761a09cc",
                  "parent_uuid": "affef405-aca0-4a91-af7f-c80a72e9988d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e404522-e94c-448e-ad16-5d1cb992c93a",
              "parent_uuid": "5e49cbaa-6acf-4813-915b-ca22c73383f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed08ca16-37e1-43e5-8ce0-5130ae8f6816",
                  "parent_uuid": "8e404522-e94c-448e-ad16-5d1cb992c93a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b838d685-470a-4cb7-934d-8ebcceef8cf8",
              "parent_uuid": "5e49cbaa-6acf-4813-915b-ca22c73383f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d4fbd33-fb71-4cd9-b623-f0259042e64c",
                  "parent_uuid": "b838d685-470a-4cb7-934d-8ebcceef8cf8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2049dd8-a1c8-407b-a14d-cf814d0a16ab",
              "parent_uuid": "5e49cbaa-6acf-4813-915b-ca22c73383f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f13bd26b-c26b-4a66-812b-fcffb9767d78",
                  "parent_uuid": "d2049dd8-a1c8-407b-a14d-cf814d0a16ab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "386eb7bf-6db5-4191-b97d-2b3f783d7172",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "15501adc-a4c3-4c17-a7f8-6dd46acf860f",
              "parent_uuid": "386eb7bf-6db5-4191-b97d-2b3f783d7172",
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
          "uuid": "38b2bedc-e0d6-4466-bffc-5a415bd5af1d",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9877b6c1-d6ff-4973-b8a0-911819f21f09",
              "parent_uuid": "38b2bedc-e0d6-4466-bffc-5a415bd5af1d",
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
          "uuid": "5e3829f4-3d87-4536-90ac-ed5733e582a2",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85753c40-85da-4962-b549-7c7601943d46",
              "parent_uuid": "5e3829f4-3d87-4536-90ac-ed5733e582a2",
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
                  "uuid": "4df25569-c064-4fc0-aae4-69f29367cc90",
                  "parent_uuid": "85753c40-85da-4962-b549-7c7601943d46",
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
          "uuid": "3d3c83db-6460-421d-965a-d40d23a30426",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b39b448-47b7-4117-a537-23f45365b881",
              "parent_uuid": "3d3c83db-6460-421d-965a-d40d23a30426",
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
          "uuid": "08f8610b-109e-4a5b-87cf-393b80254677",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "30b80957-60ed-467a-842a-4e8093911270",
              "parent_uuid": "08f8610b-109e-4a5b-87cf-393b80254677",
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
          "uuid": "eff280ce-b20f-41c9-a9c7-76c8743884c7",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "729bdfc9-e01f-404c-8a5b-4daeedf16765",
              "parent_uuid": "eff280ce-b20f-41c9-a9c7-76c8743884c7",
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
              "uuid": "d655f014-1b5d-426d-a671-914b282931af",
              "parent_uuid": "eff280ce-b20f-41c9-a9c7-76c8743884c7",
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
              "uuid": "26fffae0-6a1f-4c6f-878b-7c75521e8a0e",
              "parent_uuid": "eff280ce-b20f-41c9-a9c7-76c8743884c7",
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
              "uuid": "1fd5ee1f-68e1-4190-8241-1665f161208a",
              "parent_uuid": "eff280ce-b20f-41c9-a9c7-76c8743884c7",
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
              "uuid": "3cae3cf3-bc85-428d-b3da-fce8e3ec9cb4",
              "parent_uuid": "eff280ce-b20f-41c9-a9c7-76c8743884c7",
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
              "uuid": "9062550c-fc5e-4b93-8686-3b2ec70350ce",
              "parent_uuid": "eff280ce-b20f-41c9-a9c7-76c8743884c7",
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
          "uuid": "cea23fd8-ad6d-4d5f-8b2e-7783ee6ac73a",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a2a4bd6-ed9d-40cb-a82a-f7c3101f3a69",
              "parent_uuid": "cea23fd8-ad6d-4d5f-8b2e-7783ee6ac73a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3aca013c-09ff-4917-b08f-5aa897e7a295",
              "parent_uuid": "cea23fd8-ad6d-4d5f-8b2e-7783ee6ac73a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "2fa08e0f-4c9a-426e-9f2a-b2c8bb0da294",
              "parent_uuid": "cea23fd8-ad6d-4d5f-8b2e-7783ee6ac73a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a8d25dc-5bd1-4878-a669-56906ddc451d",
                  "parent_uuid": "2fa08e0f-4c9a-426e-9f2a-b2c8bb0da294",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5083de39-f23d-4ad3-9a39-fd2d480c595a",
              "parent_uuid": "cea23fd8-ad6d-4d5f-8b2e-7783ee6ac73a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f037722a-981f-4855-aae9-6ef7ce75ea8e",
                  "parent_uuid": "5083de39-f23d-4ad3-9a39-fd2d480c595a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de1cf276-15a8-47fd-8d58-4a96d10ee728",
              "parent_uuid": "cea23fd8-ad6d-4d5f-8b2e-7783ee6ac73a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a79c3336-a88e-44c9-ae84-ac1496ebd1e5",
                  "parent_uuid": "de1cf276-15a8-47fd-8d58-4a96d10ee728",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9055cc32-fc75-43c3-9791-fb71fd356051",
              "parent_uuid": "cea23fd8-ad6d-4d5f-8b2e-7783ee6ac73a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38f007e7-8f94-43bd-afd5-42c44b590d30",
                  "parent_uuid": "9055cc32-fc75-43c3-9791-fb71fd356051",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1bea03b8-9f8e-4204-9b2e-678a6c646c0c",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "99f36e5a-5aa5-4b99-8e4c-b1c334156a77",
              "parent_uuid": "1bea03b8-9f8e-4204-9b2e-678a6c646c0c",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "38f33be7-893b-4017-825c-326252fc8b3a",
              "parent_uuid": "1bea03b8-9f8e-4204-9b2e-678a6c646c0c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b30fca31-191b-4acd-9c4e-b568a06bfd11",
              "parent_uuid": "1bea03b8-9f8e-4204-9b2e-678a6c646c0c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8e55a82-16f6-48a3-a3b0-adfcf85933f6",
                  "parent_uuid": "b30fca31-191b-4acd-9c4e-b568a06bfd11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec7777bf-a704-4895-a19b-fa628b1e33bd",
              "parent_uuid": "1bea03b8-9f8e-4204-9b2e-678a6c646c0c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee9ee587-c003-49c6-8c09-9b821ff775a8",
                  "parent_uuid": "ec7777bf-a704-4895-a19b-fa628b1e33bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4f49865-4d01-4857-8bd6-c1b14d757b51",
              "parent_uuid": "1bea03b8-9f8e-4204-9b2e-678a6c646c0c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd234b69-ce38-42e3-8ef8-2ac2df342c2c",
                  "parent_uuid": "f4f49865-4d01-4857-8bd6-c1b14d757b51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b40bce8-02fc-44ec-964b-4173d440175a",
              "parent_uuid": "1bea03b8-9f8e-4204-9b2e-678a6c646c0c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81f0e470-8356-46d5-9e99-1916e10bc480",
                  "parent_uuid": "5b40bce8-02fc-44ec-964b-4173d440175a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d0a132e-2dc9-41f1-a8f8-315f358372fc",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e38d7f5-08e4-4673-984d-0a541a68afc0",
              "parent_uuid": "9d0a132e-2dc9-41f1-a8f8-315f358372fc",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f7b2e9a2-dec5-4e12-9be0-6de7b176aca0",
              "parent_uuid": "9d0a132e-2dc9-41f1-a8f8-315f358372fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "efd40db2-381e-4917-95fd-411611d7a863",
              "parent_uuid": "9d0a132e-2dc9-41f1-a8f8-315f358372fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcab0470-82b8-435a-b231-c9a199faea24",
                  "parent_uuid": "efd40db2-381e-4917-95fd-411611d7a863",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f0cc973-805b-47fb-8d70-3c43379602f2",
              "parent_uuid": "9d0a132e-2dc9-41f1-a8f8-315f358372fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "953029a9-fc9c-4709-92c8-12dde05153cc",
                  "parent_uuid": "5f0cc973-805b-47fb-8d70-3c43379602f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b57d5b5f-6fff-4c74-bbd3-434f1b1e5128",
              "parent_uuid": "9d0a132e-2dc9-41f1-a8f8-315f358372fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "839c54bb-8aa1-4e4a-9814-5c474aa6b5df",
                  "parent_uuid": "b57d5b5f-6fff-4c74-bbd3-434f1b1e5128",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "927ed882-d174-419a-86fe-cebbd16e5cfd",
              "parent_uuid": "9d0a132e-2dc9-41f1-a8f8-315f358372fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d20c04b5-297e-4918-9613-816705a14171",
                  "parent_uuid": "927ed882-d174-419a-86fe-cebbd16e5cfd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "972668d2-b9ff-4504-af58-d0ba54f7beb8",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6820c7b6-f8c8-4e32-a672-69e81928a39e",
              "parent_uuid": "972668d2-b9ff-4504-af58-d0ba54f7beb8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "519668cf-a382-4847-a9d5-897137a29d03",
              "parent_uuid": "972668d2-b9ff-4504-af58-d0ba54f7beb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "a56a1f54-ce4e-4c35-8923-cb90a7d14567",
              "parent_uuid": "972668d2-b9ff-4504-af58-d0ba54f7beb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0430338-13ad-40c6-8c7c-e5ff8a405898",
                  "parent_uuid": "a56a1f54-ce4e-4c35-8923-cb90a7d14567",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30982be1-7f27-4928-a72c-337662d345e5",
              "parent_uuid": "972668d2-b9ff-4504-af58-d0ba54f7beb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6812a4a1-ba8f-4def-8fec-171197313e5d",
                  "parent_uuid": "30982be1-7f27-4928-a72c-337662d345e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61754964-7853-4dde-81a6-90f1d2d90dae",
              "parent_uuid": "972668d2-b9ff-4504-af58-d0ba54f7beb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5aa9f92-159c-4d0d-afcb-9df6072603e5",
                  "parent_uuid": "61754964-7853-4dde-81a6-90f1d2d90dae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b575d514-49af-4310-abd5-d48955677c3d",
              "parent_uuid": "972668d2-b9ff-4504-af58-d0ba54f7beb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7527c93d-e814-4588-b2ec-5ce0d495b274",
                  "parent_uuid": "b575d514-49af-4310-abd5-d48955677c3d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bde89a8f-5346-4076-8ad4-d1b0ae5c211a",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "091935f4-20d8-46e5-93fe-2b7649fe225c",
              "parent_uuid": "bde89a8f-5346-4076-8ad4-d1b0ae5c211a",
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
          "uuid": "aeb61ee1-bad5-4e46-84de-4404e404aece",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "224286cd-52c1-4e36-890c-f6b2ea520daf",
              "parent_uuid": "aeb61ee1-bad5-4e46-84de-4404e404aece",
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
          "uuid": "8dd6c8d3-2682-42d2-aac9-0d3d8b610133",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "77bfb21b-587c-4f96-ac4f-b3785fd59fa5",
              "parent_uuid": "8dd6c8d3-2682-42d2-aac9-0d3d8b610133",
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
                  "uuid": "96cebe28-eba4-4055-82f0-454228ea0956",
                  "parent_uuid": "77bfb21b-587c-4f96-ac4f-b3785fd59fa5",
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
          "uuid": "40853686-2a86-43b6-ac85-389c8a59289b",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "677098a1-12f3-429e-b4dc-d7be8f551213",
              "parent_uuid": "40853686-2a86-43b6-ac85-389c8a59289b",
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
          "uuid": "cfe8ae93-9993-40df-9f86-7774094cab88",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "ea54cee9-a189-4d34-b561-3f5a39903837",
              "parent_uuid": "cfe8ae93-9993-40df-9f86-7774094cab88",
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
          "uuid": "e824624b-5395-4d2b-a235-434b60955c69",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85b54683-ae30-4682-a111-0c3f662d6ccf",
              "parent_uuid": "e824624b-5395-4d2b-a235-434b60955c69",
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
              "uuid": "a5eaa634-7824-4926-8209-17d2a62d9752",
              "parent_uuid": "e824624b-5395-4d2b-a235-434b60955c69",
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
              "uuid": "96fd8ea3-f348-4d20-ab7b-156166d52fe3",
              "parent_uuid": "e824624b-5395-4d2b-a235-434b60955c69",
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
              "uuid": "48660b81-fb4e-4d99-ac97-8af7c15c99c6",
              "parent_uuid": "e824624b-5395-4d2b-a235-434b60955c69",
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
              "uuid": "4927f2c1-ca3e-41a5-a774-aa80e1ecea00",
              "parent_uuid": "e824624b-5395-4d2b-a235-434b60955c69",
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
              "uuid": "7be521f7-9c1f-4c79-9d50-d9e5141e082d",
              "parent_uuid": "e824624b-5395-4d2b-a235-434b60955c69",
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
          "uuid": "fea79031-f9e3-48b9-ae03-fd00db646ad5",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "acac84b8-9d7d-440d-b028-938a5ab217e9",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d12cc753-a597-4051-9b8e-e22ad219f4a7",
              "parent_uuid": "acac84b8-9d7d-440d-b028-938a5ab217e9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e42f86f7-8b50-493e-aaf0-2e9f19e5de0d",
              "parent_uuid": "acac84b8-9d7d-440d-b028-938a5ab217e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c8850192-15e9-4d7e-8385-593d763b82f1",
              "parent_uuid": "acac84b8-9d7d-440d-b028-938a5ab217e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "844aab98-16df-4f6d-90f5-3796bb591b95",
                  "parent_uuid": "c8850192-15e9-4d7e-8385-593d763b82f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd242b5e-f4b4-416a-b4f4-d7849388797e",
              "parent_uuid": "acac84b8-9d7d-440d-b028-938a5ab217e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84ef92e9-0d91-4ec4-9476-e9b6546657fe",
                  "parent_uuid": "dd242b5e-f4b4-416a-b4f4-d7849388797e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bd445e9-492b-4aeb-b3de-60af6f652142",
              "parent_uuid": "acac84b8-9d7d-440d-b028-938a5ab217e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b61070ad-cf0e-45ad-8afa-ccfafa814bd9",
                  "parent_uuid": "1bd445e9-492b-4aeb-b3de-60af6f652142",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bfdc7906-e2a8-4514-8d98-0cd157810d34",
              "parent_uuid": "acac84b8-9d7d-440d-b028-938a5ab217e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91fb1cb1-c631-4637-a3e6-37cc47fe332e",
                  "parent_uuid": "bfdc7906-e2a8-4514-8d98-0cd157810d34",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dcf1e5d5-ce3d-4ef8-ac88-ab1f5fdb9a11",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90d9c5b8-2c40-4cae-9bc5-79721a768497",
              "parent_uuid": "dcf1e5d5-ce3d-4ef8-ac88-ab1f5fdb9a11",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "49a27756-fcf5-4df1-82cd-8762346c8694",
              "parent_uuid": "dcf1e5d5-ce3d-4ef8-ac88-ab1f5fdb9a11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ef1174af-8cf3-4c35-b86e-983c41202967",
              "parent_uuid": "dcf1e5d5-ce3d-4ef8-ac88-ab1f5fdb9a11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3ab30f9-a477-4d33-91d1-4515c93b01fa",
                  "parent_uuid": "ef1174af-8cf3-4c35-b86e-983c41202967",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f71ee924-6ee2-4c32-bea7-815cf56af345",
              "parent_uuid": "dcf1e5d5-ce3d-4ef8-ac88-ab1f5fdb9a11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2afc9b2a-defe-4519-b6ab-c4c3096b0c02",
                  "parent_uuid": "f71ee924-6ee2-4c32-bea7-815cf56af345",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a658c2cb-dc34-4c51-8729-7f9f0a3c6605",
              "parent_uuid": "dcf1e5d5-ce3d-4ef8-ac88-ab1f5fdb9a11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8881512d-a6fb-40d9-a9e7-ae8d7f2f8023",
                  "parent_uuid": "a658c2cb-dc34-4c51-8729-7f9f0a3c6605",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "712b96b7-fb92-4baf-93bb-8ddb51f432f6",
              "parent_uuid": "dcf1e5d5-ce3d-4ef8-ac88-ab1f5fdb9a11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "795c6051-c25c-466b-aa26-0dd30f59d2b8",
                  "parent_uuid": "712b96b7-fb92-4baf-93bb-8ddb51f432f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d8640241-7f85-49ac-8270-d2a5660faa9e",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ec17bec-f0d3-46c2-8d01-0f3f91b18345",
              "parent_uuid": "d8640241-7f85-49ac-8270-d2a5660faa9e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "11386f7e-6187-4adf-82ba-a880d84c7a16",
              "parent_uuid": "d8640241-7f85-49ac-8270-d2a5660faa9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "1fd31eb5-794b-4052-93b5-62e3ace440b4",
              "parent_uuid": "d8640241-7f85-49ac-8270-d2a5660faa9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a33ae0d1-527a-4d31-94c9-38a82be5d128",
                  "parent_uuid": "1fd31eb5-794b-4052-93b5-62e3ace440b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ff227ed-dad4-42af-8047-de1e26c2acd9",
              "parent_uuid": "d8640241-7f85-49ac-8270-d2a5660faa9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0fd80ec-93a1-48a7-b028-4bec2832e8cc",
                  "parent_uuid": "5ff227ed-dad4-42af-8047-de1e26c2acd9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d558a993-dc99-4bbe-acc1-917957e356e0",
              "parent_uuid": "d8640241-7f85-49ac-8270-d2a5660faa9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "367cf4ee-ffa7-4f55-bccf-8c0b92011e3d",
                  "parent_uuid": "d558a993-dc99-4bbe-acc1-917957e356e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5230b909-b28e-46a9-bbd7-9705c66c6fbd",
              "parent_uuid": "d8640241-7f85-49ac-8270-d2a5660faa9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c37e39a0-ea71-4796-a653-bc7ee4aff902",
                  "parent_uuid": "5230b909-b28e-46a9-bbd7-9705c66c6fbd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0800163e-08b9-4452-845b-2491eb771416",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbd48536-be31-44f7-a9cd-d11b1a40ea76",
              "parent_uuid": "0800163e-08b9-4452-845b-2491eb771416",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "468c00f4-9482-4606-b65e-2c161c7f7472",
              "parent_uuid": "0800163e-08b9-4452-845b-2491eb771416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "6f1f7f90-573f-4be6-a5ac-2eb28a4385a6",
              "parent_uuid": "0800163e-08b9-4452-845b-2491eb771416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e29a1b37-dd64-4914-8811-656bcf73243b",
                  "parent_uuid": "6f1f7f90-573f-4be6-a5ac-2eb28a4385a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1688a95-bb18-47c5-8ba9-2b4127810e24",
              "parent_uuid": "0800163e-08b9-4452-845b-2491eb771416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a40146ca-9ba0-4870-b338-9819f10faee9",
                  "parent_uuid": "c1688a95-bb18-47c5-8ba9-2b4127810e24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4540b9a2-58e9-42a8-bad2-518165965e70",
              "parent_uuid": "0800163e-08b9-4452-845b-2491eb771416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbce0663-ca30-410e-b1d8-5bb53eab93a3",
                  "parent_uuid": "4540b9a2-58e9-42a8-bad2-518165965e70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "528e1c41-8b35-4d15-a53c-f1e7ad5d8af7",
              "parent_uuid": "0800163e-08b9-4452-845b-2491eb771416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70a6180a-cf8b-4e2c-bae1-26f2d999ebf2",
                  "parent_uuid": "528e1c41-8b35-4d15-a53c-f1e7ad5d8af7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0ed12f74-bd16-46d6-ac86-c95482efdc2d",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68c5cbd3-cc25-4da8-98d2-8cc3ebf0ee08",
              "parent_uuid": "0ed12f74-bd16-46d6-ac86-c95482efdc2d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "64695b7b-d703-4cac-afaf-927b450a2468",
              "parent_uuid": "0ed12f74-bd16-46d6-ac86-c95482efdc2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "446d8fd5-cd2e-434d-9251-eb30b38025e1",
              "parent_uuid": "0ed12f74-bd16-46d6-ac86-c95482efdc2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e8d337d-982c-489a-9cb6-60a779a30798",
                  "parent_uuid": "446d8fd5-cd2e-434d-9251-eb30b38025e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "152804c5-40e2-4a7f-b4de-72c2118d79bd",
              "parent_uuid": "0ed12f74-bd16-46d6-ac86-c95482efdc2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "747841bd-42cf-4349-9a3f-c37e3cdaa247",
                  "parent_uuid": "152804c5-40e2-4a7f-b4de-72c2118d79bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ead746ee-082d-41a7-8532-3b35e6ad02da",
              "parent_uuid": "0ed12f74-bd16-46d6-ac86-c95482efdc2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b007b1f5-0f14-42e0-8f5d-624dbd714d63",
                  "parent_uuid": "ead746ee-082d-41a7-8532-3b35e6ad02da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01d88ab2-61c4-4c22-b47b-8b4a251cc055",
              "parent_uuid": "0ed12f74-bd16-46d6-ac86-c95482efdc2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adacf341-4438-45bf-83fd-a96959f59e74",
                  "parent_uuid": "01d88ab2-61c4-4c22-b47b-8b4a251cc055",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c6812a2-2698-4319-88e5-cb2c345d2f8c",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d937929-ed31-4cef-b2f3-497677cf4256",
              "parent_uuid": "7c6812a2-2698-4319-88e5-cb2c345d2f8c",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9bde1e4e-f9b7-4471-b7b1-a2a77693050c",
              "parent_uuid": "7c6812a2-2698-4319-88e5-cb2c345d2f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "67e54ee8-0b9e-4715-a6f2-340590f580aa",
              "parent_uuid": "7c6812a2-2698-4319-88e5-cb2c345d2f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0983d5ef-24ea-47e3-a1c0-858a40662186",
                  "parent_uuid": "67e54ee8-0b9e-4715-a6f2-340590f580aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48dcb229-eefb-4216-8aee-06f01230c175",
              "parent_uuid": "7c6812a2-2698-4319-88e5-cb2c345d2f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96feb8d3-8f8c-4344-bafc-c83cf394817d",
                  "parent_uuid": "48dcb229-eefb-4216-8aee-06f01230c175",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c71d97ac-2829-4d54-bd5d-93caaf237b85",
              "parent_uuid": "7c6812a2-2698-4319-88e5-cb2c345d2f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4577a786-09d5-40bd-8fe9-906702c23336",
                  "parent_uuid": "c71d97ac-2829-4d54-bd5d-93caaf237b85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f26aeeee-262f-4e69-aeb4-d04b0bc5980a",
              "parent_uuid": "7c6812a2-2698-4319-88e5-cb2c345d2f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "653bfc57-b061-457d-9bfd-0075d9c7a5cb",
                  "parent_uuid": "f26aeeee-262f-4e69-aeb4-d04b0bc5980a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d2c9d93-292a-45e6-b0a9-0a7ce607a413",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75c2bc7e-1cc6-4b7f-bf55-e13262132774",
              "parent_uuid": "2d2c9d93-292a-45e6-b0a9-0a7ce607a413",
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
          "uuid": "6126c685-ec1f-43ef-9c91-906026cf3d67",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b293d430-3f72-4c24-9173-1d8d23bb0e5e",
              "parent_uuid": "6126c685-ec1f-43ef-9c91-906026cf3d67",
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
          "uuid": "ea256409-91a6-4132-a0f9-cd3981025a34",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c19ab805-e209-4db7-a8ab-0a68ebfa88b1",
              "parent_uuid": "ea256409-91a6-4132-a0f9-cd3981025a34",
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
                  "uuid": "490e300f-2514-4c9b-ad51-be0c22611894",
                  "parent_uuid": "c19ab805-e209-4db7-a8ab-0a68ebfa88b1",
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
          "uuid": "78857c3d-cb32-459b-b683-66dda2e16432",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b63fb465-a091-4958-922f-feaf5573fa68",
              "parent_uuid": "78857c3d-cb32-459b-b683-66dda2e16432",
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
          "uuid": "e83e37f6-8a14-481c-b603-0dc38fcf8b65",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3a334b80-cebf-49d7-aaf7-e38134d5fe27",
              "parent_uuid": "e83e37f6-8a14-481c-b603-0dc38fcf8b65",
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
          "uuid": "e98f6917-d61e-4ad1-b6f2-e51c2c711006",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20cc6a08-e4fa-4954-8ddc-03731d62ce36",
              "parent_uuid": "e98f6917-d61e-4ad1-b6f2-e51c2c711006",
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
              "uuid": "158a4a5b-c675-4839-bc4a-50267e2f44ae",
              "parent_uuid": "e98f6917-d61e-4ad1-b6f2-e51c2c711006",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ec33b030-bd1b-4b51-ad16-951ca96c72ef",
              "parent_uuid": "e98f6917-d61e-4ad1-b6f2-e51c2c711006",
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
              "uuid": "a7d828e6-2a55-41c8-9676-a887ffcbac48",
              "parent_uuid": "e98f6917-d61e-4ad1-b6f2-e51c2c711006",
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
              "uuid": "15128326-ff5d-4e0b-879d-5750bee5a230",
              "parent_uuid": "e98f6917-d61e-4ad1-b6f2-e51c2c711006",
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
          "uuid": "1e2ef8c1-6b9d-4dcc-94b6-66e8540a8736",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "862b2e79-944d-43a1-b02d-3b3f6ec82b1b",
              "parent_uuid": "1e2ef8c1-6b9d-4dcc-94b6-66e8540a8736",
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
              "uuid": "4474ef34-8a59-4d53-8780-1f91019efc84",
              "parent_uuid": "1e2ef8c1-6b9d-4dcc-94b6-66e8540a8736",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d09eb46a-fa37-4d1a-a36c-f4e6889a696f",
              "parent_uuid": "1e2ef8c1-6b9d-4dcc-94b6-66e8540a8736",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "566cd7d7-ace0-4059-87b5-3924b01336a6",
              "parent_uuid": "1e2ef8c1-6b9d-4dcc-94b6-66e8540a8736",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "015892c8-bc36-4957-b6fb-b1c65062a4be",
              "parent_uuid": "1e2ef8c1-6b9d-4dcc-94b6-66e8540a8736",
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
          "uuid": "f2063e6a-9aa5-420c-ad64-6acaf759fc83",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8e7ef40-d9c2-41c2-9748-142e71e9a7d8",
              "parent_uuid": "f2063e6a-9aa5-420c-ad64-6acaf759fc83",
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
              "uuid": "3fec0d22-e964-4464-995f-ca4b1fbc2655",
              "parent_uuid": "f2063e6a-9aa5-420c-ad64-6acaf759fc83",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9b21f0b5-7161-4376-b822-cb1dbc96d676",
              "parent_uuid": "f2063e6a-9aa5-420c-ad64-6acaf759fc83",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b0c11179-0b8b-4ec6-a552-b67abd90d5cb",
              "parent_uuid": "f2063e6a-9aa5-420c-ad64-6acaf759fc83",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0aba6714-69e2-46b6-b028-b75eb4bd40c7",
              "parent_uuid": "f2063e6a-9aa5-420c-ad64-6acaf759fc83",
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
          "uuid": "12d09f64-4452-4c97-8faf-59d4ea761b54",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3504226-9b8d-41af-8011-d70c85c58f06",
              "parent_uuid": "12d09f64-4452-4c97-8faf-59d4ea761b54",
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
              "uuid": "ac22a99b-9d4b-44cb-af1f-d37472e27ade",
              "parent_uuid": "12d09f64-4452-4c97-8faf-59d4ea761b54",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d7723a90-8434-40ac-821e-fb3b1c22b5a9",
              "parent_uuid": "12d09f64-4452-4c97-8faf-59d4ea761b54",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "27bdeec2-4e43-4faa-8b84-346a16023a41",
              "parent_uuid": "12d09f64-4452-4c97-8faf-59d4ea761b54",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d965ff01-b771-4ddd-8dbd-9f84c85db891",
              "parent_uuid": "12d09f64-4452-4c97-8faf-59d4ea761b54",
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
          "uuid": "ca4a9aa3-a144-4a01-9044-3f907dbe0915",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0541d954-453e-4c28-b762-1ef0a71e412e",
              "parent_uuid": "ca4a9aa3-a144-4a01-9044-3f907dbe0915",
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
              "uuid": "d522d622-d081-4f2a-8b8f-585bc4b111d1",
              "parent_uuid": "ca4a9aa3-a144-4a01-9044-3f907dbe0915",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fd2ff4b7-f34a-4971-9a3d-bf06a13ba2e3",
              "parent_uuid": "ca4a9aa3-a144-4a01-9044-3f907dbe0915",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9087c505-f4ad-4f64-b336-3ce422c019b7",
              "parent_uuid": "ca4a9aa3-a144-4a01-9044-3f907dbe0915",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8cff41b3-dee4-4620-8698-75b7a558af92",
              "parent_uuid": "ca4a9aa3-a144-4a01-9044-3f907dbe0915",
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
          "uuid": "774301b9-47a8-40ae-8b82-c16e41daeaa5",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dec69e56-11b4-4895-a0ea-aad82884fc95",
              "parent_uuid": "774301b9-47a8-40ae-8b82-c16e41daeaa5",
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
              "uuid": "12483b58-9e87-4f15-a3ce-1b2eac634d88",
              "parent_uuid": "774301b9-47a8-40ae-8b82-c16e41daeaa5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "173dfa20-fdbf-4750-b4f8-c2c89bf444f2",
              "parent_uuid": "774301b9-47a8-40ae-8b82-c16e41daeaa5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "73025433-24b2-4f17-89b4-eb9312d554e7",
              "parent_uuid": "774301b9-47a8-40ae-8b82-c16e41daeaa5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0b7ebbd8-fba8-46ee-99c3-870b79584875",
              "parent_uuid": "774301b9-47a8-40ae-8b82-c16e41daeaa5",
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
          "uuid": "051ad51c-3b8a-4a45-965c-0839c6e60b0d",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41454b47-6271-4e63-a37b-71d3491f9d4f",
              "parent_uuid": "051ad51c-3b8a-4a45-965c-0839c6e60b0d",
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
              "uuid": "63136fef-e948-41dd-80ec-5ea4a3de3866",
              "parent_uuid": "051ad51c-3b8a-4a45-965c-0839c6e60b0d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d17a4ab7-5f54-4e69-8d26-4c7c26c2201a",
              "parent_uuid": "051ad51c-3b8a-4a45-965c-0839c6e60b0d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0147b792-dd08-427b-b009-69c6a2e8628d",
              "parent_uuid": "051ad51c-3b8a-4a45-965c-0839c6e60b0d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d4d648c7-dc25-43cc-a85b-9b525c52c4b8",
              "parent_uuid": "051ad51c-3b8a-4a45-965c-0839c6e60b0d",
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
          "uuid": "8bac1504-5388-46e9-afec-f91571c65a7e",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e56f435-59e4-4e1a-8fa2-8ba022cb9d0d",
              "parent_uuid": "8bac1504-5388-46e9-afec-f91571c65a7e",
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
              "uuid": "2278319a-6783-4f0a-a895-175dbe0c3d51",
              "parent_uuid": "8bac1504-5388-46e9-afec-f91571c65a7e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "85cbb6e9-bdf2-4085-9154-60dc8c1394ab",
              "parent_uuid": "8bac1504-5388-46e9-afec-f91571c65a7e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "43288569-ca50-4bb5-8389-eef39e65e8a7",
              "parent_uuid": "8bac1504-5388-46e9-afec-f91571c65a7e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b324f4ff-7248-490d-9c28-f9784872ccf1",
              "parent_uuid": "8bac1504-5388-46e9-afec-f91571c65a7e",
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
          "uuid": "fe67b2e0-a81c-4c55-be63-858c50a536a7",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4438fc77-cd8f-4ec4-ae33-629d68fc3e94",
              "parent_uuid": "fe67b2e0-a81c-4c55-be63-858c50a536a7",
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
              "uuid": "8518cbbd-a0ab-493d-a233-e06699598656",
              "parent_uuid": "fe67b2e0-a81c-4c55-be63-858c50a536a7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "637774da-0f80-451e-83ef-c0b59beee493",
              "parent_uuid": "fe67b2e0-a81c-4c55-be63-858c50a536a7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "674d1ea6-7f24-433a-a064-da973cc910cd",
              "parent_uuid": "fe67b2e0-a81c-4c55-be63-858c50a536a7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9339ff36-68c4-40dd-83ec-a646ada22853",
              "parent_uuid": "fe67b2e0-a81c-4c55-be63-858c50a536a7",
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
          "uuid": "643581e4-7a55-46a1-a888-78dea861ce8a",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba742337-91c6-459e-a380-1dd6603d7d97",
              "parent_uuid": "643581e4-7a55-46a1-a888-78dea861ce8a",
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
          "uuid": "b69fcb90-3223-4453-a11b-95a95fd513f0",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c5e43bc-94c5-4e63-981e-f608bc4fbd7c",
              "parent_uuid": "b69fcb90-3223-4453-a11b-95a95fd513f0",
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
          "uuid": "492e97d4-bfe5-403b-8191-2b24178f37b9",
          "parent_uuid": "c5f22412-0dac-4484-a077-74ef236e9073",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a33bb1d-9dae-4d19-bff5-7ca2b64dd5eb",
              "parent_uuid": "492e97d4-bfe5-403b-8191-2b24178f37b9",
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
                  "uuid": "9719c4a1-8671-4460-8713-b7aecd8f1b8d",
                  "parent_uuid": "9a33bb1d-9dae-4d19-bff5-7ca2b64dd5eb",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

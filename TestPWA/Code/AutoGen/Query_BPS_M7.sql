
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
  "uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "578f7982-23aa-4468-bfc9-1fcd62fd3cac",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "5187b8e2-0a06-45cb-981c-4d4baaec3baa",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "3d2054b4-c640-4753-863c-c29fbd506e7e",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "eea4b50c-613a-462f-a1e5-3e9eccb84e64",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "b5ac429b-6a5d-43d5-b5ec-8691a9b16707",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "0dd1433a-cb21-404f-95d9-fec7f388d03b",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "f74aa3af-467d-4292-a2c6-1bad45884d44",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
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
      "uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
      "parent_uuid": "31e0cbfa-cfce-4f78-86db-dd9a511185cd",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "cb38964b-56e2-4e6a-abc5-18f78358327b",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "0757451a-0040-4d1c-a2a2-35e50b30c328",
              "parent_uuid": "cb38964b-56e2-4e6a-abc5-18f78358327b",
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
              "uuid": "5e49984d-16e8-4a45-94eb-b3412440d9e1",
              "parent_uuid": "cb38964b-56e2-4e6a-abc5-18f78358327b",
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
              "uuid": "9348fb6c-4fea-45fd-8636-6715c24a02fa",
              "parent_uuid": "cb38964b-56e2-4e6a-abc5-18f78358327b",
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
              "uuid": "6363f271-d18d-4c0a-b38d-16d058390dc5",
              "parent_uuid": "cb38964b-56e2-4e6a-abc5-18f78358327b",
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
          "uuid": "a292f854-90f4-4234-b2b6-3f58899de307",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "b98202ec-cdcf-4f4c-94fe-b9bf464c434e",
              "parent_uuid": "a292f854-90f4-4234-b2b6-3f58899de307",
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
              "uuid": "d3b2d9cc-0bdf-4afd-8d0a-f752264619e8",
              "parent_uuid": "a292f854-90f4-4234-b2b6-3f58899de307",
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
              "uuid": "e92e27d3-9c5f-4e67-af50-91ef64576fb4",
              "parent_uuid": "a292f854-90f4-4234-b2b6-3f58899de307",
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
              "uuid": "cb810e76-063e-4f09-b959-7f1af91e4634",
              "parent_uuid": "a292f854-90f4-4234-b2b6-3f58899de307",
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
          "uuid": "01a9adc2-653d-44c9-a86b-cfbc9da441f1",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ea917ab9-4cda-4dcb-a8c7-ad4693df1cf6",
              "parent_uuid": "01a9adc2-653d-44c9-a86b-cfbc9da441f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "a3a553c9-adf8-455a-a729-bc2a42c94a18",
              "parent_uuid": "01a9adc2-653d-44c9-a86b-cfbc9da441f1",
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
              "uuid": "34fe5d35-521b-44bb-b422-672398afbf3b",
              "parent_uuid": "01a9adc2-653d-44c9-a86b-cfbc9da441f1",
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
              "uuid": "ffe80b91-3e56-4782-a0aa-323a3f805a7a",
              "parent_uuid": "01a9adc2-653d-44c9-a86b-cfbc9da441f1",
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
              "uuid": "7b5619e4-7b69-471c-8503-d3046e645d2a",
              "parent_uuid": "01a9adc2-653d-44c9-a86b-cfbc9da441f1",
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
              "uuid": "816d2727-bcae-41d3-afb1-69fa03b41ad8",
              "parent_uuid": "01a9adc2-653d-44c9-a86b-cfbc9da441f1",
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
          "uuid": "fc8fc6c4-17a9-46f0-bde8-4ad55832ca8f",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "01e636ca-6fb0-4c1f-8814-743828978424",
              "parent_uuid": "fc8fc6c4-17a9-46f0-bde8-4ad55832ca8f",
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
          "uuid": "95077ad3-a019-4e02-8198-ec27d49c889a",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7075d7c1-45a7-4089-bbef-7e4185e43559",
              "parent_uuid": "95077ad3-a019-4e02-8198-ec27d49c889a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0d2ab4af-ccb2-4ebf-a95d-ed8be71f494e",
              "parent_uuid": "95077ad3-a019-4e02-8198-ec27d49c889a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "59b0ce74-da86-4cf3-9481-9b9831b5ba9c",
              "parent_uuid": "95077ad3-a019-4e02-8198-ec27d49c889a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "9e9ab0bc-f3c3-4f95-ac99-d6c31ba79caa",
                  "parent_uuid": "59b0ce74-da86-4cf3-9481-9b9831b5ba9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50b9451d-c125-4a86-b45b-ef6f6c0dd01f",
              "parent_uuid": "95077ad3-a019-4e02-8198-ec27d49c889a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cb9678f8-5eb6-46d8-9da1-f77f081a309f",
                  "parent_uuid": "50b9451d-c125-4a86-b45b-ef6f6c0dd01f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f4a2766-c558-4139-9c0c-1485d43b47fe",
              "parent_uuid": "95077ad3-a019-4e02-8198-ec27d49c889a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "74e8cc34-f8a9-4c63-b9b4-06fa943d8cd6",
                  "parent_uuid": "5f4a2766-c558-4139-9c0c-1485d43b47fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7c0527b-28ee-46ef-aca9-9ce6277b08e5",
              "parent_uuid": "95077ad3-a019-4e02-8198-ec27d49c889a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ff63586c-dd01-4566-90c6-215626bb4454",
                  "parent_uuid": "d7c0527b-28ee-46ef-aca9-9ce6277b08e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "50731588-a1f7-499b-a8f9-4a3c1c52f7d5",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b4deecf-dcbe-4d0d-9870-094db9664f51",
              "parent_uuid": "50731588-a1f7-499b-a8f9-4a3c1c52f7d5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a5089010-3f05-4f01-9105-e24333b9b3f0",
              "parent_uuid": "50731588-a1f7-499b-a8f9-4a3c1c52f7d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f7832cfc-7218-45fb-a1e3-171177910ad9",
              "parent_uuid": "50731588-a1f7-499b-a8f9-4a3c1c52f7d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "91ffce1c-4efe-4dcb-8d7a-7eb21b12131b",
                  "parent_uuid": "f7832cfc-7218-45fb-a1e3-171177910ad9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b4a355a-97f3-4eef-b010-31a116cb267a",
              "parent_uuid": "50731588-a1f7-499b-a8f9-4a3c1c52f7d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "6115c059-5a27-44f5-a04b-64fedcd40840",
                  "parent_uuid": "4b4a355a-97f3-4eef-b010-31a116cb267a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6aa4baa3-dcb3-444f-9f75-7a57fdffca65",
              "parent_uuid": "50731588-a1f7-499b-a8f9-4a3c1c52f7d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "5f4f5c99-db86-46a8-9aca-c9c8645af03f",
                  "parent_uuid": "6aa4baa3-dcb3-444f-9f75-7a57fdffca65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d078974-3ce5-4852-9e34-60c28ab66103",
              "parent_uuid": "50731588-a1f7-499b-a8f9-4a3c1c52f7d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "8f11cf5c-0758-4fc9-8566-1260323edf7e",
                  "parent_uuid": "2d078974-3ce5-4852-9e34-60c28ab66103",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eb2d9fdf-956c-43a6-aced-e6bae03a2d06",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51c42c64-b7f9-401e-8cce-15b6255d20c7",
              "parent_uuid": "eb2d9fdf-956c-43a6-aced-e6bae03a2d06",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a0ddbc55-8b8a-46cf-877d-0f6e840c508b",
              "parent_uuid": "eb2d9fdf-956c-43a6-aced-e6bae03a2d06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "6c84519c-5f18-42af-81c8-dbe34531ccb0",
              "parent_uuid": "eb2d9fdf-956c-43a6-aced-e6bae03a2d06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57879b60-02b6-4c84-aa3e-b826969795dc",
                  "parent_uuid": "6c84519c-5f18-42af-81c8-dbe34531ccb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dde8b239-3171-42c2-ba19-d13f5a57fbba",
              "parent_uuid": "eb2d9fdf-956c-43a6-aced-e6bae03a2d06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eed22fe3-34f2-4422-9f88-bb6c16939071",
                  "parent_uuid": "dde8b239-3171-42c2-ba19-d13f5a57fbba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84a39e7d-8c0f-4e0c-bae5-a5490f49ea26",
              "parent_uuid": "eb2d9fdf-956c-43a6-aced-e6bae03a2d06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6862af2f-2279-425e-8fda-3727d23befaa",
                  "parent_uuid": "84a39e7d-8c0f-4e0c-bae5-a5490f49ea26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6b3ccb6-d129-4209-a07c-a1d03c566876",
              "parent_uuid": "eb2d9fdf-956c-43a6-aced-e6bae03a2d06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c62a04c3-00f5-425b-a3f8-a81bf05cc56d",
                  "parent_uuid": "f6b3ccb6-d129-4209-a07c-a1d03c566876",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c3e4a32-cd84-4ffa-898e-45587030312b",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e02bccef-0246-4fbc-b67d-038dc18dfcb8",
              "parent_uuid": "6c3e4a32-cd84-4ffa-898e-45587030312b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1d5af5a8-cd8a-4a0e-b089-cf6bae77a56b",
              "parent_uuid": "6c3e4a32-cd84-4ffa-898e-45587030312b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "e4502ae7-23c1-4c67-85a5-d58707b42037",
              "parent_uuid": "6c3e4a32-cd84-4ffa-898e-45587030312b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbe940f5-fbe1-4d8f-9bfc-a66bf1ed20bd",
                  "parent_uuid": "e4502ae7-23c1-4c67-85a5-d58707b42037",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7a5c4c3-00ad-4d7e-aef2-afe3407b9dca",
              "parent_uuid": "6c3e4a32-cd84-4ffa-898e-45587030312b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92a46c0a-b0b0-4928-9804-6466b11626b1",
                  "parent_uuid": "c7a5c4c3-00ad-4d7e-aef2-afe3407b9dca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b50ed9a-9a45-4871-b7d1-0e703a490a2a",
              "parent_uuid": "6c3e4a32-cd84-4ffa-898e-45587030312b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c107eb4-98e2-43a6-a5cf-01b8cc34b42b",
                  "parent_uuid": "3b50ed9a-9a45-4871-b7d1-0e703a490a2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da629bd7-ec4f-4531-ae15-3cfb3e2e67a8",
              "parent_uuid": "6c3e4a32-cd84-4ffa-898e-45587030312b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3bc87c2-5b5f-42da-b02c-aab90dc8c781",
                  "parent_uuid": "da629bd7-ec4f-4531-ae15-3cfb3e2e67a8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "558e76d2-91bf-470e-80c8-3a24bd22ae8d",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66f5ab0a-781f-4b9f-a244-4e1477c950cb",
              "parent_uuid": "558e76d2-91bf-470e-80c8-3a24bd22ae8d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8757aaf9-e4ed-49eb-86e1-092adb63aa9a",
              "parent_uuid": "558e76d2-91bf-470e-80c8-3a24bd22ae8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "0ad78021-07f7-427a-91f2-e294bc5f8833",
              "parent_uuid": "558e76d2-91bf-470e-80c8-3a24bd22ae8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3bda2a4-03fe-4c51-b447-e350b4d5e97a",
                  "parent_uuid": "0ad78021-07f7-427a-91f2-e294bc5f8833",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1897483-2ed7-4422-8e7a-406517d31141",
              "parent_uuid": "558e76d2-91bf-470e-80c8-3a24bd22ae8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8794217-6411-4dbf-b3b3-e532b1ec6f4d",
                  "parent_uuid": "c1897483-2ed7-4422-8e7a-406517d31141",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a0ec886-f7ef-4e1f-b962-ed221f965d7f",
              "parent_uuid": "558e76d2-91bf-470e-80c8-3a24bd22ae8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04b47408-9343-4533-92fb-dd1bb0d62e17",
                  "parent_uuid": "1a0ec886-f7ef-4e1f-b962-ed221f965d7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4197dd4e-f922-4974-a23a-18aafce53f21",
              "parent_uuid": "558e76d2-91bf-470e-80c8-3a24bd22ae8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdaccd09-8e1a-48f0-bdd7-6ee9fcbc8ef3",
                  "parent_uuid": "4197dd4e-f922-4974-a23a-18aafce53f21",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5c5041d-bcfa-43d3-905a-748be30e8121",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "856d81ac-8382-4a17-8fd0-043b5c9a74a9",
              "parent_uuid": "c5c5041d-bcfa-43d3-905a-748be30e8121",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e511bd6e-00a4-4a2e-87ec-5fc8a354fea3",
              "parent_uuid": "c5c5041d-bcfa-43d3-905a-748be30e8121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "7cbd7ee1-3d9d-4986-9377-928d53847020",
              "parent_uuid": "c5c5041d-bcfa-43d3-905a-748be30e8121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7dd91a11-ea47-4642-b730-6995ded661d7",
                  "parent_uuid": "7cbd7ee1-3d9d-4986-9377-928d53847020",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f56c6698-d3bb-4ec3-8394-8555daacda4e",
              "parent_uuid": "c5c5041d-bcfa-43d3-905a-748be30e8121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2528a5b-bf9c-434f-873b-7367e0a387d4",
                  "parent_uuid": "f56c6698-d3bb-4ec3-8394-8555daacda4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d35d05ee-cfda-481e-bd91-b12b75f006ed",
              "parent_uuid": "c5c5041d-bcfa-43d3-905a-748be30e8121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fcd5f04-8bae-450c-9259-46c5059a2e29",
                  "parent_uuid": "d35d05ee-cfda-481e-bd91-b12b75f006ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4ee4e87-f044-4c47-80a6-41f6dae00123",
              "parent_uuid": "c5c5041d-bcfa-43d3-905a-748be30e8121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45192b6d-e687-430d-8ade-cd9b1e1c584a",
                  "parent_uuid": "c4ee4e87-f044-4c47-80a6-41f6dae00123",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26c867c3-4d16-4419-86e3-d6d4bd956fb9",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d142996f-c481-4ca9-ab8a-f83d9078399c",
              "parent_uuid": "26c867c3-4d16-4419-86e3-d6d4bd956fb9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6bea3dcb-3dc6-40d5-b820-b5e9eb84cc9c",
              "parent_uuid": "26c867c3-4d16-4419-86e3-d6d4bd956fb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d350eecd-31d9-46a9-a237-a5734af79912",
              "parent_uuid": "26c867c3-4d16-4419-86e3-d6d4bd956fb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15af36ee-aff4-4d30-a8f4-eb3bfaccf7fe",
                  "parent_uuid": "d350eecd-31d9-46a9-a237-a5734af79912",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cb1a642-1205-4da3-8ea7-a14f46b33f3f",
              "parent_uuid": "26c867c3-4d16-4419-86e3-d6d4bd956fb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc8bc349-a0fd-44ce-a2d9-38eb9e096144",
                  "parent_uuid": "5cb1a642-1205-4da3-8ea7-a14f46b33f3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "296d9e7b-8177-452f-a677-a72528c0000d",
              "parent_uuid": "26c867c3-4d16-4419-86e3-d6d4bd956fb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "931eeddf-bc22-4b38-9fff-195892fb3860",
                  "parent_uuid": "296d9e7b-8177-452f-a677-a72528c0000d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ab6465f-21a2-494f-bf90-5ffb808051bb",
              "parent_uuid": "26c867c3-4d16-4419-86e3-d6d4bd956fb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb7283f6-befa-43f5-bde2-ea53da60e16c",
                  "parent_uuid": "9ab6465f-21a2-494f-bf90-5ffb808051bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cfc493dc-a8dc-43d4-96b3-f9950497f3b4",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f0141600-6bfe-4958-bf75-aaeb885912e5",
              "parent_uuid": "cfc493dc-a8dc-43d4-96b3-f9950497f3b4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0d2ffc53-101d-4684-bd0c-0bd68a20e7f2",
              "parent_uuid": "cfc493dc-a8dc-43d4-96b3-f9950497f3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "94450453-3d57-432a-afef-6629c0697901",
              "parent_uuid": "cfc493dc-a8dc-43d4-96b3-f9950497f3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e09ca14-b6c8-4e94-9468-e957e1131ccd",
                  "parent_uuid": "94450453-3d57-432a-afef-6629c0697901",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3bffa9f-1c3f-4092-b147-76a06b35251a",
              "parent_uuid": "cfc493dc-a8dc-43d4-96b3-f9950497f3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84307e39-fd86-4428-8fd2-b45134b69cfd",
                  "parent_uuid": "b3bffa9f-1c3f-4092-b147-76a06b35251a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6d58401-4067-4221-ae25-643f64b8bff0",
              "parent_uuid": "cfc493dc-a8dc-43d4-96b3-f9950497f3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bfcd68a-67f2-4099-8fa5-897af0a01e3f",
                  "parent_uuid": "c6d58401-4067-4221-ae25-643f64b8bff0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8d594fc-63e2-4c96-a4ec-390062530cc0",
              "parent_uuid": "cfc493dc-a8dc-43d4-96b3-f9950497f3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7378ebff-dda5-47c7-b551-5077f6ae15fb",
                  "parent_uuid": "d8d594fc-63e2-4c96-a4ec-390062530cc0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b5854f92-b836-4040-88a3-b968e1de4dff",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04e83a6e-747d-47f8-9adc-605a2b4eb832",
              "parent_uuid": "b5854f92-b836-4040-88a3-b968e1de4dff",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0348769a-3295-4b4a-9c6c-9927cf1f60b5",
              "parent_uuid": "b5854f92-b836-4040-88a3-b968e1de4dff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "080a6b30-6a5b-4db7-9a30-3a080d03fde2",
              "parent_uuid": "b5854f92-b836-4040-88a3-b968e1de4dff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebed2e1f-3eee-4e1d-8ff1-c7ccb56c85cc",
                  "parent_uuid": "080a6b30-6a5b-4db7-9a30-3a080d03fde2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4008a3ac-64e8-4d52-abec-97ab9e33781e",
              "parent_uuid": "b5854f92-b836-4040-88a3-b968e1de4dff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70cb167d-76d0-4fce-834d-5fc3b097ea84",
                  "parent_uuid": "4008a3ac-64e8-4d52-abec-97ab9e33781e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6fbf137-998c-4fc0-ba71-7a1afcae7c38",
              "parent_uuid": "b5854f92-b836-4040-88a3-b968e1de4dff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87757792-8089-43b7-bf2c-51cba3ed294a",
                  "parent_uuid": "f6fbf137-998c-4fc0-ba71-7a1afcae7c38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28be370e-5768-44c7-bc10-b7186233a940",
              "parent_uuid": "b5854f92-b836-4040-88a3-b968e1de4dff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15cb83a8-86a7-4583-a418-0506eb9a7974",
                  "parent_uuid": "28be370e-5768-44c7-bc10-b7186233a940",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5d2f1874-395e-41ce-a3cd-591d7a8f8f4f",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b5a77fbb-c74e-4602-9638-8dede73bbbb5",
              "parent_uuid": "5d2f1874-395e-41ce-a3cd-591d7a8f8f4f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "11d115ab-36c4-4819-a356-461acad8f97f",
              "parent_uuid": "5d2f1874-395e-41ce-a3cd-591d7a8f8f4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "0fec845b-9312-4bd1-a608-96d8e09085d7",
              "parent_uuid": "5d2f1874-395e-41ce-a3cd-591d7a8f8f4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "856ea10e-a8c6-4d15-8de3-2171bfb14d0d",
                  "parent_uuid": "0fec845b-9312-4bd1-a608-96d8e09085d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2162705b-6ce9-4900-b1ee-4e90da7d8f46",
              "parent_uuid": "5d2f1874-395e-41ce-a3cd-591d7a8f8f4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "581f9a80-8580-4fdb-9fa9-230c7630f494",
                  "parent_uuid": "2162705b-6ce9-4900-b1ee-4e90da7d8f46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d369a85-c1f7-4170-819a-c8e94be3696e",
              "parent_uuid": "5d2f1874-395e-41ce-a3cd-591d7a8f8f4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a2a96da-cafb-4932-84fa-8f71cd2e9ff5",
                  "parent_uuid": "1d369a85-c1f7-4170-819a-c8e94be3696e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2718a6d1-1d47-4b46-84ac-abed113a7049",
              "parent_uuid": "5d2f1874-395e-41ce-a3cd-591d7a8f8f4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5a36ff9-9945-4d11-a6d0-105a2f378399",
                  "parent_uuid": "2718a6d1-1d47-4b46-84ac-abed113a7049",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "495f0b33-b033-4141-82c4-a6198a692432",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b04c350-3134-4580-bfe8-88ea6f7f1f94",
              "parent_uuid": "495f0b33-b033-4141-82c4-a6198a692432",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b5ea5758-7a0a-4e45-b7ec-1187d9e8c095",
              "parent_uuid": "495f0b33-b033-4141-82c4-a6198a692432",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "dd675b6d-42ca-4aab-8629-a08a7543772a",
              "parent_uuid": "495f0b33-b033-4141-82c4-a6198a692432",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2f81a5f-59f0-44c3-8841-1032fcf85f2c",
                  "parent_uuid": "dd675b6d-42ca-4aab-8629-a08a7543772a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8fa385c3-3c1b-4b27-96d9-2e5f87365121",
              "parent_uuid": "495f0b33-b033-4141-82c4-a6198a692432",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd6bb7ab-7b8b-48a0-af27-019aef69ac07",
                  "parent_uuid": "8fa385c3-3c1b-4b27-96d9-2e5f87365121",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db3f6041-ad78-4714-a76e-916687228d6e",
              "parent_uuid": "495f0b33-b033-4141-82c4-a6198a692432",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d31f664-4157-4a9d-b090-6831c24a1247",
                  "parent_uuid": "db3f6041-ad78-4714-a76e-916687228d6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f627c6c4-57f0-44a1-813e-6a951d5df811",
              "parent_uuid": "495f0b33-b033-4141-82c4-a6198a692432",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "644c99f0-1814-4d3f-85d1-c6724a33e8b7",
                  "parent_uuid": "f627c6c4-57f0-44a1-813e-6a951d5df811",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e59eec9-601c-4ba9-a65f-e8ee12a9230f",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cecfafad-2e58-4e19-bc6c-eb019b7dcb2a",
              "parent_uuid": "2e59eec9-601c-4ba9-a65f-e8ee12a9230f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9657b0f0-b9e7-4921-ae8d-a9f6ea775423",
              "parent_uuid": "2e59eec9-601c-4ba9-a65f-e8ee12a9230f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "6487b5c2-90ae-4453-bb2a-4342c3747618",
              "parent_uuid": "2e59eec9-601c-4ba9-a65f-e8ee12a9230f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8267a94-b456-415a-ab7e-08ae720413e9",
                  "parent_uuid": "6487b5c2-90ae-4453-bb2a-4342c3747618",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff901bd6-7372-432d-b988-4edc92b01561",
              "parent_uuid": "2e59eec9-601c-4ba9-a65f-e8ee12a9230f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a65e24ba-7d00-484e-980e-61fe07e8cd69",
                  "parent_uuid": "ff901bd6-7372-432d-b988-4edc92b01561",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5dd1813-5dc9-4e0c-889d-487f5ce157f9",
              "parent_uuid": "2e59eec9-601c-4ba9-a65f-e8ee12a9230f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2295a51b-1355-4b2a-b3e0-34a613ced919",
                  "parent_uuid": "c5dd1813-5dc9-4e0c-889d-487f5ce157f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e54af8d3-2f39-41bc-85fb-d0e58d02808b",
              "parent_uuid": "2e59eec9-601c-4ba9-a65f-e8ee12a9230f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b29eab08-e24d-4a0c-86d5-5b23e544c55b",
                  "parent_uuid": "e54af8d3-2f39-41bc-85fb-d0e58d02808b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a9d3a635-fda3-4914-a042-bcd5495de44d",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f25e06b8-948f-4452-861e-fa8feca52636",
              "parent_uuid": "a9d3a635-fda3-4914-a042-bcd5495de44d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8046aeeb-9b65-4879-9068-32584f85deea",
              "parent_uuid": "a9d3a635-fda3-4914-a042-bcd5495de44d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ae1b202c-4f4c-41f5-810f-86c568b6ede0",
              "parent_uuid": "a9d3a635-fda3-4914-a042-bcd5495de44d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb7aed7b-9c95-425e-a0e3-d3995053c62f",
                  "parent_uuid": "ae1b202c-4f4c-41f5-810f-86c568b6ede0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "509e5518-29cd-44d8-9afb-b3a572e08cf3",
              "parent_uuid": "a9d3a635-fda3-4914-a042-bcd5495de44d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bfe22d2-c2f5-4ac8-9c43-fa79fdd663a0",
                  "parent_uuid": "509e5518-29cd-44d8-9afb-b3a572e08cf3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1dd4b5a5-1b80-4ef1-af6b-edae23dd76b7",
              "parent_uuid": "a9d3a635-fda3-4914-a042-bcd5495de44d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afb018aa-75d8-47d1-9305-fba0d984f970",
                  "parent_uuid": "1dd4b5a5-1b80-4ef1-af6b-edae23dd76b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05944d5e-35eb-4106-a0c4-7521aad93e05",
              "parent_uuid": "a9d3a635-fda3-4914-a042-bcd5495de44d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2494cf68-cb3f-4bf8-b89a-347e97456693",
                  "parent_uuid": "05944d5e-35eb-4106-a0c4-7521aad93e05",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a513c957-3920-4032-88ae-997c16fdcde2",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2f7eb23-d369-4c60-840d-c7814a67b9f0",
              "parent_uuid": "a513c957-3920-4032-88ae-997c16fdcde2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "36475564-7b7c-430e-aa02-79a50e11620b",
              "parent_uuid": "a513c957-3920-4032-88ae-997c16fdcde2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "9bf03f43-5a78-4f9c-bc77-8176350479a2",
              "parent_uuid": "a513c957-3920-4032-88ae-997c16fdcde2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "381b6230-b7c6-428b-ab86-124e76ad23b2",
                  "parent_uuid": "9bf03f43-5a78-4f9c-bc77-8176350479a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "137e8b7e-2135-4cdd-adef-33e2c93a4ea0",
              "parent_uuid": "a513c957-3920-4032-88ae-997c16fdcde2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22646be0-c62f-4255-a66b-afe35ba8ad95",
                  "parent_uuid": "137e8b7e-2135-4cdd-adef-33e2c93a4ea0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afcce7b2-abae-4b78-9abb-c0f33d1ebd71",
              "parent_uuid": "a513c957-3920-4032-88ae-997c16fdcde2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97d0d4e7-e299-42f6-b7fd-f5ca828f2e9d",
                  "parent_uuid": "afcce7b2-abae-4b78-9abb-c0f33d1ebd71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a888b08-4336-45b1-beb7-09a49a2eb439",
              "parent_uuid": "a513c957-3920-4032-88ae-997c16fdcde2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11aa184e-fa35-4551-811e-f9eb098e7a02",
                  "parent_uuid": "7a888b08-4336-45b1-beb7-09a49a2eb439",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c1f156ba-c7e3-4e84-9108-3c453f9b8e21",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60c59a0b-6b64-4f4d-aad9-fd2b3346d236",
              "parent_uuid": "c1f156ba-c7e3-4e84-9108-3c453f9b8e21",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c3559b49-f90d-4b2f-9ec7-bb53bb9345ee",
              "parent_uuid": "c1f156ba-c7e3-4e84-9108-3c453f9b8e21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "9886032f-4a7c-4ae4-adf7-8903450540dc",
              "parent_uuid": "c1f156ba-c7e3-4e84-9108-3c453f9b8e21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7cefb83-18a1-4949-bd62-ce82a6ba1835",
                  "parent_uuid": "9886032f-4a7c-4ae4-adf7-8903450540dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bfe66b4-3b43-437d-9b31-64c712b7ac9e",
              "parent_uuid": "c1f156ba-c7e3-4e84-9108-3c453f9b8e21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9b0f1b8-c6f2-44d1-9f4a-d5447c579c81",
                  "parent_uuid": "5bfe66b4-3b43-437d-9b31-64c712b7ac9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05338d1a-4a42-426b-8298-8c004a298cbe",
              "parent_uuid": "c1f156ba-c7e3-4e84-9108-3c453f9b8e21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bae0a644-797b-4e9a-bd57-a0523485416f",
                  "parent_uuid": "05338d1a-4a42-426b-8298-8c004a298cbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bae69ea-f66a-46a7-a138-d12bebc41f19",
              "parent_uuid": "c1f156ba-c7e3-4e84-9108-3c453f9b8e21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c503dfb1-3627-4781-ad7e-c2ea059f4885",
                  "parent_uuid": "1bae69ea-f66a-46a7-a138-d12bebc41f19",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8df3bbfa-ff7e-4f00-a830-4a7beabe14a4",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4abb1963-a495-45de-be04-c5a1117c5af1",
              "parent_uuid": "8df3bbfa-ff7e-4f00-a830-4a7beabe14a4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3eeee36a-61f2-4f36-bdbf-4c14d8542712",
              "parent_uuid": "8df3bbfa-ff7e-4f00-a830-4a7beabe14a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "bea28740-ca51-439c-840e-b642f6bb6303",
              "parent_uuid": "8df3bbfa-ff7e-4f00-a830-4a7beabe14a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9f9c15a-f8db-48f6-80e9-a7173a7e947b",
                  "parent_uuid": "bea28740-ca51-439c-840e-b642f6bb6303",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91cb4f65-b69f-49fb-a559-4ac4745a1263",
              "parent_uuid": "8df3bbfa-ff7e-4f00-a830-4a7beabe14a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66d05789-98f0-4276-afb7-e97d1ab14e0c",
                  "parent_uuid": "91cb4f65-b69f-49fb-a559-4ac4745a1263",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73d72a5e-ece2-4ca9-b3d0-362b576006e5",
              "parent_uuid": "8df3bbfa-ff7e-4f00-a830-4a7beabe14a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0df996a-d7a9-467e-98a1-1b6d163fa6df",
                  "parent_uuid": "73d72a5e-ece2-4ca9-b3d0-362b576006e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80972061-f6de-4732-a45b-bdf636d1d1a4",
              "parent_uuid": "8df3bbfa-ff7e-4f00-a830-4a7beabe14a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f5c033d-b814-443d-9679-03ebdd71f300",
                  "parent_uuid": "80972061-f6de-4732-a45b-bdf636d1d1a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b0305f4f-d64f-4902-bf19-80f4e931f6ed",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8724a81-1936-4b33-b4ec-06c66cc0d98c",
              "parent_uuid": "b0305f4f-d64f-4902-bf19-80f4e931f6ed",
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
          "uuid": "db789e52-ab85-4d6e-b080-af716016cb4e",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6ecd50b-62a3-4ea1-bf6a-129978ab07ba",
              "parent_uuid": "db789e52-ab85-4d6e-b080-af716016cb4e",
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
          "uuid": "0ea6ef03-8a70-4b5a-a724-24af41be971d",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a020da79-913c-4a0c-a3b8-7dc48533bba6",
              "parent_uuid": "0ea6ef03-8a70-4b5a-a724-24af41be971d",
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
                  "uuid": "519f8c9a-5294-49f0-b74d-39048c5c925d",
                  "parent_uuid": "a020da79-913c-4a0c-a3b8-7dc48533bba6",
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
          "uuid": "031d2758-a1fe-4c3e-9ed8-ba09565c9c8c",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "display: block; page-break-after: always; break-after: always;"
            ]
          ],
          "children": [
            {
              "uuid": "40ddf288-c3dc-4f56-9aa5-eb240a0c09c7",
              "parent_uuid": "031d2758-a1fe-4c3e-9ed8-ba09565c9c8c",
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
          "uuid": "77c15860-f9e0-4199-a29c-81ca017af297",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "592fc45f-76e4-45dc-ab4a-0f3a92301211",
              "parent_uuid": "77c15860-f9e0-4199-a29c-81ca017af297",
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
          "uuid": "5eb8a82c-f9df-4e01-9467-7741de2cf40f",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "308afe6d-e595-49bf-9033-9495a061523c",
              "parent_uuid": "5eb8a82c-f9df-4e01-9467-7741de2cf40f",
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
              "uuid": "d107146e-bd2a-4945-8641-bcf6bf133c74",
              "parent_uuid": "5eb8a82c-f9df-4e01-9467-7741de2cf40f",
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
              "uuid": "90fe0905-66b6-4696-b334-a5d585819554",
              "parent_uuid": "5eb8a82c-f9df-4e01-9467-7741de2cf40f",
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
              "uuid": "4f245dbd-04eb-44da-afb2-c4480647d99e",
              "parent_uuid": "5eb8a82c-f9df-4e01-9467-7741de2cf40f",
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
              "uuid": "e397651e-8b29-4c79-abf4-08ea4cf3ad1f",
              "parent_uuid": "5eb8a82c-f9df-4e01-9467-7741de2cf40f",
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
              "uuid": "ae26641a-ec45-4acb-ad9f-47544a46f51b",
              "parent_uuid": "5eb8a82c-f9df-4e01-9467-7741de2cf40f",
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
          "uuid": "87b4f46c-41d4-49c8-bdb4-58a4ec286f3b",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "830a941f-c71d-46a5-8aa6-6d665c1abe54",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "756644b9-d195-4b00-96d3-5527b0f4e9ba",
              "parent_uuid": "830a941f-c71d-46a5-8aa6-6d665c1abe54",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "46b86679-a055-4c65-8aef-650355f9280a",
              "parent_uuid": "830a941f-c71d-46a5-8aa6-6d665c1abe54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "a5874c3d-4874-4a0c-8b09-84eecde8f1d4",
              "parent_uuid": "830a941f-c71d-46a5-8aa6-6d665c1abe54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4deef982-ad92-4228-ae86-c15ba783a8a2",
                  "parent_uuid": "a5874c3d-4874-4a0c-8b09-84eecde8f1d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00a760a0-98f1-43ae-a74d-6e7643245de9",
              "parent_uuid": "830a941f-c71d-46a5-8aa6-6d665c1abe54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85a69076-4940-445b-b6a0-63ab6763f462",
                  "parent_uuid": "00a760a0-98f1-43ae-a74d-6e7643245de9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c28ec137-a811-4473-bc8a-9b823e25558a",
              "parent_uuid": "830a941f-c71d-46a5-8aa6-6d665c1abe54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a64c47a-f17f-4c94-b0a7-90e851d0944e",
                  "parent_uuid": "c28ec137-a811-4473-bc8a-9b823e25558a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5fa5b546-a040-4339-b79a-aa665c4c2356",
              "parent_uuid": "830a941f-c71d-46a5-8aa6-6d665c1abe54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "990781cd-c9bc-45da-8976-d2895a4fbbc5",
                  "parent_uuid": "5fa5b546-a040-4339-b79a-aa665c4c2356",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ed66b4a2-f09c-4df8-ac60-dd7917c42cdb",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cc03e3f-3751-401c-8f36-182af718fdda",
              "parent_uuid": "ed66b4a2-f09c-4df8-ac60-dd7917c42cdb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d6295c8a-b857-4b56-acf6-bf788d182fec",
              "parent_uuid": "ed66b4a2-f09c-4df8-ac60-dd7917c42cdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f5482dcc-9d28-4516-973c-071c636f62c7",
              "parent_uuid": "ed66b4a2-f09c-4df8-ac60-dd7917c42cdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3c2cdfe-b0b7-4cd2-abe0-f635826c3656",
                  "parent_uuid": "f5482dcc-9d28-4516-973c-071c636f62c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "886b1697-4771-4b2e-8d71-11f7d16b3f11",
              "parent_uuid": "ed66b4a2-f09c-4df8-ac60-dd7917c42cdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "875be83a-7ff9-4147-ae03-d77ffbe1c5a8",
                  "parent_uuid": "886b1697-4771-4b2e-8d71-11f7d16b3f11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f31670d8-19f8-4070-a2cc-7892ad704717",
              "parent_uuid": "ed66b4a2-f09c-4df8-ac60-dd7917c42cdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd09dcd7-6571-46f7-ae7d-0b07c3814cba",
                  "parent_uuid": "f31670d8-19f8-4070-a2cc-7892ad704717",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4f659e7-d90b-4f77-8657-87f0d3737e3f",
              "parent_uuid": "ed66b4a2-f09c-4df8-ac60-dd7917c42cdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57cefdb3-56f1-4e9d-be62-e07abdbe1aff",
                  "parent_uuid": "e4f659e7-d90b-4f77-8657-87f0d3737e3f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7bc9746-8eea-4ca8-89b7-5fa60287f9f6",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6096c3c9-b8d2-4dd9-a7da-65399ead899d",
              "parent_uuid": "a7bc9746-8eea-4ca8-89b7-5fa60287f9f6",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d0ce14d6-907e-428e-bd6f-9df15abde10a",
              "parent_uuid": "a7bc9746-8eea-4ca8-89b7-5fa60287f9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "fa2f23da-f82c-4ed3-a494-6d6c23554ea2",
              "parent_uuid": "a7bc9746-8eea-4ca8-89b7-5fa60287f9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd36d877-dce5-4568-aa2d-f50d04180c14",
                  "parent_uuid": "fa2f23da-f82c-4ed3-a494-6d6c23554ea2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "100b2659-3930-492a-9360-ef832888ef7d",
              "parent_uuid": "a7bc9746-8eea-4ca8-89b7-5fa60287f9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4c3c202-5fb0-4047-8377-306f0485a7d5",
                  "parent_uuid": "100b2659-3930-492a-9360-ef832888ef7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25a56908-b8bb-4abc-a36e-835118a530d9",
              "parent_uuid": "a7bc9746-8eea-4ca8-89b7-5fa60287f9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab1c268c-a33e-4a86-aa62-8ecea8fc5341",
                  "parent_uuid": "25a56908-b8bb-4abc-a36e-835118a530d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95d7be3b-253f-4222-a584-6da274516b85",
              "parent_uuid": "a7bc9746-8eea-4ca8-89b7-5fa60287f9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30d681ec-9238-417e-a645-003b58942663",
                  "parent_uuid": "95d7be3b-253f-4222-a584-6da274516b85",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "71144785-87ac-4dac-980c-38e33cb4b6ca",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88d8a662-719a-4e2a-88a9-b6d399933d96",
              "parent_uuid": "71144785-87ac-4dac-980c-38e33cb4b6ca",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "24507199-4dc2-414c-b14e-dc76df965fe0",
              "parent_uuid": "71144785-87ac-4dac-980c-38e33cb4b6ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b2ecfb79-fc1c-4422-a858-7e6e57b64996",
              "parent_uuid": "71144785-87ac-4dac-980c-38e33cb4b6ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b51943cb-b320-4701-8ebd-029c10cc17fe",
                  "parent_uuid": "b2ecfb79-fc1c-4422-a858-7e6e57b64996",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a89615f8-296c-4406-a8b1-416580acb150",
              "parent_uuid": "71144785-87ac-4dac-980c-38e33cb4b6ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "948f9ed1-b5b8-4165-b38c-036305904bb5",
                  "parent_uuid": "a89615f8-296c-4406-a8b1-416580acb150",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f90db94-2892-4598-934b-eb5751438f35",
              "parent_uuid": "71144785-87ac-4dac-980c-38e33cb4b6ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9281bcf0-d9c6-4a00-bff0-e722dcc3691a",
                  "parent_uuid": "5f90db94-2892-4598-934b-eb5751438f35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e0d562e-f6ad-47a3-8a61-9d1c33739f08",
              "parent_uuid": "71144785-87ac-4dac-980c-38e33cb4b6ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24a4e059-5708-4c66-8fa1-11b2433d3dc0",
                  "parent_uuid": "2e0d562e-f6ad-47a3-8a61-9d1c33739f08",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9b4143b8-70ee-4c44-be17-e3452f7308ae",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da32cb81-66ff-448d-93ad-a3ba1b094e1a",
              "parent_uuid": "9b4143b8-70ee-4c44-be17-e3452f7308ae",
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
          "uuid": "70d43b08-5f87-481c-adca-b0f4e6462547",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f062dee-79a5-4afd-88a2-02d5b8b258d0",
              "parent_uuid": "70d43b08-5f87-481c-adca-b0f4e6462547",
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
          "uuid": "f53d9df7-d987-4643-b5cf-93d544dafa82",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d65c8c5-a9a3-4966-b20f-505dcf8ba496",
              "parent_uuid": "f53d9df7-d987-4643-b5cf-93d544dafa82",
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
                  "uuid": "c2d46e7c-b35f-4b70-a41d-de31591852c1",
                  "parent_uuid": "8d65c8c5-a9a3-4966-b20f-505dcf8ba496",
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
          "uuid": "9a80c8bc-ac85-4577-938a-ba024b3d6fdd",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0022474-9f63-4e87-9161-4051cd4372ce",
              "parent_uuid": "9a80c8bc-ac85-4577-938a-ba024b3d6fdd",
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
          "uuid": "cadb808a-1f10-4131-a27f-f9c7737c2043",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "383e5978-a167-4869-8477-07cc71115b32",
              "parent_uuid": "cadb808a-1f10-4131-a27f-f9c7737c2043",
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
          "uuid": "9e555d23-e891-45c8-b6db-b8ad9827cd8b",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50528806-ba06-4711-bdf3-9bce0eab4e14",
              "parent_uuid": "9e555d23-e891-45c8-b6db-b8ad9827cd8b",
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
              "uuid": "b7fc7bfd-c18a-4ce1-bd95-01ce3934bfe8",
              "parent_uuid": "9e555d23-e891-45c8-b6db-b8ad9827cd8b",
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
              "uuid": "e623c9bb-07f8-4001-b52c-19c490499aa3",
              "parent_uuid": "9e555d23-e891-45c8-b6db-b8ad9827cd8b",
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
              "uuid": "43c57857-36d6-47d9-af12-aae8dc71ef06",
              "parent_uuid": "9e555d23-e891-45c8-b6db-b8ad9827cd8b",
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
              "uuid": "e151d875-533b-400d-84c5-1df60cf7b38a",
              "parent_uuid": "9e555d23-e891-45c8-b6db-b8ad9827cd8b",
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
              "uuid": "48c93d04-315c-4f09-86f5-15e8e828ba7f",
              "parent_uuid": "9e555d23-e891-45c8-b6db-b8ad9827cd8b",
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
          "uuid": "d6c6c6b2-24de-4514-a3ae-4fbf96b2ace1",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7aea8248-dc66-46b9-9359-d3574a116dae",
              "parent_uuid": "d6c6c6b2-24de-4514-a3ae-4fbf96b2ace1",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d5613754-5809-4f86-83cc-21ed77ed23d5",
              "parent_uuid": "d6c6c6b2-24de-4514-a3ae-4fbf96b2ace1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "b6ceb966-1cfc-41e7-a0e0-ea7aa98eea2c",
              "parent_uuid": "d6c6c6b2-24de-4514-a3ae-4fbf96b2ace1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "402165ca-81d0-48ee-bc7d-18b8cffc8a6b",
                  "parent_uuid": "b6ceb966-1cfc-41e7-a0e0-ea7aa98eea2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8fe0759-481f-42ad-90da-3318b99fa11b",
              "parent_uuid": "d6c6c6b2-24de-4514-a3ae-4fbf96b2ace1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "221ef8c1-356f-4df7-b32b-684a125aa00f",
                  "parent_uuid": "e8fe0759-481f-42ad-90da-3318b99fa11b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14043f04-4643-434b-bd44-c54248fefe2e",
              "parent_uuid": "d6c6c6b2-24de-4514-a3ae-4fbf96b2ace1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af3afa79-8e31-4f27-a0ef-f6d1eb31ee9d",
                  "parent_uuid": "14043f04-4643-434b-bd44-c54248fefe2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dede414a-7bdb-4ac1-8f43-e72dceb51ca4",
              "parent_uuid": "d6c6c6b2-24de-4514-a3ae-4fbf96b2ace1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a257127-0ccb-4b15-b88a-1a890e8467c4",
                  "parent_uuid": "dede414a-7bdb-4ac1-8f43-e72dceb51ca4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f64a9fbd-b4f5-4dae-bb2c-4477fd5c88c4",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0e99a43-df21-4f1d-ab7f-2f361232e8d1",
              "parent_uuid": "f64a9fbd-b4f5-4dae-bb2c-4477fd5c88c4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "43377322-86bc-434f-8ac2-11ff980cd00e",
              "parent_uuid": "f64a9fbd-b4f5-4dae-bb2c-4477fd5c88c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d3f6ae1b-e022-4716-bed9-bfe043f69d44",
              "parent_uuid": "f64a9fbd-b4f5-4dae-bb2c-4477fd5c88c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd00a3de-a767-4b58-a639-db22ee1f77f2",
                  "parent_uuid": "d3f6ae1b-e022-4716-bed9-bfe043f69d44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e22f0da0-12be-41e0-b890-e466bd058517",
              "parent_uuid": "f64a9fbd-b4f5-4dae-bb2c-4477fd5c88c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59c5b9d7-93db-4f49-ad1d-d953aeaffd27",
                  "parent_uuid": "e22f0da0-12be-41e0-b890-e466bd058517",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7a17278-5daa-4cf8-8e8a-9e4f51e433d6",
              "parent_uuid": "f64a9fbd-b4f5-4dae-bb2c-4477fd5c88c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f056fee0-3f75-42d2-8b00-c18b54e614ee",
                  "parent_uuid": "e7a17278-5daa-4cf8-8e8a-9e4f51e433d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28f84737-b832-4d9a-bbe9-cefc10b251bc",
              "parent_uuid": "f64a9fbd-b4f5-4dae-bb2c-4477fd5c88c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21d4e8c4-48db-436d-83cf-36bfa9266863",
                  "parent_uuid": "28f84737-b832-4d9a-bbe9-cefc10b251bc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2d246ac-20dc-410d-8fe7-c4b01ad5fa5f",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ef1d068-71fd-497f-a420-8b37f382b667",
              "parent_uuid": "c2d246ac-20dc-410d-8fe7-c4b01ad5fa5f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f5ae4fdd-c3d7-4c4e-a9cd-0bbefc2b543a",
              "parent_uuid": "c2d246ac-20dc-410d-8fe7-c4b01ad5fa5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "33fea6d4-3874-45e7-8ae5-062205ad137b",
              "parent_uuid": "c2d246ac-20dc-410d-8fe7-c4b01ad5fa5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "450e7fcf-9f82-429a-8500-08274259d32b",
                  "parent_uuid": "33fea6d4-3874-45e7-8ae5-062205ad137b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6db1c2e0-e3cf-4d64-b4cc-5b1dd0521ebf",
              "parent_uuid": "c2d246ac-20dc-410d-8fe7-c4b01ad5fa5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f7424ae-8963-42c9-8ada-c9a360b1cbb1",
                  "parent_uuid": "6db1c2e0-e3cf-4d64-b4cc-5b1dd0521ebf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d20136e8-ae3e-4694-a0d8-0577b76835fd",
              "parent_uuid": "c2d246ac-20dc-410d-8fe7-c4b01ad5fa5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6c24a98-e3b5-430e-a12b-1f1ad28846c9",
                  "parent_uuid": "d20136e8-ae3e-4694-a0d8-0577b76835fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "451470f2-bd05-4f8c-93b6-3a2a1b21794a",
              "parent_uuid": "c2d246ac-20dc-410d-8fe7-c4b01ad5fa5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3b7cbf3-88e4-4298-b660-36622d7b8590",
                  "parent_uuid": "451470f2-bd05-4f8c-93b6-3a2a1b21794a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31c1e9df-f8d5-4398-9038-54d6664950f5",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2465c86f-cfba-4758-a480-49928a60427f",
              "parent_uuid": "31c1e9df-f8d5-4398-9038-54d6664950f5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3ec3e8d8-5aa7-4633-984b-0d856cd17848",
              "parent_uuid": "31c1e9df-f8d5-4398-9038-54d6664950f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "546e0f49-f04f-4b23-9451-64de1ffe3316",
              "parent_uuid": "31c1e9df-f8d5-4398-9038-54d6664950f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60f55624-1b8f-4dc3-9dee-b71721ed2d6a",
                  "parent_uuid": "546e0f49-f04f-4b23-9451-64de1ffe3316",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef5586c3-3a4b-4a91-9c87-63540a729612",
              "parent_uuid": "31c1e9df-f8d5-4398-9038-54d6664950f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99778b68-5da5-4cc9-801d-5cfffb17ff50",
                  "parent_uuid": "ef5586c3-3a4b-4a91-9c87-63540a729612",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0571376a-5631-492a-983d-d9e8ab3feab8",
              "parent_uuid": "31c1e9df-f8d5-4398-9038-54d6664950f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42f79942-5eb6-4118-8df2-b9509a8169bf",
                  "parent_uuid": "0571376a-5631-492a-983d-d9e8ab3feab8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd381636-e0ae-4614-af22-8ba600ea910d",
              "parent_uuid": "31c1e9df-f8d5-4398-9038-54d6664950f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "025dc9d8-86a5-425a-b9c5-0d29b5dab250",
                  "parent_uuid": "cd381636-e0ae-4614-af22-8ba600ea910d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "15967235-b56d-46be-ae87-3b43f1ea42ad",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa98b40c-8b48-4f77-9376-85284ef08ade",
              "parent_uuid": "15967235-b56d-46be-ae87-3b43f1ea42ad",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a15c6cc5-5c72-438d-a937-86fb1c3600c1",
              "parent_uuid": "15967235-b56d-46be-ae87-3b43f1ea42ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "893ab8c2-4a7e-4a25-9b88-b372d33b4182",
              "parent_uuid": "15967235-b56d-46be-ae87-3b43f1ea42ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12a076b4-e8fd-491b-bc39-174a477713ab",
                  "parent_uuid": "893ab8c2-4a7e-4a25-9b88-b372d33b4182",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53600a14-9af6-4fde-83b6-4a7e3313a1cc",
              "parent_uuid": "15967235-b56d-46be-ae87-3b43f1ea42ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbf82079-c9e9-48dc-8b11-0e9f8f7560d8",
                  "parent_uuid": "53600a14-9af6-4fde-83b6-4a7e3313a1cc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69a1b468-4aa6-4a40-b63e-739333743de4",
              "parent_uuid": "15967235-b56d-46be-ae87-3b43f1ea42ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80a08e74-4abe-4a40-a2b3-781cbace4f79",
                  "parent_uuid": "69a1b468-4aa6-4a40-b63e-739333743de4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07b4ee48-5f03-4051-abd6-1f360b079998",
              "parent_uuid": "15967235-b56d-46be-ae87-3b43f1ea42ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87085dc1-6dbb-4729-88f5-d42c24619779",
                  "parent_uuid": "07b4ee48-5f03-4051-abd6-1f360b079998",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "83f9f0b5-3cb3-4ac2-93a3-9d307f131c55",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "56023f48-0356-47ad-b8f9-76496b3b6ce0",
              "parent_uuid": "83f9f0b5-3cb3-4ac2-93a3-9d307f131c55",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4a538c85-f89e-4493-b10b-4701eb811a1a",
              "parent_uuid": "83f9f0b5-3cb3-4ac2-93a3-9d307f131c55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "646dd7f9-bca4-436a-90c8-ac5af7d533f2",
              "parent_uuid": "83f9f0b5-3cb3-4ac2-93a3-9d307f131c55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98c3b3b3-25e6-4e9d-a9a8-84bd084348fc",
                  "parent_uuid": "646dd7f9-bca4-436a-90c8-ac5af7d533f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eee05d5c-82ba-473d-9506-4779e1fa675d",
              "parent_uuid": "83f9f0b5-3cb3-4ac2-93a3-9d307f131c55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a17a50dd-6fa7-4b7f-80fe-4e4b1866282e",
                  "parent_uuid": "eee05d5c-82ba-473d-9506-4779e1fa675d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ea3cdc3-bf9e-4e84-975c-ff42ed595980",
              "parent_uuid": "83f9f0b5-3cb3-4ac2-93a3-9d307f131c55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a83591ad-8924-4af2-91b2-f38a513bf262",
                  "parent_uuid": "5ea3cdc3-bf9e-4e84-975c-ff42ed595980",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6b740ca-2567-4b58-bfd9-fce0b712f547",
              "parent_uuid": "83f9f0b5-3cb3-4ac2-93a3-9d307f131c55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c71d11f1-9333-4e87-93fd-60ebdc0911c9",
                  "parent_uuid": "d6b740ca-2567-4b58-bfd9-fce0b712f547",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e919c51-07f3-4f07-a124-5ed32435124a",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9d08e51c-bd48-4d71-a544-27bd40412b3d",
              "parent_uuid": "7e919c51-07f3-4f07-a124-5ed32435124a",
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
          "uuid": "32998178-9aea-491c-a88e-2082e0ab2b65",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ae4d642-6503-4f1d-968e-ed11cd074ccc",
              "parent_uuid": "32998178-9aea-491c-a88e-2082e0ab2b65",
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
          "uuid": "4ae4ec41-d592-45da-ac1f-b9048368934b",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d041c1de-d94d-42cc-b693-7ec51859941c",
              "parent_uuid": "4ae4ec41-d592-45da-ac1f-b9048368934b",
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
                  "uuid": "b96c9a74-f045-4bfc-b934-18568ac9c46c",
                  "parent_uuid": "d041c1de-d94d-42cc-b693-7ec51859941c",
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
          "uuid": "177cba4d-004e-4630-8d1a-435350786694",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91d6058f-4a36-48d2-ac2f-6c63312eb038",
              "parent_uuid": "177cba4d-004e-4630-8d1a-435350786694",
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
          "uuid": "583635c0-cfca-448e-bb6a-d125d87e6a53",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f52fdbdf-aeec-4f23-9691-7b32b33883c3",
              "parent_uuid": "583635c0-cfca-448e-bb6a-d125d87e6a53",
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
          "uuid": "29a156e5-7496-4c40-a5d9-8dd71747dfbe",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e4b3a9c-3afe-4efc-81a1-358c4e0ca99d",
              "parent_uuid": "29a156e5-7496-4c40-a5d9-8dd71747dfbe",
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
              "uuid": "a330e622-4bfe-4133-b302-1150efabc5c7",
              "parent_uuid": "29a156e5-7496-4c40-a5d9-8dd71747dfbe",
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
              "uuid": "9ad78d05-6c90-4eff-a699-4e2db9392521",
              "parent_uuid": "29a156e5-7496-4c40-a5d9-8dd71747dfbe",
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
              "uuid": "5c119466-5782-44ba-900b-11fbe6464f4b",
              "parent_uuid": "29a156e5-7496-4c40-a5d9-8dd71747dfbe",
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
              "uuid": "c4c8afb6-1cfc-4955-a80e-4b84fb8e2e72",
              "parent_uuid": "29a156e5-7496-4c40-a5d9-8dd71747dfbe",
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
          "uuid": "b66c42cb-0438-4013-90b4-37f533743eaa",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87b887f6-1ee5-45e7-acf7-7f8715f5b243",
              "parent_uuid": "b66c42cb-0438-4013-90b4-37f533743eaa",
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
              "uuid": "bb8a917a-ca18-4b4e-8207-cf337ee33f76",
              "parent_uuid": "b66c42cb-0438-4013-90b4-37f533743eaa",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b4246249-2414-48e9-97b7-eb6f2551352e",
              "parent_uuid": "b66c42cb-0438-4013-90b4-37f533743eaa",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ed3b3721-88bc-48da-a63d-181102a013bc",
              "parent_uuid": "b66c42cb-0438-4013-90b4-37f533743eaa",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "96620879-4dd7-4ccb-a73d-e3218efe4c6f",
              "parent_uuid": "b66c42cb-0438-4013-90b4-37f533743eaa",
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
          "uuid": "15b4c553-534c-4d9e-994f-81e691d768d2",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e090a4a6-add1-410e-89b0-c3dbf3642883",
              "parent_uuid": "15b4c553-534c-4d9e-994f-81e691d768d2",
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
              "uuid": "41b10bf3-c593-4865-bb65-4babb110ed84",
              "parent_uuid": "15b4c553-534c-4d9e-994f-81e691d768d2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bded6438-ecb7-49c0-8e1f-4dbba4fad6ac",
              "parent_uuid": "15b4c553-534c-4d9e-994f-81e691d768d2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1f914993-26ad-4760-82a7-8a14ee202ece",
              "parent_uuid": "15b4c553-534c-4d9e-994f-81e691d768d2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "46902741-71b9-414d-93a8-70a610c05fb8",
              "parent_uuid": "15b4c553-534c-4d9e-994f-81e691d768d2",
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
          "uuid": "e4047740-854e-4ca9-823f-42adefc53aaf",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88c8d1cb-b01b-44be-85e4-091ea84eef80",
              "parent_uuid": "e4047740-854e-4ca9-823f-42adefc53aaf",
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
              "uuid": "24b759b8-efe7-41dd-ad98-e3fb12c975b8",
              "parent_uuid": "e4047740-854e-4ca9-823f-42adefc53aaf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d0cf5f48-efd8-4f3d-8f0e-32fb76fd82fb",
              "parent_uuid": "e4047740-854e-4ca9-823f-42adefc53aaf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e4dac14e-abab-4601-a3f9-4b071b415b8e",
              "parent_uuid": "e4047740-854e-4ca9-823f-42adefc53aaf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fd434937-c978-464a-b459-ae410fc393cf",
              "parent_uuid": "e4047740-854e-4ca9-823f-42adefc53aaf",
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
          "uuid": "c4265ce7-b5b4-4475-8424-025a761a0872",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65d24d9a-3004-48c6-9ded-2180500ec277",
              "parent_uuid": "c4265ce7-b5b4-4475-8424-025a761a0872",
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
              "uuid": "9dcaba60-a4ca-4b10-af23-ec63a1ab2427",
              "parent_uuid": "c4265ce7-b5b4-4475-8424-025a761a0872",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a5f687cf-3b50-4c6d-80f0-c790ff715aba",
              "parent_uuid": "c4265ce7-b5b4-4475-8424-025a761a0872",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "83d9c56b-0c1f-4f86-ba72-d0709ce6f7d7",
              "parent_uuid": "c4265ce7-b5b4-4475-8424-025a761a0872",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3158e67d-51dd-42f4-b708-5352c9dcaaa0",
              "parent_uuid": "c4265ce7-b5b4-4475-8424-025a761a0872",
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
          "uuid": "91ed48f7-9f5f-4740-b6a5-bd29efced317",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90c3aa43-dd48-412a-8581-0fdf60279c0f",
              "parent_uuid": "91ed48f7-9f5f-4740-b6a5-bd29efced317",
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
              "uuid": "a20cd87e-6549-4fba-8f89-9e41750f5951",
              "parent_uuid": "91ed48f7-9f5f-4740-b6a5-bd29efced317",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0a10993c-3737-4536-92eb-716ed44da64e",
              "parent_uuid": "91ed48f7-9f5f-4740-b6a5-bd29efced317",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "26337c87-8153-4567-b908-eb795c6c1f2b",
              "parent_uuid": "91ed48f7-9f5f-4740-b6a5-bd29efced317",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7bfe9d37-5f2c-4707-88cd-423b910b7945",
              "parent_uuid": "91ed48f7-9f5f-4740-b6a5-bd29efced317",
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
          "uuid": "08e45490-f7fc-4a53-9985-4c884e734d28",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53b7927e-aecd-4b70-a326-68832fd76d2b",
              "parent_uuid": "08e45490-f7fc-4a53-9985-4c884e734d28",
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
              "uuid": "8e797949-a8ec-4041-a795-bb0cd3024772",
              "parent_uuid": "08e45490-f7fc-4a53-9985-4c884e734d28",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ee077b2b-dbe5-47b0-b799-6269cf72d0f0",
              "parent_uuid": "08e45490-f7fc-4a53-9985-4c884e734d28",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "71b9f4ac-3cfc-4c37-9d6d-059f1f954fd8",
              "parent_uuid": "08e45490-f7fc-4a53-9985-4c884e734d28",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d7c38522-73bc-4c64-9cc8-f87880ec0137",
              "parent_uuid": "08e45490-f7fc-4a53-9985-4c884e734d28",
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
          "uuid": "f5fc619a-d362-41cd-ba1e-d911a2ebfd66",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f266b00c-bb71-4dd3-bc16-49a0ea3617e1",
              "parent_uuid": "f5fc619a-d362-41cd-ba1e-d911a2ebfd66",
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
              "uuid": "49a7182c-4a40-42ea-894e-590a36ffc75d",
              "parent_uuid": "f5fc619a-d362-41cd-ba1e-d911a2ebfd66",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "418096fd-889f-44ae-bb76-f8ab47f22931",
              "parent_uuid": "f5fc619a-d362-41cd-ba1e-d911a2ebfd66",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "58311c8a-345f-428e-b89c-fae167e3c4ff",
              "parent_uuid": "f5fc619a-d362-41cd-ba1e-d911a2ebfd66",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "04d52334-f9d5-4403-8a30-a9b50ab67461",
              "parent_uuid": "f5fc619a-d362-41cd-ba1e-d911a2ebfd66",
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
          "uuid": "3d3db073-c418-4f9d-9323-ad3019e8dc6b",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fe178fd3-72e5-4eda-9db4-bd5301244237",
              "parent_uuid": "3d3db073-c418-4f9d-9323-ad3019e8dc6b",
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
              "uuid": "0fb32293-856b-49c2-ab1f-7808b2b36a34",
              "parent_uuid": "3d3db073-c418-4f9d-9323-ad3019e8dc6b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "608810cf-c513-4b2f-afd1-88c802388f61",
              "parent_uuid": "3d3db073-c418-4f9d-9323-ad3019e8dc6b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "633378fb-6cca-4673-88d4-c8c541561fb6",
              "parent_uuid": "3d3db073-c418-4f9d-9323-ad3019e8dc6b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b054e384-4683-46f4-b658-4152cd67ded3",
              "parent_uuid": "3d3db073-c418-4f9d-9323-ad3019e8dc6b",
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
          "uuid": "892e4dfc-0166-42f7-b5b9-271f558454c6",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "83616bee-d8e6-467d-a5c0-6418c1a3cf9c",
              "parent_uuid": "892e4dfc-0166-42f7-b5b9-271f558454c6",
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
              "uuid": "36a35c50-84c6-437f-9e56-0afa37b455ec",
              "parent_uuid": "892e4dfc-0166-42f7-b5b9-271f558454c6",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "22d47c35-eea2-422d-85a6-9972f4aec5d1",
              "parent_uuid": "892e4dfc-0166-42f7-b5b9-271f558454c6",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e1bcfe2b-6ccb-4f11-9ad3-3f9eabdb4b69",
              "parent_uuid": "892e4dfc-0166-42f7-b5b9-271f558454c6",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c0ff06b4-5196-48ab-b045-3698b282d054",
              "parent_uuid": "892e4dfc-0166-42f7-b5b9-271f558454c6",
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
          "uuid": "5a5218f2-6f50-411d-afe2-203f3d5476e3",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a7e87dee-e4cd-4f23-8938-69a995b13be3",
              "parent_uuid": "5a5218f2-6f50-411d-afe2-203f3d5476e3",
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
              "uuid": "801e6116-0421-48c8-9c2b-80ae87f3dcd8",
              "parent_uuid": "5a5218f2-6f50-411d-afe2-203f3d5476e3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3bbadea3-8cfb-4bec-9a87-cd8e0ea9ef8c",
              "parent_uuid": "5a5218f2-6f50-411d-afe2-203f3d5476e3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c2cca0bf-46f6-4033-9f8d-5e9f7a262222",
              "parent_uuid": "5a5218f2-6f50-411d-afe2-203f3d5476e3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "30c37667-ebb6-436b-8108-c4963ba0db38",
              "parent_uuid": "5a5218f2-6f50-411d-afe2-203f3d5476e3",
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
          "uuid": "1cc74039-87f2-489e-b409-8066f0fe840d",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "edf1d7f6-eda0-44eb-840f-532a78814311",
              "parent_uuid": "1cc74039-87f2-489e-b409-8066f0fe840d",
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
              "uuid": "80dc9a0c-d07e-4217-b1bd-8226e392cc52",
              "parent_uuid": "1cc74039-87f2-489e-b409-8066f0fe840d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2dc65058-4f49-4519-a136-647613e963cc",
              "parent_uuid": "1cc74039-87f2-489e-b409-8066f0fe840d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d8fdeb3b-85bf-4b9d-af7f-da56fc72a46d",
              "parent_uuid": "1cc74039-87f2-489e-b409-8066f0fe840d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0536d5dd-c105-4261-9636-4835e18951f8",
              "parent_uuid": "1cc74039-87f2-489e-b409-8066f0fe840d",
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
          "uuid": "bc7ec038-54f0-4f9f-8c99-aa4c09bf1380",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bdd5eb53-1521-49e5-b175-35002bdfd7be",
              "parent_uuid": "bc7ec038-54f0-4f9f-8c99-aa4c09bf1380",
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
              "uuid": "f2503c46-4826-4193-83c8-95d51c97e7d1",
              "parent_uuid": "bc7ec038-54f0-4f9f-8c99-aa4c09bf1380",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1be53275-584d-41e9-9a1f-2ff07823db1e",
              "parent_uuid": "bc7ec038-54f0-4f9f-8c99-aa4c09bf1380",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "946cf4e7-6100-4331-bb3c-a9ce3dbed98d",
              "parent_uuid": "bc7ec038-54f0-4f9f-8c99-aa4c09bf1380",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "405acfe0-ade8-4125-a0da-148563e25900",
              "parent_uuid": "bc7ec038-54f0-4f9f-8c99-aa4c09bf1380",
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
          "uuid": "7d110f2f-86cd-45c5-8f74-f27a86a09b96",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bd02d2b3-cdde-41b8-af8c-6f7a8793dbc5",
              "parent_uuid": "7d110f2f-86cd-45c5-8f74-f27a86a09b96",
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
          "uuid": "1eb46d76-9dcd-498c-b2e3-d33d020d033d",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "136b218f-a05d-4be0-be18-95a0306059c9",
              "parent_uuid": "1eb46d76-9dcd-498c-b2e3-d33d020d033d",
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
          "uuid": "42f10235-19fa-4b58-a19e-5fe8815ea55a",
          "parent_uuid": "c701dc7a-791e-47dd-95d4-081d6e6722f7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4c43a13-f2b6-4c6a-83b4-47ce30b94003",
              "parent_uuid": "42f10235-19fa-4b58-a19e-5fe8815ea55a",
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
                  "uuid": "d14ec05e-94ce-4165-a8b4-40a65e58a428",
                  "parent_uuid": "e4c43a13-f2b6-4c6a-83b4-47ce30b94003",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

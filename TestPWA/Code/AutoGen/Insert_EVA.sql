
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
  "uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "a02f74c5-fb79-4022-9df9-81a5d14d7823",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "824c2b9d-0de2-4179-97fd-958a562095a3",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "e1230e96-2ad2-40dc-bcfc-f2b443f939a6",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "ce7579fb-b6ef-4e80-86c9-7e3c30947554",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "df692e0b-1d47-406c-b5e4-071bd7d9d2ec",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "1205f984-8224-4887-8eda-3856cfca8761",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "abf14240-86cc-49ea-b1c7-520ef71d20bd",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
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
      "uuid": "a0612783-6518-41d6-9267-2533e769696f",
      "parent_uuid": "2f1f3993-24a6-43db-96b8-ed84b5765822",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "ca11b801-b120-42f5-aaa2-373f40b5e7c0",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e8fdd45f-6546-4fea-8c50-6204416cba36",
              "parent_uuid": "ca11b801-b120-42f5-aaa2-373f40b5e7c0",
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
              "uuid": "19a49db3-7f6a-46c4-9859-1ebe0b5114e2",
              "parent_uuid": "ca11b801-b120-42f5-aaa2-373f40b5e7c0",
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
              "uuid": "47545f3d-c9c9-42ed-a6f3-3067cb1e2e90",
              "parent_uuid": "ca11b801-b120-42f5-aaa2-373f40b5e7c0",
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
              "uuid": "92fdfea5-893d-42d8-ae34-b254326cc230",
              "parent_uuid": "ca11b801-b120-42f5-aaa2-373f40b5e7c0",
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
          "uuid": "3317b081-cadd-4574-b71f-3368151566f2",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "312b9902-70d7-4d37-8b55-d851540a5abd",
              "parent_uuid": "3317b081-cadd-4574-b71f-3368151566f2",
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
              "uuid": "7a129b51-c961-48f9-ad77-854dbc74444d",
              "parent_uuid": "3317b081-cadd-4574-b71f-3368151566f2",
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
              "uuid": "e3b89b40-7de1-4d2c-a45c-859492618628",
              "parent_uuid": "3317b081-cadd-4574-b71f-3368151566f2",
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
              "uuid": "b576f2b6-deed-4b71-b875-812333d6284b",
              "parent_uuid": "3317b081-cadd-4574-b71f-3368151566f2",
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
          "uuid": "9c2fc6b9-7d98-442c-953f-56485523de73",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2ccc82f-95b0-4833-ba02-50732f1038e0",
              "parent_uuid": "9c2fc6b9-7d98-442c-953f-56485523de73",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a1ccb759-de8e-44a9-9586-c4ccdddcb5ab",
              "parent_uuid": "9c2fc6b9-7d98-442c-953f-56485523de73",
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
              "uuid": "7619b490-4c17-4134-bd18-61ba70583512",
              "parent_uuid": "9c2fc6b9-7d98-442c-953f-56485523de73",
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
              "uuid": "b3f73b84-493e-44b3-9d97-4f5bf18eef32",
              "parent_uuid": "9c2fc6b9-7d98-442c-953f-56485523de73",
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
              "uuid": "00d6afa5-aafa-4ec4-aeb6-ac84da591b2d",
              "parent_uuid": "9c2fc6b9-7d98-442c-953f-56485523de73",
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
              "uuid": "614fc11f-61d5-46a4-a53c-2463e0d44c3b",
              "parent_uuid": "9c2fc6b9-7d98-442c-953f-56485523de73",
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
          "uuid": "9fe0bcea-10b7-467f-a15d-c97c341ce6a8",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4cd93faa-93f9-4a8c-ab10-2c42cdeb56bb",
              "parent_uuid": "9fe0bcea-10b7-467f-a15d-c97c341ce6a8",
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
          "uuid": "1f82ebb7-c216-45ae-91a3-50f74cd3127a",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11b3b2e4-954c-486b-91f0-ba5d967658fd",
              "parent_uuid": "1f82ebb7-c216-45ae-91a3-50f74cd3127a",
              "tagName": "td",
              "properties": [
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
              "uuid": "bf0d9bc6-817c-40c5-964b-7422245fbbeb",
              "parent_uuid": "1f82ebb7-c216-45ae-91a3-50f74cd3127a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ededf81a-973b-421e-a8ed-d691e9a234b7",
              "parent_uuid": "1f82ebb7-c216-45ae-91a3-50f74cd3127a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "24e1b224-c613-4563-8f37-83e75658aa0b",
                  "parent_uuid": "ededf81a-973b-421e-a8ed-d691e9a234b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa67db36-6a7b-4cb8-b48a-fb5434408736",
              "parent_uuid": "1f82ebb7-c216-45ae-91a3-50f74cd3127a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0bc6e127-c585-40fe-921a-63bd7206051e",
                  "parent_uuid": "aa67db36-6a7b-4cb8-b48a-fb5434408736",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9aca63a6-c144-488d-a8dd-9b4f04bda1d6",
              "parent_uuid": "1f82ebb7-c216-45ae-91a3-50f74cd3127a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "63009243-a678-4868-be4d-4189ad49d670",
                  "parent_uuid": "9aca63a6-c144-488d-a8dd-9b4f04bda1d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97437ab5-ef04-488e-b0b5-555f05bfef7e",
              "parent_uuid": "1f82ebb7-c216-45ae-91a3-50f74cd3127a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c1256f85-e3d3-4516-a074-f378177f1b5e",
                  "parent_uuid": "97437ab5-ef04-488e-b0b5-555f05bfef7e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6bbb2db-1a92-401d-a03a-fcd327ab55dc",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63597894-de2f-43c4-b3ca-b728a305ed42",
              "parent_uuid": "d6bbb2db-1a92-401d-a03a-fcd327ab55dc",
              "tagName": "td",
              "properties": [
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
              "uuid": "4e7a78a8-da0a-48ed-ab07-1f4c4f237898",
              "parent_uuid": "d6bbb2db-1a92-401d-a03a-fcd327ab55dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ad3fdfb4-b4ab-4866-bad6-9f9f42a8c950",
              "parent_uuid": "d6bbb2db-1a92-401d-a03a-fcd327ab55dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e0e905cb-91ed-44ca-bf6c-93a08e894ed3",
                  "parent_uuid": "ad3fdfb4-b4ab-4866-bad6-9f9f42a8c950",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4ac827b-9dbc-4218-8003-92ca108ce2db",
              "parent_uuid": "d6bbb2db-1a92-401d-a03a-fcd327ab55dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0b18be2a-48ab-41f0-8a6e-a6026541aa64",
                  "parent_uuid": "e4ac827b-9dbc-4218-8003-92ca108ce2db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "899425f5-d26e-4ed2-a6e4-211c474f3988",
              "parent_uuid": "d6bbb2db-1a92-401d-a03a-fcd327ab55dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "4ebeba75-1933-47f0-9bfe-f87a4fb0a11c",
                  "parent_uuid": "899425f5-d26e-4ed2-a6e4-211c474f3988",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "385a65c8-7b50-46d0-9eb5-414ba174eac9",
              "parent_uuid": "d6bbb2db-1a92-401d-a03a-fcd327ab55dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cb71abfd-25b7-44ae-9f67-ea62770c0c49",
                  "parent_uuid": "385a65c8-7b50-46d0-9eb5-414ba174eac9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ff221f92-6304-4325-b0fa-676295a1e0b1",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d2787ea-7846-49f8-89d2-9010a0045974",
              "parent_uuid": "ff221f92-6304-4325-b0fa-676295a1e0b1",
              "tagName": "td",
              "properties": [
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
              "uuid": "01c6e565-ba42-4e89-8a6e-753ef5c38fe3",
              "parent_uuid": "ff221f92-6304-4325-b0fa-676295a1e0b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "eedaba00-32f7-49d9-b04a-4ee8fa9b5d19",
              "parent_uuid": "ff221f92-6304-4325-b0fa-676295a1e0b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c805ba9b-4590-424f-bc6b-43dd33482fed",
                  "parent_uuid": "eedaba00-32f7-49d9-b04a-4ee8fa9b5d19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a50c0d8e-089b-4f5d-8379-26fbb8fb4dc4",
              "parent_uuid": "ff221f92-6304-4325-b0fa-676295a1e0b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "93255ba5-deb3-4a5d-8e7f-4bc9a3e4899f",
                  "parent_uuid": "a50c0d8e-089b-4f5d-8379-26fbb8fb4dc4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c5b80b3-d4a7-4a8c-acbe-0339ce4d2841",
              "parent_uuid": "ff221f92-6304-4325-b0fa-676295a1e0b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "81036426-84b6-40cb-982a-c1f9050850c1",
                  "parent_uuid": "5c5b80b3-d4a7-4a8c-acbe-0339ce4d2841",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e9fbd60-8e25-4354-9731-cdefd101e231",
              "parent_uuid": "ff221f92-6304-4325-b0fa-676295a1e0b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "4efd43bd-2b43-40d1-b695-82b239425746",
                  "parent_uuid": "9e9fbd60-8e25-4354-9731-cdefd101e231",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cdddf692-3bf8-4a04-bafe-695273291a0b",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c69dda29-dc7f-4edc-bda4-ac7eab08b35b",
              "parent_uuid": "cdddf692-3bf8-4a04-bafe-695273291a0b",
              "tagName": "td",
              "properties": [
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
              "uuid": "f9493a50-ad56-43b8-b46b-e2666d59774a",
              "parent_uuid": "cdddf692-3bf8-4a04-bafe-695273291a0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "9b0af311-cad5-4586-84c9-4430eccc682b",
              "parent_uuid": "cdddf692-3bf8-4a04-bafe-695273291a0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cb49a035-a164-4d63-a58e-83029d505451",
                  "parent_uuid": "9b0af311-cad5-4586-84c9-4430eccc682b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b57f1bd3-7e38-4259-95c0-796a6fdd4652",
              "parent_uuid": "cdddf692-3bf8-4a04-bafe-695273291a0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "f2018b66-1c04-4686-bede-7d2ed8ce7a55",
                  "parent_uuid": "b57f1bd3-7e38-4259-95c0-796a6fdd4652",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8154d78f-15ff-40ea-9a26-4a3b9a977d99",
              "parent_uuid": "cdddf692-3bf8-4a04-bafe-695273291a0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a5770291-2276-4eb7-afb9-759e781c3d7e",
                  "parent_uuid": "8154d78f-15ff-40ea-9a26-4a3b9a977d99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3e8315c-0e28-4410-89b7-75db4371d2d5",
              "parent_uuid": "cdddf692-3bf8-4a04-bafe-695273291a0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cc64e3ad-297f-4f87-add6-b6fd47b36572",
                  "parent_uuid": "e3e8315c-0e28-4410-89b7-75db4371d2d5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e84c2aba-2bc3-40e7-a0b6-8c0c7b3d4b96",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da8205a6-b1f3-4683-8c4c-5c7313f18406",
              "parent_uuid": "e84c2aba-2bc3-40e7-a0b6-8c0c7b3d4b96",
              "tagName": "td",
              "properties": [
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
              "uuid": "d1b423d7-410b-4a43-9204-9fc3d8e9314e",
              "parent_uuid": "e84c2aba-2bc3-40e7-a0b6-8c0c7b3d4b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "e5581786-ce94-45e8-a06c-144898f315ea",
              "parent_uuid": "e84c2aba-2bc3-40e7-a0b6-8c0c7b3d4b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7f35c059-5e00-442b-8567-15679bbbe315",
                  "parent_uuid": "e5581786-ce94-45e8-a06c-144898f315ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbccf30a-5ddd-492e-9b18-c81eba25158f",
              "parent_uuid": "e84c2aba-2bc3-40e7-a0b6-8c0c7b3d4b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "35320840-4483-476d-a3fc-212e381d1d6a",
                  "parent_uuid": "bbccf30a-5ddd-492e-9b18-c81eba25158f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3ebe3fb-2746-4fa8-8aba-7b501e97682e",
              "parent_uuid": "e84c2aba-2bc3-40e7-a0b6-8c0c7b3d4b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "12063071-3062-4844-8246-d9d746433f0e",
                  "parent_uuid": "f3ebe3fb-2746-4fa8-8aba-7b501e97682e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "357ea863-acb2-42dd-b9c1-e864632adea2",
              "parent_uuid": "e84c2aba-2bc3-40e7-a0b6-8c0c7b3d4b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "44a13b51-64e4-47cc-8ed6-e279bac76b26",
                  "parent_uuid": "357ea863-acb2-42dd-b9c1-e864632adea2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8ff3ccb2-4f5e-42d9-83eb-d14cfee73cde",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "43d34bf6-e7a5-4284-a50c-1d9bba1ed41c",
              "parent_uuid": "8ff3ccb2-4f5e-42d9-83eb-d14cfee73cde",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7c5dd1d3-f7da-4181-b72e-288662c24b92",
              "parent_uuid": "8ff3ccb2-4f5e-42d9-83eb-d14cfee73cde",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "6742e1a9-17d4-4c08-9e2c-0e33589c436c",
              "parent_uuid": "8ff3ccb2-4f5e-42d9-83eb-d14cfee73cde",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "69d320fc-1c5e-42e5-b5f4-e036a6e27de0",
                  "parent_uuid": "6742e1a9-17d4-4c08-9e2c-0e33589c436c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80062c27-ec9d-4f90-8054-22945601bedb",
              "parent_uuid": "8ff3ccb2-4f5e-42d9-83eb-d14cfee73cde",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "9a5cf43c-c54e-4f4f-9aa0-0e67311908f4",
                  "parent_uuid": "80062c27-ec9d-4f90-8054-22945601bedb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abd7be54-53b5-44af-ae5c-7b148111e0ca",
              "parent_uuid": "8ff3ccb2-4f5e-42d9-83eb-d14cfee73cde",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e6946631-0db0-4f9d-9830-552832c67331",
                  "parent_uuid": "abd7be54-53b5-44af-ae5c-7b148111e0ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b126fd1-e4cf-4063-b079-d915cb2ce6ea",
              "parent_uuid": "8ff3ccb2-4f5e-42d9-83eb-d14cfee73cde",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "18320d30-d015-4989-b1d4-19b25a5af2e4",
                  "parent_uuid": "5b126fd1-e4cf-4063-b079-d915cb2ce6ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0111ff8b-d870-46b7-97d1-1b77537a00ba",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b16de4ed-5b40-493d-ba0b-a3819aaec655",
              "parent_uuid": "0111ff8b-d870-46b7-97d1-1b77537a00ba",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e453dbd9-5b7a-43c4-b9fb-dfb5372cfa56",
              "parent_uuid": "0111ff8b-d870-46b7-97d1-1b77537a00ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "55309c84-e9c0-488b-bf0b-e2c1f96ace01",
              "parent_uuid": "0111ff8b-d870-46b7-97d1-1b77537a00ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "af2bf6d2-1f3c-4afd-8996-db321ba69ebc",
                  "parent_uuid": "55309c84-e9c0-488b-bf0b-e2c1f96ace01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "979dc04a-e113-41c2-b60f-7ded1967e299",
              "parent_uuid": "0111ff8b-d870-46b7-97d1-1b77537a00ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b120a86a-0d53-4b4c-99e5-38f4a8fdf529",
                  "parent_uuid": "979dc04a-e113-41c2-b60f-7ded1967e299",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8d05d68-9029-4ce5-8b12-f8868ae050bc",
              "parent_uuid": "0111ff8b-d870-46b7-97d1-1b77537a00ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "394d6d29-c85f-4cdd-b878-ca0696fcf7e5",
                  "parent_uuid": "e8d05d68-9029-4ce5-8b12-f8868ae050bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71a35e41-70aa-49af-9eba-912f090f1da5",
              "parent_uuid": "0111ff8b-d870-46b7-97d1-1b77537a00ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "84cfe095-78fa-4530-9ad4-acb1e7c21f0a",
                  "parent_uuid": "71a35e41-70aa-49af-9eba-912f090f1da5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "438e5b4c-cc8b-4811-97c3-8c0f85c398f4",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1e60110-ebab-462b-b08a-db863f3c9674",
              "parent_uuid": "438e5b4c-cc8b-4811-97c3-8c0f85c398f4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f62a76cb-cf3a-4094-bf43-480fe9351da0",
              "parent_uuid": "438e5b4c-cc8b-4811-97c3-8c0f85c398f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ca708776-4d7e-4599-9549-c30020094549",
              "parent_uuid": "438e5b4c-cc8b-4811-97c3-8c0f85c398f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "f71218b8-2e9d-4248-ac94-5ef2e0d868d4",
                  "parent_uuid": "ca708776-4d7e-4599-9549-c30020094549",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c58398bc-1feb-444c-8b48-2fb3d8f97242",
              "parent_uuid": "438e5b4c-cc8b-4811-97c3-8c0f85c398f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0d31034f-923b-443f-b39a-8613a2ed059c",
                  "parent_uuid": "c58398bc-1feb-444c-8b48-2fb3d8f97242",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc158023-8a14-4a22-9c5a-7fd9841e7d8e",
              "parent_uuid": "438e5b4c-cc8b-4811-97c3-8c0f85c398f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2362a2b7-2a1c-42d0-bb21-7163c863699c",
                  "parent_uuid": "fc158023-8a14-4a22-9c5a-7fd9841e7d8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dd4e3a6-734a-40b8-9546-f7635cc1e58a",
              "parent_uuid": "438e5b4c-cc8b-4811-97c3-8c0f85c398f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "71ca772d-e715-4469-adf2-3a3fce385412",
                  "parent_uuid": "0dd4e3a6-734a-40b8-9546-f7635cc1e58a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e193481-1a1d-4730-8c72-93cd08af7f94",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f26fb0c-80b8-40f2-b095-4e4380fcfe5a",
              "parent_uuid": "7e193481-1a1d-4730-8c72-93cd08af7f94",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "aa9f1c21-6230-46ba-a9b4-9ebf51b0bb89",
              "parent_uuid": "7e193481-1a1d-4730-8c72-93cd08af7f94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "9e4fd876-3045-453e-bf41-dbd7c63d1369",
              "parent_uuid": "7e193481-1a1d-4730-8c72-93cd08af7f94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2c6b8166-6103-4b1a-9703-884891780a7d",
                  "parent_uuid": "9e4fd876-3045-453e-bf41-dbd7c63d1369",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2965c5c8-01a8-4be9-a404-424a85599c09",
              "parent_uuid": "7e193481-1a1d-4730-8c72-93cd08af7f94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "4ae51dfe-aed3-46b7-bb28-790fa71ef12f",
                  "parent_uuid": "2965c5c8-01a8-4be9-a404-424a85599c09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a195f4f5-666f-4e37-b7af-3ab07e2abeb8",
              "parent_uuid": "7e193481-1a1d-4730-8c72-93cd08af7f94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a75d6190-0313-4f6c-9b4d-4acee5d86d69",
                  "parent_uuid": "a195f4f5-666f-4e37-b7af-3ab07e2abeb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62d8f7f4-2127-4591-904c-7a0e4a2a169b",
              "parent_uuid": "7e193481-1a1d-4730-8c72-93cd08af7f94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "366df1e4-4338-4cdf-888e-59104721157c",
                  "parent_uuid": "62d8f7f4-2127-4591-904c-7a0e4a2a169b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7ec21237-b237-4cac-b009-8f39508da8ea",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b3f6b02-cc49-459b-8fac-fef36eb626a0",
              "parent_uuid": "7ec21237-b237-4cac-b009-8f39508da8ea",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e6b8d976-73c2-412b-bc10-77b589c56e29",
              "parent_uuid": "7ec21237-b237-4cac-b009-8f39508da8ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "70db71db-a9d6-48c3-b1bc-4aa0900378fe",
              "parent_uuid": "7ec21237-b237-4cac-b009-8f39508da8ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "809f2aa2-7709-406a-8c43-518f269c4e46",
                  "parent_uuid": "70db71db-a9d6-48c3-b1bc-4aa0900378fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e78522ef-c7e8-4882-8284-30321804bfc6",
              "parent_uuid": "7ec21237-b237-4cac-b009-8f39508da8ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ef2e9e08-eae0-4a19-aecd-c1787df0ffc7",
                  "parent_uuid": "e78522ef-c7e8-4882-8284-30321804bfc6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4b589cc-3fab-408a-a57d-0f9f90401303",
              "parent_uuid": "7ec21237-b237-4cac-b009-8f39508da8ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "364d6c1d-3658-475f-9876-be76be7bc19c",
                  "parent_uuid": "f4b589cc-3fab-408a-a57d-0f9f90401303",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dab61dd1-4bdd-4ec7-9bb4-e53ac4750bc9",
              "parent_uuid": "7ec21237-b237-4cac-b009-8f39508da8ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "21db7389-0fae-4925-87cc-80f09856a46b",
                  "parent_uuid": "dab61dd1-4bdd-4ec7-9bb4-e53ac4750bc9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2f8eb512-feb4-47d3-9ba7-d3ac2da28916",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c9b317c-a96b-46e6-83c1-88665d73b239",
              "parent_uuid": "2f8eb512-feb4-47d3-9ba7-d3ac2da28916",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "73233588-c732-4b59-83ed-a9569225320a",
              "parent_uuid": "2f8eb512-feb4-47d3-9ba7-d3ac2da28916",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "32b0ff3c-0e40-41d6-a504-24e3272df495",
              "parent_uuid": "2f8eb512-feb4-47d3-9ba7-d3ac2da28916",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "fbd62a5d-e35e-4030-a648-2574095230ec",
                  "parent_uuid": "32b0ff3c-0e40-41d6-a504-24e3272df495",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6beaf55-7c72-4835-b10d-bb4cbac757d1",
              "parent_uuid": "2f8eb512-feb4-47d3-9ba7-d3ac2da28916",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ba6bc681-bc00-4868-bde6-a04529140805",
                  "parent_uuid": "d6beaf55-7c72-4835-b10d-bb4cbac757d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2e9e0e8-0db5-458f-83c7-12ddfcd2308c",
              "parent_uuid": "2f8eb512-feb4-47d3-9ba7-d3ac2da28916",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cb55d428-bae0-4ab9-b0c9-4f0534fb4242",
                  "parent_uuid": "a2e9e0e8-0db5-458f-83c7-12ddfcd2308c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ccbbe0a-7ee5-42d2-902c-5f5837c99f6c",
              "parent_uuid": "2f8eb512-feb4-47d3-9ba7-d3ac2da28916",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "07a8f8d5-7b1b-4a93-8a95-ec1a2b218b32",
                  "parent_uuid": "4ccbbe0a-7ee5-42d2-902c-5f5837c99f6c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "54a1a314-7999-4d5e-a1a5-12d52cc4d592",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db30bea9-daf4-4244-887b-3d13814dde28",
              "parent_uuid": "54a1a314-7999-4d5e-a1a5-12d52cc4d592",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4f70ea11-f41a-4878-8829-1ae1f2bd29a9",
              "parent_uuid": "54a1a314-7999-4d5e-a1a5-12d52cc4d592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "018a2178-d6b2-4422-b891-f700c4321b6b",
              "parent_uuid": "54a1a314-7999-4d5e-a1a5-12d52cc4d592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "76df3d80-3d07-4dd6-86b5-5ebfb8028620",
                  "parent_uuid": "018a2178-d6b2-4422-b891-f700c4321b6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c7752d0-558b-4b0e-98f2-e81d72702878",
              "parent_uuid": "54a1a314-7999-4d5e-a1a5-12d52cc4d592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "99a75ccc-ebc3-4989-b152-682288d082c5",
                  "parent_uuid": "1c7752d0-558b-4b0e-98f2-e81d72702878",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "179f6de3-dfca-4673-91fa-51e74e58ad56",
              "parent_uuid": "54a1a314-7999-4d5e-a1a5-12d52cc4d592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "73d29d4b-74ed-47ef-9b40-23478da5f4d8",
                  "parent_uuid": "179f6de3-dfca-4673-91fa-51e74e58ad56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9064725-852c-46db-be7c-0989d7eacff3",
              "parent_uuid": "54a1a314-7999-4d5e-a1a5-12d52cc4d592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e028dcb6-5ee1-4e8d-ad6c-79d190b91a41",
                  "parent_uuid": "c9064725-852c-46db-be7c-0989d7eacff3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d383fc2a-b1e8-40b2-be5c-596ccfc97e41",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f815e7c8-be5b-4b16-9449-b516023fcdb3",
              "parent_uuid": "d383fc2a-b1e8-40b2-be5c-596ccfc97e41",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "355b3cf7-290b-44f5-b077-681992da5a3d",
              "parent_uuid": "d383fc2a-b1e8-40b2-be5c-596ccfc97e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "e7993e32-65e7-4b76-bc18-05dac7a16e04",
              "parent_uuid": "d383fc2a-b1e8-40b2-be5c-596ccfc97e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b8b4d59d-2b08-452e-a9ac-b4bb2a6d961c",
                  "parent_uuid": "e7993e32-65e7-4b76-bc18-05dac7a16e04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6a87c8a-ba02-48e1-84b6-297bd480f1aa",
              "parent_uuid": "d383fc2a-b1e8-40b2-be5c-596ccfc97e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7dfb30ce-0fbf-4ab4-bb98-e58059be7317",
                  "parent_uuid": "c6a87c8a-ba02-48e1-84b6-297bd480f1aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55d8fda0-c140-4183-817d-aba4247538cf",
              "parent_uuid": "d383fc2a-b1e8-40b2-be5c-596ccfc97e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e2c3bea3-b3af-4f4b-b724-bb999c019aaf",
                  "parent_uuid": "55d8fda0-c140-4183-817d-aba4247538cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db0a756e-e0ea-4cc7-83f0-bca7026baff5",
              "parent_uuid": "d383fc2a-b1e8-40b2-be5c-596ccfc97e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b5bf2e66-29d9-47d0-8c81-3b0beb8db477",
                  "parent_uuid": "db0a756e-e0ea-4cc7-83f0-bca7026baff5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a82a465-fa2f-4583-a8be-f3ec8842a48e",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7447da5-0d88-4eee-bafa-00685ed74fbc",
              "parent_uuid": "2a82a465-fa2f-4583-a8be-f3ec8842a48e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "573b750a-1c4e-4743-9eeb-16e3a7db24da",
              "parent_uuid": "2a82a465-fa2f-4583-a8be-f3ec8842a48e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "a947decb-4ad2-44af-b4c3-ce6a4d30487a",
              "parent_uuid": "2a82a465-fa2f-4583-a8be-f3ec8842a48e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "664a576c-5203-417d-993a-a80fd13d8df0",
                  "parent_uuid": "a947decb-4ad2-44af-b4c3-ce6a4d30487a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "265a15a7-97ed-49f5-a773-4d035add6ba9",
              "parent_uuid": "2a82a465-fa2f-4583-a8be-f3ec8842a48e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b2a235e1-7062-4b42-b2dd-efa11c92b10f",
                  "parent_uuid": "265a15a7-97ed-49f5-a773-4d035add6ba9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00f6380f-cf3c-40d7-bbcf-df01e6cb0c4a",
              "parent_uuid": "2a82a465-fa2f-4583-a8be-f3ec8842a48e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0f8717fb-697e-4043-936a-1970ac67d709",
                  "parent_uuid": "00f6380f-cf3c-40d7-bbcf-df01e6cb0c4a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d48777e-eadb-40ac-9745-ea61153a7691",
              "parent_uuid": "2a82a465-fa2f-4583-a8be-f3ec8842a48e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e0e1e425-749a-45a7-a692-eaae92f35034",
                  "parent_uuid": "1d48777e-eadb-40ac-9745-ea61153a7691",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e28e93ba-13c6-4c73-9558-ab819aa08f3b",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "024f2657-2d9e-4c6d-9f82-aff26ee54ea1",
              "parent_uuid": "e28e93ba-13c6-4c73-9558-ab819aa08f3b",
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
          "uuid": "d3fa0658-2e01-4c79-8ba3-05bb651ab432",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b1e77d20-3516-4f0c-aa0c-7c14a9c6acc2",
              "parent_uuid": "d3fa0658-2e01-4c79-8ba3-05bb651ab432",
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
          "uuid": "d6964212-e51d-437f-9922-eaf1faea08ce",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6d0164e-8d1c-4097-b3b1-d26aaeaabf56",
              "parent_uuid": "d6964212-e51d-437f-9922-eaf1faea08ce",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f6d6317c-b874-48de-855f-d0b5ec3280e2",
              "parent_uuid": "d6964212-e51d-437f-9922-eaf1faea08ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f1b1d791-c478-4238-b0a1-d4ee33122501",
              "parent_uuid": "d6964212-e51d-437f-9922-eaf1faea08ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "5ece89e5-ed71-4544-8634-cc9ace0ffdf4",
                  "parent_uuid": "f1b1d791-c478-4238-b0a1-d4ee33122501",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67ea8e33-faf7-41c6-b027-508530e6219b",
              "parent_uuid": "d6964212-e51d-437f-9922-eaf1faea08ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "603e838b-d972-44cb-b6a9-6f63d6c580f4",
                  "parent_uuid": "67ea8e33-faf7-41c6-b027-508530e6219b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12ac4559-6fca-447b-b54b-24193eed9430",
              "parent_uuid": "d6964212-e51d-437f-9922-eaf1faea08ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a6134c8e-8b4a-454c-80c9-9a4547e8ac58",
                  "parent_uuid": "12ac4559-6fca-447b-b54b-24193eed9430",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6affe45-907f-4ed3-9364-26cb26b4d038",
              "parent_uuid": "d6964212-e51d-437f-9922-eaf1faea08ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ccd19f55-0186-4126-bccf-b743e3bbc584",
                  "parent_uuid": "e6affe45-907f-4ed3-9364-26cb26b4d038",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "1aa17674-0523-4a55-9513-6f6267b302a2",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "490e0c8d-8ffd-4e4e-8975-ddb8e2b938f1",
              "parent_uuid": "1aa17674-0523-4a55-9513-6f6267b302a2",
              "tagName": "td",
              "properties": [
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
              "uuid": "23600576-b9b0-4cdf-a0cb-956ebfd5718b",
              "parent_uuid": "1aa17674-0523-4a55-9513-6f6267b302a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "0e0684e0-366a-4e13-a411-830a138da23f",
              "parent_uuid": "1aa17674-0523-4a55-9513-6f6267b302a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2c276c72-6ef1-4595-bfe8-2d7c5be0993d",
                  "parent_uuid": "0e0684e0-366a-4e13-a411-830a138da23f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e925fd47-8639-4611-ab89-b3b4beb7ad53",
              "parent_uuid": "1aa17674-0523-4a55-9513-6f6267b302a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "de57e704-e181-4964-b3d3-ced1d0bff866",
                  "parent_uuid": "e925fd47-8639-4611-ab89-b3b4beb7ad53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "856854ad-9945-437a-8015-e2f999d72ec3",
              "parent_uuid": "1aa17674-0523-4a55-9513-6f6267b302a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2f34c01c-7c33-4e87-ad9e-74a506a36bcb",
                  "parent_uuid": "856854ad-9945-437a-8015-e2f999d72ec3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1012cc5b-2166-4948-8ea8-8a54ccea4749",
              "parent_uuid": "1aa17674-0523-4a55-9513-6f6267b302a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "aab3a135-763b-4c95-b39c-1db4a440efe0",
                  "parent_uuid": "1012cc5b-2166-4948-8ea8-8a54ccea4749",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "ac11f60d-3cae-4d39-ac09-465cf957d63d",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2caf8d24-14b8-4420-95b3-018133ec9a28",
              "parent_uuid": "ac11f60d-3cae-4d39-ac09-465cf957d63d",
              "tagName": "td",
              "properties": [
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
              "uuid": "49a26306-8e32-40b9-be2f-51bac1b8b740",
              "parent_uuid": "ac11f60d-3cae-4d39-ac09-465cf957d63d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "8def0d8a-a94b-4b1b-8a84-f7a67204175a",
              "parent_uuid": "ac11f60d-3cae-4d39-ac09-465cf957d63d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "bb336662-35f5-425d-ac1c-f957ca0ff67a",
                  "parent_uuid": "8def0d8a-a94b-4b1b-8a84-f7a67204175a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "636e4ed5-6834-4416-9cf4-84758143c95b",
              "parent_uuid": "ac11f60d-3cae-4d39-ac09-465cf957d63d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "28a2edae-9536-4cf7-8e85-510c112aea2e",
                  "parent_uuid": "636e4ed5-6834-4416-9cf4-84758143c95b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edf3d1f3-724d-4fdb-bbb4-c3958be6a471",
              "parent_uuid": "ac11f60d-3cae-4d39-ac09-465cf957d63d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "5978c224-2405-40d8-9427-0c0600cf1bbf",
                  "parent_uuid": "edf3d1f3-724d-4fdb-bbb4-c3958be6a471",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83ef419b-47a9-4df9-afde-3c77b5d94678",
              "parent_uuid": "ac11f60d-3cae-4d39-ac09-465cf957d63d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "02cad503-8f79-4506-b643-9f3225e2c6d3",
                  "parent_uuid": "83ef419b-47a9-4df9-afde-3c77b5d94678",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "5354f4fa-15e2-400a-8c5a-6b53fa22739c",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a80f4dbb-47a1-4300-a17c-7a4e6b8d1526",
              "parent_uuid": "5354f4fa-15e2-400a-8c5a-6b53fa22739c",
              "tagName": "td",
              "properties": [
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
              "uuid": "d80be2fe-8148-457c-ab8a-28301dad6585",
              "parent_uuid": "5354f4fa-15e2-400a-8c5a-6b53fa22739c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "101f3494-6f38-4111-9482-dc1630642be3",
              "parent_uuid": "5354f4fa-15e2-400a-8c5a-6b53fa22739c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2a162fa5-a694-411a-95f8-b6627225e739",
                  "parent_uuid": "101f3494-6f38-4111-9482-dc1630642be3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "120b66ee-8b77-439e-b595-f82a5fbd0d4d",
              "parent_uuid": "5354f4fa-15e2-400a-8c5a-6b53fa22739c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b7900830-58cb-46a3-876a-a60364348fce",
                  "parent_uuid": "120b66ee-8b77-439e-b595-f82a5fbd0d4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5b8ad99-657d-4aca-9e3e-40c0e1695d08",
              "parent_uuid": "5354f4fa-15e2-400a-8c5a-6b53fa22739c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ef42534b-4290-4446-a3c8-e07e43dbd586",
                  "parent_uuid": "a5b8ad99-657d-4aca-9e3e-40c0e1695d08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43cc0c41-27a2-4284-bcab-0c327ad6721a",
              "parent_uuid": "5354f4fa-15e2-400a-8c5a-6b53fa22739c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e892559d-e573-4a09-a21f-05e44b864f75",
                  "parent_uuid": "43cc0c41-27a2-4284-bcab-0c327ad6721a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9e31b87-a0b9-42c6-a741-dda99409dd89",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6486e9b1-c9ad-43e4-ad5f-7287ede066e6",
              "parent_uuid": "b9e31b87-a0b9-42c6-a741-dda99409dd89",
              "tagName": "td",
              "properties": [
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
              "uuid": "ea0ce96f-6230-4f50-9d5b-d29b461ffcc3",
              "parent_uuid": "b9e31b87-a0b9-42c6-a741-dda99409dd89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "bd5900c5-0adf-4853-b38b-9bd937d13397",
              "parent_uuid": "b9e31b87-a0b9-42c6-a741-dda99409dd89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c36bbec8-b432-404d-a496-5a9c6fd3cb09",
                  "parent_uuid": "bd5900c5-0adf-4853-b38b-9bd937d13397",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "583e328c-64a3-4014-ba0f-bb8b3a291473",
              "parent_uuid": "b9e31b87-a0b9-42c6-a741-dda99409dd89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "97377b86-4609-4477-9ed7-02342e891bd7",
                  "parent_uuid": "583e328c-64a3-4014-ba0f-bb8b3a291473",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd6d75a5-1ea8-4cd1-901b-ebdc6a295e4b",
              "parent_uuid": "b9e31b87-a0b9-42c6-a741-dda99409dd89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3b4b816e-5425-4e72-9cf9-fbb52b34e236",
                  "parent_uuid": "bd6d75a5-1ea8-4cd1-901b-ebdc6a295e4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "094e7c89-d379-4593-b210-a907112f004d",
              "parent_uuid": "b9e31b87-a0b9-42c6-a741-dda99409dd89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "eae456d9-dcb4-426f-a17d-eccb9f627392",
                  "parent_uuid": "094e7c89-d379-4593-b210-a907112f004d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fed573a4-04e5-43e9-890a-2736d3689445",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af40b476-b850-4e22-b7df-d5867970bc89",
              "parent_uuid": "fed573a4-04e5-43e9-890a-2736d3689445",
              "tagName": "td",
              "properties": [
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
              "uuid": "80fe157c-e57d-490e-b75f-7926ea652230",
              "parent_uuid": "fed573a4-04e5-43e9-890a-2736d3689445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "e77318e0-6151-4723-9184-22ec268b6cb7",
              "parent_uuid": "fed573a4-04e5-43e9-890a-2736d3689445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c6d29acb-1152-4787-ae0e-8ff5fb22372b",
                  "parent_uuid": "e77318e0-6151-4723-9184-22ec268b6cb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4d63118-2402-49f6-93d9-8a782b78b64d",
              "parent_uuid": "fed573a4-04e5-43e9-890a-2736d3689445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7879c93a-a361-426f-9b15-684630e16f17",
                  "parent_uuid": "d4d63118-2402-49f6-93d9-8a782b78b64d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bede82fa-64da-4003-a264-23f34a5d53c2",
              "parent_uuid": "fed573a4-04e5-43e9-890a-2736d3689445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "1eebcbe9-dd65-4f93-a5f5-c4cb1a5aecc0",
                  "parent_uuid": "bede82fa-64da-4003-a264-23f34a5d53c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac4a7d33-1f2e-4ed8-aa3b-2117899fe21b",
              "parent_uuid": "fed573a4-04e5-43e9-890a-2736d3689445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "4365bbef-86fd-4d28-9f5e-9e066b176c40",
                  "parent_uuid": "ac4a7d33-1f2e-4ed8-aa3b-2117899fe21b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "74aca07c-35ab-463c-82e0-0b6d5be33ca3",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed29311d-3c2b-4afd-a5e6-07c1270422b9",
              "parent_uuid": "74aca07c-35ab-463c-82e0-0b6d5be33ca3",
              "tagName": "td",
              "properties": [
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
              "uuid": "7392be38-bbfb-4139-b52d-ffc5e59c7699",
              "parent_uuid": "74aca07c-35ab-463c-82e0-0b6d5be33ca3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "f378c2fa-c160-43aa-8d10-eb7b475a4ea5",
              "parent_uuid": "74aca07c-35ab-463c-82e0-0b6d5be33ca3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7830e447-5d69-4610-92f9-8c0c75e77e52",
                  "parent_uuid": "f378c2fa-c160-43aa-8d10-eb7b475a4ea5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03a96b8a-90f2-46d8-bf2c-648cf15fbfae",
              "parent_uuid": "74aca07c-35ab-463c-82e0-0b6d5be33ca3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "864e24a6-1544-4742-a851-c42e43003724",
                  "parent_uuid": "03a96b8a-90f2-46d8-bf2c-648cf15fbfae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "835d05f0-fac7-426f-b0d8-06715d35935f",
              "parent_uuid": "74aca07c-35ab-463c-82e0-0b6d5be33ca3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a7584b18-c2b5-4912-8211-c8d828e88439",
                  "parent_uuid": "835d05f0-fac7-426f-b0d8-06715d35935f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f88c1c7d-6f50-4ca3-886d-fcde5d0b7a66",
              "parent_uuid": "74aca07c-35ab-463c-82e0-0b6d5be33ca3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "f8ed3f40-3c31-478f-a0f9-c07212f0e2a2",
                  "parent_uuid": "f88c1c7d-6f50-4ca3-886d-fcde5d0b7a66",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af3c2c47-7ef6-48b9-93d2-75426127efc1",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c4cbe8e1-7885-4f38-9cd6-05d54c31cd65",
              "parent_uuid": "af3c2c47-7ef6-48b9-93d2-75426127efc1",
              "tagName": "td",
              "properties": [
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
              "uuid": "3b5cc5c1-9f46-41c8-b1d0-e2f50b329844",
              "parent_uuid": "af3c2c47-7ef6-48b9-93d2-75426127efc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "750c79f0-ac60-449a-aff8-af0772f1e50c",
              "parent_uuid": "af3c2c47-7ef6-48b9-93d2-75426127efc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "275e31ff-2daa-4139-a643-a310005d6b74",
                  "parent_uuid": "750c79f0-ac60-449a-aff8-af0772f1e50c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a10ea315-750d-4022-b4ae-a770d6c52b30",
              "parent_uuid": "af3c2c47-7ef6-48b9-93d2-75426127efc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "5404ac87-424e-4d41-a13b-620a875bbbb9",
                  "parent_uuid": "a10ea315-750d-4022-b4ae-a770d6c52b30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eee063c3-9106-44a2-8115-fb2ea87c00e3",
              "parent_uuid": "af3c2c47-7ef6-48b9-93d2-75426127efc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "42282929-006a-4b50-a04d-088cbc65fde0",
                  "parent_uuid": "eee063c3-9106-44a2-8115-fb2ea87c00e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2f02e4f-5ef1-4565-875d-cf9cc1a975f2",
              "parent_uuid": "af3c2c47-7ef6-48b9-93d2-75426127efc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2ab21d7c-7274-4ac0-9e2e-9f428912ba17",
                  "parent_uuid": "e2f02e4f-5ef1-4565-875d-cf9cc1a975f2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f30fb1b-c4c3-42a6-a57d-def4a7f69c96",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "316e0d90-fc35-4e2a-a211-b0f01e220b72",
              "parent_uuid": "0f30fb1b-c4c3-42a6-a57d-def4a7f69c96",
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
          "uuid": "645e087f-3300-4671-8593-b19f127883f5",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3cb87636-4fe8-436a-831d-07f3f62f0937",
              "parent_uuid": "645e087f-3300-4671-8593-b19f127883f5",
              "tagName": "td",
              "properties": [
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
              "uuid": "16eaa1ad-dccc-4b7f-a4f1-fd78ce02c78a",
              "parent_uuid": "645e087f-3300-4671-8593-b19f127883f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "fd8ee5ac-92f3-482a-ba82-6a135cec21ce",
              "parent_uuid": "645e087f-3300-4671-8593-b19f127883f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "d8d2745b-7718-40c9-ae56-4888beab8fe1",
                  "parent_uuid": "fd8ee5ac-92f3-482a-ba82-6a135cec21ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "319f4258-347c-4c8f-9235-506841d17c80",
              "parent_uuid": "645e087f-3300-4671-8593-b19f127883f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e611537f-487e-40c6-b429-468509923050",
                  "parent_uuid": "319f4258-347c-4c8f-9235-506841d17c80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77c2c3d7-21a7-41c7-b3ae-ecff0debb2d5",
              "parent_uuid": "645e087f-3300-4671-8593-b19f127883f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cb012b7b-bae7-4481-81ba-8ac1b0a8b7b9",
                  "parent_uuid": "77c2c3d7-21a7-41c7-b3ae-ecff0debb2d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc4129c4-3b60-4d2b-bbf2-9a54be3bf045",
              "parent_uuid": "645e087f-3300-4671-8593-b19f127883f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ac35c77a-b402-406d-af28-9f0d26617e4c",
                  "parent_uuid": "bc4129c4-3b60-4d2b-bbf2-9a54be3bf045",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eed239ca-5d10-4d29-b754-1d1a2e4b0a20",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52b84353-7160-4f60-8bd6-436b2e229678",
              "parent_uuid": "eed239ca-5d10-4d29-b754-1d1a2e4b0a20",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f6da7c33-49fa-43c7-86f3-74154f8feb04",
              "parent_uuid": "eed239ca-5d10-4d29-b754-1d1a2e4b0a20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "6855d7c9-38b6-4df1-b679-03a095d08bc7",
              "parent_uuid": "eed239ca-5d10-4d29-b754-1d1a2e4b0a20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "bcb5a126-0c15-4eaf-8155-735a2787331a",
                  "parent_uuid": "6855d7c9-38b6-4df1-b679-03a095d08bc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "adb8ad21-2038-4933-b0c1-cda3136ba2ec",
              "parent_uuid": "eed239ca-5d10-4d29-b754-1d1a2e4b0a20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "9ed2d174-04f1-47e8-9fee-fbb651481fb5",
                  "parent_uuid": "adb8ad21-2038-4933-b0c1-cda3136ba2ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "117def13-559b-415d-bafc-5ffc643f2975",
              "parent_uuid": "eed239ca-5d10-4d29-b754-1d1a2e4b0a20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "572950f7-3b1f-4980-80ad-9d96ddded091",
                  "parent_uuid": "117def13-559b-415d-bafc-5ffc643f2975",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc9ab158-879f-4503-b226-66f640b0b042",
              "parent_uuid": "eed239ca-5d10-4d29-b754-1d1a2e4b0a20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "82be8105-416e-4375-9f23-e5f03cb6fa9c",
                  "parent_uuid": "dc9ab158-879f-4503-b226-66f640b0b042",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6eadf391-7b21-4356-86b6-fb0a9776d457",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f97f105d-9394-43a3-91bb-39d33f0f3226",
              "parent_uuid": "6eadf391-7b21-4356-86b6-fb0a9776d457",
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
          "uuid": "51d9f7f0-90b5-4f47-aa97-4992ac8807aa",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2efe5c4-1881-42c4-9fbc-de9b8485e8d0",
              "parent_uuid": "51d9f7f0-90b5-4f47-aa97-4992ac8807aa",
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
          "uuid": "05fe3747-47ae-4ec0-b179-a8cfa3fcf1ec",
          "parent_uuid": "a0612783-6518-41d6-9267-2533e769696f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7298ff41-0dbb-4319-a9c4-115b3485e522",
              "parent_uuid": "05fe3747-47ae-4ec0-b179-a8cfa3fcf1ec",
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
                  "uuid": "7a8b3459-2f17-4301-b5b7-5a75af94765b",
                  "parent_uuid": "7298ff41-0dbb-4319-a9c4-115b3485e522",
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
    ,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS cl_uid 
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

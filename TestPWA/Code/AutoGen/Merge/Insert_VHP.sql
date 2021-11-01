
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
  "uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "283e0e17-91db-4e4e-910e-ede6b10c286e",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "c7ded29c-2b6a-489f-b337-b528af236763",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "079cb648-e8ac-4d37-b1e1-04647a580d18",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "59f3d491-eee9-47b8-8d9e-b69f40f6fb70",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "42b961c2-cc1a-4e29-b160-c5dcdcd8faf4",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "056f9e8c-f762-4d5c-875a-b76a2b387c99",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "5231d4a3-ab24-4db6-a172-bdd403910bb3",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
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
      "uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
      "parent_uuid": "ef4a2159-7064-4e93-b949-524e05e7cce6",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "51e14128-52d1-46f8-b257-d7ffb8712ee9",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "2cb59d02-e66f-43e3-b13b-8b0880bdcf0d",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "a8731ad4-f9b5-4a60-be85-b5c25e347d70",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "18727373-1833-4e8c-99cd-0ce768a6ae23",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "5afcc025-f4f8-4c1e-95b5-74a90b272a4b",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "ffa439f0-68d5-4dd3-bf23-fe05fa871b46",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "20dc7e1c-d0f1-4bd3-8a5c-8fb19feedc94",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "117f5d01-3fa7-40b4-9e16-245e1e4d7e69",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "6cadff84-ad44-4467-b28c-a92ffe56a3e4",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "601f69d0-faff-4596-b22f-a7d3bc61fcea",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
              "uuid": "0cdaf119-f2b0-4e80-b0ae-85970d8806a4",
              "parent_uuid": "85387551-1eb0-46e0-ba69-356a048f7585",
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
          "uuid": "cfb46e9e-1c51-4357-b219-2428f30b26af",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "281cdb7c-8e68-4646-a6fb-1bfa45401dce",
              "parent_uuid": "cfb46e9e-1c51-4357-b219-2428f30b26af",
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
              "uuid": "d7e653a2-31ff-4c43-bee5-88cfc85348cd",
              "parent_uuid": "cfb46e9e-1c51-4357-b219-2428f30b26af",
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
              "uuid": "249886dd-43d8-4e61-ba23-758459af0f7c",
              "parent_uuid": "cfb46e9e-1c51-4357-b219-2428f30b26af",
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
              "uuid": "0863ec77-ccd0-4fc2-a750-51a354c5ab16",
              "parent_uuid": "cfb46e9e-1c51-4357-b219-2428f30b26af",
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
          "uuid": "f5306363-89a1-4186-8cd2-9a97626888ee",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6d987c2-0fd8-45c6-8906-c65c99170a60",
              "parent_uuid": "f5306363-89a1-4186-8cd2-9a97626888ee",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "88aa6427-3acc-4d44-b8c5-6b25e1e12214",
              "parent_uuid": "f5306363-89a1-4186-8cd2-9a97626888ee",
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
              "uuid": "0bdd09e7-bd13-456a-a568-407dc4e9e143",
              "parent_uuid": "f5306363-89a1-4186-8cd2-9a97626888ee",
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
              "uuid": "3102fa82-8cc2-42f4-8de4-2738322347de",
              "parent_uuid": "f5306363-89a1-4186-8cd2-9a97626888ee",
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
              "uuid": "f3fd485d-b271-42f2-a234-ad6e882c491e",
              "parent_uuid": "f5306363-89a1-4186-8cd2-9a97626888ee",
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
              "uuid": "8faf6ebc-8f7e-46dc-8865-e6eb76017c7a",
              "parent_uuid": "f5306363-89a1-4186-8cd2-9a97626888ee",
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
          "uuid": "438c77a5-ee74-4098-91cf-2195bce2e736",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ef3b419a-05c2-49af-bde7-a8756115c774",
              "parent_uuid": "438c77a5-ee74-4098-91cf-2195bce2e736",
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
          "uuid": "a6e2b4ff-ef79-4414-a63b-594fe896a7fd",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7bf60d5-0518-4307-94ab-c2c8ebc76e2d",
              "parent_uuid": "a6e2b4ff-ef79-4414-a63b-594fe896a7fd",
              "tagName": "td",
              "properties": [
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
              "uuid": "047109a0-adef-4206-b534-f7d222cb669a",
              "parent_uuid": "a6e2b4ff-ef79-4414-a63b-594fe896a7fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "eb0c502c-5dd6-490c-b765-57a36c670b81",
              "parent_uuid": "a6e2b4ff-ef79-4414-a63b-594fe896a7fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3bd0d9d5-6ef6-4549-8a2c-ecbd0a7a5756",
                  "parent_uuid": "eb0c502c-5dd6-490c-b765-57a36c670b81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b7026fc-8fdc-4248-b075-209a6a608feb",
              "parent_uuid": "a6e2b4ff-ef79-4414-a63b-594fe896a7fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "afc34627-088b-491c-ac03-1fd54273bd71",
                  "parent_uuid": "3b7026fc-8fdc-4248-b075-209a6a608feb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07861120-89f1-4cdb-b5e3-a027557f1fd3",
              "parent_uuid": "a6e2b4ff-ef79-4414-a63b-594fe896a7fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "aa86c88d-ff8b-40c6-a268-6df737b20f09",
                  "parent_uuid": "07861120-89f1-4cdb-b5e3-a027557f1fd3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b0ea375-ebda-439e-8f1f-2ec7c81e4ed4",
              "parent_uuid": "a6e2b4ff-ef79-4414-a63b-594fe896a7fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "aa5683c4-a147-4f00-a243-3d41419f9b6c",
                  "parent_uuid": "4b0ea375-ebda-439e-8f1f-2ec7c81e4ed4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "242fab7c-5a07-4c46-8e78-5879c0d8cd9c",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "03db25b9-1840-41c4-9ca3-a673bb3ccb74",
              "parent_uuid": "242fab7c-5a07-4c46-8e78-5879c0d8cd9c",
              "tagName": "td",
              "properties": [
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
              "uuid": "4fec48e8-6188-46c5-a222-352914a9e0b5",
              "parent_uuid": "242fab7c-5a07-4c46-8e78-5879c0d8cd9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d1a1d36c-34fd-402b-8b88-21060d6326cd",
              "parent_uuid": "242fab7c-5a07-4c46-8e78-5879c0d8cd9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cccff2ff-25eb-48e7-a288-52ecbd02ddf6",
                  "parent_uuid": "d1a1d36c-34fd-402b-8b88-21060d6326cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "695cf9c7-1f2d-42ee-ae44-f056fc4d72ec",
              "parent_uuid": "242fab7c-5a07-4c46-8e78-5879c0d8cd9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7d7feeaf-ceaf-4755-a395-a69a2dfd2c23",
                  "parent_uuid": "695cf9c7-1f2d-42ee-ae44-f056fc4d72ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "720e4858-a1b5-4b49-b348-6f76feded23c",
              "parent_uuid": "242fab7c-5a07-4c46-8e78-5879c0d8cd9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "02dddf0d-f31f-4469-9bb0-dfeb20c8198b",
                  "parent_uuid": "720e4858-a1b5-4b49-b348-6f76feded23c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0ce9887-9dcb-402c-b78f-7cca10572bd3",
              "parent_uuid": "242fab7c-5a07-4c46-8e78-5879c0d8cd9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2d82f906-90e8-434a-8e97-4b0c4b010fe8",
                  "parent_uuid": "f0ce9887-9dcb-402c-b78f-7cca10572bd3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "11a75fbe-5617-4c07-b836-558843fb41bf",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "73073f0c-b299-48ab-8d28-1478ded4f20c",
              "parent_uuid": "11a75fbe-5617-4c07-b836-558843fb41bf",
              "tagName": "td",
              "properties": [
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
              "uuid": "e89a1dad-8c20-4a10-9116-b990488ac397",
              "parent_uuid": "11a75fbe-5617-4c07-b836-558843fb41bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "4d26911f-bde6-4109-896a-ada2b0c938f1",
              "parent_uuid": "11a75fbe-5617-4c07-b836-558843fb41bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "4083be4f-44cd-474b-8d49-e19f46e1095d",
                  "parent_uuid": "4d26911f-bde6-4109-896a-ada2b0c938f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d24b1a8d-78c5-4c1d-9960-9caf1f45efbe",
              "parent_uuid": "11a75fbe-5617-4c07-b836-558843fb41bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3e66fa7c-6255-49f4-ab66-26498a668f43",
                  "parent_uuid": "d24b1a8d-78c5-4c1d-9960-9caf1f45efbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84360baa-4402-4889-8cec-3eba30d79ba0",
              "parent_uuid": "11a75fbe-5617-4c07-b836-558843fb41bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ca768c37-1f30-4cb9-957c-362995c7efdc",
                  "parent_uuid": "84360baa-4402-4889-8cec-3eba30d79ba0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08b5846c-9313-402f-b8eb-0e3b3e84a076",
              "parent_uuid": "11a75fbe-5617-4c07-b836-558843fb41bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "cf411b7b-4a2c-423f-a8fa-24320aff5fe6",
                  "parent_uuid": "08b5846c-9313-402f-b8eb-0e3b3e84a076",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "13864b08-c1fb-491e-9bf0-86ebbe179e13",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58c9fdb4-5385-4ac4-8c4b-1a6da2d2c20e",
              "parent_uuid": "13864b08-c1fb-491e-9bf0-86ebbe179e13",
              "tagName": "td",
              "properties": [
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
              "uuid": "388ffd08-6302-474e-b498-cc9b76fc8586",
              "parent_uuid": "13864b08-c1fb-491e-9bf0-86ebbe179e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "2fa78d40-ebb8-4415-8728-9cd228350e02",
              "parent_uuid": "13864b08-c1fb-491e-9bf0-86ebbe179e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "11ee6b95-7700-4b4e-9f54-064a4d653d87",
                  "parent_uuid": "2fa78d40-ebb8-4415-8728-9cd228350e02",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e690f47-b404-4c8f-8948-41e6d407cec2",
              "parent_uuid": "13864b08-c1fb-491e-9bf0-86ebbe179e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "77a58c25-7400-48c8-bcb4-2f644b6b762f",
                  "parent_uuid": "5e690f47-b404-4c8f-8948-41e6d407cec2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "681280c2-4ae2-4a6b-91c1-eef260f12b8d",
              "parent_uuid": "13864b08-c1fb-491e-9bf0-86ebbe179e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "786e6119-1707-4624-aeff-e08a86d7d91f",
                  "parent_uuid": "681280c2-4ae2-4a6b-91c1-eef260f12b8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eaab226e-6d91-444e-a2f5-cd8a5290ee63",
              "parent_uuid": "13864b08-c1fb-491e-9bf0-86ebbe179e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "ef1143f0-0eb4-43cc-b12f-4ccbedaf194c",
                  "parent_uuid": "eaab226e-6d91-444e-a2f5-cd8a5290ee63",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1df24074-346c-44c7-8d8b-0686f66f7c81",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "991f985c-5bef-4530-8ff1-930dc014e95d",
              "parent_uuid": "1df24074-346c-44c7-8d8b-0686f66f7c81",
              "tagName": "td",
              "properties": [
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
              "uuid": "81b7249b-2721-4f0e-a783-822604a0fd36",
              "parent_uuid": "1df24074-346c-44c7-8d8b-0686f66f7c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "3f5b7095-0dfa-409e-babd-412534b827e4",
              "parent_uuid": "1df24074-346c-44c7-8d8b-0686f66f7c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "58b27dc2-dee5-4711-9be6-c0f65c9f3de2",
                  "parent_uuid": "3f5b7095-0dfa-409e-babd-412534b827e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ccf3884-ddb9-4e34-bbfb-6faa8999e41c",
              "parent_uuid": "1df24074-346c-44c7-8d8b-0686f66f7c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "e1260f04-0d61-4295-8f24-d253d0baef21",
                  "parent_uuid": "3ccf3884-ddb9-4e34-bbfb-6faa8999e41c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9f3b0b9-885d-4d8f-9c69-f8afdf860d70",
              "parent_uuid": "1df24074-346c-44c7-8d8b-0686f66f7c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "6a45bea5-e21c-42ae-a80e-bf858246ecfa",
                  "parent_uuid": "f9f3b0b9-885d-4d8f-9c69-f8afdf860d70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a370d38-70a9-4ee1-a3b2-329dbeaf6087",
              "parent_uuid": "1df24074-346c-44c7-8d8b-0686f66f7c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "5e3bd036-f35d-400a-bb74-2af4bd2d0ca9",
                  "parent_uuid": "4a370d38-70a9-4ee1-a3b2-329dbeaf6087",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5541e1b9-43d8-4a78-9731-f8712fa72596",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d50fa2a8-3d1d-4a4e-adb4-5f34db6f19a3",
              "parent_uuid": "5541e1b9-43d8-4a78-9731-f8712fa72596",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "26b67b4d-8e6a-4978-9a83-6c1f26d480e7",
              "parent_uuid": "5541e1b9-43d8-4a78-9731-f8712fa72596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "a1f7fcf0-e40b-4ee3-b190-2d183ecdfbcf",
              "parent_uuid": "5541e1b9-43d8-4a78-9731-f8712fa72596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0212074d-8772-41be-bf3e-8fa70a6c0842",
                  "parent_uuid": "a1f7fcf0-e40b-4ee3-b190-2d183ecdfbcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc0e531a-931c-4564-a1b3-3eed2968a366",
              "parent_uuid": "5541e1b9-43d8-4a78-9731-f8712fa72596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "10f1dd38-bbe4-4040-abe9-de9faf405ef9",
                  "parent_uuid": "cc0e531a-931c-4564-a1b3-3eed2968a366",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1c99ce9-0b02-4f83-a6fc-a7d257db3349",
              "parent_uuid": "5541e1b9-43d8-4a78-9731-f8712fa72596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "421605bb-8a20-4e56-aca6-734bdc9e5ebf",
                  "parent_uuid": "b1c99ce9-0b02-4f83-a6fc-a7d257db3349",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f7bb332-42ec-4bd0-8fae-604ddc61c974",
              "parent_uuid": "5541e1b9-43d8-4a78-9731-f8712fa72596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "1b4e6050-2491-4cb3-80b4-e7747ec7d373",
                  "parent_uuid": "5f7bb332-42ec-4bd0-8fae-604ddc61c974",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2ddc9a07-9760-41cd-8bb3-bf4b17f4ddbc",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b5f53237-e246-4cdf-859e-674757b48954",
              "parent_uuid": "2ddc9a07-9760-41cd-8bb3-bf4b17f4ddbc",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "43de8570-176b-42b8-a51f-3e907f0a906c",
              "parent_uuid": "2ddc9a07-9760-41cd-8bb3-bf4b17f4ddbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "73287fcf-9d14-4611-96c3-0986ddfb34d6",
              "parent_uuid": "2ddc9a07-9760-41cd-8bb3-bf4b17f4ddbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "6ac8fe7a-0178-4e79-8842-f5548d3568e9",
                  "parent_uuid": "73287fcf-9d14-4611-96c3-0986ddfb34d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1096afe3-1718-4059-b308-873747eb3526",
              "parent_uuid": "2ddc9a07-9760-41cd-8bb3-bf4b17f4ddbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "6580cde4-7717-4e2a-b3d4-f2fdcb34fb90",
                  "parent_uuid": "1096afe3-1718-4059-b308-873747eb3526",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc8a85ae-78ad-4d76-89b7-6285af6e9f46",
              "parent_uuid": "2ddc9a07-9760-41cd-8bb3-bf4b17f4ddbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "68410bac-922f-4551-98c6-8ef88daf56d6",
                  "parent_uuid": "cc8a85ae-78ad-4d76-89b7-6285af6e9f46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "258f047d-e219-45a7-811d-2da291ea6560",
              "parent_uuid": "2ddc9a07-9760-41cd-8bb3-bf4b17f4ddbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "5c9ac28c-43ee-4ceb-8568-34773cf11a30",
                  "parent_uuid": "258f047d-e219-45a7-811d-2da291ea6560",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1f62dac2-0951-41a9-8bbf-062019b0ce2f",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b84b936-fbbf-47ac-b2d6-fe67c59c8b44",
              "parent_uuid": "1f62dac2-0951-41a9-8bbf-062019b0ce2f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a8de84e1-8f46-4cf6-9e25-b5c37ede3586",
              "parent_uuid": "1f62dac2-0951-41a9-8bbf-062019b0ce2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "ad6b5532-29b2-477d-b0b8-6b3a34c2c0db",
              "parent_uuid": "1f62dac2-0951-41a9-8bbf-062019b0ce2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "336777a5-f653-4300-a1f4-b5b2f62f0290",
                  "parent_uuid": "ad6b5532-29b2-477d-b0b8-6b3a34c2c0db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "588065a8-55eb-406f-b52f-7bd681cf98a6",
              "parent_uuid": "1f62dac2-0951-41a9-8bbf-062019b0ce2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "66ff746b-310e-40be-9dfd-c03f2def79eb",
                  "parent_uuid": "588065a8-55eb-406f-b52f-7bd681cf98a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c6165c5-6d3c-4fff-8b07-de371a8f0166",
              "parent_uuid": "1f62dac2-0951-41a9-8bbf-062019b0ce2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "4076d463-4575-40a8-ac4e-10ecffa2c68b",
                  "parent_uuid": "5c6165c5-6d3c-4fff-8b07-de371a8f0166",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "050bfce0-441d-4176-8024-fa76119aa252",
              "parent_uuid": "1f62dac2-0951-41a9-8bbf-062019b0ce2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3ac8f3da-7e3f-4743-9efd-da584fb2eb5d",
                  "parent_uuid": "050bfce0-441d-4176-8024-fa76119aa252",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "32bf2a9e-2c77-42cb-898a-6de5ada57c5a",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "638f3b5a-4203-43e0-ad10-912d6346b180",
              "parent_uuid": "32bf2a9e-2c77-42cb-898a-6de5ada57c5a",
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
          "uuid": "f569c3ff-5b8f-4b4a-bba3-5017b9d48307",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01e40118-38a6-4f2c-ac61-a6ca72ce0744",
              "parent_uuid": "f569c3ff-5b8f-4b4a-bba3-5017b9d48307",
              "tagName": "td",
              "properties": [
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
              "uuid": "8443b0b4-4aa9-475a-88d9-c894ea0d0225",
              "parent_uuid": "f569c3ff-5b8f-4b4a-bba3-5017b9d48307",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "da1b72e0-731c-4cc9-a0db-c4f5734f0ad3",
              "parent_uuid": "f569c3ff-5b8f-4b4a-bba3-5017b9d48307",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "47a363d3-14af-43d9-8e2f-9097b07efe96",
                  "parent_uuid": "da1b72e0-731c-4cc9-a0db-c4f5734f0ad3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47906741-6eed-4f51-98d7-e28dad83670f",
              "parent_uuid": "f569c3ff-5b8f-4b4a-bba3-5017b9d48307",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "07500557-b692-4f4e-ad15-f7c919b439a6",
                  "parent_uuid": "47906741-6eed-4f51-98d7-e28dad83670f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61b3a8ba-11b1-49b0-b47d-d9e7cc16d78e",
              "parent_uuid": "f569c3ff-5b8f-4b4a-bba3-5017b9d48307",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2c694653-390d-415a-9b65-8071ee58c65a",
                  "parent_uuid": "61b3a8ba-11b1-49b0-b47d-d9e7cc16d78e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55272a24-9ced-466a-a356-244fb96cbe3c",
              "parent_uuid": "f569c3ff-5b8f-4b4a-bba3-5017b9d48307",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "6034f2b6-32db-4045-9f8e-72126a368b78",
                  "parent_uuid": "55272a24-9ced-466a-a356-244fb96cbe3c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0e39b57e-b4d1-40b5-9fcc-364b07a5a982",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b9e7bb0-e812-405b-bae0-9158d3acba9b",
              "parent_uuid": "0e39b57e-b4d1-40b5-9fcc-364b07a5a982",
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
          "uuid": "63f588bd-fe03-43aa-8f74-fde22ae3537e",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa7c7e21-6bc1-41c2-8410-5fba8e93da8a",
              "parent_uuid": "63f588bd-fe03-43aa-8f74-fde22ae3537e",
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
          "uuid": "27e9fd8b-2540-463d-8ca6-cf501b1bb5e2",
          "parent_uuid": "1524c16a-ffbf-48b3-b8e1-cc0260203176",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "daf63be7-905b-4c62-9c68-3045149365c4",
              "parent_uuid": "27e9fd8b-2540-463d-8ca6-cf501b1bb5e2",
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
                  "uuid": "1ed9e801-61f7-4cd6-8d61-8dec55c07612",
                  "parent_uuid": "daf63be7-905b-4c62-9c68-3045149365c4",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
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

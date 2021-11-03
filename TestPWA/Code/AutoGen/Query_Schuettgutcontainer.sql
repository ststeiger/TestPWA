
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
  "uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
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
      "uuid": "43aeb498-7a26-4d05-9650-a23a7239b992",
      "parent_uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "3"
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
      "uuid": "79adaabe-20ac-4934-91cd-91b216f0bac7",
      "parent_uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
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
      "uuid": "63519a4c-7065-4597-96ee-8a1203274d22",
      "parent_uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
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
      "uuid": "a835bd6f-4252-4c1b-a91c-bc380e645003",
      "parent_uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
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
      "uuid": "9957e98a-957a-4b00-baa8-e501750dbb2d",
      "parent_uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
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
      "uuid": "6c38370f-5443-45fd-bc0e-dce54849d549",
      "parent_uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
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
      "uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
      "parent_uuid": "d4b8dbb3-527d-410d-88bd-ee95a7be295d",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "51c890aa-77be-4b8d-a1f3-7401ecee91b4",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "bf847fe9-f33d-49a6-807e-bbfc7e049932",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "e9f35345-c4d3-4b77-81fd-8f9c00627556",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "c4168c2e-184f-47af-8be3-d5b90bc75e00",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "26d20c26-cd6f-40d7-a74f-83c49910193c",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "13ccd402-71b7-45e8-a01a-6fd530096747",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "f55bf8aa-116a-4b3e-8e80-082105c15086",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "a1c434e9-72a0-4876-8c5d-b6389b082708",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "e0dd9d13-5dfb-4505-b43c-021e03ffc2f6",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "b19361d8-13ee-4625-b6ec-df0c47b43eef",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
              "uuid": "a15317f3-e429-4dc2-9e3a-237bf6fd28ce",
              "parent_uuid": "b95b1695-bf4c-4acc-b6d5-affeeb86f750",
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
          "uuid": "62162458-c498-4420-873c-c07c91363cae",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a9309992-4da9-4cc9-910c-e558b8726ca8",
              "parent_uuid": "62162458-c498-4420-873c-c07c91363cae",
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
              "uuid": "8f66552e-9203-437e-be9c-cc00fd49f9c5",
              "parent_uuid": "62162458-c498-4420-873c-c07c91363cae",
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
              "uuid": "56bb160a-5a72-43d5-9260-4de59e803b74",
              "parent_uuid": "62162458-c498-4420-873c-c07c91363cae",
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
              "uuid": "4fbbcaef-2c16-4c88-b29a-7e1fbba66c7a",
              "parent_uuid": "62162458-c498-4420-873c-c07c91363cae",
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
          "uuid": "8ad24882-c6c8-4c77-b440-829037651e03",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10198e58-ee28-41f7-95f4-b4935a6efad6",
              "parent_uuid": "8ad24882-c6c8-4c77-b440-829037651e03",
              "tagName": "td",
              "properties": [
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
              "uuid": "b6b4e25d-38a7-4f28-a0c0-c50d5e2b31af",
              "parent_uuid": "8ad24882-c6c8-4c77-b440-829037651e03",
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
              "uuid": "2757c143-5260-43df-826a-d16c19491979",
              "parent_uuid": "8ad24882-c6c8-4c77-b440-829037651e03",
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
              "uuid": "8a37deae-78ea-4700-86b7-b800a844f07a",
              "parent_uuid": "8ad24882-c6c8-4c77-b440-829037651e03",
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
              "uuid": "daa622ac-15d7-4b92-83db-7be463810890",
              "parent_uuid": "8ad24882-c6c8-4c77-b440-829037651e03",
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
              "uuid": "9af64c11-606e-4434-8443-eb3dfd755614",
              "parent_uuid": "8ad24882-c6c8-4c77-b440-829037651e03",
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
          "uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "769d28ca-0afe-42db-89db-daae98de89e3",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
              "uuid": "0c620812-7111-4218-a178-7465eba3fc28",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
              "uuid": "9bb59b9c-a3cf-48cf-9897-675026d4aea4",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
              "uuid": "a92a6322-138a-4429-934b-d8b3eb49e49b",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
              "uuid": "268832ba-a408-456d-89b2-a0b38c1687f6",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
              "uuid": "4bc2cbfc-d41c-46d7-99f5-689096e18c5b",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
              "uuid": "ff4603e4-5208-4008-b699-1c42730498fa",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
              "uuid": "4a56040e-c0d5-4bd1-bdb5-a6b53dd6dacd",
              "parent_uuid": "bcb9c0dd-fc95-4332-b59a-5f1263351e58",
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
          "uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2db44f10-2355-41f6-a7da-e09c1d05f349",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
              "tagName": "td",
              "properties": [
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
              "uuid": "d80f72cf-69c9-4d98-a34c-03fa8bfe7b74",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "18c99d82-c145-4fe0-b678-7dff10ba8b84",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
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
              "children": [
                {
                  "uuid": "842776fa-6d8d-4b08-a3e4-dcc31dc58e04",
                  "parent_uuid": "18c99d82-c145-4fe0-b678-7dff10ba8b84",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "display: block; width: 100%; height: 100%; box-sizing: border-box; margin:0; padding:0;"
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
              "uuid": "b47cec3e-518c-4961-89d7-eaf6e774dd03",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
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
              "uuid": "4ab97bc1-3151-4976-b274-a5426bc60337",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
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
              "uuid": "3c2a8485-674a-42a4-b675-f1e289f7524a",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
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
              "uuid": "ae4f8081-984c-4e3e-a2fa-249798c05a1d",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
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
              "uuid": "c3d757fe-6968-4741-8805-00856b3c0d79",
              "parent_uuid": "0dbe4c30-67fa-423a-97bf-0b771b469899",
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
          "uuid": "29b76b19-3dbc-4c5a-9bfe-2554f8ee7309",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db038f2d-1e95-44b3-96a0-9a896b300041",
              "parent_uuid": "29b76b19-3dbc-4c5a-9bfe-2554f8ee7309",
              "tagName": "td",
              "properties": [
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
              "uuid": "6529396e-677e-43d4-97ce-c78010d264c7",
              "parent_uuid": "29b76b19-3dbc-4c5a-9bfe-2554f8ee7309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "349696e8-1e6c-44e1-9685-c03a290eea12",
              "parent_uuid": "29b76b19-3dbc-4c5a-9bfe-2554f8ee7309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "8b16f4a7-f2c4-4b08-9403-2ace1230691a",
                  "parent_uuid": "349696e8-1e6c-44e1-9685-c03a290eea12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45209ec9-4272-46c9-b0cb-14a83f3e0f3c",
              "parent_uuid": "29b76b19-3dbc-4c5a-9bfe-2554f8ee7309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c4a2fd86-84dc-4a6c-a33e-070273889e64",
                  "parent_uuid": "45209ec9-4272-46c9-b0cb-14a83f3e0f3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68a399ab-a6ab-4836-87e6-e7630a752c43",
              "parent_uuid": "29b76b19-3dbc-4c5a-9bfe-2554f8ee7309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "2f09cdd2-6f77-418d-812e-74ab130cd0c0",
                  "parent_uuid": "68a399ab-a6ab-4836-87e6-e7630a752c43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e34104e-76fd-419b-9deb-d9726d94be92",
              "parent_uuid": "29b76b19-3dbc-4c5a-9bfe-2554f8ee7309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "030be5b2-69bb-4692-9a8f-a9f92d4ed240",
                  "parent_uuid": "4e34104e-76fd-419b-9deb-d9726d94be92",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9c17b456-1d19-49be-9d68-f63e4129dc93",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f90ea91a-63b1-46be-888d-7636dae15f09",
              "parent_uuid": "9c17b456-1d19-49be-9d68-f63e4129dc93",
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
          "uuid": "e216601b-2e88-40b3-9617-2f5d3aa86115",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ee3a3366-5d97-46eb-aaee-0ed43098a42e",
              "parent_uuid": "e216601b-2e88-40b3-9617-2f5d3aa86115",
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
          "uuid": "5f984396-466c-4ff2-b45f-60dae29efe2f",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37c7a6ef-1a81-48e7-aa2f-7d0663b324e3",
              "parent_uuid": "5f984396-466c-4ff2-b45f-60dae29efe2f",
              "tagName": "td",
              "properties": [
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
              "uuid": "1cab29e3-0aa1-4591-9862-1fdf8087ff25",
              "parent_uuid": "5f984396-466c-4ff2-b45f-60dae29efe2f",
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
              "uuid": "8055fcdd-de27-43e4-a186-484d62270165",
              "parent_uuid": "5f984396-466c-4ff2-b45f-60dae29efe2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "c3dd3e10-767a-4a79-87fc-0ec3a703d771",
                  "parent_uuid": "8055fcdd-de27-43e4-a186-484d62270165",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5c80dc6-08b6-45ca-ba28-7a549e9c7ded",
              "parent_uuid": "5f984396-466c-4ff2-b45f-60dae29efe2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "66f39113-1d22-4be6-bed9-11faa883a9c1",
                  "parent_uuid": "c5c80dc6-08b6-45ca-ba28-7a549e9c7ded",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81278b28-a6d4-44f0-b659-538a70694b62",
              "parent_uuid": "5f984396-466c-4ff2-b45f-60dae29efe2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "66a65cdb-2da6-4451-a827-680a554ec0ce",
                  "parent_uuid": "81278b28-a6d4-44f0-b659-538a70694b62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21603d6d-f41b-4536-b12c-0459803c0a56",
              "parent_uuid": "5f984396-466c-4ff2-b45f-60dae29efe2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "83f39d3e-e6bc-4f91-89e1-f1839dde2d50",
                  "parent_uuid": "21603d6d-f41b-4536-b12c-0459803c0a56",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b97e1d16-4141-4f25-9024-cc1892f456d8",
          "parent_uuid": "fbcbf34a-51bf-4f42-8ebb-8d54149ed8d3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb609fc2-4aa2-4950-992d-de701d93bc76",
              "parent_uuid": "b97e1d16-4141-4f25-9024-cc1892f456d8",
              "tagName": "td",
              "properties": [
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
              "uuid": "4a6f769b-447a-4b5f-bf06-e92cec8910eb",
              "parent_uuid": "b97e1d16-4141-4f25-9024-cc1892f456d8",
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
              "uuid": "ee58c188-0c87-46f0-a31c-bba9ad51f8dc",
              "parent_uuid": "b97e1d16-4141-4f25-9024-cc1892f456d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "9d6efd14-fece-4050-a675-c4e0e7b2d347",
                  "parent_uuid": "ee58c188-0c87-46f0-a31c-bba9ad51f8dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a8133c0-6165-4759-88e9-a2c22ea824ed",
              "parent_uuid": "b97e1d16-4141-4f25-9024-cc1892f456d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7c37ac68-0d10-4506-b962-ddf59a367296",
                  "parent_uuid": "7a8133c0-6165-4759-88e9-a2c22ea824ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb1e9e24-1eed-489c-a56a-e493b0dad3bb",
              "parent_uuid": "b97e1d16-4141-4f25-9024-cc1892f456d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "75a9fdf4-6c09-46fb-a4ff-5a318b0fbfc1",
                  "parent_uuid": "fb1e9e24-1eed-489c-a56a-e493b0dad3bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "168b92a8-cb00-4f64-b45d-8592da3a259a",
              "parent_uuid": "b97e1d16-4141-4f25-9024-cc1892f456d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3e5448b8-bdb9-41c8-8ee1-c99e8e5d5499",
                  "parent_uuid": "168b92a8-cb00-4f64-b45d-8592da3a259a",
                  "tagName": "input",
                  "properties": [
                    [
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

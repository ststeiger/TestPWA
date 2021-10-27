
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
  "uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "7b8ed1e9-4429-43d6-97d2-85e5c11ee6c0",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "4ca710ec-c7d7-49bd-ae76-aa8602b51627",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "f4899db2-0bd4-4293-bd96-431df4e1d31a",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "d05ce66e-2037-4c49-898e-e15f6527b386",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "2fdea085-9bfb-4222-9b5c-f9d927f89821",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "84812a00-2f17-43a3-8b7f-2dd4ba437a55",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "99310c85-1911-4055-b17d-7bfcaa118fdb",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
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
      "uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
      "parent_uuid": "34e79775-a168-4252-b9be-f08af4a3004c",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4a557a7c-d965-4264-b5c5-4b7a5bc95411",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "d6b89385-b59a-4422-b119-dea97714c51f",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "f7b5a010-8419-463f-ace6-9d9808feae13",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "8c751ee1-87b4-4797-aeba-6bd9aa8cb912",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "02deae6f-e456-4b24-8b4d-f4b9fd69cef6",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "91f7a3fa-ceee-46d1-b17b-56d6c577a154",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "417636e6-b0e8-4008-bc35-f5ab8a5dbd52",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "ce1d82dd-1d22-4ed0-b9be-273f434eee63",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "505f262d-2c43-49fd-8e8c-b2683e7f5c13",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "46e0c7de-d5dc-41f4-abda-7464409bf6c4",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
              "uuid": "fdeb331c-f027-417d-b53c-1dbe5cd20686",
              "parent_uuid": "b587c69b-6ddf-4a76-b8d6-a625261c057c",
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
          "uuid": "17751267-d5d3-4dc9-b1e2-39cba7cc136d",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "85ae5f67-df54-412c-bc4e-9e360ec6212f",
              "parent_uuid": "17751267-d5d3-4dc9-b1e2-39cba7cc136d",
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
              "uuid": "efa0df5a-de34-4e5f-bcce-8a188a9797dd",
              "parent_uuid": "17751267-d5d3-4dc9-b1e2-39cba7cc136d",
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
              "uuid": "a3f510cc-e5b7-4481-ad82-2f070f674c29",
              "parent_uuid": "17751267-d5d3-4dc9-b1e2-39cba7cc136d",
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
              "uuid": "2bb5df19-8a6c-4e13-a2f2-1ce5ae8d90d0",
              "parent_uuid": "17751267-d5d3-4dc9-b1e2-39cba7cc136d",
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
          "uuid": "374d06cc-174b-46b7-bf3f-11a3dac3c130",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "490eaa91-eaaa-4c6c-982d-6cd52173c836",
              "parent_uuid": "374d06cc-174b-46b7-bf3f-11a3dac3c130",
              "tagName": "td",
              "properties": [
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
              "uuid": "a0f01fb8-9592-43c1-9f82-f2b9b8917daa",
              "parent_uuid": "374d06cc-174b-46b7-bf3f-11a3dac3c130",
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
              "uuid": "9b6f6b2d-f650-439c-8b82-5f515bf370a3",
              "parent_uuid": "374d06cc-174b-46b7-bf3f-11a3dac3c130",
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
              "uuid": "94449d3d-b044-40f4-bdca-62905bf60b01",
              "parent_uuid": "374d06cc-174b-46b7-bf3f-11a3dac3c130",
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
              "uuid": "f34626f6-185d-4f4c-bb76-898341047216",
              "parent_uuid": "374d06cc-174b-46b7-bf3f-11a3dac3c130",
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
              "uuid": "7ba34a79-50f9-463f-99bf-c632a477d465",
              "parent_uuid": "374d06cc-174b-46b7-bf3f-11a3dac3c130",
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
          "uuid": "69db83b8-c796-43e7-a4a8-3af41106cf6b",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d3fbade1-87f4-49ea-88b0-3383f544f50a",
              "parent_uuid": "69db83b8-c796-43e7-a4a8-3af41106cf6b",
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
          "uuid": "ec016b91-5c79-4d2a-bc53-e2891084f4ab",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cda29f4-8fc8-4766-9d8f-d76ebd4718a8",
              "parent_uuid": "ec016b91-5c79-4d2a-bc53-e2891084f4ab",
              "tagName": "td",
              "properties": [
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
              "uuid": "1a423923-cc09-4d97-81c9-09cb5b9373fd",
              "parent_uuid": "ec016b91-5c79-4d2a-bc53-e2891084f4ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "35850c16-2092-4d5e-90d2-1cd77e2619ce",
              "parent_uuid": "ec016b91-5c79-4d2a-bc53-e2891084f4ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "fdb07906-060c-4a78-998f-52b674d3e071",
                  "parent_uuid": "35850c16-2092-4d5e-90d2-1cd77e2619ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db6b78bd-cd1b-44ce-8171-12c01f2febfd",
              "parent_uuid": "ec016b91-5c79-4d2a-bc53-e2891084f4ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "80cd4369-be73-45ab-bcc9-09e2b2bcf975",
                  "parent_uuid": "db6b78bd-cd1b-44ce-8171-12c01f2febfd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b33dbeef-8547-4311-b6dd-bb1ebea75c6c",
              "parent_uuid": "ec016b91-5c79-4d2a-bc53-e2891084f4ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "9ef8d6bf-685d-4d35-b51e-bf57d1bde532",
                  "parent_uuid": "b33dbeef-8547-4311-b6dd-bb1ebea75c6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7c525b5-a62e-4672-a09e-06cfa078e389",
              "parent_uuid": "ec016b91-5c79-4d2a-bc53-e2891084f4ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b5069cec-46c0-41a1-b731-5a8bf9bdc14d",
                  "parent_uuid": "d7c525b5-a62e-4672-a09e-06cfa078e389",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f83386a2-e1fd-4b67-a912-500927ede0d8",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00678e27-84c2-44b4-8949-cf3e096cf9f0",
              "parent_uuid": "f83386a2-e1fd-4b67-a912-500927ede0d8",
              "tagName": "td",
              "properties": [
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
              "uuid": "4b7a90d1-f9cd-448f-aeb1-5a94cce9b52a",
              "parent_uuid": "f83386a2-e1fd-4b67-a912-500927ede0d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "09d7e81f-5605-4397-9bbc-4e0e6e129195",
              "parent_uuid": "f83386a2-e1fd-4b67-a912-500927ede0d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "89b4ab06-ba7e-426b-8640-d605e9b27a79",
                  "parent_uuid": "09d7e81f-5605-4397-9bbc-4e0e6e129195",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f58a095d-b0d9-4b53-921e-c1cedde4e78b",
              "parent_uuid": "f83386a2-e1fd-4b67-a912-500927ede0d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "525c0325-3e39-4fd5-87da-5cf69d8c387f",
                  "parent_uuid": "f58a095d-b0d9-4b53-921e-c1cedde4e78b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ba6c440-80ba-4f7f-9abe-687f17ea5663",
              "parent_uuid": "f83386a2-e1fd-4b67-a912-500927ede0d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a4af0675-f8c7-4627-965d-302f7b2e9fa5",
                  "parent_uuid": "6ba6c440-80ba-4f7f-9abe-687f17ea5663",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08c22347-0715-4d57-b365-a410395486c9",
              "parent_uuid": "f83386a2-e1fd-4b67-a912-500927ede0d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "6072d9a8-541b-4219-a708-e39f306c4137",
                  "parent_uuid": "08c22347-0715-4d57-b365-a410395486c9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b3e5d61-c868-4750-b869-bdf95bae263e",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc0b546b-98dc-45ed-b64b-30f999d9be40",
              "parent_uuid": "8b3e5d61-c868-4750-b869-bdf95bae263e",
              "tagName": "td",
              "properties": [
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
              "uuid": "7bbc7d73-599a-4000-8f8e-8174c31ec5f6",
              "parent_uuid": "8b3e5d61-c868-4750-b869-bdf95bae263e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "358aea21-b69b-4254-b988-b790e7327460",
              "parent_uuid": "8b3e5d61-c868-4750-b869-bdf95bae263e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "6aa671ed-ad9f-41e6-940e-7d3793fe8616",
                  "parent_uuid": "358aea21-b69b-4254-b988-b790e7327460",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad1f2312-f41a-4fc0-9019-d3680345ad87",
              "parent_uuid": "8b3e5d61-c868-4750-b869-bdf95bae263e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "9ef04ad7-bacb-4cc8-bd85-5cc4e08946d8",
                  "parent_uuid": "ad1f2312-f41a-4fc0-9019-d3680345ad87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41017f38-4875-48d1-a73f-70d8b8cbef52",
              "parent_uuid": "8b3e5d61-c868-4750-b869-bdf95bae263e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3e06dab4-a0f8-443a-b9d4-9b391baa6885",
                  "parent_uuid": "41017f38-4875-48d1-a73f-70d8b8cbef52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "093d742e-e627-418c-8656-47f63fe7247b",
              "parent_uuid": "8b3e5d61-c868-4750-b869-bdf95bae263e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "934980f3-fd6c-4918-bd61-be141da79246",
                  "parent_uuid": "093d742e-e627-418c-8656-47f63fe7247b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8586e995-b012-4823-9b13-7df17ce2103a",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6db0a641-da6d-4fb5-aa2a-dd511da0250f",
              "parent_uuid": "8586e995-b012-4823-9b13-7df17ce2103a",
              "tagName": "td",
              "properties": [
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
              "uuid": "28a0b34f-47d1-4fb6-93f7-00c3bdfff800",
              "parent_uuid": "8586e995-b012-4823-9b13-7df17ce2103a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "1c4c6ca6-783e-4ded-8a4f-18c78496c8f2",
              "parent_uuid": "8586e995-b012-4823-9b13-7df17ce2103a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "138816f0-9450-45a1-a63d-88f39930ca0f",
                  "parent_uuid": "1c4c6ca6-783e-4ded-8a4f-18c78496c8f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3c07123-2c4d-4364-9285-d9fb07f479d6",
              "parent_uuid": "8586e995-b012-4823-9b13-7df17ce2103a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3ec931cb-0c54-4808-b7d4-6e25fcd94fbf",
                  "parent_uuid": "e3c07123-2c4d-4364-9285-d9fb07f479d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbd347fb-38cc-4764-a553-cae88ed98ad3",
              "parent_uuid": "8586e995-b012-4823-9b13-7df17ce2103a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3baf62bb-769b-4082-b0c2-506fe02668e2",
                  "parent_uuid": "fbd347fb-38cc-4764-a553-cae88ed98ad3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb4b6044-404a-49b7-8d59-e4905c4bc9e4",
              "parent_uuid": "8586e995-b012-4823-9b13-7df17ce2103a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "22366fd1-758c-404c-aa47-97f16981fca1",
                  "parent_uuid": "bb4b6044-404a-49b7-8d59-e4905c4bc9e4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7cc8d010-b2f5-4a4d-962f-9c3899817c0f",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19163cd5-3f47-4051-bd1e-9057d4df4e26",
              "parent_uuid": "7cc8d010-b2f5-4a4d-962f-9c3899817c0f",
              "tagName": "td",
              "properties": [
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
              "uuid": "d1bfd917-e0d9-43ed-9a43-c89ccdc55e73",
              "parent_uuid": "7cc8d010-b2f5-4a4d-962f-9c3899817c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "710d9dce-9f58-47c3-a76a-e04245189bcf",
              "parent_uuid": "7cc8d010-b2f5-4a4d-962f-9c3899817c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "7443a52f-aed1-4c9f-b9ef-c6e3761ba2a3",
                  "parent_uuid": "710d9dce-9f58-47c3-a76a-e04245189bcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d08f3f00-c558-46f6-9dfc-b38536a28e8a",
              "parent_uuid": "7cc8d010-b2f5-4a4d-962f-9c3899817c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "8def3d32-6570-4574-9a69-7ddd591a08f9",
                  "parent_uuid": "d08f3f00-c558-46f6-9dfc-b38536a28e8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39f9ad6f-4a84-401c-b479-72f0beae6a7b",
              "parent_uuid": "7cc8d010-b2f5-4a4d-962f-9c3899817c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3a5e3184-0c9a-4445-bdea-39b80c7ca062",
                  "parent_uuid": "39f9ad6f-4a84-401c-b479-72f0beae6a7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c6a32e5-11d0-4190-bc63-d4ee84a4764f",
              "parent_uuid": "7cc8d010-b2f5-4a4d-962f-9c3899817c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "eea1765f-f80b-4c13-9017-6369e72cf419",
                  "parent_uuid": "2c6a32e5-11d0-4190-bc63-d4ee84a4764f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "65781ec0-b90e-4e6a-8458-c398076d975b",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "110282f9-7c02-4614-baf0-f3c3fa86ab2d",
              "parent_uuid": "65781ec0-b90e-4e6a-8458-c398076d975b",
              "tagName": "td",
              "properties": [
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
              "uuid": "b958df1d-efd2-4c10-ab1f-c2a806e39403",
              "parent_uuid": "65781ec0-b90e-4e6a-8458-c398076d975b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "406cc8b1-bc55-493b-adec-148a79a1ad75",
              "parent_uuid": "65781ec0-b90e-4e6a-8458-c398076d975b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "9e940345-9b7e-4b09-b3cc-28220446df24",
                  "parent_uuid": "406cc8b1-bc55-493b-adec-148a79a1ad75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "149bb61f-8439-4478-b5dd-37ed3e8c1a23",
              "parent_uuid": "65781ec0-b90e-4e6a-8458-c398076d975b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "89014e80-aefc-4c4a-941b-0e841a5f2db6",
                  "parent_uuid": "149bb61f-8439-4478-b5dd-37ed3e8c1a23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0488b99-0033-4947-a9fa-b564c3292586",
              "parent_uuid": "65781ec0-b90e-4e6a-8458-c398076d975b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "a372fbd4-c1f1-4aa7-ae64-ad8cbac8ffc8",
                  "parent_uuid": "b0488b99-0033-4947-a9fa-b564c3292586",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6d1b03e-1fbc-46aa-97fa-2d842183d94a",
              "parent_uuid": "65781ec0-b90e-4e6a-8458-c398076d975b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "92846e91-fc63-4564-8635-deb701278d6a",
                  "parent_uuid": "d6d1b03e-1fbc-46aa-97fa-2d842183d94a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c8817bd2-2ab2-4353-837c-5774ec4c9c95",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "966e2fbf-819b-43f2-8e0f-9068240cde5c",
              "parent_uuid": "c8817bd2-2ab2-4353-837c-5774ec4c9c95",
              "tagName": "td",
              "properties": [
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
              "uuid": "c65112a6-9da5-49d0-96e1-245eb0a2565f",
              "parent_uuid": "c8817bd2-2ab2-4353-837c-5774ec4c9c95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "c6bc8682-878b-48c0-bfaa-cd56bc6ad2d2",
              "parent_uuid": "c8817bd2-2ab2-4353-837c-5774ec4c9c95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "127b7b8f-0f56-41d8-9018-8b2eb7b9bc6c",
                  "parent_uuid": "c6bc8682-878b-48c0-bfaa-cd56bc6ad2d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14f3b4a6-302a-4007-a9c1-6e843e908560",
              "parent_uuid": "c8817bd2-2ab2-4353-837c-5774ec4c9c95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "dadc4b9e-c897-4220-9d20-5a8fbac1d77f",
                  "parent_uuid": "14f3b4a6-302a-4007-a9c1-6e843e908560",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f1e0902-331e-4f05-be02-cd3acaa95246",
              "parent_uuid": "c8817bd2-2ab2-4353-837c-5774ec4c9c95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b02aa691-7bf2-4c29-b2c5-712c1c1498dc",
                  "parent_uuid": "1f1e0902-331e-4f05-be02-cd3acaa95246",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bff22d4-0645-4f0d-b7cc-3fb7e47e494b",
              "parent_uuid": "c8817bd2-2ab2-4353-837c-5774ec4c9c95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "3751c3d6-1fd8-4828-a0a0-ca7a4da2fdc3",
                  "parent_uuid": "1bff22d4-0645-4f0d-b7cc-3fb7e47e494b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c3fc1ee7-7962-4400-a0ef-59ec68b725ff",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0595299-195a-4dda-989e-e60181f0dd51",
              "parent_uuid": "c3fc1ee7-7962-4400-a0ef-59ec68b725ff",
              "tagName": "td",
              "properties": [
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
              "uuid": "9428f9d3-10e1-4c64-9e67-ce699331792b",
              "parent_uuid": "c3fc1ee7-7962-4400-a0ef-59ec68b725ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "d21326ac-6824-46a1-a792-b351d483640f",
              "parent_uuid": "c3fc1ee7-7962-4400-a0ef-59ec68b725ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "111601bf-afc0-4884-8719-b62c263a8c13",
                  "parent_uuid": "d21326ac-6824-46a1-a792-b351d483640f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35be42dc-6e27-4a59-8e92-bd05e6b36bb1",
              "parent_uuid": "c3fc1ee7-7962-4400-a0ef-59ec68b725ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "93801853-1f6c-4891-a350-3912c3c55c7f",
                  "parent_uuid": "35be42dc-6e27-4a59-8e92-bd05e6b36bb1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7af83fcc-ab8c-4c60-98ca-4744f64859f9",
              "parent_uuid": "c3fc1ee7-7962-4400-a0ef-59ec68b725ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "02ad09fe-a274-4648-8ecf-43c4ce0f395e",
                  "parent_uuid": "7af83fcc-ab8c-4c60-98ca-4744f64859f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4da5a93b-0215-48fe-87e4-ee53e57fc6f6",
              "parent_uuid": "c3fc1ee7-7962-4400-a0ef-59ec68b725ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "47235c81-b91e-4478-9e2f-2bb06632d2d7",
                  "parent_uuid": "4da5a93b-0215-48fe-87e4-ee53e57fc6f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc5a2dfd-1803-4922-a6d3-53871be8bc88",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f0c03d8e-4766-4a55-b9ee-8ba5d72afd33",
              "parent_uuid": "bc5a2dfd-1803-4922-a6d3-53871be8bc88",
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
          "uuid": "cf044ae4-633e-457c-9c0e-b477b60ec8f4",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f98dd3e7-5fcb-403e-b025-713a48e94b82",
              "parent_uuid": "cf044ae4-633e-457c-9c0e-b477b60ec8f4",
              "tagName": "td",
              "properties": [
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
              "uuid": "e7f6e80c-89e9-4d0d-98d1-729707059f9e",
              "parent_uuid": "cf044ae4-633e-457c-9c0e-b477b60ec8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "070fbde8-7ecd-479a-964d-9d25592d55b5",
              "parent_uuid": "cf044ae4-633e-457c-9c0e-b477b60ec8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "1198b911-0cfc-4e2d-a923-f6b8a8ba9054",
                  "parent_uuid": "070fbde8-7ecd-479a-964d-9d25592d55b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "823df50f-f931-434f-9241-9cdc3279287c",
              "parent_uuid": "cf044ae4-633e-457c-9c0e-b477b60ec8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "0d671213-0e53-4209-891c-ae5f2d372ee9",
                  "parent_uuid": "823df50f-f931-434f-9241-9cdc3279287c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5739986d-7ae8-4458-bce7-bd5fd3feb856",
              "parent_uuid": "cf044ae4-633e-457c-9c0e-b477b60ec8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "090c763c-e86b-49ab-9175-c06c309ccce3",
                  "parent_uuid": "5739986d-7ae8-4458-bce7-bd5fd3feb856",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e895b00-dfee-4ee4-a91b-f8cd750c3bc9",
              "parent_uuid": "cf044ae4-633e-457c-9c0e-b477b60ec8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
                  "uuid": "b3125b0a-d6ac-49da-b989-45f13249b508",
                  "parent_uuid": "3e895b00-dfee-4ee4-a91b-f8cd750c3bc9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "33d10fa8-7a1e-4221-88f0-eba19b29c713",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c7201eb-ab33-4e1f-b2bc-2541bcedc531",
              "parent_uuid": "33d10fa8-7a1e-4221-88f0-eba19b29c713",
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
          "uuid": "bec04787-ad03-480e-87e1-f172d91bec13",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4269e586-7e36-4b3a-85aa-af59d1be0d7e",
              "parent_uuid": "bec04787-ad03-480e-87e1-f172d91bec13",
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
          "uuid": "09cba948-8cf3-4dfe-8396-93a0cc051cf5",
          "parent_uuid": "6bfa99c1-b3bf-4be0-abb8-67cd4a9c0e91",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b7a1df6-2969-44d8-a2fa-86dc7d033b1a",
              "parent_uuid": "09cba948-8cf3-4dfe-8396-93a0cc051cf5",
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
                  "uuid": "8eb099a8-993f-45fd-8166-c2a3ea0b30e7",
                  "parent_uuid": "0b7a1df6-2969-44d8-a2fa-86dc7d033b1a",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

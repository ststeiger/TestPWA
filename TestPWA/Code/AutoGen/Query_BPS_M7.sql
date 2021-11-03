
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
  "uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "04a6fd39-726a-4f02-82b0-de8cbedaf0a5",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "b215d22a-b166-4e70-8c73-c659a6e7047d",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "0fa6ca75-8f30-4e8d-bc18-e1f1478c2af9",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "00d3fc76-1eaa-455d-97c5-4614a22f1884",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "f29945cd-3fd3-491b-a95a-394518c9409a",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "04dc94c5-5417-48d9-9466-3d967ea36a14",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "94062149-e5b8-4c71-b9f9-5cce50fa826f",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
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
      "uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
      "parent_uuid": "4a029659-f18e-4488-b9f6-9d8497ea5171",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "9460a302-c5aa-4663-81f1-d2580354adbb",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "0567db59-9833-44ba-8a9a-ee62096c7196",
              "parent_uuid": "9460a302-c5aa-4663-81f1-d2580354adbb",
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
              "uuid": "3591ca66-83a7-43e8-9d05-43c507c99110",
              "parent_uuid": "9460a302-c5aa-4663-81f1-d2580354adbb",
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
              "uuid": "b3ab6d24-5e5d-4462-8b2a-77d67a07a552",
              "parent_uuid": "9460a302-c5aa-4663-81f1-d2580354adbb",
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
              "uuid": "667256b1-1b32-491c-9dd2-631db00a9893",
              "parent_uuid": "9460a302-c5aa-4663-81f1-d2580354adbb",
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
          "uuid": "58aed260-6766-40a9-a002-62c55b4134a1",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "b1b88585-7f84-4584-aac8-92de03e14cc2",
              "parent_uuid": "58aed260-6766-40a9-a002-62c55b4134a1",
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
              "uuid": "d5dfb874-bcdb-4f22-b83d-83f2a36c423e",
              "parent_uuid": "58aed260-6766-40a9-a002-62c55b4134a1",
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
              "uuid": "8a927249-0141-45a5-8d69-696f87c61131",
              "parent_uuid": "58aed260-6766-40a9-a002-62c55b4134a1",
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
              "uuid": "3b9fde36-6dbb-41f7-87c8-4f9345cab9b6",
              "parent_uuid": "58aed260-6766-40a9-a002-62c55b4134a1",
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
          "uuid": "1b6cf898-973c-433d-b017-0baafc15f797",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0118459d-3b2e-4143-897e-c5911c364bc0",
              "parent_uuid": "1b6cf898-973c-433d-b017-0baafc15f797",
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
              "uuid": "73949e48-39dd-4b3e-ae4b-a2a57f5e70be",
              "parent_uuid": "1b6cf898-973c-433d-b017-0baafc15f797",
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
              "uuid": "6b21b7bf-1388-4df0-bd8e-e4a0e519a5c8",
              "parent_uuid": "1b6cf898-973c-433d-b017-0baafc15f797",
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
              "uuid": "b7f5aac3-c1fa-45e6-a2b4-0c66fd055f9c",
              "parent_uuid": "1b6cf898-973c-433d-b017-0baafc15f797",
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
              "uuid": "2f4c46b5-b688-4e2f-bd07-4c8310dfce78",
              "parent_uuid": "1b6cf898-973c-433d-b017-0baafc15f797",
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
              "uuid": "d0a46e99-8544-42e7-8295-48a1ff814342",
              "parent_uuid": "1b6cf898-973c-433d-b017-0baafc15f797",
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
          "uuid": "d6e4f45e-adc8-4911-8474-cb88371f07f1",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3dc90544-4101-4731-a46d-0685f1d80d44",
              "parent_uuid": "d6e4f45e-adc8-4911-8474-cb88371f07f1",
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
          "uuid": "a182733a-b133-4ade-b5b2-a21153c5dcdb",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "478ac53c-4187-4046-82f7-c4549df6d62c",
              "parent_uuid": "a182733a-b133-4ade-b5b2-a21153c5dcdb",
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
              "uuid": "a78546d9-dee8-4534-903b-5d4274dfacb5",
              "parent_uuid": "a182733a-b133-4ade-b5b2-a21153c5dcdb",
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
              "uuid": "9facb617-3193-44e5-9fcc-25966b8ca4d2",
              "parent_uuid": "a182733a-b133-4ade-b5b2-a21153c5dcdb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aef5178c-6a35-40b9-97f0-910d1ab28ad4",
                  "parent_uuid": "9facb617-3193-44e5-9fcc-25966b8ca4d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d659ef4c-89dd-4f1c-87c1-6a13059cb201",
              "parent_uuid": "a182733a-b133-4ade-b5b2-a21153c5dcdb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3686d2b8-1f44-46cd-9c2f-57ea57631ec2",
                  "parent_uuid": "d659ef4c-89dd-4f1c-87c1-6a13059cb201",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3f0ece5-e311-4b2a-b4e9-8b153de93bab",
              "parent_uuid": "a182733a-b133-4ade-b5b2-a21153c5dcdb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7d514bb5-b6f8-4867-b503-110be95c0861",
                  "parent_uuid": "a3f0ece5-e311-4b2a-b4e9-8b153de93bab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea818e68-0554-44d5-8aeb-ec485a95a8a2",
              "parent_uuid": "a182733a-b133-4ade-b5b2-a21153c5dcdb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d0be8ee8-cd89-4af3-af5c-53405aec1c92",
                  "parent_uuid": "ea818e68-0554-44d5-8aeb-ec485a95a8a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "85945c76-5e30-422a-bd7e-c15392da7163",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58871688-f7a0-476a-8321-35cd7d063549",
              "parent_uuid": "85945c76-5e30-422a-bd7e-c15392da7163",
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
              "uuid": "96fbdaa4-529c-4f1f-baee-a9a8c6648659",
              "parent_uuid": "85945c76-5e30-422a-bd7e-c15392da7163",
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
              "uuid": "12a43629-c8db-4926-a30f-9e686f257ab0",
              "parent_uuid": "85945c76-5e30-422a-bd7e-c15392da7163",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7ccb5184-f15c-47a9-bab7-65e3fba7a79b",
                  "parent_uuid": "12a43629-c8db-4926-a30f-9e686f257ab0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f85b4978-54b6-4f8d-8fe3-1dd9047efdcc",
              "parent_uuid": "85945c76-5e30-422a-bd7e-c15392da7163",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5f720329-f4af-4b07-92a7-9cf7328a6520",
                  "parent_uuid": "f85b4978-54b6-4f8d-8fe3-1dd9047efdcc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25242728-92ec-49e3-a022-408666aa100f",
              "parent_uuid": "85945c76-5e30-422a-bd7e-c15392da7163",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e9f02bb6-9f8f-44d6-82c3-83918240ff32",
                  "parent_uuid": "25242728-92ec-49e3-a022-408666aa100f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c0efdc7-fe6c-44b8-98da-1de7336830eb",
              "parent_uuid": "85945c76-5e30-422a-bd7e-c15392da7163",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ccfa3690-4b84-4a47-b668-d75ed6bb8cf6",
                  "parent_uuid": "3c0efdc7-fe6c-44b8-98da-1de7336830eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "92295c56-839b-4843-bc14-a2a81b3df814",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce7f50c1-2dd1-48ca-b373-c94771fccc06",
              "parent_uuid": "92295c56-839b-4843-bc14-a2a81b3df814",
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
              "uuid": "7c7079a9-cd24-4c14-89ea-6e96be2ea35d",
              "parent_uuid": "92295c56-839b-4843-bc14-a2a81b3df814",
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
              "uuid": "0a037232-dd18-4fd3-acfa-5ea9978a4222",
              "parent_uuid": "92295c56-839b-4843-bc14-a2a81b3df814",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6478aeac-8e22-452d-b0e1-fa2bb2f1808a",
                  "parent_uuid": "0a037232-dd18-4fd3-acfa-5ea9978a4222",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c727c51a-a12a-458c-9f32-df53508fc646",
              "parent_uuid": "92295c56-839b-4843-bc14-a2a81b3df814",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8360e3ce-148c-4e14-9685-bc16fe884134",
                  "parent_uuid": "c727c51a-a12a-458c-9f32-df53508fc646",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29a63f72-93cd-4b14-8313-633be208810c",
              "parent_uuid": "92295c56-839b-4843-bc14-a2a81b3df814",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1508a5f-ced0-4ca6-9094-f64fad394e53",
                  "parent_uuid": "29a63f72-93cd-4b14-8313-633be208810c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edd74b41-4d4a-4a67-9aa2-60ffc113a88d",
              "parent_uuid": "92295c56-839b-4843-bc14-a2a81b3df814",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "842d8e19-2084-4785-bae2-49c6e02173c3",
                  "parent_uuid": "edd74b41-4d4a-4a67-9aa2-60ffc113a88d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "93278fb6-dee8-4453-af15-ae678bb5d1b2",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "803a4c51-8ba0-437f-a1a6-ada445616f1d",
              "parent_uuid": "93278fb6-dee8-4453-af15-ae678bb5d1b2",
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
              "uuid": "31b819c5-7347-4251-8396-d7b87ee70584",
              "parent_uuid": "93278fb6-dee8-4453-af15-ae678bb5d1b2",
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
              "uuid": "12f6caf5-ae38-47de-b0e5-eba407fdb5b5",
              "parent_uuid": "93278fb6-dee8-4453-af15-ae678bb5d1b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35aeb2a7-a90e-40e6-8a32-fa2fde9f98fa",
                  "parent_uuid": "12f6caf5-ae38-47de-b0e5-eba407fdb5b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab5a05e6-df19-4049-bcb6-036dcdfc5e11",
              "parent_uuid": "93278fb6-dee8-4453-af15-ae678bb5d1b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82b85970-0688-47a0-b90b-bddb83148481",
                  "parent_uuid": "ab5a05e6-df19-4049-bcb6-036dcdfc5e11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b876fa52-32fc-4b15-91fd-6674bf6ca625",
              "parent_uuid": "93278fb6-dee8-4453-af15-ae678bb5d1b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8852f7d6-5c4b-49aa-9834-6b48a110d23b",
                  "parent_uuid": "b876fa52-32fc-4b15-91fd-6674bf6ca625",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90250ea8-f8bd-4d3e-b43c-b84ed57663aa",
              "parent_uuid": "93278fb6-dee8-4453-af15-ae678bb5d1b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c94280d-9e0b-48c8-9ae5-ff566e84f679",
                  "parent_uuid": "90250ea8-f8bd-4d3e-b43c-b84ed57663aa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a176ba68-28ec-4c34-88f1-86b40737372f",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ccbf8f7-7c71-4bda-81aa-663e0b959953",
              "parent_uuid": "a176ba68-28ec-4c34-88f1-86b40737372f",
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
              "uuid": "cd24a7f5-e24e-44a9-b06a-3fb7b6b3ba8d",
              "parent_uuid": "a176ba68-28ec-4c34-88f1-86b40737372f",
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
              "uuid": "b1b3a126-5fa5-46cd-a0ca-a98fdbb552dd",
              "parent_uuid": "a176ba68-28ec-4c34-88f1-86b40737372f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2490d21-f843-4bc8-9395-3cfe36432178",
                  "parent_uuid": "b1b3a126-5fa5-46cd-a0ca-a98fdbb552dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05772be9-2cf5-4917-8083-f0cd752b5fd1",
              "parent_uuid": "a176ba68-28ec-4c34-88f1-86b40737372f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1f3aa6d-91c3-457d-a254-79a68006e082",
                  "parent_uuid": "05772be9-2cf5-4917-8083-f0cd752b5fd1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ee1f7ea-e582-4369-8627-a79da14671b4",
              "parent_uuid": "a176ba68-28ec-4c34-88f1-86b40737372f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b652bfd-d6ca-4cd4-9a4f-201fffe82437",
                  "parent_uuid": "8ee1f7ea-e582-4369-8627-a79da14671b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b50fa76-6e7f-4427-b470-5e60de8826dc",
              "parent_uuid": "a176ba68-28ec-4c34-88f1-86b40737372f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0aa7721b-b8cd-404c-9b94-930c92dd5322",
                  "parent_uuid": "3b50fa76-6e7f-4427-b470-5e60de8826dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e93770fc-47b4-4eee-aaf0-c4db51184b8b",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9cded1a-f241-44ba-b2ea-e69e0c11c25c",
              "parent_uuid": "e93770fc-47b4-4eee-aaf0-c4db51184b8b",
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
              "uuid": "38e84289-24b4-40f2-81f1-b80b2439a83a",
              "parent_uuid": "e93770fc-47b4-4eee-aaf0-c4db51184b8b",
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
              "uuid": "027abe62-a511-4c53-8239-c35f579ffcaa",
              "parent_uuid": "e93770fc-47b4-4eee-aaf0-c4db51184b8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95940c9c-8a71-4874-9200-e0ed6c79d79e",
                  "parent_uuid": "027abe62-a511-4c53-8239-c35f579ffcaa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "382b1607-9389-4896-b481-d3f3ec59ffbe",
              "parent_uuid": "e93770fc-47b4-4eee-aaf0-c4db51184b8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6ef7d46-f1b6-47e5-87e6-4cd18d91f402",
                  "parent_uuid": "382b1607-9389-4896-b481-d3f3ec59ffbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2bd2668-4725-4e71-8e8d-93f57224fd5d",
              "parent_uuid": "e93770fc-47b4-4eee-aaf0-c4db51184b8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51055b16-c43d-4099-a684-1fc4ab284b18",
                  "parent_uuid": "a2bd2668-4725-4e71-8e8d-93f57224fd5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8252d3e-7eeb-4dde-92ed-8719e1e03346",
              "parent_uuid": "e93770fc-47b4-4eee-aaf0-c4db51184b8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81a7bd2f-0905-4bee-a7ad-e37e1234d184",
                  "parent_uuid": "f8252d3e-7eeb-4dde-92ed-8719e1e03346",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1fcdcc0e-8de4-4947-aec5-8219019f9a43",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb46c8ce-5e48-462e-a91b-dc2c85905492",
              "parent_uuid": "1fcdcc0e-8de4-4947-aec5-8219019f9a43",
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
              "uuid": "c7a0ef94-3959-469c-b5e8-e38af460b83b",
              "parent_uuid": "1fcdcc0e-8de4-4947-aec5-8219019f9a43",
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
              "uuid": "e7f82da4-3352-4a48-954f-8204e5d0971e",
              "parent_uuid": "1fcdcc0e-8de4-4947-aec5-8219019f9a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a913698-78ef-49cc-a3da-19d04b0ce1af",
                  "parent_uuid": "e7f82da4-3352-4a48-954f-8204e5d0971e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0582e6f5-406b-4735-8ec9-52bbde72d806",
              "parent_uuid": "1fcdcc0e-8de4-4947-aec5-8219019f9a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67fac675-65e8-415c-900f-14053fcc3366",
                  "parent_uuid": "0582e6f5-406b-4735-8ec9-52bbde72d806",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b21a585c-be1d-40be-a29b-15de2310ed49",
              "parent_uuid": "1fcdcc0e-8de4-4947-aec5-8219019f9a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "764ef1d1-327d-4e31-9904-f2e97489ba82",
                  "parent_uuid": "b21a585c-be1d-40be-a29b-15de2310ed49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd03fc3a-8106-4ac8-9282-5e319623c351",
              "parent_uuid": "1fcdcc0e-8de4-4947-aec5-8219019f9a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1397fe4-6255-4785-8c7c-a6afd0e180e4",
                  "parent_uuid": "bd03fc3a-8106-4ac8-9282-5e319623c351",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "27a6c0f2-8a0e-422b-a72b-f30d3f9a6350",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb1f3201-23a2-4c3a-871b-3cff2b5134dd",
              "parent_uuid": "27a6c0f2-8a0e-422b-a72b-f30d3f9a6350",
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
              "uuid": "1494e2ae-05ad-450d-ab75-5471b19c8ac2",
              "parent_uuid": "27a6c0f2-8a0e-422b-a72b-f30d3f9a6350",
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
              "uuid": "3a0d8cd3-8c64-43bb-9acf-b1792963fb39",
              "parent_uuid": "27a6c0f2-8a0e-422b-a72b-f30d3f9a6350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d74771c-7fd3-480e-ab11-4a14d9138e85",
                  "parent_uuid": "3a0d8cd3-8c64-43bb-9acf-b1792963fb39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2f61035-c241-4097-a425-cfa53bef7e71",
              "parent_uuid": "27a6c0f2-8a0e-422b-a72b-f30d3f9a6350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e46f15a8-b8ce-4b95-af78-1af2faf32025",
                  "parent_uuid": "d2f61035-c241-4097-a425-cfa53bef7e71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed7bc456-05a9-4ee2-8c3b-58404c013eea",
              "parent_uuid": "27a6c0f2-8a0e-422b-a72b-f30d3f9a6350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7624cda1-2d63-49ee-afec-81a20432e8ad",
                  "parent_uuid": "ed7bc456-05a9-4ee2-8c3b-58404c013eea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36345ff3-6b9b-4a09-bd31-4526b1a1b739",
              "parent_uuid": "27a6c0f2-8a0e-422b-a72b-f30d3f9a6350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1586994d-5841-494d-be66-766dbedbfc27",
                  "parent_uuid": "36345ff3-6b9b-4a09-bd31-4526b1a1b739",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f7c8f169-f1d1-407a-b5ef-c72a1843f8b9",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f5d2f182-7989-42fa-8db7-a8510bf2f001",
              "parent_uuid": "f7c8f169-f1d1-407a-b5ef-c72a1843f8b9",
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
              "uuid": "5a47c7b5-5a47-4235-9b31-6fff33f28baf",
              "parent_uuid": "f7c8f169-f1d1-407a-b5ef-c72a1843f8b9",
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
              "uuid": "0f3e62a9-5d57-4365-87c8-344b2677bd6c",
              "parent_uuid": "f7c8f169-f1d1-407a-b5ef-c72a1843f8b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66290a4b-3c86-4bf5-90ef-28dabe2ebf54",
                  "parent_uuid": "0f3e62a9-5d57-4365-87c8-344b2677bd6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a386e38-313a-44e8-a9cc-a297fa3ce411",
              "parent_uuid": "f7c8f169-f1d1-407a-b5ef-c72a1843f8b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10a28909-3569-4105-ab9d-54bd5caf6d0a",
                  "parent_uuid": "0a386e38-313a-44e8-a9cc-a297fa3ce411",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82bfbde7-010a-45ac-952a-c4f77720a5bf",
              "parent_uuid": "f7c8f169-f1d1-407a-b5ef-c72a1843f8b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e32501b-2578-4d93-939b-3e3230a361b2",
                  "parent_uuid": "82bfbde7-010a-45ac-952a-c4f77720a5bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afc7d552-7f6d-4af0-b811-75f09f402f52",
              "parent_uuid": "f7c8f169-f1d1-407a-b5ef-c72a1843f8b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac03ab34-19f3-4283-9d50-ec7bc452559a",
                  "parent_uuid": "afc7d552-7f6d-4af0-b811-75f09f402f52",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "03b866a1-af96-4f1a-906a-7f66df5a1be1",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ca6bcae-a9b2-47bf-81fa-abcc5faa4b1b",
              "parent_uuid": "03b866a1-af96-4f1a-906a-7f66df5a1be1",
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
              "uuid": "43fcceeb-d431-4711-8298-ae0a7cf3f865",
              "parent_uuid": "03b866a1-af96-4f1a-906a-7f66df5a1be1",
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
              "uuid": "b8470f83-f2bb-4682-baf8-f29952d5aa7a",
              "parent_uuid": "03b866a1-af96-4f1a-906a-7f66df5a1be1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7d27e6c-c050-4d04-8d99-521194992bf9",
                  "parent_uuid": "b8470f83-f2bb-4682-baf8-f29952d5aa7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac28ebe7-37a9-437c-8570-b8391a63ffe2",
              "parent_uuid": "03b866a1-af96-4f1a-906a-7f66df5a1be1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e440b233-0717-4daf-a584-1344ed5ca521",
                  "parent_uuid": "ac28ebe7-37a9-437c-8570-b8391a63ffe2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f87a9b3-2cc6-4d3b-9c6b-f043b6dd8916",
              "parent_uuid": "03b866a1-af96-4f1a-906a-7f66df5a1be1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f4c3fed-a39d-48ac-9d76-f7ab8d3c11b3",
                  "parent_uuid": "2f87a9b3-2cc6-4d3b-9c6b-f043b6dd8916",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75e7f15f-2514-4d6f-a68a-d5200a3f6d73",
              "parent_uuid": "03b866a1-af96-4f1a-906a-7f66df5a1be1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "329537ee-a905-44c5-94b3-de20aa55ba32",
                  "parent_uuid": "75e7f15f-2514-4d6f-a68a-d5200a3f6d73",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d8733c50-070e-40d6-a9f2-b1490cb61018",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8225b4a-afb2-4524-b6b4-817f6d675c7f",
              "parent_uuid": "d8733c50-070e-40d6-a9f2-b1490cb61018",
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
              "uuid": "c1eadc02-feab-41b3-ab43-65b5e4660cb5",
              "parent_uuid": "d8733c50-070e-40d6-a9f2-b1490cb61018",
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
              "uuid": "9a88b84d-4146-47b4-844e-25a4f7922b40",
              "parent_uuid": "d8733c50-070e-40d6-a9f2-b1490cb61018",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82512390-6470-4a47-bd76-fe7b42881beb",
                  "parent_uuid": "9a88b84d-4146-47b4-844e-25a4f7922b40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32740c93-11fd-40f4-a7ce-47c140fb44ad",
              "parent_uuid": "d8733c50-070e-40d6-a9f2-b1490cb61018",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "343079b2-05e0-4915-858a-47e96cd28c8a",
                  "parent_uuid": "32740c93-11fd-40f4-a7ce-47c140fb44ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ee9f20c-3e79-455e-8b49-9d3cbea4dbd2",
              "parent_uuid": "d8733c50-070e-40d6-a9f2-b1490cb61018",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c376efc8-8652-4af7-a704-2afd6e35e186",
                  "parent_uuid": "8ee9f20c-3e79-455e-8b49-9d3cbea4dbd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93868068-8f3d-4140-bdda-81198a3c74cc",
              "parent_uuid": "d8733c50-070e-40d6-a9f2-b1490cb61018",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a0bcf93-fe81-4c40-bf10-f9a0cd3ad494",
                  "parent_uuid": "93868068-8f3d-4140-bdda-81198a3c74cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "21ca9992-f76d-41cc-a242-7995f8175fd9",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d28a421a-d8f3-4b34-ae46-59a303ca6587",
              "parent_uuid": "21ca9992-f76d-41cc-a242-7995f8175fd9",
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
              "uuid": "81198cc5-7c66-4a78-86f5-6d6465ba83f8",
              "parent_uuid": "21ca9992-f76d-41cc-a242-7995f8175fd9",
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
              "uuid": "24b93a41-969a-475a-b082-557f7088f362",
              "parent_uuid": "21ca9992-f76d-41cc-a242-7995f8175fd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "755caa35-bd9e-43b5-af8d-939fa6a64ee1",
                  "parent_uuid": "24b93a41-969a-475a-b082-557f7088f362",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96b135de-fbd0-4f7f-a364-b53909868c75",
              "parent_uuid": "21ca9992-f76d-41cc-a242-7995f8175fd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75a94f5c-879a-4915-b38b-870531b40a26",
                  "parent_uuid": "96b135de-fbd0-4f7f-a364-b53909868c75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "038eb49d-9e83-44a0-b523-169848bf4442",
              "parent_uuid": "21ca9992-f76d-41cc-a242-7995f8175fd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d852bae6-61f7-4913-98aa-153654c29a9a",
                  "parent_uuid": "038eb49d-9e83-44a0-b523-169848bf4442",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94497811-54a9-4fa7-979d-a3f7c307a407",
              "parent_uuid": "21ca9992-f76d-41cc-a242-7995f8175fd9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcf0c290-ed16-43bb-bde8-228d3b7481f7",
                  "parent_uuid": "94497811-54a9-4fa7-979d-a3f7c307a407",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c7607e7a-2745-4a8f-9fbb-6ad9ac0b29bd",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3383bb05-15da-49f7-b4fd-3966c2231ef9",
              "parent_uuid": "c7607e7a-2745-4a8f-9fbb-6ad9ac0b29bd",
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
              "uuid": "b0156bb9-f2d1-4ac0-a31f-6bfdc15254d6",
              "parent_uuid": "c7607e7a-2745-4a8f-9fbb-6ad9ac0b29bd",
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
              "uuid": "a3f507cf-3bec-48a6-bb03-734b5c1fcf39",
              "parent_uuid": "c7607e7a-2745-4a8f-9fbb-6ad9ac0b29bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a299f3d-1b26-405a-a1f4-5c3a8333d657",
                  "parent_uuid": "a3f507cf-3bec-48a6-bb03-734b5c1fcf39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f2acdfa-3a77-4059-abab-906ead24b05a",
              "parent_uuid": "c7607e7a-2745-4a8f-9fbb-6ad9ac0b29bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8cd489b-efed-4a98-9049-3829421acd6c",
                  "parent_uuid": "7f2acdfa-3a77-4059-abab-906ead24b05a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fffa92db-1597-4df5-887b-babd9cc65599",
              "parent_uuid": "c7607e7a-2745-4a8f-9fbb-6ad9ac0b29bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7baf06ac-44ca-4735-9ba1-5a7079ea319b",
                  "parent_uuid": "fffa92db-1597-4df5-887b-babd9cc65599",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42e23381-f2de-40ee-9388-a597809088c2",
              "parent_uuid": "c7607e7a-2745-4a8f-9fbb-6ad9ac0b29bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f547ca8f-1780-4a5f-8443-78a264f7a2bf",
                  "parent_uuid": "42e23381-f2de-40ee-9388-a597809088c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "21497abf-30cf-42e2-aa4f-6a4d417cf461",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8e015785-c128-4926-a970-fa77b883e379",
              "parent_uuid": "21497abf-30cf-42e2-aa4f-6a4d417cf461",
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
              "uuid": "88662aaf-436e-400d-8d2d-fb5e1eac79da",
              "parent_uuid": "21497abf-30cf-42e2-aa4f-6a4d417cf461",
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
              "uuid": "fc5aa7c7-f225-45c4-8caa-de599326fc01",
              "parent_uuid": "21497abf-30cf-42e2-aa4f-6a4d417cf461",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05d10965-42e9-403d-b5df-dc464a7871ff",
                  "parent_uuid": "fc5aa7c7-f225-45c4-8caa-de599326fc01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15a4c625-a451-41ff-8498-8096d573ad5f",
              "parent_uuid": "21497abf-30cf-42e2-aa4f-6a4d417cf461",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfb55dd4-b977-4ab0-83f7-0d86aae7b06f",
                  "parent_uuid": "15a4c625-a451-41ff-8498-8096d573ad5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cf56f67-5454-44e6-b61f-e7b3736661bc",
              "parent_uuid": "21497abf-30cf-42e2-aa4f-6a4d417cf461",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b429f44-4c45-469f-b264-981fb9f22040",
                  "parent_uuid": "7cf56f67-5454-44e6-b61f-e7b3736661bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43df2d10-2c14-4ace-867d-e8f5d31f22af",
              "parent_uuid": "21497abf-30cf-42e2-aa4f-6a4d417cf461",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3799f091-013f-4278-9f75-36476158eeb1",
                  "parent_uuid": "43df2d10-2c14-4ace-867d-e8f5d31f22af",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "484136ed-dacd-426c-b658-9d35729b453e",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3e46a84-cab0-40ad-b7fc-6812a95e0990",
              "parent_uuid": "484136ed-dacd-426c-b658-9d35729b453e",
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
              "uuid": "038bc03b-706a-4594-b0d2-ec8b5ad15494",
              "parent_uuid": "484136ed-dacd-426c-b658-9d35729b453e",
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
              "uuid": "58b5be2b-dc44-4b53-8342-67fae72dba0b",
              "parent_uuid": "484136ed-dacd-426c-b658-9d35729b453e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "226686a8-c116-49cc-9d23-94c6794bdeeb",
                  "parent_uuid": "58b5be2b-dc44-4b53-8342-67fae72dba0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af3afc5e-11a9-4400-96bd-c1acf8c3a8fd",
              "parent_uuid": "484136ed-dacd-426c-b658-9d35729b453e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b30002a1-7c20-42a6-bd6d-b2bf38e2188d",
                  "parent_uuid": "af3afc5e-11a9-4400-96bd-c1acf8c3a8fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31f880ef-647b-4e6e-b367-ce86b9272431",
              "parent_uuid": "484136ed-dacd-426c-b658-9d35729b453e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcc72507-d9d3-47e0-9247-1083b33fd70c",
                  "parent_uuid": "31f880ef-647b-4e6e-b367-ce86b9272431",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4e0afdd-835e-4cef-aaa1-aec382d63db7",
              "parent_uuid": "484136ed-dacd-426c-b658-9d35729b453e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "852fb182-8743-4189-972b-8f236a901525",
                  "parent_uuid": "a4e0afdd-835e-4cef-aaa1-aec382d63db7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ecfff5a9-b5cd-439b-9a52-171ea77068fa",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aad58706-94c6-4ae7-a32d-aeefbcddb6cc",
              "parent_uuid": "ecfff5a9-b5cd-439b-9a52-171ea77068fa",
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
              "uuid": "374c0499-bccb-4b8f-b36b-d2ea2dd0f885",
              "parent_uuid": "ecfff5a9-b5cd-439b-9a52-171ea77068fa",
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
              "uuid": "4638f819-f838-41f8-9ad2-60cfb3999763",
              "parent_uuid": "ecfff5a9-b5cd-439b-9a52-171ea77068fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93e8436e-8878-423a-8dbb-c3bb0e5a7331",
                  "parent_uuid": "4638f819-f838-41f8-9ad2-60cfb3999763",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86b8218b-1314-4397-bdc3-10e10fd73607",
              "parent_uuid": "ecfff5a9-b5cd-439b-9a52-171ea77068fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f9d43e1-1ea7-4089-957f-4422a9740144",
                  "parent_uuid": "86b8218b-1314-4397-bdc3-10e10fd73607",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd9d3332-65ec-40e2-b74f-4a90d116aaf1",
              "parent_uuid": "ecfff5a9-b5cd-439b-9a52-171ea77068fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51a577f1-3360-442b-8298-954db1ddf9c9",
                  "parent_uuid": "dd9d3332-65ec-40e2-b74f-4a90d116aaf1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a88623e-ae4a-4bd6-a9e5-48176229c243",
              "parent_uuid": "ecfff5a9-b5cd-439b-9a52-171ea77068fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78c3b393-f0ec-42ec-9ff6-7809221b331a",
                  "parent_uuid": "4a88623e-ae4a-4bd6-a9e5-48176229c243",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f47f0262-1b5c-4d89-8c1d-b62bd19118cd",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b96bd77-2f58-498e-a285-5f80817ab372",
              "parent_uuid": "f47f0262-1b5c-4d89-8c1d-b62bd19118cd",
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
          "uuid": "ab47bb05-9aeb-42da-b9b6-02fd1f7e68fb",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4386bd5-4e59-4ce5-9bd9-062b9ff7fad4",
              "parent_uuid": "ab47bb05-9aeb-42da-b9b6-02fd1f7e68fb",
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
          "uuid": "463db11e-6569-41cb-b8ef-b2943f91c21f",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a6ef2ce1-4678-468f-9b62-08e56a25418b",
              "parent_uuid": "463db11e-6569-41cb-b8ef-b2943f91c21f",
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
                  "uuid": "9543606c-38d8-4713-a6fb-54bd0ef9c062",
                  "parent_uuid": "a6ef2ce1-4678-468f-9b62-08e56a25418b",
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
          "uuid": "2b3bb221-0940-46e7-8fce-42d1fe3fffe1",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "80f69f7c-b028-4ae5-8355-db75d0f14450",
              "parent_uuid": "2b3bb221-0940-46e7-8fce-42d1fe3fffe1",
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
          "uuid": "06f91b59-bfd6-4f8d-b8ba-ce71857c2cde",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c2271317-8769-4f25-9895-f913c2da544a",
              "parent_uuid": "06f91b59-bfd6-4f8d-b8ba-ce71857c2cde",
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
          "uuid": "805b234b-970c-4511-9bfb-87afb2a91ee4",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba43ecc6-849e-4732-adcc-2654b98977c4",
              "parent_uuid": "805b234b-970c-4511-9bfb-87afb2a91ee4",
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
              "uuid": "2d085cda-c55a-479f-bea0-4c8be45fa80f",
              "parent_uuid": "805b234b-970c-4511-9bfb-87afb2a91ee4",
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
              "uuid": "12700d27-fdb9-463e-97f5-99826be6616e",
              "parent_uuid": "805b234b-970c-4511-9bfb-87afb2a91ee4",
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
              "uuid": "1d96b03d-5288-41fd-865e-382140d8e72e",
              "parent_uuid": "805b234b-970c-4511-9bfb-87afb2a91ee4",
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
              "uuid": "022870a5-bde3-4fd2-afd9-e089d29bf90b",
              "parent_uuid": "805b234b-970c-4511-9bfb-87afb2a91ee4",
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
              "uuid": "1ce79223-7e34-46dd-add4-2f24fb8d99a2",
              "parent_uuid": "805b234b-970c-4511-9bfb-87afb2a91ee4",
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
          "uuid": "4b4285aa-3908-4095-b10e-5b5db482affa",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "005ca6b3-17f2-4c5d-8aca-f5f64c6d75e2",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3b9fab8-e768-48b4-aa58-49a1a61fadcb",
              "parent_uuid": "005ca6b3-17f2-4c5d-8aca-f5f64c6d75e2",
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
              "uuid": "c3c33dee-7167-405b-a503-7e6e3b728ba0",
              "parent_uuid": "005ca6b3-17f2-4c5d-8aca-f5f64c6d75e2",
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
              "uuid": "68f4d884-80d3-4ab9-8ae8-78e8b57c6d86",
              "parent_uuid": "005ca6b3-17f2-4c5d-8aca-f5f64c6d75e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "887f74c6-a0b3-4b75-a6e0-a2a7c74a37b3",
                  "parent_uuid": "68f4d884-80d3-4ab9-8ae8-78e8b57c6d86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8a06b86-113b-4051-82da-73f588bc6a9f",
              "parent_uuid": "005ca6b3-17f2-4c5d-8aca-f5f64c6d75e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "018efeea-f75b-4b2c-a7f4-63bfea692e52",
                  "parent_uuid": "b8a06b86-113b-4051-82da-73f588bc6a9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0be4fe9-1065-4cf3-b231-18370a536339",
              "parent_uuid": "005ca6b3-17f2-4c5d-8aca-f5f64c6d75e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51096845-25c7-4d39-9a42-ad35d4e20e3c",
                  "parent_uuid": "f0be4fe9-1065-4cf3-b231-18370a536339",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77165487-0ad0-4be7-8c8c-7d70ce66bf83",
              "parent_uuid": "005ca6b3-17f2-4c5d-8aca-f5f64c6d75e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20d30bee-3ef8-4613-99e2-0c6b53bc72e4",
                  "parent_uuid": "77165487-0ad0-4be7-8c8c-7d70ce66bf83",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "96b03b4d-063f-48aa-b564-4eb2bb1bece2",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0a02941-7851-4e06-a5f1-350b254679b2",
              "parent_uuid": "96b03b4d-063f-48aa-b564-4eb2bb1bece2",
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
              "uuid": "bd92300a-7e49-44e4-98e8-32c305b96865",
              "parent_uuid": "96b03b4d-063f-48aa-b564-4eb2bb1bece2",
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
              "uuid": "5a89f37e-511d-4c74-8b05-115d98299a37",
              "parent_uuid": "96b03b4d-063f-48aa-b564-4eb2bb1bece2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99aa5c7d-8a1e-47a1-850e-1796f9e29b1f",
                  "parent_uuid": "5a89f37e-511d-4c74-8b05-115d98299a37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60e6d0da-18b9-475a-8d1b-b3644b129e03",
              "parent_uuid": "96b03b4d-063f-48aa-b564-4eb2bb1bece2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a941a48d-f4e2-432c-97e0-98adf4ae6c6f",
                  "parent_uuid": "60e6d0da-18b9-475a-8d1b-b3644b129e03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "620053c9-3084-4448-81f5-0a5642746530",
              "parent_uuid": "96b03b4d-063f-48aa-b564-4eb2bb1bece2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f07aea1b-e3c1-455f-889f-a440d0657b54",
                  "parent_uuid": "620053c9-3084-4448-81f5-0a5642746530",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da5e1cd9-9a30-4225-a12c-edbee2f641bc",
              "parent_uuid": "96b03b4d-063f-48aa-b564-4eb2bb1bece2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f640505b-f9f4-4591-80e2-9cd6a9c9d755",
                  "parent_uuid": "da5e1cd9-9a30-4225-a12c-edbee2f641bc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26d793a8-5c52-4ebc-973f-a948b176729c",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e9d323df-33b0-459c-89e0-5fbdf750bb91",
              "parent_uuid": "26d793a8-5c52-4ebc-973f-a948b176729c",
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
              "uuid": "3cfbd363-ee1e-4713-be88-21b37e9c57d1",
              "parent_uuid": "26d793a8-5c52-4ebc-973f-a948b176729c",
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
              "uuid": "68d4a3e7-da74-4c92-87c7-06054963de75",
              "parent_uuid": "26d793a8-5c52-4ebc-973f-a948b176729c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b4c56f5-c873-4bf5-8063-83c0b5dfeac8",
                  "parent_uuid": "68d4a3e7-da74-4c92-87c7-06054963de75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8b62c74-ca06-4717-969c-dfeb6cf899c8",
              "parent_uuid": "26d793a8-5c52-4ebc-973f-a948b176729c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8ff3ac4-76af-479f-b117-384947b35c9e",
                  "parent_uuid": "f8b62c74-ca06-4717-969c-dfeb6cf899c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "962822e2-1c6f-4117-867e-c6665460bf56",
              "parent_uuid": "26d793a8-5c52-4ebc-973f-a948b176729c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac13b2a6-4b5d-42f4-82b2-b404d2be6368",
                  "parent_uuid": "962822e2-1c6f-4117-867e-c6665460bf56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cab0a862-7f92-4799-a94c-19e9b254ef99",
              "parent_uuid": "26d793a8-5c52-4ebc-973f-a948b176729c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a541e7d8-f8df-43a1-9820-13bf46aff537",
                  "parent_uuid": "cab0a862-7f92-4799-a94c-19e9b254ef99",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "df21b629-79c5-4a65-9d4c-aa0d46fcc380",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91facccd-25ae-4d0e-9da9-132f254e9405",
              "parent_uuid": "df21b629-79c5-4a65-9d4c-aa0d46fcc380",
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
              "uuid": "807824bb-5d04-41dd-ae0d-c9d08c1f51fe",
              "parent_uuid": "df21b629-79c5-4a65-9d4c-aa0d46fcc380",
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
              "uuid": "0e7e8d69-0bf5-4e54-a3e9-4056a559f281",
              "parent_uuid": "df21b629-79c5-4a65-9d4c-aa0d46fcc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f661cd95-cab6-4a7b-a2f8-a8769b10c283",
                  "parent_uuid": "0e7e8d69-0bf5-4e54-a3e9-4056a559f281",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e056955-897d-41b6-806d-9aecd2a097a8",
              "parent_uuid": "df21b629-79c5-4a65-9d4c-aa0d46fcc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f510fa6-8566-47ae-893f-5583e12a9b5d",
                  "parent_uuid": "5e056955-897d-41b6-806d-9aecd2a097a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87290c1d-7b1b-4b32-8d15-f21e63a1c5e8",
              "parent_uuid": "df21b629-79c5-4a65-9d4c-aa0d46fcc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23882fed-4296-425a-9e6a-a6bb0e9ef388",
                  "parent_uuid": "87290c1d-7b1b-4b32-8d15-f21e63a1c5e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a2e0a83-6647-4e3b-b3eb-d1d756b059f6",
              "parent_uuid": "df21b629-79c5-4a65-9d4c-aa0d46fcc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "122a537f-40ba-418f-884f-9067ca482d0c",
                  "parent_uuid": "7a2e0a83-6647-4e3b-b3eb-d1d756b059f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db829149-00ff-4e5e-bca3-172c30076e1b",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f55f6295-08b0-49b9-bb19-b8e0266fb42c",
              "parent_uuid": "db829149-00ff-4e5e-bca3-172c30076e1b",
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
          "uuid": "e93b4dfd-b01d-4be2-acc4-4f5632c3f921",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3a352f1c-35d8-47b2-a019-2713b1e0d8b6",
              "parent_uuid": "e93b4dfd-b01d-4be2-acc4-4f5632c3f921",
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
          "uuid": "6b5b0b2e-2a2a-4743-896b-14c473f924fd",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de35039f-6c71-451e-8ee8-1cecee08d6f5",
              "parent_uuid": "6b5b0b2e-2a2a-4743-896b-14c473f924fd",
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
                  "uuid": "6b8ff122-8b8d-46e8-a88f-03c81d3a6093",
                  "parent_uuid": "de35039f-6c71-451e-8ee8-1cecee08d6f5",
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
          "uuid": "110ccfcc-3e33-4d98-b4cd-997a33e7e0f5",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "0927ead6-c474-48fd-9b23-2d93567ff4d5",
              "parent_uuid": "110ccfcc-3e33-4d98-b4cd-997a33e7e0f5",
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
          "uuid": "dc54a21e-1906-4cc7-9824-714154153033",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "865a6713-c43d-4675-b3b3-480afe3b4f90",
              "parent_uuid": "dc54a21e-1906-4cc7-9824-714154153033",
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
          "uuid": "2310e3d3-ce61-4f12-9d88-822d7f632eb2",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7c64b98-17fd-4a76-a71d-2ebc09782e4d",
              "parent_uuid": "2310e3d3-ce61-4f12-9d88-822d7f632eb2",
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
              "uuid": "530c74a0-57b1-40c0-9004-0b43ebe1d09e",
              "parent_uuid": "2310e3d3-ce61-4f12-9d88-822d7f632eb2",
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
              "uuid": "6820fc45-56d4-401f-afcf-c192a1da6da9",
              "parent_uuid": "2310e3d3-ce61-4f12-9d88-822d7f632eb2",
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
              "uuid": "d7e1b5e0-f8f9-4699-a47e-0ed1860e7309",
              "parent_uuid": "2310e3d3-ce61-4f12-9d88-822d7f632eb2",
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
              "uuid": "e8a21b37-5340-4423-813e-9e428bdfd1e9",
              "parent_uuid": "2310e3d3-ce61-4f12-9d88-822d7f632eb2",
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
              "uuid": "0d20980c-f035-4df3-861b-82765d0a0cb7",
              "parent_uuid": "2310e3d3-ce61-4f12-9d88-822d7f632eb2",
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
          "uuid": "3b37240f-df07-44be-a826-1782dacedbcb",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1705bb70-8042-46f6-bd0a-3930f197a778",
              "parent_uuid": "3b37240f-df07-44be-a826-1782dacedbcb",
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
              "uuid": "271172e8-202b-4666-a35c-b8639c35405f",
              "parent_uuid": "3b37240f-df07-44be-a826-1782dacedbcb",
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
              "uuid": "fa3e4837-9efd-4b54-99bb-215cefbc4d7b",
              "parent_uuid": "3b37240f-df07-44be-a826-1782dacedbcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c974cc46-cca6-49c2-81c8-3ea88a151888",
                  "parent_uuid": "fa3e4837-9efd-4b54-99bb-215cefbc4d7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f20aa58-4b02-4eb7-8f70-d3478d67a898",
              "parent_uuid": "3b37240f-df07-44be-a826-1782dacedbcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38643c91-1b66-47c1-8a63-e789d5ec3690",
                  "parent_uuid": "8f20aa58-4b02-4eb7-8f70-d3478d67a898",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79745a81-3fb0-4bbb-a849-2b20e3bd2e43",
              "parent_uuid": "3b37240f-df07-44be-a826-1782dacedbcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20f4c298-53cb-4011-964e-038661c9bd28",
                  "parent_uuid": "79745a81-3fb0-4bbb-a849-2b20e3bd2e43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a4230ec-9ce8-45b6-a5f2-4d7ac8d3f855",
              "parent_uuid": "3b37240f-df07-44be-a826-1782dacedbcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3718e5eb-8a2e-4313-ad36-277e2d5d632a",
                  "parent_uuid": "3a4230ec-9ce8-45b6-a5f2-4d7ac8d3f855",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bd719969-3d7b-452f-bef2-6cc57dd9d8e0",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a74b9b2-4cff-451f-a796-b047c37e6779",
              "parent_uuid": "bd719969-3d7b-452f-bef2-6cc57dd9d8e0",
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
              "uuid": "5a3c2b30-9dc9-4598-8c58-29bb96a89aef",
              "parent_uuid": "bd719969-3d7b-452f-bef2-6cc57dd9d8e0",
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
              "uuid": "63c74473-6808-4020-a585-4d662112c025",
              "parent_uuid": "bd719969-3d7b-452f-bef2-6cc57dd9d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f115d03-a210-4436-b727-fe99f4071b71",
                  "parent_uuid": "63c74473-6808-4020-a585-4d662112c025",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9aab9a92-63eb-4b8d-af3b-c7b906fa1d58",
              "parent_uuid": "bd719969-3d7b-452f-bef2-6cc57dd9d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8295026-82c3-4f3d-80c7-cb6a23f80365",
                  "parent_uuid": "9aab9a92-63eb-4b8d-af3b-c7b906fa1d58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1dfbde98-23b9-4581-bbfc-cdc3d699218c",
              "parent_uuid": "bd719969-3d7b-452f-bef2-6cc57dd9d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40547a57-1638-483c-9349-4806e48087b5",
                  "parent_uuid": "1dfbde98-23b9-4581-bbfc-cdc3d699218c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae576889-63b5-4d92-b058-e51ca97677ea",
              "parent_uuid": "bd719969-3d7b-452f-bef2-6cc57dd9d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "716ed63d-44b8-4296-bf98-5613fdb4b1c7",
                  "parent_uuid": "ae576889-63b5-4d92-b058-e51ca97677ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f1cdb4c3-e3e1-46d6-80d2-c6bfc2d0a8da",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c4baae2-6c75-43d2-a399-5ffc9dee7eca",
              "parent_uuid": "f1cdb4c3-e3e1-46d6-80d2-c6bfc2d0a8da",
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
              "uuid": "a6e3277a-5862-44cc-8126-17ce870b5e24",
              "parent_uuid": "f1cdb4c3-e3e1-46d6-80d2-c6bfc2d0a8da",
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
              "uuid": "c6c27daa-aaf6-4fb6-89d3-0f03a5038cb3",
              "parent_uuid": "f1cdb4c3-e3e1-46d6-80d2-c6bfc2d0a8da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c5cc490-8b24-43ca-a35b-dbce8ba3d166",
                  "parent_uuid": "c6c27daa-aaf6-4fb6-89d3-0f03a5038cb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f996713-bc88-4330-81bf-0029fabb4d21",
              "parent_uuid": "f1cdb4c3-e3e1-46d6-80d2-c6bfc2d0a8da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ae4b26f-5679-4c2f-bc68-72e17f4d0800",
                  "parent_uuid": "2f996713-bc88-4330-81bf-0029fabb4d21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2575d25-5cfe-4fc7-9da8-fb7f59a8df67",
              "parent_uuid": "f1cdb4c3-e3e1-46d6-80d2-c6bfc2d0a8da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7798f44-80de-4c01-a5c0-33d68c61d589",
                  "parent_uuid": "c2575d25-5cfe-4fc7-9da8-fb7f59a8df67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "769037e0-91ac-4ffe-967f-6efc933ebcf1",
              "parent_uuid": "f1cdb4c3-e3e1-46d6-80d2-c6bfc2d0a8da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "459abd79-4f97-4854-8d91-3101779dee06",
                  "parent_uuid": "769037e0-91ac-4ffe-967f-6efc933ebcf1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a62191f1-875b-4c8c-a154-7dec560799ee",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d8cbe16-3a87-468a-9066-677e4e16ef75",
              "parent_uuid": "a62191f1-875b-4c8c-a154-7dec560799ee",
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
              "uuid": "f34eddb1-0a78-48c7-84ed-afcb79dc050b",
              "parent_uuid": "a62191f1-875b-4c8c-a154-7dec560799ee",
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
              "uuid": "4729c6b8-a04e-42ba-83b4-24ec57bf2592",
              "parent_uuid": "a62191f1-875b-4c8c-a154-7dec560799ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3587c95-2eeb-461e-87a3-c9cd0f620df6",
                  "parent_uuid": "4729c6b8-a04e-42ba-83b4-24ec57bf2592",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10750a8e-c456-429f-bf4b-ac3a22268905",
              "parent_uuid": "a62191f1-875b-4c8c-a154-7dec560799ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4513c2d1-24c2-4131-8ca6-7c26dfbe8eca",
                  "parent_uuid": "10750a8e-c456-429f-bf4b-ac3a22268905",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b14b2126-91a3-4d23-a306-55d1ec411390",
              "parent_uuid": "a62191f1-875b-4c8c-a154-7dec560799ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eede9af3-584a-4e9c-a0c4-16f4407cb78e",
                  "parent_uuid": "b14b2126-91a3-4d23-a306-55d1ec411390",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed9ed100-32a1-4a76-a2cd-47d7c80526dc",
              "parent_uuid": "a62191f1-875b-4c8c-a154-7dec560799ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b79ea86c-7b08-42b9-ad10-b2cd6c5e2c6b",
                  "parent_uuid": "ed9ed100-32a1-4a76-a2cd-47d7c80526dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b00a691-64d1-4638-b492-d558be9507fe",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf274999-bb7b-4d1f-8992-fd8874133252",
              "parent_uuid": "0b00a691-64d1-4638-b492-d558be9507fe",
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
              "uuid": "2daeb1de-a15c-4ee0-88c4-c4ea53f483d0",
              "parent_uuid": "0b00a691-64d1-4638-b492-d558be9507fe",
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
              "uuid": "a406c652-0093-49ea-8ae6-0f1e4b352bd8",
              "parent_uuid": "0b00a691-64d1-4638-b492-d558be9507fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95374a28-ee9c-467a-9aa3-2ee672fb3d9b",
                  "parent_uuid": "a406c652-0093-49ea-8ae6-0f1e4b352bd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "816add8a-905d-44eb-a575-fe6bb2f8b868",
              "parent_uuid": "0b00a691-64d1-4638-b492-d558be9507fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7aa742c-5adf-4f4b-809e-cbc39c6ab64e",
                  "parent_uuid": "816add8a-905d-44eb-a575-fe6bb2f8b868",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff2620ce-d5a5-452e-8062-17b3700f430d",
              "parent_uuid": "0b00a691-64d1-4638-b492-d558be9507fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9335d65-1881-453b-a775-4ced1e9d85f8",
                  "parent_uuid": "ff2620ce-d5a5-452e-8062-17b3700f430d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da899a56-410d-4923-afbf-474c881a4c02",
              "parent_uuid": "0b00a691-64d1-4638-b492-d558be9507fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7bea680-1153-4d8b-b8c5-6c682e1ceb4e",
                  "parent_uuid": "da899a56-410d-4923-afbf-474c881a4c02",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ecd743c-0c7b-418d-844f-da753a7bc47e",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b0f0a140-7188-4841-8bf1-7e74d9a6d79a",
              "parent_uuid": "4ecd743c-0c7b-418d-844f-da753a7bc47e",
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
              "uuid": "7f51cce1-2f37-4691-85a7-3d69f0c70315",
              "parent_uuid": "4ecd743c-0c7b-418d-844f-da753a7bc47e",
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
              "uuid": "84a25f37-c4a0-44fa-b867-787158cb7eb8",
              "parent_uuid": "4ecd743c-0c7b-418d-844f-da753a7bc47e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97a3271c-cfda-4f14-a54a-e1db61990994",
                  "parent_uuid": "84a25f37-c4a0-44fa-b867-787158cb7eb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37fe3ed3-5cee-41e5-969c-140242ed046c",
              "parent_uuid": "4ecd743c-0c7b-418d-844f-da753a7bc47e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56df5594-2826-4a33-adef-fe7f5ca73b6b",
                  "parent_uuid": "37fe3ed3-5cee-41e5-969c-140242ed046c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "940e8fb3-f6a8-4313-8925-1b44d810a59d",
              "parent_uuid": "4ecd743c-0c7b-418d-844f-da753a7bc47e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d7b4604-6ece-4041-b7a5-58968e4a21a8",
                  "parent_uuid": "940e8fb3-f6a8-4313-8925-1b44d810a59d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2830061d-ee30-4a3e-b2e3-36ae52928367",
              "parent_uuid": "4ecd743c-0c7b-418d-844f-da753a7bc47e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21bb0157-d1a1-4cc7-ab19-1375c51dbc37",
                  "parent_uuid": "2830061d-ee30-4a3e-b2e3-36ae52928367",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4470fd28-e8bb-4c4a-a29e-2a39f3ba2d3d",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1df912f-294a-4a92-a909-f1844860d21b",
              "parent_uuid": "4470fd28-e8bb-4c4a-a29e-2a39f3ba2d3d",
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
          "uuid": "a2e861b3-2036-4000-8da4-ac1afb6e9b3d",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "084d3f4e-ebc2-4d13-891d-90ff0ab8bbe9",
              "parent_uuid": "a2e861b3-2036-4000-8da4-ac1afb6e9b3d",
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
          "uuid": "0b717da9-3c11-4912-813d-6dad12afa8c3",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2bacbaa7-3795-413a-96d4-3f913fe9d324",
              "parent_uuid": "0b717da9-3c11-4912-813d-6dad12afa8c3",
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
                  "uuid": "e0ad18e8-ed39-4fc5-ba3b-74e46b972ecd",
                  "parent_uuid": "2bacbaa7-3795-413a-96d4-3f913fe9d324",
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
          "uuid": "9ce373d1-d97d-46eb-a16d-3e6db68d3dfd",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "515a046e-726c-4499-b37d-75a2452fc8c4",
              "parent_uuid": "9ce373d1-d97d-46eb-a16d-3e6db68d3dfd",
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
          "uuid": "8f08469b-ce0a-4708-860a-e64a38400f5c",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "80182a2f-fe7d-41b4-9536-070549d17a14",
              "parent_uuid": "8f08469b-ce0a-4708-860a-e64a38400f5c",
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
          "uuid": "453a31d9-da04-418c-8dd5-c3de85c2fe41",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13886e9a-5be5-470e-a32f-60ba7849a849",
              "parent_uuid": "453a31d9-da04-418c-8dd5-c3de85c2fe41",
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
              "uuid": "a0c41cd9-fcfd-43ec-8f57-700c62be71c1",
              "parent_uuid": "453a31d9-da04-418c-8dd5-c3de85c2fe41",
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
              "uuid": "d878359f-0c9a-4357-b82e-1fec62d0cc87",
              "parent_uuid": "453a31d9-da04-418c-8dd5-c3de85c2fe41",
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
              "uuid": "9936ff4a-c78f-4a7e-886a-ed8e5a486654",
              "parent_uuid": "453a31d9-da04-418c-8dd5-c3de85c2fe41",
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
              "uuid": "cac63a42-39aa-428e-8451-d6a5a692579f",
              "parent_uuid": "453a31d9-da04-418c-8dd5-c3de85c2fe41",
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
          "uuid": "b3725998-c95a-47fe-83e5-f39fea9a51a2",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1f48ddb2-c66a-4768-8f0d-8fd7cb9d6a8f",
              "parent_uuid": "b3725998-c95a-47fe-83e5-f39fea9a51a2",
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
              "uuid": "12d6d624-a285-453f-8469-4f376cdebdab",
              "parent_uuid": "b3725998-c95a-47fe-83e5-f39fea9a51a2",
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
              "uuid": "9b5858da-3b6a-4c46-b7f5-95c18a648eea",
              "parent_uuid": "b3725998-c95a-47fe-83e5-f39fea9a51a2",
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
              "uuid": "e3c391f2-f8b7-4cc7-816e-fcad7f5ab1a2",
              "parent_uuid": "b3725998-c95a-47fe-83e5-f39fea9a51a2",
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
              "uuid": "0e7c5856-4172-43f9-bb07-5c754ea3d4f0",
              "parent_uuid": "b3725998-c95a-47fe-83e5-f39fea9a51a2",
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
          "uuid": "8d7970fd-e446-4d0a-b1b7-07c7d57a9232",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8272d1a9-fd31-487b-b615-ea693a1593ff",
              "parent_uuid": "8d7970fd-e446-4d0a-b1b7-07c7d57a9232",
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
              "uuid": "431633a1-c0c4-45ff-b1ba-c6f6330f44eb",
              "parent_uuid": "8d7970fd-e446-4d0a-b1b7-07c7d57a9232",
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
              "uuid": "732473ef-8917-4471-9867-8a12bda4fd68",
              "parent_uuid": "8d7970fd-e446-4d0a-b1b7-07c7d57a9232",
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
              "uuid": "12075e44-f03f-41a8-820e-c4f3b55d87d5",
              "parent_uuid": "8d7970fd-e446-4d0a-b1b7-07c7d57a9232",
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
              "uuid": "b68ac497-4d0f-4fd3-996c-703232b1f1f1",
              "parent_uuid": "8d7970fd-e446-4d0a-b1b7-07c7d57a9232",
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
          "uuid": "5d21fdc8-d2b8-424a-96d1-c31d0d336d22",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1fea4c54-dde5-4f2f-b2d6-fc7419c34cac",
              "parent_uuid": "5d21fdc8-d2b8-424a-96d1-c31d0d336d22",
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
              "uuid": "2f7f0d05-e85d-499c-b137-cc56b5829a1d",
              "parent_uuid": "5d21fdc8-d2b8-424a-96d1-c31d0d336d22",
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
              "uuid": "9d47f1a6-7f66-43f2-a031-d9f60ccefc3e",
              "parent_uuid": "5d21fdc8-d2b8-424a-96d1-c31d0d336d22",
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
              "uuid": "ab724ffd-8d3b-462c-8cc5-d46e20c50406",
              "parent_uuid": "5d21fdc8-d2b8-424a-96d1-c31d0d336d22",
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
              "uuid": "3fd846c8-3e0e-419c-a099-76c346100cc2",
              "parent_uuid": "5d21fdc8-d2b8-424a-96d1-c31d0d336d22",
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
          "uuid": "0fad9802-0a0f-446c-b8cb-14a825c80c2b",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2299e6e-d172-4587-8049-e798064ca95c",
              "parent_uuid": "0fad9802-0a0f-446c-b8cb-14a825c80c2b",
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
              "uuid": "3929419c-5558-4c50-bb59-7e2fbe98e610",
              "parent_uuid": "0fad9802-0a0f-446c-b8cb-14a825c80c2b",
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
              "uuid": "a47d6c81-23e6-4239-9ca0-c4ef87479547",
              "parent_uuid": "0fad9802-0a0f-446c-b8cb-14a825c80c2b",
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
              "uuid": "54a913d9-0285-4af6-8913-366c3280e4cb",
              "parent_uuid": "0fad9802-0a0f-446c-b8cb-14a825c80c2b",
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
              "uuid": "f70d5324-4a72-4d88-9000-d57e0fcd162c",
              "parent_uuid": "0fad9802-0a0f-446c-b8cb-14a825c80c2b",
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
          "uuid": "4f865472-4944-4fd7-8364-42283e46a083",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fec2dc8-790e-49aa-97d6-5766a268ee5d",
              "parent_uuid": "4f865472-4944-4fd7-8364-42283e46a083",
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
              "uuid": "c02e51b2-3769-4bd3-90a5-81357e0fcae9",
              "parent_uuid": "4f865472-4944-4fd7-8364-42283e46a083",
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
              "uuid": "b4fad3c6-6d8f-4599-b88f-d03eba330346",
              "parent_uuid": "4f865472-4944-4fd7-8364-42283e46a083",
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
              "uuid": "00b5d5ee-0d3e-4363-84d5-f7abc7d04275",
              "parent_uuid": "4f865472-4944-4fd7-8364-42283e46a083",
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
              "uuid": "605278ee-b146-4f05-bbea-8454307c26a8",
              "parent_uuid": "4f865472-4944-4fd7-8364-42283e46a083",
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
          "uuid": "3bc8b042-e5a7-46a9-89c8-12c42ee821c9",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f70b47ac-55dc-4ed3-86f8-61f643d8352b",
              "parent_uuid": "3bc8b042-e5a7-46a9-89c8-12c42ee821c9",
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
              "uuid": "53271b9d-e218-4d53-9541-dbdbf7d5d0fb",
              "parent_uuid": "3bc8b042-e5a7-46a9-89c8-12c42ee821c9",
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
              "uuid": "81126533-4859-4c02-8ba4-7a090d0d3ab1",
              "parent_uuid": "3bc8b042-e5a7-46a9-89c8-12c42ee821c9",
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
              "uuid": "d26c3326-a876-4304-80cb-7d1acd6878f8",
              "parent_uuid": "3bc8b042-e5a7-46a9-89c8-12c42ee821c9",
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
              "uuid": "955dc173-ed1d-44b4-a68b-21a11e6a558e",
              "parent_uuid": "3bc8b042-e5a7-46a9-89c8-12c42ee821c9",
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
          "uuid": "949cef27-f175-4e06-9781-f6c8fb3b2ca8",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb05cfce-a932-4e63-bdc4-2810c9578108",
              "parent_uuid": "949cef27-f175-4e06-9781-f6c8fb3b2ca8",
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
              "uuid": "dfbe14f9-c288-4ea4-99ec-8cdc8143ba91",
              "parent_uuid": "949cef27-f175-4e06-9781-f6c8fb3b2ca8",
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
              "uuid": "a37e7447-ba1c-45ce-89b6-0ece80541590",
              "parent_uuid": "949cef27-f175-4e06-9781-f6c8fb3b2ca8",
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
              "uuid": "7f08090f-aa0f-4f26-a35f-71354eb22c72",
              "parent_uuid": "949cef27-f175-4e06-9781-f6c8fb3b2ca8",
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
              "uuid": "8e2a2f65-a8d9-47e5-a05d-4dfb2842090c",
              "parent_uuid": "949cef27-f175-4e06-9781-f6c8fb3b2ca8",
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
          "uuid": "5ece9bd0-65a0-4e21-9c34-f46d3e6840a1",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba5e5ecb-d8e2-441e-9407-1834017d55b7",
              "parent_uuid": "5ece9bd0-65a0-4e21-9c34-f46d3e6840a1",
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
              "uuid": "2f41aef7-1719-49f5-86ce-8a3d2a0e8971",
              "parent_uuid": "5ece9bd0-65a0-4e21-9c34-f46d3e6840a1",
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
              "uuid": "e599ed49-f40d-4646-92ae-a4c0decbe903",
              "parent_uuid": "5ece9bd0-65a0-4e21-9c34-f46d3e6840a1",
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
              "uuid": "7bc421f1-ec13-4d90-b2a8-26b9f66a9715",
              "parent_uuid": "5ece9bd0-65a0-4e21-9c34-f46d3e6840a1",
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
              "uuid": "8a7c64c9-66a8-47f0-89a4-fd62e7b6ad5c",
              "parent_uuid": "5ece9bd0-65a0-4e21-9c34-f46d3e6840a1",
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
          "uuid": "45affe69-7cf1-4f13-a5b9-25534165b188",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "269b2414-ee89-448a-ba9c-5924996383d2",
              "parent_uuid": "45affe69-7cf1-4f13-a5b9-25534165b188",
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
              "uuid": "f1110ae8-7a5b-4367-9177-e22d0cb9ec00",
              "parent_uuid": "45affe69-7cf1-4f13-a5b9-25534165b188",
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
              "uuid": "b5bb8016-601e-4266-ac94-977cd0e828fb",
              "parent_uuid": "45affe69-7cf1-4f13-a5b9-25534165b188",
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
              "uuid": "dbd73cec-cd97-435a-84da-4e7d3b6cdef9",
              "parent_uuid": "45affe69-7cf1-4f13-a5b9-25534165b188",
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
              "uuid": "1cebd91e-9a29-4c0c-a4af-5ae0d18dd556",
              "parent_uuid": "45affe69-7cf1-4f13-a5b9-25534165b188",
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
          "uuid": "1eb2399d-1401-49ec-90dd-9f56e52be49e",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "92eb8e43-834f-4ca3-9e10-3a6f9c2f6ea1",
              "parent_uuid": "1eb2399d-1401-49ec-90dd-9f56e52be49e",
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
              "uuid": "8eb33948-feb3-48ac-83d1-e0c5691a5f19",
              "parent_uuid": "1eb2399d-1401-49ec-90dd-9f56e52be49e",
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
              "uuid": "9782b8b4-ccb4-4f44-abca-359d2f593da7",
              "parent_uuid": "1eb2399d-1401-49ec-90dd-9f56e52be49e",
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
              "uuid": "345c6c4c-583d-40a2-ba8a-53fffe726b42",
              "parent_uuid": "1eb2399d-1401-49ec-90dd-9f56e52be49e",
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
              "uuid": "b41f109e-1e09-4d59-ad99-e1a0d566242a",
              "parent_uuid": "1eb2399d-1401-49ec-90dd-9f56e52be49e",
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
          "uuid": "6910a6de-67be-429d-82b8-e49150ae1f5d",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "17a43be0-944c-4284-b2b0-1fc013ceccb2",
              "parent_uuid": "6910a6de-67be-429d-82b8-e49150ae1f5d",
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
              "uuid": "73a7fed8-a8cf-46b6-9b54-5fb0d458d498",
              "parent_uuid": "6910a6de-67be-429d-82b8-e49150ae1f5d",
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
              "uuid": "c326583a-75d9-4b5e-b1c5-fb71962fbaf1",
              "parent_uuid": "6910a6de-67be-429d-82b8-e49150ae1f5d",
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
              "uuid": "fe06d3d2-ba2d-4154-a605-515a6c896885",
              "parent_uuid": "6910a6de-67be-429d-82b8-e49150ae1f5d",
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
              "uuid": "6fbaa651-87a2-4073-a8ce-5f7d8a951d7f",
              "parent_uuid": "6910a6de-67be-429d-82b8-e49150ae1f5d",
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
          "uuid": "0d696f22-20d9-43fc-9623-50341dcc8932",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4eb1682c-e86b-4bc6-985b-b017a671f365",
              "parent_uuid": "0d696f22-20d9-43fc-9623-50341dcc8932",
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
              "uuid": "67a68d58-6271-4f4b-8eba-5a61cea9cd61",
              "parent_uuid": "0d696f22-20d9-43fc-9623-50341dcc8932",
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
              "uuid": "3085b4b0-82f0-48d2-b51b-3a33a6b6c37d",
              "parent_uuid": "0d696f22-20d9-43fc-9623-50341dcc8932",
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
              "uuid": "f740f1bf-93c9-4881-a619-263b8dcbc702",
              "parent_uuid": "0d696f22-20d9-43fc-9623-50341dcc8932",
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
              "uuid": "e90d97ee-cec5-48da-b46e-ce7af59b89c7",
              "parent_uuid": "0d696f22-20d9-43fc-9623-50341dcc8932",
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
          "uuid": "f4df0ac3-9fb0-4fe6-9b88-06c5f961fb33",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7b8d5b6-a534-431e-99a3-d358049c1e86",
              "parent_uuid": "f4df0ac3-9fb0-4fe6-9b88-06c5f961fb33",
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
          "uuid": "31292301-636d-4560-9f4e-b344d2820c81",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28418367-da75-41eb-b7b7-6721d9fcb2a0",
              "parent_uuid": "31292301-636d-4560-9f4e-b344d2820c81",
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
          "uuid": "609d985a-bf50-4b9c-9638-50fadd0ac7ca",
          "parent_uuid": "ce9260b8-4adc-4465-98f7-1e6eb0ea8d4c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f994cce-2d61-444f-8b5b-170ea0bc9107",
              "parent_uuid": "609d985a-bf50-4b9c-9638-50fadd0ac7ca",
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
                  "uuid": "7cb20119-e43f-4136-a4ee-f85e2973ea39",
                  "parent_uuid": "0f994cce-2d61-444f-8b5b-170ea0bc9107",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 


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
  "uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "176a2ac1-4541-4185-8fe3-2a3e2ad1931f",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "109412d1-5be0-418c-805f-dda8d8cf3f2f",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "a091df60-5f08-4cba-a230-a8a50ea459ec",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "4d629f46-2a05-4e06-bb92-997c98ef41e9",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "2dfb8a90-d424-4036-a202-4f766d3f189b",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "719060f2-34a8-48c7-8aae-722e191908ab",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "d800363d-b21d-4ba0-9033-3ba1e984f674",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
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
      "uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
      "parent_uuid": "20a37b98-346b-41a4-adff-22822c7dbc63",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "533319e2-cf86-44b6-b471-c825ced925aa",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "660b1471-85fa-404a-9cb4-01bc710dd286",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "76060bbc-d87f-4988-91cb-3af512d78deb",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "1e99f293-8c18-4daa-a619-d219f750037e",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "22ea518c-c462-4e50-83f9-98ff2f397881",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "fece6486-7646-4319-9620-ee6a20242117",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "7d6b8a45-417b-4ed0-be45-1eedeac62efd",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "849f35db-4e57-4f40-b4ac-a4386532c473",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "abbbebf1-167f-49da-b528-a52e4e21e349",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "b50d4dbb-59e8-49e4-bece-f67bde1149f6",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
              "uuid": "c6ea9d42-2f13-4e4d-adfe-e00162c78801",
              "parent_uuid": "b0205dd8-db05-45d1-b6c7-bbc598e299f0",
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
          "uuid": "a58d6825-c05a-49a8-bdd6-88915d252cf2",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "29ec9852-4fab-405f-b9cb-ebb6f906b3df",
              "parent_uuid": "a58d6825-c05a-49a8-bdd6-88915d252cf2",
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
              "uuid": "69711d0b-c161-44ee-a4f1-d618a6e96117",
              "parent_uuid": "a58d6825-c05a-49a8-bdd6-88915d252cf2",
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
              "uuid": "4e161a10-5fb1-41d2-9f96-ebd3450924b6",
              "parent_uuid": "a58d6825-c05a-49a8-bdd6-88915d252cf2",
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
              "uuid": "e38a6431-5455-4127-b51b-d16c734e12a4",
              "parent_uuid": "a58d6825-c05a-49a8-bdd6-88915d252cf2",
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
          "uuid": "bad891b2-203e-45b1-b0a0-95dcace0fb41",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06907cc5-d81d-4310-856d-7f579ba35d78",
              "parent_uuid": "bad891b2-203e-45b1-b0a0-95dcace0fb41",
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
              "uuid": "c68a8bb2-e008-4b5a-ae3c-b2046c55697f",
              "parent_uuid": "bad891b2-203e-45b1-b0a0-95dcace0fb41",
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
              "uuid": "49acde6f-3e54-4b1a-8c7e-d11e5d9a6d14",
              "parent_uuid": "bad891b2-203e-45b1-b0a0-95dcace0fb41",
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
              "uuid": "dfeff9e1-6465-4954-9b61-1a137f67ad98",
              "parent_uuid": "bad891b2-203e-45b1-b0a0-95dcace0fb41",
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
              "uuid": "e0a14736-cc75-4ccc-b621-b7cf9a44e951",
              "parent_uuid": "bad891b2-203e-45b1-b0a0-95dcace0fb41",
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
              "uuid": "7eba2083-e830-41c2-bf39-07c776e54670",
              "parent_uuid": "bad891b2-203e-45b1-b0a0-95dcace0fb41",
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
          "uuid": "ebe92599-55ce-4b4d-b483-c41cba463c72",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4c6946a7-2567-4c5d-8554-233d6bff8077",
              "parent_uuid": "ebe92599-55ce-4b4d-b483-c41cba463c72",
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
          "uuid": "53144d5d-8a86-4b08-8197-5402f8d768de",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "926fff71-903a-45e1-a649-ee3be1a978d6",
              "parent_uuid": "53144d5d-8a86-4b08-8197-5402f8d768de",
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
              "uuid": "e6b8bb87-fb9b-4047-a7e8-21cbbef3fada",
              "parent_uuid": "53144d5d-8a86-4b08-8197-5402f8d768de",
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
              "uuid": "6f08b856-5715-4fd5-9520-0ae29e687d40",
              "parent_uuid": "53144d5d-8a86-4b08-8197-5402f8d768de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a689415e-bcac-4306-81ff-3923af8ced23",
                  "parent_uuid": "6f08b856-5715-4fd5-9520-0ae29e687d40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c99d2d74-3f1e-47f9-9f58-a4b06bfb3eb6",
              "parent_uuid": "53144d5d-8a86-4b08-8197-5402f8d768de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1a18a2c4-eed7-483b-be3d-c583ca25bbba",
                  "parent_uuid": "c99d2d74-3f1e-47f9-9f58-a4b06bfb3eb6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7bf1cf2-0f44-4f11-93ca-1b59cb71dc5f",
              "parent_uuid": "53144d5d-8a86-4b08-8197-5402f8d768de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f46fe361-1d6d-44e3-9768-0c1ea3e83af9",
                  "parent_uuid": "d7bf1cf2-0f44-4f11-93ca-1b59cb71dc5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66443e4e-c33b-4634-9a58-562c7977e3a3",
              "parent_uuid": "53144d5d-8a86-4b08-8197-5402f8d768de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e5818aa1-f745-424c-b1b2-ec0a5b3c5b3c",
                  "parent_uuid": "66443e4e-c33b-4634-9a58-562c7977e3a3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c33300cd-9ff9-4143-8841-0e271fb24fd5",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b388c3e9-70a7-4f0c-bf7e-6adb21f1f248",
              "parent_uuid": "c33300cd-9ff9-4143-8841-0e271fb24fd5",
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
              "uuid": "dab45411-edd2-4d6b-b3d1-72482740765b",
              "parent_uuid": "c33300cd-9ff9-4143-8841-0e271fb24fd5",
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
              "uuid": "58ee530c-0523-4269-a799-e8bceb91d52f",
              "parent_uuid": "c33300cd-9ff9-4143-8841-0e271fb24fd5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f4a5336d-0910-43b0-b9e3-9bc66f8ae3c6",
                  "parent_uuid": "58ee530c-0523-4269-a799-e8bceb91d52f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b21df0b-159a-458c-b53e-efa9c3263fac",
              "parent_uuid": "c33300cd-9ff9-4143-8841-0e271fb24fd5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e38f4779-f22f-4033-867b-72bd8050464b",
                  "parent_uuid": "6b21df0b-159a-458c-b53e-efa9c3263fac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b457aed-d532-4904-9058-91481e9c73f5",
              "parent_uuid": "c33300cd-9ff9-4143-8841-0e271fb24fd5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "001fad54-fe38-4832-860a-6fe16e655cbe",
                  "parent_uuid": "6b457aed-d532-4904-9058-91481e9c73f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b10fa93-d08b-4bb4-b6e9-adc4522886d5",
              "parent_uuid": "c33300cd-9ff9-4143-8841-0e271fb24fd5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2870d3b8-3575-45b8-a9e7-1890b9dee721",
                  "parent_uuid": "5b10fa93-d08b-4bb4-b6e9-adc4522886d5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8857bbda-19f0-4f02-9e3d-e67ce359698c",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "557b96c8-4017-47c1-93dd-588a7c0a48c2",
              "parent_uuid": "8857bbda-19f0-4f02-9e3d-e67ce359698c",
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
              "uuid": "bf67b011-f1a0-4e07-8ae4-26844d44e6dd",
              "parent_uuid": "8857bbda-19f0-4f02-9e3d-e67ce359698c",
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
              "uuid": "61053b64-4d2a-41ff-bc43-be2bacbe339b",
              "parent_uuid": "8857bbda-19f0-4f02-9e3d-e67ce359698c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "25c79c7b-4451-4aa7-ba1d-9aac9223eb22",
                  "parent_uuid": "61053b64-4d2a-41ff-bc43-be2bacbe339b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b48eb552-f532-484e-9a8e-7fb6b04a4003",
              "parent_uuid": "8857bbda-19f0-4f02-9e3d-e67ce359698c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7d5e21c7-017e-4e17-874a-2f7cd81774cb",
                  "parent_uuid": "b48eb552-f532-484e-9a8e-7fb6b04a4003",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f30bb98-5aba-4609-89c3-6691fb9a41ed",
              "parent_uuid": "8857bbda-19f0-4f02-9e3d-e67ce359698c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d13e1e0e-f0be-470b-88d8-2e94c4296eb6",
                  "parent_uuid": "3f30bb98-5aba-4609-89c3-6691fb9a41ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8711294-73d5-4afa-9985-d214206553fe",
              "parent_uuid": "8857bbda-19f0-4f02-9e3d-e67ce359698c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c8398363-be83-4096-837c-d9cb02446b12",
                  "parent_uuid": "f8711294-73d5-4afa-9985-d214206553fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e4b862df-d36d-429c-8e78-34a16aee9ec8",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b5a5aa6-bc07-43df-8f1c-60a89a638a5f",
              "parent_uuid": "e4b862df-d36d-429c-8e78-34a16aee9ec8",
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
              "uuid": "578c595b-a14a-4407-b77b-48de33714879",
              "parent_uuid": "e4b862df-d36d-429c-8e78-34a16aee9ec8",
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
              "uuid": "ab84ee60-bd15-4c6f-92ce-c555a827e2df",
              "parent_uuid": "e4b862df-d36d-429c-8e78-34a16aee9ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c71a8a1f-5d99-40eb-be43-d72d4a393d5a",
                  "parent_uuid": "ab84ee60-bd15-4c6f-92ce-c555a827e2df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5d7e528-2a52-4c9e-8c63-e45f658e5d16",
              "parent_uuid": "e4b862df-d36d-429c-8e78-34a16aee9ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4ddf88fc-4b1e-4e30-8f8b-8f66bedae322",
                  "parent_uuid": "c5d7e528-2a52-4c9e-8c63-e45f658e5d16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de1ff83e-791c-45a4-a92f-ac02d4620a60",
              "parent_uuid": "e4b862df-d36d-429c-8e78-34a16aee9ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7805e6a0-3e56-4b43-ade9-5a198b3151a7",
                  "parent_uuid": "de1ff83e-791c-45a4-a92f-ac02d4620a60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "186a31d2-422c-4d71-b953-2919297edb22",
              "parent_uuid": "e4b862df-d36d-429c-8e78-34a16aee9ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "91684d34-a555-439a-a79a-a06b12cdfe74",
                  "parent_uuid": "186a31d2-422c-4d71-b953-2919297edb22",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "207bb96c-e3b3-43ef-8cb8-71d3885e34ad",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9430522f-fdd2-47b3-b855-e1910fb42aef",
              "parent_uuid": "207bb96c-e3b3-43ef-8cb8-71d3885e34ad",
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
              "uuid": "677e3b24-2a11-4c52-84ff-b950a0a7138e",
              "parent_uuid": "207bb96c-e3b3-43ef-8cb8-71d3885e34ad",
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
              "uuid": "004b26cf-3521-4853-b16b-718d2b41ce58",
              "parent_uuid": "207bb96c-e3b3-43ef-8cb8-71d3885e34ad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6eedf0ef-e70c-4b03-a7b7-97f54f513719",
                  "parent_uuid": "004b26cf-3521-4853-b16b-718d2b41ce58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df411ad1-88d2-42a5-8c63-4f44863f8f3d",
              "parent_uuid": "207bb96c-e3b3-43ef-8cb8-71d3885e34ad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "31186ecc-ebfa-4965-893b-3558081ae458",
                  "parent_uuid": "df411ad1-88d2-42a5-8c63-4f44863f8f3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06ba7579-7d69-4afa-bcf3-ec010c257bd2",
              "parent_uuid": "207bb96c-e3b3-43ef-8cb8-71d3885e34ad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9bf947a-f781-4288-9f95-e7dcc3c6982d",
                  "parent_uuid": "06ba7579-7d69-4afa-bcf3-ec010c257bd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebdf51f8-4a46-4f60-a50d-4bbfc3fc1629",
              "parent_uuid": "207bb96c-e3b3-43ef-8cb8-71d3885e34ad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "afb357b6-ea1b-4bb8-8c4f-b59ab4029a11",
                  "parent_uuid": "ebdf51f8-4a46-4f60-a50d-4bbfc3fc1629",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "996f6ac1-190f-44c4-aa7a-229721d95f34",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5997b8a2-17b0-4810-89ae-b078e8f078a5",
              "parent_uuid": "996f6ac1-190f-44c4-aa7a-229721d95f34",
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
              "uuid": "22722deb-79e6-4a37-89a6-29b9a5c4ee38",
              "parent_uuid": "996f6ac1-190f-44c4-aa7a-229721d95f34",
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
              "uuid": "c6855bca-22f0-4261-b30f-d66dab3bf993",
              "parent_uuid": "996f6ac1-190f-44c4-aa7a-229721d95f34",
              "tagName": "td",
              "properties": [
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
                  "uuid": "736b7747-500a-4724-8453-2679ba67e1ea",
                  "parent_uuid": "c6855bca-22f0-4261-b30f-d66dab3bf993",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ec61b2a-32ef-4eac-ba64-bef19383e835",
              "parent_uuid": "996f6ac1-190f-44c4-aa7a-229721d95f34",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b61edb9-e14c-43e7-9f05-33d539165e43",
                  "parent_uuid": "5ec61b2a-32ef-4eac-ba64-bef19383e835",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39ea2e88-bb65-4d28-8b88-1d1b71343115",
              "parent_uuid": "996f6ac1-190f-44c4-aa7a-229721d95f34",
              "tagName": "td",
              "properties": [
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
                  "uuid": "29f97831-7760-42e9-9556-ce8755790931",
                  "parent_uuid": "39ea2e88-bb65-4d28-8b88-1d1b71343115",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9df1a7b-f8e2-40d2-99e4-51f89899924e",
              "parent_uuid": "996f6ac1-190f-44c4-aa7a-229721d95f34",
              "tagName": "td",
              "properties": [
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
                  "uuid": "64e974e6-be83-4dc6-82f1-8798e786cf16",
                  "parent_uuid": "e9df1a7b-f8e2-40d2-99e4-51f89899924e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ad8970d-5bb5-4060-9007-7271d2707ad3",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ebf59caf-87f3-4980-9bf1-d527c10be656",
              "parent_uuid": "1ad8970d-5bb5-4060-9007-7271d2707ad3",
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
              "uuid": "7208c01a-d714-4761-b430-efc8c90cd55e",
              "parent_uuid": "1ad8970d-5bb5-4060-9007-7271d2707ad3",
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
              "uuid": "6841cc16-f203-4b60-9306-fb8f8f9ef4ef",
              "parent_uuid": "1ad8970d-5bb5-4060-9007-7271d2707ad3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9ed6267d-66ec-4b93-8c5e-c440a99d989f",
                  "parent_uuid": "6841cc16-f203-4b60-9306-fb8f8f9ef4ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55cf78b6-655a-41f1-837f-0c7b15de3df2",
              "parent_uuid": "1ad8970d-5bb5-4060-9007-7271d2707ad3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f4df264b-4161-4dfc-8467-1f43cb98fc6c",
                  "parent_uuid": "55cf78b6-655a-41f1-837f-0c7b15de3df2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03d427c8-037a-4729-94f7-5eead317b815",
              "parent_uuid": "1ad8970d-5bb5-4060-9007-7271d2707ad3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "93959fb0-c1d9-45bb-a7b2-2147036b791b",
                  "parent_uuid": "03d427c8-037a-4729-94f7-5eead317b815",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dcc33c2-e245-4260-a056-065f1c528d8b",
              "parent_uuid": "1ad8970d-5bb5-4060-9007-7271d2707ad3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "68f5f096-6191-4de6-aea6-6837f7344902",
                  "parent_uuid": "0dcc33c2-e245-4260-a056-065f1c528d8b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "08a442de-2418-4f11-b9cf-6045d03f002a",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f001e72d-8118-469b-8176-8608c30d626b",
              "parent_uuid": "08a442de-2418-4f11-b9cf-6045d03f002a",
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
              "uuid": "1796d88f-47d5-4b6f-b5bb-c14b12083e04",
              "parent_uuid": "08a442de-2418-4f11-b9cf-6045d03f002a",
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
              "uuid": "f8185a23-a7f8-4c93-a2b0-c0cb1f925caa",
              "parent_uuid": "08a442de-2418-4f11-b9cf-6045d03f002a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a623d4c1-3273-43e8-a96a-a58ba428bb96",
                  "parent_uuid": "f8185a23-a7f8-4c93-a2b0-c0cb1f925caa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3ed471b-767e-4067-88e5-4414a2577b32",
              "parent_uuid": "08a442de-2418-4f11-b9cf-6045d03f002a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "25545b53-b403-4952-ad2f-be0ce57656bb",
                  "parent_uuid": "e3ed471b-767e-4067-88e5-4414a2577b32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cddd16b-a546-452c-90b5-e3ccee733f0f",
              "parent_uuid": "08a442de-2418-4f11-b9cf-6045d03f002a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5b260996-5532-44fb-b6ca-b1f00b446315",
                  "parent_uuid": "3cddd16b-a546-452c-90b5-e3ccee733f0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efb1b5bf-bbfe-4285-b681-b43a98036e75",
              "parent_uuid": "08a442de-2418-4f11-b9cf-6045d03f002a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "41eb528d-c6b2-4710-8fb4-93e74ba01dba",
                  "parent_uuid": "efb1b5bf-bbfe-4285-b681-b43a98036e75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e695a6c6-d2ae-46c8-987c-e0be615f1f50",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f9534cba-6fbd-4b70-9ff0-eb4dac4b0dfa",
              "parent_uuid": "e695a6c6-d2ae-46c8-987c-e0be615f1f50",
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
          "uuid": "833ecf67-2b60-4702-9d14-5da74989187c",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efd12378-e00a-402b-a43f-a638558a7784",
              "parent_uuid": "833ecf67-2b60-4702-9d14-5da74989187c",
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
              "uuid": "f96bab62-ecf9-49e6-b854-fc3024b1fefb",
              "parent_uuid": "833ecf67-2b60-4702-9d14-5da74989187c",
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
              "uuid": "64183ce4-43a6-42b0-b6f3-a68cde5ba8ac",
              "parent_uuid": "833ecf67-2b60-4702-9d14-5da74989187c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0f43b1b1-7818-477d-9e50-01aaa15d854f",
                  "parent_uuid": "64183ce4-43a6-42b0-b6f3-a68cde5ba8ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3008e94f-862e-42cf-a56a-f4d007557fd6",
              "parent_uuid": "833ecf67-2b60-4702-9d14-5da74989187c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2b5722c1-ecac-46d3-8153-550de6cb7032",
                  "parent_uuid": "3008e94f-862e-42cf-a56a-f4d007557fd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "742569c8-779a-4907-843e-57f1925cf317",
              "parent_uuid": "833ecf67-2b60-4702-9d14-5da74989187c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4e2c3a90-54da-4f57-acf5-f002c7cb3a83",
                  "parent_uuid": "742569c8-779a-4907-843e-57f1925cf317",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bb7ec00-f380-4e43-83b1-6fe38c7d5377",
              "parent_uuid": "833ecf67-2b60-4702-9d14-5da74989187c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "54ce2946-f3c0-4fa5-bbd4-666427442077",
                  "parent_uuid": "9bb7ec00-f380-4e43-83b1-6fe38c7d5377",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "20fed0f9-9046-4bde-878b-8c5c3510172d",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68eb82ae-0914-45d2-ae1a-062b21bfb37f",
              "parent_uuid": "20fed0f9-9046-4bde-878b-8c5c3510172d",
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
          "uuid": "6a16888f-8f11-4fef-81dc-d65e3fe25f14",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f028980-0930-4523-ad64-631309032a68",
              "parent_uuid": "6a16888f-8f11-4fef-81dc-d65e3fe25f14",
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
          "uuid": "8645f3bc-0cc8-4b91-8e74-fc1def56ccf9",
          "parent_uuid": "53d38331-2856-4be7-a61a-5fea78c9912a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1aca945a-94c2-4d3a-9a17-9c064127aa87",
              "parent_uuid": "8645f3bc-0cc8-4b91-8e74-fc1def56ccf9",
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
                  "uuid": "5e3a75b2-916d-4297-8c25-876a5d470964",
                  "parent_uuid": "1aca945a-94c2-4d3a-9a17-9c064127aa87",
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


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
  "uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "767ba27d-2c6d-47ee-8910-cbe599a82cca",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "79eb24ca-ea67-4535-a75e-2d775f626aba",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "0adf79fa-405e-4ae6-8420-1910418a88dd",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "ab5032ba-44dd-4eea-9bae-581dcf0df96e",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "012cec8a-b0a6-4084-ac47-1881d2341e98",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "a8b322e8-6f58-4681-a5fb-4b17335301d7",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "f74599e6-2ab8-491b-aac8-abd446f87522",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
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
      "uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
      "parent_uuid": "e5a4f546-659a-49e3-97a9-98d77b5593c9",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d55f3b81-c67e-4405-a933-c45219e73b2b",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "aa86675a-259e-417b-aebc-9acf43a1e560",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "4ae75305-9c38-4aed-88f4-9513800d40dd",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "b663b3fc-570b-46cd-8761-cff3946ec95a",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "0c1eb559-5da0-4fb0-958c-9138116c637e",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "7e8fcb27-7e46-48e0-ac1e-c0282dc848a3",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "52c0acba-f0dc-4561-965e-989c480da6f7",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "b48ed419-3019-4897-8fcd-6f17cad53e7e",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "fad0a63e-cff1-44cb-884e-b94ff21c6ef5",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "44ae080b-efd5-43e9-96f8-115f5edc18ed",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
              "uuid": "5c44687e-b4a1-4d31-9b5d-e6cc205cb699",
              "parent_uuid": "6b599dd7-7029-4589-a25d-be555fd2d808",
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
          "uuid": "2c4f7c61-e4a7-4dee-89c4-e8841efed7f9",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4faa732b-c4a9-4ab0-a5f4-a187ee999fd5",
              "parent_uuid": "2c4f7c61-e4a7-4dee-89c4-e8841efed7f9",
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
              "uuid": "a369e25d-52fc-49b4-be98-570405ed2981",
              "parent_uuid": "2c4f7c61-e4a7-4dee-89c4-e8841efed7f9",
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
              "uuid": "b1e774ab-acac-4902-a56c-64741a8c4682",
              "parent_uuid": "2c4f7c61-e4a7-4dee-89c4-e8841efed7f9",
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
              "uuid": "1aeae7f7-7750-4515-9c7b-5815314ec9ce",
              "parent_uuid": "2c4f7c61-e4a7-4dee-89c4-e8841efed7f9",
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
          "uuid": "8ec3a971-1dda-4287-aa87-4730feb30175",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40659238-69e6-44aa-a03c-8638a5462b66",
              "parent_uuid": "8ec3a971-1dda-4287-aa87-4730feb30175",
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
              "uuid": "e82b0e42-35e6-4062-88f1-434af33dc4d5",
              "parent_uuid": "8ec3a971-1dda-4287-aa87-4730feb30175",
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
              "uuid": "52236736-5711-4389-a4b1-d11dc79b876b",
              "parent_uuid": "8ec3a971-1dda-4287-aa87-4730feb30175",
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
              "uuid": "7eb841c5-7249-4220-b70f-af17efb94344",
              "parent_uuid": "8ec3a971-1dda-4287-aa87-4730feb30175",
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
              "uuid": "9a39864d-268e-44c9-8294-d3e0c7fa3416",
              "parent_uuid": "8ec3a971-1dda-4287-aa87-4730feb30175",
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
              "uuid": "5a57234b-bca3-4bf1-9111-9cdf9f022558",
              "parent_uuid": "8ec3a971-1dda-4287-aa87-4730feb30175",
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
          "uuid": "e44a2488-fb0a-453e-a743-86e214122120",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "188e1849-aa4c-4073-92a3-c4ec8ecd49f4",
              "parent_uuid": "e44a2488-fb0a-453e-a743-86e214122120",
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
          "uuid": "42603105-61bc-45a4-b92c-ba6fe865350d",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91b37d7d-3364-42d9-b355-048b71259d8c",
              "parent_uuid": "42603105-61bc-45a4-b92c-ba6fe865350d",
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
              "uuid": "920b948a-d749-413d-b2be-4cd81521a22b",
              "parent_uuid": "42603105-61bc-45a4-b92c-ba6fe865350d",
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
              "uuid": "4b4d27a9-ea39-4af9-94c6-1db6f32815b0",
              "parent_uuid": "42603105-61bc-45a4-b92c-ba6fe865350d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3a4effb7-00d7-4282-be94-129d2263460a",
                  "parent_uuid": "4b4d27a9-ea39-4af9-94c6-1db6f32815b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30c910d7-b2b6-40da-be09-8be6762f406b",
              "parent_uuid": "42603105-61bc-45a4-b92c-ba6fe865350d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bc94df2a-3dc2-435e-98a9-6c65d961075f",
                  "parent_uuid": "30c910d7-b2b6-40da-be09-8be6762f406b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "189c09fb-cab0-48f1-93e1-1174c651a475",
              "parent_uuid": "42603105-61bc-45a4-b92c-ba6fe865350d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d1d23b21-7b64-4beb-8049-79545470eae7",
                  "parent_uuid": "189c09fb-cab0-48f1-93e1-1174c651a475",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "280f051d-d8de-477e-9c14-d54c30b16450",
              "parent_uuid": "42603105-61bc-45a4-b92c-ba6fe865350d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "df459702-a680-4e2e-a00c-7efec013a47f",
                  "parent_uuid": "280f051d-d8de-477e-9c14-d54c30b16450",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "afccf1b5-174c-4425-ac6d-fbd2733cb382",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0de7e36-9629-4ff4-9f73-f8c9c12683ae",
              "parent_uuid": "afccf1b5-174c-4425-ac6d-fbd2733cb382",
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
              "uuid": "1eb32aff-4814-4ac2-b031-9eaf5f4c6bd3",
              "parent_uuid": "afccf1b5-174c-4425-ac6d-fbd2733cb382",
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
              "uuid": "523a3c9e-e1ad-4492-bf3a-33c2b151cec8",
              "parent_uuid": "afccf1b5-174c-4425-ac6d-fbd2733cb382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9ae5985f-017e-4dde-9ae4-c962497d41c9",
                  "parent_uuid": "523a3c9e-e1ad-4492-bf3a-33c2b151cec8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e51ca0ba-357e-4d8d-8d22-12db9b82fb12",
              "parent_uuid": "afccf1b5-174c-4425-ac6d-fbd2733cb382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "546a6c99-7701-40b1-89fa-02d4e12f2766",
                  "parent_uuid": "e51ca0ba-357e-4d8d-8d22-12db9b82fb12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e6974a5-a9d6-4e4d-9f69-c64ec6fbc822",
              "parent_uuid": "afccf1b5-174c-4425-ac6d-fbd2733cb382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "37c553c1-c767-43f1-9ef5-8c9a4bf48764",
                  "parent_uuid": "7e6974a5-a9d6-4e4d-9f69-c64ec6fbc822",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "518e6484-a2ca-4fce-b100-c510a2b3ec1b",
              "parent_uuid": "afccf1b5-174c-4425-ac6d-fbd2733cb382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "030b244e-c9e1-4c05-aaa0-7f9adb3837f5",
                  "parent_uuid": "518e6484-a2ca-4fce-b100-c510a2b3ec1b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0adeacb0-1b2a-4cc3-9cb3-085c11baa2ed",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ccd72fd1-d312-46c9-80a5-c23ac05cfd84",
              "parent_uuid": "0adeacb0-1b2a-4cc3-9cb3-085c11baa2ed",
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
              "uuid": "b42527b8-5198-4cc1-9091-166b363509af",
              "parent_uuid": "0adeacb0-1b2a-4cc3-9cb3-085c11baa2ed",
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
              "uuid": "90ba81d0-7ef7-46b7-8fc4-897afb7ceec1",
              "parent_uuid": "0adeacb0-1b2a-4cc3-9cb3-085c11baa2ed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c1c2557-bec7-415a-b13e-c4533d5f5062",
                  "parent_uuid": "90ba81d0-7ef7-46b7-8fc4-897afb7ceec1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a036138e-2631-467f-a8d2-b1cf9f6b297b",
              "parent_uuid": "0adeacb0-1b2a-4cc3-9cb3-085c11baa2ed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d250b13f-6bb6-49f7-80f3-70ab5d4a6ec2",
                  "parent_uuid": "a036138e-2631-467f-a8d2-b1cf9f6b297b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6222c304-cebf-4b73-b42b-50b328ec7d6f",
              "parent_uuid": "0adeacb0-1b2a-4cc3-9cb3-085c11baa2ed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dc445f3e-d955-4d9f-aefb-d5ac2d07a1d0",
                  "parent_uuid": "6222c304-cebf-4b73-b42b-50b328ec7d6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e5daef2-ece4-4425-8bc8-a1238ae274d4",
              "parent_uuid": "0adeacb0-1b2a-4cc3-9cb3-085c11baa2ed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "baefe62b-1203-4026-b963-cd745de0f9b3",
                  "parent_uuid": "2e5daef2-ece4-4425-8bc8-a1238ae274d4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4cd44b84-5039-468f-96cb-6aab6b2c6669",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cef36de-c7a7-43f8-9731-ec805221cb99",
              "parent_uuid": "4cd44b84-5039-468f-96cb-6aab6b2c6669",
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
              "uuid": "9ea8f3bb-bc72-44ce-a02c-878fb97b3f27",
              "parent_uuid": "4cd44b84-5039-468f-96cb-6aab6b2c6669",
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
              "uuid": "895b62be-eb09-4f02-847f-65bd395ffb39",
              "parent_uuid": "4cd44b84-5039-468f-96cb-6aab6b2c6669",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a96b386f-3821-4310-8315-c95cd977787a",
                  "parent_uuid": "895b62be-eb09-4f02-847f-65bd395ffb39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef6d87b6-55ed-4da1-bd54-eee7379d9974",
              "parent_uuid": "4cd44b84-5039-468f-96cb-6aab6b2c6669",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2a01f8ac-f4de-47c7-9929-bd8f5a0fdb70",
                  "parent_uuid": "ef6d87b6-55ed-4da1-bd54-eee7379d9974",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1df1230-bd6b-4003-81a0-b71b8b07b888",
              "parent_uuid": "4cd44b84-5039-468f-96cb-6aab6b2c6669",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c4946bf7-b13c-420b-8793-6959b70ef168",
                  "parent_uuid": "f1df1230-bd6b-4003-81a0-b71b8b07b888",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d4186a4-178c-464c-a99d-e5844e2cd68b",
              "parent_uuid": "4cd44b84-5039-468f-96cb-6aab6b2c6669",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c01c5cfa-6841-4541-bc32-02bcd4139a66",
                  "parent_uuid": "1d4186a4-178c-464c-a99d-e5844e2cd68b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c77140d7-1aea-4d01-90f3-72ac17d58036",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a193b2f8-4016-4717-bf11-ba1f71b8d8b0",
              "parent_uuid": "c77140d7-1aea-4d01-90f3-72ac17d58036",
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
              "uuid": "51f30b07-9f61-4d71-9b52-bca93f656666",
              "parent_uuid": "c77140d7-1aea-4d01-90f3-72ac17d58036",
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
              "uuid": "8df03f71-56aa-4e29-94e6-2e5d171c16f4",
              "parent_uuid": "c77140d7-1aea-4d01-90f3-72ac17d58036",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3dba35b1-bc45-4bdf-beab-ad5c91549ddd",
                  "parent_uuid": "8df03f71-56aa-4e29-94e6-2e5d171c16f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "581e12e9-949e-44ac-becd-76342ffc6fa4",
              "parent_uuid": "c77140d7-1aea-4d01-90f3-72ac17d58036",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e8932c46-97c9-49f8-9fb9-00f498a40a63",
                  "parent_uuid": "581e12e9-949e-44ac-becd-76342ffc6fa4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e12ccd1c-53ff-4a51-966b-b1e23296b59b",
              "parent_uuid": "c77140d7-1aea-4d01-90f3-72ac17d58036",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6caa63ca-5243-4bde-b7f5-f8df542a5ddc",
                  "parent_uuid": "e12ccd1c-53ff-4a51-966b-b1e23296b59b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8edf543e-90d3-4fc4-9572-a948275aab94",
              "parent_uuid": "c77140d7-1aea-4d01-90f3-72ac17d58036",
              "tagName": "td",
              "properties": [
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
                  "uuid": "21fad5f6-76fe-4ff5-81c2-d173256894dd",
                  "parent_uuid": "8edf543e-90d3-4fc4-9572-a948275aab94",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c70e4ea-3ee3-4c9c-9241-6ca6292c244c",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "856c7baf-893e-453b-af95-eee737adba4c",
              "parent_uuid": "6c70e4ea-3ee3-4c9c-9241-6ca6292c244c",
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
              "uuid": "4e37e0d3-1bbd-43ff-89fa-808f1269ff36",
              "parent_uuid": "6c70e4ea-3ee3-4c9c-9241-6ca6292c244c",
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
              "uuid": "2ea33e2b-8232-4a70-ab7c-f18beb93ba73",
              "parent_uuid": "6c70e4ea-3ee3-4c9c-9241-6ca6292c244c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f6c28b97-a41c-4e30-8e22-48af63efe390",
                  "parent_uuid": "2ea33e2b-8232-4a70-ab7c-f18beb93ba73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cbcc845-32ba-4ffa-9f80-ae08ffb62dbb",
              "parent_uuid": "6c70e4ea-3ee3-4c9c-9241-6ca6292c244c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9162e11-c8f7-4127-878d-3220517fa4f9",
                  "parent_uuid": "2cbcc845-32ba-4ffa-9f80-ae08ffb62dbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef0136a2-e3f7-4d4f-a79b-c52a133e9963",
              "parent_uuid": "6c70e4ea-3ee3-4c9c-9241-6ca6292c244c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f3d481aa-c6ae-432e-9ede-676d170671e3",
                  "parent_uuid": "ef0136a2-e3f7-4d4f-a79b-c52a133e9963",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c6b076d-d5e7-4933-a385-38cfdab2e167",
              "parent_uuid": "6c70e4ea-3ee3-4c9c-9241-6ca6292c244c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "22822820-c048-47ab-9206-238646e3c2d9",
                  "parent_uuid": "1c6b076d-d5e7-4933-a385-38cfdab2e167",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "25ad06fd-97ca-48bb-a682-e7937b141226",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32841933-679f-421a-883f-ac8acdb4cf22",
              "parent_uuid": "25ad06fd-97ca-48bb-a682-e7937b141226",
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
              "uuid": "eb9cefeb-5ee0-47b5-9384-217ca18feed4",
              "parent_uuid": "25ad06fd-97ca-48bb-a682-e7937b141226",
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
              "uuid": "3371c5d9-0ea1-4fd3-894d-24fc5ed85dae",
              "parent_uuid": "25ad06fd-97ca-48bb-a682-e7937b141226",
              "tagName": "td",
              "properties": [
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
                  "uuid": "579bd9dd-6403-493a-92d1-62f7b0cc1c6d",
                  "parent_uuid": "3371c5d9-0ea1-4fd3-894d-24fc5ed85dae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7538ce9-6d89-41bd-be19-26df3e814ed7",
              "parent_uuid": "25ad06fd-97ca-48bb-a682-e7937b141226",
              "tagName": "td",
              "properties": [
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
                  "uuid": "19cb2adf-37c0-4942-a025-6d6339c7e4e6",
                  "parent_uuid": "f7538ce9-6d89-41bd-be19-26df3e814ed7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9ce6b98-245f-4a47-b44c-e00c20682262",
              "parent_uuid": "25ad06fd-97ca-48bb-a682-e7937b141226",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ba88b7a5-4ca1-411f-8f0d-e56234aa340d",
                  "parent_uuid": "f9ce6b98-245f-4a47-b44c-e00c20682262",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb96b3ab-cf86-465e-8d15-0324ea05e3ee",
              "parent_uuid": "25ad06fd-97ca-48bb-a682-e7937b141226",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0a6f57a8-bb4b-4e75-bdda-4cbfec14dca7",
                  "parent_uuid": "cb96b3ab-cf86-465e-8d15-0324ea05e3ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b764aa0d-8910-4d11-b0e5-8f1f2051c202",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "44ca1eab-789a-4bb4-a62e-499c3cac4271",
              "parent_uuid": "b764aa0d-8910-4d11-b0e5-8f1f2051c202",
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
              "uuid": "bf700818-e93b-4bf5-9709-db16f63b537f",
              "parent_uuid": "b764aa0d-8910-4d11-b0e5-8f1f2051c202",
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
              "uuid": "22e3c8f2-31ec-44e6-a8f7-f9b11a133953",
              "parent_uuid": "b764aa0d-8910-4d11-b0e5-8f1f2051c202",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d347c8e1-9ca7-4dec-b241-a4402d66a1fb",
                  "parent_uuid": "22e3c8f2-31ec-44e6-a8f7-f9b11a133953",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "838dcebf-d341-4c67-9df0-e6b7009c1d37",
              "parent_uuid": "b764aa0d-8910-4d11-b0e5-8f1f2051c202",
              "tagName": "td",
              "properties": [
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
                  "uuid": "17d1792b-7d66-480f-925e-b461922e4258",
                  "parent_uuid": "838dcebf-d341-4c67-9df0-e6b7009c1d37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cf942f6-77da-497e-a756-aba21a93b526",
              "parent_uuid": "b764aa0d-8910-4d11-b0e5-8f1f2051c202",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4505b111-03e8-40a7-af10-2630cc63293f",
                  "parent_uuid": "3cf942f6-77da-497e-a756-aba21a93b526",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35a1ef44-b3f2-40c5-a4de-eb2646bacc14",
              "parent_uuid": "b764aa0d-8910-4d11-b0e5-8f1f2051c202",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cad0f3f3-3d83-4360-a935-0ea69e49de6c",
                  "parent_uuid": "35a1ef44-b3f2-40c5-a4de-eb2646bacc14",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "340ff8ec-6546-4f80-9d25-1dc7c57b60c0",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "48c3e0b2-2a1e-4fe6-9ad4-a556b08dbf09",
              "parent_uuid": "340ff8ec-6546-4f80-9d25-1dc7c57b60c0",
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
          "uuid": "ef475f8e-0b4f-4bbb-bb8b-07f50f4d2e60",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4580e6b-8c0a-4791-9463-dce2d4d2d042",
              "parent_uuid": "ef475f8e-0b4f-4bbb-bb8b-07f50f4d2e60",
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
              "uuid": "3f23494d-a15b-4f7e-a238-3c19df42b7bf",
              "parent_uuid": "ef475f8e-0b4f-4bbb-bb8b-07f50f4d2e60",
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
              "uuid": "c50f1745-d4a0-4d47-8461-f6ab0889acd0",
              "parent_uuid": "ef475f8e-0b4f-4bbb-bb8b-07f50f4d2e60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c558a279-a1cd-401b-b016-ea75d5b50284",
                  "parent_uuid": "c50f1745-d4a0-4d47-8461-f6ab0889acd0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91122127-cc78-4ed0-8a72-4bc68557360c",
              "parent_uuid": "ef475f8e-0b4f-4bbb-bb8b-07f50f4d2e60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a4e37af2-b0b3-40d1-b5ec-2da666ebb936",
                  "parent_uuid": "91122127-cc78-4ed0-8a72-4bc68557360c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9017ae78-ad25-47cb-b011-cf1b92a0442b",
              "parent_uuid": "ef475f8e-0b4f-4bbb-bb8b-07f50f4d2e60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a56dceec-2b45-492c-b88f-588e5c77fe5d",
                  "parent_uuid": "9017ae78-ad25-47cb-b011-cf1b92a0442b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0527083-9fe4-4371-888e-8ce5ff8c1357",
              "parent_uuid": "ef475f8e-0b4f-4bbb-bb8b-07f50f4d2e60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "32a040ba-a75b-4da4-91c5-11ce0de9cfab",
                  "parent_uuid": "b0527083-9fe4-4371-888e-8ce5ff8c1357",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3b87b5d9-c477-493e-9d57-37f59f23a6b1",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "03a79f41-9b54-4023-adf7-4a1d7e0b7857",
              "parent_uuid": "3b87b5d9-c477-493e-9d57-37f59f23a6b1",
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
          "uuid": "a5572bdc-3b12-44c4-9297-3d820ef5a1ba",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d302a5c2-f132-49b9-bdde-89c7d78a3aad",
              "parent_uuid": "a5572bdc-3b12-44c4-9297-3d820ef5a1ba",
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
          "uuid": "47a34978-86df-4f83-b09a-43c29d855cad",
          "parent_uuid": "7f261a0a-897a-44be-b764-3502d6caff7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53388667-8bc3-4490-a0cc-b4e2f1d8a8bc",
              "parent_uuid": "47a34978-86df-4f83-b09a-43c29d855cad",
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
                  "uuid": "284bcaa7-0c70-4fe2-a807-159dff6e699c",
                  "parent_uuid": "53388667-8bc3-4490-a0cc-b4e2f1d8a8bc",
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

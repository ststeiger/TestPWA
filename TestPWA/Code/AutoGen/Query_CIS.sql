
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
  "uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
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
      "uuid": "bb024959-814a-4942-80b3-3b4da39b15ce",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
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
      "uuid": "31d9fa6e-b486-473d-8a00-df98008e51d4",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
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
      "uuid": "8b95b2d2-27ad-48ae-8dc5-b3ee3c45a8d0",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
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
      "uuid": "b04cc077-4556-46e8-8377-e3606d942468",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "69"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "916494e7-b896-4a90-92ae-20d7e64c54f4",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "85003cf7-2241-4f5b-9423-a08fb9709ee8",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
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
      "uuid": "1333e0f1-e2c4-46f1-8a38-39878e20a88f",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
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
      "uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
      "parent_uuid": "dddade49-2894-41ac-a032-9ffac366d4ab",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "2fe0a949-79c5-4753-8a0d-ac7466ba261a",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "45f02202-e87f-4f28-9a75-0fb204d742c1",
              "parent_uuid": "2fe0a949-79c5-4753-8a0d-ac7466ba261a",
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c730c449-7c3f-449b-8606-2525fb6e4327",
              "parent_uuid": "2fe0a949-79c5-4753-8a0d-ac7466ba261a",
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
              "uuid": "a6df182b-7589-420c-9c11-0b024b58d122",
              "parent_uuid": "2fe0a949-79c5-4753-8a0d-ac7466ba261a",
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
              "uuid": "5552975b-a912-471b-8d23-59211fbde50e",
              "parent_uuid": "2fe0a949-79c5-4753-8a0d-ac7466ba261a",
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
              "innerHtml": "<span>Bargeldgewerk: Münzinspektions- und Sortieranlage</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "8db46f1c-3cef-4ec8-82bd-4162d67dc024",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "8834efff-2891-40fb-b4bb-05c8bcb8199d",
              "parent_uuid": "8db46f1c-3cef-4ec8-82bd-4162d67dc024",
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
              "uuid": "714e1615-b204-46dc-9a05-feef6122e11b",
              "parent_uuid": "8db46f1c-3cef-4ec8-82bd-4162d67dc024",
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
              "uuid": "b20478d5-964b-475f-b756-af04f6fa2ba2",
              "parent_uuid": "8db46f1c-3cef-4ec8-82bd-4162d67dc024",
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
              "uuid": "5486c8d8-5c0b-4c71-9c0d-38b1cc722872",
              "parent_uuid": "8db46f1c-3cef-4ec8-82bd-4162d67dc024",
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
          "uuid": "60fcef3b-2ea3-4e0f-855d-15de53f0484e",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54d580ab-c775-49c9-83cf-4cb841898f3d",
              "parent_uuid": "60fcef3b-2ea3-4e0f-855d-15de53f0484e",
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
                  "left"
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
              "uuid": "e59cabc3-b45b-43ff-8088-22ab50852d6d",
              "parent_uuid": "60fcef3b-2ea3-4e0f-855d-15de53f0484e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5b5b7a39-5ff9-4cbf-9958-8f13304aac61",
              "parent_uuid": "60fcef3b-2ea3-4e0f-855d-15de53f0484e",
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
              "uuid": "8491f6ce-555e-45ef-be17-f4684e3ea890",
              "parent_uuid": "60fcef3b-2ea3-4e0f-855d-15de53f0484e",
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
              "uuid": "504890b8-8b3d-4ba7-ae50-cc1d20852169",
              "parent_uuid": "60fcef3b-2ea3-4e0f-855d-15de53f0484e",
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
              "uuid": "1c95b03a-6687-450f-ba79-6cc7014fd888",
              "parent_uuid": "60fcef3b-2ea3-4e0f-855d-15de53f0484e",
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
          "uuid": "585431ba-3752-4b74-aeb3-705abc6e5ce2",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "51b35dbc-3b9a-428f-b4f1-95bba4ca94c8",
              "parent_uuid": "585431ba-3752-4b74-aeb3-705abc6e5ce2",
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
          "uuid": "819783b7-60b7-4067-a749-9d6c4527baeb",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0426bc69-8412-4ccd-aa2f-dda410cc96b5",
              "parent_uuid": "819783b7-60b7-4067-a749-9d6c4527baeb",
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
              "uuid": "aa24062e-6c97-478b-8b0c-6257f69f7afb",
              "parent_uuid": "819783b7-60b7-4067-a749-9d6c4527baeb",
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
              "uuid": "e4f6222a-bc71-4aa1-815f-77dc6bc84d0a",
              "parent_uuid": "819783b7-60b7-4067-a749-9d6c4527baeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd432e59-df2d-4385-84e9-e7eb7192e637",
                  "parent_uuid": "e4f6222a-bc71-4aa1-815f-77dc6bc84d0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a2f4fc5-d958-4943-82e6-bd5d01dc669d",
              "parent_uuid": "819783b7-60b7-4067-a749-9d6c4527baeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b42b977-677d-45e4-b4d0-44c745e5c5f5",
                  "parent_uuid": "6a2f4fc5-d958-4943-82e6-bd5d01dc669d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0df1d964-ec24-4ea1-bb96-da4096c7b980",
              "parent_uuid": "819783b7-60b7-4067-a749-9d6c4527baeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1097073-286c-49ba-af3a-72cff181ef91",
                  "parent_uuid": "0df1d964-ec24-4ea1-bb96-da4096c7b980",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bac9082-536f-45fa-b182-cbc461256ca4",
              "parent_uuid": "819783b7-60b7-4067-a749-9d6c4527baeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39d0b41f-c5e2-41d5-b7a2-ed85e7e78c89",
                  "parent_uuid": "7bac9082-536f-45fa-b182-cbc461256ca4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "990cb8ba-8247-4e3a-9e8e-0e43c4a74472",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8ed14cb-af72-4668-8e90-4b2903ff55bd",
              "parent_uuid": "990cb8ba-8247-4e3a-9e8e-0e43c4a74472",
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
                  "34"
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
              "innerHtml": "\r\n                    <span>Alle Transportbänder auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f0d96ad3-b55b-4fbd-890e-f26e83dd599c",
              "parent_uuid": "990cb8ba-8247-4e3a-9e8e-0e43c4a74472",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8b6acfb4-6a13-406a-8675-640de2990c4f",
              "parent_uuid": "990cb8ba-8247-4e3a-9e8e-0e43c4a74472",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fdf6a140-605e-4992-b6f0-294b5b8a7774",
                  "parent_uuid": "8b6acfb4-6a13-406a-8675-640de2990c4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a520522-f071-409f-86a2-deb05012546f",
              "parent_uuid": "990cb8ba-8247-4e3a-9e8e-0e43c4a74472",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b695347-09c7-430c-9144-e09d6b29275d",
                  "parent_uuid": "0a520522-f071-409f-86a2-deb05012546f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8f6b1fd-3fbb-479e-845c-484c25ab8e6b",
              "parent_uuid": "990cb8ba-8247-4e3a-9e8e-0e43c4a74472",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "875aa8b4-14a5-49e3-bbd1-755d592861ad",
                  "parent_uuid": "d8f6b1fd-3fbb-479e-845c-484c25ab8e6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "115f4e02-5f20-45b4-a219-c980ca626dd0",
              "parent_uuid": "990cb8ba-8247-4e3a-9e8e-0e43c4a74472",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b9f20b9-4d11-4fa3-895e-c5455a2e05db",
                  "parent_uuid": "115f4e02-5f20-45b4-a219-c980ca626dd0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "96f72569-0717-4978-9c4c-023194566d02",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f27247a-5742-40d5-b481-6f5ea623361f",
              "parent_uuid": "96f72569-0717-4978-9c4c-023194566d02",
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
                  "35"
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
              "innerHtml": "\r\n                    <span>Prüfen Sie alle bewegliche und schwingende Teile auf lose oder fehlende Schrauben.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1198db94-d961-4d4e-ba99-7b05e48df74d",
              "parent_uuid": "96f72569-0717-4978-9c4c-023194566d02",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b40a3fb1-5d6f-4980-af66-7c51824e20b1",
              "parent_uuid": "96f72569-0717-4978-9c4c-023194566d02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b34c7897-1acc-4e3d-aae1-b217507fd164",
                  "parent_uuid": "b40a3fb1-5d6f-4980-af66-7c51824e20b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac27c472-9ef9-42c7-9304-cee44c2586e5",
              "parent_uuid": "96f72569-0717-4978-9c4c-023194566d02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbc96b7b-685f-48f1-8eb9-cb708ee6036b",
                  "parent_uuid": "ac27c472-9ef9-42c7-9304-cee44c2586e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8138fdfd-7754-4b0b-8a4d-24b3ebb028e6",
              "parent_uuid": "96f72569-0717-4978-9c4c-023194566d02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d7d673f-0016-4c1d-a1ce-81ce8e74511e",
                  "parent_uuid": "8138fdfd-7754-4b0b-8a4d-24b3ebb028e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff8dbc17-29bd-4aaf-a202-0fa565c0ecb5",
              "parent_uuid": "96f72569-0717-4978-9c4c-023194566d02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1309dc8b-8cc2-4b58-bdbc-29dbb1dc46c4",
                  "parent_uuid": "ff8dbc17-29bd-4aaf-a202-0fa565c0ecb5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "798d66b3-4bc3-4422-a05b-faad888cd378",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c411c8f-a5db-4d57-83a6-dd887f9a4709",
              "parent_uuid": "798d66b3-4bc3-4422-a05b-faad888cd378",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2ee1c944-4304-4325-a1d7-10456ed3352d",
              "parent_uuid": "798d66b3-4bc3-4422-a05b-faad888cd378",
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
              "uuid": "f6cd56c7-b8a9-474c-b556-f76a769ad302",
              "parent_uuid": "798d66b3-4bc3-4422-a05b-faad888cd378",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "856492e0-3eae-4665-bd04-dd984f11cb03",
                  "parent_uuid": "f6cd56c7-b8a9-474c-b556-f76a769ad302",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0ec3673-f274-4a8e-8c20-7aa75249eead",
              "parent_uuid": "798d66b3-4bc3-4422-a05b-faad888cd378",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99e8e600-97e3-46d8-b112-1bb7575d4666",
                  "parent_uuid": "d0ec3673-f274-4a8e-8c20-7aa75249eead",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86cb631d-dfdb-401f-98bc-c1321ace01c4",
              "parent_uuid": "798d66b3-4bc3-4422-a05b-faad888cd378",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00caa6f5-ae66-4209-892b-1c7dd6a13ab7",
                  "parent_uuid": "86cb631d-dfdb-401f-98bc-c1321ace01c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0e869d6-27fc-49dc-ae49-ce603d77c7db",
              "parent_uuid": "798d66b3-4bc3-4422-a05b-faad888cd378",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b79fd87d-fccb-4387-a9b8-76929a5f8aa2",
                  "parent_uuid": "a0e869d6-27fc-49dc-ae49-ce603d77c7db",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "28deab5b-c365-43e6-8baf-6e80f17e9b4b",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "65b32109-8fca-47fa-9b7a-0e7e43150e27",
              "parent_uuid": "28deab5b-c365-43e6-8baf-6e80f17e9b4b",
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "77123aed-204f-48db-b543-17e1534fc394",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0a90e453-0bd7-4b5b-8d49-983dd938d502",
              "parent_uuid": "77123aed-204f-48db-b543-17e1534fc394",
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
              "innerHtml": "\r\n                    <span><b>Gesamte Anlage reinigen:</b><br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "eb76b9e9-b7a1-493c-acfa-dc8d45ca4452",
              "parent_uuid": "77123aed-204f-48db-b543-17e1534fc394",
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
              "innerHtml": "\r\n                    <span>W</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "45c2e91f-e23b-4df7-af49-dc4d2569889d",
              "parent_uuid": "77123aed-204f-48db-b543-17e1534fc394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38e732bb-aa89-4fe5-85db-e77cdbec5085",
                  "parent_uuid": "45c2e91f-e23b-4df7-af49-dc4d2569889d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89950020-f1e4-424c-a21d-2f3aa62c8680",
              "parent_uuid": "77123aed-204f-48db-b543-17e1534fc394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fa05030-5228-48b0-a13e-7404a4debbfe",
                  "parent_uuid": "89950020-f1e4-424c-a21d-2f3aa62c8680",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b089a45c-04ad-40fd-a66a-ca789287a4f8",
              "parent_uuid": "77123aed-204f-48db-b543-17e1534fc394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7db1ee76-1bd1-426a-8882-2540d6b961b1",
                  "parent_uuid": "b089a45c-04ad-40fd-a66a-ca789287a4f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59f25083-af14-463a-9726-b78bee4dba55",
              "parent_uuid": "77123aed-204f-48db-b543-17e1534fc394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de71d82d-2a83-4eed-b47d-eac565c7f312",
                  "parent_uuid": "59f25083-af14-463a-9726-b78bee4dba55",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c944483e-0db3-469d-b0c8-2b53b955a10a",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e8becf4-f003-4002-a35c-3b78d3fded53",
              "parent_uuid": "c944483e-0db3-469d-b0c8-2b53b955a10a",
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
              "innerHtml": "\r\n                    <span>Festsitzende Münzen in der Maschine überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "056aa247-612f-4c11-987c-95ab1502bd5d",
              "parent_uuid": "c944483e-0db3-469d-b0c8-2b53b955a10a",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8cf6a6e0-d54a-4308-8e0b-db1e0cf08112",
              "parent_uuid": "c944483e-0db3-469d-b0c8-2b53b955a10a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e556f25-a01c-4018-af1f-c74680f8be8b",
                  "parent_uuid": "8cf6a6e0-d54a-4308-8e0b-db1e0cf08112",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "926bddb6-3485-4d03-ac01-f960cfb23b1f",
              "parent_uuid": "c944483e-0db3-469d-b0c8-2b53b955a10a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24b9fecc-c55e-4654-8720-03831d2acd69",
                  "parent_uuid": "926bddb6-3485-4d03-ac01-f960cfb23b1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19e86131-66ba-455d-bc3c-9ffa83308024",
              "parent_uuid": "c944483e-0db3-469d-b0c8-2b53b955a10a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d79bba2-b051-438d-a44e-d58bffe7d60c",
                  "parent_uuid": "19e86131-66ba-455d-bc3c-9ffa83308024",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74e2e284-8c24-42bc-9e23-5095864b8999",
              "parent_uuid": "c944483e-0db3-469d-b0c8-2b53b955a10a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a9d2125-ec29-4254-a9fc-2d7b60b814d7",
                  "parent_uuid": "74e2e284-8c24-42bc-9e23-5095864b8999",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0684963a-4add-42f7-8a62-f832a23a933c",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0a1fa9ec-0398-40e5-9edb-e45e6ffb96bb",
              "parent_uuid": "0684963a-4add-42f7-8a62-f832a23a933c",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Sichtfenster reinigen mit lauwarmes Wasser sowie ein wenig Spülmittel aus. <br>Verwenden dabei ein Mikrofasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2f8ffd47-3ae4-40c2-9756-beb1d3039130",
              "parent_uuid": "0684963a-4add-42f7-8a62-f832a23a933c",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "364c50e9-7ccd-48b3-b0bc-a2cd4ddd5e07",
              "parent_uuid": "0684963a-4add-42f7-8a62-f832a23a933c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf47d281-af11-412c-8931-1d3a2f3091db",
                  "parent_uuid": "364c50e9-7ccd-48b3-b0bc-a2cd4ddd5e07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1fb336f2-9fd2-42a0-a809-96327db35c17",
              "parent_uuid": "0684963a-4add-42f7-8a62-f832a23a933c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3897743a-88fe-4e73-8179-7306a67be445",
                  "parent_uuid": "1fb336f2-9fd2-42a0-a809-96327db35c17",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c8d449d-d7cd-477a-9063-2e5df5db9271",
              "parent_uuid": "0684963a-4add-42f7-8a62-f832a23a933c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df1462b8-3eaf-40f5-8cff-5b439ee2bb09",
                  "parent_uuid": "6c8d449d-d7cd-477a-9063-2e5df5db9271",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fdddcbc-fa15-4aaa-9103-49993acc72d1",
              "parent_uuid": "0684963a-4add-42f7-8a62-f832a23a933c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86b262eb-0f99-4d4e-b3f4-987de8b7ab92",
                  "parent_uuid": "6fdddcbc-fa15-4aaa-9103-49993acc72d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "105b094d-c5f1-49c2-8f8d-7bafc07c74a8",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5eec720b-f9b8-4595-a98f-6ee320ac12a2",
              "parent_uuid": "105b094d-c5f1-49c2-8f8d-7bafc07c74a8",
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
              "innerHtml": "\r\n                    <span>Not-Aus-Taster, Kontrolllampen und Anzeigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e2cc47ad-fb9b-42a4-b13c-bcc1cc411349",
              "parent_uuid": "105b094d-c5f1-49c2-8f8d-7bafc07c74a8",
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
              "uuid": "21e283bc-a84f-4001-885b-2db913481b86",
              "parent_uuid": "105b094d-c5f1-49c2-8f8d-7bafc07c74a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e0c37e0-964a-4a4c-bf9a-9895653d5500",
                  "parent_uuid": "21e283bc-a84f-4001-885b-2db913481b86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b696544-206a-4c93-9d56-aeda442117fd",
              "parent_uuid": "105b094d-c5f1-49c2-8f8d-7bafc07c74a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "444465b5-e159-486b-81e6-faffde18d10f",
                  "parent_uuid": "9b696544-206a-4c93-9d56-aeda442117fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5d535df-a693-4ede-8cef-a965582f7afc",
              "parent_uuid": "105b094d-c5f1-49c2-8f8d-7bafc07c74a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7ff6619-f541-4539-abf3-edc30e183548",
                  "parent_uuid": "e5d535df-a693-4ede-8cef-a965582f7afc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "594f6994-92ca-4904-8632-71e17725601e",
              "parent_uuid": "105b094d-c5f1-49c2-8f8d-7bafc07c74a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88b29420-3316-4e11-9f26-034c4095e655",
                  "parent_uuid": "594f6994-92ca-4904-8632-71e17725601e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26d0aa9a-b26a-479b-9e98-de40f695238d",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46675688-6523-40fa-9090-6332b3572f33",
              "parent_uuid": "26d0aa9a-b26a-479b-9e98-de40f695238d",
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
                  "105"
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
              "innerHtml": "\r\n                    <span><b>Transportriemen gross reinigen:</b><br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "758f2517-bcab-442c-a1e5-1bb33c0105d7",
              "parent_uuid": "26d0aa9a-b26a-479b-9e98-de40f695238d",
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
              "uuid": "956b6985-823f-47e5-82b9-ba1001d440d6",
              "parent_uuid": "26d0aa9a-b26a-479b-9e98-de40f695238d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a70b5f57-d306-431a-854b-624101ae3da0",
                  "parent_uuid": "956b6985-823f-47e5-82b9-ba1001d440d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cf77915-15ee-4e1f-bd3f-397aaf07f4e5",
              "parent_uuid": "26d0aa9a-b26a-479b-9e98-de40f695238d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "234db9ba-29e4-499a-8a7b-ca5be68d5fb7",
                  "parent_uuid": "1cf77915-15ee-4e1f-bd3f-397aaf07f4e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b356400d-6fe8-4223-a503-d871204c5436",
              "parent_uuid": "26d0aa9a-b26a-479b-9e98-de40f695238d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee134192-2689-4425-94b5-f865fde9c1ff",
                  "parent_uuid": "b356400d-6fe8-4223-a503-d871204c5436",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f143356-aa36-473a-910a-c7f6d692b85a",
              "parent_uuid": "26d0aa9a-b26a-479b-9e98-de40f695238d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "846050dd-72df-4cba-8ef6-4967f215535b",
                  "parent_uuid": "7f143356-aa36-473a-910a-c7f6d692b85a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a7f7fd4-93f4-4876-8d24-35abf9e34abb",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "568a7092-a66a-4646-a140-9c2ac721916c",
              "parent_uuid": "9a7f7fd4-93f4-4876-8d24-35abf9e34abb",
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
                  "121"
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
              "innerHtml": "\r\n                    <span><b>Transportriemen klein reinigen:</b><br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ca038904-c216-4290-9c01-12aaa98dff95",
              "parent_uuid": "9a7f7fd4-93f4-4876-8d24-35abf9e34abb",
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
              "uuid": "53e41c19-853e-42b8-a395-2d6476a1a930",
              "parent_uuid": "9a7f7fd4-93f4-4876-8d24-35abf9e34abb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce24bd9e-3f77-4edf-83b0-22b1b7e07f61",
                  "parent_uuid": "53e41c19-853e-42b8-a395-2d6476a1a930",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca806056-b999-4916-9514-965ba6108e81",
              "parent_uuid": "9a7f7fd4-93f4-4876-8d24-35abf9e34abb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e4120d2-055f-4536-9631-dd8186000767",
                  "parent_uuid": "ca806056-b999-4916-9514-965ba6108e81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "411f77b9-db0b-4059-8cdf-a2afad73073f",
              "parent_uuid": "9a7f7fd4-93f4-4876-8d24-35abf9e34abb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "904733a9-a2b1-425e-ba4a-13290395735c",
                  "parent_uuid": "411f77b9-db0b-4059-8cdf-a2afad73073f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecc38173-7185-41f8-97da-2e9a35bcff12",
              "parent_uuid": "9a7f7fd4-93f4-4876-8d24-35abf9e34abb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "047b6c9f-b69a-4219-bdfe-7babc75e8648",
                  "parent_uuid": "ecc38173-7185-41f8-97da-2e9a35bcff12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c69e215b-5cba-4679-b28e-7bcaa489a51c",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf3661e9-2d7c-421b-8566-174ab637458a",
              "parent_uuid": "c69e215b-5cba-4679-b28e-7bcaa489a51c",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
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
              "innerHtml": "\r\n                    <span><b>Spannung Transporriemen gross überprüfen:</b><br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3878c1f2-ec16-4382-995b-e45fd74a2e2f",
              "parent_uuid": "c69e215b-5cba-4679-b28e-7bcaa489a51c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "rowspan",
                  "3"
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
              "uuid": "7e2e5370-c200-42fe-b9ef-ccde8919f818",
              "parent_uuid": "c69e215b-5cba-4679-b28e-7bcaa489a51c",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "770ba057-5d79-49ef-b9d5-7fd9dd7d7e6c",
                  "parent_uuid": "7e2e5370-c200-42fe-b9ef-ccde8919f818",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "466a0a8d-4177-401b-a9db-7bc658675d90",
              "parent_uuid": "c69e215b-5cba-4679-b28e-7bcaa489a51c",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4ae47e0-7f0b-4f63-bbf1-fe5e7becc8c4",
                  "parent_uuid": "466a0a8d-4177-401b-a9db-7bc658675d90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe0115bf-9770-449d-b25b-a9da0fe6b76f",
              "parent_uuid": "c69e215b-5cba-4679-b28e-7bcaa489a51c",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61ee35b9-1bd4-4dd4-8de7-b27344cabe3b",
                  "parent_uuid": "fe0115bf-9770-449d-b25b-a9da0fe6b76f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29a0de3a-4726-4b49-96c0-9dc40b14ba02",
              "parent_uuid": "c69e215b-5cba-4679-b28e-7bcaa489a51c",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7df9617f-4766-4289-b78b-23a6a4feaec9",
                  "parent_uuid": "29a0de3a-4726-4b49-96c0-9dc40b14ba02",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f40e489-c84b-485f-a43a-53f7163706bb",
              "parent_uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "18"
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4df84a0c-dda1-425a-893a-60eae15130aa",
              "parent_uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0414dce1-e434-40d6-9750-28cd10a6aa16",
              "parent_uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "820fdd86-740e-4fbb-9cf1-51ea1e14a1d9",
              "parent_uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15858718-ce9f-4cd6-a0e8-96fd8b0060fb",
                  "parent_uuid": "820fdd86-740e-4fbb-9cf1-51ea1e14a1d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a7bcfb6-1b07-43fc-95b7-f2062d849e8b",
              "parent_uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8078d4ab-97c9-4818-83a9-2658b8a2189a",
                  "parent_uuid": "8a7bcfb6-1b07-43fc-95b7-f2062d849e8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be5141e2-7f8b-4f4b-8e1e-e9d34ee66816",
              "parent_uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bafc521a-9966-4bd2-81fd-26792c96a245",
                  "parent_uuid": "be5141e2-7f8b-4f4b-8e1e-e9d34ee66816",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "37b8bf05-11bb-4894-a048-f84608881d0d",
              "parent_uuid": "09da798a-0410-4a21-b2ed-35b033ccedc2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba6899ad-3493-46bd-80cd-dd5cd01c5447",
                  "parent_uuid": "37b8bf05-11bb-4894-a048-f84608881d0d",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46b1060d-5750-4ece-a51e-bdc28a40ac59",
              "parent_uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "21"
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
              "innerHtml": "\r\n                    <span>-Die Distanz von Punkt zu Punkt sollte 102cm betragen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1a7ee892-f7de-4233-b7c4-3af6b9b60239",
              "parent_uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "innerHtml": "\r\n                    <span>&lt;102cm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fffbb5d3-d787-48b8-bcd9-b0d63b75c21e",
              "parent_uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21f40ae1-fee2-4026-85fe-28262b0b5a22",
                  "parent_uuid": "fffbb5d3-d787-48b8-bcd9-b0d63b75c21e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "width: 100%; display: block; box-sizing: border-box;"
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
              "uuid": "77f487d9-abe5-4ebd-9e69-dd31b7e6b824",
              "parent_uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32a8d9e6-205d-43f8-8c2d-76cbbd5231bc",
                  "parent_uuid": "77f487d9-abe5-4ebd-9e69-dd31b7e6b824",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e107903-26dc-4fd5-a0e2-7d05168b24ea",
              "parent_uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13773764-5f5d-498c-8580-9ae6ff541a6f",
                  "parent_uuid": "8e107903-26dc-4fd5-a0e2-7d05168b24ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ce81562-cb55-4bfb-a793-5076eeb0932d",
              "parent_uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97355a11-0770-423f-a939-994b80304759",
                  "parent_uuid": "4ce81562-cb55-4bfb-a793-5076eeb0932d",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "1807117e-19fd-4109-914b-1c70a4bab21e",
              "parent_uuid": "69ce8cbd-cc65-418e-a587-bc8526c725fb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc7789d3-9999-4435-9b6f-aa1141197b5e",
                  "parent_uuid": "1807117e-19fd-4109-914b-1c70a4bab21e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "6f357fce-c34e-480a-bc81-dfbf980e0883",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f6b7015-5d3b-4111-8b2a-279188138ca7",
              "parent_uuid": "6f357fce-c34e-480a-bc81-dfbf980e0883",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6b38950c-3b5b-4d22-9233-4da4708993a2",
              "parent_uuid": "6f357fce-c34e-480a-bc81-dfbf980e0883",
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
              "uuid": "aaeced5c-ea05-48a7-9c0d-51d1b06299f2",
              "parent_uuid": "6f357fce-c34e-480a-bc81-dfbf980e0883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0e97f74-cd82-4b9a-8739-e6c4e317e7a4",
                  "parent_uuid": "aaeced5c-ea05-48a7-9c0d-51d1b06299f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cad3c6b-2c5c-40d6-847b-642b6e21bdeb",
              "parent_uuid": "6f357fce-c34e-480a-bc81-dfbf980e0883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad4ab303-c9a5-4981-b639-d54fb0f163f3",
                  "parent_uuid": "6cad3c6b-2c5c-40d6-847b-642b6e21bdeb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5587b92-5040-4e71-a80b-29c144cd2072",
              "parent_uuid": "6f357fce-c34e-480a-bc81-dfbf980e0883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f7859c1-83dc-4c19-923c-c93983bcfe8d",
                  "parent_uuid": "e5587b92-5040-4e71-a80b-29c144cd2072",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27b849c3-3689-43db-80fd-c06a2fcd80bd",
              "parent_uuid": "6f357fce-c34e-480a-bc81-dfbf980e0883",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a54363a0-d9f3-4833-ae99-09c419ee6f92",
                  "parent_uuid": "27b849c3-3689-43db-80fd-c06a2fcd80bd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a8370bf1-1f5e-4be1-85bb-0aa816d44ea4",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "56f53200-f830-4633-bad4-2ca0c6857006",
              "parent_uuid": "a8370bf1-1f5e-4be1-85bb-0aa816d44ea4",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Lichtschranken und Sensoren mit einem weichen Reinigungstuch.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5d34dc31-bea4-4407-878c-e0d108f2715f",
              "parent_uuid": "a8370bf1-1f5e-4be1-85bb-0aa816d44ea4",
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
              "uuid": "ac1b7244-8843-43a0-b4ce-a0cbd0e54fe1",
              "parent_uuid": "a8370bf1-1f5e-4be1-85bb-0aa816d44ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbf26bc0-92bb-4417-907a-2d29d5595de8",
                  "parent_uuid": "ac1b7244-8843-43a0-b4ce-a0cbd0e54fe1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7aa777c4-8f09-473c-9000-cbb6dde8a5c6",
              "parent_uuid": "a8370bf1-1f5e-4be1-85bb-0aa816d44ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd8fa7a4-1d3b-4a7a-9996-678742c3ded0",
                  "parent_uuid": "7aa777c4-8f09-473c-9000-cbb6dde8a5c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb4b5205-2715-4af9-aac9-947cd578f2ca",
              "parent_uuid": "a8370bf1-1f5e-4be1-85bb-0aa816d44ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24765f75-93d1-49de-b13b-3193d09b6539",
                  "parent_uuid": "cb4b5205-2715-4af9-aac9-947cd578f2ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "189a2a0a-f5ae-4c8a-a72f-a68b63091300",
              "parent_uuid": "a8370bf1-1f5e-4be1-85bb-0aa816d44ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f501956-30a3-4c17-bc30-cbc4e2127ae2",
                  "parent_uuid": "189a2a0a-f5ae-4c8a-a72f-a68b63091300",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "78d67296-4332-405e-a55b-e23489a20639",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a11fd2be-2e0e-493d-af67-03c23d250a9e",
              "parent_uuid": "78d67296-4332-405e-a55b-e23489a20639",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Beide Server PC-Filter überprüfen und reinigen oder austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "294eac95-99b2-4195-ae76-7390d5fc7202",
              "parent_uuid": "78d67296-4332-405e-a55b-e23489a20639",
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
              "uuid": "4b8e3654-29b8-418b-8076-069207e2f4bd",
              "parent_uuid": "78d67296-4332-405e-a55b-e23489a20639",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e24277a8-74aa-48a5-a158-18d1e10728f8",
                  "parent_uuid": "4b8e3654-29b8-418b-8076-069207e2f4bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c3d0686-39ed-4152-a9e6-5d67fd839b8e",
              "parent_uuid": "78d67296-4332-405e-a55b-e23489a20639",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61eb26b9-81d8-4256-b945-84a3d9a8a364",
                  "parent_uuid": "5c3d0686-39ed-4152-a9e6-5d67fd839b8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "829551fb-ea8e-496f-a638-e5fd8a3a8c50",
              "parent_uuid": "78d67296-4332-405e-a55b-e23489a20639",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15e3acc9-a5fa-442c-bf12-414f9be052ce",
                  "parent_uuid": "829551fb-ea8e-496f-a638-e5fd8a3a8c50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8fe4dc81-435e-45cf-8820-4ba5c2599a2c",
              "parent_uuid": "78d67296-4332-405e-a55b-e23489a20639",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3c1ee2d-3d6a-4575-8f4e-a3fff9d44800",
                  "parent_uuid": "8fe4dc81-435e-45cf-8820-4ba5c2599a2c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c6b6fb16-d853-4e2f-89f0-a07b50011d47",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d6c8472-000c-448b-9a67-852586cc1cd7",
              "parent_uuid": "c6b6fb16-d853-4e2f-89f0-a07b50011d47",
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
                  "52"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kühlaggregat reinigen<br>  -Nehmen Sie vorsichtig die Abdeckung des Kühlaggregats ab.<br>  -Reinigen Sie die Lamellen vorsichtig mit einem Staubsauger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4b5bd433-4f83-4ee8-b266-9eae926111b7",
              "parent_uuid": "c6b6fb16-d853-4e2f-89f0-a07b50011d47",
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
              "uuid": "7043aaef-5e7a-42b3-b64e-c5570c559303",
              "parent_uuid": "c6b6fb16-d853-4e2f-89f0-a07b50011d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9c75f05-6c3b-453a-813b-d3900301f71e",
                  "parent_uuid": "7043aaef-5e7a-42b3-b64e-c5570c559303",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce4bb2ec-4396-48d4-b958-a05c6d37a26a",
              "parent_uuid": "c6b6fb16-d853-4e2f-89f0-a07b50011d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c497edfd-4095-4c87-a530-030f165b64b7",
                  "parent_uuid": "ce4bb2ec-4396-48d4-b958-a05c6d37a26a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ea6424c-16e2-4294-8491-f08519a1efe3",
              "parent_uuid": "c6b6fb16-d853-4e2f-89f0-a07b50011d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8e76cfb-7121-45aa-a092-22e7e529bc4e",
                  "parent_uuid": "9ea6424c-16e2-4294-8491-f08519a1efe3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67b6595d-cd61-4b90-ab2b-b1459b7845c9",
              "parent_uuid": "c6b6fb16-d853-4e2f-89f0-a07b50011d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37cbd358-f554-4a3d-b29b-0b52a9243173",
                  "parent_uuid": "67b6595d-cd61-4b90-ab2b-b1459b7845c9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8560357c-e290-40c0-baa4-d868d28ae609",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d4bd91b0-5933-4f7c-9e2c-cf075e4317d0",
              "parent_uuid": "8560357c-e290-40c0-baa4-d868d28ae609",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "45312f84-76b8-49bd-8824-2bb4dfb82559",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2bbafd19-1c3a-4802-b61f-d1a1ca790b42",
              "parent_uuid": "45312f84-76b8-49bd-8824-2bb4dfb82559",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Schwingplatte<br>  -Der Talkbelag der Schwingplatte wird mit einem Spachtel gelöst.<br>  -Anschliessend kann mit einem Reinigungstuch und Bremsreiniger der übrige Schmutz entfernt werden</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a5720830-509f-464c-a7fb-c010e68adc9a",
              "parent_uuid": "45312f84-76b8-49bd-8824-2bb4dfb82559",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dc5f179b-e8af-4e98-826b-22553b3bec11",
              "parent_uuid": "45312f84-76b8-49bd-8824-2bb4dfb82559",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c55491d6-2cb5-4ff8-bfce-76d5ff4f41f4",
                  "parent_uuid": "dc5f179b-e8af-4e98-826b-22553b3bec11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "759ca231-e95b-4120-b98d-aaaa03f8f024",
              "parent_uuid": "45312f84-76b8-49bd-8824-2bb4dfb82559",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f019de28-432f-4340-9792-9c8d74bcb8c2",
                  "parent_uuid": "759ca231-e95b-4120-b98d-aaaa03f8f024",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f138bae1-3420-4a12-bc1d-43c8b1edd6fc",
              "parent_uuid": "45312f84-76b8-49bd-8824-2bb4dfb82559",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e3a2aca-f72c-4021-ac55-1d5e6b4d5c13",
                  "parent_uuid": "f138bae1-3420-4a12-bc1d-43c8b1edd6fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8bf75c98-2bc6-463f-8409-fc1962f35538",
              "parent_uuid": "45312f84-76b8-49bd-8824-2bb4dfb82559",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29485377-adc7-4fe0-813f-acfde09e2212",
                  "parent_uuid": "8bf75c98-2bc6-463f-8409-fc1962f35538",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4becf18c-be6c-4f5d-8175-e31b3f09ee5c",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e6edf71-538d-4f1d-9e45-655cea214d5a",
              "parent_uuid": "4becf18c-be6c-4f5d-8175-e31b3f09ee5c",
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
                  "21"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Prüfen Sie die Abscheider und Bürsten auf Verschleiß.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d27f2035-688a-4470-a86f-eabad8931e41",
              "parent_uuid": "4becf18c-be6c-4f5d-8175-e31b3f09ee5c",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "557fdd09-0039-4744-b462-29ce0f2b984a",
              "parent_uuid": "4becf18c-be6c-4f5d-8175-e31b3f09ee5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16f45861-4cba-41ce-9659-e828d204b9cc",
                  "parent_uuid": "557fdd09-0039-4744-b462-29ce0f2b984a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94ce5966-9370-4e4f-8e6b-d406200f055a",
              "parent_uuid": "4becf18c-be6c-4f5d-8175-e31b3f09ee5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e65db977-393e-457f-94f6-b5338f5767b6",
                  "parent_uuid": "94ce5966-9370-4e4f-8e6b-d406200f055a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd87155e-636e-4e2d-979b-259eea63df5a",
              "parent_uuid": "4becf18c-be6c-4f5d-8175-e31b3f09ee5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32cf9439-5ed6-4e94-bf1c-b5837fc6aba5",
                  "parent_uuid": "dd87155e-636e-4e2d-979b-259eea63df5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aea0ecc0-e9bf-4168-a8c9-792acf67b5dc",
              "parent_uuid": "4becf18c-be6c-4f5d-8175-e31b3f09ee5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "355ee34f-9b57-4b26-869c-95b453b7b9ff",
                  "parent_uuid": "aea0ecc0-e9bf-4168-a8c9-792acf67b5dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "872f52da-2615-4d6a-b398-90dddd4af53a",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0eb64cda-0ec6-46bf-8322-19080d0c2783",
              "parent_uuid": "872f52da-2615-4d6a-b398-90dddd4af53a",
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
                  "51"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Vision-Einheiten<br>  -Reinigen Sie die Oberfläche der Abdeckung vorsichtig mit dem Staubsauger und  mit einem Microphasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "33271371-6fc3-4121-9bda-5dbec0f3d867",
              "parent_uuid": "872f52da-2615-4d6a-b398-90dddd4af53a",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "eaa9d2b6-b652-40c7-a9dd-0327459f0358",
              "parent_uuid": "872f52da-2615-4d6a-b398-90dddd4af53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a62a479-72f5-4066-a18f-a90c75cce915",
                  "parent_uuid": "eaa9d2b6-b652-40c7-a9dd-0327459f0358",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a187f81-5a88-4897-85f8-26c5bd1648a2",
              "parent_uuid": "872f52da-2615-4d6a-b398-90dddd4af53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df5ac031-b7ae-4473-9c25-18e6576e1068",
                  "parent_uuid": "3a187f81-5a88-4897-85f8-26c5bd1648a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9935fd6d-d52c-44b4-b810-207eeb2a4276",
              "parent_uuid": "872f52da-2615-4d6a-b398-90dddd4af53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad0fb72b-34ee-4a15-9109-9544f53d6ebf",
                  "parent_uuid": "9935fd6d-d52c-44b4-b810-207eeb2a4276",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2884f26b-e28f-45a5-888a-6386d6a5710c",
              "parent_uuid": "872f52da-2615-4d6a-b398-90dddd4af53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edd7ba04-93c5-4f13-85fd-cfc1595a55b1",
                  "parent_uuid": "2884f26b-e28f-45a5-888a-6386d6a5710c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "351a30b6-331d-46c8-83ea-ec82b0eff809",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f0c67566-4bd9-4e65-90db-d2db00272ccf",
              "parent_uuid": "351a30b6-331d-46c8-83ea-ec82b0eff809",
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
                  "86"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Vision-Linsen<br>  -Reinige die Oberfläche der Linse vorsichtig mit dem Staubsauger/Druckluftpistole und mit einem Microphasertuch.<br>  -Bei Flecken auf der Linse, muss ein Microphasertuch mit wenig Senorreiniger angewendet werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2fca9c18-69ad-46cf-9934-f4e32300f76a",
              "parent_uuid": "351a30b6-331d-46c8-83ea-ec82b0eff809",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "14961108-6470-440a-87fb-75023e811344",
              "parent_uuid": "351a30b6-331d-46c8-83ea-ec82b0eff809",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37234fb1-5415-446c-901a-0821dea4b0d7",
                  "parent_uuid": "14961108-6470-440a-87fb-75023e811344",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f40eadc6-f90b-4845-8582-d21763b0ed3d",
              "parent_uuid": "351a30b6-331d-46c8-83ea-ec82b0eff809",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f41dbad-5e61-4651-8d83-786ee59ff154",
                  "parent_uuid": "f40eadc6-f90b-4845-8582-d21763b0ed3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46f4f3ee-6276-44af-acb7-052574794f90",
              "parent_uuid": "351a30b6-331d-46c8-83ea-ec82b0eff809",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8073d9e0-ab22-4327-9737-94f1a93a563e",
                  "parent_uuid": "46f4f3ee-6276-44af-acb7-052574794f90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33af1938-d9a1-4499-9ca7-3ea79786086c",
              "parent_uuid": "351a30b6-331d-46c8-83ea-ec82b0eff809",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3a32b7b-25c7-4f3d-ad84-c14f20bd951e",
                  "parent_uuid": "33af1938-d9a1-4499-9ca7-3ea79786086c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "300c7041-eb5d-46ac-a31e-0270db11ff70",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b38b486-df52-416d-a39d-6146e20e6a80",
              "parent_uuid": "300c7041-eb5d-46ac-a31e-0270db11ff70",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Speicherplatz<br>  -Überprüfe den Speicherplatz auf dem NAS, falls dieser überläuft können alte Daten gelöscht werden.<br>  -Überprüfen den Speicherplatz auf dem Lokalen Laufwerken, falls der überläuft können Logdateien gelöscht werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "510a085a-eea5-4e57-bffe-dec61a30cfdc",
              "parent_uuid": "300c7041-eb5d-46ac-a31e-0270db11ff70",
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
              "uuid": "5d04c328-c609-435c-a2fc-7f5157464d01",
              "parent_uuid": "300c7041-eb5d-46ac-a31e-0270db11ff70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d227b7ad-3076-4962-a81d-dc07dcc1af01",
                  "parent_uuid": "5d04c328-c609-435c-a2fc-7f5157464d01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32b942c0-67af-4260-89e0-e63c597864e2",
              "parent_uuid": "300c7041-eb5d-46ac-a31e-0270db11ff70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a996988-e3b5-4941-8139-50469a38b616",
                  "parent_uuid": "32b942c0-67af-4260-89e0-e63c597864e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b81e0411-37d7-469d-bd94-868d3c08f7e1",
              "parent_uuid": "300c7041-eb5d-46ac-a31e-0270db11ff70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67fef4d5-5c44-4bf3-a135-9e57618d4769",
                  "parent_uuid": "b81e0411-37d7-469d-bd94-868d3c08f7e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e71b9c3-9cf4-43f2-aa9c-e937f27970b3",
              "parent_uuid": "300c7041-eb5d-46ac-a31e-0270db11ff70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0789f396-14af-42c8-88ed-dbaca0e7e54f",
                  "parent_uuid": "9e71b9c3-9cf4-43f2-aa9c-e937f27970b3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "157959a2-d6b6-4395-8b28-1ff664efe1be",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "502bb9f7-877f-46fc-bf7b-c6af76b59f1f",
              "parent_uuid": "157959a2-d6b6-4395-8b28-1ff664efe1be",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "304c52e1-c9ba-414a-8c91-2a542accaa86",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05c0fa64-d2c7-4b4d-b248-ffc11b53be0c",
              "parent_uuid": "304c52e1-c9ba-414a-8c91-2a542accaa86",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "6a7813a8-2f43-43fb-87fb-cecc7cabd155",
          "parent_uuid": "0923fc53-6c8f-43a8-9dfb-bd614aced093",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62095499-744a-4f00-9d03-e404ebe04867",
              "parent_uuid": "6a7813a8-2f43-43fb-87fb-cecc7cabd155",
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
                  "uuid": "167f638f-b925-4fcf-a982-ac4bb03fe693",
                  "parent_uuid": "62095499-744a-4f00-9d03-e404ebe04867",
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
          "sort": 30,
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

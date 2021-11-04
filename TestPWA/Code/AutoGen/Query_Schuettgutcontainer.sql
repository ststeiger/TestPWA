
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
  "uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
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
      "uuid": "44695f6e-2133-4ac8-83f6-284cf89e974e",
      "parent_uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
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
      "uuid": "94d09b42-ea30-471b-b51d-14edcc7ef7c0",
      "parent_uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
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
      "uuid": "ea01577a-64db-454a-b3fc-1d67f4ecbee8",
      "parent_uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
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
      "uuid": "775cfb98-7f99-49fa-9717-6e1028738222",
      "parent_uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
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
      "uuid": "7b90ae48-389d-47a1-8261-55029b7bdf29",
      "parent_uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
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
      "uuid": "f3573106-62a4-4c00-900b-aaa9b80f882e",
      "parent_uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
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
      "uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
      "parent_uuid": "8303e7b4-784c-4ede-bad7-75511d83f592",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "996a612b-154d-4ff3-a594-dd46b4480999",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "0e2edc3f-a10d-4281-9fde-e21eabef923c",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "c7f04773-0421-49ca-ac67-4c47ae1f5850",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "401de842-13f4-47a4-a4c7-9fb76231e562",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "1c01df9b-cc9e-447c-8fa7-4de8d3e65c32",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "e2002fb3-ecd0-4106-aa61-c1ea017d3157",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "bf2500a1-4a06-41e9-9a95-e6af85fab698",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "22fd6237-6f5b-4809-af04-1f6aa93cb2bc",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "bcc678ed-6841-43ca-820c-94e74b725e17",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "01e7b4cc-1170-48ca-aa14-a2ba10ab62cb",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
              "uuid": "a4b77ee3-2d8e-4656-9417-a0d30dfc5789",
              "parent_uuid": "367797ee-91e9-4c5b-94fc-6bcce8bc7bbc",
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
          "uuid": "2f4f1dab-5550-4e12-99cb-223a17edabec",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3e7dc920-bf35-4b7c-945e-0f3eb99d5f57",
              "parent_uuid": "2f4f1dab-5550-4e12-99cb-223a17edabec",
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
              "uuid": "89140105-cf64-4fed-84c7-e2be65340bc4",
              "parent_uuid": "2f4f1dab-5550-4e12-99cb-223a17edabec",
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
              "uuid": "fb45778d-b847-4698-9042-56463d9a232b",
              "parent_uuid": "2f4f1dab-5550-4e12-99cb-223a17edabec",
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
              "uuid": "068a8e3b-663a-411d-b084-634ebeb885f2",
              "parent_uuid": "2f4f1dab-5550-4e12-99cb-223a17edabec",
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
          "uuid": "ff958598-2872-41ef-ac28-a61f40e6d2a1",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a58f3adb-c964-41ba-a095-a2b7fa884af5",
              "parent_uuid": "ff958598-2872-41ef-ac28-a61f40e6d2a1",
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
              "uuid": "f5626b0b-3354-4649-810d-8ccee6b49405",
              "parent_uuid": "ff958598-2872-41ef-ac28-a61f40e6d2a1",
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
              "uuid": "be523dc9-6e93-4305-b1bd-48562bacbc43",
              "parent_uuid": "ff958598-2872-41ef-ac28-a61f40e6d2a1",
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
              "uuid": "c957f124-a958-46cd-b043-df8d0530d262",
              "parent_uuid": "ff958598-2872-41ef-ac28-a61f40e6d2a1",
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
              "uuid": "419146e1-77ef-40dd-b1fe-960e4b9973f8",
              "parent_uuid": "ff958598-2872-41ef-ac28-a61f40e6d2a1",
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
              "uuid": "a611b73f-89a6-401c-a7c8-9cfaa0fb89a8",
              "parent_uuid": "ff958598-2872-41ef-ac28-a61f40e6d2a1",
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
          "uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cee4ce41-9341-4f52-92a8-c241e9b66e50",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
              "uuid": "46c822c5-175f-4063-8f9e-5a247dd93641",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
              "uuid": "b2349e27-61ca-4639-9f76-022bda7d73db",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
              "uuid": "cf797abb-be2d-482e-9763-0de997b0b0da",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
              "uuid": "538a4663-a7f7-4271-8e9c-64ccc619ad35",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
              "uuid": "2e1c3cb6-acb4-4f6e-ad46-8205e94ccbb2",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
              "uuid": "946c6d1c-554a-4c3b-a725-a739ae822e94",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
              "uuid": "36b34ea4-c8df-4fab-a7c4-7e2ff4899f0b",
              "parent_uuid": "4b4594e3-f2c6-463c-a397-5f02b2df7998",
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
          "uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4342a3bd-8805-4b7a-9ad3-88c738fdebe9",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
              "tagName": "td",
              "properties": [
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
              "uuid": "08165e22-6cca-4ad0-b8ee-16d542ca33e9",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
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
              "uuid": "a10bd7bd-3956-442a-a0f3-310d04a6d805",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
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
                  "uuid": "4c205fda-28b7-4832-b5af-07c0ca56bc5e",
                  "parent_uuid": "a10bd7bd-3956-442a-a0f3-310d04a6d805",
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
              "uuid": "12be63f8-4cbe-47f8-b1f8-b69f3525f554",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
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
              "uuid": "805dcc8f-e513-4356-bf0d-56e32975ce5e",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
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
              "uuid": "7387fd0b-325e-4d96-8f81-4f5417dcd069",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
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
              "uuid": "25a0c58a-c26e-4236-b45c-c1a2bf0b6ce7",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
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
              "uuid": "3186b186-0fcb-45da-912e-ed5167a2c4e5",
              "parent_uuid": "f3f983bb-e21d-4081-8a55-4f0b4b691068",
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
          "uuid": "4a89f10e-f92e-4bf3-96b3-77826a73c1b4",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3725e39-1274-4493-813e-c3c853c74920",
              "parent_uuid": "4a89f10e-f92e-4bf3-96b3-77826a73c1b4",
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
              "uuid": "2ffea077-29d3-45d5-9241-a8dd2b07fbfd",
              "parent_uuid": "4a89f10e-f92e-4bf3-96b3-77826a73c1b4",
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
              "uuid": "5850156d-135f-4aa9-ac22-2a83803298be",
              "parent_uuid": "4a89f10e-f92e-4bf3-96b3-77826a73c1b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c43cd950-bda6-4243-a3bb-ba707054aaf0",
                  "parent_uuid": "5850156d-135f-4aa9-ac22-2a83803298be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c9b31d6-c3a0-4cbb-967c-0d6386b4d17e",
              "parent_uuid": "4a89f10e-f92e-4bf3-96b3-77826a73c1b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "220b12e5-a861-41f5-8549-f138537c8446",
                  "parent_uuid": "9c9b31d6-c3a0-4cbb-967c-0d6386b4d17e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df7f033e-48d3-44ae-a470-73c121d04dda",
              "parent_uuid": "4a89f10e-f92e-4bf3-96b3-77826a73c1b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c272ce75-6b33-43aa-a9cb-988dcb0a9ca9",
                  "parent_uuid": "df7f033e-48d3-44ae-a470-73c121d04dda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "224f5864-b5ae-4362-bf1c-91ec0e5ae59a",
              "parent_uuid": "4a89f10e-f92e-4bf3-96b3-77826a73c1b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4d7d042-e9bd-4c32-a761-46c034f1bcea",
                  "parent_uuid": "224f5864-b5ae-4362-bf1c-91ec0e5ae59a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d7854b42-2093-40e3-b3bb-219ded182d57",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b7bde89-d220-4171-a0db-a65e81626491",
              "parent_uuid": "d7854b42-2093-40e3-b3bb-219ded182d57",
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
          "uuid": "409cca9c-8371-46d1-9a0c-b55fb757cab6",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "98f4f27c-0831-4c35-88ec-1419f7d04c5c",
              "parent_uuid": "409cca9c-8371-46d1-9a0c-b55fb757cab6",
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
          "uuid": "81b6724e-7760-41f4-acb9-cc3cace9f6ab",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d685015-99fe-47ee-8e25-311ee6bafe18",
              "parent_uuid": "81b6724e-7760-41f4-acb9-cc3cace9f6ab",
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
              "uuid": "3e2be215-85c5-42bf-968a-870ff9f78a1d",
              "parent_uuid": "81b6724e-7760-41f4-acb9-cc3cace9f6ab",
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
              "uuid": "8a46bc63-1193-44c9-92a0-b0e79c589ecf",
              "parent_uuid": "81b6724e-7760-41f4-acb9-cc3cace9f6ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6d7473f-187e-4108-abd3-6eebdcfc3a58",
                  "parent_uuid": "8a46bc63-1193-44c9-92a0-b0e79c589ecf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8d9e8f7-2eae-4a07-924c-36586b47dac8",
              "parent_uuid": "81b6724e-7760-41f4-acb9-cc3cace9f6ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "018f54fc-007d-429f-a334-c43e64971933",
                  "parent_uuid": "a8d9e8f7-2eae-4a07-924c-36586b47dac8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e969f49-05d4-431a-9e21-1b821b4c158d",
              "parent_uuid": "81b6724e-7760-41f4-acb9-cc3cace9f6ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e96f1430-5179-4a53-9e9a-d006f3793d01",
                  "parent_uuid": "9e969f49-05d4-431a-9e21-1b821b4c158d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ef0166d-82d3-464b-9654-a6c6b8e515bd",
              "parent_uuid": "81b6724e-7760-41f4-acb9-cc3cace9f6ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1b05884-ea58-4fc7-978e-6f24a49df492",
                  "parent_uuid": "7ef0166d-82d3-464b-9654-a6c6b8e515bd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "32317998-2cf8-4897-bc64-f3b7183b72c8",
          "parent_uuid": "b61e1917-d009-44b5-9ae3-e0bb9eddf1c4",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f937fe75-71f1-41f4-a307-c8063a0e78b6",
              "parent_uuid": "32317998-2cf8-4897-bc64-f3b7183b72c8",
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
              "uuid": "e14906cd-9a46-42e5-9df7-1ec0f15abe99",
              "parent_uuid": "32317998-2cf8-4897-bc64-f3b7183b72c8",
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
              "uuid": "acbfd1d0-43d3-4127-9502-0fa3c989fa61",
              "parent_uuid": "32317998-2cf8-4897-bc64-f3b7183b72c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ffdca3a-f46f-4821-92fc-2702688eb26b",
                  "parent_uuid": "acbfd1d0-43d3-4127-9502-0fa3c989fa61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63582f7e-9a2d-4257-b006-581a84047e34",
              "parent_uuid": "32317998-2cf8-4897-bc64-f3b7183b72c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9dc25796-0ff2-496f-a185-52630ce1c81b",
                  "parent_uuid": "63582f7e-9a2d-4257-b006-581a84047e34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36cb6c90-6cf6-4f3e-9570-d7bbaa15d3e6",
              "parent_uuid": "32317998-2cf8-4897-bc64-f3b7183b72c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aaf17bc7-d237-4cbb-b13d-44b81179d924",
                  "parent_uuid": "36cb6c90-6cf6-4f3e-9570-d7bbaa15d3e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c61d47aa-9b7b-4299-a8d1-ad195e46de9f",
              "parent_uuid": "32317998-2cf8-4897-bc64-f3b7183b72c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a6cf081-464e-41bb-8ce0-f982dc7394b6",
                  "parent_uuid": "c61d47aa-9b7b-4299-a8d1-ad195e46de9f",
                  "tagName": "input",
                  "properties": [
                    [
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

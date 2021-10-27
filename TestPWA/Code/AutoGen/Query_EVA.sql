
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
  "uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "4e5e6e0d-a3aa-4ff9-a8a8-327755c3ff3c",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "96f2a90b-0aad-4041-a79b-523734e403da",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "cf092fb9-f97f-4b71-98a2-1026ede42e35",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "5522e6bf-690d-4e2d-8485-48cce4b7f263",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "3d57f092-161e-411d-8cd7-35bcc726fb8e",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "442347cf-6b36-4223-9635-75c47ca85467",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "84a9afad-3fb3-41db-b0c6-286204c012ec",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
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
      "uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
      "parent_uuid": "08aa3814-8782-411c-9973-7847f8c4b6b8",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "082196fc-b1a1-4a67-9903-353db25d9631",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "95bbc0f4-324a-4554-8589-66a4b313eee6",
              "parent_uuid": "082196fc-b1a1-4a67-9903-353db25d9631",
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
              "uuid": "4cf77bdd-e730-4229-8eec-ec5f0109d170",
              "parent_uuid": "082196fc-b1a1-4a67-9903-353db25d9631",
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
              "uuid": "46cbe4dd-580c-43d6-a5ff-293738b9ba08",
              "parent_uuid": "082196fc-b1a1-4a67-9903-353db25d9631",
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
              "uuid": "39f8e3b1-39e1-4758-acde-50f5816c9c49",
              "parent_uuid": "082196fc-b1a1-4a67-9903-353db25d9631",
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
          "uuid": "c46d1f1c-ba40-47ce-a84a-a1b4a37567a4",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "97493301-111d-41b7-a290-83a256efce6f",
              "parent_uuid": "c46d1f1c-ba40-47ce-a84a-a1b4a37567a4",
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
              "uuid": "05bbaa49-336b-4fc9-b55f-1eaee522959d",
              "parent_uuid": "c46d1f1c-ba40-47ce-a84a-a1b4a37567a4",
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
              "uuid": "f00b2a74-44ff-4506-bfe1-31794daa530e",
              "parent_uuid": "c46d1f1c-ba40-47ce-a84a-a1b4a37567a4",
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
              "uuid": "803c7328-47bd-4031-ad00-55f62facf5d5",
              "parent_uuid": "c46d1f1c-ba40-47ce-a84a-a1b4a37567a4",
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
          "uuid": "b9b9eac1-92eb-49db-8676-fed2d71eb7ab",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8ad622f-4742-4f3a-99ea-0319a539c342",
              "parent_uuid": "b9b9eac1-92eb-49db-8676-fed2d71eb7ab",
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
              "uuid": "27158256-aebe-426b-abe1-b44767c6830a",
              "parent_uuid": "b9b9eac1-92eb-49db-8676-fed2d71eb7ab",
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
              "uuid": "2e940c24-274c-487c-880c-b5d6b2a47626",
              "parent_uuid": "b9b9eac1-92eb-49db-8676-fed2d71eb7ab",
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
              "uuid": "5c31fbc0-3310-4cfd-9204-3e3d6b58dee0",
              "parent_uuid": "b9b9eac1-92eb-49db-8676-fed2d71eb7ab",
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
              "uuid": "d2958a3a-cd93-45a7-a7aa-05cfe5b4f15e",
              "parent_uuid": "b9b9eac1-92eb-49db-8676-fed2d71eb7ab",
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
              "uuid": "aa7e1b30-d864-4d99-894d-1989d8841f88",
              "parent_uuid": "b9b9eac1-92eb-49db-8676-fed2d71eb7ab",
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
          "uuid": "db259a87-85ca-4120-9e00-3d72969df825",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9d4b35cb-585e-4c7c-b75c-abffbc8ffcb0",
              "parent_uuid": "db259a87-85ca-4120-9e00-3d72969df825",
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
          "uuid": "7a560e83-93f1-45a5-9b9b-efc55d6128f2",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7846162-be18-41ca-b0b8-7608cde076b1",
              "parent_uuid": "7a560e83-93f1-45a5-9b9b-efc55d6128f2",
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
              "uuid": "810f2f81-000e-4b75-b860-e99ee2c614a3",
              "parent_uuid": "7a560e83-93f1-45a5-9b9b-efc55d6128f2",
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
              "uuid": "16bc2e99-3143-490f-9559-aa1f9e7a48ef",
              "parent_uuid": "7a560e83-93f1-45a5-9b9b-efc55d6128f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6f91ac0-5d58-4efe-8055-fdb1768bb484",
                  "parent_uuid": "16bc2e99-3143-490f-9559-aa1f9e7a48ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d557937d-655a-4f48-a76a-5422fb37cb13",
              "parent_uuid": "7a560e83-93f1-45a5-9b9b-efc55d6128f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c08f5fc7-d413-465e-9d6c-f403084b6b59",
                  "parent_uuid": "d557937d-655a-4f48-a76a-5422fb37cb13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3326b6e-5884-4c7f-806a-933aa084782e",
              "parent_uuid": "7a560e83-93f1-45a5-9b9b-efc55d6128f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c7104b6-aae2-43cd-813d-d495605b9418",
                  "parent_uuid": "d3326b6e-5884-4c7f-806a-933aa084782e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84f99f75-8fd5-45c0-ba5e-a468ed0e7a09",
              "parent_uuid": "7a560e83-93f1-45a5-9b9b-efc55d6128f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80c51a5f-b04f-43f6-a082-6f49431dba44",
                  "parent_uuid": "84f99f75-8fd5-45c0-ba5e-a468ed0e7a09",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "24b7aa3b-9cb9-4908-9968-56d6aef7c5aa",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91989100-1318-4097-ba0a-1f145175cb20",
              "parent_uuid": "24b7aa3b-9cb9-4908-9968-56d6aef7c5aa",
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
              "uuid": "ae829940-1488-4812-9115-a00e53734907",
              "parent_uuid": "24b7aa3b-9cb9-4908-9968-56d6aef7c5aa",
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
              "uuid": "209a3b48-c6b1-4d21-8cca-ec36eff2f38c",
              "parent_uuid": "24b7aa3b-9cb9-4908-9968-56d6aef7c5aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11b06a88-4973-4f51-85de-09dcfedd2441",
                  "parent_uuid": "209a3b48-c6b1-4d21-8cca-ec36eff2f38c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "099104ee-12f4-4781-a5b0-5ef15e7cfe9e",
              "parent_uuid": "24b7aa3b-9cb9-4908-9968-56d6aef7c5aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "147d52bf-eca8-4000-8dd0-2426ede2c29e",
                  "parent_uuid": "099104ee-12f4-4781-a5b0-5ef15e7cfe9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f02de74-4e3b-46b7-9399-e57fffd93474",
              "parent_uuid": "24b7aa3b-9cb9-4908-9968-56d6aef7c5aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2ca28f8-f643-4b16-9458-721668bb562f",
                  "parent_uuid": "8f02de74-4e3b-46b7-9399-e57fffd93474",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "883ecfd3-e2b0-4039-a9b6-1f0cbe74af4a",
              "parent_uuid": "24b7aa3b-9cb9-4908-9968-56d6aef7c5aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2975185e-f424-4984-aa5b-1563b4d7c1eb",
                  "parent_uuid": "883ecfd3-e2b0-4039-a9b6-1f0cbe74af4a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "466df58f-7217-4106-a8f7-8b242b40d2b7",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2987818b-a9f2-4acf-83ea-92f89a897606",
              "parent_uuid": "466df58f-7217-4106-a8f7-8b242b40d2b7",
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
              "uuid": "42a1ee46-601e-4093-bffa-0e431050bce8",
              "parent_uuid": "466df58f-7217-4106-a8f7-8b242b40d2b7",
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
              "uuid": "9a4b860c-2831-4d61-8963-97aa0f2f5894",
              "parent_uuid": "466df58f-7217-4106-a8f7-8b242b40d2b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31eee445-1480-431f-81a4-31f399b11282",
                  "parent_uuid": "9a4b860c-2831-4d61-8963-97aa0f2f5894",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b2d4f57-e692-466a-906f-3acecc32592d",
              "parent_uuid": "466df58f-7217-4106-a8f7-8b242b40d2b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de6650eb-0438-4f44-b5e6-c5867067ac11",
                  "parent_uuid": "4b2d4f57-e692-466a-906f-3acecc32592d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5dedba8a-63f6-4cfb-ade7-0ad8f1ea8e1a",
              "parent_uuid": "466df58f-7217-4106-a8f7-8b242b40d2b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee482219-a967-45bf-a82e-06c1503f0b3e",
                  "parent_uuid": "5dedba8a-63f6-4cfb-ade7-0ad8f1ea8e1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6a08ff5-0a69-4851-ae78-aafcb8b304fc",
              "parent_uuid": "466df58f-7217-4106-a8f7-8b242b40d2b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef3abba4-6706-4b20-a50e-47a8eca4f0ee",
                  "parent_uuid": "e6a08ff5-0a69-4851-ae78-aafcb8b304fc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "394c994a-34d1-4d0a-b13c-4d03f0c12aee",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85f2081c-cd02-4bef-ad99-285d98ed4240",
              "parent_uuid": "394c994a-34d1-4d0a-b13c-4d03f0c12aee",
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
              "uuid": "dba9b96a-0a18-4642-98dc-995ae4668bf7",
              "parent_uuid": "394c994a-34d1-4d0a-b13c-4d03f0c12aee",
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
              "uuid": "0cb61e25-f28d-4795-a2ee-4cb793205090",
              "parent_uuid": "394c994a-34d1-4d0a-b13c-4d03f0c12aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cfabb6a-7cae-45ca-a392-30493d93ad5e",
                  "parent_uuid": "0cb61e25-f28d-4795-a2ee-4cb793205090",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cbce066-4aa5-4ad6-90ba-d05aae305037",
              "parent_uuid": "394c994a-34d1-4d0a-b13c-4d03f0c12aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ea1d386-bf27-4991-be06-dac8b7012ac0",
                  "parent_uuid": "9cbce066-4aa5-4ad6-90ba-d05aae305037",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd9c03e4-9d36-4cf9-b148-4609527b9404",
              "parent_uuid": "394c994a-34d1-4d0a-b13c-4d03f0c12aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26eb6bee-c8ff-4603-bdf2-b25d9d64029d",
                  "parent_uuid": "dd9c03e4-9d36-4cf9-b148-4609527b9404",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abbb3129-e42b-40d8-b574-c255f17eff0d",
              "parent_uuid": "394c994a-34d1-4d0a-b13c-4d03f0c12aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c5ab997-4c83-4ac2-bef2-2f829b57c3f8",
                  "parent_uuid": "abbb3129-e42b-40d8-b574-c255f17eff0d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "518b4689-1af0-475e-a9ce-d3709898adb7",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aeffc04a-4738-4d6b-883f-ff3948a5e70d",
              "parent_uuid": "518b4689-1af0-475e-a9ce-d3709898adb7",
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
              "uuid": "6d545b75-ea46-484b-837c-64070c4d698c",
              "parent_uuid": "518b4689-1af0-475e-a9ce-d3709898adb7",
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
              "uuid": "a87a8a71-818d-44a0-b7d9-8f20baae6ec7",
              "parent_uuid": "518b4689-1af0-475e-a9ce-d3709898adb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbc870e8-e4fc-4a7f-ba78-a0603c5ab824",
                  "parent_uuid": "a87a8a71-818d-44a0-b7d9-8f20baae6ec7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "210ac68c-f80e-4e26-aa5f-4b803be83330",
              "parent_uuid": "518b4689-1af0-475e-a9ce-d3709898adb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41283188-eaec-457b-a284-7d8ae03bad80",
                  "parent_uuid": "210ac68c-f80e-4e26-aa5f-4b803be83330",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f108d176-930e-4105-8f67-89d706c63b29",
              "parent_uuid": "518b4689-1af0-475e-a9ce-d3709898adb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ae7604f-2da6-40ee-a0fd-a5fe3ad2d3c1",
                  "parent_uuid": "f108d176-930e-4105-8f67-89d706c63b29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6676c3cb-5d46-493b-8609-858bb56f2de5",
              "parent_uuid": "518b4689-1af0-475e-a9ce-d3709898adb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f17e2957-8a8c-44cf-959b-57a3c020f3b0",
                  "parent_uuid": "6676c3cb-5d46-493b-8609-858bb56f2de5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "344849bb-a382-4fbe-978e-950d84a71099",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2da0b7a2-4342-4d25-b777-219d8bd06919",
              "parent_uuid": "344849bb-a382-4fbe-978e-950d84a71099",
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
              "uuid": "4a32b3a1-0745-4539-888a-d3f2a9425576",
              "parent_uuid": "344849bb-a382-4fbe-978e-950d84a71099",
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
              "uuid": "e4c0ee84-4559-4354-931e-91420f64796f",
              "parent_uuid": "344849bb-a382-4fbe-978e-950d84a71099",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "493aa878-c455-48da-82a2-1a90bbe9b715",
                  "parent_uuid": "e4c0ee84-4559-4354-931e-91420f64796f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e09cbc57-c300-4f5a-9bb3-b8170c536c1d",
              "parent_uuid": "344849bb-a382-4fbe-978e-950d84a71099",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2786743-7927-4fe8-a28d-6fa8b1101f84",
                  "parent_uuid": "e09cbc57-c300-4f5a-9bb3-b8170c536c1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4cb9a69-8e53-4b89-9f65-a690de264386",
              "parent_uuid": "344849bb-a382-4fbe-978e-950d84a71099",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25b66f60-4f92-41a2-8796-3111888bd3b3",
                  "parent_uuid": "f4cb9a69-8e53-4b89-9f65-a690de264386",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c2d5aef-c245-41be-bc01-c57bff9ae5a6",
              "parent_uuid": "344849bb-a382-4fbe-978e-950d84a71099",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d0181dc-768d-4792-aef5-7f83c6158b6e",
                  "parent_uuid": "3c2d5aef-c245-41be-bc01-c57bff9ae5a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0b34b02-e1df-4ab7-a848-f63f9853fba3",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a1b53458-d744-455a-984b-7f53c8abc643",
              "parent_uuid": "e0b34b02-e1df-4ab7-a848-f63f9853fba3",
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
              "uuid": "3daecc67-9eba-47f3-892e-6a31ff00ed3c",
              "parent_uuid": "e0b34b02-e1df-4ab7-a848-f63f9853fba3",
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
              "uuid": "d0105f81-557e-413e-936e-a862afe49107",
              "parent_uuid": "e0b34b02-e1df-4ab7-a848-f63f9853fba3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0385879e-4d88-41e3-8568-913d204a2d0a",
                  "parent_uuid": "d0105f81-557e-413e-936e-a862afe49107",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "914f064b-5f72-4a69-9cd1-edff61d92f86",
              "parent_uuid": "e0b34b02-e1df-4ab7-a848-f63f9853fba3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e8dcca5-5eb1-4157-a608-6e1c912f1c28",
                  "parent_uuid": "914f064b-5f72-4a69-9cd1-edff61d92f86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21406bf8-c0db-475a-a596-8895fe548304",
              "parent_uuid": "e0b34b02-e1df-4ab7-a848-f63f9853fba3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7b73d97-52f3-40fc-893e-2beb9467aed5",
                  "parent_uuid": "21406bf8-c0db-475a-a596-8895fe548304",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe219349-3756-4ada-b53e-7dca150109dd",
              "parent_uuid": "e0b34b02-e1df-4ab7-a848-f63f9853fba3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da06d153-244c-4efa-bfaf-6bd3621c1962",
                  "parent_uuid": "fe219349-3756-4ada-b53e-7dca150109dd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d7c05e00-c16f-4688-91a3-4c6ff780fb38",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa13fcee-4b3b-44f3-9a90-4005c670621f",
              "parent_uuid": "d7c05e00-c16f-4688-91a3-4c6ff780fb38",
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
              "uuid": "0197a0ed-b00c-4e1d-8112-81ab69d5737e",
              "parent_uuid": "d7c05e00-c16f-4688-91a3-4c6ff780fb38",
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
              "uuid": "7a48776d-b1f0-4bee-9b54-46403aecd961",
              "parent_uuid": "d7c05e00-c16f-4688-91a3-4c6ff780fb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "744158c6-d2a5-40e6-ae76-ba551bb01348",
                  "parent_uuid": "7a48776d-b1f0-4bee-9b54-46403aecd961",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06121038-0bb5-43aa-9caf-8bcf77892e16",
              "parent_uuid": "d7c05e00-c16f-4688-91a3-4c6ff780fb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0e8ba04-dd0d-4e51-a474-3fdb8ad1731f",
                  "parent_uuid": "06121038-0bb5-43aa-9caf-8bcf77892e16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b504fb14-3584-4717-aff9-d2643cb8747a",
              "parent_uuid": "d7c05e00-c16f-4688-91a3-4c6ff780fb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6c851d0-303a-49ae-b3a1-bf8e8e221571",
                  "parent_uuid": "b504fb14-3584-4717-aff9-d2643cb8747a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb28c205-a869-4e3e-a269-f41279b1e23b",
              "parent_uuid": "d7c05e00-c16f-4688-91a3-4c6ff780fb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90fe802d-8d07-4688-becc-6500e49d6ded",
                  "parent_uuid": "bb28c205-a869-4e3e-a269-f41279b1e23b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5bdcb237-5fa8-42a4-8154-673c061bf1a5",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3250820c-0fff-4436-a4e8-a1aa5419249c",
              "parent_uuid": "5bdcb237-5fa8-42a4-8154-673c061bf1a5",
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
              "uuid": "9d33833f-200d-4f98-bcda-b999784e1e26",
              "parent_uuid": "5bdcb237-5fa8-42a4-8154-673c061bf1a5",
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
              "uuid": "29b05dd8-7ebb-4087-b29c-218e5395f909",
              "parent_uuid": "5bdcb237-5fa8-42a4-8154-673c061bf1a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1342802d-007f-4b33-940b-accc12d43f61",
                  "parent_uuid": "29b05dd8-7ebb-4087-b29c-218e5395f909",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bcd38d0-5073-4fe9-9a69-4445338b3039",
              "parent_uuid": "5bdcb237-5fa8-42a4-8154-673c061bf1a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6edf6dfe-9042-40fd-8243-db541cde51e2",
                  "parent_uuid": "7bcd38d0-5073-4fe9-9a69-4445338b3039",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85a5cb06-4652-4bc5-80b0-d10b99e86999",
              "parent_uuid": "5bdcb237-5fa8-42a4-8154-673c061bf1a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53d901ad-23fb-4604-b2ca-2c37d9b78108",
                  "parent_uuid": "85a5cb06-4652-4bc5-80b0-d10b99e86999",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9628152d-f385-49af-9ebf-52e922850fb2",
              "parent_uuid": "5bdcb237-5fa8-42a4-8154-673c061bf1a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74672637-0509-4a15-a938-824924d540d1",
                  "parent_uuid": "9628152d-f385-49af-9ebf-52e922850fb2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b2049dbf-a42a-4128-b057-2771d952653c",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2e31564-dc5a-4fe2-9cbf-d8bf94e92c2f",
              "parent_uuid": "b2049dbf-a42a-4128-b057-2771d952653c",
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
              "uuid": "31d55e28-dddd-486f-9c36-2b911caf9bc3",
              "parent_uuid": "b2049dbf-a42a-4128-b057-2771d952653c",
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
              "uuid": "36ca4fea-64de-4f72-af96-849fbae410fb",
              "parent_uuid": "b2049dbf-a42a-4128-b057-2771d952653c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ea03737-4772-46f2-a4ef-376810dacde0",
                  "parent_uuid": "36ca4fea-64de-4f72-af96-849fbae410fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63dd243b-4f82-40c0-8f7a-b59dec1ef31a",
              "parent_uuid": "b2049dbf-a42a-4128-b057-2771d952653c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec43d7ab-390c-4105-a61c-af152714c31e",
                  "parent_uuid": "63dd243b-4f82-40c0-8f7a-b59dec1ef31a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4930a014-a94b-435c-b5e8-0479dc621bd7",
              "parent_uuid": "b2049dbf-a42a-4128-b057-2771d952653c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02aae3c2-d633-4620-aa8e-ef94815b64e6",
                  "parent_uuid": "4930a014-a94b-435c-b5e8-0479dc621bd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2e54563-1a42-44a3-9e48-cd5ba652b366",
              "parent_uuid": "b2049dbf-a42a-4128-b057-2771d952653c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55e75bd0-65dc-47e7-b063-ab5ef859353c",
                  "parent_uuid": "c2e54563-1a42-44a3-9e48-cd5ba652b366",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "055b75ac-f0e2-43d7-b6be-8e8a5f80dd1f",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d25dc28-2e21-4799-9c1a-1574bdb1d335",
              "parent_uuid": "055b75ac-f0e2-43d7-b6be-8e8a5f80dd1f",
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
              "uuid": "1ad801fb-4a60-4e9d-b0c2-f4a1a89ca255",
              "parent_uuid": "055b75ac-f0e2-43d7-b6be-8e8a5f80dd1f",
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
              "uuid": "f403eb8b-b8e8-4e10-8276-cd2373f4b800",
              "parent_uuid": "055b75ac-f0e2-43d7-b6be-8e8a5f80dd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ad2ee9b-afa1-472b-9183-34c002b423f6",
                  "parent_uuid": "f403eb8b-b8e8-4e10-8276-cd2373f4b800",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "787b0605-3ce8-441f-97b8-3328fd646c8a",
              "parent_uuid": "055b75ac-f0e2-43d7-b6be-8e8a5f80dd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4ca6d29-d5b6-4b9b-8900-a24c01e58615",
                  "parent_uuid": "787b0605-3ce8-441f-97b8-3328fd646c8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb1ab3f4-3033-4d8a-b4c0-e18de82249cf",
              "parent_uuid": "055b75ac-f0e2-43d7-b6be-8e8a5f80dd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6acd2dd4-2376-484c-9363-6979d02aa591",
                  "parent_uuid": "bb1ab3f4-3033-4d8a-b4c0-e18de82249cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6088725d-c129-4931-86e2-e4d2c6ed03c6",
              "parent_uuid": "055b75ac-f0e2-43d7-b6be-8e8a5f80dd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "871c9f19-b309-4e5e-9eea-f4d82cac572c",
                  "parent_uuid": "6088725d-c129-4931-86e2-e4d2c6ed03c6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2ab85df9-6607-4be3-8938-83bb617f70e3",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a76adf4b-ad0e-4384-93c2-b09064e532bc",
              "parent_uuid": "2ab85df9-6607-4be3-8938-83bb617f70e3",
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
              "uuid": "f2ad3897-4e7a-4ba2-89e1-16152e6d7de5",
              "parent_uuid": "2ab85df9-6607-4be3-8938-83bb617f70e3",
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
              "uuid": "08dec713-5f88-4326-b253-8060ee682756",
              "parent_uuid": "2ab85df9-6607-4be3-8938-83bb617f70e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcb5e08f-29a3-4a2e-8681-4adb23e02867",
                  "parent_uuid": "08dec713-5f88-4326-b253-8060ee682756",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a4204eb-26be-49de-8bc6-60c62a6a0d8a",
              "parent_uuid": "2ab85df9-6607-4be3-8938-83bb617f70e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84b9e19f-0d44-48bf-806d-e9f547d3dda0",
                  "parent_uuid": "3a4204eb-26be-49de-8bc6-60c62a6a0d8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77acd563-98c1-4c96-8983-b7eb6621357a",
              "parent_uuid": "2ab85df9-6607-4be3-8938-83bb617f70e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d048c057-377a-434b-a740-d4a43c25b1c5",
                  "parent_uuid": "77acd563-98c1-4c96-8983-b7eb6621357a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "98e6736b-9883-4b55-b83d-8e709d2955be",
              "parent_uuid": "2ab85df9-6607-4be3-8938-83bb617f70e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ef48933-57a1-46ba-90c5-5ab3cf7732cf",
                  "parent_uuid": "98e6736b-9883-4b55-b83d-8e709d2955be",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cf83747c-9394-4730-a04d-3d59572748f1",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1a072fd-1705-458c-921f-3aa1e5267f70",
              "parent_uuid": "cf83747c-9394-4730-a04d-3d59572748f1",
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
              "uuid": "1309a350-e3f2-4fa1-9773-2089025f28e9",
              "parent_uuid": "cf83747c-9394-4730-a04d-3d59572748f1",
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
              "uuid": "00115bad-de3f-403e-b0a6-86a8c3339832",
              "parent_uuid": "cf83747c-9394-4730-a04d-3d59572748f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dad47b90-ff5e-4325-8113-de98781f092d",
                  "parent_uuid": "00115bad-de3f-403e-b0a6-86a8c3339832",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4259008-e9a1-4c0f-aaac-ebd738d86d29",
              "parent_uuid": "cf83747c-9394-4730-a04d-3d59572748f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1cda53a-e7c8-497a-bf0d-a0c62a334f04",
                  "parent_uuid": "f4259008-e9a1-4c0f-aaac-ebd738d86d29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60b0ace0-6d0d-4984-a5f1-1eddd6ced33a",
              "parent_uuid": "cf83747c-9394-4730-a04d-3d59572748f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e31f36d-d371-4ea2-b5a7-b077bd00181f",
                  "parent_uuid": "60b0ace0-6d0d-4984-a5f1-1eddd6ced33a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8282cf1-9f50-4ebe-ad03-02ec3e7a65dc",
              "parent_uuid": "cf83747c-9394-4730-a04d-3d59572748f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af320aeb-b7db-44c4-9371-06b87c0956ed",
                  "parent_uuid": "e8282cf1-9f50-4ebe-ad03-02ec3e7a65dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c0b9c19a-df0c-4d8d-a702-5a96e5242a07",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26dfdb62-93e9-48ff-819d-b1cd1bb80012",
              "parent_uuid": "c0b9c19a-df0c-4d8d-a702-5a96e5242a07",
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
              "uuid": "126667ff-9e29-4d79-9c31-52610ddc55f3",
              "parent_uuid": "c0b9c19a-df0c-4d8d-a702-5a96e5242a07",
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
              "uuid": "af4731d5-1196-421a-adf4-86d4a65b9280",
              "parent_uuid": "c0b9c19a-df0c-4d8d-a702-5a96e5242a07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcf020ab-1b78-407f-995c-a7e2be0d0fd5",
                  "parent_uuid": "af4731d5-1196-421a-adf4-86d4a65b9280",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43a72f34-915d-4c5f-8be6-b2b35037e10b",
              "parent_uuid": "c0b9c19a-df0c-4d8d-a702-5a96e5242a07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61ef0281-e734-4429-aaa0-2a99375e1b9e",
                  "parent_uuid": "43a72f34-915d-4c5f-8be6-b2b35037e10b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43cee5cc-d78f-42d7-b0ad-8e14f49f1699",
              "parent_uuid": "c0b9c19a-df0c-4d8d-a702-5a96e5242a07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c38bae92-1b5e-4c88-8d5e-55305e5ed9e9",
                  "parent_uuid": "43cee5cc-d78f-42d7-b0ad-8e14f49f1699",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "732b2035-6814-4ba9-881b-9bc48daa108c",
              "parent_uuid": "c0b9c19a-df0c-4d8d-a702-5a96e5242a07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cff86858-3a00-48b6-86b4-cd7d1367c205",
                  "parent_uuid": "732b2035-6814-4ba9-881b-9bc48daa108c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "080ae154-d25b-4a1a-bd68-22bc81a21dbe",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "953d9070-2609-4bc5-bc96-66f4810e5d7d",
              "parent_uuid": "080ae154-d25b-4a1a-bd68-22bc81a21dbe",
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
          "uuid": "9b03af0d-1ea9-479a-ab6b-141ee2a5f7b0",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3cdeb87c-6582-4cab-bd10-bb17aa6e8156",
              "parent_uuid": "9b03af0d-1ea9-479a-ab6b-141ee2a5f7b0",
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
          "uuid": "07cc7285-9a13-4f01-982e-3ae77ef68e3c",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b765dff8-87a5-48fb-94ff-2814cb05dd8c",
              "parent_uuid": "07cc7285-9a13-4f01-982e-3ae77ef68e3c",
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
              "uuid": "18da9346-ff6f-4019-bc30-8c51c6456660",
              "parent_uuid": "07cc7285-9a13-4f01-982e-3ae77ef68e3c",
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
              "uuid": "840dd39b-16e7-4629-a8b8-e81e24ff382f",
              "parent_uuid": "07cc7285-9a13-4f01-982e-3ae77ef68e3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b0bf1f2-cb27-4feb-b19d-7b985ba56f5a",
                  "parent_uuid": "840dd39b-16e7-4629-a8b8-e81e24ff382f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee62813e-494e-4f99-a2b4-6c9bd381b086",
              "parent_uuid": "07cc7285-9a13-4f01-982e-3ae77ef68e3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e42aef37-a90d-4bed-af15-6e3c0cdf744d",
                  "parent_uuid": "ee62813e-494e-4f99-a2b4-6c9bd381b086",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "968027d7-f8c8-4e96-8719-9c9498e82eb3",
              "parent_uuid": "07cc7285-9a13-4f01-982e-3ae77ef68e3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd5a8288-ac7c-45dd-9198-a1148b165ea6",
                  "parent_uuid": "968027d7-f8c8-4e96-8719-9c9498e82eb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddcd80b1-d26e-421f-a0fe-9c60a4baff61",
              "parent_uuid": "07cc7285-9a13-4f01-982e-3ae77ef68e3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb5740ab-7ffd-4c6c-8096-b9fbe14c9e98",
                  "parent_uuid": "ddcd80b1-d26e-421f-a0fe-9c60a4baff61",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "57d4a83e-6f5c-421a-8fe0-bd1e9c3ff5d7",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d2a645d-03ca-49aa-a8b1-f6cf6d632951",
              "parent_uuid": "57d4a83e-6f5c-421a-8fe0-bd1e9c3ff5d7",
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
              "uuid": "6c1c598b-361e-42c2-a2e8-0b3df2ef7c2c",
              "parent_uuid": "57d4a83e-6f5c-421a-8fe0-bd1e9c3ff5d7",
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
              "uuid": "8f6b5d3b-76cd-4bec-9303-5b4c797016ad",
              "parent_uuid": "57d4a83e-6f5c-421a-8fe0-bd1e9c3ff5d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd360a54-594a-4672-89e8-d30b7fee6469",
                  "parent_uuid": "8f6b5d3b-76cd-4bec-9303-5b4c797016ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d02b87c-32d6-4e65-8232-676c353cba90",
              "parent_uuid": "57d4a83e-6f5c-421a-8fe0-bd1e9c3ff5d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f85e9a3a-2902-4d8e-8a7b-3dca2f0256b0",
                  "parent_uuid": "6d02b87c-32d6-4e65-8232-676c353cba90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84b54c6d-6ef7-40a6-bd91-d3b868cb0b8d",
              "parent_uuid": "57d4a83e-6f5c-421a-8fe0-bd1e9c3ff5d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edfa9328-ce54-4f02-80ac-6781bf813b55",
                  "parent_uuid": "84b54c6d-6ef7-40a6-bd91-d3b868cb0b8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6565b30-52af-4483-8aa2-aab908be1a5e",
              "parent_uuid": "57d4a83e-6f5c-421a-8fe0-bd1e9c3ff5d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f721a4e3-8230-4e58-9eb9-729f43f707e4",
                  "parent_uuid": "f6565b30-52af-4483-8aa2-aab908be1a5e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b384161c-c17b-4f5a-b8f5-63f910479efc",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "807bb497-5371-4c34-8ea1-0e6697084a53",
              "parent_uuid": "b384161c-c17b-4f5a-b8f5-63f910479efc",
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
              "uuid": "fe674c0b-6ae1-45d8-b0a3-b91622a64246",
              "parent_uuid": "b384161c-c17b-4f5a-b8f5-63f910479efc",
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
              "uuid": "c9409afe-3323-4538-8a13-09f6ec54c12f",
              "parent_uuid": "b384161c-c17b-4f5a-b8f5-63f910479efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cd17c26-2431-4648-83e7-86b9523e1baa",
                  "parent_uuid": "c9409afe-3323-4538-8a13-09f6ec54c12f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3e6a945-652b-4ede-ac9c-e9003185510f",
              "parent_uuid": "b384161c-c17b-4f5a-b8f5-63f910479efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c61230c-fcca-4d0f-bca6-77643881f941",
                  "parent_uuid": "c3e6a945-652b-4ede-ac9c-e9003185510f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44248c43-d00f-4cf5-b86a-809bc81023f1",
              "parent_uuid": "b384161c-c17b-4f5a-b8f5-63f910479efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b055b87f-608d-46f7-816f-f8894ef8917b",
                  "parent_uuid": "44248c43-d00f-4cf5-b86a-809bc81023f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46782fcd-61aa-4968-9b19-b1a269aa1a79",
              "parent_uuid": "b384161c-c17b-4f5a-b8f5-63f910479efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6d2b180-24e9-4bd7-ae8c-de7392cb331f",
                  "parent_uuid": "46782fcd-61aa-4968-9b19-b1a269aa1a79",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7733bb2e-8967-4d0c-80f5-af19c9673047",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c24f36c-c209-4ea4-b9b6-a809107cf217",
              "parent_uuid": "7733bb2e-8967-4d0c-80f5-af19c9673047",
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
              "uuid": "93d888a0-7cf4-4ecf-9982-f9637996ad30",
              "parent_uuid": "7733bb2e-8967-4d0c-80f5-af19c9673047",
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
              "uuid": "4dd3e95a-dee2-486b-880e-9b833a8cfd87",
              "parent_uuid": "7733bb2e-8967-4d0c-80f5-af19c9673047",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5840d242-4fff-4e47-aaf5-4229bbc3658a",
                  "parent_uuid": "4dd3e95a-dee2-486b-880e-9b833a8cfd87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7914ac6-e15d-4eba-9ff0-f3e1b10f2a5b",
              "parent_uuid": "7733bb2e-8967-4d0c-80f5-af19c9673047",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f93a199b-a14a-43ad-93ff-9ed4a280c351",
                  "parent_uuid": "d7914ac6-e15d-4eba-9ff0-f3e1b10f2a5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cbf3a050-f8ad-4316-afda-28e9232fdb69",
              "parent_uuid": "7733bb2e-8967-4d0c-80f5-af19c9673047",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e18f8a4c-bf2d-4ef9-ba6e-af27bcb8fa02",
                  "parent_uuid": "cbf3a050-f8ad-4316-afda-28e9232fdb69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be7110ee-0266-4cde-a217-5bf107ba8bd3",
              "parent_uuid": "7733bb2e-8967-4d0c-80f5-af19c9673047",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db5edde1-d00e-4933-9e24-494b1b112f02",
                  "parent_uuid": "be7110ee-0266-4cde-a217-5bf107ba8bd3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5eb04de7-8b3b-4e77-8b53-8bcc884583d2",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce7dec4f-1d46-49f4-9981-975bcc3d1e51",
              "parent_uuid": "5eb04de7-8b3b-4e77-8b53-8bcc884583d2",
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
              "uuid": "00da5faf-e6fc-455e-a9ba-09d2c33df754",
              "parent_uuid": "5eb04de7-8b3b-4e77-8b53-8bcc884583d2",
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
              "uuid": "727720bc-7665-4f29-b153-64aa3014c9c3",
              "parent_uuid": "5eb04de7-8b3b-4e77-8b53-8bcc884583d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f99f29a2-71df-478a-8cdf-176a22346538",
                  "parent_uuid": "727720bc-7665-4f29-b153-64aa3014c9c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae09c3a4-0ec9-4f5e-a1e0-020f751e6f58",
              "parent_uuid": "5eb04de7-8b3b-4e77-8b53-8bcc884583d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "452c88e7-93ef-4079-8860-b2ecdd7ad3b4",
                  "parent_uuid": "ae09c3a4-0ec9-4f5e-a1e0-020f751e6f58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acc93a3f-2cc6-4b6e-a7c8-186341be2011",
              "parent_uuid": "5eb04de7-8b3b-4e77-8b53-8bcc884583d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82e7d75e-b856-4d80-8147-98482457dcb6",
                  "parent_uuid": "acc93a3f-2cc6-4b6e-a7c8-186341be2011",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "937bd141-9a04-4ecf-b0c3-ffdc5507d7e5",
              "parent_uuid": "5eb04de7-8b3b-4e77-8b53-8bcc884583d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5108830-d0b7-4154-93dd-d7de7ce689ce",
                  "parent_uuid": "937bd141-9a04-4ecf-b0c3-ffdc5507d7e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4b1da455-7eed-41dc-a57d-2257af2bc959",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da50937a-1455-4372-a2fd-c7c8e0d4e820",
              "parent_uuid": "4b1da455-7eed-41dc-a57d-2257af2bc959",
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
              "uuid": "1c23b278-da54-4f35-a084-59560f7f7179",
              "parent_uuid": "4b1da455-7eed-41dc-a57d-2257af2bc959",
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
              "uuid": "4cbf0e46-5fa3-4648-95ff-bd3102614c44",
              "parent_uuid": "4b1da455-7eed-41dc-a57d-2257af2bc959",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69147e0b-eb14-444e-8863-07266d929960",
                  "parent_uuid": "4cbf0e46-5fa3-4648-95ff-bd3102614c44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5545b4f6-b074-4c9a-ac89-83f86fa1f9ca",
              "parent_uuid": "4b1da455-7eed-41dc-a57d-2257af2bc959",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c091359-069f-4980-b15c-cd798cba28fc",
                  "parent_uuid": "5545b4f6-b074-4c9a-ac89-83f86fa1f9ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01ec54a3-4e9b-48b4-a06f-a8cdc95b7b86",
              "parent_uuid": "4b1da455-7eed-41dc-a57d-2257af2bc959",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9e990f0-fcb9-46b4-8ad7-b7c6d9d602c9",
                  "parent_uuid": "01ec54a3-4e9b-48b4-a06f-a8cdc95b7b86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60c090dd-1e22-4aad-858f-33981b3cb155",
              "parent_uuid": "4b1da455-7eed-41dc-a57d-2257af2bc959",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7133e713-47ae-44c6-8341-19de30c657f7",
                  "parent_uuid": "60c090dd-1e22-4aad-858f-33981b3cb155",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b0ee3461-9001-47da-b5fa-a36c0c615c9d",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2817767e-1c7b-4511-a974-7280797f5edc",
              "parent_uuid": "b0ee3461-9001-47da-b5fa-a36c0c615c9d",
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
              "uuid": "0bc8b675-5d33-4b12-a7e0-c5daa14a2dd2",
              "parent_uuid": "b0ee3461-9001-47da-b5fa-a36c0c615c9d",
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
              "uuid": "1f3d1851-cd47-45b8-a1d7-fc5bde0d0392",
              "parent_uuid": "b0ee3461-9001-47da-b5fa-a36c0c615c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4cea52b8-d502-4462-9716-302e9ca102c4",
                  "parent_uuid": "1f3d1851-cd47-45b8-a1d7-fc5bde0d0392",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e262ef8f-ceeb-42d5-b58f-d45830652ab6",
              "parent_uuid": "b0ee3461-9001-47da-b5fa-a36c0c615c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a95adeb-3526-4c9b-b1b0-09c72cb675ed",
                  "parent_uuid": "e262ef8f-ceeb-42d5-b58f-d45830652ab6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f270bb3-af92-47da-a32f-a710a4042e40",
              "parent_uuid": "b0ee3461-9001-47da-b5fa-a36c0c615c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6193801a-07f3-4714-9912-a6afc427e715",
                  "parent_uuid": "1f270bb3-af92-47da-a32f-a710a4042e40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13cbdf6d-ecf9-465b-9c8f-701dccde5216",
              "parent_uuid": "b0ee3461-9001-47da-b5fa-a36c0c615c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d21b04f2-9f5f-4f27-93f9-0b66aa9ea4c5",
                  "parent_uuid": "13cbdf6d-ecf9-465b-9c8f-701dccde5216",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5281acb6-1ee2-484b-a5b6-7bdf85755a17",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e78e329-35d4-450a-afc2-2759428e1bb9",
              "parent_uuid": "5281acb6-1ee2-484b-a5b6-7bdf85755a17",
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
              "uuid": "9dc4d855-0e7d-43c7-bf5c-f08de62ee53c",
              "parent_uuid": "5281acb6-1ee2-484b-a5b6-7bdf85755a17",
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
              "uuid": "27724d48-82b0-45a2-b3f2-fd0a0e40de88",
              "parent_uuid": "5281acb6-1ee2-484b-a5b6-7bdf85755a17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d95a031-8749-482c-b068-3705832b72b8",
                  "parent_uuid": "27724d48-82b0-45a2-b3f2-fd0a0e40de88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "710d7609-e066-4fb3-8f3e-9ef7c5dae352",
              "parent_uuid": "5281acb6-1ee2-484b-a5b6-7bdf85755a17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e01a81e-1cab-446d-a664-b1e913027787",
                  "parent_uuid": "710d7609-e066-4fb3-8f3e-9ef7c5dae352",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef266bea-6601-4a13-943b-bb77bf7639f0",
              "parent_uuid": "5281acb6-1ee2-484b-a5b6-7bdf85755a17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2af87583-735c-4b2f-b33f-e38bfb4d4520",
                  "parent_uuid": "ef266bea-6601-4a13-943b-bb77bf7639f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "019cd717-aa52-428e-8ef5-acddd6204af2",
              "parent_uuid": "5281acb6-1ee2-484b-a5b6-7bdf85755a17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82320195-790e-4cdc-bad7-eea6d9a698b9",
                  "parent_uuid": "019cd717-aa52-428e-8ef5-acddd6204af2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b0959e9b-b9df-454d-9c22-9276c51845a6",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9ce53a47-44f4-4d40-9c99-37604d252fe7",
              "parent_uuid": "b0959e9b-b9df-454d-9c22-9276c51845a6",
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
          "uuid": "c5cd2f92-adc4-4d8f-b26e-0c66da9aa191",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f8deae9-4406-47a3-95ae-b38022a72220",
              "parent_uuid": "c5cd2f92-adc4-4d8f-b26e-0c66da9aa191",
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
              "uuid": "2d7bfab4-5dee-4adf-8c64-730b988f7e68",
              "parent_uuid": "c5cd2f92-adc4-4d8f-b26e-0c66da9aa191",
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
              "uuid": "46acd6a1-a03c-4678-b99c-5cc5bfce4698",
              "parent_uuid": "c5cd2f92-adc4-4d8f-b26e-0c66da9aa191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e038aea0-0776-4658-8a88-fd0bb9e46453",
                  "parent_uuid": "46acd6a1-a03c-4678-b99c-5cc5bfce4698",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67aa6e12-d14f-40c1-b54a-ef2086b85148",
              "parent_uuid": "c5cd2f92-adc4-4d8f-b26e-0c66da9aa191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fda7b62a-f45c-4a6f-856d-ae7cdbf8f337",
                  "parent_uuid": "67aa6e12-d14f-40c1-b54a-ef2086b85148",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e827880b-0d15-4730-b28c-c2f36e40029f",
              "parent_uuid": "c5cd2f92-adc4-4d8f-b26e-0c66da9aa191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94c599ed-6962-489f-b23f-8913e368f63e",
                  "parent_uuid": "e827880b-0d15-4730-b28c-c2f36e40029f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81a50ec2-d121-45dc-bb08-e02337670399",
              "parent_uuid": "c5cd2f92-adc4-4d8f-b26e-0c66da9aa191",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe5c8f95-cbbf-4e68-b59a-dcf78594872e",
                  "parent_uuid": "81a50ec2-d121-45dc-bb08-e02337670399",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a04e8e82-4dd8-462e-9f35-8f8562fc7bf0",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80c6b822-3534-46c4-8b69-bbe6852b945c",
              "parent_uuid": "a04e8e82-4dd8-462e-9f35-8f8562fc7bf0",
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
              "uuid": "27c5e9fa-fee9-470c-86ed-e2a3b70d7bcf",
              "parent_uuid": "a04e8e82-4dd8-462e-9f35-8f8562fc7bf0",
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
              "uuid": "28087b1f-f00f-4144-910c-4e0f4324b4c5",
              "parent_uuid": "a04e8e82-4dd8-462e-9f35-8f8562fc7bf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb40a10d-af48-4c39-8ee9-dd440762a27e",
                  "parent_uuid": "28087b1f-f00f-4144-910c-4e0f4324b4c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23f84cd5-41f5-4f7e-ac09-45422536df09",
              "parent_uuid": "a04e8e82-4dd8-462e-9f35-8f8562fc7bf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a36be0cd-abed-46b3-9a8e-dcf5e0e548cb",
                  "parent_uuid": "23f84cd5-41f5-4f7e-ac09-45422536df09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e186f3ad-6ec1-4edb-82bb-0f3f2f9d7a7d",
              "parent_uuid": "a04e8e82-4dd8-462e-9f35-8f8562fc7bf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8782544-c735-415c-a469-4edeab13aaca",
                  "parent_uuid": "e186f3ad-6ec1-4edb-82bb-0f3f2f9d7a7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d76eab08-7a6e-4940-92d4-2c042537f7f6",
              "parent_uuid": "a04e8e82-4dd8-462e-9f35-8f8562fc7bf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55009327-ba6f-43e9-a17a-02611dfae9e4",
                  "parent_uuid": "d76eab08-7a6e-4940-92d4-2c042537f7f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "82ad5a2b-0b91-4b30-bd39-7b2e6c4f0fac",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78faed3b-1fc8-4dc6-8b0a-7fd13b6db31d",
              "parent_uuid": "82ad5a2b-0b91-4b30-bd39-7b2e6c4f0fac",
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
          "uuid": "7f1eed8b-ecf6-477a-94fc-e40b25bfc53d",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8eb2071-73c5-48d4-bfbe-4a8d2b020299",
              "parent_uuid": "7f1eed8b-ecf6-477a-94fc-e40b25bfc53d",
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
          "uuid": "dfc69cff-e06a-44cd-b2b9-9fffd48ecc89",
          "parent_uuid": "12b7b6ed-6eae-4ac7-ab17-8300f62c3186",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01482841-2d77-437a-be21-291d6a71cbd5",
              "parent_uuid": "dfc69cff-e06a-44cd-b2b9-9fffd48ecc89",
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
                  "uuid": "5adc143a-4350-4d05-b357-5d2d5467311f",
                  "parent_uuid": "01482841-2d77-437a-be21-291d6a71cbd5",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

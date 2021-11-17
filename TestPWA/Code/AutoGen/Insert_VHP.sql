
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
  "uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "46e24ea3-45f9-492f-938a-e96c2b562d52",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "f7c908a2-21f6-4e87-a26b-aa6fea63df56",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "959b64e3-e27e-49e5-a47e-0b05919db1bc",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "9e89ee44-c8ae-4d01-858c-df7fa5eb9ca5",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "d2498b34-86c4-4a40-a9a5-0ff793ed81e0",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "04c7c830-b65d-4299-8e60-0da332ddd818",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "d28ae258-c741-4551-9067-3eb7bf3463b5",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
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
      "uuid": "613da81d-76f0-445e-967a-625796a88ea2",
      "parent_uuid": "10ecdd03-a4dc-4021-8edf-b02f50b46e71",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "571ada2e-496b-4528-b262-96d19d34537e",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "48ec34f4-f9b4-4f60-b82f-c7540ca827f4",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "64cabacf-9ba2-4ff7-b974-67b7cc689f17",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "f3e32e95-dd3c-4a05-b3df-6584f5502087",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "c3cd5e94-c71e-4de1-bdfc-a46109258d21",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "e5f7855c-9231-4a1c-a752-65c9aad52159",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "068541be-4cb3-47de-98c4-f5b5af81c46e",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "f2976bed-19fc-4375-9186-918b26946896",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "53ecb44d-39ad-4efd-ad83-5e4a85416895",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "5569edc6-f737-4add-a889-abb49b89e6b7",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
              "uuid": "16d37f0a-f2e6-4e6c-941f-1c05bc7d8acd",
              "parent_uuid": "9ee93c22-d70d-4f68-ba93-ccb17dd1acd7",
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
          "uuid": "f7e016ab-065e-47d4-9fdd-94beef173084",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "8cc12134-882f-4478-911a-7d16e88976b6",
              "parent_uuid": "f7e016ab-065e-47d4-9fdd-94beef173084",
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
              "uuid": "98bb3279-52ac-401b-b25c-4bca4cf21a64",
              "parent_uuid": "f7e016ab-065e-47d4-9fdd-94beef173084",
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
              "uuid": "3b349bce-521b-4ad5-91d9-dfc39ef8a024",
              "parent_uuid": "f7e016ab-065e-47d4-9fdd-94beef173084",
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
              "uuid": "d525ca98-b2a4-49dd-9f58-1360d88702ce",
              "parent_uuid": "f7e016ab-065e-47d4-9fdd-94beef173084",
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
          "uuid": "555e35c1-ce93-4cc7-a7f6-b5e4f2241640",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8c8114d-ebe1-44e0-89aa-7570e2098903",
              "parent_uuid": "555e35c1-ce93-4cc7-a7f6-b5e4f2241640",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c1459741-d341-429d-a4cc-889532d07636",
              "parent_uuid": "555e35c1-ce93-4cc7-a7f6-b5e4f2241640",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "max-height: 4cm;"
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
              "uuid": "00c8b7d2-dcfc-40e8-b8e7-af73bc97ec7c",
              "parent_uuid": "555e35c1-ce93-4cc7-a7f6-b5e4f2241640",
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
              "uuid": "2cdcd6e5-e8b7-4803-b19f-3fe1f1f16bcc",
              "parent_uuid": "555e35c1-ce93-4cc7-a7f6-b5e4f2241640",
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
              "uuid": "4c094dc0-5b6a-4487-a9fb-233019a8a9de",
              "parent_uuid": "555e35c1-ce93-4cc7-a7f6-b5e4f2241640",
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
              "uuid": "73dd672d-ba10-4261-a72a-a9061559763f",
              "parent_uuid": "555e35c1-ce93-4cc7-a7f6-b5e4f2241640",
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
          "uuid": "54b6e31f-5b3c-4bf6-9e7f-ff9b69218369",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c1fa7e1f-41ff-449d-9dfc-b4acf442d2b1",
              "parent_uuid": "54b6e31f-5b3c-4bf6-9e7f-ff9b69218369",
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
          "uuid": "69c5fa11-b695-4824-9914-67f9b70096ca",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f195d17e-4f77-4b10-99c2-8f2b519586a2",
              "parent_uuid": "69c5fa11-b695-4824-9914-67f9b70096ca",
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
              "uuid": "11fbceb5-2aaf-4567-9302-5221eebf7a15",
              "parent_uuid": "69c5fa11-b695-4824-9914-67f9b70096ca",
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
              "uuid": "eb349208-81c2-4087-b3c5-48ada7020bf5",
              "parent_uuid": "69c5fa11-b695-4824-9914-67f9b70096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93036d69-9608-45bb-9580-9a7ec33fce14",
                  "parent_uuid": "eb349208-81c2-4087-b3c5-48ada7020bf5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b47bbb30-0e8d-4183-a3d6-449242c92544",
              "parent_uuid": "69c5fa11-b695-4824-9914-67f9b70096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57b50620-36f4-4eae-9867-43293841b734",
                  "parent_uuid": "b47bbb30-0e8d-4183-a3d6-449242c92544",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abe687d6-56f6-42e7-a812-359e9d786c2b",
              "parent_uuid": "69c5fa11-b695-4824-9914-67f9b70096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02a08b5b-798f-4952-829a-f4f488c3fefb",
                  "parent_uuid": "abe687d6-56f6-42e7-a812-359e9d786c2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2900a0c2-0c83-446f-85d1-f1c849a0832b",
              "parent_uuid": "69c5fa11-b695-4824-9914-67f9b70096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30ccbdb8-b266-4b08-9ded-6037a2d4c12a",
                  "parent_uuid": "2900a0c2-0c83-446f-85d1-f1c849a0832b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6b9d56cd-b9a9-4ced-b645-7b2108cf5bcb",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7529de5e-3da6-4d2c-bc98-2fde36cf64c8",
              "parent_uuid": "6b9d56cd-b9a9-4ced-b645-7b2108cf5bcb",
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
              "uuid": "8433049d-8dd9-4a77-96fa-1484264704b0",
              "parent_uuid": "6b9d56cd-b9a9-4ced-b645-7b2108cf5bcb",
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
              "uuid": "cdafc67d-e3ab-4f21-ab46-6c86d30b680d",
              "parent_uuid": "6b9d56cd-b9a9-4ced-b645-7b2108cf5bcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a5c15c1-d67b-40df-a435-58799c54004c",
                  "parent_uuid": "cdafc67d-e3ab-4f21-ab46-6c86d30b680d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edb54fbd-d79f-4556-835c-4dc52469de05",
              "parent_uuid": "6b9d56cd-b9a9-4ced-b645-7b2108cf5bcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd5be7f0-5d4c-420c-976c-565e8d11eb36",
                  "parent_uuid": "edb54fbd-d79f-4556-835c-4dc52469de05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41533500-d5f1-4f35-9bd0-d719d70ba224",
              "parent_uuid": "6b9d56cd-b9a9-4ced-b645-7b2108cf5bcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e0e3fa7-e240-4885-b530-604a3c76f912",
                  "parent_uuid": "41533500-d5f1-4f35-9bd0-d719d70ba224",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4deb59e-5952-40cc-bdf3-43fc6df07e05",
              "parent_uuid": "6b9d56cd-b9a9-4ced-b645-7b2108cf5bcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74732cb6-9f13-4cfd-96df-5849f71ead5a",
                  "parent_uuid": "c4deb59e-5952-40cc-bdf3-43fc6df07e05",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9ca3b7fd-155c-46c5-a0e1-4ad0cba7f4bf",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "775f60b2-007d-4015-9a59-a772c70e0000",
              "parent_uuid": "9ca3b7fd-155c-46c5-a0e1-4ad0cba7f4bf",
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
              "uuid": "be1ffc1e-74b2-4324-a97b-5c19c1f8b6aa",
              "parent_uuid": "9ca3b7fd-155c-46c5-a0e1-4ad0cba7f4bf",
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
              "uuid": "2fc6a026-2830-4b24-b1d6-ad7d22323ee0",
              "parent_uuid": "9ca3b7fd-155c-46c5-a0e1-4ad0cba7f4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57141f0a-8e71-429e-81e9-f1777e1dbf7c",
                  "parent_uuid": "2fc6a026-2830-4b24-b1d6-ad7d22323ee0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ac44024-4ab3-45db-bf0f-e26057be5a64",
              "parent_uuid": "9ca3b7fd-155c-46c5-a0e1-4ad0cba7f4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc2da44c-8726-45b0-be3f-03ea59c3d2d4",
                  "parent_uuid": "0ac44024-4ab3-45db-bf0f-e26057be5a64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd1cabf6-c945-4425-9056-b046e0cd915a",
              "parent_uuid": "9ca3b7fd-155c-46c5-a0e1-4ad0cba7f4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c12e43cd-3d97-4062-b54b-fee66f2054b7",
                  "parent_uuid": "dd1cabf6-c945-4425-9056-b046e0cd915a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c4e52b0-97b1-46e9-85cb-65d37d09dc5c",
              "parent_uuid": "9ca3b7fd-155c-46c5-a0e1-4ad0cba7f4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70dd98f6-7240-402b-9ea3-5eaf1fddf15a",
                  "parent_uuid": "6c4e52b0-97b1-46e9-85cb-65d37d09dc5c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5edd9f57-db6d-4aea-8989-4c61e53c4f3e",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c17e630-bf86-4cf1-8b48-3cf2dbac2df7",
              "parent_uuid": "5edd9f57-db6d-4aea-8989-4c61e53c4f3e",
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
              "uuid": "02b9d2b4-ef6f-4bdd-8b9f-1202a7ce6758",
              "parent_uuid": "5edd9f57-db6d-4aea-8989-4c61e53c4f3e",
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
              "uuid": "b855ee41-3419-40b8-815e-fde1f1ed7116",
              "parent_uuid": "5edd9f57-db6d-4aea-8989-4c61e53c4f3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80731285-bcd8-42b6-89de-17ddbe61f6ce",
                  "parent_uuid": "b855ee41-3419-40b8-815e-fde1f1ed7116",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd2bdbbd-8fd5-4f9d-855f-0157923415b6",
              "parent_uuid": "5edd9f57-db6d-4aea-8989-4c61e53c4f3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "572d000a-0b32-437b-8915-1c8f71b75b8e",
                  "parent_uuid": "dd2bdbbd-8fd5-4f9d-855f-0157923415b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c03fc707-a162-4922-8abf-fa2cda8d3f03",
              "parent_uuid": "5edd9f57-db6d-4aea-8989-4c61e53c4f3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05b2cb9c-a3bc-43ac-ba2f-e5631b28dbfe",
                  "parent_uuid": "c03fc707-a162-4922-8abf-fa2cda8d3f03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "148c9df3-01aa-4f27-8c68-4ac3cfe80a98",
              "parent_uuid": "5edd9f57-db6d-4aea-8989-4c61e53c4f3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52f8c4b6-be16-42a2-85e4-ffce6787e8f5",
                  "parent_uuid": "148c9df3-01aa-4f27-8c68-4ac3cfe80a98",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ce4c420a-3167-4470-8f01-395016752283",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b10d2db-3c9c-4f2f-859b-1a3c5e3f6c84",
              "parent_uuid": "ce4c420a-3167-4470-8f01-395016752283",
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
              "uuid": "731ce670-7980-49a5-9615-21ad4da280b9",
              "parent_uuid": "ce4c420a-3167-4470-8f01-395016752283",
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
              "uuid": "5b0a02f7-3127-4768-a105-2e8ce4dd2b81",
              "parent_uuid": "ce4c420a-3167-4470-8f01-395016752283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d4520c7-8b33-483b-a5d6-4aea4ac38630",
                  "parent_uuid": "5b0a02f7-3127-4768-a105-2e8ce4dd2b81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1496d78-2f53-411b-92e6-feae7bf38a47",
              "parent_uuid": "ce4c420a-3167-4470-8f01-395016752283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d6edf33-d515-4548-90ce-cb2d95822cce",
                  "parent_uuid": "c1496d78-2f53-411b-92e6-feae7bf38a47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c473f938-4d57-43a6-979d-99d0742bd6ae",
              "parent_uuid": "ce4c420a-3167-4470-8f01-395016752283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f58490f7-c809-4fad-9a6f-8f969cd3591c",
                  "parent_uuid": "c473f938-4d57-43a6-979d-99d0742bd6ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19b7299a-b6f0-4c3f-a1a9-360e7953f53f",
              "parent_uuid": "ce4c420a-3167-4470-8f01-395016752283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a5320c2-ee76-4911-b282-ab3060c91926",
                  "parent_uuid": "19b7299a-b6f0-4c3f-a1a9-360e7953f53f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d931ff8-4bf8-440d-a3e3-f9256ba7ae93",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b6e495c-809e-476c-9757-c161663ed557",
              "parent_uuid": "9d931ff8-4bf8-440d-a3e3-f9256ba7ae93",
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
              "uuid": "c7753fd5-071f-48aa-b006-5a52a7532704",
              "parent_uuid": "9d931ff8-4bf8-440d-a3e3-f9256ba7ae93",
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
              "uuid": "8c568fa3-e0d0-48be-85fa-8dd5913902b7",
              "parent_uuid": "9d931ff8-4bf8-440d-a3e3-f9256ba7ae93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1554f4b8-664f-45e7-8f4d-bc9448cbd8ea",
                  "parent_uuid": "8c568fa3-e0d0-48be-85fa-8dd5913902b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2399ba9d-60b9-4ada-900e-31ef843e47cb",
              "parent_uuid": "9d931ff8-4bf8-440d-a3e3-f9256ba7ae93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8feb6ca6-5d7b-4d11-9b47-1da84dc9118e",
                  "parent_uuid": "2399ba9d-60b9-4ada-900e-31ef843e47cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9540a301-149b-4444-929d-d81a2688445e",
              "parent_uuid": "9d931ff8-4bf8-440d-a3e3-f9256ba7ae93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ad59d90-2e41-422f-af64-b2b50628a31f",
                  "parent_uuid": "9540a301-149b-4444-929d-d81a2688445e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7f31b11-0d4d-4026-8950-d23d4a133e9a",
              "parent_uuid": "9d931ff8-4bf8-440d-a3e3-f9256ba7ae93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c11b936a-8b68-46e6-897f-c4a803408066",
                  "parent_uuid": "c7f31b11-0d4d-4026-8950-d23d4a133e9a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2d23074-660d-49cd-b0b8-3b7ea590ff46",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a031eb9a-059c-4022-8c44-190f95cb3660",
              "parent_uuid": "c2d23074-660d-49cd-b0b8-3b7ea590ff46",
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
              "uuid": "96ddbc0a-e9e6-4a40-aa78-b7dfb573c49f",
              "parent_uuid": "c2d23074-660d-49cd-b0b8-3b7ea590ff46",
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
              "uuid": "aaf3bb0e-697b-441b-a590-eb209ee4d873",
              "parent_uuid": "c2d23074-660d-49cd-b0b8-3b7ea590ff46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d38d3b3-f6f4-4543-8086-fef5069864c3",
                  "parent_uuid": "aaf3bb0e-697b-441b-a590-eb209ee4d873",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16397a6a-5ea0-4dd4-bfc0-c4df626e9266",
              "parent_uuid": "c2d23074-660d-49cd-b0b8-3b7ea590ff46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30b1b3f5-3ab1-4e75-9c04-2e2436b2a849",
                  "parent_uuid": "16397a6a-5ea0-4dd4-bfc0-c4df626e9266",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3c720ac-3b80-4132-9e1b-8c3fcae1a8fd",
              "parent_uuid": "c2d23074-660d-49cd-b0b8-3b7ea590ff46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33ce6f1d-c859-44b2-8a14-0fbb3ad7b53c",
                  "parent_uuid": "d3c720ac-3b80-4132-9e1b-8c3fcae1a8fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "578f630e-6175-44b7-8e07-3f9218718e2c",
              "parent_uuid": "c2d23074-660d-49cd-b0b8-3b7ea590ff46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3f81317-5cfd-4cfe-8a85-3983d5eb9b61",
                  "parent_uuid": "578f630e-6175-44b7-8e07-3f9218718e2c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "22840997-9bbc-4367-8e98-723bf8da2c19",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e43c019c-d42e-4631-9a0d-abd1b7f8d80e",
              "parent_uuid": "22840997-9bbc-4367-8e98-723bf8da2c19",
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
              "uuid": "908e675f-005c-4b88-8623-66b1f9798b83",
              "parent_uuid": "22840997-9bbc-4367-8e98-723bf8da2c19",
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
              "uuid": "42afc60f-505b-45c5-82e6-2c473e936763",
              "parent_uuid": "22840997-9bbc-4367-8e98-723bf8da2c19",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "204dce8a-ff43-4f90-b014-454b4d049c63",
                  "parent_uuid": "42afc60f-505b-45c5-82e6-2c473e936763",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85cac5d5-1a45-433e-93ac-7455d8be1699",
              "parent_uuid": "22840997-9bbc-4367-8e98-723bf8da2c19",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "530cc6b4-6611-47fd-b55f-45e6953d386d",
                  "parent_uuid": "85cac5d5-1a45-433e-93ac-7455d8be1699",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "310d0f55-1235-4962-9db5-523649da8ffa",
              "parent_uuid": "22840997-9bbc-4367-8e98-723bf8da2c19",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cac44ece-9698-4ad6-9d79-a0a347a53a86",
                  "parent_uuid": "310d0f55-1235-4962-9db5-523649da8ffa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8cbf823-4cc7-4a12-8132-64798f0402c3",
              "parent_uuid": "22840997-9bbc-4367-8e98-723bf8da2c19",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28170e7e-f8d0-4cff-addf-0391ca90ad4a",
                  "parent_uuid": "f8cbf823-4cc7-4a12-8132-64798f0402c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af75d6c8-2241-44af-ae6c-988f13aea08a",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "233036d3-6e4b-41af-8227-b8bcef2c7d6c",
              "parent_uuid": "af75d6c8-2241-44af-ae6c-988f13aea08a",
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
          "uuid": "6f188cc0-ee59-4481-b231-b6b9e5769d9d",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d990206e-36d0-48e3-a486-f83e28434975",
              "parent_uuid": "6f188cc0-ee59-4481-b231-b6b9e5769d9d",
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
              "uuid": "cf216c8d-16d9-4c87-b1a5-a50d796a9f7c",
              "parent_uuid": "6f188cc0-ee59-4481-b231-b6b9e5769d9d",
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
              "uuid": "bd3bcf95-6cef-4d52-b04f-2c5046b85d52",
              "parent_uuid": "6f188cc0-ee59-4481-b231-b6b9e5769d9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "034b1fe7-844c-4ffd-8505-0941be288ce1",
                  "parent_uuid": "bd3bcf95-6cef-4d52-b04f-2c5046b85d52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5aa7e1b9-9c5d-4dff-bc37-9fb5c3f22598",
              "parent_uuid": "6f188cc0-ee59-4481-b231-b6b9e5769d9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05ca7d63-78a9-468c-b949-c096aee80549",
                  "parent_uuid": "5aa7e1b9-9c5d-4dff-bc37-9fb5c3f22598",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b57341a-c1e6-4465-b9f8-6e1d1dee3b1d",
              "parent_uuid": "6f188cc0-ee59-4481-b231-b6b9e5769d9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10210016-a8ef-4701-b2d2-1cb32ff861a7",
                  "parent_uuid": "1b57341a-c1e6-4465-b9f8-6e1d1dee3b1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a49a1f8-853a-4d77-9acb-a00402c98f9d",
              "parent_uuid": "6f188cc0-ee59-4481-b231-b6b9e5769d9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01fd7890-39b1-4e16-bb84-1f2a0d5f42fc",
                  "parent_uuid": "0a49a1f8-853a-4d77-9acb-a00402c98f9d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3c5b5ee9-d80f-4194-9c5a-e9eb8e013a7b",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c010dbd6-d204-4a89-a5da-b8d8daab2074",
              "parent_uuid": "3c5b5ee9-d80f-4194-9c5a-e9eb8e013a7b",
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
          "uuid": "eac7cce0-6ba8-43cd-8a5c-c9c21ba9790d",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bc9550d-e024-4311-b6b1-c1ca22d601bd",
              "parent_uuid": "eac7cce0-6ba8-43cd-8a5c-c9c21ba9790d",
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
          "uuid": "98ea8eb9-e506-4032-8410-147034a2ada7",
          "parent_uuid": "613da81d-76f0-445e-967a-625796a88ea2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80943c70-a665-4115-a503-a1adc1e6bb99",
              "parent_uuid": "98ea8eb9-e506-4032-8410-147034a2ada7",
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
                  "uuid": "06857366-c21b-45f7-a149-4c24516bb1c4",
                  "parent_uuid": "80943c70-a665-4115-a503-a1adc1e6bb99",
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

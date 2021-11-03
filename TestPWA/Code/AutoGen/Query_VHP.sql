
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
  "uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "525e33b6-dc87-4c5d-9446-6b15c522ea56",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "c44062c1-6ed4-4d56-89e1-9040148ede84",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "e9cfba71-9582-47c9-89ef-f7f8687b48da",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "0bdcc07c-0870-4c47-a6b7-5d5939a93766",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "2c5ced8b-be52-4393-8c5e-7471ac4f6ca1",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "d4fb6016-077e-4015-9121-dc48ebf77949",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "34825788-4be1-431e-aacf-608aa9232a6a",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
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
      "uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
      "parent_uuid": "ce6d065c-dcfb-4589-8156-1da2ebc455f1",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "06090371-3a5d-4e3c-a37f-6878632280c7",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "723f7fc6-452d-4240-8294-1e8e1778671b",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "1d4f6f3e-9158-4074-a180-70dc2cb86653",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "5276d75c-a511-4439-b9ac-557390e87991",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "0c0cd269-ce65-4a8e-a9ed-1d35292e8460",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "06e222ca-026a-4a8a-a0ec-a5d66ba4d66f",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "3ac57e5c-4a49-466c-b795-6635f9bb5f66",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "0ba55a25-4de7-420c-a0cf-65f0cb808dcc",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "df0eab71-7c1b-4dcd-9d0d-3acc1ad43f28",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "b07fbccc-2b0c-479d-8c4e-b525e4a30f02",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
              "uuid": "1d9c0b78-31eb-4b2c-985d-55269587406e",
              "parent_uuid": "abe5048d-101f-446f-b2f9-bf7be9dcf507",
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
          "uuid": "c9f2fa78-ae0f-473d-8d12-409f79ae3995",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5eab4740-aecd-4e96-9daf-1173ac04a705",
              "parent_uuid": "c9f2fa78-ae0f-473d-8d12-409f79ae3995",
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
              "uuid": "968c5cb7-9cfd-4d3f-896d-1be95739c24b",
              "parent_uuid": "c9f2fa78-ae0f-473d-8d12-409f79ae3995",
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
              "uuid": "01bb60e2-bf38-4834-911d-40f0e50a153d",
              "parent_uuid": "c9f2fa78-ae0f-473d-8d12-409f79ae3995",
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
              "uuid": "65564bc6-2049-4b4d-8ca3-7d7ca6eecfe1",
              "parent_uuid": "c9f2fa78-ae0f-473d-8d12-409f79ae3995",
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
          "uuid": "859888c9-975d-4d06-957a-7ddf0cdd3238",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1173606-01c7-49b5-8fd8-7e7515fa81a9",
              "parent_uuid": "859888c9-975d-4d06-957a-7ddf0cdd3238",
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
              "uuid": "8d2d3156-1112-4453-8a02-b242ee89c5f5",
              "parent_uuid": "859888c9-975d-4d06-957a-7ddf0cdd3238",
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
              "uuid": "0953d3fa-b739-43d8-830f-08cd47f3807f",
              "parent_uuid": "859888c9-975d-4d06-957a-7ddf0cdd3238",
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
              "uuid": "524d32ca-9bdc-4495-956b-34a5d2105dc9",
              "parent_uuid": "859888c9-975d-4d06-957a-7ddf0cdd3238",
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
              "uuid": "23e9fd74-56ed-4d66-9613-4d9943536598",
              "parent_uuid": "859888c9-975d-4d06-957a-7ddf0cdd3238",
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
              "uuid": "3531968c-56db-4e3c-b8dc-cc5c8130055a",
              "parent_uuid": "859888c9-975d-4d06-957a-7ddf0cdd3238",
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
          "uuid": "32ff3baa-50eb-4c6e-ab6c-af67689b21a5",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "274a640e-52fc-43df-bac0-e8355f603e41",
              "parent_uuid": "32ff3baa-50eb-4c6e-ab6c-af67689b21a5",
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
          "uuid": "46f1b328-b439-427c-bb49-bf4142a36d78",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1774c855-58fe-4df2-943d-c621490a06f3",
              "parent_uuid": "46f1b328-b439-427c-bb49-bf4142a36d78",
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
              "uuid": "93ce2179-e208-4092-92b4-c78bd96c475c",
              "parent_uuid": "46f1b328-b439-427c-bb49-bf4142a36d78",
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
              "uuid": "81543c7d-398c-479e-9df4-e626fda8a99a",
              "parent_uuid": "46f1b328-b439-427c-bb49-bf4142a36d78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "feb1ba08-63cc-41ba-a6c8-3c791c9d020b",
                  "parent_uuid": "81543c7d-398c-479e-9df4-e626fda8a99a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8baf37c-e592-487a-9db6-f5324397ae4f",
              "parent_uuid": "46f1b328-b439-427c-bb49-bf4142a36d78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "997bc819-f35c-414e-847f-e1c2b103eed1",
                  "parent_uuid": "a8baf37c-e592-487a-9db6-f5324397ae4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9587087-c30b-438d-8d00-b58f2768cc8c",
              "parent_uuid": "46f1b328-b439-427c-bb49-bf4142a36d78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "add8a9c1-3986-4230-b0d2-4d7bf2ecc1a2",
                  "parent_uuid": "b9587087-c30b-438d-8d00-b58f2768cc8c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60bddff7-feac-485f-84e2-f6f0499fba5c",
              "parent_uuid": "46f1b328-b439-427c-bb49-bf4142a36d78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16414173-1f16-46e4-8663-12415fc95885",
                  "parent_uuid": "60bddff7-feac-485f-84e2-f6f0499fba5c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f4ad463e-8461-4e98-9b43-78f04fb9cc3b",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37926a4b-6a6b-4219-846b-f83f4b5bdeda",
              "parent_uuid": "f4ad463e-8461-4e98-9b43-78f04fb9cc3b",
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
              "uuid": "ca9b32ec-118d-4f39-8469-1185863eda11",
              "parent_uuid": "f4ad463e-8461-4e98-9b43-78f04fb9cc3b",
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
              "uuid": "4de485bb-3acf-457e-82b2-5fcd92d2b9a3",
              "parent_uuid": "f4ad463e-8461-4e98-9b43-78f04fb9cc3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ba7a01d-0703-48c2-96ea-02b964739123",
                  "parent_uuid": "4de485bb-3acf-457e-82b2-5fcd92d2b9a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05b77163-378d-4c66-b6e4-87af5ae653d6",
              "parent_uuid": "f4ad463e-8461-4e98-9b43-78f04fb9cc3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebf82f4a-07eb-4ef5-9968-db3ed1f1452a",
                  "parent_uuid": "05b77163-378d-4c66-b6e4-87af5ae653d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f66b135-d568-4e87-b203-79aeeabf37f2",
              "parent_uuid": "f4ad463e-8461-4e98-9b43-78f04fb9cc3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db0c5b9b-6e49-40f3-b315-1281a47036f1",
                  "parent_uuid": "8f66b135-d568-4e87-b203-79aeeabf37f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "612d32ab-5800-4f44-99c6-bb60b968d5f8",
              "parent_uuid": "f4ad463e-8461-4e98-9b43-78f04fb9cc3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0171a11c-b682-462d-934c-d71c5efbfcfe",
                  "parent_uuid": "612d32ab-5800-4f44-99c6-bb60b968d5f8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a04a1711-ecad-4e8c-95ba-1a42601b8ea4",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04f9fe5e-6d62-4490-8146-154afcb5a64a",
              "parent_uuid": "a04a1711-ecad-4e8c-95ba-1a42601b8ea4",
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
              "uuid": "e768d4ff-6960-4a83-ae84-416cbb98706f",
              "parent_uuid": "a04a1711-ecad-4e8c-95ba-1a42601b8ea4",
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
              "uuid": "2e790919-ec0f-4c77-add6-f20856db0186",
              "parent_uuid": "a04a1711-ecad-4e8c-95ba-1a42601b8ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9e46596-f729-4569-b31c-453d8af411d6",
                  "parent_uuid": "2e790919-ec0f-4c77-add6-f20856db0186",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6febca8b-76ee-4f72-a364-fed4026441d3",
              "parent_uuid": "a04a1711-ecad-4e8c-95ba-1a42601b8ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b0e6fe4-d8cb-4706-b3aa-240a8828c9b7",
                  "parent_uuid": "6febca8b-76ee-4f72-a364-fed4026441d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95c9cab1-a6ce-484a-9086-5a0b2d23d7cd",
              "parent_uuid": "a04a1711-ecad-4e8c-95ba-1a42601b8ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "822fe713-08f0-4986-bf11-4a238753311f",
                  "parent_uuid": "95c9cab1-a6ce-484a-9086-5a0b2d23d7cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32e39940-71fc-427d-b583-9d8493a27e13",
              "parent_uuid": "a04a1711-ecad-4e8c-95ba-1a42601b8ea4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27c12ffd-4f4e-4a52-8ca4-da7f36474899",
                  "parent_uuid": "32e39940-71fc-427d-b583-9d8493a27e13",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5e61fcf7-d0f3-4256-9203-4cca02598c81",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f876774-b41e-48f6-bd42-dfc3bfb49f2b",
              "parent_uuid": "5e61fcf7-d0f3-4256-9203-4cca02598c81",
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
              "uuid": "60a7d847-bf59-4c6b-82fd-9f72baad1637",
              "parent_uuid": "5e61fcf7-d0f3-4256-9203-4cca02598c81",
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
              "uuid": "c7ecb4b0-6f32-4512-82b9-ce9d925db5ef",
              "parent_uuid": "5e61fcf7-d0f3-4256-9203-4cca02598c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e17ad7d-9ae0-411e-b706-2a654560cc84",
                  "parent_uuid": "c7ecb4b0-6f32-4512-82b9-ce9d925db5ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b679ec86-d0fa-4a61-aab2-d0cad53ef2d0",
              "parent_uuid": "5e61fcf7-d0f3-4256-9203-4cca02598c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a36572ab-508f-46f0-9dde-163512a01542",
                  "parent_uuid": "b679ec86-d0fa-4a61-aab2-d0cad53ef2d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e368dd0f-293e-4cc0-90e5-b2fe3711625f",
              "parent_uuid": "5e61fcf7-d0f3-4256-9203-4cca02598c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "367b38a6-fdbe-4ec4-a099-1c619c30a2e1",
                  "parent_uuid": "e368dd0f-293e-4cc0-90e5-b2fe3711625f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c0efd6f-166f-4162-9582-17fe520236f4",
              "parent_uuid": "5e61fcf7-d0f3-4256-9203-4cca02598c81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6426f771-2b27-4744-a9b9-83d7de7621fa",
                  "parent_uuid": "4c0efd6f-166f-4162-9582-17fe520236f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "730f0a11-f854-4fbe-af9b-20ebebbdb3ca",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "674ef5c7-cfea-4539-b5dd-42a2c0a4d50d",
              "parent_uuid": "730f0a11-f854-4fbe-af9b-20ebebbdb3ca",
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
              "uuid": "bc960b99-2524-49b4-9b75-e798673171c5",
              "parent_uuid": "730f0a11-f854-4fbe-af9b-20ebebbdb3ca",
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
              "uuid": "69a64368-8b04-4c24-8656-e6720af85cb2",
              "parent_uuid": "730f0a11-f854-4fbe-af9b-20ebebbdb3ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20cdc626-936a-41cc-9093-a121fa536dc7",
                  "parent_uuid": "69a64368-8b04-4c24-8656-e6720af85cb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1792978-2205-4237-9ea3-b9dbe1dbe19f",
              "parent_uuid": "730f0a11-f854-4fbe-af9b-20ebebbdb3ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b41d3711-1a6f-4984-8639-f2e15414590f",
                  "parent_uuid": "b1792978-2205-4237-9ea3-b9dbe1dbe19f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b53177e-0410-4075-8583-527b38f97f13",
              "parent_uuid": "730f0a11-f854-4fbe-af9b-20ebebbdb3ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7357d244-9e97-45ae-b225-8ddb95769375",
                  "parent_uuid": "2b53177e-0410-4075-8583-527b38f97f13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbbcf953-4f43-4182-840c-74ae17dde161",
              "parent_uuid": "730f0a11-f854-4fbe-af9b-20ebebbdb3ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c711e0bf-7b95-4030-b7d2-69558f4e5164",
                  "parent_uuid": "dbbcf953-4f43-4182-840c-74ae17dde161",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9beb5f2e-34a1-4137-a327-46bebda8657e",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91ff2497-e7b6-45cf-8d8e-9a1f9fe65510",
              "parent_uuid": "9beb5f2e-34a1-4137-a327-46bebda8657e",
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
              "uuid": "a25919cb-6b9d-4baa-9321-28d21e2e450d",
              "parent_uuid": "9beb5f2e-34a1-4137-a327-46bebda8657e",
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
              "uuid": "d31144fe-70df-43f6-a769-229fb028b83e",
              "parent_uuid": "9beb5f2e-34a1-4137-a327-46bebda8657e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45dfe664-65fe-40ad-9eda-e2e30074536b",
                  "parent_uuid": "d31144fe-70df-43f6-a769-229fb028b83e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7f436dc-0d73-49bd-ac8e-a3caac3fee86",
              "parent_uuid": "9beb5f2e-34a1-4137-a327-46bebda8657e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41b9c99f-a0f3-44ca-8ed2-4cc8d8dc30d7",
                  "parent_uuid": "a7f436dc-0d73-49bd-ac8e-a3caac3fee86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cf816c5-7dbf-492f-bac0-daee6582332a",
              "parent_uuid": "9beb5f2e-34a1-4137-a327-46bebda8657e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fe9ec96-2727-4eba-ac94-bf883928ac2c",
                  "parent_uuid": "1cf816c5-7dbf-492f-bac0-daee6582332a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eec44730-6f97-43e0-b8aa-654f35d112e8",
              "parent_uuid": "9beb5f2e-34a1-4137-a327-46bebda8657e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2672ea6c-c273-41cb-a8b9-ab77c6382a20",
                  "parent_uuid": "eec44730-6f97-43e0-b8aa-654f35d112e8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a2ea647b-50cd-4cce-8133-02bdf8a8734c",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cceb1e5-ca86-4a3b-9c0d-0fdf3e46ff88",
              "parent_uuid": "a2ea647b-50cd-4cce-8133-02bdf8a8734c",
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
              "uuid": "4de81538-9bad-4f9f-8791-9bfe8738f940",
              "parent_uuid": "a2ea647b-50cd-4cce-8133-02bdf8a8734c",
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
              "uuid": "3830225e-08bc-4bb6-ad77-cf7fe8039c20",
              "parent_uuid": "a2ea647b-50cd-4cce-8133-02bdf8a8734c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddf6f049-21c0-42bd-9881-a8efdb7442ae",
                  "parent_uuid": "3830225e-08bc-4bb6-ad77-cf7fe8039c20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "694ca0c9-ff27-48a0-9acb-3a6502114ca2",
              "parent_uuid": "a2ea647b-50cd-4cce-8133-02bdf8a8734c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06d9e155-1462-4332-8b19-4ba0bf2d0078",
                  "parent_uuid": "694ca0c9-ff27-48a0-9acb-3a6502114ca2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e86a442d-5dfd-4582-88e6-524806cd33fa",
              "parent_uuid": "a2ea647b-50cd-4cce-8133-02bdf8a8734c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c59408cc-6891-4b59-9a4e-0689cad62502",
                  "parent_uuid": "e86a442d-5dfd-4582-88e6-524806cd33fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73e3f250-d616-4cc7-bf4f-0e5bf2b401b5",
              "parent_uuid": "a2ea647b-50cd-4cce-8133-02bdf8a8734c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a1c18f4-e370-490e-9a33-c4857ef38c4a",
                  "parent_uuid": "73e3f250-d616-4cc7-bf4f-0e5bf2b401b5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "676b6189-54a6-4c10-a52a-79f9d4319b88",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f2c351a-bbff-4897-af3b-3682486343ea",
              "parent_uuid": "676b6189-54a6-4c10-a52a-79f9d4319b88",
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
              "uuid": "dcabc8cc-525b-4573-9114-2db561b2ef4c",
              "parent_uuid": "676b6189-54a6-4c10-a52a-79f9d4319b88",
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
              "uuid": "749dcfcc-2524-4e83-9ac5-788a07b641ac",
              "parent_uuid": "676b6189-54a6-4c10-a52a-79f9d4319b88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "164ee330-a614-4026-b232-965f844de988",
                  "parent_uuid": "749dcfcc-2524-4e83-9ac5-788a07b641ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1779e80-0c8a-4ae5-8b82-2f56f1b77313",
              "parent_uuid": "676b6189-54a6-4c10-a52a-79f9d4319b88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02c36210-baa5-4812-81ac-2f9406897bed",
                  "parent_uuid": "a1779e80-0c8a-4ae5-8b82-2f56f1b77313",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "168656be-58aa-492d-82aa-97f432b892d1",
              "parent_uuid": "676b6189-54a6-4c10-a52a-79f9d4319b88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa113f8f-e290-495e-b3e3-cae0acb93145",
                  "parent_uuid": "168656be-58aa-492d-82aa-97f432b892d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b7ee4b1-84b4-4497-8c18-1b9d8e925289",
              "parent_uuid": "676b6189-54a6-4c10-a52a-79f9d4319b88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "445cd822-cc45-474e-9930-80853ad44961",
                  "parent_uuid": "0b7ee4b1-84b4-4497-8c18-1b9d8e925289",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8221e205-4380-43c6-ad31-85f0dccc92bb",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "00bc8919-7f89-4455-9095-d4313235eb4a",
              "parent_uuid": "8221e205-4380-43c6-ad31-85f0dccc92bb",
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
          "uuid": "2ca27b06-8827-42ea-bb30-7257a0a159f7",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed297766-28c3-40af-a23b-0c9e8ae730bc",
              "parent_uuid": "2ca27b06-8827-42ea-bb30-7257a0a159f7",
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
              "uuid": "7664402e-f1a8-4613-a7a8-1d3a48523340",
              "parent_uuid": "2ca27b06-8827-42ea-bb30-7257a0a159f7",
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
              "uuid": "86afdc7d-cbfb-4b5a-902d-b652ad50a877",
              "parent_uuid": "2ca27b06-8827-42ea-bb30-7257a0a159f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a11edc78-afbf-451b-a46b-318c21a42af0",
                  "parent_uuid": "86afdc7d-cbfb-4b5a-902d-b652ad50a877",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68fd9d55-38d3-44eb-9b2e-a04f80e92476",
              "parent_uuid": "2ca27b06-8827-42ea-bb30-7257a0a159f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1f769a4-f2d7-4ce0-aaf0-29dee17fc458",
                  "parent_uuid": "68fd9d55-38d3-44eb-9b2e-a04f80e92476",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9abc6a98-be17-4d20-afad-3f8da93ef883",
              "parent_uuid": "2ca27b06-8827-42ea-bb30-7257a0a159f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79786a4f-a9eb-4111-a3b2-a21fe9f41777",
                  "parent_uuid": "9abc6a98-be17-4d20-afad-3f8da93ef883",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b97079b-b4f2-4c33-a91b-9a715cf419f7",
              "parent_uuid": "2ca27b06-8827-42ea-bb30-7257a0a159f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2db8b5bf-afb5-4654-b1e5-da25969c7be4",
                  "parent_uuid": "1b97079b-b4f2-4c33-a91b-9a715cf419f7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d059a47-ea17-4e6c-a665-2c6fc6700757",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ada750b4-4ccb-4da3-b56c-1820e50f954d",
              "parent_uuid": "2d059a47-ea17-4e6c-a665-2c6fc6700757",
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
          "uuid": "37e130e7-7c8f-4237-b602-e3290b8a2d40",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "45464b88-63d3-4f08-83c5-2c9c444fe484",
              "parent_uuid": "37e130e7-7c8f-4237-b602-e3290b8a2d40",
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
          "uuid": "480bb059-876b-4737-9815-6e62e1ac7a29",
          "parent_uuid": "70f666eb-617e-4dc1-baba-a73262f2a5be",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "202eab5a-8146-4e46-b778-6e7632f6006b",
              "parent_uuid": "480bb059-876b-4737-9815-6e62e1ac7a29",
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
                  "uuid": "6d4edc05-e3c0-4df0-83c9-2f31424d309a",
                  "parent_uuid": "202eab5a-8146-4e46-b778-6e7632f6006b",
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

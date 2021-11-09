
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
  "uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "d79b3ce5-275c-475e-a45c-42541003683d",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "9eabcf34-8e02-4806-b3a1-b9a8b6f7e5fc",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "a4b8b6c6-0439-4c0e-b9e5-6476fa7a79e6",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "cc3306e1-6fee-4b18-a6ef-7ecbb9a51ed0",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "04d21884-12b8-43d0-80f0-b1bfd7c51ba6",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "3139b235-c6c9-4bdc-be30-e3333e91fe6e",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "8bfefd39-bcec-41d3-8770-fc757cd24d15",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
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
      "uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
      "parent_uuid": "f241797d-feb2-4424-a7fc-702f96d3c6bd",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "afbe466a-793d-43fc-902a-42dd2503e004",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "dac01271-18d3-4bc5-962d-b8b08b56fef5",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "2c4d8911-a319-4e5f-8db0-6e613cd2da24",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "7641e0f4-f453-48b3-8c17-d332f8549426",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "ea0c11be-7319-4efe-a38c-a9ec3e0f3ce9",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "711fe6cb-e559-4e36-823c-840bbb1b8c99",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "1fc8adc1-9762-4b3a-a6b7-c9f84722be3f",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "f68dff70-88d0-4cac-8775-b4c06b4be441",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "73d8fa8b-26ac-4124-8b64-fb4fba5d6518",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "78f982d2-442f-4e83-866e-72842cc1500c",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
              "uuid": "c56a36d0-995a-4390-adc8-6e097d3fdfee",
              "parent_uuid": "6979873b-32f3-4150-97c9-a2758cf628d6",
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
          "uuid": "c69a5d06-4365-4b42-8cb5-0670c37b0307",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "ee1f0b03-290d-461a-b182-cbfafc5c138a",
              "parent_uuid": "c69a5d06-4365-4b42-8cb5-0670c37b0307",
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
              "uuid": "cc67e0ac-f000-458f-99a9-d16ac2cd06c1",
              "parent_uuid": "c69a5d06-4365-4b42-8cb5-0670c37b0307",
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
              "uuid": "c727c8b9-3031-424c-9d13-ea7241d4654f",
              "parent_uuid": "c69a5d06-4365-4b42-8cb5-0670c37b0307",
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
              "uuid": "6757e480-014d-4bb2-8601-e6b9a873ca09",
              "parent_uuid": "c69a5d06-4365-4b42-8cb5-0670c37b0307",
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
          "uuid": "305562d5-2770-4dc3-8b16-1477200ec2df",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "44633bdc-2d53-4b02-aac5-a08ce12a8d01",
              "parent_uuid": "305562d5-2770-4dc3-8b16-1477200ec2df",
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
              "uuid": "050eb61b-eaa9-40db-beec-ed6a7757998a",
              "parent_uuid": "305562d5-2770-4dc3-8b16-1477200ec2df",
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
              "uuid": "26710cb0-d4f5-4b06-b381-87997cb8b7e4",
              "parent_uuid": "305562d5-2770-4dc3-8b16-1477200ec2df",
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
              "uuid": "da35c302-0f9d-4d92-941f-a165cb0d2883",
              "parent_uuid": "305562d5-2770-4dc3-8b16-1477200ec2df",
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
              "uuid": "6c5cbb7a-fcc0-4159-938d-e7d65224a03e",
              "parent_uuid": "305562d5-2770-4dc3-8b16-1477200ec2df",
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
              "uuid": "fbe808d3-c667-49ee-8b3d-ed12ac000e6d",
              "parent_uuid": "305562d5-2770-4dc3-8b16-1477200ec2df",
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
          "uuid": "b2778824-61cd-4f63-87c4-314153b106be",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "328983e7-2c51-4a16-96bf-9a5de62a87b9",
              "parent_uuid": "b2778824-61cd-4f63-87c4-314153b106be",
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
          "uuid": "035b7034-e210-401a-a413-8e0479e138da",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4795a32f-4568-49c2-88d2-e527b1db463a",
              "parent_uuid": "035b7034-e210-401a-a413-8e0479e138da",
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
              "uuid": "61e21a28-3fe4-4da7-991f-d546b4797a27",
              "parent_uuid": "035b7034-e210-401a-a413-8e0479e138da",
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
              "uuid": "61ad53c8-a7d1-4ca3-9a42-e17d5a0014bd",
              "parent_uuid": "035b7034-e210-401a-a413-8e0479e138da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d02bdfaa-8433-41ce-a1fa-00bed4345dda",
                  "parent_uuid": "61ad53c8-a7d1-4ca3-9a42-e17d5a0014bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a3f6f9f-0d8f-4b7b-8d3e-4042b9cfa41f",
              "parent_uuid": "035b7034-e210-401a-a413-8e0479e138da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c6b68fe-2309-4326-aa77-c67de742c8d9",
                  "parent_uuid": "2a3f6f9f-0d8f-4b7b-8d3e-4042b9cfa41f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "575486b0-d594-4989-a066-ef425391c1fb",
              "parent_uuid": "035b7034-e210-401a-a413-8e0479e138da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c275ab1-d78a-4110-9965-7c720d2393bb",
                  "parent_uuid": "575486b0-d594-4989-a066-ef425391c1fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "129d41ce-5feb-498f-9ec0-cc77ac472988",
              "parent_uuid": "035b7034-e210-401a-a413-8e0479e138da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a927564a-7401-49b0-95f3-c201a877e30d",
                  "parent_uuid": "129d41ce-5feb-498f-9ec0-cc77ac472988",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db0b67ac-3261-478f-8e47-14913a3b14ed",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aceecdbf-9726-493b-a628-43f2691d13dc",
              "parent_uuid": "db0b67ac-3261-478f-8e47-14913a3b14ed",
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
              "uuid": "44961e4a-d524-41cd-955a-0c1603bd98c3",
              "parent_uuid": "db0b67ac-3261-478f-8e47-14913a3b14ed",
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
              "uuid": "ecf1d0aa-fbe0-4604-ba3f-c58ae88a4250",
              "parent_uuid": "db0b67ac-3261-478f-8e47-14913a3b14ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d991f40-76f9-435c-b311-4f7187f4cf93",
                  "parent_uuid": "ecf1d0aa-fbe0-4604-ba3f-c58ae88a4250",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f92d2ec2-a210-43a0-9e81-e90b315f720d",
              "parent_uuid": "db0b67ac-3261-478f-8e47-14913a3b14ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27db0b8c-a8cd-4d1b-9612-842ea95becf7",
                  "parent_uuid": "f92d2ec2-a210-43a0-9e81-e90b315f720d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4266630-f61f-4ec3-a8b5-f836aa833f82",
              "parent_uuid": "db0b67ac-3261-478f-8e47-14913a3b14ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8887114b-2409-493a-922f-b2e45df7296b",
                  "parent_uuid": "e4266630-f61f-4ec3-a8b5-f836aa833f82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bea46104-51d7-4f66-af34-80ed3abdb5e8",
              "parent_uuid": "db0b67ac-3261-478f-8e47-14913a3b14ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c891c66-9406-46ca-bc2b-65f508aac829",
                  "parent_uuid": "bea46104-51d7-4f66-af34-80ed3abdb5e8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2f20d163-a211-4486-8b62-2652e0d49e88",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97ba5cd6-535f-4509-b6ed-c7ef1f6d7457",
              "parent_uuid": "2f20d163-a211-4486-8b62-2652e0d49e88",
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
              "uuid": "b56aa3f2-0a4f-4056-98c0-bbc1e766b242",
              "parent_uuid": "2f20d163-a211-4486-8b62-2652e0d49e88",
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
              "uuid": "b5b5d696-3668-44f5-934b-6e084c062c7b",
              "parent_uuid": "2f20d163-a211-4486-8b62-2652e0d49e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb20a612-5048-4a09-b3c8-6041a01f701f",
                  "parent_uuid": "b5b5d696-3668-44f5-934b-6e084c062c7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27eaa5c9-c276-4594-8882-9f34a50e5493",
              "parent_uuid": "2f20d163-a211-4486-8b62-2652e0d49e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fc47176-bbe0-4b64-99b3-48facf37fbc9",
                  "parent_uuid": "27eaa5c9-c276-4594-8882-9f34a50e5493",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3fcce90-0947-48d6-be1b-5a2dc3ab0f88",
              "parent_uuid": "2f20d163-a211-4486-8b62-2652e0d49e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba6a0005-c5aa-4e71-8fdc-be713a874754",
                  "parent_uuid": "b3fcce90-0947-48d6-be1b-5a2dc3ab0f88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6251c8d7-c33e-4fa3-87c8-3134f6a652c8",
              "parent_uuid": "2f20d163-a211-4486-8b62-2652e0d49e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "816982b0-fb3c-4d42-8c43-8fde817c3c8f",
                  "parent_uuid": "6251c8d7-c33e-4fa3-87c8-3134f6a652c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fedf5a6a-103d-4c47-977e-e9c686e288fd",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e943c138-8e31-47c1-b4ab-65fde20e5b1f",
              "parent_uuid": "fedf5a6a-103d-4c47-977e-e9c686e288fd",
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
              "uuid": "222d91a5-dbbf-455a-bf09-8bb3027d96ee",
              "parent_uuid": "fedf5a6a-103d-4c47-977e-e9c686e288fd",
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
              "uuid": "3a7e6edb-7fb7-498e-b394-39143dc6e45a",
              "parent_uuid": "fedf5a6a-103d-4c47-977e-e9c686e288fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "897ef812-c9d2-4223-8fab-0f34463c134a",
                  "parent_uuid": "3a7e6edb-7fb7-498e-b394-39143dc6e45a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58484c92-b866-4154-8096-83bbcff7eed6",
              "parent_uuid": "fedf5a6a-103d-4c47-977e-e9c686e288fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03bad8da-ec96-4427-834e-bc83f1b22252",
                  "parent_uuid": "58484c92-b866-4154-8096-83bbcff7eed6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6154f25-7134-4eb9-a510-1ae6fb378f8f",
              "parent_uuid": "fedf5a6a-103d-4c47-977e-e9c686e288fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b146c3b-85f2-45c4-870c-8a6869f612f8",
                  "parent_uuid": "e6154f25-7134-4eb9-a510-1ae6fb378f8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "967d4751-f05a-4a6b-a805-c8942b1db9f0",
              "parent_uuid": "fedf5a6a-103d-4c47-977e-e9c686e288fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffc84ac7-df11-4991-9dfe-a9fd48707df1",
                  "parent_uuid": "967d4751-f05a-4a6b-a805-c8942b1db9f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "236ad04a-3b3f-46df-8c66-62881ea3c7b0",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f134b8c8-9e69-44ae-ae09-e25c63afa969",
              "parent_uuid": "236ad04a-3b3f-46df-8c66-62881ea3c7b0",
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
              "uuid": "233d7160-0c56-4884-9a59-b0bee429da36",
              "parent_uuid": "236ad04a-3b3f-46df-8c66-62881ea3c7b0",
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
              "uuid": "63b5bfa0-8f85-4373-acbe-1ec1ad938307",
              "parent_uuid": "236ad04a-3b3f-46df-8c66-62881ea3c7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa173878-7845-428d-86e2-090667e1248a",
                  "parent_uuid": "63b5bfa0-8f85-4373-acbe-1ec1ad938307",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d534fee-7ebb-4361-922c-4924f4922f81",
              "parent_uuid": "236ad04a-3b3f-46df-8c66-62881ea3c7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ef7378f-0f60-469f-8d8e-d7f0f442e1e2",
                  "parent_uuid": "2d534fee-7ebb-4361-922c-4924f4922f81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0df3c125-e7eb-4947-bdd1-e6fd2e5f899f",
              "parent_uuid": "236ad04a-3b3f-46df-8c66-62881ea3c7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f68bf20-e33a-490d-b14a-5c1615b547a2",
                  "parent_uuid": "0df3c125-e7eb-4947-bdd1-e6fd2e5f899f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ff6cd9d-a142-4014-914b-4f316902d95c",
              "parent_uuid": "236ad04a-3b3f-46df-8c66-62881ea3c7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b7e06d8-2079-4332-ba98-be03cc00f703",
                  "parent_uuid": "8ff6cd9d-a142-4014-914b-4f316902d95c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "85408478-65ca-4bb7-a139-1efc6d8ecbff",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19fb93c6-7875-4c53-90f1-7570a9e17da0",
              "parent_uuid": "85408478-65ca-4bb7-a139-1efc6d8ecbff",
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
              "uuid": "4a972712-247a-44df-96ab-19060c0b43e4",
              "parent_uuid": "85408478-65ca-4bb7-a139-1efc6d8ecbff",
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
              "uuid": "b9d5b416-9a37-41c7-af03-d9f0ffef1ab5",
              "parent_uuid": "85408478-65ca-4bb7-a139-1efc6d8ecbff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32bac161-e8ca-43de-9e9f-3f3fabf8acfb",
                  "parent_uuid": "b9d5b416-9a37-41c7-af03-d9f0ffef1ab5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2191b8b-044c-425f-ab2d-d8a0c4464e61",
              "parent_uuid": "85408478-65ca-4bb7-a139-1efc6d8ecbff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "503e7d64-ce6e-4f0d-9fb6-a291c27750d3",
                  "parent_uuid": "b2191b8b-044c-425f-ab2d-d8a0c4464e61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0acdf359-e59a-42de-a1cf-365808404ef5",
              "parent_uuid": "85408478-65ca-4bb7-a139-1efc6d8ecbff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5d5e71e-aa76-464d-8a87-1fe54fc65ae2",
                  "parent_uuid": "0acdf359-e59a-42de-a1cf-365808404ef5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54fed427-ce43-4f4b-bee6-aaf8084e9523",
              "parent_uuid": "85408478-65ca-4bb7-a139-1efc6d8ecbff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47a6a15a-7b1e-456f-9a64-6d8437d380e8",
                  "parent_uuid": "54fed427-ce43-4f4b-bee6-aaf8084e9523",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c656825a-5440-4a1d-b222-242d4d697f02",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8ecb1cd-8c9b-461c-ac96-8badf6035ee8",
              "parent_uuid": "c656825a-5440-4a1d-b222-242d4d697f02",
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
              "uuid": "faeb48e5-537f-4c91-a30c-15749b750da4",
              "parent_uuid": "c656825a-5440-4a1d-b222-242d4d697f02",
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
              "uuid": "b5623b0d-bd69-40a7-ae19-3c400dbe5128",
              "parent_uuid": "c656825a-5440-4a1d-b222-242d4d697f02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e25ddd6-0553-46d2-b0bf-0f9c2bf26dcc",
                  "parent_uuid": "b5623b0d-bd69-40a7-ae19-3c400dbe5128",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d3417f5-f69e-45c9-bd3c-4cc310b6013d",
              "parent_uuid": "c656825a-5440-4a1d-b222-242d4d697f02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b963699c-d8fe-478a-86fd-ce4970f6d3ae",
                  "parent_uuid": "8d3417f5-f69e-45c9-bd3c-4cc310b6013d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4fc3c332-687a-4ff6-8b7b-692df0e2ee2e",
              "parent_uuid": "c656825a-5440-4a1d-b222-242d4d697f02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c33d9af9-7d20-40e9-86ed-c5b7c4478fb4",
                  "parent_uuid": "4fc3c332-687a-4ff6-8b7b-692df0e2ee2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c67783a5-741d-4d5a-85b1-891378673186",
              "parent_uuid": "c656825a-5440-4a1d-b222-242d4d697f02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b6d12a5-d9d2-4ea2-ac67-942261371821",
                  "parent_uuid": "c67783a5-741d-4d5a-85b1-891378673186",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "87e31665-24be-4d49-81b5-207969b5371b",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3197e9f5-9031-46dc-8562-09c7354a9b6d",
              "parent_uuid": "87e31665-24be-4d49-81b5-207969b5371b",
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
              "uuid": "f279c313-f05c-4023-8a19-edfab2748d66",
              "parent_uuid": "87e31665-24be-4d49-81b5-207969b5371b",
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
              "uuid": "5c8a4e74-59b0-4855-a445-d42725aac16d",
              "parent_uuid": "87e31665-24be-4d49-81b5-207969b5371b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dacd3570-f81a-4f76-b7ee-b35834b719cb",
                  "parent_uuid": "5c8a4e74-59b0-4855-a445-d42725aac16d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bab02620-866b-4091-be34-10c95b7bc322",
              "parent_uuid": "87e31665-24be-4d49-81b5-207969b5371b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "968cdc1f-a0c0-479d-8e3d-6936f93f6ecb",
                  "parent_uuid": "bab02620-866b-4091-be34-10c95b7bc322",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0cc829f-4de6-4f6d-956b-0dfacc3cdc78",
              "parent_uuid": "87e31665-24be-4d49-81b5-207969b5371b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e82779be-ac13-46d7-8851-36c661fe2171",
                  "parent_uuid": "b0cc829f-4de6-4f6d-956b-0dfacc3cdc78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6531bc47-8354-4c0d-b6b5-561954431d38",
              "parent_uuid": "87e31665-24be-4d49-81b5-207969b5371b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a981071-0834-45f6-b5c0-3a61507dc3ed",
                  "parent_uuid": "6531bc47-8354-4c0d-b6b5-561954431d38",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "280c61f9-8621-44ba-b105-3b5936add10b",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6ca533bc-7287-4700-a66d-11c7b3524d60",
              "parent_uuid": "280c61f9-8621-44ba-b105-3b5936add10b",
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
          "uuid": "42aa6ad1-6d6c-461c-952e-1d3ea529a389",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b236b9af-cd1f-4838-9bd2-71e315a696c4",
              "parent_uuid": "42aa6ad1-6d6c-461c-952e-1d3ea529a389",
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
              "uuid": "c91e5d35-1d05-4b43-8d41-65267e3331de",
              "parent_uuid": "42aa6ad1-6d6c-461c-952e-1d3ea529a389",
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
              "uuid": "9e2d98d6-79eb-4401-930a-81ea5b400acd",
              "parent_uuid": "42aa6ad1-6d6c-461c-952e-1d3ea529a389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb779ba8-0204-4441-8e57-d57e8b451067",
                  "parent_uuid": "9e2d98d6-79eb-4401-930a-81ea5b400acd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "139aa1cb-4f3b-4ce2-ba70-5c57ae1ab874",
              "parent_uuid": "42aa6ad1-6d6c-461c-952e-1d3ea529a389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bbb0a66-129a-4532-aa94-37c6d1bee72e",
                  "parent_uuid": "139aa1cb-4f3b-4ce2-ba70-5c57ae1ab874",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60018e32-8cf7-4fa8-9b0e-b4a950398fe0",
              "parent_uuid": "42aa6ad1-6d6c-461c-952e-1d3ea529a389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27b353a8-0d25-4466-bccd-fb44d726e2a8",
                  "parent_uuid": "60018e32-8cf7-4fa8-9b0e-b4a950398fe0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a2d51a6-1110-4577-9106-3f88be166a99",
              "parent_uuid": "42aa6ad1-6d6c-461c-952e-1d3ea529a389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cac7eac5-54b9-4ef3-a832-0d2b6520700b",
                  "parent_uuid": "7a2d51a6-1110-4577-9106-3f88be166a99",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6500c49e-3652-48fc-a0cc-dc028aeb918f",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "619c9e27-3d50-4e39-9d5d-c6bc98ec37d8",
              "parent_uuid": "6500c49e-3652-48fc-a0cc-dc028aeb918f",
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
          "uuid": "ec8d7bbb-1b4d-4330-9f1b-36a7f68125c7",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1720e740-6656-46d3-a303-bad5c70cce8a",
              "parent_uuid": "ec8d7bbb-1b4d-4330-9f1b-36a7f68125c7",
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
          "uuid": "237cc651-63cf-4435-aac3-6959f88cb2b1",
          "parent_uuid": "5d5d1032-ce16-4414-9593-aeb476bf2562",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f72dae8a-cfbe-4965-9935-95a85642f2ce",
              "parent_uuid": "237cc651-63cf-4435-aac3-6959f88cb2b1",
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
                  "uuid": "5033a732-45a0-4e88-89e1-f6b9ce3bfa86",
                  "parent_uuid": "f72dae8a-cfbe-4965-9935-95a85642f2ce",
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

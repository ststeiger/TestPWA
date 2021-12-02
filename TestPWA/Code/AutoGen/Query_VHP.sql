
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
  "uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "2506bde2-78bd-439e-a8ed-f0e08ab8b604",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "9f028f48-716b-4752-9152-3920518d351c",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "c4afab47-101c-4d65-8495-51ef36a5e4c7",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "6f2ea8bc-6bb2-4be1-bfeb-939de57f1ef4",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "53e9051b-14cc-4a65-b8c2-e2a1e7c6b069",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "7a7ba2c2-6823-4ce1-8c61-b827628ec011",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "028ab186-f8f2-4aab-b2ba-fe89173a762b",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
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
      "uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
      "parent_uuid": "585e3705-172d-4b17-a372-acfd92da8740",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "3d26359c-845f-4f63-8e46-b7ac1f1d0ddb",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "a5a0cbc0-dba5-4c11-926f-bf31bb45f4aa",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "682ab778-47ed-41f1-8413-a84eb5414653",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "ac27c329-be60-480c-afc2-d7ba2cd74fb3",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "7112cec1-8169-4c0e-a6b1-ed3c59c2eba3",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "23dbbe3f-b57a-4290-93de-aa752c5b6604",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "8c8659e4-9c53-41a9-97da-3232cbd5f4a6",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "1d277c36-2c1e-4c74-9dea-4e3262aaa087",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "abbfb3ed-264c-4c6c-8a06-1373a207ecc4",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "6cbfc10b-e5f4-48f6-ba11-3d61a6d9a9ab",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
              "uuid": "4e3da664-cb52-41af-bd25-df356caa2665",
              "parent_uuid": "d9497d65-b255-4a40-9151-1eb679e1f41f",
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
          "uuid": "d20c4488-5481-4fa9-a71d-7296bb45ef55",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5321fe57-4add-4a83-b195-17ad31dedb26",
              "parent_uuid": "d20c4488-5481-4fa9-a71d-7296bb45ef55",
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
              "uuid": "b928f4b5-8fd1-4a7f-8a73-4fb143eee7f7",
              "parent_uuid": "d20c4488-5481-4fa9-a71d-7296bb45ef55",
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
              "uuid": "ab980335-e752-4328-bf8a-7379fa5a7516",
              "parent_uuid": "d20c4488-5481-4fa9-a71d-7296bb45ef55",
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
              "uuid": "ff6eb500-29bf-4821-ae11-e544b3d1a669",
              "parent_uuid": "d20c4488-5481-4fa9-a71d-7296bb45ef55",
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
          "uuid": "bf7edc54-1b7d-4d1f-b68d-76cb9454f30e",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed136f58-6b37-41d8-8d3a-3a9c72d3a755",
              "parent_uuid": "bf7edc54-1b7d-4d1f-b68d-76cb9454f30e",
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
              "uuid": "09121f81-2574-45b6-804d-44dfe73bbe2e",
              "parent_uuid": "bf7edc54-1b7d-4d1f-b68d-76cb9454f30e",
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
              "uuid": "8fd8416a-afb8-43bf-9ad1-acbd6e18dac6",
              "parent_uuid": "bf7edc54-1b7d-4d1f-b68d-76cb9454f30e",
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
              "uuid": "7ce0b59d-6fe4-4671-b9f3-9122978d2a57",
              "parent_uuid": "bf7edc54-1b7d-4d1f-b68d-76cb9454f30e",
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
              "uuid": "b0c30498-a681-4c51-8e18-b238b458b44c",
              "parent_uuid": "bf7edc54-1b7d-4d1f-b68d-76cb9454f30e",
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
              "uuid": "1c6bc44c-d9d5-4398-9ac8-5f38d6bd0eb2",
              "parent_uuid": "bf7edc54-1b7d-4d1f-b68d-76cb9454f30e",
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
          "uuid": "11c1e99a-4baa-4bc3-afd7-53a412b73e63",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "416a67ce-deb2-466f-b447-d4d9b7b7e19c",
              "parent_uuid": "11c1e99a-4baa-4bc3-afd7-53a412b73e63",
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
          "uuid": "10b015c5-4578-49af-91c9-627badadfb39",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c09f1792-1578-4805-a501-e8f947314bbb",
              "parent_uuid": "10b015c5-4578-49af-91c9-627badadfb39",
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
              "uuid": "f27a432c-50d7-4705-916b-b5ce0fb37971",
              "parent_uuid": "10b015c5-4578-49af-91c9-627badadfb39",
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
              "uuid": "aa5d0a62-2945-485e-a58d-9a6f33f98a80",
              "parent_uuid": "10b015c5-4578-49af-91c9-627badadfb39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff581684-f2ac-4836-a19d-e074ab61e6c5",
                  "parent_uuid": "aa5d0a62-2945-485e-a58d-9a6f33f98a80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "418fcbb6-847a-44f6-9ae2-44738a552336",
              "parent_uuid": "10b015c5-4578-49af-91c9-627badadfb39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7eb2b64c-d119-4fda-bdf0-81ecec94206e",
                  "parent_uuid": "418fcbb6-847a-44f6-9ae2-44738a552336",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d91b2184-26ab-4b6f-b3ec-b5e26d4111f1",
              "parent_uuid": "10b015c5-4578-49af-91c9-627badadfb39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7775f20c-1241-4bd5-96e4-78c3a95f18d6",
                  "parent_uuid": "d91b2184-26ab-4b6f-b3ec-b5e26d4111f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18428440-4904-41e7-aff2-ad6f86c7663b",
              "parent_uuid": "10b015c5-4578-49af-91c9-627badadfb39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b48e763c-c8ea-4a37-a98f-5298f6ac0dc6",
                  "parent_uuid": "18428440-4904-41e7-aff2-ad6f86c7663b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b6ba7e1-0e4e-40a7-9b24-cd00352d8647",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08a4d1be-0a96-4eec-92b2-827d20aa7e34",
              "parent_uuid": "0b6ba7e1-0e4e-40a7-9b24-cd00352d8647",
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
              "uuid": "70bfce97-0c67-4eff-a76a-3369874511ff",
              "parent_uuid": "0b6ba7e1-0e4e-40a7-9b24-cd00352d8647",
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
              "uuid": "70cc345a-a68f-4bc9-be83-e78a90570186",
              "parent_uuid": "0b6ba7e1-0e4e-40a7-9b24-cd00352d8647",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bca431e-ee7a-4bd9-b20a-d420a31a7192",
                  "parent_uuid": "70cc345a-a68f-4bc9-be83-e78a90570186",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85e2ef89-3b6b-4f41-8566-038ff450ec72",
              "parent_uuid": "0b6ba7e1-0e4e-40a7-9b24-cd00352d8647",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d84d08d-8be2-45ca-8d6a-924baf836533",
                  "parent_uuid": "85e2ef89-3b6b-4f41-8566-038ff450ec72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af020680-03cc-417a-be8e-87603d159887",
              "parent_uuid": "0b6ba7e1-0e4e-40a7-9b24-cd00352d8647",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b9fc1d7-19e4-4b71-9ed0-f95901a0c944",
                  "parent_uuid": "af020680-03cc-417a-be8e-87603d159887",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5619a86-69cc-418c-9c8b-b632e87d5c9a",
              "parent_uuid": "0b6ba7e1-0e4e-40a7-9b24-cd00352d8647",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33399c1f-caac-4887-a7a5-afedab6c0014",
                  "parent_uuid": "c5619a86-69cc-418c-9c8b-b632e87d5c9a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cb42c9fc-13c3-415b-894a-8bf010629b7d",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "891d206d-9d77-43f1-a1e2-3cd5a5a01f10",
              "parent_uuid": "cb42c9fc-13c3-415b-894a-8bf010629b7d",
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
              "uuid": "8e707220-dea1-4410-980b-b0095ead52cf",
              "parent_uuid": "cb42c9fc-13c3-415b-894a-8bf010629b7d",
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
              "uuid": "d58fa86f-ed8f-4102-89c5-90d16b5a2935",
              "parent_uuid": "cb42c9fc-13c3-415b-894a-8bf010629b7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26a9bcdb-4a99-42a2-864f-d9ee95962070",
                  "parent_uuid": "d58fa86f-ed8f-4102-89c5-90d16b5a2935",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee933162-2c76-4e10-b18f-332eed90235f",
              "parent_uuid": "cb42c9fc-13c3-415b-894a-8bf010629b7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96a071dd-920b-40d0-8e1a-06df9658cc65",
                  "parent_uuid": "ee933162-2c76-4e10-b18f-332eed90235f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7487db7-0344-4a6a-8721-4f3323a0d6bd",
              "parent_uuid": "cb42c9fc-13c3-415b-894a-8bf010629b7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6e4566c-e196-4048-8d59-6992893544a3",
                  "parent_uuid": "d7487db7-0344-4a6a-8721-4f3323a0d6bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "880f2926-367c-45a0-820c-855edd3a21a7",
              "parent_uuid": "cb42c9fc-13c3-415b-894a-8bf010629b7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71eb8c81-b771-4434-b177-7cbbd7a9ba2a",
                  "parent_uuid": "880f2926-367c-45a0-820c-855edd3a21a7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6f1f449d-5306-41f2-ae6f-a7d8050aed48",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b546ae5-fd2c-409a-a350-6f2ab306b49d",
              "parent_uuid": "6f1f449d-5306-41f2-ae6f-a7d8050aed48",
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
              "uuid": "10b5df0d-66c9-44b1-b91d-ea7314e5f1f4",
              "parent_uuid": "6f1f449d-5306-41f2-ae6f-a7d8050aed48",
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
              "uuid": "d39b9c1a-6d7d-4f62-b6f2-1c91bbb8532f",
              "parent_uuid": "6f1f449d-5306-41f2-ae6f-a7d8050aed48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13193d67-eba3-45cb-9089-3f4a314d5700",
                  "parent_uuid": "d39b9c1a-6d7d-4f62-b6f2-1c91bbb8532f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1938f864-ca21-4427-9064-49a41d8d428e",
              "parent_uuid": "6f1f449d-5306-41f2-ae6f-a7d8050aed48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d219b15-f813-4271-8a93-e48fbbb6c42c",
                  "parent_uuid": "1938f864-ca21-4427-9064-49a41d8d428e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79af624e-83d1-40be-827c-528fe1c4cabb",
              "parent_uuid": "6f1f449d-5306-41f2-ae6f-a7d8050aed48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "399902b3-e223-4771-8e81-e4f3c4956951",
                  "parent_uuid": "79af624e-83d1-40be-827c-528fe1c4cabb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f93d907e-38f3-4129-96e6-aafdf5e74e38",
              "parent_uuid": "6f1f449d-5306-41f2-ae6f-a7d8050aed48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b451361a-4621-4d10-9be9-704e4d5b278d",
                  "parent_uuid": "f93d907e-38f3-4129-96e6-aafdf5e74e38",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "45c8861e-11a8-4760-bb87-d0d7c152ff17",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48218725-9dfa-4e6a-a7db-588cacfd9e79",
              "parent_uuid": "45c8861e-11a8-4760-bb87-d0d7c152ff17",
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
              "uuid": "63ab94f8-46e8-4370-8a48-79ccd852a7ff",
              "parent_uuid": "45c8861e-11a8-4760-bb87-d0d7c152ff17",
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
              "uuid": "edf6cf69-e490-4a0a-b79f-222c5ca5906e",
              "parent_uuid": "45c8861e-11a8-4760-bb87-d0d7c152ff17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2a790cf-01fa-4001-a16a-634cbb25f1cc",
                  "parent_uuid": "edf6cf69-e490-4a0a-b79f-222c5ca5906e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22515349-e482-4cf1-8211-2b5a34eed93a",
              "parent_uuid": "45c8861e-11a8-4760-bb87-d0d7c152ff17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00cb0c5a-1d7d-41fa-a023-20a3c35a9ea4",
                  "parent_uuid": "22515349-e482-4cf1-8211-2b5a34eed93a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02621766-dbe3-4b25-aa9b-21ac46e83484",
              "parent_uuid": "45c8861e-11a8-4760-bb87-d0d7c152ff17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f033d2d3-8082-42cd-946d-0ff3ec9f284d",
                  "parent_uuid": "02621766-dbe3-4b25-aa9b-21ac46e83484",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb6ccc6c-d21e-41f4-b667-ec2f5b676432",
              "parent_uuid": "45c8861e-11a8-4760-bb87-d0d7c152ff17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bc01ab5-11d8-4730-a8a9-60fab488e179",
                  "parent_uuid": "bb6ccc6c-d21e-41f4-b667-ec2f5b676432",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "33136990-d2ba-4986-b7b1-adc2a49ef623",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d98798a-c855-48cb-a46e-8c187c133403",
              "parent_uuid": "33136990-d2ba-4986-b7b1-adc2a49ef623",
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
              "uuid": "bd9871db-9628-464b-b17e-b4202f1b089c",
              "parent_uuid": "33136990-d2ba-4986-b7b1-adc2a49ef623",
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
              "uuid": "443e922a-98e4-4c18-b491-1a2bb641399f",
              "parent_uuid": "33136990-d2ba-4986-b7b1-adc2a49ef623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f15a4e0-28ba-473e-bab9-076834649ce4",
                  "parent_uuid": "443e922a-98e4-4c18-b491-1a2bb641399f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ceb23bcf-66cd-4d56-bf73-80e388365fd9",
              "parent_uuid": "33136990-d2ba-4986-b7b1-adc2a49ef623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "481a1aa2-2b9f-4bda-b6a5-1f92325b10f9",
                  "parent_uuid": "ceb23bcf-66cd-4d56-bf73-80e388365fd9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f80ed7cd-8e7c-4c39-8061-10195ccfc5db",
              "parent_uuid": "33136990-d2ba-4986-b7b1-adc2a49ef623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74fee681-2f4f-4ba3-86e3-8df8af104f88",
                  "parent_uuid": "f80ed7cd-8e7c-4c39-8061-10195ccfc5db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c33ce796-b9f1-405a-bdd5-c51771ea84b7",
              "parent_uuid": "33136990-d2ba-4986-b7b1-adc2a49ef623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf44cbff-4ae5-412d-9b2d-cea708464b9e",
                  "parent_uuid": "c33ce796-b9f1-405a-bdd5-c51771ea84b7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cd01c878-64f5-4347-8bca-9ca2e683bd71",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "399393eb-0e8e-4ec1-9155-4e015f953ac7",
              "parent_uuid": "cd01c878-64f5-4347-8bca-9ca2e683bd71",
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
              "uuid": "7a9d916e-b7d4-4b6f-b3a8-8936344650da",
              "parent_uuid": "cd01c878-64f5-4347-8bca-9ca2e683bd71",
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
              "uuid": "31079882-d613-461e-9502-32275e7a3261",
              "parent_uuid": "cd01c878-64f5-4347-8bca-9ca2e683bd71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fd599a3-8768-4e17-b093-3c39315ff320",
                  "parent_uuid": "31079882-d613-461e-9502-32275e7a3261",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3261580e-77c0-4e03-9900-bcd77e87b67e",
              "parent_uuid": "cd01c878-64f5-4347-8bca-9ca2e683bd71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af6d4fb1-8927-4107-8092-a1277adff86e",
                  "parent_uuid": "3261580e-77c0-4e03-9900-bcd77e87b67e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c343ae1-a2dc-4ab3-8048-eae38036d37b",
              "parent_uuid": "cd01c878-64f5-4347-8bca-9ca2e683bd71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c59a33c0-9e35-43a4-a6bc-f4f4410eb989",
                  "parent_uuid": "6c343ae1-a2dc-4ab3-8048-eae38036d37b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14d2924e-29bd-44b6-acfc-d3f21ba8fb4e",
              "parent_uuid": "cd01c878-64f5-4347-8bca-9ca2e683bd71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccc118a2-6bdd-4754-bcf0-2b3c5abc5364",
                  "parent_uuid": "14d2924e-29bd-44b6-acfc-d3f21ba8fb4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31dcc47c-48fe-416d-89d7-aaa782f64d18",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9169ba4c-238f-4b0f-8489-1550b7117c01",
              "parent_uuid": "31dcc47c-48fe-416d-89d7-aaa782f64d18",
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
              "uuid": "75794e4e-8032-4ff8-bce7-ba4a002e687a",
              "parent_uuid": "31dcc47c-48fe-416d-89d7-aaa782f64d18",
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
              "uuid": "08b9f62c-2d77-4a01-99cf-b6071333a561",
              "parent_uuid": "31dcc47c-48fe-416d-89d7-aaa782f64d18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6ce28db-f92d-42fe-9251-19783256e55f",
                  "parent_uuid": "08b9f62c-2d77-4a01-99cf-b6071333a561",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edf07a7b-905b-41dd-877c-da08484ba990",
              "parent_uuid": "31dcc47c-48fe-416d-89d7-aaa782f64d18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7611db8a-369b-4f45-90d0-de2346e4d05f",
                  "parent_uuid": "edf07a7b-905b-41dd-877c-da08484ba990",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd40b95e-244c-4b87-b6fb-e3d4a028e11a",
              "parent_uuid": "31dcc47c-48fe-416d-89d7-aaa782f64d18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d52ee20e-313a-4293-ba0c-c7de52f41bed",
                  "parent_uuid": "cd40b95e-244c-4b87-b6fb-e3d4a028e11a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7cbef96-07e0-4691-a482-479e05a7efae",
              "parent_uuid": "31dcc47c-48fe-416d-89d7-aaa782f64d18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "176ad92e-9fe8-4ace-97ff-a3fa438491dd",
                  "parent_uuid": "e7cbef96-07e0-4691-a482-479e05a7efae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8068ac69-5040-4487-8c8b-3d5074d2ff40",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d2fe85e5-4bdd-43df-8984-d89e1f6f8f2c",
              "parent_uuid": "8068ac69-5040-4487-8c8b-3d5074d2ff40",
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
          "uuid": "efa7968c-aa18-4536-ae6b-5922e81a8072",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a1cd5641-fd69-413f-bad4-aa1608388b21",
              "parent_uuid": "efa7968c-aa18-4536-ae6b-5922e81a8072",
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
              "uuid": "e70dd2c9-f3bd-45e7-81a2-e165d2e63325",
              "parent_uuid": "efa7968c-aa18-4536-ae6b-5922e81a8072",
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
              "uuid": "bff99f94-192f-4287-b083-e8618f0ae3a0",
              "parent_uuid": "efa7968c-aa18-4536-ae6b-5922e81a8072",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87919857-e072-4eed-bae6-1e20b1963ff5",
                  "parent_uuid": "bff99f94-192f-4287-b083-e8618f0ae3a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12fe8c76-d514-4dc4-ad6a-a1702ea62924",
              "parent_uuid": "efa7968c-aa18-4536-ae6b-5922e81a8072",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56d0a93d-b930-4848-a437-ba1e37571852",
                  "parent_uuid": "12fe8c76-d514-4dc4-ad6a-a1702ea62924",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22ea54a4-273b-4deb-a6e2-0de6a1029f7d",
              "parent_uuid": "efa7968c-aa18-4536-ae6b-5922e81a8072",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "746dc6ec-6150-4be8-ac7f-3a884985122a",
                  "parent_uuid": "22ea54a4-273b-4deb-a6e2-0de6a1029f7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da66ead5-fb36-4cba-8ccd-5014341fc7bc",
              "parent_uuid": "efa7968c-aa18-4536-ae6b-5922e81a8072",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd0ec8f0-4dba-4c4a-acb9-7886714d96b8",
                  "parent_uuid": "da66ead5-fb36-4cba-8ccd-5014341fc7bc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "77c923dd-635e-458f-960f-5d5436d8c427",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18ddf733-76b7-4dc5-abdd-c80746d5fae1",
              "parent_uuid": "77c923dd-635e-458f-960f-5d5436d8c427",
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
          "uuid": "f978dd1f-6ccc-49ae-8cba-e7f717039829",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2ea5e8a-3be9-41bf-a4fb-6d352ec2ee2f",
              "parent_uuid": "f978dd1f-6ccc-49ae-8cba-e7f717039829",
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
          "uuid": "7faf1286-25d9-4634-a9b8-fdf8128e6f11",
          "parent_uuid": "b227d2d6-13ab-434f-b65a-453d10b8fb5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4e89060-d674-4502-b54f-cdfef65cbbe9",
              "parent_uuid": "7faf1286-25d9-4634-a9b8-fdf8128e6f11",
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
                  "uuid": "a09bfaf0-43eb-4bd6-8ba5-34a10768c4e6",
                  "parent_uuid": "b4e89060-d674-4502-b54f-cdfef65cbbe9",
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


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
  "uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "af49f1d5-48ae-48cc-926a-e177b7c9d46a",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "fdb06b24-a7e4-4e96-91cf-d06cb08cb12e",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "d810368d-f2d7-4a95-9003-e231a4f5667d",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "d7ee998c-b879-4bf3-9975-e3c612a8d285",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "0dd7a902-a33b-41fd-87af-5e61410c580f",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "3149c5ba-4785-47be-9e31-8f69405fa0b3",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "068bb2d5-1c13-4b5a-8f63-0a08e05cc4d7",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
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
      "uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
      "parent_uuid": "3d0b9747-9296-4d41-be8f-d8c798c4f183",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "322c4d74-063a-4d65-a365-022a063ca455",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "cc913fbc-2cff-495d-9332-303f8bcd9f1b",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "5fb8ae35-4a27-4f75-9c52-8b806fe78372",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "34040560-2b88-4c53-8913-87764d5e9d24",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "2e49ae60-d954-4a23-889f-fd89c5aef64e",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "76c83fd6-6fd2-4c56-9fa0-838b4f8cb138",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "c42a4ded-79fc-4774-b54c-c469d47ce6a3",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "3cbab80d-adc0-4514-a998-f5cbf8fa2b2b",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "f2200791-9d08-45b6-89ac-8f45e1e3dac8",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "0864bd48-f7ff-4b59-9a4d-78612e786c0a",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
              "uuid": "4ba31701-af19-447c-ae8f-16345f5e705d",
              "parent_uuid": "6d3d3b09-ee90-45af-b217-ebb19f0bb453",
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
          "uuid": "bb6e1975-b586-4c91-aa9f-48e383f22152",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a459fb2d-4614-4530-9b4f-00c2f4335d90",
              "parent_uuid": "bb6e1975-b586-4c91-aa9f-48e383f22152",
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
              "uuid": "a2b34d7f-7380-4951-bdf9-05e1b4e771f6",
              "parent_uuid": "bb6e1975-b586-4c91-aa9f-48e383f22152",
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
              "uuid": "5de5d259-c495-4d23-ac74-844cb6cc16df",
              "parent_uuid": "bb6e1975-b586-4c91-aa9f-48e383f22152",
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
              "uuid": "819bbb91-1770-43e4-aae3-e148cd7577bf",
              "parent_uuid": "bb6e1975-b586-4c91-aa9f-48e383f22152",
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
          "uuid": "e07aba59-d1e5-46a1-beae-9695677ab5b8",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6eb5298-5f9f-4453-bb98-dce685757820",
              "parent_uuid": "e07aba59-d1e5-46a1-beae-9695677ab5b8",
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
              "uuid": "b1065f3b-66e6-404f-bdb2-33cd4f333fe7",
              "parent_uuid": "e07aba59-d1e5-46a1-beae-9695677ab5b8",
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
              "uuid": "7696550d-97ce-4446-ae68-290620496f87",
              "parent_uuid": "e07aba59-d1e5-46a1-beae-9695677ab5b8",
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
              "uuid": "e1ad71ea-006e-4452-9f93-19746ae2db62",
              "parent_uuid": "e07aba59-d1e5-46a1-beae-9695677ab5b8",
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
              "uuid": "383bc7f9-5dbc-479f-a382-e85fa417be5b",
              "parent_uuid": "e07aba59-d1e5-46a1-beae-9695677ab5b8",
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
              "uuid": "e083e4e0-9c72-436e-8ea2-afcb4f71f93e",
              "parent_uuid": "e07aba59-d1e5-46a1-beae-9695677ab5b8",
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
          "uuid": "dbb8f600-5052-4c86-b0a8-e126d308387b",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ca3f35f0-dda1-4467-bda9-f109ac3efd4e",
              "parent_uuid": "dbb8f600-5052-4c86-b0a8-e126d308387b",
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
          "uuid": "ad62310f-8e98-4890-91cf-8ffbdac8a32f",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "835858cd-2808-4d52-b2e7-9157ae14cce6",
              "parent_uuid": "ad62310f-8e98-4890-91cf-8ffbdac8a32f",
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
              "uuid": "dfc2ac75-3a1d-43eb-a28e-a9a1cf48f4f2",
              "parent_uuid": "ad62310f-8e98-4890-91cf-8ffbdac8a32f",
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
              "uuid": "e6204e4f-4728-4637-9acd-00ab20d2e19a",
              "parent_uuid": "ad62310f-8e98-4890-91cf-8ffbdac8a32f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e96b095-25ec-4f8f-9cf2-1ed5c69d57b8",
                  "parent_uuid": "e6204e4f-4728-4637-9acd-00ab20d2e19a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87a0f9ab-2a7f-4522-9a89-c2f4599215bf",
              "parent_uuid": "ad62310f-8e98-4890-91cf-8ffbdac8a32f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5aa272a-3da9-47fe-adf8-e90827db6c10",
                  "parent_uuid": "87a0f9ab-2a7f-4522-9a89-c2f4599215bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8e54bec-ff32-4182-8cf3-3e773cf917d2",
              "parent_uuid": "ad62310f-8e98-4890-91cf-8ffbdac8a32f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9394c53b-59fc-46de-9d0b-770998ccb780",
                  "parent_uuid": "d8e54bec-ff32-4182-8cf3-3e773cf917d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abf83b97-4b80-4ef2-bf43-33e7083d605a",
              "parent_uuid": "ad62310f-8e98-4890-91cf-8ffbdac8a32f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "debca96b-941d-4753-ac74-07d04487a58a",
                  "parent_uuid": "abf83b97-4b80-4ef2-bf43-33e7083d605a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d9a88aca-f8a5-46f3-a52a-31e157b1ae41",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5237b36c-9acc-430a-8d5b-7aa14129f06c",
              "parent_uuid": "d9a88aca-f8a5-46f3-a52a-31e157b1ae41",
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
              "uuid": "9e6098d2-bd02-49cd-b694-f1564b42f1a2",
              "parent_uuid": "d9a88aca-f8a5-46f3-a52a-31e157b1ae41",
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
              "uuid": "7ed16413-38ef-4295-9213-8c8386d3070d",
              "parent_uuid": "d9a88aca-f8a5-46f3-a52a-31e157b1ae41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e796864-1b6e-4a78-9ece-5bfd8633d3e0",
                  "parent_uuid": "7ed16413-38ef-4295-9213-8c8386d3070d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d24ed2e-8d9f-49bd-8c23-63d2b0d5f255",
              "parent_uuid": "d9a88aca-f8a5-46f3-a52a-31e157b1ae41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63837860-c8e3-4873-9307-613ae22ed150",
                  "parent_uuid": "9d24ed2e-8d9f-49bd-8c23-63d2b0d5f255",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c93604a2-ae09-4e76-bb21-f2a4eb859d0b",
              "parent_uuid": "d9a88aca-f8a5-46f3-a52a-31e157b1ae41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56a0f71b-7285-4839-bd5f-730f70c66fc0",
                  "parent_uuid": "c93604a2-ae09-4e76-bb21-f2a4eb859d0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87fe305f-4619-41ed-b066-aeaf5168f659",
              "parent_uuid": "d9a88aca-f8a5-46f3-a52a-31e157b1ae41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47f61f37-df35-48bb-9d17-b698a0434aed",
                  "parent_uuid": "87fe305f-4619-41ed-b066-aeaf5168f659",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9847876d-5b67-4fe6-be41-c62aa69f66a4",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3da12a44-20ef-4c50-807b-ac19a7a073c9",
              "parent_uuid": "9847876d-5b67-4fe6-be41-c62aa69f66a4",
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
              "uuid": "ad21fb77-9afc-4a6b-9d75-1e287dd942ce",
              "parent_uuid": "9847876d-5b67-4fe6-be41-c62aa69f66a4",
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
              "uuid": "830f6ce4-5e0d-4ea3-bbe6-0b3b2e940ae9",
              "parent_uuid": "9847876d-5b67-4fe6-be41-c62aa69f66a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bdd0e55-1206-49ea-8ece-27f72e03c273",
                  "parent_uuid": "830f6ce4-5e0d-4ea3-bbe6-0b3b2e940ae9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e241c98d-dbe4-496d-b175-22c9859e89d5",
              "parent_uuid": "9847876d-5b67-4fe6-be41-c62aa69f66a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c811b885-08eb-4bdb-8aee-88af3df79667",
                  "parent_uuid": "e241c98d-dbe4-496d-b175-22c9859e89d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7689b7bb-0d31-4c71-8695-461058e3d5f2",
              "parent_uuid": "9847876d-5b67-4fe6-be41-c62aa69f66a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17212e94-dbf8-4dce-9f1e-57e86b104567",
                  "parent_uuid": "7689b7bb-0d31-4c71-8695-461058e3d5f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6966cd95-2f4a-4445-8996-cdcb7ef20fe1",
              "parent_uuid": "9847876d-5b67-4fe6-be41-c62aa69f66a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "255f9953-03b1-4949-a3ae-21a690287bb5",
                  "parent_uuid": "6966cd95-2f4a-4445-8996-cdcb7ef20fe1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "927603ea-4c93-41d6-8c46-eb71ebaa8ec6",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f7cd33b-6ec5-43f7-8f2f-032902ba3f1b",
              "parent_uuid": "927603ea-4c93-41d6-8c46-eb71ebaa8ec6",
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
              "uuid": "3bf9fe6a-cdc9-444a-bea1-e003bbd5a4f9",
              "parent_uuid": "927603ea-4c93-41d6-8c46-eb71ebaa8ec6",
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
              "uuid": "c86c18ff-a82c-4bc0-ac6d-08f300890c61",
              "parent_uuid": "927603ea-4c93-41d6-8c46-eb71ebaa8ec6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4cd66d0b-d02d-4eea-8227-7a39f6f456b8",
                  "parent_uuid": "c86c18ff-a82c-4bc0-ac6d-08f300890c61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08ba5fe4-d224-45b3-b7be-30e85985ab58",
              "parent_uuid": "927603ea-4c93-41d6-8c46-eb71ebaa8ec6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42f46780-9309-4346-973a-41fd6e1f7462",
                  "parent_uuid": "08ba5fe4-d224-45b3-b7be-30e85985ab58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9daa5678-e113-4775-b794-548636c69507",
              "parent_uuid": "927603ea-4c93-41d6-8c46-eb71ebaa8ec6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3ab04cf-1084-442f-b118-dc1308650fb3",
                  "parent_uuid": "9daa5678-e113-4775-b794-548636c69507",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f6548f6-1bf0-4bf0-b098-33bd6e5f3355",
              "parent_uuid": "927603ea-4c93-41d6-8c46-eb71ebaa8ec6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81ffd910-1cf9-47e4-8df8-67da0c7bdd32",
                  "parent_uuid": "9f6548f6-1bf0-4bf0-b098-33bd6e5f3355",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "390e537f-c6f6-4096-8ddd-8eaffb956404",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b0b54f7a-ef42-4989-a306-4975c11a5e13",
              "parent_uuid": "390e537f-c6f6-4096-8ddd-8eaffb956404",
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
              "uuid": "d2d92f06-da2c-4140-99c1-7fb83c20e2eb",
              "parent_uuid": "390e537f-c6f6-4096-8ddd-8eaffb956404",
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
              "uuid": "0fcde4e1-9c68-438c-9c13-a16f46391a31",
              "parent_uuid": "390e537f-c6f6-4096-8ddd-8eaffb956404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3c9d861-ecc0-4fdb-a546-15016f9bf672",
                  "parent_uuid": "0fcde4e1-9c68-438c-9c13-a16f46391a31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f65dcc9-c7b3-4b5f-aa00-776c6d7da467",
              "parent_uuid": "390e537f-c6f6-4096-8ddd-8eaffb956404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a015abaa-2d02-49e0-95ea-4a1e7980666b",
                  "parent_uuid": "2f65dcc9-c7b3-4b5f-aa00-776c6d7da467",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8a5cf89-f0e8-4f44-a91b-a23ffea4078e",
              "parent_uuid": "390e537f-c6f6-4096-8ddd-8eaffb956404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "604de72b-6174-491b-b7f2-8231ac2d95d3",
                  "parent_uuid": "d8a5cf89-f0e8-4f44-a91b-a23ffea4078e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14d26be6-3f1c-4de6-ac20-b67e9017a8a2",
              "parent_uuid": "390e537f-c6f6-4096-8ddd-8eaffb956404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b4c20cd-9fc4-4bdd-8979-a9693756eed4",
                  "parent_uuid": "14d26be6-3f1c-4de6-ac20-b67e9017a8a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fc1312ce-f856-4ff2-9e9a-9261b3bc0e88",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24bbad90-1164-46e4-b38b-0fa10bd94f00",
              "parent_uuid": "fc1312ce-f856-4ff2-9e9a-9261b3bc0e88",
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
              "uuid": "5f58a6fa-4da0-4ef7-95bc-216199f49990",
              "parent_uuid": "fc1312ce-f856-4ff2-9e9a-9261b3bc0e88",
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
              "uuid": "0a1840b4-226d-48ce-87a4-f68e68ce9ba8",
              "parent_uuid": "fc1312ce-f856-4ff2-9e9a-9261b3bc0e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e705dabd-6189-416e-ad61-00a7ef02bf70",
                  "parent_uuid": "0a1840b4-226d-48ce-87a4-f68e68ce9ba8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95c0df17-35e0-46a8-9cc0-a50b73fc877f",
              "parent_uuid": "fc1312ce-f856-4ff2-9e9a-9261b3bc0e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed1bff3a-7c9c-408e-9b75-6b492ec97755",
                  "parent_uuid": "95c0df17-35e0-46a8-9cc0-a50b73fc877f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a45f0587-f8c1-4eba-91c2-96cbb469bc99",
              "parent_uuid": "fc1312ce-f856-4ff2-9e9a-9261b3bc0e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03f970a1-df27-4e6f-8b6d-e394b745e279",
                  "parent_uuid": "a45f0587-f8c1-4eba-91c2-96cbb469bc99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09b424b3-c24b-4675-8361-c9d4404d29a1",
              "parent_uuid": "fc1312ce-f856-4ff2-9e9a-9261b3bc0e88",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7793cf6d-a221-4a7d-a4e4-beaa472599e6",
                  "parent_uuid": "09b424b3-c24b-4675-8361-c9d4404d29a1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "28481cdf-9f7d-417e-b9a0-6a7a756b9110",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7155f0b-fc31-4130-8b32-ef5079adad34",
              "parent_uuid": "28481cdf-9f7d-417e-b9a0-6a7a756b9110",
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
              "uuid": "af8ff47d-e186-4276-a248-bef8c2dd5e86",
              "parent_uuid": "28481cdf-9f7d-417e-b9a0-6a7a756b9110",
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
              "uuid": "5250947d-f1f5-4387-98ed-0b6ec35d8218",
              "parent_uuid": "28481cdf-9f7d-417e-b9a0-6a7a756b9110",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "139ad496-d69a-4b0a-8953-5df609add24f",
                  "parent_uuid": "5250947d-f1f5-4387-98ed-0b6ec35d8218",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14260e17-8fbf-4af7-9fc1-1b5627282d2e",
              "parent_uuid": "28481cdf-9f7d-417e-b9a0-6a7a756b9110",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6def89c-9163-4d30-8c44-e52b8dbbf563",
                  "parent_uuid": "14260e17-8fbf-4af7-9fc1-1b5627282d2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a955ed0-4b6a-4213-af76-c450c33c2f08",
              "parent_uuid": "28481cdf-9f7d-417e-b9a0-6a7a756b9110",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a42c7fb3-dace-4188-876d-03fec0bec4e8",
                  "parent_uuid": "5a955ed0-4b6a-4213-af76-c450c33c2f08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29e78f89-782e-4fe2-9226-c78955d7af8c",
              "parent_uuid": "28481cdf-9f7d-417e-b9a0-6a7a756b9110",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9af2a20-fa5d-4ee6-89a9-0e55842aae8b",
                  "parent_uuid": "29e78f89-782e-4fe2-9226-c78955d7af8c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "45a809e8-b2d3-4ed0-8286-06f7fa4f799a",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91c30e85-0d69-471c-af15-317bbfda867c",
              "parent_uuid": "45a809e8-b2d3-4ed0-8286-06f7fa4f799a",
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
              "uuid": "46fb2f29-ea42-4937-bb44-1102247af877",
              "parent_uuid": "45a809e8-b2d3-4ed0-8286-06f7fa4f799a",
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
              "uuid": "8ef2f6f2-8fee-4fb3-b279-8504a0902c96",
              "parent_uuid": "45a809e8-b2d3-4ed0-8286-06f7fa4f799a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6decd32-638e-46e9-839d-c4729b222541",
                  "parent_uuid": "8ef2f6f2-8fee-4fb3-b279-8504a0902c96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dde4a604-ca3f-414e-b489-013315e6c220",
              "parent_uuid": "45a809e8-b2d3-4ed0-8286-06f7fa4f799a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c34de62-cacb-44ce-81d6-a1d04f4a08c6",
                  "parent_uuid": "dde4a604-ca3f-414e-b489-013315e6c220",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "487d9e4b-c9ef-435f-8f00-b2298184b3f3",
              "parent_uuid": "45a809e8-b2d3-4ed0-8286-06f7fa4f799a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30250929-65f3-465c-852b-bc1f928eed18",
                  "parent_uuid": "487d9e4b-c9ef-435f-8f00-b2298184b3f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ecbbbf7-7cd2-4c9a-872c-b48a549bda77",
              "parent_uuid": "45a809e8-b2d3-4ed0-8286-06f7fa4f799a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20778326-3e50-4b45-8344-db2e465ec12f",
                  "parent_uuid": "0ecbbbf7-7cd2-4c9a-872c-b48a549bda77",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7f53a398-3bb7-4af9-bfe7-766c5f092721",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3bd8651c-7166-49f5-a4af-3412fc8450db",
              "parent_uuid": "7f53a398-3bb7-4af9-bfe7-766c5f092721",
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
          "uuid": "dc992352-78e3-4ea6-a3a4-5e9ff99f09e1",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e998ad8d-ce52-4296-8508-98a3cc00ac3c",
              "parent_uuid": "dc992352-78e3-4ea6-a3a4-5e9ff99f09e1",
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
              "uuid": "27263d4c-6b66-4694-8b22-68e4d5692ec6",
              "parent_uuid": "dc992352-78e3-4ea6-a3a4-5e9ff99f09e1",
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
              "uuid": "87304991-32e4-4c39-87c6-785daf7a94fc",
              "parent_uuid": "dc992352-78e3-4ea6-a3a4-5e9ff99f09e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c5560cd-ef83-4480-b048-123c0d1670e2",
                  "parent_uuid": "87304991-32e4-4c39-87c6-785daf7a94fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e32b66d3-d00a-4987-a8ce-a6f9597e9ae8",
              "parent_uuid": "dc992352-78e3-4ea6-a3a4-5e9ff99f09e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef0dcaa9-4b0d-4f15-895f-9bcbe8948af4",
                  "parent_uuid": "e32b66d3-d00a-4987-a8ce-a6f9597e9ae8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "267c4636-ae26-465d-9ef7-2ca6886aeda3",
              "parent_uuid": "dc992352-78e3-4ea6-a3a4-5e9ff99f09e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f56dcb77-5122-42f5-9c30-680fa247a444",
                  "parent_uuid": "267c4636-ae26-465d-9ef7-2ca6886aeda3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f9c8559-740c-4331-a9da-53848cb446e8",
              "parent_uuid": "dc992352-78e3-4ea6-a3a4-5e9ff99f09e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "728e080d-1914-42c2-9296-aff9f93f3cf7",
                  "parent_uuid": "8f9c8559-740c-4331-a9da-53848cb446e8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ba9d309c-4904-40cd-97b9-f48361c9fee7",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9482012f-b535-4f9e-a6c6-718598c3de7c",
              "parent_uuid": "ba9d309c-4904-40cd-97b9-f48361c9fee7",
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
          "uuid": "40b66084-1c95-451a-b8b2-ff7fe3db3573",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c525ef21-4a8e-42dc-94d3-dc5cb4ff0625",
              "parent_uuid": "40b66084-1c95-451a-b8b2-ff7fe3db3573",
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
          "uuid": "4ea4ddf8-509f-4f60-b057-0614038a32fc",
          "parent_uuid": "74474963-cbce-4bf3-a42e-07a548d5190b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "317fe90c-9923-4e15-a855-bc255c1ee1a8",
              "parent_uuid": "4ea4ddf8-509f-4f60-b057-0614038a32fc",
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
                  "uuid": "3df0ee97-684b-45dc-a026-03b7f9803f51",
                  "parent_uuid": "317fe90c-9923-4e15-a855-bc255c1ee1a8",
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

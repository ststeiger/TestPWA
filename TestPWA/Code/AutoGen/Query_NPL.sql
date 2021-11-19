
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
  "uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "f762cf9f-4a00-432f-a6a1-21c64e691c28",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "52a05322-f4c9-465c-bcce-e21a7355804a",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "0be654e9-14f0-47d0-88bd-afc9aaef06f9",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "2652558c-02c7-4d93-9295-b7a3ed270b4d",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "35b8eafd-9dcb-40cc-8124-6161e22dae3e",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "69763d22-7661-44fb-a12e-fdf5a2ff2712",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "60a1ffd5-8a0c-4cf4-a5f4-1a5cd8cd5058",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
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
      "uuid": "952c062e-e142-427c-81c9-e67d083743de",
      "parent_uuid": "3bbf244f-372b-4366-b459-ea8348d11315",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "43bc2360-d6c0-4208-b81c-36920f054d45",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "326b85d1-8065-4faf-96e8-45c1f483f03b",
              "parent_uuid": "43bc2360-d6c0-4208-b81c-36920f054d45",
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
              "uuid": "4bd3281e-5606-462e-8add-88e582f2e09b",
              "parent_uuid": "43bc2360-d6c0-4208-b81c-36920f054d45",
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
              "uuid": "a03e74e5-107d-45bc-8ae4-add2672f06d2",
              "parent_uuid": "43bc2360-d6c0-4208-b81c-36920f054d45",
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
              "uuid": "7a6f1e15-bf81-4795-8b7e-fdcd53d55c98",
              "parent_uuid": "43bc2360-d6c0-4208-b81c-36920f054d45",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "8"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Notenpufferlager</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "e96def27-0d2a-42be-8507-5048746b7ab2",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "b5319a77-8fdc-40ac-8e63-fc5b594c0433",
              "parent_uuid": "e96def27-0d2a-42be-8507-5048746b7ab2",
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
              "uuid": "dfaaf34e-0d45-44c5-a5dc-259cd3b7f0d0",
              "parent_uuid": "e96def27-0d2a-42be-8507-5048746b7ab2",
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
              "uuid": "18878c56-92b7-4614-b227-471b3cd62ae4",
              "parent_uuid": "e96def27-0d2a-42be-8507-5048746b7ab2",
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
              "uuid": "0f8e2979-3453-499b-a18c-c01caa7a056a",
              "parent_uuid": "e96def27-0d2a-42be-8507-5048746b7ab2",
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
          "uuid": "fb033c4f-bde2-4e38-bde7-6889678051bc",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "655789f6-9d1a-4d59-9fc4-1707da3acbf0",
              "parent_uuid": "fb033c4f-bde2-4e38-bde7-6889678051bc",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "22b3c989-be65-486c-9f27-6eb35453e99c",
              "parent_uuid": "fb033c4f-bde2-4e38-bde7-6889678051bc",
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
              "uuid": "574b9987-546b-4fae-ae0b-559d8916fc42",
              "parent_uuid": "fb033c4f-bde2-4e38-bde7-6889678051bc",
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
              "uuid": "295d2dd6-e3f3-4a08-973d-dbe64834ea51",
              "parent_uuid": "fb033c4f-bde2-4e38-bde7-6889678051bc",
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
              "uuid": "4bcc3b41-d413-431a-a141-cf1c8492940e",
              "parent_uuid": "fb033c4f-bde2-4e38-bde7-6889678051bc",
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
              "uuid": "0706ab94-615d-4eb3-826a-d708d1a308fc",
              "parent_uuid": "fb033c4f-bde2-4e38-bde7-6889678051bc",
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
          "uuid": "571c3a41-9552-40ea-bdcd-a8009ae58a44",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9255c199-65e3-4fb0-909d-4fed6bcd33d9",
              "parent_uuid": "571c3a41-9552-40ea-bdcd-a8009ae58a44",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Prüfarbeiten / Funktionskontrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "4d992e1c-a190-4c17-8a2e-c67fe5aba8f9",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fc294f1-3d75-4509-b8e7-eb3e683943ed",
              "parent_uuid": "4d992e1c-a190-4c17-8a2e-c67fe5aba8f9",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Not-Halt Taster (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "08b84674-9b8a-4e78-a94c-17f2fa6ff139",
              "parent_uuid": "4d992e1c-a190-4c17-8a2e-c67fe5aba8f9",
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
              "uuid": "ded79493-3c89-460a-a424-11bd2a9dec19",
              "parent_uuid": "4d992e1c-a190-4c17-8a2e-c67fe5aba8f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6c58bf1-56c9-4f67-a911-6992f84e83d2",
                  "parent_uuid": "ded79493-3c89-460a-a424-11bd2a9dec19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b457d270-08f7-4f7b-a959-57ff68a236b9",
              "parent_uuid": "4d992e1c-a190-4c17-8a2e-c67fe5aba8f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72a6f82d-d171-47e7-a660-2d405239a6af",
                  "parent_uuid": "b457d270-08f7-4f7b-a959-57ff68a236b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22a83cc5-0f62-44f6-9395-8821709c11e0",
              "parent_uuid": "4d992e1c-a190-4c17-8a2e-c67fe5aba8f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1bada34-7f89-49a6-8cdc-b9fa5079dfed",
                  "parent_uuid": "22a83cc5-0f62-44f6-9395-8821709c11e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27d1be59-7489-4477-89dd-3ab188525937",
              "parent_uuid": "4d992e1c-a190-4c17-8a2e-c67fe5aba8f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f4f05cd-db61-4197-b226-1040f966c6db",
                  "parent_uuid": "27d1be59-7489-4477-89dd-3ab188525937",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f3bd5613-23a1-4aa0-afdc-c81e0fd53391",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "230f1e86-4be6-4268-9739-690ced8af034",
              "parent_uuid": "f3bd5613-23a1-4aa0-afdc-c81e0fd53391",
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
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2c4f4001-ce67-4623-ac02-2083b63be0e9",
              "parent_uuid": "f3bd5613-23a1-4aa0-afdc-c81e0fd53391",
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
              "uuid": "de3964fa-5e46-4989-90b1-9a88f1cf4513",
              "parent_uuid": "f3bd5613-23a1-4aa0-afdc-c81e0fd53391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4ee04d9-e83c-492f-abab-c72795166fd3",
                  "parent_uuid": "de3964fa-5e46-4989-90b1-9a88f1cf4513",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae05f164-4d41-4e56-85c4-0bf44a4d5820",
              "parent_uuid": "f3bd5613-23a1-4aa0-afdc-c81e0fd53391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f75da74f-5a5a-48f3-8d4d-8dd40dc4ba94",
                  "parent_uuid": "ae05f164-4d41-4e56-85c4-0bf44a4d5820",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c31fb354-88c7-4e52-b38e-491ef04779de",
              "parent_uuid": "f3bd5613-23a1-4aa0-afdc-c81e0fd53391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f987ed38-34fa-43bf-ada1-df2fa339bbc5",
                  "parent_uuid": "c31fb354-88c7-4e52-b38e-491ef04779de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d2ec04b-82f8-4903-aac6-d233b7573e70",
              "parent_uuid": "f3bd5613-23a1-4aa0-afdc-c81e0fd53391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4171b425-85c5-40f4-9bb4-c47fbb756b0b",
                  "parent_uuid": "2d2ec04b-82f8-4903-aac6-d233b7573e70",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18284b41-bb95-4c55-8cae-ba9267840e10",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef8a7415-009a-4afb-833c-21cb0858fa95",
              "parent_uuid": "18284b41-bb95-4c55-8cae-ba9267840e10",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Funktionstest Brandschutztore bei Wareneingang / Warenausgang / Verarbeitung<br>- Brandschutztor 101 (2x) <br>- Brandschutztor 102 (2x)<br>- Prüfpunkte: Laufverhalten, Endlagen, Abdichtung, Geräusche, Steuerungsanzeige, Abnutzungsescheinungen, </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7de67e14-4300-4845-8523-63fb77934d86",
              "parent_uuid": "18284b41-bb95-4c55-8cae-ba9267840e10",
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
              "uuid": "0324b48c-59aa-426c-a3e8-cea3d9759b7d",
              "parent_uuid": "18284b41-bb95-4c55-8cae-ba9267840e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11c29004-41f0-44d8-8061-aa2cb73c0716",
                  "parent_uuid": "0324b48c-59aa-426c-a3e8-cea3d9759b7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "461bb874-91ce-48a0-8317-dad32b1f6743",
              "parent_uuid": "18284b41-bb95-4c55-8cae-ba9267840e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e10afa8a-cd99-42ed-a2e4-1aeb04147098",
                  "parent_uuid": "461bb874-91ce-48a0-8317-dad32b1f6743",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9957d81b-f431-44ac-a842-0ed36fd06be5",
              "parent_uuid": "18284b41-bb95-4c55-8cae-ba9267840e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3879e45d-9382-4ec8-b82b-c22c7b9be918",
                  "parent_uuid": "9957d81b-f431-44ac-a842-0ed36fd06be5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "926f989c-7c2f-44c9-adcf-eaf9744b2d04",
              "parent_uuid": "18284b41-bb95-4c55-8cae-ba9267840e10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee541069-fb0d-4513-b91d-73332e6a8227",
                  "parent_uuid": "926f989c-7c2f-44c9-adcf-eaf9744b2d04",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a8737808-0c16-483e-9042-90a91e39c6fa",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ffaea292-3962-4913-b47a-10b2ce444705",
              "parent_uuid": "a8737808-0c16-483e-9042-90a91e39c6fa",
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
              "innerHtml": "\r\n                    <span>Zustandsprüfung <b>IT Infrastruktur</b> gemäss Wartungsdokument <br>\"Service- und Wartungsplan IT Infrastruktur\"</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ddc2a16e-c749-4918-8626-8cc61da833c5",
              "parent_uuid": "a8737808-0c16-483e-9042-90a91e39c6fa",
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
              "uuid": "bc5377f6-2160-46b5-b3e7-ecd3083df543",
              "parent_uuid": "a8737808-0c16-483e-9042-90a91e39c6fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc082e82-ffb2-4afd-aac2-b51ff5aa2df0",
                  "parent_uuid": "bc5377f6-2160-46b5-b3e7-ecd3083df543",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92b14b81-be44-49f1-b99a-d071ed050f41",
              "parent_uuid": "a8737808-0c16-483e-9042-90a91e39c6fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27d4f34c-a0c8-46d1-a2a4-e5e200c964e6",
                  "parent_uuid": "92b14b81-be44-49f1-b99a-d071ed050f41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6ea1718-6414-4396-a855-4abacfd48f07",
              "parent_uuid": "a8737808-0c16-483e-9042-90a91e39c6fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92987a37-3b66-4740-9933-14d425a549cf",
                  "parent_uuid": "f6ea1718-6414-4396-a855-4abacfd48f07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fda0206e-c1c1-4dae-a523-d3c9fcbf7d98",
              "parent_uuid": "a8737808-0c16-483e-9042-90a91e39c6fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96129bc1-15e1-4acb-9af3-5eef30afd6ed",
                  "parent_uuid": "fda0206e-c1c1-4dae-a523-d3c9fcbf7d98",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1f571b8b-c21b-4f4e-81a9-7ef2446b2f91",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "317613a2-ae18-42ae-baa3-3b6fbe944d7d",
              "parent_uuid": "1f571b8b-c21b-4f4e-81a9-7ef2446b2f91",
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
                  "88"
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
              "innerHtml": "\r\n                    <span><b>Pneumatikzentrale</b> für alle unterschiedlichen Anlagebereiche in Steigzone auf Funktion, genügend Druck, Dichtheit prüfen<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "77203026-c363-422b-be52-a0914a594a49",
              "parent_uuid": "1f571b8b-c21b-4f4e-81a9-7ef2446b2f91",
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
              "uuid": "2bd0ad1d-4842-487a-9514-38a79abc8eb3",
              "parent_uuid": "1f571b8b-c21b-4f4e-81a9-7ef2446b2f91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "998d0b65-e20f-4939-b860-dd2ac2b8fd40",
                  "parent_uuid": "2bd0ad1d-4842-487a-9514-38a79abc8eb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44af8645-27ed-425c-8cc9-ad59c14beaea",
              "parent_uuid": "1f571b8b-c21b-4f4e-81a9-7ef2446b2f91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cd1ab25-874d-4219-81e0-6deb23107dbe",
                  "parent_uuid": "44af8645-27ed-425c-8cc9-ad59c14beaea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e541a362-65ca-4013-be3b-e8da1c1fdc0d",
              "parent_uuid": "1f571b8b-c21b-4f4e-81a9-7ef2446b2f91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11e68b9b-46c9-4bae-9bf7-b867246bce80",
                  "parent_uuid": "e541a362-65ca-4013-be3b-e8da1c1fdc0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ff3075c-1a3a-4b27-b6d6-9900feac01ca",
              "parent_uuid": "1f571b8b-c21b-4f4e-81a9-7ef2446b2f91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e22cff9-a1c6-4d8f-9e60-1719cb9724c0",
                  "parent_uuid": "4ff3075c-1a3a-4b27-b6d6-9900feac01ca",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86d37658-0c87-4c1f-9fbe-def712f95255",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db78f9f5-0c80-45f2-bc86-f0f5ec1bf7c9",
              "parent_uuid": "86d37658-0c87-4c1f-9fbe-def712f95255",
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
                  "74"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Rollenantriebe in der <b>Fördertechnik</b> prüfen<br>- Antriebsriemen (Risse, Abnutzung)<br>- Motorrollen (Laufruhe, Leichtgängigkeit, Lagerzustand)<br>- Befestigung (Klipp, Verschraubung)<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7c1ac5f0-99a7-4d37-93cb-de6de58b74be",
              "parent_uuid": "86d37658-0c87-4c1f-9fbe-def712f95255",
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
              "uuid": "b3739c74-0efa-4e23-9551-f7d6bf156e99",
              "parent_uuid": "86d37658-0c87-4c1f-9fbe-def712f95255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a79163e-fd0e-4e04-a9e9-daf98a3c52a5",
                  "parent_uuid": "b3739c74-0efa-4e23-9551-f7d6bf156e99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4636b9a-c69c-4621-9ced-38a19ca760c1",
              "parent_uuid": "86d37658-0c87-4c1f-9fbe-def712f95255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c87ed43-ee7b-4330-91b7-d12281cac579",
                  "parent_uuid": "e4636b9a-c69c-4621-9ced-38a19ca760c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8dd72aa-ac5b-411d-8dc8-2103bf70b625",
              "parent_uuid": "86d37658-0c87-4c1f-9fbe-def712f95255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f26b4f06-05d4-4784-b3a7-30b019a68799",
                  "parent_uuid": "f8dd72aa-ac5b-411d-8dc8-2103bf70b625",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f62024de-8061-463e-8e3b-aba4375e037d",
              "parent_uuid": "86d37658-0c87-4c1f-9fbe-def712f95255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de809c50-da63-49ac-9968-2375f23a9109",
                  "parent_uuid": "f62024de-8061-463e-8e3b-aba4375e037d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "661b026b-1db2-4162-80da-4d1249cf235f",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a14ee93c-219b-47fa-924e-0d16402689f8",
              "parent_uuid": "661b026b-1db2-4162-80da-4d1249cf235f",
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
                  "53"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Hubstopper</b> in der Fördetechnik prüfen<br>- Dichtheit der Ventile<br>- Bewegungsgeschwindigkeit, Endanschlag des Balkens (Pneumatikzylinder)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "966cbd98-4b61-4723-ba33-d34f2e5e2b5a",
              "parent_uuid": "661b026b-1db2-4162-80da-4d1249cf235f",
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
              "uuid": "9ca069d9-8a83-4404-b4e3-b31251e79cdf",
              "parent_uuid": "661b026b-1db2-4162-80da-4d1249cf235f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78dbeac5-eedc-4ecf-97e3-112cb396cd90",
                  "parent_uuid": "9ca069d9-8a83-4404-b4e3-b31251e79cdf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5000ec3b-be55-43ea-99e2-e65bf87b7887",
              "parent_uuid": "661b026b-1db2-4162-80da-4d1249cf235f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "928ade9f-a5f9-46d7-94cf-f0db49681ea1",
                  "parent_uuid": "5000ec3b-be55-43ea-99e2-e65bf87b7887",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "618b07ef-6ce5-4e1e-9d8d-0feb2fc7990d",
              "parent_uuid": "661b026b-1db2-4162-80da-4d1249cf235f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7627c948-1476-469b-8a22-f90c54630c60",
                  "parent_uuid": "618b07ef-6ce5-4e1e-9d8d-0feb2fc7990d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6b751bd-ee36-4fb1-a4f3-f93e7619413b",
              "parent_uuid": "661b026b-1db2-4162-80da-4d1249cf235f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72406a0f-575a-4158-95c1-1342a118bd93",
                  "parent_uuid": "f6b751bd-ee36-4fb1-a4f3-f93e7619413b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "22ce2fff-6654-4915-a177-37ff29e4170a",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e952b8d-f7b5-4e9f-b7bc-074a5b6d7acb",
              "parent_uuid": "22ce2fff-6654-4915-a177-37ff29e4170a",
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
                  "139"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Gurtumsetzer</b> prüfen<br>- Mechanische Spannung der Antriebsriemen beim Schwert (Flachriemen)<br>- Dichtheit der Ventile<br>- Mechanische Bewegung der einzelnen Schwerter (Pneumatikzylinder)<br>- Antriebsketten der Schwerter<br>- Antriebsriemen<br>- Asynchronmotor inkl. Mechanik (Kann manuell per Schütz angesteuert werden)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c102b6e4-0f07-4503-a90e-db15d26622d9",
              "parent_uuid": "22ce2fff-6654-4915-a177-37ff29e4170a",
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
              "uuid": "8f4dfa0c-d98c-4682-9717-ef9fc243df3b",
              "parent_uuid": "22ce2fff-6654-4915-a177-37ff29e4170a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50f7d240-1cbb-4a45-bc15-66b59885416c",
                  "parent_uuid": "8f4dfa0c-d98c-4682-9717-ef9fc243df3b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ceafb07d-2b34-438a-af02-5fdd63dac3bc",
              "parent_uuid": "22ce2fff-6654-4915-a177-37ff29e4170a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29d761ef-4199-495f-aa94-48389a667d74",
                  "parent_uuid": "ceafb07d-2b34-438a-af02-5fdd63dac3bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58d1bd2b-900a-4d7a-b012-6eae656d5a60",
              "parent_uuid": "22ce2fff-6654-4915-a177-37ff29e4170a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "260210f0-64cb-4bc0-a55d-7e24c84648b4",
                  "parent_uuid": "58d1bd2b-900a-4d7a-b012-6eae656d5a60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f106e9ff-2cda-4422-a249-0ed535a5b58f",
              "parent_uuid": "22ce2fff-6654-4915-a177-37ff29e4170a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f410af41-82a1-40aa-a024-bd07def3e2c5",
                  "parent_uuid": "f106e9ff-2cda-4422-a249-0ed535a5b58f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1872967d-8d0f-41d7-a4d5-99f5198b5c07",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "93a060b8-8893-46ad-ac30-33c9b4584656",
              "parent_uuid": "1872967d-8d0f-41d7-a4d5-99f5198b5c07",
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
                  "110"
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
              "innerHtml": "\r\n                    <span>Zustand, Funktion, Ausrichtung aller <b>Sensoren</b> auf Reflektoren, Sicherheits-Lichtgitter kontrollieren<br>- Fördertechnik<br>- OSR<br>- Behälterlifte<br>- OSR-Lifte</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "97e2f77b-6b87-4270-a8d7-b1a9466ab327",
              "parent_uuid": "1872967d-8d0f-41d7-a4d5-99f5198b5c07",
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
              "uuid": "6b4c7072-d6b5-47e3-ae3e-ec9e32f2daf3",
              "parent_uuid": "1872967d-8d0f-41d7-a4d5-99f5198b5c07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "707c179f-5d66-4181-9011-c8107f1f5b15",
                  "parent_uuid": "6b4c7072-d6b5-47e3-ae3e-ec9e32f2daf3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13f13442-130f-497c-8773-eb5135fca3c5",
              "parent_uuid": "1872967d-8d0f-41d7-a4d5-99f5198b5c07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5041f8a8-bf03-466e-bb83-cc23303a9a27",
                  "parent_uuid": "13f13442-130f-497c-8773-eb5135fca3c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92978719-1eae-4e3d-a6d0-47397a03bfa0",
              "parent_uuid": "1872967d-8d0f-41d7-a4d5-99f5198b5c07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee385262-dea4-4628-bc8d-cb1b489b0589",
                  "parent_uuid": "92978719-1eae-4e3d-a6d0-47397a03bfa0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67a88853-4f55-427d-8724-950d87da7d83",
              "parent_uuid": "1872967d-8d0f-41d7-a4d5-99f5198b5c07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17706a41-28b7-4492-a5af-65f036be2051",
                  "parent_uuid": "67a88853-4f55-427d-8724-950d87da7d83",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6ebff350-903e-4ff7-86a6-e6ba790a297b",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be5902e6-87d0-45d7-820f-ba987a50b620",
              "parent_uuid": "6ebff350-903e-4ff7-86a6-e6ba790a297b",
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion des <b>EBG/Shuttleliftes</b> für Shuttletausch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b24846e1-d386-4ccc-a742-4a191aa4d02a",
              "parent_uuid": "6ebff350-903e-4ff7-86a6-e6ba790a297b",
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
              "uuid": "3d332403-aa84-44ef-a636-da6b5204671a",
              "parent_uuid": "6ebff350-903e-4ff7-86a6-e6ba790a297b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4a4a0c0-9736-4fce-bd7f-5d067fe9faaa",
                  "parent_uuid": "3d332403-aa84-44ef-a636-da6b5204671a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28964095-09e9-4931-87b1-437664cabeb3",
              "parent_uuid": "6ebff350-903e-4ff7-86a6-e6ba790a297b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2f77c0a-3c0f-4f08-9f24-97036baf311e",
                  "parent_uuid": "28964095-09e9-4931-87b1-437664cabeb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4b6f3a2-2b3e-47fa-b050-14c5d8dae0c8",
              "parent_uuid": "6ebff350-903e-4ff7-86a6-e6ba790a297b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91f3d59b-6c23-4c45-855e-1826825a578b",
                  "parent_uuid": "b4b6f3a2-2b3e-47fa-b050-14c5d8dae0c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d80fe87-6b7e-453f-a534-fbea537ae278",
              "parent_uuid": "6ebff350-903e-4ff7-86a6-e6ba790a297b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2cab4e3-c945-4371-8c0e-da3954da67b9",
                  "parent_uuid": "3d80fe87-6b7e-453f-a534-fbea537ae278",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29b81a8d-e29b-4c9d-8189-053a87a51c35",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1568d24a-9e63-4c3f-8b81-f900bb9bbe77",
              "parent_uuid": "29b81a8d-e29b-4c9d-8189-053a87a51c35",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>OSR-Lifte</b><br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c6381a08-e801-413f-9af2-0a3dd9025a01",
              "parent_uuid": "29b81a8d-e29b-4c9d-8189-053a87a51c35",
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
              "uuid": "e37b99ce-787c-4635-b79a-62a03ddc9dfc",
              "parent_uuid": "29b81a8d-e29b-4c9d-8189-053a87a51c35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5ab6c4b-a03b-445f-a960-1b9d04eda277",
                  "parent_uuid": "e37b99ce-787c-4635-b79a-62a03ddc9dfc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b161efb-e01a-48b5-ae81-774636a6ae60",
              "parent_uuid": "29b81a8d-e29b-4c9d-8189-053a87a51c35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32d109d3-ad63-4cf6-b8cf-8f1b21537d46",
                  "parent_uuid": "4b161efb-e01a-48b5-ae81-774636a6ae60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ce1ec0a-675b-4944-8fe6-0f085a565736",
              "parent_uuid": "29b81a8d-e29b-4c9d-8189-053a87a51c35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da7bb3d1-85bf-45dc-9293-a2c24bf31f38",
                  "parent_uuid": "3ce1ec0a-675b-4944-8fe6-0f085a565736",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bff0a92-6f4a-4e3f-9ee9-df8f007f60b3",
              "parent_uuid": "29b81a8d-e29b-4c9d-8189-053a87a51c35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1f15fd3-b4bf-4b06-a69f-d4c63ef41605",
                  "parent_uuid": "6bff0a92-6f4a-4e3f-9ee9-df8f007f60b3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b6cedf43-e472-4ecf-bab4-9048aaf66667",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4f3b899-0ae6-4243-8111-ff09d4fb3eb5",
              "parent_uuid": "b6cedf43-e472-4ecf-bab4-9048aaf66667",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>Behälterlift/Liftplattform</b><br>- Bewegung Liftplattform (Laufruhe, Vibrationen, Geräusche)<br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fa1f7319-ba6e-4939-952b-c97678ff049a",
              "parent_uuid": "b6cedf43-e472-4ecf-bab4-9048aaf66667",
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
              "uuid": "f8240bc2-31d8-4ae3-8a7c-dbb4eef38188",
              "parent_uuid": "b6cedf43-e472-4ecf-bab4-9048aaf66667",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56bf35ed-4368-49b1-8264-e0833d09b4b5",
                  "parent_uuid": "f8240bc2-31d8-4ae3-8a7c-dbb4eef38188",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28fdfd71-4d6a-479d-833d-2802e00d5a22",
              "parent_uuid": "b6cedf43-e472-4ecf-bab4-9048aaf66667",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b78bb616-b2ef-4cb5-89da-53c1660983cb",
                  "parent_uuid": "28fdfd71-4d6a-479d-833d-2802e00d5a22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd934c1b-ba70-4589-b1a3-8bb5e03ac33b",
              "parent_uuid": "b6cedf43-e472-4ecf-bab4-9048aaf66667",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2561047-922f-4a15-a249-8968610999a4",
                  "parent_uuid": "bd934c1b-ba70-4589-b1a3-8bb5e03ac33b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c24cdb8-8ff5-4964-8591-1b59ab02bef2",
              "parent_uuid": "b6cedf43-e472-4ecf-bab4-9048aaf66667",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fa3cf11-8664-4c66-89a8-ec7af2735668",
                  "parent_uuid": "1c24cdb8-8ff5-4964-8591-1b59ab02bef2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "018e806b-eb66-4400-8cdf-86f8f1fa3bd2",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbd7cacb-d173-4b1c-b78c-f6f5af3c6e14",
              "parent_uuid": "018e806b-eb66-4400-8cdf-86f8f1fa3bd2",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Distanzen<br>- Laufräder für Längs- und Querfahrwerk, Seitenführungsrad (Lagerung, Laufruhe)<br>- Teleskoparme, Antriebkette<br>- Drehgeber, Induktivgeber<br>- Gassenfahrt, Quergassenfahrt, Behälterentnahme, Behältereinlagerung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ef9ea797-c6f1-4496-80b5-bf28155336a0",
              "parent_uuid": "018e806b-eb66-4400-8cdf-86f8f1fa3bd2",
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
              "uuid": "a7adf707-91e4-4777-901a-713f27ffef39",
              "parent_uuid": "018e806b-eb66-4400-8cdf-86f8f1fa3bd2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ca967e3-bcd2-4536-9c3f-649670f0046c",
                  "parent_uuid": "a7adf707-91e4-4777-901a-713f27ffef39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f1dafb9-c4e1-4338-83df-933528064cd2",
              "parent_uuid": "018e806b-eb66-4400-8cdf-86f8f1fa3bd2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efbe8c9d-6665-4fc1-a994-272203b8976a",
                  "parent_uuid": "0f1dafb9-c4e1-4338-83df-933528064cd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c58800f3-665b-4698-ab6a-de33c1893cf1",
              "parent_uuid": "018e806b-eb66-4400-8cdf-86f8f1fa3bd2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d0715c7-21aa-4aec-913d-0e6289ac2df3",
                  "parent_uuid": "c58800f3-665b-4698-ab6a-de33c1893cf1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdbaaa97-3b03-4aba-afaa-cb61c8cd6382",
              "parent_uuid": "018e806b-eb66-4400-8cdf-86f8f1fa3bd2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17e66d5e-2d94-4bbf-bf58-ddc5d43d1078",
                  "parent_uuid": "cdbaaa97-3b03-4aba-afaa-cb61c8cd6382",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bfc5b475-4dd9-432b-b626-9ba83b8a139d",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12c4b920-5d29-4dd0-8a85-83f2a7e0e709",
              "parent_uuid": "bfc5b475-4dd9-432b-b626-9ba83b8a139d",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand und Funktion der <b>Schutzvorrichtung</b> zu den Gassenbereichen<br>- Knapp-Lock<br>- Not-Halt Taster<br>- Schutzzaun, Schutzabdeckung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "215ee9fb-c0b0-48c5-a0d5-44aa6648a5d6",
              "parent_uuid": "bfc5b475-4dd9-432b-b626-9ba83b8a139d",
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
              "uuid": "629ccc0f-ac39-49c5-9c16-0b0c6e5915e4",
              "parent_uuid": "bfc5b475-4dd9-432b-b626-9ba83b8a139d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a688de03-6113-49c7-a881-e502d25fd887",
                  "parent_uuid": "629ccc0f-ac39-49c5-9c16-0b0c6e5915e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c69f7b2f-86e7-43a3-b65b-06e67dbbba83",
              "parent_uuid": "bfc5b475-4dd9-432b-b626-9ba83b8a139d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09dfc742-cb87-4791-b6cb-665541f422ac",
                  "parent_uuid": "c69f7b2f-86e7-43a3-b65b-06e67dbbba83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3f5feb0-7685-4dec-8567-ab057d5ce17d",
              "parent_uuid": "bfc5b475-4dd9-432b-b626-9ba83b8a139d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d89bf9ce-6e64-419e-aaa9-1428b6ed436e",
                  "parent_uuid": "f3f5feb0-7685-4dec-8567-ab057d5ce17d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20402b3b-551f-4332-b68f-623306b0698d",
              "parent_uuid": "bfc5b475-4dd9-432b-b626-9ba83b8a139d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ecd36931-6b71-4018-a9fa-359c3cae8eb1",
                  "parent_uuid": "20402b3b-551f-4332-b68f-623306b0698d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "218885a1-f77d-4bb7-b772-7d66cb1b0190",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "9048a25b-6c08-44a1-b9b8-2a4ab315f8d3",
              "parent_uuid": "218885a1-f77d-4bb7-b772-7d66cb1b0190",
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "3167893d-647b-4ab0-a669-507ce5303206",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2bc13ff1-a8a2-46e5-bfa3-f2637c3298f7",
              "parent_uuid": "3167893d-647b-4ab0-a669-507ce5303206",
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
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "4630a514-4f98-4e9f-97d9-3ba06c61afb2",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7d5cf62-249a-4d7c-ad99-00aa6fb86a71",
              "parent_uuid": "4630a514-4f98-4e9f-97d9-3ba06c61afb2",
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
                  "uuid": "892c39e7-c089-4035-9dda-52e780af891d",
                  "parent_uuid": "f7d5cf62-249a-4d7c-ad99-00aa6fb86a71",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "be623be5-a6bd-4fef-9c43-64d2fb80919a",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86f1b746-e10e-4682-8e1a-2dcb283e3846",
              "parent_uuid": "be623be5-a6bd-4fef-9c43-64d2fb80919a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000"
                ],
                [
                  "height",
                  "30"
                ],
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "7ffb6875-10b4-440b-99c3-070fa03335ab",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "95704b3d-5c36-4c38-84cd-6c2809be9a1d",
              "parent_uuid": "7ffb6875-10b4-440b-99c3-070fa03335ab",
              "tagName": "td",
              "properties": [
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
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten TK01.01 / .02 / .03</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "d7c2e1bb-bc5b-4797-9ecf-e18fbf160637",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d121ee9-5a64-4e09-b9b3-b658da5bef64",
              "parent_uuid": "d7c2e1bb-bc5b-4797-9ecf-e18fbf160637",
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
                  "109"
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
              "innerHtml": "\r\n                    <span>Reinigung der Fördertechnik<br>- Barcodescanner (mittels trockenem, fusselfreiem Tuch)<br>- Optische Sensoren / Reflektoren (mittels trockenem, fusselfreiem Tuch)<br>- Antriebsriemen<br>- Antriebsrollen<br>- Gurtumsetzer</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "df9127e8-efb7-4771-8086-11c861e91b16",
              "parent_uuid": "d7c2e1bb-bc5b-4797-9ecf-e18fbf160637",
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
              "uuid": "8abc74d0-a14e-4497-9d37-db4f56b83562",
              "parent_uuid": "d7c2e1bb-bc5b-4797-9ecf-e18fbf160637",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c59af918-0a50-4b17-be8e-9fd90c86502e",
                  "parent_uuid": "8abc74d0-a14e-4497-9d37-db4f56b83562",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6efdd511-c0c6-4061-8a40-987359c47a6b",
              "parent_uuid": "d7c2e1bb-bc5b-4797-9ecf-e18fbf160637",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75a2b3ce-2d0f-46ca-a70a-5e8631f260ca",
                  "parent_uuid": "6efdd511-c0c6-4061-8a40-987359c47a6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bd62ce5-a61d-4bfd-a837-f31ebbbc35ec",
              "parent_uuid": "d7c2e1bb-bc5b-4797-9ecf-e18fbf160637",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7fbde54-8ae7-44e2-816d-0fba724b7e1d",
                  "parent_uuid": "6bd62ce5-a61d-4bfd-a837-f31ebbbc35ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26cd7a55-0c3f-4fe4-9c5d-f413c54010c6",
              "parent_uuid": "d7c2e1bb-bc5b-4797-9ecf-e18fbf160637",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78077f4d-6fb7-4eb1-8e4a-6f0b3ef09ec0",
                  "parent_uuid": "26cd7a55-0c3f-4fe4-9c5d-f413c54010c6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6650f34-dee1-49e9-bd42-6a636f70e984",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4d61e71-e441-48a9-bb20-9713666f3595",
              "parent_uuid": "d6650f34-dee1-49e9-bd42-6a636f70e984",
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
                  "115"
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
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschränke mittels Staubsauger, Filtermattenaustausch<br>- VERW: F01.GB01<br>- WA: F01.GB02<br>- WE: F01.GB03<br>- Steigzone: F01.GB04 / F01.GB05 / F01.1 / F01.2</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ba1e8dfc-d54b-4ab0-84cf-5ad89b487596",
              "parent_uuid": "d6650f34-dee1-49e9-bd42-6a636f70e984",
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
              "uuid": "4cff9f65-f284-4e8a-b6b3-8512ba1130ae",
              "parent_uuid": "d6650f34-dee1-49e9-bd42-6a636f70e984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ba660df-a818-47d4-8d2c-ce346c66bb38",
                  "parent_uuid": "4cff9f65-f284-4e8a-b6b3-8512ba1130ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "872b76aa-2a04-4a6f-9dd9-6092780f1893",
              "parent_uuid": "d6650f34-dee1-49e9-bd42-6a636f70e984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b714364-d37a-4add-b166-73d8049c4ef1",
                  "parent_uuid": "872b76aa-2a04-4a6f-9dd9-6092780f1893",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0194875d-ece7-40ba-8c8d-929ec65a9c3c",
              "parent_uuid": "d6650f34-dee1-49e9-bd42-6a636f70e984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e23f06b-2e43-4228-a6f3-4e3507f91fdd",
                  "parent_uuid": "0194875d-ece7-40ba-8c8d-929ec65a9c3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44f6fe0c-d41c-46c4-ad98-2434d9e35375",
              "parent_uuid": "d6650f34-dee1-49e9-bd42-6a636f70e984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa49bd11-4b0f-4399-b0ae-da94a44c415b",
                  "parent_uuid": "44f6fe0c-d41c-46c4-ad98-2434d9e35375",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "04aae08d-d395-42f7-8314-8ae0965de10f",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24cf3b00-d09f-48de-9f56-33a425d7a58a",
              "parent_uuid": "04aae08d-d395-42f7-8314-8ae0965de10f",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Brandschutztore (Stöbich)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ae14b778-441f-4930-a93a-bcff79413238",
              "parent_uuid": "04aae08d-d395-42f7-8314-8ae0965de10f",
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
              "uuid": "922a4805-492b-42d0-964b-afd7fd1aaf36",
              "parent_uuid": "04aae08d-d395-42f7-8314-8ae0965de10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c544c17a-aafd-4ed1-89ca-3295381c25ee",
                  "parent_uuid": "922a4805-492b-42d0-964b-afd7fd1aaf36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10c14eef-1285-4841-8933-4d9d6ae2dd20",
              "parent_uuid": "04aae08d-d395-42f7-8314-8ae0965de10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c129cdbe-0a44-4a62-97ca-623d48b176d3",
                  "parent_uuid": "10c14eef-1285-4841-8933-4d9d6ae2dd20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87099327-7365-4296-9197-053679f1e321",
              "parent_uuid": "04aae08d-d395-42f7-8314-8ae0965de10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3c352b2-7c37-4b9e-b2e9-703900f412e7",
                  "parent_uuid": "87099327-7365-4296-9197-053679f1e321",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7943e1e-765c-42a2-8f0a-44d7224c1981",
              "parent_uuid": "04aae08d-d395-42f7-8314-8ae0965de10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1af1ee2-44fb-4efd-ab0e-5f6d6197275a",
                  "parent_uuid": "c7943e1e-765c-42a2-8f0a-44d7224c1981",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "598e8bee-eb03-487c-a098-a88e8c5af219",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c8a2df9-c032-4d35-8392-a88c3fe057be",
              "parent_uuid": "598e8bee-eb03-487c-a098-a88e8c5af219",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Tresorschieber (Hügli)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cea22895-6023-4f44-a39e-c3ebb80bd48a",
              "parent_uuid": "598e8bee-eb03-487c-a098-a88e8c5af219",
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
              "uuid": "48edac7f-06d3-4ebe-91c8-1a9d8528a63b",
              "parent_uuid": "598e8bee-eb03-487c-a098-a88e8c5af219",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a32c347c-cbc8-4a99-b55b-d36e94f7d613",
                  "parent_uuid": "48edac7f-06d3-4ebe-91c8-1a9d8528a63b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ae39ea6-e67b-45e2-af9c-886b7e91e623",
              "parent_uuid": "598e8bee-eb03-487c-a098-a88e8c5af219",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1689b1bd-b7dd-490a-9360-590546c8cb65",
                  "parent_uuid": "4ae39ea6-e67b-45e2-af9c-886b7e91e623",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "928690f4-f86f-412e-ab2c-8f5a0985b29f",
              "parent_uuid": "598e8bee-eb03-487c-a098-a88e8c5af219",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2697175-52ab-4f03-8e68-69b626a357c4",
                  "parent_uuid": "928690f4-f86f-412e-ab2c-8f5a0985b29f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba57aabf-5380-4471-af61-a0ef6393ea82",
              "parent_uuid": "598e8bee-eb03-487c-a098-a88e8c5af219",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da3c08f9-051c-45af-9246-bf0fa466f6f1",
                  "parent_uuid": "ba57aabf-5380-4471-af61-a0ef6393ea82",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c32fc6c-6a23-4533-bf65-db242748227b",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1fe0922b-4d7c-41b6-99c2-bfec2c187512",
              "parent_uuid": "6c32fc6c-6a23-4533-bf65-db242748227b",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten OSR U30</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "acad5e09-f2fe-43a2-b9ed-fc8e0ed251f3",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1ccf632-f0f3-4586-bd51-4a9f5261df04",
              "parent_uuid": "acad5e09-f2fe-43a2-b9ed-fc8e0ed251f3",
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
              "innerHtml": "\r\n                    <span>Reinigung <b>dezentraler Steuerschränke</b> mittels Staubsauger, Filtermattenaustausch<br>- SH01.04+BHLF1<br>- SH01.01+F1<br>- SH01.01+SUV01<br>- SH01.02+SUV01<br>- SH01.03+SUV01<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "196ed453-7b3a-4259-8e05-0551a1ea64ef",
              "parent_uuid": "acad5e09-f2fe-43a2-b9ed-fc8e0ed251f3",
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
              "uuid": "0874f52d-3324-464f-b84f-1ae712adca7b",
              "parent_uuid": "acad5e09-f2fe-43a2-b9ed-fc8e0ed251f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ae3f558-fbe2-4446-b9d0-66aa5d27f0c7",
                  "parent_uuid": "0874f52d-3324-464f-b84f-1ae712adca7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba052adb-3ada-46a0-81c9-b7349855ec10",
              "parent_uuid": "acad5e09-f2fe-43a2-b9ed-fc8e0ed251f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec0f885b-697b-45d0-ab70-43557cc3df3d",
                  "parent_uuid": "ba052adb-3ada-46a0-81c9-b7349855ec10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6097188-e2f7-4606-b0ed-1230a6f85204",
              "parent_uuid": "acad5e09-f2fe-43a2-b9ed-fc8e0ed251f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f762490-e48e-4c18-9ec4-5853e63bfebb",
                  "parent_uuid": "a6097188-e2f7-4606-b0ed-1230a6f85204",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e6de612-f0c7-484c-b594-30b5bda97443",
              "parent_uuid": "acad5e09-f2fe-43a2-b9ed-fc8e0ed251f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b10f1072-aca9-4456-a73f-df304251a17c",
                  "parent_uuid": "7e6de612-f0c7-484c-b594-30b5bda97443",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "849c4940-7532-42e6-ba18-52d641cd5b16",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8c0604b-fecf-4c60-80d6-9d2bb35b625e",
              "parent_uuid": "849c4940-7532-42e6-ba18-52d641cd5b16",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten in den <b>Gassenbereichen</b><br>- Knapp-Lock<br>- Quergangüberwachungssensoren<br>- Reflektorfolien<br>- Fahrprofil<br>- Stromschienen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f32f81a7-bb02-49e6-ba60-b4985ee7c575",
              "parent_uuid": "849c4940-7532-42e6-ba18-52d641cd5b16",
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
              "uuid": "0bdf999b-3f7f-4348-95aa-8ef4fc08bc1d",
              "parent_uuid": "849c4940-7532-42e6-ba18-52d641cd5b16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7267f3a0-2788-40e7-8368-c03d58f14789",
                  "parent_uuid": "0bdf999b-3f7f-4348-95aa-8ef4fc08bc1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6e9f26c-c98d-45b5-9616-897399c2b628",
              "parent_uuid": "849c4940-7532-42e6-ba18-52d641cd5b16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d513a55-518a-45e8-bd86-29369aa2c8a4",
                  "parent_uuid": "f6e9f26c-c98d-45b5-9616-897399c2b628",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f970a906-25bc-43df-bd18-57e3a8b6b227",
              "parent_uuid": "849c4940-7532-42e6-ba18-52d641cd5b16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7b32ada-357a-4119-96c2-f330bb27c3ba",
                  "parent_uuid": "f970a906-25bc-43df-bd18-57e3a8b6b227",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de67166a-1ba6-48e6-8b09-fed6b88b43e9",
              "parent_uuid": "849c4940-7532-42e6-ba18-52d641cd5b16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7ff2ee2-89e5-48fd-960d-1c2997e70a5f",
                  "parent_uuid": "de67166a-1ba6-48e6-8b09-fed6b88b43e9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "05d11a2d-9cb5-4aa3-881c-ff5ceca1a76c",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c1e43895-ccb0-4273-92ac-36bf4694cc09",
              "parent_uuid": "05d11a2d-9cb5-4aa3-881c-ff5ceca1a76c",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten im <b>OSR Shuttle-Lift Zwischenpuffer</b><br>- Optische Sensoren, Reflektoren<br>- Gabellichtschranke<br>- Sicherheitslichtgitter<br>- Keilrippenriemen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d359ce14-c216-4fed-aca3-0ab22da94462",
              "parent_uuid": "05d11a2d-9cb5-4aa3-881c-ff5ceca1a76c",
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
              "uuid": "44f90a4a-d145-4732-b348-d415395d39b3",
              "parent_uuid": "05d11a2d-9cb5-4aa3-881c-ff5ceca1a76c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f3d0f5c-155e-4d5d-929c-5d914d9df60a",
                  "parent_uuid": "44f90a4a-d145-4732-b348-d415395d39b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75c17665-e2b1-45c0-a020-ff3ebd854925",
              "parent_uuid": "05d11a2d-9cb5-4aa3-881c-ff5ceca1a76c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64b7048f-377e-43a8-84e0-35095528a9e5",
                  "parent_uuid": "75c17665-e2b1-45c0-a020-ff3ebd854925",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1df652a4-fddd-4554-996f-4218ef85aec6",
              "parent_uuid": "05d11a2d-9cb5-4aa3-881c-ff5ceca1a76c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94529834-473d-4dfd-9f9d-973ee9e0b5a5",
                  "parent_uuid": "1df652a4-fddd-4554-996f-4218ef85aec6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2743b46-c6fe-4314-bce2-51cafef49f01",
              "parent_uuid": "05d11a2d-9cb5-4aa3-881c-ff5ceca1a76c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2263ca68-b991-4322-9e3a-eb4521d3af5c",
                  "parent_uuid": "f2743b46-c6fe-4314-bce2-51cafef49f01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "169cfd74-62e1-4cb7-88f8-fc09744861a6",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efe454d5-6d76-45e3-bba4-d6f151325e8b",
              "parent_uuid": "169cfd74-62e1-4cb7-88f8-fc09744861a6",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Reflektoren<br>- Gleitleiste, Schleifer, Laufräder<br>- LED-Steifen, Shuttlegehäuse<br>- Teleskoparme, Antriebkette</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "49b1ae18-87bb-431b-960f-d7f2e5dd41a9",
              "parent_uuid": "169cfd74-62e1-4cb7-88f8-fc09744861a6",
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
              "uuid": "e4967895-1eca-453c-aaa6-642c8653eb13",
              "parent_uuid": "169cfd74-62e1-4cb7-88f8-fc09744861a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d289924a-ad8b-4119-a9cf-9cedadaad5b5",
                  "parent_uuid": "e4967895-1eca-453c-aaa6-642c8653eb13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "050d4939-a9b2-477a-9f80-9997b2101206",
              "parent_uuid": "169cfd74-62e1-4cb7-88f8-fc09744861a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "408754dd-5aa0-4c34-b2c7-a44789d49609",
                  "parent_uuid": "050d4939-a9b2-477a-9f80-9997b2101206",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b0a9d42-bda9-4d61-b60a-ccaa747a8ea3",
              "parent_uuid": "169cfd74-62e1-4cb7-88f8-fc09744861a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db686270-4256-4c20-ac79-46208be9ba96",
                  "parent_uuid": "9b0a9d42-bda9-4d61-b60a-ccaa747a8ea3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf7c3736-f07b-406b-9726-c22a9d7c5c0f",
              "parent_uuid": "169cfd74-62e1-4cb7-88f8-fc09744861a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e582685-df1c-435d-8e7f-5090858fd70d",
                  "parent_uuid": "cf7c3736-f07b-406b-9726-c22a9d7c5c0f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "bc51ecc9-ec19-40ae-8516-a9c9924f5fff",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3efd7fc0-5d42-4157-8907-7ae2ceb7e776",
              "parent_uuid": "bc51ecc9-ec19-40ae-8516-a9c9924f5fff",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "0a429ba0-9f7d-4a8f-a4c1-eff2cc44782b",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "431ead9b-a040-412f-a7d0-d38486fd7cbf",
              "parent_uuid": "0a429ba0-9f7d-4a8f-a4c1-eff2cc44782b",
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
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "9038a195-4615-40bb-84de-ad357c85faf3",
          "parent_uuid": "952c062e-e142-427c-81c9-e67d083743de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3c242fc-9411-4131-99c8-bca06bf64df9",
              "parent_uuid": "9038a195-4615-40bb-84de-ad357c85faf3",
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
                  "uuid": "f26f05c1-469d-4357-b760-a26c23f6fc61",
                  "parent_uuid": "c3c242fc-9411-4131-99c8-bca06bf64df9",
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
          "sort": 34,
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

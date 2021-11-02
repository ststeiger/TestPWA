
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
  "uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "78fa8e62-0573-4844-b4d9-ec37ed1888d3",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "93dfae36-7655-4f39-9c87-7fd67359594b",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "21e97c24-6e82-4069-be4e-399cce76b8c9",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "d90a5f8a-c15a-4c78-84c8-69e5514d638d",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "e08bdbdf-5975-460c-9070-5195fac34624",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "f33c6a70-976b-44f4-bddc-57814ea4501a",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "4ade1d97-b816-4b32-96c7-33e6fa1b52d0",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
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
      "uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
      "parent_uuid": "c017b335-d6c8-4f9b-8c04-0d996cd9b0e9",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7cbb6502-5e09-40de-ba74-cd3155a81b3b",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "e586d386-ff28-4ab6-bb63-195d045d8e9c",
              "parent_uuid": "7cbb6502-5e09-40de-ba74-cd3155a81b3b",
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
              "uuid": "42db0067-4095-46a0-9465-201a969c61d1",
              "parent_uuid": "7cbb6502-5e09-40de-ba74-cd3155a81b3b",
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
              "uuid": "9e7d3b50-3bda-439d-833b-ba468ce5e179",
              "parent_uuid": "7cbb6502-5e09-40de-ba74-cd3155a81b3b",
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
              "uuid": "18a4feb1-32eb-48df-b4a8-67c569d94e5c",
              "parent_uuid": "7cbb6502-5e09-40de-ba74-cd3155a81b3b",
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
          "uuid": "12553f82-7dd0-4ac8-9809-5a33cfb2b47c",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "5928faf6-832f-418b-8f9b-b107fe67f085",
              "parent_uuid": "12553f82-7dd0-4ac8-9809-5a33cfb2b47c",
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
              "uuid": "2cb4b81e-ee80-4850-a15c-505ccf4a5314",
              "parent_uuid": "12553f82-7dd0-4ac8-9809-5a33cfb2b47c",
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
              "uuid": "17978db7-2804-48c4-a5c9-c798b0bcf5dd",
              "parent_uuid": "12553f82-7dd0-4ac8-9809-5a33cfb2b47c",
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
              "uuid": "2e8e83ed-21d8-4cc7-8d7c-7df807af0f52",
              "parent_uuid": "12553f82-7dd0-4ac8-9809-5a33cfb2b47c",
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
          "uuid": "f32a5ca2-ed45-4254-9586-cd749379af47",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d99b016d-0da8-4524-a6e4-9808573a082c",
              "parent_uuid": "f32a5ca2-ed45-4254-9586-cd749379af47",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "61506390-6fc6-4b25-873e-0bd6c4846df2",
              "parent_uuid": "f32a5ca2-ed45-4254-9586-cd749379af47",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fd90cbbc-f083-4daf-9ae5-6180e3d251c0",
              "parent_uuid": "f32a5ca2-ed45-4254-9586-cd749379af47",
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
              "uuid": "3a69592e-667e-4217-b981-1b30063d8bcf",
              "parent_uuid": "f32a5ca2-ed45-4254-9586-cd749379af47",
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
              "uuid": "a0ba04ff-bd4a-40f1-ae1b-4df2c692ab89",
              "parent_uuid": "f32a5ca2-ed45-4254-9586-cd749379af47",
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
              "uuid": "b6d245b6-eae3-4437-a0b2-d06ededfdabc",
              "parent_uuid": "f32a5ca2-ed45-4254-9586-cd749379af47",
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
          "uuid": "26af24a3-becc-4259-94aa-9b46a1c8f220",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a3cae737-3f34-41fa-b6e4-128ba58eb391",
              "parent_uuid": "26af24a3-becc-4259-94aa-9b46a1c8f220",
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
          "uuid": "36e12289-bea7-4b7e-90e6-2349274e9c0d",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de48379b-19c9-44e0-89d5-cb393fbe19a1",
              "parent_uuid": "36e12289-bea7-4b7e-90e6-2349274e9c0d",
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
              "uuid": "9d997ce0-0cef-4bec-aac8-95e3774a7a4c",
              "parent_uuid": "36e12289-bea7-4b7e-90e6-2349274e9c0d",
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
              "uuid": "c24cfe40-99f2-4493-b731-7bd590ddfa1f",
              "parent_uuid": "36e12289-bea7-4b7e-90e6-2349274e9c0d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc9f3054-31b8-45ac-98e4-db04613e6fcc",
                  "parent_uuid": "c24cfe40-99f2-4493-b731-7bd590ddfa1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0185a007-e4f0-48f7-b5e6-204f3edf228c",
              "parent_uuid": "36e12289-bea7-4b7e-90e6-2349274e9c0d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7d866e7-30e4-41ee-a82d-993ab8a9db15",
                  "parent_uuid": "0185a007-e4f0-48f7-b5e6-204f3edf228c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85607d4c-64a4-48ee-b089-ca5db4acdfe9",
              "parent_uuid": "36e12289-bea7-4b7e-90e6-2349274e9c0d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0625b663-2287-4818-98df-b01b1f76516c",
                  "parent_uuid": "85607d4c-64a4-48ee-b089-ca5db4acdfe9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0cd6047-d926-4b9c-91e9-7770fea57641",
              "parent_uuid": "36e12289-bea7-4b7e-90e6-2349274e9c0d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de7204c3-3a72-4e9c-baca-7da854be4f78",
                  "parent_uuid": "a0cd6047-d926-4b9c-91e9-7770fea57641",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1cc5919d-aba0-4774-a65a-b3c7eaa77de2",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da4c48a4-5511-4991-ba96-7af9de535535",
              "parent_uuid": "1cc5919d-aba0-4774-a65a-b3c7eaa77de2",
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
              "uuid": "f62a01c1-76a5-4d8a-a537-7b3985a6b0a0",
              "parent_uuid": "1cc5919d-aba0-4774-a65a-b3c7eaa77de2",
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
              "uuid": "3cf83ab8-10a1-4761-a156-024a65ab5cf4",
              "parent_uuid": "1cc5919d-aba0-4774-a65a-b3c7eaa77de2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1acf8b0-be1f-459c-8bec-8eeadf445f9d",
                  "parent_uuid": "3cf83ab8-10a1-4761-a156-024a65ab5cf4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17a13ad0-7949-4f4e-9e67-67c8aea767bc",
              "parent_uuid": "1cc5919d-aba0-4774-a65a-b3c7eaa77de2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43c3a22d-2a23-4470-a949-05b26edd6c1a",
                  "parent_uuid": "17a13ad0-7949-4f4e-9e67-67c8aea767bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73ddc692-3fa8-4fa8-96fa-00e467da38cb",
              "parent_uuid": "1cc5919d-aba0-4774-a65a-b3c7eaa77de2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d9b2ada-a9e4-4f56-9a96-3942c7531a88",
                  "parent_uuid": "73ddc692-3fa8-4fa8-96fa-00e467da38cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20bab374-8db1-4139-9b84-f913757752a0",
              "parent_uuid": "1cc5919d-aba0-4774-a65a-b3c7eaa77de2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb2a667f-8b85-47ef-9c64-9e4980aa8b6e",
                  "parent_uuid": "20bab374-8db1-4139-9b84-f913757752a0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fb7a1c4e-e44c-4ad6-bc4d-6de0df9abcc9",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54f63796-9bfd-4cc6-8933-0a12510c4d2a",
              "parent_uuid": "fb7a1c4e-e44c-4ad6-bc4d-6de0df9abcc9",
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
              "uuid": "aa695a8d-42b0-448c-a222-3ddf6b20583e",
              "parent_uuid": "fb7a1c4e-e44c-4ad6-bc4d-6de0df9abcc9",
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
              "uuid": "e8df50ee-11e2-48e1-963a-c1375da8686c",
              "parent_uuid": "fb7a1c4e-e44c-4ad6-bc4d-6de0df9abcc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9feaca2-e6a9-4774-ac21-ac83be710869",
                  "parent_uuid": "e8df50ee-11e2-48e1-963a-c1375da8686c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7ddc00a-fea6-4f2e-8759-4e8d31dd73c5",
              "parent_uuid": "fb7a1c4e-e44c-4ad6-bc4d-6de0df9abcc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45cf81ac-ab96-4419-9231-7b4193e1e6af",
                  "parent_uuid": "a7ddc00a-fea6-4f2e-8759-4e8d31dd73c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e26c314-0e6b-4dc3-85e4-2c3df384418e",
              "parent_uuid": "fb7a1c4e-e44c-4ad6-bc4d-6de0df9abcc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ca5a80f-1ca9-46fb-98fa-3addb8e84423",
                  "parent_uuid": "5e26c314-0e6b-4dc3-85e4-2c3df384418e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a8c751c-8b9b-4e9e-9110-151d4b1b279c",
              "parent_uuid": "fb7a1c4e-e44c-4ad6-bc4d-6de0df9abcc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fabd6ef8-b1f3-4a61-9480-74f7c97500a0",
                  "parent_uuid": "6a8c751c-8b9b-4e9e-9110-151d4b1b279c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f84fd74e-8d3e-4385-a339-6710e2fab9a6",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "079702ed-46ea-4ed2-bd7b-98884db7cd72",
              "parent_uuid": "f84fd74e-8d3e-4385-a339-6710e2fab9a6",
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
              "uuid": "5ab9c123-ff0b-4bde-b1b6-da3a4ff61240",
              "parent_uuid": "f84fd74e-8d3e-4385-a339-6710e2fab9a6",
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
              "uuid": "f473453a-df42-4c1f-af31-c5ef168f8e4e",
              "parent_uuid": "f84fd74e-8d3e-4385-a339-6710e2fab9a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8010f91-1117-4533-9d28-aff2e40f623b",
                  "parent_uuid": "f473453a-df42-4c1f-af31-c5ef168f8e4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b5330bb-52d4-4783-b9aa-52576f5acdcf",
              "parent_uuid": "f84fd74e-8d3e-4385-a339-6710e2fab9a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8616724e-3fba-4307-9d67-315e222bce47",
                  "parent_uuid": "9b5330bb-52d4-4783-b9aa-52576f5acdcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ea99fb5-6087-483a-afcc-9cebacbb8099",
              "parent_uuid": "f84fd74e-8d3e-4385-a339-6710e2fab9a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a5555b1-efca-4997-a361-a498070817c5",
                  "parent_uuid": "5ea99fb5-6087-483a-afcc-9cebacbb8099",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc7cd61f-3646-4cf5-a58a-26f8da66f07c",
              "parent_uuid": "f84fd74e-8d3e-4385-a339-6710e2fab9a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ca6229f-85ef-4935-9a0c-883f5f98b85c",
                  "parent_uuid": "bc7cd61f-3646-4cf5-a58a-26f8da66f07c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "21ab1b0b-d3a8-4580-a301-88cc9926951b",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ea480d0-df48-4251-b97b-29c3e8d635de",
              "parent_uuid": "21ab1b0b-d3a8-4580-a301-88cc9926951b",
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
              "uuid": "a0dfa0ee-f545-4efc-afb4-2052043434bd",
              "parent_uuid": "21ab1b0b-d3a8-4580-a301-88cc9926951b",
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
              "uuid": "a39687a5-c1fb-472d-ae6a-164b9ac19331",
              "parent_uuid": "21ab1b0b-d3a8-4580-a301-88cc9926951b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3e5b45f4-2731-4fa3-9215-3934bf124934",
                  "parent_uuid": "a39687a5-c1fb-472d-ae6a-164b9ac19331",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84cd30f6-c58a-40f1-b91d-79c222cb1f27",
              "parent_uuid": "21ab1b0b-d3a8-4580-a301-88cc9926951b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "90e50606-de73-412d-8e33-43365569f9ac",
                  "parent_uuid": "84cd30f6-c58a-40f1-b91d-79c222cb1f27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0927bb2-652e-4e6d-b89b-9546f82e45ac",
              "parent_uuid": "21ab1b0b-d3a8-4580-a301-88cc9926951b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3f07c3c3-eb00-41d0-a2e6-e3f628ba618b",
                  "parent_uuid": "a0927bb2-652e-4e6d-b89b-9546f82e45ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d93ecd6-5f2e-4237-8fd4-6693b766e93c",
              "parent_uuid": "21ab1b0b-d3a8-4580-a301-88cc9926951b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6535e434-168a-4719-a516-1314eb9bcb09",
                  "parent_uuid": "5d93ecd6-5f2e-4237-8fd4-6693b766e93c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ff2973d9-718c-47de-9fb8-18323485a902",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a48be2db-b8c3-4253-9047-d1e8e07d9b43",
              "parent_uuid": "ff2973d9-718c-47de-9fb8-18323485a902",
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
              "uuid": "02cea4fe-4a9b-4698-9f99-2b9670174eb4",
              "parent_uuid": "ff2973d9-718c-47de-9fb8-18323485a902",
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
              "uuid": "29f69b01-2a4a-406a-8cb7-fd372700f9d7",
              "parent_uuid": "ff2973d9-718c-47de-9fb8-18323485a902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9aa24112-b922-441e-9482-ab1c72129734",
                  "parent_uuid": "29f69b01-2a4a-406a-8cb7-fd372700f9d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4fc9a958-510f-4041-b8f7-271da6f2a63e",
              "parent_uuid": "ff2973d9-718c-47de-9fb8-18323485a902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa384e8e-b57e-441e-9af5-d8c26c965f3a",
                  "parent_uuid": "4fc9a958-510f-4041-b8f7-271da6f2a63e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1681132c-4255-451e-a438-54121be6d56d",
              "parent_uuid": "ff2973d9-718c-47de-9fb8-18323485a902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15b566b7-4470-460b-9e32-38d775921ea0",
                  "parent_uuid": "1681132c-4255-451e-a438-54121be6d56d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6bb16a4-c284-4f6c-aaae-6ae6b22d3685",
              "parent_uuid": "ff2973d9-718c-47de-9fb8-18323485a902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f9ff781-cfdf-4370-be62-22126c5977be",
                  "parent_uuid": "a6bb16a4-c284-4f6c-aaae-6ae6b22d3685",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "586f5682-4606-4508-8179-5a0b90945e3a",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc4f55e4-773f-44fd-b417-81a961a0330a",
              "parent_uuid": "586f5682-4606-4508-8179-5a0b90945e3a",
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
              "uuid": "7d92eb7e-f3d9-49f7-8c80-d19da2167faa",
              "parent_uuid": "586f5682-4606-4508-8179-5a0b90945e3a",
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
              "uuid": "68f617b6-36f8-4f86-88bf-d28628d9ff3a",
              "parent_uuid": "586f5682-4606-4508-8179-5a0b90945e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d92a2ac-2323-4956-8cbb-90f52931c567",
                  "parent_uuid": "68f617b6-36f8-4f86-88bf-d28628d9ff3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "723a9d18-c0d6-470b-bd04-9d0665be20ea",
              "parent_uuid": "586f5682-4606-4508-8179-5a0b90945e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c07c674f-0c98-4370-a0b9-f9b97e0e56bb",
                  "parent_uuid": "723a9d18-c0d6-470b-bd04-9d0665be20ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "861a38ec-98a5-4ce8-8862-aacec8d13b6a",
              "parent_uuid": "586f5682-4606-4508-8179-5a0b90945e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5e9860d-466a-4cb6-bfb9-0e1ba1f1c7a2",
                  "parent_uuid": "861a38ec-98a5-4ce8-8862-aacec8d13b6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09f38feb-1886-4734-82c4-56c37cd50164",
              "parent_uuid": "586f5682-4606-4508-8179-5a0b90945e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f80b8cd-b3eb-4093-88ef-3b6146cedd25",
                  "parent_uuid": "09f38feb-1886-4734-82c4-56c37cd50164",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f6f64283-ad2c-41a7-8cd4-24c261c7031f",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41215238-c66e-4c2f-81e0-e546a84da840",
              "parent_uuid": "f6f64283-ad2c-41a7-8cd4-24c261c7031f",
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
              "uuid": "12f17257-35e5-4c14-818a-92feee6dee30",
              "parent_uuid": "f6f64283-ad2c-41a7-8cd4-24c261c7031f",
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
              "uuid": "2a28bfba-9cdb-40f0-8a3a-3dc4d97beaa8",
              "parent_uuid": "f6f64283-ad2c-41a7-8cd4-24c261c7031f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e24b354a-cc87-40ee-ba5c-554bdf265f6d",
                  "parent_uuid": "2a28bfba-9cdb-40f0-8a3a-3dc4d97beaa8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e4d12a5-f76d-4614-bb0f-a29264c0506c",
              "parent_uuid": "f6f64283-ad2c-41a7-8cd4-24c261c7031f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15adfbfa-6680-4f86-ba4e-543c2ac143c8",
                  "parent_uuid": "0e4d12a5-f76d-4614-bb0f-a29264c0506c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8cfc3bb-ced2-4fa1-8a21-e42b92d1371d",
              "parent_uuid": "f6f64283-ad2c-41a7-8cd4-24c261c7031f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2e9e463-5004-4b49-b899-7f02b74bb10b",
                  "parent_uuid": "b8cfc3bb-ced2-4fa1-8a21-e42b92d1371d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f4b8f09-d8c0-4304-9cb8-4bfb4a6bfa01",
              "parent_uuid": "f6f64283-ad2c-41a7-8cd4-24c261c7031f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dbd5b6c-e220-489e-93a9-fcc8fb4e4fd1",
                  "parent_uuid": "3f4b8f09-d8c0-4304-9cb8-4bfb4a6bfa01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c71f5f9f-c261-49ee-84db-1c8de19cb390",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ba49f55-6cea-47f3-8ece-c44ab745c5f8",
              "parent_uuid": "c71f5f9f-c261-49ee-84db-1c8de19cb390",
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
              "uuid": "aa590c63-73f3-4a20-987d-416b17a0aff4",
              "parent_uuid": "c71f5f9f-c261-49ee-84db-1c8de19cb390",
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
              "uuid": "16066bc4-f35d-4431-94ed-3a33d63535e7",
              "parent_uuid": "c71f5f9f-c261-49ee-84db-1c8de19cb390",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3eb0996f-0150-47f5-85ca-f29194c4ca15",
                  "parent_uuid": "16066bc4-f35d-4431-94ed-3a33d63535e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdc896e5-9ace-4e83-bc6f-6b6dcfc136e6",
              "parent_uuid": "c71f5f9f-c261-49ee-84db-1c8de19cb390",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0bc11ab-f6ab-414b-9fd2-d23f1714d520",
                  "parent_uuid": "cdc896e5-9ace-4e83-bc6f-6b6dcfc136e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3371496-23e3-45a1-b1cb-a045f89f9a10",
              "parent_uuid": "c71f5f9f-c261-49ee-84db-1c8de19cb390",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "167c6235-1bd2-40c5-b3a2-70e7e03745ca",
                  "parent_uuid": "f3371496-23e3-45a1-b1cb-a045f89f9a10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f41639f6-567b-4923-84f1-36d132d60c63",
              "parent_uuid": "c71f5f9f-c261-49ee-84db-1c8de19cb390",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa88e575-983c-4da7-aef3-ec7ff98a0911",
                  "parent_uuid": "f41639f6-567b-4923-84f1-36d132d60c63",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a05a5421-ea6e-4411-b93e-b959a18a6b09",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3546ead9-803d-44e9-b2fb-3308ccc3d59a",
              "parent_uuid": "a05a5421-ea6e-4411-b93e-b959a18a6b09",
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
              "uuid": "88dc314a-510f-4c26-b782-4be08f8335b0",
              "parent_uuid": "a05a5421-ea6e-4411-b93e-b959a18a6b09",
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
              "uuid": "9e31eb1e-bf73-49dd-9d48-24fdeb6ec89d",
              "parent_uuid": "a05a5421-ea6e-4411-b93e-b959a18a6b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fc13d81-e754-47f9-babb-0845490d7ea3",
                  "parent_uuid": "9e31eb1e-bf73-49dd-9d48-24fdeb6ec89d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4062cf32-7948-4f7c-b91d-671415d4bec2",
              "parent_uuid": "a05a5421-ea6e-4411-b93e-b959a18a6b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e962083-3edb-4278-89db-66d639c7fcfd",
                  "parent_uuid": "4062cf32-7948-4f7c-b91d-671415d4bec2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "060a7fd4-4069-4512-939c-f5c871dd8715",
              "parent_uuid": "a05a5421-ea6e-4411-b93e-b959a18a6b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39a04325-7193-44b2-ab04-1804455457d6",
                  "parent_uuid": "060a7fd4-4069-4512-939c-f5c871dd8715",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8901ec3-e6ce-496e-b9be-2ea4925ad398",
              "parent_uuid": "a05a5421-ea6e-4411-b93e-b959a18a6b09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84c26246-cb7c-4405-a5cd-69a16433ca20",
                  "parent_uuid": "a8901ec3-e6ce-496e-b9be-2ea4925ad398",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cf5d5b83-b25e-438a-ba78-0629c3e9ec83",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b16517d-783e-499f-86a7-73e26c57a9fd",
              "parent_uuid": "cf5d5b83-b25e-438a-ba78-0629c3e9ec83",
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
              "uuid": "c32f7d8f-3005-4502-801c-56eb9fff0f9e",
              "parent_uuid": "cf5d5b83-b25e-438a-ba78-0629c3e9ec83",
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
              "uuid": "735fa343-d249-431b-99e7-25f5d9d5e618",
              "parent_uuid": "cf5d5b83-b25e-438a-ba78-0629c3e9ec83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7876bb1-5552-4d79-8b40-10d3c4f59f11",
                  "parent_uuid": "735fa343-d249-431b-99e7-25f5d9d5e618",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c40e1a9a-b9eb-4e2c-85d3-800277b54350",
              "parent_uuid": "cf5d5b83-b25e-438a-ba78-0629c3e9ec83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ad181c4-96d4-47ac-87b4-86d5880837aa",
                  "parent_uuid": "c40e1a9a-b9eb-4e2c-85d3-800277b54350",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54befc58-7c91-479e-a3e7-3447333115fe",
              "parent_uuid": "cf5d5b83-b25e-438a-ba78-0629c3e9ec83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cad304f-3e2c-4ca5-a2a3-ee5a68d3e6f2",
                  "parent_uuid": "54befc58-7c91-479e-a3e7-3447333115fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17e28def-a3bd-47e0-9fff-c2c4d7a73d8a",
              "parent_uuid": "cf5d5b83-b25e-438a-ba78-0629c3e9ec83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "246ca603-96b0-470d-9cf0-b22b2eccf302",
                  "parent_uuid": "17e28def-a3bd-47e0-9fff-c2c4d7a73d8a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ee4c5909-bebf-42cd-9183-be7a9f7d3848",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02545786-b715-4800-bec8-5ee8e8a9a99c",
              "parent_uuid": "ee4c5909-bebf-42cd-9183-be7a9f7d3848",
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
              "uuid": "da665697-ab70-415c-bbe3-ceea95d03f84",
              "parent_uuid": "ee4c5909-bebf-42cd-9183-be7a9f7d3848",
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
              "uuid": "82f46542-8629-415c-a5f3-1a4d793aea85",
              "parent_uuid": "ee4c5909-bebf-42cd-9183-be7a9f7d3848",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "356dd931-bd7c-4535-89f0-498fbac1645e",
                  "parent_uuid": "82f46542-8629-415c-a5f3-1a4d793aea85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "837869ca-0704-4598-abe8-95c74068ed57",
              "parent_uuid": "ee4c5909-bebf-42cd-9183-be7a9f7d3848",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02e8a7b7-99db-4b3d-ad56-9b13b06325af",
                  "parent_uuid": "837869ca-0704-4598-abe8-95c74068ed57",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20ddb26e-bb9b-4da3-b224-7f474fe53be5",
              "parent_uuid": "ee4c5909-bebf-42cd-9183-be7a9f7d3848",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "457d6d92-c143-45ea-a1a7-6864f890c8ef",
                  "parent_uuid": "20ddb26e-bb9b-4da3-b224-7f474fe53be5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97423c64-16e3-426e-867f-6ff9f8e9c90b",
              "parent_uuid": "ee4c5909-bebf-42cd-9183-be7a9f7d3848",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1a47609-6fa0-484f-bebf-ecdd64d106c2",
                  "parent_uuid": "97423c64-16e3-426e-867f-6ff9f8e9c90b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e35fb132-e501-4712-a61e-0e76123f72c5",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69ba6465-85d5-43ee-9ee9-d66c1f38712e",
              "parent_uuid": "e35fb132-e501-4712-a61e-0e76123f72c5",
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
              "uuid": "d46cb09d-f201-45ba-ac33-d201a7ba36c9",
              "parent_uuid": "e35fb132-e501-4712-a61e-0e76123f72c5",
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
              "uuid": "72752551-256b-404a-ac5a-b23b0516550d",
              "parent_uuid": "e35fb132-e501-4712-a61e-0e76123f72c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9b589e6-6a38-42ac-923f-c8a7e9462ed9",
                  "parent_uuid": "72752551-256b-404a-ac5a-b23b0516550d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49f8a4ab-fa6c-42ee-a10f-a73b7e61d811",
              "parent_uuid": "e35fb132-e501-4712-a61e-0e76123f72c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9df52287-e143-44da-8f11-6c67d91085cd",
                  "parent_uuid": "49f8a4ab-fa6c-42ee-a10f-a73b7e61d811",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2959670d-9f8a-40f4-afea-c4cedca2492c",
              "parent_uuid": "e35fb132-e501-4712-a61e-0e76123f72c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c82180f6-c0dd-4bd7-97a3-2ff1a4fc1948",
                  "parent_uuid": "2959670d-9f8a-40f4-afea-c4cedca2492c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16ce75be-8969-4ec1-8115-391205da10fe",
              "parent_uuid": "e35fb132-e501-4712-a61e-0e76123f72c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf6ed0b4-2141-4993-8c32-e25b477c9212",
                  "parent_uuid": "16ce75be-8969-4ec1-8115-391205da10fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a98b1348-4046-49ab-8cda-8748998daea6",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "790547a7-116d-4a9c-abfc-27aa216403f3",
              "parent_uuid": "a98b1348-4046-49ab-8cda-8748998daea6",
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
              "uuid": "2620a1c0-1a56-4979-83cd-fa000a60aa14",
              "parent_uuid": "a98b1348-4046-49ab-8cda-8748998daea6",
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
              "uuid": "6b32a4e5-d2ce-4287-970a-2f18d38e8ee2",
              "parent_uuid": "a98b1348-4046-49ab-8cda-8748998daea6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00d09537-9010-44f7-a8fa-1898e5832185",
                  "parent_uuid": "6b32a4e5-d2ce-4287-970a-2f18d38e8ee2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a5c8936-e703-4b56-b1eb-6c06edf45b6d",
              "parent_uuid": "a98b1348-4046-49ab-8cda-8748998daea6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db4718d5-ead9-4e1b-9bb1-e004189b217d",
                  "parent_uuid": "6a5c8936-e703-4b56-b1eb-6c06edf45b6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f2a8b86-e951-4bbc-9ccf-59401cb704cd",
              "parent_uuid": "a98b1348-4046-49ab-8cda-8748998daea6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08b77d3f-71a1-41a9-b22a-1619eaf352ce",
                  "parent_uuid": "3f2a8b86-e951-4bbc-9ccf-59401cb704cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fc2ba15-fed0-40a9-b735-85767bc0ab28",
              "parent_uuid": "a98b1348-4046-49ab-8cda-8748998daea6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ee81992-936c-4517-9128-33b619385de0",
                  "parent_uuid": "0fc2ba15-fed0-40a9-b735-85767bc0ab28",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0a32565-71d0-411a-aa50-e108cab2329e",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "fab859b4-2caf-442a-9d23-ff3b6b0db525",
              "parent_uuid": "e0a32565-71d0-411a-aa50-e108cab2329e",
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
          "uuid": "23c9502d-1451-4a34-a088-bb4ec241bba5",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c383fd4-bbec-4ce5-ac3e-f44e91abaf8a",
              "parent_uuid": "23c9502d-1451-4a34-a088-bb4ec241bba5",
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
          "uuid": "c1f8719f-35f5-4ad7-a605-b7a2f505e2f7",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66f9302d-a247-4d70-9104-43a9aa195794",
              "parent_uuid": "c1f8719f-35f5-4ad7-a605-b7a2f505e2f7",
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
                  "uuid": "70fc47bf-7a22-4fb7-923b-aa807818aacd",
                  "parent_uuid": "66f9302d-a247-4d70-9104-43a9aa195794",
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
          "uuid": "6b3b1c35-2e32-4b08-b1ea-6bdb914b2f31",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "703fd55d-5d9e-4a8c-84a0-b59eee923e94",
              "parent_uuid": "6b3b1c35-2e32-4b08-b1ea-6bdb914b2f31",
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
          "uuid": "4e5a4506-ab01-49b3-bdf0-4a3d4ceaae70",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "641ff6fa-edfd-4cc1-8608-9e07447b8991",
              "parent_uuid": "4e5a4506-ab01-49b3-bdf0-4a3d4ceaae70",
              "tagName": "td",
              "properties": [
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
          "uuid": "9950bddf-201c-4015-acb4-910ee2833dec",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f25c524-d46c-4740-bd79-e1fb3df14d43",
              "parent_uuid": "9950bddf-201c-4015-acb4-910ee2833dec",
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
              "uuid": "2c4900a2-8c4e-4ca8-867a-f0039992a94e",
              "parent_uuid": "9950bddf-201c-4015-acb4-910ee2833dec",
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
              "uuid": "b4342e8f-20b4-497c-bbf6-316e7ad2b466",
              "parent_uuid": "9950bddf-201c-4015-acb4-910ee2833dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75a94a82-5192-4d0d-969d-129fc11146e1",
                  "parent_uuid": "b4342e8f-20b4-497c-bbf6-316e7ad2b466",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96e80675-73d9-4451-b03a-7f5faefa4ba1",
              "parent_uuid": "9950bddf-201c-4015-acb4-910ee2833dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f1a773a-f004-4a33-82e4-277505171224",
                  "parent_uuid": "96e80675-73d9-4451-b03a-7f5faefa4ba1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1ba7e6d-a3d3-4414-93be-fdeeb411fb7c",
              "parent_uuid": "9950bddf-201c-4015-acb4-910ee2833dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3259348-1cb3-4dde-9ce2-97bdf0c8c1ca",
                  "parent_uuid": "e1ba7e6d-a3d3-4414-93be-fdeeb411fb7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75843366-7b27-4430-91ee-52715768f524",
              "parent_uuid": "9950bddf-201c-4015-acb4-910ee2833dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3157bc00-ff6a-4a2e-ba0e-63b548c35b27",
                  "parent_uuid": "75843366-7b27-4430-91ee-52715768f524",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c55a6575-da40-4cf4-9310-fae8e9c7d005",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa166bd7-cc86-425f-8526-d835f85f761a",
              "parent_uuid": "c55a6575-da40-4cf4-9310-fae8e9c7d005",
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
              "uuid": "c6b93e31-d616-49b3-885d-ad6cb8487f3e",
              "parent_uuid": "c55a6575-da40-4cf4-9310-fae8e9c7d005",
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
              "uuid": "c88e1734-b5bf-414c-b266-956006d68bb2",
              "parent_uuid": "c55a6575-da40-4cf4-9310-fae8e9c7d005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4a66356-5260-4f42-a71d-6946a6a4d783",
                  "parent_uuid": "c88e1734-b5bf-414c-b266-956006d68bb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16c89390-992c-472b-a9fe-ffd5bd030698",
              "parent_uuid": "c55a6575-da40-4cf4-9310-fae8e9c7d005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1e8d180-59b9-48c7-a287-97e4dc1bf93d",
                  "parent_uuid": "16c89390-992c-472b-a9fe-ffd5bd030698",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9419072-6de6-4b28-a640-81f59a557806",
              "parent_uuid": "c55a6575-da40-4cf4-9310-fae8e9c7d005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c849361c-37ff-436e-bd94-29fe31fe74db",
                  "parent_uuid": "c9419072-6de6-4b28-a640-81f59a557806",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "951e120d-875e-4152-b6a7-a41b1fa7cae6",
              "parent_uuid": "c55a6575-da40-4cf4-9310-fae8e9c7d005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d48ce097-cb0b-497f-8ce8-7b0c3226bd29",
                  "parent_uuid": "951e120d-875e-4152-b6a7-a41b1fa7cae6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "461b1ebe-2082-44d6-a950-114b0e77795d",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7d52acc-f078-480a-b901-97ec80e6bd0c",
              "parent_uuid": "461b1ebe-2082-44d6-a950-114b0e77795d",
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
              "uuid": "0cc7275e-f79c-4eac-8890-1e41ea209c8d",
              "parent_uuid": "461b1ebe-2082-44d6-a950-114b0e77795d",
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
              "uuid": "96571e61-0226-4b84-8724-2e25cf094a8a",
              "parent_uuid": "461b1ebe-2082-44d6-a950-114b0e77795d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ebce5be-0199-416f-b67f-432c0886912f",
                  "parent_uuid": "96571e61-0226-4b84-8724-2e25cf094a8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "828a23f2-82e6-4d21-8ae6-b3081a05fd2a",
              "parent_uuid": "461b1ebe-2082-44d6-a950-114b0e77795d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49c3ac53-b704-4baa-8dfe-8b0f5c284930",
                  "parent_uuid": "828a23f2-82e6-4d21-8ae6-b3081a05fd2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a08ca967-0834-4a1e-8901-77eea8fd56f6",
              "parent_uuid": "461b1ebe-2082-44d6-a950-114b0e77795d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ea32a02-82cb-402a-9674-95eced7a1b21",
                  "parent_uuid": "a08ca967-0834-4a1e-8901-77eea8fd56f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c3c563b-7645-4d48-9d11-a7151929b146",
              "parent_uuid": "461b1ebe-2082-44d6-a950-114b0e77795d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8909f16a-e493-4732-9015-3016e9de0969",
                  "parent_uuid": "7c3c563b-7645-4d48-9d11-a7151929b146",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "efe34411-569f-4648-aa2a-74c00779888e",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce803e00-3461-41b1-810e-38688b3b26da",
              "parent_uuid": "efe34411-569f-4648-aa2a-74c00779888e",
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
              "uuid": "cb050ff3-de87-4ff3-9364-f32c0e08d9fd",
              "parent_uuid": "efe34411-569f-4648-aa2a-74c00779888e",
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
              "uuid": "160a0fe2-c04c-4571-a76c-a57207adedf7",
              "parent_uuid": "efe34411-569f-4648-aa2a-74c00779888e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cf6db66-8b53-42f4-998c-f222f6f4983e",
                  "parent_uuid": "160a0fe2-c04c-4571-a76c-a57207adedf7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39bd2951-c3a3-45bf-8bd4-0a5b2d25e657",
              "parent_uuid": "efe34411-569f-4648-aa2a-74c00779888e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b153e9db-1175-4357-9c1a-c1d8fd501b65",
                  "parent_uuid": "39bd2951-c3a3-45bf-8bd4-0a5b2d25e657",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4310988-ef2e-448c-9bec-a7e3967e193c",
              "parent_uuid": "efe34411-569f-4648-aa2a-74c00779888e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24cfa94a-8b1d-49bb-9f5b-e20d5d381d8d",
                  "parent_uuid": "d4310988-ef2e-448c-9bec-a7e3967e193c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18e58c55-9059-4646-a37a-c82452b23016",
              "parent_uuid": "efe34411-569f-4648-aa2a-74c00779888e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee9f01fd-7f0a-4668-88e5-1386855f0564",
                  "parent_uuid": "18e58c55-9059-4646-a37a-c82452b23016",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ac614e3c-0942-4883-a6c0-8ac1c16b107b",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "23251864-c1fd-46e2-9551-293d30a966ff",
              "parent_uuid": "ac614e3c-0942-4883-a6c0-8ac1c16b107b",
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
          "uuid": "85c7dc82-7d76-4684-971b-0554ac32863f",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f96480c1-6cab-48b5-bb72-3bb7659e0828",
              "parent_uuid": "85c7dc82-7d76-4684-971b-0554ac32863f",
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
              "uuid": "a031d950-4c7d-410f-a26d-5376f1d0dac6",
              "parent_uuid": "85c7dc82-7d76-4684-971b-0554ac32863f",
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
              "uuid": "adb5be93-ee7f-4ac9-b971-fe60f7bfc62b",
              "parent_uuid": "85c7dc82-7d76-4684-971b-0554ac32863f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52a4bc91-752f-4450-a6bc-5ff0609906e4",
                  "parent_uuid": "adb5be93-ee7f-4ac9-b971-fe60f7bfc62b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbfb9aed-e2a3-4f82-a6de-2771aa9aee32",
              "parent_uuid": "85c7dc82-7d76-4684-971b-0554ac32863f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90eeec63-1ec9-45e7-9d36-d1aa4cc6f3d3",
                  "parent_uuid": "fbfb9aed-e2a3-4f82-a6de-2771aa9aee32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb58a457-d801-4bec-8856-882ce7d79067",
              "parent_uuid": "85c7dc82-7d76-4684-971b-0554ac32863f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f5ced00-170a-47c2-8275-88cf8574e3a1",
                  "parent_uuid": "fb58a457-d801-4bec-8856-882ce7d79067",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b36dfe00-8afe-4c46-9e98-5ef0f48840aa",
              "parent_uuid": "85c7dc82-7d76-4684-971b-0554ac32863f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57c95770-c288-4533-987f-911ea345008c",
                  "parent_uuid": "b36dfe00-8afe-4c46-9e98-5ef0f48840aa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9e56cbd0-e422-4842-98de-4aebf4b2c203",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85293a15-f22e-4272-843c-3fd3d9343bc6",
              "parent_uuid": "9e56cbd0-e422-4842-98de-4aebf4b2c203",
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
              "uuid": "de929734-319e-4b1c-af03-bca0fe77e10e",
              "parent_uuid": "9e56cbd0-e422-4842-98de-4aebf4b2c203",
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
              "uuid": "96324c7f-4d6a-4cad-83eb-39eb036eea8f",
              "parent_uuid": "9e56cbd0-e422-4842-98de-4aebf4b2c203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0139e4da-ca8a-4f1c-bd22-6f5b025969d9",
                  "parent_uuid": "96324c7f-4d6a-4cad-83eb-39eb036eea8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d2d3534-6437-4d5a-ad82-da6712798f3f",
              "parent_uuid": "9e56cbd0-e422-4842-98de-4aebf4b2c203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae924136-c658-411a-ab48-dba4ef60a71d",
                  "parent_uuid": "1d2d3534-6437-4d5a-ad82-da6712798f3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8fb8ff61-c99b-47fd-9521-10e601a6dd61",
              "parent_uuid": "9e56cbd0-e422-4842-98de-4aebf4b2c203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d1c6180-c5b9-4231-9ea9-949f4fa8d64f",
                  "parent_uuid": "8fb8ff61-c99b-47fd-9521-10e601a6dd61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5aeb070-cf82-4115-98f9-869f855582c4",
              "parent_uuid": "9e56cbd0-e422-4842-98de-4aebf4b2c203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "952fcea2-48b1-44ff-9156-b51e46e5e98e",
                  "parent_uuid": "e5aeb070-cf82-4115-98f9-869f855582c4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e9174565-6811-47ad-a927-a14b07c9b7eb",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "03195715-db19-4fd0-a041-555a0947d81c",
              "parent_uuid": "e9174565-6811-47ad-a927-a14b07c9b7eb",
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
              "uuid": "b67a4703-9d19-45ec-8700-07bce617de52",
              "parent_uuid": "e9174565-6811-47ad-a927-a14b07c9b7eb",
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
              "uuid": "1a1f6c87-82ff-4cff-af1e-d5faf984af5d",
              "parent_uuid": "e9174565-6811-47ad-a927-a14b07c9b7eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33787d0e-0b8f-46e9-b753-c96fdd48c5cd",
                  "parent_uuid": "1a1f6c87-82ff-4cff-af1e-d5faf984af5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4682835a-acb3-4495-a4f8-6b7fa3328569",
              "parent_uuid": "e9174565-6811-47ad-a927-a14b07c9b7eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ea77ac1-e6df-4a3d-b881-c55e4bd6cfad",
                  "parent_uuid": "4682835a-acb3-4495-a4f8-6b7fa3328569",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cab076a-669b-4797-ba9b-2e55227f6e99",
              "parent_uuid": "e9174565-6811-47ad-a927-a14b07c9b7eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac3863c5-836f-4eae-b723-0c7a8564a2fe",
                  "parent_uuid": "6cab076a-669b-4797-ba9b-2e55227f6e99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31f2720d-2bd2-480b-b13b-cb6e751c36ff",
              "parent_uuid": "e9174565-6811-47ad-a927-a14b07c9b7eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d59daed-bf9b-4999-8217-257a63858f73",
                  "parent_uuid": "31f2720d-2bd2-480b-b13b-cb6e751c36ff",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e22ba07-561e-49ac-95ce-5242e7b2d546",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39fedec2-7d55-4d0b-8414-f83c4db7dcd7",
              "parent_uuid": "7e22ba07-561e-49ac-95ce-5242e7b2d546",
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
              "uuid": "296fa8bd-95ef-4ec0-a70b-4bbec8334d2d",
              "parent_uuid": "7e22ba07-561e-49ac-95ce-5242e7b2d546",
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
              "uuid": "4a32bc21-10c6-4a74-abe5-68dfe1506fd7",
              "parent_uuid": "7e22ba07-561e-49ac-95ce-5242e7b2d546",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "300bdce3-ec32-41b4-9af2-e3b0d3d38001",
                  "parent_uuid": "4a32bc21-10c6-4a74-abe5-68dfe1506fd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40fa9d3d-2f3c-4659-b927-5351a504a8cb",
              "parent_uuid": "7e22ba07-561e-49ac-95ce-5242e7b2d546",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9746ecf3-a0b2-4a3f-8139-bc48114291e3",
                  "parent_uuid": "40fa9d3d-2f3c-4659-b927-5351a504a8cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "baf9289f-620e-4460-a919-2ab2e2a1b1d3",
              "parent_uuid": "7e22ba07-561e-49ac-95ce-5242e7b2d546",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4a7308a-42f9-4cd5-9caa-d76d95671e21",
                  "parent_uuid": "baf9289f-620e-4460-a919-2ab2e2a1b1d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9ccb9f3-a95b-4eb0-917a-4580464b0b89",
              "parent_uuid": "7e22ba07-561e-49ac-95ce-5242e7b2d546",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aabbbd65-059c-4e29-a76d-17c35727cb8e",
                  "parent_uuid": "e9ccb9f3-a95b-4eb0-917a-4580464b0b89",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7fe55fd4-5a53-41a3-961b-516acb0acd31",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9edcb94e-f836-4e5e-8a5c-e72ac1ad453b",
              "parent_uuid": "7fe55fd4-5a53-41a3-961b-516acb0acd31",
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
          "uuid": "cab75f74-b2f2-4464-9601-08ec41e36122",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "689a24d1-6892-4bbc-a828-d2a0378376ff",
              "parent_uuid": "cab75f74-b2f2-4464-9601-08ec41e36122",
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
          "uuid": "b042e3bc-a9cf-422a-b9b8-13101070b305",
          "parent_uuid": "cc979e3b-51bf-447d-a3fc-c2ce18d917f8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c363fd34-43b8-4d7c-9aa2-6f7cf8b9191f",
              "parent_uuid": "b042e3bc-a9cf-422a-b9b8-13101070b305",
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
                  "uuid": "3718e59c-c528-4022-99c8-fa8b13aa7588",
                  "parent_uuid": "c363fd34-43b8-4d7c-9aa2-6f7cf8b9191f",
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

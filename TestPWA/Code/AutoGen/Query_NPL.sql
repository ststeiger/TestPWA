
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
  "uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "72a60382-82d5-4057-a7f6-f0d36f75a173",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "4954e633-1c1a-49ee-9aa5-749d46613011",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "b26be8e6-1a8e-475c-b3b5-cd8b42d6f2b1",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "65bb188b-935b-4eb2-9ae2-2ada17a71079",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "4e13c013-b9d7-4249-967b-3d0a6aa86d63",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "bfa8e1c4-d4e4-45d0-8c4d-92e51917f836",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "f040e341-7579-4f28-851d-5c93b5837aa4",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
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
      "uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
      "parent_uuid": "39bdd148-1236-4b5e-81ae-53b8369728de",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7077346b-edd0-49e9-9ab6-35c17cee249a",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "108733f1-bdb0-425b-b971-01860f6a5392",
              "parent_uuid": "7077346b-edd0-49e9-9ab6-35c17cee249a",
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
              "uuid": "f85cb19e-4e79-4497-ab62-c65db1d8c1e4",
              "parent_uuid": "7077346b-edd0-49e9-9ab6-35c17cee249a",
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
              "uuid": "232bfcb6-7a93-4f17-8828-5e3a00c4c8a9",
              "parent_uuid": "7077346b-edd0-49e9-9ab6-35c17cee249a",
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
              "uuid": "76709034-62ea-441e-8ff2-abbc70a0c3fa",
              "parent_uuid": "7077346b-edd0-49e9-9ab6-35c17cee249a",
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
          "uuid": "bd6954c2-87eb-473e-822f-14b97b3cec27",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "d551d951-dc89-44cd-bee2-66f2691da9ae",
              "parent_uuid": "bd6954c2-87eb-473e-822f-14b97b3cec27",
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
              "uuid": "c7f81a4d-0141-40ee-9bcb-59c31b488baf",
              "parent_uuid": "bd6954c2-87eb-473e-822f-14b97b3cec27",
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
              "uuid": "fde844e1-f8ea-4150-8a2a-188a27e47ab0",
              "parent_uuid": "bd6954c2-87eb-473e-822f-14b97b3cec27",
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
              "uuid": "bdca79da-b317-409f-8701-d78e2a766714",
              "parent_uuid": "bd6954c2-87eb-473e-822f-14b97b3cec27",
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
          "uuid": "777c3de2-769b-4e37-a6d9-237d1ff8673b",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3bef300c-63e6-457c-8595-32c34518f12e",
              "parent_uuid": "777c3de2-769b-4e37-a6d9-237d1ff8673b",
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
              "uuid": "8b2a5c75-9a66-4ee4-af9b-e3ea1226545a",
              "parent_uuid": "777c3de2-769b-4e37-a6d9-237d1ff8673b",
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
              "uuid": "ff836aae-6e5d-491a-a30e-033a9bdbef63",
              "parent_uuid": "777c3de2-769b-4e37-a6d9-237d1ff8673b",
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
              "uuid": "dd3498f0-e192-42ea-bbb7-63d67b6d28b1",
              "parent_uuid": "777c3de2-769b-4e37-a6d9-237d1ff8673b",
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
              "uuid": "f78cf5ed-c72b-42ef-a41b-a12fdf03390c",
              "parent_uuid": "777c3de2-769b-4e37-a6d9-237d1ff8673b",
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
              "uuid": "fb8125ce-911d-4591-a719-b7df9b5ff795",
              "parent_uuid": "777c3de2-769b-4e37-a6d9-237d1ff8673b",
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
          "uuid": "ac37bc8a-e8c2-412c-9ceb-546cbe441fbf",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "755e2f88-392a-4a91-8e6e-b76545d2d069",
              "parent_uuid": "ac37bc8a-e8c2-412c-9ceb-546cbe441fbf",
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
          "uuid": "7ac1f81b-dc27-418e-a524-f7bddfc3a167",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1871f0fd-6d11-4169-98bb-f141d32d6936",
              "parent_uuid": "7ac1f81b-dc27-418e-a524-f7bddfc3a167",
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
              "uuid": "7789641d-3bb4-4373-9fa0-2582ba84ba1a",
              "parent_uuid": "7ac1f81b-dc27-418e-a524-f7bddfc3a167",
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
              "uuid": "5daf80f5-ecaa-4c05-bc43-8b79f65e223a",
              "parent_uuid": "7ac1f81b-dc27-418e-a524-f7bddfc3a167",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77615450-07ea-412c-a950-01ba98ae57d5",
                  "parent_uuid": "5daf80f5-ecaa-4c05-bc43-8b79f65e223a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3af5dd3a-ebaa-44c6-9af0-89ca55b7b4d3",
              "parent_uuid": "7ac1f81b-dc27-418e-a524-f7bddfc3a167",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ffa49c8-3537-4b14-bc3d-490e470b1cc9",
                  "parent_uuid": "3af5dd3a-ebaa-44c6-9af0-89ca55b7b4d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "922368bf-fb54-4c67-8008-79447ee3a900",
              "parent_uuid": "7ac1f81b-dc27-418e-a524-f7bddfc3a167",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dc1c2bb-2769-4903-b037-80937fcf3378",
                  "parent_uuid": "922368bf-fb54-4c67-8008-79447ee3a900",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5aa27976-91b5-4a0b-a188-512a650c1c5c",
              "parent_uuid": "7ac1f81b-dc27-418e-a524-f7bddfc3a167",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c08730c-4052-4de3-af92-2916b670da87",
                  "parent_uuid": "5aa27976-91b5-4a0b-a188-512a650c1c5c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ae34496-1672-48fe-8bab-44ba5bcc99b2",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31242efb-7f68-4a5a-8a37-9e02dbb267df",
              "parent_uuid": "1ae34496-1672-48fe-8bab-44ba5bcc99b2",
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
              "uuid": "47a31a38-8a3d-4903-8296-ba2c21a66d99",
              "parent_uuid": "1ae34496-1672-48fe-8bab-44ba5bcc99b2",
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
              "uuid": "4f7a1412-6824-48af-9296-dcc748aebff3",
              "parent_uuid": "1ae34496-1672-48fe-8bab-44ba5bcc99b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98dd0b5c-d437-4be4-a6a1-f714fdd72743",
                  "parent_uuid": "4f7a1412-6824-48af-9296-dcc748aebff3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "172d264b-bd5f-4eed-8755-317cbe5c1598",
              "parent_uuid": "1ae34496-1672-48fe-8bab-44ba5bcc99b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac390e7d-0ebd-4c82-a364-5d4b53f51d9c",
                  "parent_uuid": "172d264b-bd5f-4eed-8755-317cbe5c1598",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fa6a32d-a82d-4638-9471-955a597d59b1",
              "parent_uuid": "1ae34496-1672-48fe-8bab-44ba5bcc99b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fca2a8e-3bb2-409e-89e7-5018c1d90d42",
                  "parent_uuid": "6fa6a32d-a82d-4638-9471-955a597d59b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bcf972d4-fe02-42c1-bc7c-b0a55fd7435c",
              "parent_uuid": "1ae34496-1672-48fe-8bab-44ba5bcc99b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1652a4d-7d6f-4069-bea5-e4bb65f899f2",
                  "parent_uuid": "bcf972d4-fe02-42c1-bc7c-b0a55fd7435c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "892d7568-2fb4-4444-ae8b-b9be8985b283",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b07b58b-21af-40de-95bd-0e34b61985fd",
              "parent_uuid": "892d7568-2fb4-4444-ae8b-b9be8985b283",
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
              "uuid": "8150d226-4e22-44d7-9d30-89e07158c443",
              "parent_uuid": "892d7568-2fb4-4444-ae8b-b9be8985b283",
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
              "uuid": "4819619e-036e-46bb-99f7-d5de7c4a255d",
              "parent_uuid": "892d7568-2fb4-4444-ae8b-b9be8985b283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c58f492-35a8-4082-89f8-134e39a485f0",
                  "parent_uuid": "4819619e-036e-46bb-99f7-d5de7c4a255d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78a356bf-3b68-4be1-8310-d46e3da353d9",
              "parent_uuid": "892d7568-2fb4-4444-ae8b-b9be8985b283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "967f08c7-2f28-4d54-b798-77a2a64b9695",
                  "parent_uuid": "78a356bf-3b68-4be1-8310-d46e3da353d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a9aa6dc-695a-4440-b56c-c3b05b4fbf03",
              "parent_uuid": "892d7568-2fb4-4444-ae8b-b9be8985b283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47a7fc1d-e7bb-46f2-870e-38cb9a18819d",
                  "parent_uuid": "2a9aa6dc-695a-4440-b56c-c3b05b4fbf03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f43d6fa8-e0f7-41d5-8231-e154413c5095",
              "parent_uuid": "892d7568-2fb4-4444-ae8b-b9be8985b283",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af357d5e-034a-4635-a424-bf538d534d93",
                  "parent_uuid": "f43d6fa8-e0f7-41d5-8231-e154413c5095",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ac4e10c-4b70-4ab9-98c1-3cb79d1996c6",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "908e700b-2bb7-413b-a8ca-00d6a7cd3785",
              "parent_uuid": "1ac4e10c-4b70-4ab9-98c1-3cb79d1996c6",
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
              "uuid": "e5cdb7de-f4bd-425c-ba05-abb8737078de",
              "parent_uuid": "1ac4e10c-4b70-4ab9-98c1-3cb79d1996c6",
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
              "uuid": "14c8d968-f630-41e3-b042-abf5f8cdd91d",
              "parent_uuid": "1ac4e10c-4b70-4ab9-98c1-3cb79d1996c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e171db5-afd4-4c49-9b29-e7502ea0d8bc",
                  "parent_uuid": "14c8d968-f630-41e3-b042-abf5f8cdd91d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "994033ba-ed90-43f8-9017-70f8d9119c79",
              "parent_uuid": "1ac4e10c-4b70-4ab9-98c1-3cb79d1996c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "902b4092-8196-4615-8117-83b3f761acd5",
                  "parent_uuid": "994033ba-ed90-43f8-9017-70f8d9119c79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83db99d4-2859-4f0a-a2d4-6792a6cdf0ef",
              "parent_uuid": "1ac4e10c-4b70-4ab9-98c1-3cb79d1996c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f29dd2fa-5ae3-4c95-b593-f2ab0fb50934",
                  "parent_uuid": "83db99d4-2859-4f0a-a2d4-6792a6cdf0ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6265d51-0e0f-4cfa-aa57-071d6de6ac52",
              "parent_uuid": "1ac4e10c-4b70-4ab9-98c1-3cb79d1996c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43e92f9d-05ac-4d5b-adec-da217f39069b",
                  "parent_uuid": "d6265d51-0e0f-4cfa-aa57-071d6de6ac52",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e441de3-78eb-4a84-8682-61cbaa7c2341",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09ad1e18-da74-48fc-b266-ac2e7678d2c0",
              "parent_uuid": "8e441de3-78eb-4a84-8682-61cbaa7c2341",
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
              "uuid": "96dd1763-428c-4123-b37a-80376e8ef5b2",
              "parent_uuid": "8e441de3-78eb-4a84-8682-61cbaa7c2341",
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
              "uuid": "1ed5e369-083e-4486-8967-534f63dc18c1",
              "parent_uuid": "8e441de3-78eb-4a84-8682-61cbaa7c2341",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9aea6fd-b4e5-4538-bb21-b4134c7ffc84",
                  "parent_uuid": "1ed5e369-083e-4486-8967-534f63dc18c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6da3aa2-8038-458e-b2fd-5a97c826d283",
              "parent_uuid": "8e441de3-78eb-4a84-8682-61cbaa7c2341",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f0372212-79a7-4409-b6d7-3bada405915b",
                  "parent_uuid": "f6da3aa2-8038-458e-b2fd-5a97c826d283",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b5245b8-79fc-4882-9b9d-48a0921345fb",
              "parent_uuid": "8e441de3-78eb-4a84-8682-61cbaa7c2341",
              "tagName": "td",
              "properties": [
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
                  "uuid": "75458d33-69cb-4fcd-9558-42f75e7cf8c4",
                  "parent_uuid": "6b5245b8-79fc-4882-9b9d-48a0921345fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b70472e8-d52b-4a9d-b9b4-8d7012513d38",
              "parent_uuid": "8e441de3-78eb-4a84-8682-61cbaa7c2341",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a8ca29c4-2408-415a-86da-855bdc614421",
                  "parent_uuid": "b70472e8-d52b-4a9d-b9b4-8d7012513d38",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6cd2f84a-2f20-4fc1-aada-f55b005e04f2",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "44fed3e1-8256-477c-952b-4bc6820f9a4e",
              "parent_uuid": "6cd2f84a-2f20-4fc1-aada-f55b005e04f2",
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
              "uuid": "48a7e388-28ae-4484-8c0a-aa39bb869e3f",
              "parent_uuid": "6cd2f84a-2f20-4fc1-aada-f55b005e04f2",
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
              "uuid": "e4b8635a-834f-4275-9a28-d6da8ab96576",
              "parent_uuid": "6cd2f84a-2f20-4fc1-aada-f55b005e04f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f96c29f4-1a21-41cd-8236-d4db40b75b05",
                  "parent_uuid": "e4b8635a-834f-4275-9a28-d6da8ab96576",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35e09def-4c5d-4c17-8cce-cd96e32814df",
              "parent_uuid": "6cd2f84a-2f20-4fc1-aada-f55b005e04f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8d3fb07-7dd0-423d-8d0b-fc6d570b8278",
                  "parent_uuid": "35e09def-4c5d-4c17-8cce-cd96e32814df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d6faec7-7f64-453f-908f-ed0f5a55ac8f",
              "parent_uuid": "6cd2f84a-2f20-4fc1-aada-f55b005e04f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2d89e87-7dc1-4ba3-b4ad-0ba07299be41",
                  "parent_uuid": "6d6faec7-7f64-453f-908f-ed0f5a55ac8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b72fa91-a3eb-42be-a702-d53ce145851f",
              "parent_uuid": "6cd2f84a-2f20-4fc1-aada-f55b005e04f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50460ffd-f8ae-4916-9f23-3f9c4b6f76cf",
                  "parent_uuid": "4b72fa91-a3eb-42be-a702-d53ce145851f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "abf8d382-e0eb-4fc8-a31d-81263abc27f9",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c18a167-6c67-4858-8f3c-8cbb77d159bb",
              "parent_uuid": "abf8d382-e0eb-4fc8-a31d-81263abc27f9",
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
              "uuid": "c1407cf1-0f8c-4394-9598-acc2b71f6d79",
              "parent_uuid": "abf8d382-e0eb-4fc8-a31d-81263abc27f9",
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
              "uuid": "db8030e0-5e16-4d9b-a59a-8926f0631467",
              "parent_uuid": "abf8d382-e0eb-4fc8-a31d-81263abc27f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84ffc15f-638b-412b-a2cc-8159ae8cc1e1",
                  "parent_uuid": "db8030e0-5e16-4d9b-a59a-8926f0631467",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afc214c1-e364-4e09-acfa-b039446d4b9e",
              "parent_uuid": "abf8d382-e0eb-4fc8-a31d-81263abc27f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32e49254-88d8-4eb3-b6b7-d6958736f35e",
                  "parent_uuid": "afc214c1-e364-4e09-acfa-b039446d4b9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad3256b8-2ba9-472e-a1bc-cf00cae30752",
              "parent_uuid": "abf8d382-e0eb-4fc8-a31d-81263abc27f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23c161fe-68a4-4e0a-ae62-251003f80027",
                  "parent_uuid": "ad3256b8-2ba9-472e-a1bc-cf00cae30752",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdbe3162-a058-495d-a549-32fcb92add81",
              "parent_uuid": "abf8d382-e0eb-4fc8-a31d-81263abc27f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09784595-e73a-4ef5-bbdf-215750c845db",
                  "parent_uuid": "cdbe3162-a058-495d-a549-32fcb92add81",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79d2b1ec-05c3-4bb1-bcc4-e9666a1410e9",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8ea270d-d44e-40a4-93df-270628c98783",
              "parent_uuid": "79d2b1ec-05c3-4bb1-bcc4-e9666a1410e9",
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
              "uuid": "ed419102-c37e-4550-a263-7f4a8ce97860",
              "parent_uuid": "79d2b1ec-05c3-4bb1-bcc4-e9666a1410e9",
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
              "uuid": "8d454d58-0746-47e8-b690-278a073e8ecb",
              "parent_uuid": "79d2b1ec-05c3-4bb1-bcc4-e9666a1410e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c2c74a2-78d4-474e-a4be-757b374b431c",
                  "parent_uuid": "8d454d58-0746-47e8-b690-278a073e8ecb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b66064b-f63f-4019-960c-3b506ceb1b12",
              "parent_uuid": "79d2b1ec-05c3-4bb1-bcc4-e9666a1410e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7170695a-c0bd-46ca-b4d2-6298c095627d",
                  "parent_uuid": "8b66064b-f63f-4019-960c-3b506ceb1b12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9577766a-337b-4e57-aa37-8940fb089b8e",
              "parent_uuid": "79d2b1ec-05c3-4bb1-bcc4-e9666a1410e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbf91a12-a91b-41b7-9406-97ca6957489a",
                  "parent_uuid": "9577766a-337b-4e57-aa37-8940fb089b8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3869c286-8625-4cdb-a5ff-944a5561945b",
              "parent_uuid": "79d2b1ec-05c3-4bb1-bcc4-e9666a1410e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfddc42d-1d52-46e9-8c80-5e811285d257",
                  "parent_uuid": "3869c286-8625-4cdb-a5ff-944a5561945b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fcc45866-04f9-4bca-a62f-e60084437458",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce731e4f-f4d6-4875-914d-db205281dda0",
              "parent_uuid": "fcc45866-04f9-4bca-a62f-e60084437458",
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
              "uuid": "345c6e11-6183-4820-a337-6326c7b8d277",
              "parent_uuid": "fcc45866-04f9-4bca-a62f-e60084437458",
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
              "uuid": "06dd9b33-2d16-46e3-a3fe-901dca1eb455",
              "parent_uuid": "fcc45866-04f9-4bca-a62f-e60084437458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbd6bd66-7ffb-401a-98a8-2207e45cc39e",
                  "parent_uuid": "06dd9b33-2d16-46e3-a3fe-901dca1eb455",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3ad34f3-d99a-4c97-a908-895757d40806",
              "parent_uuid": "fcc45866-04f9-4bca-a62f-e60084437458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2f84f70-8ca0-4421-876a-0cb2f2700fed",
                  "parent_uuid": "b3ad34f3-d99a-4c97-a908-895757d40806",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f57828f8-7cec-4375-ae51-5d298d3b3c4f",
              "parent_uuid": "fcc45866-04f9-4bca-a62f-e60084437458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf90842d-097e-41e5-83e7-a37e253eff1a",
                  "parent_uuid": "f57828f8-7cec-4375-ae51-5d298d3b3c4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5fdc454a-c733-4d31-8bb2-314fd281720d",
              "parent_uuid": "fcc45866-04f9-4bca-a62f-e60084437458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b7154b8-03a4-4060-80ee-669db1f854e3",
                  "parent_uuid": "5fdc454a-c733-4d31-8bb2-314fd281720d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e76ed9e-1271-4faf-ab8f-ea6ada78d993",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "507e5eb9-0e62-4ec5-ad34-9263b4912344",
              "parent_uuid": "7e76ed9e-1271-4faf-ab8f-ea6ada78d993",
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
              "uuid": "34158828-74dd-41ec-ae33-1babec51682a",
              "parent_uuid": "7e76ed9e-1271-4faf-ab8f-ea6ada78d993",
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
              "uuid": "b8a87dec-aa91-46d9-8cc2-bdcbb510ac60",
              "parent_uuid": "7e76ed9e-1271-4faf-ab8f-ea6ada78d993",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "039d5536-8b08-4627-a94d-91c3d1d6e952",
                  "parent_uuid": "b8a87dec-aa91-46d9-8cc2-bdcbb510ac60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43f540ba-a003-4767-8045-100c7b3696b2",
              "parent_uuid": "7e76ed9e-1271-4faf-ab8f-ea6ada78d993",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbc51fb3-bba7-49c3-8b97-e7ff53e1ea62",
                  "parent_uuid": "43f540ba-a003-4767-8045-100c7b3696b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10a79881-e82e-4dca-b3e7-3d386539e500",
              "parent_uuid": "7e76ed9e-1271-4faf-ab8f-ea6ada78d993",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32f9d507-e870-4a70-889c-37868c6a87c5",
                  "parent_uuid": "10a79881-e82e-4dca-b3e7-3d386539e500",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fabbf67-aebe-47e3-8afb-f2cb73fa6b3d",
              "parent_uuid": "7e76ed9e-1271-4faf-ab8f-ea6ada78d993",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df4b9fe2-1149-4f77-a1f8-eca4f56b7366",
                  "parent_uuid": "0fabbf67-aebe-47e3-8afb-f2cb73fa6b3d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d9d29ad8-943c-429d-824c-12931dca9ddb",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c39dca25-7fac-47aa-931f-5ec619acc137",
              "parent_uuid": "d9d29ad8-943c-429d-824c-12931dca9ddb",
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
              "uuid": "9fe6b098-beb4-4d39-9ae1-651310c96ce2",
              "parent_uuid": "d9d29ad8-943c-429d-824c-12931dca9ddb",
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
              "uuid": "9b95102f-596a-49ed-9010-6b01de447be0",
              "parent_uuid": "d9d29ad8-943c-429d-824c-12931dca9ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d76404aa-13fe-497a-98c7-d052b547b3ca",
                  "parent_uuid": "9b95102f-596a-49ed-9010-6b01de447be0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac324e45-1d85-4191-b07f-f68f40ed017c",
              "parent_uuid": "d9d29ad8-943c-429d-824c-12931dca9ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "203317e1-314a-4d09-8cbd-e1f1270be741",
                  "parent_uuid": "ac324e45-1d85-4191-b07f-f68f40ed017c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6918087-58b0-4dd9-a6c0-bad29893b40a",
              "parent_uuid": "d9d29ad8-943c-429d-824c-12931dca9ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b642daee-bdc2-4fe0-b3bd-d9cce4a355ff",
                  "parent_uuid": "c6918087-58b0-4dd9-a6c0-bad29893b40a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31a9d97d-b249-496e-82d6-77c6bafad90d",
              "parent_uuid": "d9d29ad8-943c-429d-824c-12931dca9ddb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "100dff21-3ed0-4de9-a949-c661b8cd62a9",
                  "parent_uuid": "31a9d97d-b249-496e-82d6-77c6bafad90d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5156f7f1-2691-497f-91ca-04eccd4dd1e6",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "815c634b-e90d-45da-a015-49bca15394cc",
              "parent_uuid": "5156f7f1-2691-497f-91ca-04eccd4dd1e6",
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
              "uuid": "ea1fafa2-c748-443e-b0ff-420759e9479d",
              "parent_uuid": "5156f7f1-2691-497f-91ca-04eccd4dd1e6",
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
              "uuid": "88881db7-8fdd-4b1c-b04f-9b1570fd2644",
              "parent_uuid": "5156f7f1-2691-497f-91ca-04eccd4dd1e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc903877-698a-47ef-8039-9807b3c75d9a",
                  "parent_uuid": "88881db7-8fdd-4b1c-b04f-9b1570fd2644",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d24f35b-d489-408b-80e6-243b78ceee53",
              "parent_uuid": "5156f7f1-2691-497f-91ca-04eccd4dd1e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2239ff8-6736-4165-8b49-7bcd5315cc31",
                  "parent_uuid": "8d24f35b-d489-408b-80e6-243b78ceee53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6118ffd-2067-40a1-abe4-461d32204d54",
              "parent_uuid": "5156f7f1-2691-497f-91ca-04eccd4dd1e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c6c91d9-6c90-4e05-9416-f6aad3e2eaa2",
                  "parent_uuid": "d6118ffd-2067-40a1-abe4-461d32204d54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16547640-7035-4bf7-a026-6cb7255ff7f3",
              "parent_uuid": "5156f7f1-2691-497f-91ca-04eccd4dd1e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "287bc6b5-f73f-497f-bcd8-a92b956f9f65",
                  "parent_uuid": "16547640-7035-4bf7-a026-6cb7255ff7f3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f5fddd2d-709a-41ac-a474-c7a9bacc2c31",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46714853-4e16-42d7-abc9-7730d86a4082",
              "parent_uuid": "f5fddd2d-709a-41ac-a474-c7a9bacc2c31",
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
              "uuid": "c2eb7991-7f0f-4796-b2ae-dbbf62935cec",
              "parent_uuid": "f5fddd2d-709a-41ac-a474-c7a9bacc2c31",
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
              "uuid": "023ac76f-be7e-43d5-bf4e-c20317c34d54",
              "parent_uuid": "f5fddd2d-709a-41ac-a474-c7a9bacc2c31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ff0a59e-54db-46ac-9c9d-edabf35d6659",
                  "parent_uuid": "023ac76f-be7e-43d5-bf4e-c20317c34d54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbbac356-542e-4172-b323-624bf256b341",
              "parent_uuid": "f5fddd2d-709a-41ac-a474-c7a9bacc2c31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bbccfd0-155b-4295-8ffc-20a4148fa927",
                  "parent_uuid": "bbbac356-542e-4172-b323-624bf256b341",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6599b3d8-bb08-4d1a-b9b7-90463b25514e",
              "parent_uuid": "f5fddd2d-709a-41ac-a474-c7a9bacc2c31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "889301b9-76d1-48b9-bb50-e81694877e2d",
                  "parent_uuid": "6599b3d8-bb08-4d1a-b9b7-90463b25514e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0f16da0-29e9-408f-8502-75443bb9967a",
              "parent_uuid": "f5fddd2d-709a-41ac-a474-c7a9bacc2c31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7c609d2-2ed9-47c0-9e2f-9ff6df551d3d",
                  "parent_uuid": "a0f16da0-29e9-408f-8502-75443bb9967a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86e2c90f-5dd4-4f76-a42f-6ddbae7163b2",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ba6d47d-64a1-44da-955f-5f1c21604875",
              "parent_uuid": "86e2c90f-5dd4-4f76-a42f-6ddbae7163b2",
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
              "uuid": "525795b2-4d4e-4f5a-b776-fb401eeb3690",
              "parent_uuid": "86e2c90f-5dd4-4f76-a42f-6ddbae7163b2",
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
              "uuid": "d59b4c94-2703-4662-a472-abc028601f7f",
              "parent_uuid": "86e2c90f-5dd4-4f76-a42f-6ddbae7163b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "097f8c59-2973-469b-a6b3-05a9277fad81",
                  "parent_uuid": "d59b4c94-2703-4662-a472-abc028601f7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "236153f0-e652-4f02-9c49-5d0e33f98572",
              "parent_uuid": "86e2c90f-5dd4-4f76-a42f-6ddbae7163b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f0b294b-fa6c-42e7-bcc7-ff6d621164e5",
                  "parent_uuid": "236153f0-e652-4f02-9c49-5d0e33f98572",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfe018b6-9a84-4deb-9520-1752b83db5d0",
              "parent_uuid": "86e2c90f-5dd4-4f76-a42f-6ddbae7163b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "937b0190-b11f-45d3-8ec0-da648ee510fa",
                  "parent_uuid": "cfe018b6-9a84-4deb-9520-1752b83db5d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "162d7182-1913-4ea2-8c34-6759a5e98371",
              "parent_uuid": "86e2c90f-5dd4-4f76-a42f-6ddbae7163b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a8c436a-9439-448c-ab19-b9f76baa8487",
                  "parent_uuid": "162d7182-1913-4ea2-8c34-6759a5e98371",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8f308f53-9f9c-44bf-a99f-ae024a76901e",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "059acfd0-e9b8-4d4b-a59d-f2cbb52a107e",
              "parent_uuid": "8f308f53-9f9c-44bf-a99f-ae024a76901e",
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
          "uuid": "901c0ef4-7903-40e9-92f5-3a1dc9bc6456",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22b96b28-23f9-4ee0-8e80-c5cddf6e8a37",
              "parent_uuid": "901c0ef4-7903-40e9-92f5-3a1dc9bc6456",
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
          "uuid": "f93ad10d-df31-4b15-90da-ec6d6980d44c",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da6a9e1a-217f-4575-92b8-504217c2db1a",
              "parent_uuid": "f93ad10d-df31-4b15-90da-ec6d6980d44c",
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
                  "uuid": "0f94165a-6adb-4676-91fe-bbaf9db62b35",
                  "parent_uuid": "da6a9e1a-217f-4575-92b8-504217c2db1a",
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
          "uuid": "6e9881f8-4dee-4921-99fc-2abf8bfe5592",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bfedaf89-b73c-40f3-b044-fa71543054fb",
              "parent_uuid": "6e9881f8-4dee-4921-99fc-2abf8bfe5592",
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
          "uuid": "17afb03b-7df3-43c6-8b83-d20c4d17df50",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e0b5b78c-fe88-4607-a9a6-ffcc95a03282",
              "parent_uuid": "17afb03b-7df3-43c6-8b83-d20c4d17df50",
              "tagName": "td",
              "properties": [
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
          "uuid": "bc466a5b-0225-462d-94d3-90dd113cf3e8",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "99a16d12-a0b0-4610-9228-3ed28b33c000",
              "parent_uuid": "bc466a5b-0225-462d-94d3-90dd113cf3e8",
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
              "uuid": "5108e541-2364-44ac-b2a3-75f67541a645",
              "parent_uuid": "bc466a5b-0225-462d-94d3-90dd113cf3e8",
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
              "uuid": "d6a725d0-9fd3-4842-8691-2aa115026d43",
              "parent_uuid": "bc466a5b-0225-462d-94d3-90dd113cf3e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76ddc596-ad51-4982-afa0-2b39e12a5ad5",
                  "parent_uuid": "d6a725d0-9fd3-4842-8691-2aa115026d43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4af2bc1e-0728-4650-b796-3f3fe7739eac",
              "parent_uuid": "bc466a5b-0225-462d-94d3-90dd113cf3e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85abfe64-53f3-4bb8-af55-4ca57836127f",
                  "parent_uuid": "4af2bc1e-0728-4650-b796-3f3fe7739eac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78986afa-5336-4a98-b9a8-4e63fdf3b2f3",
              "parent_uuid": "bc466a5b-0225-462d-94d3-90dd113cf3e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5c8bb0e-8414-4fa4-ba36-e6747484f8ed",
                  "parent_uuid": "78986afa-5336-4a98-b9a8-4e63fdf3b2f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "526aa374-9af3-4824-8673-227bee1cc772",
              "parent_uuid": "bc466a5b-0225-462d-94d3-90dd113cf3e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5425ab2-22ec-4ddd-ba3c-dc186715e162",
                  "parent_uuid": "526aa374-9af3-4824-8673-227bee1cc772",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "49795801-e230-4355-a177-cc1dede0939f",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8a19d80-1361-43f6-a29f-c4ebf24c02ae",
              "parent_uuid": "49795801-e230-4355-a177-cc1dede0939f",
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
              "uuid": "ed9675aa-0795-4620-af96-10971ce4d2bc",
              "parent_uuid": "49795801-e230-4355-a177-cc1dede0939f",
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
              "uuid": "0cec78f1-bb43-42de-aef0-9f15ea448d54",
              "parent_uuid": "49795801-e230-4355-a177-cc1dede0939f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a1fccfb-0487-4074-b541-c2f7b5bc0503",
                  "parent_uuid": "0cec78f1-bb43-42de-aef0-9f15ea448d54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec209187-4a1d-4210-93a1-3a9c424b7e98",
              "parent_uuid": "49795801-e230-4355-a177-cc1dede0939f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15c48ab7-9f03-4a31-81b3-af56ffd7a026",
                  "parent_uuid": "ec209187-4a1d-4210-93a1-3a9c424b7e98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb0697df-4eed-442c-8a07-97ad9f3343b6",
              "parent_uuid": "49795801-e230-4355-a177-cc1dede0939f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a98d0ba-b9cc-4e91-98ad-f36dcf6dbffe",
                  "parent_uuid": "cb0697df-4eed-442c-8a07-97ad9f3343b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c05ecb01-c6fb-4588-a4b6-024841f49861",
              "parent_uuid": "49795801-e230-4355-a177-cc1dede0939f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae7d11b8-d246-4733-b1c4-8059e539991e",
                  "parent_uuid": "c05ecb01-c6fb-4588-a4b6-024841f49861",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9e943492-a73a-4cec-b6aa-75537fb98df9",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca72eb13-1bed-4df8-9772-bd0fceaa0cb2",
              "parent_uuid": "9e943492-a73a-4cec-b6aa-75537fb98df9",
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
              "uuid": "8cff2e45-a5e8-4085-8be0-2430fc757924",
              "parent_uuid": "9e943492-a73a-4cec-b6aa-75537fb98df9",
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
              "uuid": "49e90fd6-c0d0-40d7-bc0d-ba91330e8c48",
              "parent_uuid": "9e943492-a73a-4cec-b6aa-75537fb98df9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "912ee6e8-9f50-4af5-a51a-1d4898a8a7a8",
                  "parent_uuid": "49e90fd6-c0d0-40d7-bc0d-ba91330e8c48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e96e1a55-fc93-417c-b38a-1fd36ebc0949",
              "parent_uuid": "9e943492-a73a-4cec-b6aa-75537fb98df9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d019930f-b533-49fb-83db-d412ff8b4f71",
                  "parent_uuid": "e96e1a55-fc93-417c-b38a-1fd36ebc0949",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f707ee2e-ea96-42bf-870e-a5514b22b4bc",
              "parent_uuid": "9e943492-a73a-4cec-b6aa-75537fb98df9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d502a47-7e55-47ef-bdb6-48782569a716",
                  "parent_uuid": "f707ee2e-ea96-42bf-870e-a5514b22b4bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f26b4369-2d21-4819-9947-c59d9d890ef6",
              "parent_uuid": "9e943492-a73a-4cec-b6aa-75537fb98df9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d789a2ff-2641-475e-9961-f2120592a3bb",
                  "parent_uuid": "f26b4369-2d21-4819-9947-c59d9d890ef6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4f551773-583e-4fd0-912b-19a2e98ee4e2",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fdd8c358-06e4-41c7-bf29-e5b694eb72ca",
              "parent_uuid": "4f551773-583e-4fd0-912b-19a2e98ee4e2",
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
              "uuid": "e1848623-d67c-4ed1-95d1-b9a35176137b",
              "parent_uuid": "4f551773-583e-4fd0-912b-19a2e98ee4e2",
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
              "uuid": "55d6aecb-c871-468c-9774-b11ec6b675f3",
              "parent_uuid": "4f551773-583e-4fd0-912b-19a2e98ee4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0efe762c-108f-4bd9-8dc2-2ca833a740e4",
                  "parent_uuid": "55d6aecb-c871-468c-9774-b11ec6b675f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1e1b835-3dd2-4425-a114-0b13b4c66ad9",
              "parent_uuid": "4f551773-583e-4fd0-912b-19a2e98ee4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8c6af41-cf8a-46e5-866d-3710b55f3cd7",
                  "parent_uuid": "b1e1b835-3dd2-4425-a114-0b13b4c66ad9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87cb9aa6-e758-4c4c-be2e-1d4f32061b6a",
              "parent_uuid": "4f551773-583e-4fd0-912b-19a2e98ee4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7aeb0ab1-90c2-4a34-8173-016d750b04bd",
                  "parent_uuid": "87cb9aa6-e758-4c4c-be2e-1d4f32061b6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "407939f0-6c6b-4190-99fd-f8d6a90289f6",
              "parent_uuid": "4f551773-583e-4fd0-912b-19a2e98ee4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7fe72ff-69df-43ce-a94e-2e647c77b91b",
                  "parent_uuid": "407939f0-6c6b-4190-99fd-f8d6a90289f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31e67907-0653-4c7a-a42a-c2b91ff25d85",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ce4a3e67-353f-4d5a-a697-f0a92bfc2365",
              "parent_uuid": "31e67907-0653-4c7a-a42a-c2b91ff25d85",
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
          "uuid": "4fe9834c-388c-4c0f-a14c-fb558a328c14",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95416884-61d2-40f8-8893-efbd2ad8a1c1",
              "parent_uuid": "4fe9834c-388c-4c0f-a14c-fb558a328c14",
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
              "uuid": "7925f08c-db63-4a89-8673-a9b6b4bf6de1",
              "parent_uuid": "4fe9834c-388c-4c0f-a14c-fb558a328c14",
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
              "uuid": "c0a56894-5787-4b59-9ab4-6cda77cd53b7",
              "parent_uuid": "4fe9834c-388c-4c0f-a14c-fb558a328c14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2befc0ba-e5f0-460a-8451-c4a4a22454f8",
                  "parent_uuid": "c0a56894-5787-4b59-9ab4-6cda77cd53b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90f7126c-79bd-4b14-823c-cd2f3077d7b1",
              "parent_uuid": "4fe9834c-388c-4c0f-a14c-fb558a328c14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc804d16-7d91-4cd3-9702-27d6bb3cb6c2",
                  "parent_uuid": "90f7126c-79bd-4b14-823c-cd2f3077d7b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dcae18d0-bc76-47ca-9956-267dc1b91434",
              "parent_uuid": "4fe9834c-388c-4c0f-a14c-fb558a328c14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e54a01d-a0b6-4df8-94bc-92e8bfe356cc",
                  "parent_uuid": "dcae18d0-bc76-47ca-9956-267dc1b91434",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ffc91b3-45f0-4ef7-b0d1-fd60ce33284b",
              "parent_uuid": "4fe9834c-388c-4c0f-a14c-fb558a328c14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ac4437c-39ef-4aaf-ab80-82e287eab3f2",
                  "parent_uuid": "2ffc91b3-45f0-4ef7-b0d1-fd60ce33284b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4606cbdb-d8b5-49ad-a417-086a355598b1",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db4cf415-b26a-42df-b06c-4dd5d8e72b45",
              "parent_uuid": "4606cbdb-d8b5-49ad-a417-086a355598b1",
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
              "uuid": "dd066be3-afbd-4c19-b760-c77ada2ba152",
              "parent_uuid": "4606cbdb-d8b5-49ad-a417-086a355598b1",
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
              "uuid": "17b7a31d-c24a-453e-84fe-c886912213eb",
              "parent_uuid": "4606cbdb-d8b5-49ad-a417-086a355598b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9c5d40b-b7c9-4382-a5a3-0903c84baf33",
                  "parent_uuid": "17b7a31d-c24a-453e-84fe-c886912213eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d949417b-5884-4d33-828e-9cea3df8b5ca",
              "parent_uuid": "4606cbdb-d8b5-49ad-a417-086a355598b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4cf895e0-7900-4283-bf66-133a5e845b79",
                  "parent_uuid": "d949417b-5884-4d33-828e-9cea3df8b5ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f671d67-e6be-4c44-b195-1e4f3569c33c",
              "parent_uuid": "4606cbdb-d8b5-49ad-a417-086a355598b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f5967c2-8d2f-4b5c-9e15-eb49ea0bf7a1",
                  "parent_uuid": "1f671d67-e6be-4c44-b195-1e4f3569c33c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c93d88f6-878e-4f7b-9c24-66304fa6608b",
              "parent_uuid": "4606cbdb-d8b5-49ad-a417-086a355598b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "643b3419-5725-424d-96cd-c39b32ae5fca",
                  "parent_uuid": "c93d88f6-878e-4f7b-9c24-66304fa6608b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35413b8f-3265-472c-899d-72ea35e31fd1",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1136d919-5db6-4e19-bd96-ca52bfa758f6",
              "parent_uuid": "35413b8f-3265-472c-899d-72ea35e31fd1",
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
              "uuid": "fed2a3a6-210d-461e-b205-65d8dfc2f184",
              "parent_uuid": "35413b8f-3265-472c-899d-72ea35e31fd1",
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
              "uuid": "cabe8310-91b0-4cb6-be5c-f1f0ad7cce15",
              "parent_uuid": "35413b8f-3265-472c-899d-72ea35e31fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e944009c-5f8f-441f-bc71-656a23651a91",
                  "parent_uuid": "cabe8310-91b0-4cb6-be5c-f1f0ad7cce15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8566c536-2423-4a08-af35-09bdaebb154e",
              "parent_uuid": "35413b8f-3265-472c-899d-72ea35e31fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5156afa4-c2d6-4501-8b09-c54c9fad3e9a",
                  "parent_uuid": "8566c536-2423-4a08-af35-09bdaebb154e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30f7ba50-7101-4eb6-b7bc-74c23bc96361",
              "parent_uuid": "35413b8f-3265-472c-899d-72ea35e31fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b3d42c5-a958-42d6-930f-419a812c1589",
                  "parent_uuid": "30f7ba50-7101-4eb6-b7bc-74c23bc96361",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d17302b-adda-401f-a17f-2a676cdd311d",
              "parent_uuid": "35413b8f-3265-472c-899d-72ea35e31fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fbf63e6-8e10-445d-9482-81a78d1f7f6c",
                  "parent_uuid": "8d17302b-adda-401f-a17f-2a676cdd311d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6396c9d6-c517-4ee7-959d-82524f64ddfe",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc5f69f7-9db9-4efa-a9f7-3d4625f02cdc",
              "parent_uuid": "6396c9d6-c517-4ee7-959d-82524f64ddfe",
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
              "uuid": "a243a059-4ade-407b-aad4-fbabf8ae5aae",
              "parent_uuid": "6396c9d6-c517-4ee7-959d-82524f64ddfe",
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
              "uuid": "ccdb3b2a-cae8-4091-bca8-9d7657cda1cf",
              "parent_uuid": "6396c9d6-c517-4ee7-959d-82524f64ddfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f22569b1-df62-42ff-bcb5-90dfb374021b",
                  "parent_uuid": "ccdb3b2a-cae8-4091-bca8-9d7657cda1cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1f34df3-a283-4ca6-a421-3fc9d2fde913",
              "parent_uuid": "6396c9d6-c517-4ee7-959d-82524f64ddfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83ffd5f7-9557-45d7-8663-09783d894ca4",
                  "parent_uuid": "e1f34df3-a283-4ca6-a421-3fc9d2fde913",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b87c2abe-8c17-4652-b8c2-6b37fc67945a",
              "parent_uuid": "6396c9d6-c517-4ee7-959d-82524f64ddfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48061365-31b4-4331-90c9-59b7297e253f",
                  "parent_uuid": "b87c2abe-8c17-4652-b8c2-6b37fc67945a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2592d136-9b59-4ea1-a3ab-c44f12a3b0eb",
              "parent_uuid": "6396c9d6-c517-4ee7-959d-82524f64ddfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ab420f2-427e-40dd-86a9-3461ddaf3128",
                  "parent_uuid": "2592d136-9b59-4ea1-a3ab-c44f12a3b0eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "47ee6c43-3770-4154-8cde-ffa665e1291d",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eae4e143-ce78-434b-9c71-36547402d6fe",
              "parent_uuid": "47ee6c43-3770-4154-8cde-ffa665e1291d",
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
          "uuid": "e7015270-ff5b-44a4-b639-8ef0c43bca5d",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35903d64-9af7-4ca5-8101-74d0c65c4399",
              "parent_uuid": "e7015270-ff5b-44a4-b639-8ef0c43bca5d",
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
          "uuid": "aaecddd3-f9b8-4f9b-9a1e-5867ceee2caf",
          "parent_uuid": "8caa059e-c877-40a3-946b-3ff5f172c8b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab4ca382-d275-4b17-bc31-d12ed48cc0c3",
              "parent_uuid": "aaecddd3-f9b8-4f9b-9a1e-5867ceee2caf",
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
                  "uuid": "b0aea291-24e7-4314-8677-d384f9de8a72",
                  "parent_uuid": "ab4ca382-d275-4b17-bc31-d12ed48cc0c3",
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

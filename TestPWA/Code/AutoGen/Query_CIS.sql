
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
  "uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
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
      "uuid": "c3bd1a21-6ae6-4a88-ab3a-8cad987d4809",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
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
      "uuid": "ebae86ed-cbf6-4102-8b1c-91393f67e8e9",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
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
      "uuid": "f5785006-28ff-45d5-b731-792b7c9add0b",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
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
      "uuid": "cfc92d1f-ec22-4a13-8dc4-96d1f3264595",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "69"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "d6b67a58-91ba-4ce9-91d4-3f93c6c6fe97",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "dbb60913-35c7-4f0d-a02d-19c620d7fb8a",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
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
      "uuid": "dbea25b1-3168-4e59-884b-98a9a4203b81",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
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
      "uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
      "parent_uuid": "da840441-8f5f-40bd-b25b-d89ac23476fd",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "9fdef7a7-255c-49fa-b505-1f03d17a4ca7",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "65412eb3-36f6-4f6d-9343-c244628b3ee8",
              "parent_uuid": "9fdef7a7-255c-49fa-b505-1f03d17a4ca7",
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "02b920e9-911f-4473-8b9d-7c4db676d0c6",
              "parent_uuid": "9fdef7a7-255c-49fa-b505-1f03d17a4ca7",
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
              "uuid": "2e71635a-2728-40ab-9b0c-cef8e8e7b77e",
              "parent_uuid": "9fdef7a7-255c-49fa-b505-1f03d17a4ca7",
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
              "uuid": "c5e9a9cf-220c-4dc2-b522-537faf32cce8",
              "parent_uuid": "9fdef7a7-255c-49fa-b505-1f03d17a4ca7",
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
              "innerHtml": "<span>Bargeldgewerk: Münzinspektions- und Sortieranlage</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "815d2d4f-219d-4475-856b-4a151d327706",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "2dc471b5-fcd9-43ed-becd-7c6b969ac29d",
              "parent_uuid": "815d2d4f-219d-4475-856b-4a151d327706",
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
              "uuid": "a4574ad0-98e3-4e7b-b0e5-5bbc0ff4329c",
              "parent_uuid": "815d2d4f-219d-4475-856b-4a151d327706",
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
              "uuid": "f422bf47-6fcb-4a27-a137-ccaad8bb8895",
              "parent_uuid": "815d2d4f-219d-4475-856b-4a151d327706",
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
              "uuid": "121659ab-6f1e-4efe-8b9a-65d1c2a84586",
              "parent_uuid": "815d2d4f-219d-4475-856b-4a151d327706",
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
          "uuid": "1668633f-96fe-4db7-90c3-a6713c0d8562",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "198108e3-6c3e-4693-a5e5-4c0130a27a59",
              "parent_uuid": "1668633f-96fe-4db7-90c3-a6713c0d8562",
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
                  "left"
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
              "uuid": "85bf0476-b79d-473a-8892-1f0e01f7a7cb",
              "parent_uuid": "1668633f-96fe-4db7-90c3-a6713c0d8562",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "325113ab-5724-452d-850a-50876feaf1c2",
              "parent_uuid": "1668633f-96fe-4db7-90c3-a6713c0d8562",
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
              "uuid": "dfe986f3-4b1e-4ced-b40e-a4e8f4179186",
              "parent_uuid": "1668633f-96fe-4db7-90c3-a6713c0d8562",
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
              "uuid": "5ff6b6ae-473f-4c5f-861c-f0ffe73633db",
              "parent_uuid": "1668633f-96fe-4db7-90c3-a6713c0d8562",
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
              "uuid": "bf0544a8-5954-4b5a-b5f2-e5272d1daa81",
              "parent_uuid": "1668633f-96fe-4db7-90c3-a6713c0d8562",
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
          "uuid": "06a24afe-8573-4ca1-8113-fdcf78d73eff",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "834fa86e-f099-43ec-a584-426b5d79a4d5",
              "parent_uuid": "06a24afe-8573-4ca1-8113-fdcf78d73eff",
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
          "uuid": "dffdd37a-bcd4-4958-a480-9a5086e1555b",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e8b7d60-a7ad-4660-bbf2-137b175a8336",
              "parent_uuid": "dffdd37a-bcd4-4958-a480-9a5086e1555b",
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
              "uuid": "01962bdf-2c7f-4ee7-99f4-c8b663672251",
              "parent_uuid": "dffdd37a-bcd4-4958-a480-9a5086e1555b",
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
              "uuid": "ca3fce23-a777-4e2c-83d8-e3db5b791ccc",
              "parent_uuid": "dffdd37a-bcd4-4958-a480-9a5086e1555b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9027686-8ee8-4ba1-b599-6a0cf9c438d7",
                  "parent_uuid": "ca3fce23-a777-4e2c-83d8-e3db5b791ccc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d442f94-8c7d-4f0f-9ebd-770b8d5bd307",
              "parent_uuid": "dffdd37a-bcd4-4958-a480-9a5086e1555b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96c29aeb-27c3-4d8f-ad35-d2f6f73a4b38",
                  "parent_uuid": "9d442f94-8c7d-4f0f-9ebd-770b8d5bd307",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fad12ff-6ca6-418b-bf0a-988bfd475cb0",
              "parent_uuid": "dffdd37a-bcd4-4958-a480-9a5086e1555b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb44aaae-3636-4487-b96c-94a83d3c9413",
                  "parent_uuid": "0fad12ff-6ca6-418b-bf0a-988bfd475cb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "720ada38-91bd-448b-8efb-114b53789217",
              "parent_uuid": "dffdd37a-bcd4-4958-a480-9a5086e1555b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8594572-79df-48c7-830b-59f166ab5aeb",
                  "parent_uuid": "720ada38-91bd-448b-8efb-114b53789217",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1beebd39-9248-4855-88ce-841ba396ef28",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5a79b50-1a0b-4bd5-a9ed-1a331ea305a4",
              "parent_uuid": "1beebd39-9248-4855-88ce-841ba396ef28",
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
                  "34"
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
              "innerHtml": "\r\n                    <span>Alle Transportbänder auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "40422fa8-d520-476b-a41c-8311b731c86d",
              "parent_uuid": "1beebd39-9248-4855-88ce-841ba396ef28",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2cc03bdd-4e74-46a9-8af3-d6e9f8680aaa",
              "parent_uuid": "1beebd39-9248-4855-88ce-841ba396ef28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdb16eff-8042-4fde-939a-93009594c1b4",
                  "parent_uuid": "2cc03bdd-4e74-46a9-8af3-d6e9f8680aaa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3806bf0f-8f6d-4571-8e56-053a605e421f",
              "parent_uuid": "1beebd39-9248-4855-88ce-841ba396ef28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02164a40-03bd-4b01-a74e-e1aaadc1fe3f",
                  "parent_uuid": "3806bf0f-8f6d-4571-8e56-053a605e421f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2431ea6-4583-4e96-b0de-6743d8d6989f",
              "parent_uuid": "1beebd39-9248-4855-88ce-841ba396ef28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75c7caee-02ba-4ca5-9a71-504b4ee10f5b",
                  "parent_uuid": "d2431ea6-4583-4e96-b0de-6743d8d6989f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c84d3380-8468-416b-8b50-6b5dba2aca53",
              "parent_uuid": "1beebd39-9248-4855-88ce-841ba396ef28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18b262d6-10fe-4d37-ac3d-96f96146cb66",
                  "parent_uuid": "c84d3380-8468-416b-8b50-6b5dba2aca53",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1c34ed3d-8ca5-47ec-a60a-951318aef0d7",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "814cc21a-24dc-4b14-ade7-017f1e8f9e44",
              "parent_uuid": "1c34ed3d-8ca5-47ec-a60a-951318aef0d7",
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
                  "35"
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
              "innerHtml": "\r\n                    <span>Prüfen Sie alle bewegliche und schwingende Teile auf lose oder fehlende Schrauben.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a6414f29-232a-41f1-87d9-cea841d137f1",
              "parent_uuid": "1c34ed3d-8ca5-47ec-a60a-951318aef0d7",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e94b1568-928a-4dbb-a43d-a14e19bf13e9",
              "parent_uuid": "1c34ed3d-8ca5-47ec-a60a-951318aef0d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69b84326-84a2-4215-8b36-758fc90aa1b6",
                  "parent_uuid": "e94b1568-928a-4dbb-a43d-a14e19bf13e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67a31f64-29a3-4113-94f1-75c085b27cfa",
              "parent_uuid": "1c34ed3d-8ca5-47ec-a60a-951318aef0d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cfa9ad3-35a5-4e3a-815f-e0af1a70406a",
                  "parent_uuid": "67a31f64-29a3-4113-94f1-75c085b27cfa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7618bfd1-91d9-4e93-a9cb-03a79db16e8c",
              "parent_uuid": "1c34ed3d-8ca5-47ec-a60a-951318aef0d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "232793a3-59ee-4340-9468-e4cb517fab0a",
                  "parent_uuid": "7618bfd1-91d9-4e93-a9cb-03a79db16e8c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5b80004-6530-46de-af5f-367995f5b7d9",
              "parent_uuid": "1c34ed3d-8ca5-47ec-a60a-951318aef0d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66ef51c2-b654-48d3-bd7b-ecffaf30fba3",
                  "parent_uuid": "b5b80004-6530-46de-af5f-367995f5b7d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "67abe3fd-c3c6-4475-9bb6-057911a21a60",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4f31ec0-6ec3-4495-96d2-a967e9aaff40",
              "parent_uuid": "67abe3fd-c3c6-4475-9bb6-057911a21a60",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1203033e-9175-40ed-828b-61a9c40eddbe",
              "parent_uuid": "67abe3fd-c3c6-4475-9bb6-057911a21a60",
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
              "uuid": "d8eb8caf-395f-4b8e-9ae8-707e4d693540",
              "parent_uuid": "67abe3fd-c3c6-4475-9bb6-057911a21a60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4c833c3-bfb1-4ddf-8809-ea1e6188d580",
                  "parent_uuid": "d8eb8caf-395f-4b8e-9ae8-707e4d693540",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e661eef0-995e-480c-9e36-4b1fdd74a57b",
              "parent_uuid": "67abe3fd-c3c6-4475-9bb6-057911a21a60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4acd8f67-dcdd-4a25-9d20-e46fb908f3c7",
                  "parent_uuid": "e661eef0-995e-480c-9e36-4b1fdd74a57b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4f4ad21-97b5-4ad8-8e4e-ad788781db95",
              "parent_uuid": "67abe3fd-c3c6-4475-9bb6-057911a21a60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da5a59ae-8127-4dc7-9c14-368607ce9682",
                  "parent_uuid": "a4f4ad21-97b5-4ad8-8e4e-ad788781db95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb84657d-911d-41bd-8ed9-ce584e7c8dcf",
              "parent_uuid": "67abe3fd-c3c6-4475-9bb6-057911a21a60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "294b408a-39f5-45f0-ac0e-404ec3a54c35",
                  "parent_uuid": "fb84657d-911d-41bd-8ed9-ce584e7c8dcf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0af8b61c-92bc-4dac-9e2b-c99aa0a90198",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8ae81dd9-9008-4509-82f1-8d61f8ae1a69",
              "parent_uuid": "0af8b61c-92bc-4dac-9e2b-c99aa0a90198",
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "b77acae7-6d55-4689-8a92-3a5af10d8730",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4f946f5-a026-4a1f-8e1e-c38adf4af054",
              "parent_uuid": "b77acae7-6d55-4689-8a92-3a5af10d8730",
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
              "innerHtml": "\r\n                    <span>Gesamte Anlage reinigen:<br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c16b6e5a-d176-48cc-9808-499c6c005ce2",
              "parent_uuid": "b77acae7-6d55-4689-8a92-3a5af10d8730",
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
              "innerHtml": "\r\n                    <span>W</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b0b09579-8430-44e2-a2af-0c88eef4ec3f",
              "parent_uuid": "b77acae7-6d55-4689-8a92-3a5af10d8730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59135d4d-fa14-486b-aa0a-9898df3a252d",
                  "parent_uuid": "b0b09579-8430-44e2-a2af-0c88eef4ec3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06d6f494-70c7-4a28-8307-5937e3b1b6ef",
              "parent_uuid": "b77acae7-6d55-4689-8a92-3a5af10d8730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "886f8b4f-4202-4c9b-b954-b778d9413867",
                  "parent_uuid": "06d6f494-70c7-4a28-8307-5937e3b1b6ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d594fb2f-d3eb-499b-9b8a-196706da488e",
              "parent_uuid": "b77acae7-6d55-4689-8a92-3a5af10d8730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcad8fd6-e56c-43af-84cc-bff486cb5902",
                  "parent_uuid": "d594fb2f-d3eb-499b-9b8a-196706da488e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "054d35da-e9fe-4313-90ef-bcb20b69a1b8",
              "parent_uuid": "b77acae7-6d55-4689-8a92-3a5af10d8730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a14995c4-9547-4b9c-9c1a-d01adf8f690f",
                  "parent_uuid": "054d35da-e9fe-4313-90ef-bcb20b69a1b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "67298ed7-9ccd-412e-9d82-be24c3930319",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "29e59e8d-66cf-42ee-b9a8-45b7cc4faa25",
              "parent_uuid": "67298ed7-9ccd-412e-9d82-be24c3930319",
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
              "innerHtml": "\r\n                    <span>Festsitzende Münzen in der Maschine überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b9674bda-cb38-4808-bfdc-7389cfd446e8",
              "parent_uuid": "67298ed7-9ccd-412e-9d82-be24c3930319",
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
              "uuid": "1aef286f-9080-4147-8f49-f856f1a0c448",
              "parent_uuid": "67298ed7-9ccd-412e-9d82-be24c3930319",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f2dfc3d-c64d-4c68-b4cf-c9884cb96edc",
                  "parent_uuid": "1aef286f-9080-4147-8f49-f856f1a0c448",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "983b8d24-2ecd-4ae6-b175-9e3472477f06",
              "parent_uuid": "67298ed7-9ccd-412e-9d82-be24c3930319",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b49654d-669b-4764-837f-1f77296ec2d6",
                  "parent_uuid": "983b8d24-2ecd-4ae6-b175-9e3472477f06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3d16534-b33d-49df-b7c9-294756ca39ba",
              "parent_uuid": "67298ed7-9ccd-412e-9d82-be24c3930319",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c0aed42-1bc9-495a-a3be-86219726953b",
                  "parent_uuid": "b3d16534-b33d-49df-b7c9-294756ca39ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a53da87-9933-43df-8f77-c3bc2272d3e9",
              "parent_uuid": "67298ed7-9ccd-412e-9d82-be24c3930319",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9dddd21a-af14-44f3-9992-685d9ccfd145",
                  "parent_uuid": "8a53da87-9933-43df-8f77-c3bc2272d3e9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e3f74a70-6d36-4819-9bc8-7fa9c77eef58",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aca207fe-545d-458c-a210-dd5984a78a19",
              "parent_uuid": "e3f74a70-6d36-4819-9bc8-7fa9c77eef58",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Sichtfenster reinigen mit lauwarmes Wasser sowie ein wenig Spülmittel aus. <br>Verwenden dabei ein Mikrofasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "63c4e216-345e-4c24-9831-c093def11360",
              "parent_uuid": "e3f74a70-6d36-4819-9bc8-7fa9c77eef58",
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
              "uuid": "6fce31a4-be8f-44eb-8f18-0389391e5e19",
              "parent_uuid": "e3f74a70-6d36-4819-9bc8-7fa9c77eef58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45dc93dd-3b97-4d01-a6c8-e108311e8e59",
                  "parent_uuid": "6fce31a4-be8f-44eb-8f18-0389391e5e19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2abbbdfc-6277-40c9-9035-c4f54780de36",
              "parent_uuid": "e3f74a70-6d36-4819-9bc8-7fa9c77eef58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c49441b4-10bf-4949-8335-8a26fffc5722",
                  "parent_uuid": "2abbbdfc-6277-40c9-9035-c4f54780de36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e90ab3d-8b8e-4471-a615-c9ca8d384f6c",
              "parent_uuid": "e3f74a70-6d36-4819-9bc8-7fa9c77eef58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a293ebe-84af-48a2-a854-78d1df8d3671",
                  "parent_uuid": "7e90ab3d-8b8e-4471-a615-c9ca8d384f6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cd60aed-5117-4aff-ba76-b08df9253a95",
              "parent_uuid": "e3f74a70-6d36-4819-9bc8-7fa9c77eef58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed4304b9-297a-4eba-9f94-e9b853cfe5ff",
                  "parent_uuid": "2cd60aed-5117-4aff-ba76-b08df9253a95",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6cd5a7d-2e7f-4f67-95cd-5bdd48bf3b67",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1e8da95-1e74-4cef-8a62-37c7d13630b2",
              "parent_uuid": "e6cd5a7d-2e7f-4f67-95cd-5bdd48bf3b67",
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
              "innerHtml": "\r\n                    <span>Not-Aus-Taster, Kontrolllampen und Anzeigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "00f8fef7-385d-4861-89e7-c02b24ff5454",
              "parent_uuid": "e6cd5a7d-2e7f-4f67-95cd-5bdd48bf3b67",
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
              "uuid": "b0d061dd-86c8-4de9-b69b-3d507d725af1",
              "parent_uuid": "e6cd5a7d-2e7f-4f67-95cd-5bdd48bf3b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c99a574a-0c22-45da-9438-5258655be0c5",
                  "parent_uuid": "b0d061dd-86c8-4de9-b69b-3d507d725af1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "451e2cd7-db04-40a0-97ea-de627103273f",
              "parent_uuid": "e6cd5a7d-2e7f-4f67-95cd-5bdd48bf3b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62739901-3bf6-41ab-b41e-e2a3d42c70ef",
                  "parent_uuid": "451e2cd7-db04-40a0-97ea-de627103273f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b986c4c2-47c4-43f9-be72-0c75097101c3",
              "parent_uuid": "e6cd5a7d-2e7f-4f67-95cd-5bdd48bf3b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c0c8136-86a3-4b20-bf4d-e2ccd45dea30",
                  "parent_uuid": "b986c4c2-47c4-43f9-be72-0c75097101c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e2ea067-2eff-4733-8f1b-b9a5eb9dc208",
              "parent_uuid": "e6cd5a7d-2e7f-4f67-95cd-5bdd48bf3b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ca8e717-2ecc-4a98-a925-b3c22b4f4742",
                  "parent_uuid": "7e2ea067-2eff-4733-8f1b-b9a5eb9dc208",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5df856db-c05c-49cc-9db1-8431e1d1af12",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c6519b1-577f-4c04-bb2f-42778b99189d",
              "parent_uuid": "5df856db-c05c-49cc-9db1-8431e1d1af12",
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
                  "105"
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
              "innerHtml": "\r\n                    <span>Transportriemen gross reinigen:<br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "300dca2f-5974-4b4e-b450-625ff13be3aa",
              "parent_uuid": "5df856db-c05c-49cc-9db1-8431e1d1af12",
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
              "uuid": "1f04b310-b68a-469e-aeea-ffabe8ca40f7",
              "parent_uuid": "5df856db-c05c-49cc-9db1-8431e1d1af12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4741ec5b-69aa-4d46-be73-86e2027ee08f",
                  "parent_uuid": "1f04b310-b68a-469e-aeea-ffabe8ca40f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "101b57a8-aa06-4880-8f3f-5ebac8b2eef1",
              "parent_uuid": "5df856db-c05c-49cc-9db1-8431e1d1af12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70bb3493-6dca-4a1c-b340-01b1ef00699e",
                  "parent_uuid": "101b57a8-aa06-4880-8f3f-5ebac8b2eef1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d699934-b98e-4cbc-91c7-3ad6e84ad96d",
              "parent_uuid": "5df856db-c05c-49cc-9db1-8431e1d1af12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63202594-66ec-40c8-a7c4-3a8db1b37ddb",
                  "parent_uuid": "5d699934-b98e-4cbc-91c7-3ad6e84ad96d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "823a55e6-5cf2-40bf-a708-928a6af3e26e",
              "parent_uuid": "5df856db-c05c-49cc-9db1-8431e1d1af12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83be0345-c8f7-4337-a6e2-b6214a7c5327",
                  "parent_uuid": "823a55e6-5cf2-40bf-a708-928a6af3e26e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6116fb7b-b4ad-4c60-b202-cf5cfc839f01",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20351596-34fc-4471-8d6a-b65cfcc283ef",
              "parent_uuid": "6116fb7b-b4ad-4c60-b202-cf5cfc839f01",
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
                  "121"
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
              "innerHtml": "\r\n                    <span>Transportriemen klein reinigen:<br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cbfedb99-47a5-4336-bf87-7775cac6509b",
              "parent_uuid": "6116fb7b-b4ad-4c60-b202-cf5cfc839f01",
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
              "uuid": "6ae752d7-9cd4-4151-8258-c35bfeef433e",
              "parent_uuid": "6116fb7b-b4ad-4c60-b202-cf5cfc839f01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72028f07-0480-40d7-9488-0cc93782e96d",
                  "parent_uuid": "6ae752d7-9cd4-4151-8258-c35bfeef433e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "640711b9-fcf2-4d97-b9f9-76f84eac7570",
              "parent_uuid": "6116fb7b-b4ad-4c60-b202-cf5cfc839f01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c70332a-d10d-4302-92a3-97c3fba43063",
                  "parent_uuid": "640711b9-fcf2-4d97-b9f9-76f84eac7570",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4fb1d0e9-0572-4eb2-9080-6ac667c026ad",
              "parent_uuid": "6116fb7b-b4ad-4c60-b202-cf5cfc839f01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb1dddc9-3d73-4d89-8fba-113072c94020",
                  "parent_uuid": "4fb1d0e9-0572-4eb2-9080-6ac667c026ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b252e25-5ed4-4e0a-8d41-873b1a3bcf4b",
              "parent_uuid": "6116fb7b-b4ad-4c60-b202-cf5cfc839f01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e4b996d-82e4-4da6-a5bf-9bbfb0985e25",
                  "parent_uuid": "6b252e25-5ed4-4e0a-8d41-873b1a3bcf4b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1dd5346a-2339-455e-bf3a-315482dabedb",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e09ecc89-9403-4b8e-9b77-8a6400146360",
              "parent_uuid": "1dd5346a-2339-455e-bf3a-315482dabedb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
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
              "innerHtml": "\r\n                    <span>Spannung Transporriemen gross überprüfen:<br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "10468979-5036-4f3e-afd4-c64ac7ec3afc",
              "parent_uuid": "1dd5346a-2339-455e-bf3a-315482dabedb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "rowspan",
                  "3"
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
              "uuid": "4bd40c5d-8276-49fe-8e03-cebaa805730e",
              "parent_uuid": "1dd5346a-2339-455e-bf3a-315482dabedb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c80053d5-445d-4396-a524-b2625bb8f841",
                  "parent_uuid": "4bd40c5d-8276-49fe-8e03-cebaa805730e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "102649e2-18eb-4728-abff-bd31e462aa73",
              "parent_uuid": "1dd5346a-2339-455e-bf3a-315482dabedb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63383e2e-e91f-4598-9e89-c74033c80159",
                  "parent_uuid": "102649e2-18eb-4728-abff-bd31e462aa73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9364f7a-4972-4bee-be55-a3c0202ce7d5",
              "parent_uuid": "1dd5346a-2339-455e-bf3a-315482dabedb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9921ec5d-263a-430b-acb0-8faf4e2437d3",
                  "parent_uuid": "d9364f7a-4972-4bee-be55-a3c0202ce7d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "602b19ae-5abd-4a9d-88b6-ec220d14ca7b",
              "parent_uuid": "1dd5346a-2339-455e-bf3a-315482dabedb",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73a8a8e1-b7d5-4df2-a804-a9b8e1a9fd80",
                  "parent_uuid": "602b19ae-5abd-4a9d-88b6-ec220d14ca7b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c6805fd-bbfe-446f-b24e-55bee6c0c9e6",
              "parent_uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "18"
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bf249e0e-7a76-4847-8ec0-329de9c0c9d4",
              "parent_uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6f27ca4c-8cea-4881-87e0-c7d597e06b6a",
              "parent_uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e93bebfe-f773-42e1-ae44-a548240f9356",
              "parent_uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4143cb62-7413-41c0-8746-12d739dd230d",
                  "parent_uuid": "e93bebfe-f773-42e1-ae44-a548240f9356",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d718a2dc-330b-4c4f-aff1-6d200a18ae46",
              "parent_uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bc4c862-34b5-479b-916f-f6612551a50c",
                  "parent_uuid": "d718a2dc-330b-4c4f-aff1-6d200a18ae46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d9c92a8-3f3e-47c9-97a8-cdb3ae40dded",
              "parent_uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eed723cd-c1b7-40d3-97e1-ebc348428831",
                  "parent_uuid": "8d9c92a8-3f3e-47c9-97a8-cdb3ae40dded",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "566bce56-8c2f-4025-a6aa-d50b11caecb9",
              "parent_uuid": "a4104759-96f3-40ad-a1a3-a54c41b50784",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90fc51ca-ea36-4b1d-9c78-b2ae9e3a12c9",
                  "parent_uuid": "566bce56-8c2f-4025-a6aa-d50b11caecb9",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80ad766b-208b-471d-a87e-207a466a5366",
              "parent_uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "21"
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
              "innerHtml": "\r\n                    <span>-Die Distanz von Punkt zu Punkt sollte 102cm betragen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8db35196-10b0-402f-b2d7-f78d7814ee67",
              "parent_uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "innerHtml": "\r\n                    <span>&lt;102cm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7be69c6f-8f0a-4c85-a6bc-7b0eeee2ec38",
              "parent_uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1348c5f6-e91e-4df6-98ee-3436bae02ce7",
                  "parent_uuid": "7be69c6f-8f0a-4c85-a6bc-7b0eeee2ec38",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "width: 100%; display: block; box-sizing: border-box;"
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
              "uuid": "02e5baed-d557-4690-ab87-34d3ad0d8fa0",
              "parent_uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5e27c3b-92dd-424e-9f38-b878b9620eb0",
                  "parent_uuid": "02e5baed-d557-4690-ab87-34d3ad0d8fa0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b6e3a13-3b07-4abe-ba0c-af928dad8769",
              "parent_uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e672998-1e03-4cba-a927-affe3d6d839a",
                  "parent_uuid": "2b6e3a13-3b07-4abe-ba0c-af928dad8769",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "998875f1-67d0-4f12-b106-a01575938bc7",
              "parent_uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22db83b4-9109-4f6c-8684-be9fe0ffcb16",
                  "parent_uuid": "998875f1-67d0-4f12-b106-a01575938bc7",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "d256c0aa-5792-40b2-b4bf-421302ba6baa",
              "parent_uuid": "d0eb8421-dc98-40c3-a4f5-b1214d9878d9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21efff81-7ec6-4199-aa48-7b227c053b32",
                  "parent_uuid": "d256c0aa-5792-40b2-b4bf-421302ba6baa",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "25741a80-bf7e-47b4-bdff-52f25f8b61b4",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5055af0b-b4a0-4abe-b66e-6ef6a2e7ea5c",
              "parent_uuid": "25741a80-bf7e-47b4-bdff-52f25f8b61b4",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "798a65d2-082f-4918-b377-7fd4b28080c3",
              "parent_uuid": "25741a80-bf7e-47b4-bdff-52f25f8b61b4",
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
              "uuid": "691ea6f1-61ad-4606-9f62-d01d9cb1cde1",
              "parent_uuid": "25741a80-bf7e-47b4-bdff-52f25f8b61b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0a56a81-2298-4402-8fe2-b84481a8caca",
                  "parent_uuid": "691ea6f1-61ad-4606-9f62-d01d9cb1cde1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9b31a08-8820-47cb-95d4-ace8db421d5f",
              "parent_uuid": "25741a80-bf7e-47b4-bdff-52f25f8b61b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eecd4143-0bf0-4a3b-8367-866ff3804500",
                  "parent_uuid": "a9b31a08-8820-47cb-95d4-ace8db421d5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fb45b66-1485-4ed7-87d2-b41060f0dc2d",
              "parent_uuid": "25741a80-bf7e-47b4-bdff-52f25f8b61b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91047c00-bd6a-4a25-bf3e-dd30be8126a7",
                  "parent_uuid": "6fb45b66-1485-4ed7-87d2-b41060f0dc2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf7c8f00-ce30-476d-a1a5-d9adac5853bb",
              "parent_uuid": "25741a80-bf7e-47b4-bdff-52f25f8b61b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b30b142-b645-4817-aebe-096f08be46f7",
                  "parent_uuid": "cf7c8f00-ce30-476d-a1a5-d9adac5853bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "5fd5b415-8827-4918-8ed8-87abd09658ac",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b12dd17-5482-455d-8568-ec6862057f3b",
              "parent_uuid": "5fd5b415-8827-4918-8ed8-87abd09658ac",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Lichtschranken und Sensoren mit einem weichen Reinigungstuch.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8c206740-6bdd-431f-a380-fe4185e2b412",
              "parent_uuid": "5fd5b415-8827-4918-8ed8-87abd09658ac",
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
              "uuid": "6700d575-6b33-49e5-9db4-84b3c4e0d025",
              "parent_uuid": "5fd5b415-8827-4918-8ed8-87abd09658ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db8bdcb3-f7fe-4698-899a-4b279649649a",
                  "parent_uuid": "6700d575-6b33-49e5-9db4-84b3c4e0d025",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "364b8d62-83a9-43ab-b13d-f425e214cc68",
              "parent_uuid": "5fd5b415-8827-4918-8ed8-87abd09658ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2df7b765-eab0-4441-8cf0-1904d7967ce3",
                  "parent_uuid": "364b8d62-83a9-43ab-b13d-f425e214cc68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "724d6e74-180d-4e1f-8e79-b4a4214b1881",
              "parent_uuid": "5fd5b415-8827-4918-8ed8-87abd09658ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21ab52ea-2629-4d7c-bc3e-54b1eafad6d6",
                  "parent_uuid": "724d6e74-180d-4e1f-8e79-b4a4214b1881",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36a08ff8-b421-427e-b256-927ce9309e0e",
              "parent_uuid": "5fd5b415-8827-4918-8ed8-87abd09658ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36883d9b-4130-4d67-a348-8f76e995062d",
                  "parent_uuid": "36a08ff8-b421-427e-b256-927ce9309e0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "d7aa764e-18fc-4620-990f-ced8de38b0c6",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95090b3e-4b2b-46f2-a523-51aefb12eea1",
              "parent_uuid": "d7aa764e-18fc-4620-990f-ced8de38b0c6",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Beide Server PC-Filter überprüfen und reinigen oder austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1383d57f-5f48-4e96-99e3-d13bc0a04803",
              "parent_uuid": "d7aa764e-18fc-4620-990f-ced8de38b0c6",
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
              "uuid": "e46e46b1-855b-45c3-ba8e-f3fc4706b277",
              "parent_uuid": "d7aa764e-18fc-4620-990f-ced8de38b0c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ef53ab0-598a-4a4b-8563-fe77e41eeb5d",
                  "parent_uuid": "e46e46b1-855b-45c3-ba8e-f3fc4706b277",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcfed68e-a261-4328-ab79-822edc435470",
              "parent_uuid": "d7aa764e-18fc-4620-990f-ced8de38b0c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25962284-09d2-41bb-9df9-58cbcb9c7d58",
                  "parent_uuid": "fcfed68e-a261-4328-ab79-822edc435470",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9db6036a-8255-4154-9ce7-2396e8771a9a",
              "parent_uuid": "d7aa764e-18fc-4620-990f-ced8de38b0c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "964f62f3-231f-4494-a746-3ffa2c31dcf8",
                  "parent_uuid": "9db6036a-8255-4154-9ce7-2396e8771a9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02d356bf-cd89-46d9-b68b-7206e4874c64",
              "parent_uuid": "d7aa764e-18fc-4620-990f-ced8de38b0c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07eef86d-1d5b-4234-9eb7-40f67b12f0bf",
                  "parent_uuid": "02d356bf-cd89-46d9-b68b-7206e4874c64",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4eebbb11-1a9b-4599-b25f-cae4dff51a27",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61f7adc3-a84e-4126-afe1-716aa2009cc4",
              "parent_uuid": "4eebbb11-1a9b-4599-b25f-cae4dff51a27",
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
                  "52"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kühlaggregat reinigen<br>  -Nehmen Sie vorsichtig die Abdeckung des Kühlaggregats ab.<br>  -Reinigen Sie die Lamellen vorsichtig mit einem Staubsauger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7bdefc7f-eecf-4348-983b-54898ed66d00",
              "parent_uuid": "4eebbb11-1a9b-4599-b25f-cae4dff51a27",
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
              "uuid": "d61d9854-53f7-4271-a08e-a2eb349fb26b",
              "parent_uuid": "4eebbb11-1a9b-4599-b25f-cae4dff51a27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3d18276-35ce-4b33-b409-b75da4eea1fa",
                  "parent_uuid": "d61d9854-53f7-4271-a08e-a2eb349fb26b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3a1d208-8d2c-4a44-93f7-827c2410c5f2",
              "parent_uuid": "4eebbb11-1a9b-4599-b25f-cae4dff51a27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fee1992d-690e-4c33-b9c2-3ab4f7f66d5f",
                  "parent_uuid": "d3a1d208-8d2c-4a44-93f7-827c2410c5f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "324f8183-8f96-425e-993b-47d879172d40",
              "parent_uuid": "4eebbb11-1a9b-4599-b25f-cae4dff51a27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fd623f3-f5e6-4599-a0bd-3f2604f970cb",
                  "parent_uuid": "324f8183-8f96-425e-993b-47d879172d40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f26bd17-7fb3-453f-aeb9-f3dcd9e32d0b",
              "parent_uuid": "4eebbb11-1a9b-4599-b25f-cae4dff51a27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "867512c3-0fcb-4bf5-81dd-3b97138dee32",
                  "parent_uuid": "9f26bd17-7fb3-453f-aeb9-f3dcd9e32d0b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8af1f966-02e9-4ed5-9c5a-0cf6d1558352",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "21b7ee26-54eb-40aa-a788-9e7790db7379",
              "parent_uuid": "8af1f966-02e9-4ed5-9c5a-0cf6d1558352",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "7197df92-7df2-4f1c-91ba-8704e9099863",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "151ff6ae-ffd6-411d-bc88-cf2c3f865bf8",
              "parent_uuid": "7197df92-7df2-4f1c-91ba-8704e9099863",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Schwingplatte<br>  -Der Talkbelag der Schwingplatte wird mit einem Spachtel gelöst.<br>  -Anschliessend kann mit einem Reinigungstuch und Bremsreiniger der übrige Schmutz entfernt werden</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "138afd5c-8f4a-4331-a61f-b2eb590071f3",
              "parent_uuid": "7197df92-7df2-4f1c-91ba-8704e9099863",
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
              "uuid": "06c565fd-f8c6-41a1-aa17-5c009a5574ab",
              "parent_uuid": "7197df92-7df2-4f1c-91ba-8704e9099863",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "381d1d27-d6a2-4a1c-9cf2-2b354eb499a1",
                  "parent_uuid": "06c565fd-f8c6-41a1-aa17-5c009a5574ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f4d2167-92e8-491c-9839-d443abd6fd01",
              "parent_uuid": "7197df92-7df2-4f1c-91ba-8704e9099863",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b7358c1-9ba9-413f-806f-2e1a4bfde5ed",
                  "parent_uuid": "5f4d2167-92e8-491c-9839-d443abd6fd01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a253b0d2-9f4f-467c-a646-aecd0343fa4a",
              "parent_uuid": "7197df92-7df2-4f1c-91ba-8704e9099863",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bfd129f-701f-4b6f-953b-aa5dfc44eb1f",
                  "parent_uuid": "a253b0d2-9f4f-467c-a646-aecd0343fa4a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52b2fc2f-ea07-4080-b75e-f5b3af58ffa0",
              "parent_uuid": "7197df92-7df2-4f1c-91ba-8704e9099863",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "452299cc-8e3d-4a33-899b-e3e0ce087fe5",
                  "parent_uuid": "52b2fc2f-ea07-4080-b75e-f5b3af58ffa0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d775702-e7f1-458f-b57e-0c50f1ef684d",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63c44ce9-47eb-4800-a8fb-b6ca98d38842",
              "parent_uuid": "7d775702-e7f1-458f-b57e-0c50f1ef684d",
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
                  "21"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Prüfen Sie die Abscheider und Bürsten auf Verschleiß.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "47275f87-d93c-47bd-8e4a-60d97f7ec74b",
              "parent_uuid": "7d775702-e7f1-458f-b57e-0c50f1ef684d",
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
              "uuid": "bd7afe87-fd1c-4817-b5fe-f13322c8c547",
              "parent_uuid": "7d775702-e7f1-458f-b57e-0c50f1ef684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2655e0a7-6c7b-40b7-aa77-da6b25d66cb3",
                  "parent_uuid": "bd7afe87-fd1c-4817-b5fe-f13322c8c547",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53ab48b6-abd6-4df0-9350-dc74845d2d72",
              "parent_uuid": "7d775702-e7f1-458f-b57e-0c50f1ef684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e7aad26-d94e-4fa4-a7a3-f91e17ffa734",
                  "parent_uuid": "53ab48b6-abd6-4df0-9350-dc74845d2d72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8273c1a8-b7f9-4a66-9c34-4bb65417afbf",
              "parent_uuid": "7d775702-e7f1-458f-b57e-0c50f1ef684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b23eea2-4626-46c0-bb0f-62555ca7f704",
                  "parent_uuid": "8273c1a8-b7f9-4a66-9c34-4bb65417afbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79c83a78-1913-4836-86ab-fa24d2352fb9",
              "parent_uuid": "7d775702-e7f1-458f-b57e-0c50f1ef684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f6b86b2-1d93-42ad-b224-d9f64ec7ee32",
                  "parent_uuid": "79c83a78-1913-4836-86ab-fa24d2352fb9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "96228d6d-b6d4-4171-b301-7cf7e740d6df",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "adc08730-8b03-4f65-a855-b062b025b9b1",
              "parent_uuid": "96228d6d-b6d4-4171-b301-7cf7e740d6df",
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
                  "51"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Vision-Einheiten<br>  -Reinigen Sie die Oberfläche der Abdeckung vorsichtig mit dem Staubsauger und  mit einem Microphasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "51dcda09-3c59-457b-bee4-6894b05cb896",
              "parent_uuid": "96228d6d-b6d4-4171-b301-7cf7e740d6df",
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
              "uuid": "2959a26c-7e77-40a8-84c8-4458f9efc756",
              "parent_uuid": "96228d6d-b6d4-4171-b301-7cf7e740d6df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "254b96fd-90b8-4bcb-bd7d-ad8aa6df9688",
                  "parent_uuid": "2959a26c-7e77-40a8-84c8-4458f9efc756",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7487c0c4-5d2c-496c-afa8-6df30ba046ef",
              "parent_uuid": "96228d6d-b6d4-4171-b301-7cf7e740d6df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b2d0216-f7f3-47e5-9e5b-97370ae98dc5",
                  "parent_uuid": "7487c0c4-5d2c-496c-afa8-6df30ba046ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18ecd1c0-e035-4b9e-b54f-08d3245a2b3c",
              "parent_uuid": "96228d6d-b6d4-4171-b301-7cf7e740d6df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d30cce6-713b-4723-a1a0-74c8b0c3fddb",
                  "parent_uuid": "18ecd1c0-e035-4b9e-b54f-08d3245a2b3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6d5e95d-64d2-4ded-9847-91aadf4e14d4",
              "parent_uuid": "96228d6d-b6d4-4171-b301-7cf7e740d6df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5455f9ff-2a77-4146-8aeb-06cd0f44b85c",
                  "parent_uuid": "e6d5e95d-64d2-4ded-9847-91aadf4e14d4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "846e75a2-7292-4b50-9bec-d8312a366742",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6ece4f3-14af-459d-acb4-2e8cad4e534e",
              "parent_uuid": "846e75a2-7292-4b50-9bec-d8312a366742",
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
                  "86"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Vision-Linsen<br>  -Reinige die Oberfläche der Linse vorsichtig mit dem Staubsauger/Druckluftpistole und mit einem Microphasertuch.<br>  -Bei Flecken auf der Linse, muss ein Microphasertuch mit wenig Senorreiniger angewendet werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "46c6d52d-0e2a-4189-bcd9-3bbede99fe92",
              "parent_uuid": "846e75a2-7292-4b50-9bec-d8312a366742",
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
              "uuid": "8b4607c2-5276-4b1f-ad59-5cfa9a4c80b6",
              "parent_uuid": "846e75a2-7292-4b50-9bec-d8312a366742",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3349ac9e-f10a-4352-bcc7-21c0c923fca7",
                  "parent_uuid": "8b4607c2-5276-4b1f-ad59-5cfa9a4c80b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ce85d6e-a82a-4ca7-a4a0-442af24fec27",
              "parent_uuid": "846e75a2-7292-4b50-9bec-d8312a366742",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f2388c7-8dc3-4caa-a304-a44642e67c4e",
                  "parent_uuid": "9ce85d6e-a82a-4ca7-a4a0-442af24fec27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e647e269-7a07-4bc6-b5f9-fe011e6ff3d2",
              "parent_uuid": "846e75a2-7292-4b50-9bec-d8312a366742",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66ab90fa-e80f-4a70-b15c-36af2c41f603",
                  "parent_uuid": "e647e269-7a07-4bc6-b5f9-fe011e6ff3d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9ea6e62-ac34-490e-a853-78216ffe6bbd",
              "parent_uuid": "846e75a2-7292-4b50-9bec-d8312a366742",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52abe8ff-d4f8-4e8c-8364-e022e9125fa8",
                  "parent_uuid": "b9ea6e62-ac34-490e-a853-78216ffe6bbd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4d730a4f-75c1-4a64-935b-23102a6c0e41",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ef56475-aaf0-4364-8664-bafea4c3a3b5",
              "parent_uuid": "4d730a4f-75c1-4a64-935b-23102a6c0e41",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Speicherplatz<br>  -Überprüfe den Speicherplatz auf dem NAS, falls dieser überläuft können alte Daten gelöscht werden.<br>  -Überprüfen den Speicherplatz auf dem Lokalen Laufwerken, falls der überläuft können Logdateien gelöscht werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4572374a-0f61-4f5b-bca7-5fe333b30716",
              "parent_uuid": "4d730a4f-75c1-4a64-935b-23102a6c0e41",
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
              "uuid": "a5f9dae1-4765-4b52-8f47-ebfa5a1fa355",
              "parent_uuid": "4d730a4f-75c1-4a64-935b-23102a6c0e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f13a43f3-606a-4143-84f2-9fa8589c4b6f",
                  "parent_uuid": "a5f9dae1-4765-4b52-8f47-ebfa5a1fa355",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c509a1ac-80d4-4a13-bc79-813dd579597d",
              "parent_uuid": "4d730a4f-75c1-4a64-935b-23102a6c0e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe970e3c-adcf-4907-87aa-865c3227edec",
                  "parent_uuid": "c509a1ac-80d4-4a13-bc79-813dd579597d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b37fc46-4841-497c-948b-396af20f04e1",
              "parent_uuid": "4d730a4f-75c1-4a64-935b-23102a6c0e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69570432-b8aa-4681-93db-ad37850389aa",
                  "parent_uuid": "9b37fc46-4841-497c-948b-396af20f04e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "773fde0d-5e03-430b-9221-695c19367b52",
              "parent_uuid": "4d730a4f-75c1-4a64-935b-23102a6c0e41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50136085-f5b8-44c1-94f5-6a7f08716cce",
                  "parent_uuid": "773fde0d-5e03-430b-9221-695c19367b52",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c46938a-cf7b-4a76-bb22-a75844a2e88a",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2b3c9b5-492b-4d0a-9635-99617916322e",
              "parent_uuid": "4c46938a-cf7b-4a76-bb22-a75844a2e88a",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "4c84376f-5aa0-4248-bc7f-3cc649a2ae5f",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a86dfb2-09e9-41b9-a958-e57b6c4ae69e",
              "parent_uuid": "4c84376f-5aa0-4248-bc7f-3cc649a2ae5f",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "b757ebf1-c26a-45b0-8ce9-64f61dc3d2f9",
          "parent_uuid": "59154c8c-c5a9-4e65-a98c-d7714506f387",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b381fc3c-0c62-498d-a766-6fb95c348776",
              "parent_uuid": "b757ebf1-c26a-45b0-8ce9-64f61dc3d2f9",
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
                  "uuid": "cd240f53-aa63-4d5f-ab2c-c06ff9c0c35a",
                  "parent_uuid": "b381fc3c-0c62-498d-a766-6fb95c348776",
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
          "sort": 30,
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

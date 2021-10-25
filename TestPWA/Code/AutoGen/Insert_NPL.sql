
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
  "uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "3dba146e-08ea-4dcb-ad76-93d96a264d61",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "51c3c6dd-9ce3-4d86-b756-2ad364eee39a",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "55a38f90-f370-4c21-bcf1-5a4d3ebde056",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "ef712d1a-32be-43c3-a594-b1402fff0b8c",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "660ec162-0e77-48d2-85f9-aa59d1452224",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "24849746-d757-4cae-9547-b400c9844d73",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "a566a35d-1748-4d10-8538-da39e7924324",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
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
      "uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
      "parent_uuid": "6fa8a5ac-23fa-4e01-9735-8311d7c3fb62",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "0130f661-9cfa-4dd1-a87b-8fcd6280c7d4",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "c5f848cb-666f-4b84-a77e-0bbc5fe8fc06",
              "parent_uuid": "0130f661-9cfa-4dd1-a87b-8fcd6280c7d4",
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
              "uuid": "8f77b5c0-a2ce-473d-9e90-c3cac3a40e6f",
              "parent_uuid": "0130f661-9cfa-4dd1-a87b-8fcd6280c7d4",
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
              "uuid": "3bf0f167-4fcc-407a-96f7-d89ef4dc8a08",
              "parent_uuid": "0130f661-9cfa-4dd1-a87b-8fcd6280c7d4",
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
              "uuid": "826cd63f-8daa-457c-b859-38221fbc7d3d",
              "parent_uuid": "0130f661-9cfa-4dd1-a87b-8fcd6280c7d4",
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
          "uuid": "978d7829-ee9f-4478-abd9-cf2286841d6e",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "cc386b2f-2bf6-426e-839f-d0dc7dfef8f8",
              "parent_uuid": "978d7829-ee9f-4478-abd9-cf2286841d6e",
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
              "uuid": "d9f74625-d37e-445b-9f63-cb15170e3932",
              "parent_uuid": "978d7829-ee9f-4478-abd9-cf2286841d6e",
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
              "uuid": "e07e2a42-50e7-44bf-b3e4-23bde4584c83",
              "parent_uuid": "978d7829-ee9f-4478-abd9-cf2286841d6e",
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
              "uuid": "0829de5a-98e8-4772-aa32-303836e24135",
              "parent_uuid": "978d7829-ee9f-4478-abd9-cf2286841d6e",
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
          "uuid": "09ad6e5e-4241-4bdf-a93b-7346f27b310f",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9df68be3-3376-4a0e-92e0-46f65bcfe30c",
              "parent_uuid": "09ad6e5e-4241-4bdf-a93b-7346f27b310f",
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
              "uuid": "93558669-c7bc-4476-9a9d-103d9868d144",
              "parent_uuid": "09ad6e5e-4241-4bdf-a93b-7346f27b310f",
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
              "uuid": "89ce3a30-35c6-49a4-a11b-66440260bc9e",
              "parent_uuid": "09ad6e5e-4241-4bdf-a93b-7346f27b310f",
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
              "uuid": "3104a167-3385-4c3c-a03d-8912e5405893",
              "parent_uuid": "09ad6e5e-4241-4bdf-a93b-7346f27b310f",
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
              "uuid": "d1fb5b22-1cbc-4bd9-965b-15505430210f",
              "parent_uuid": "09ad6e5e-4241-4bdf-a93b-7346f27b310f",
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
              "uuid": "723da91b-de7f-43b7-80b8-ec16fa15c7ef",
              "parent_uuid": "09ad6e5e-4241-4bdf-a93b-7346f27b310f",
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
          "uuid": "08e1826a-7917-40fd-bf53-61ecebd2a601",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "49e8b93d-9446-45ce-91ab-451093ce4c6e",
              "parent_uuid": "08e1826a-7917-40fd-bf53-61ecebd2a601",
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
          "uuid": "962c4ca6-33c2-41c1-9a28-3591a3800a51",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eed9b990-359b-4d0d-9614-0e91a3986742",
              "parent_uuid": "962c4ca6-33c2-41c1-9a28-3591a3800a51",
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
              "uuid": "badaa484-dc8e-4bda-a042-549f26cfc670",
              "parent_uuid": "962c4ca6-33c2-41c1-9a28-3591a3800a51",
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
              "uuid": "df2ac75e-a740-4d86-9d56-b0f7f0c6d517",
              "parent_uuid": "962c4ca6-33c2-41c1-9a28-3591a3800a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c89efdd9-59d2-4834-8bc7-03dac8ac8a15",
                  "parent_uuid": "df2ac75e-a740-4d86-9d56-b0f7f0c6d517",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27c98149-ef69-4918-b32b-643394103c62",
              "parent_uuid": "962c4ca6-33c2-41c1-9a28-3591a3800a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e01ca159-46f3-4a65-9c2d-054b3c6b7b87",
                  "parent_uuid": "27c98149-ef69-4918-b32b-643394103c62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0381b527-3713-4859-aa5b-e5a7ee2a1835",
              "parent_uuid": "962c4ca6-33c2-41c1-9a28-3591a3800a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ca93bb3-12d3-4576-9675-0d292d42afc4",
                  "parent_uuid": "0381b527-3713-4859-aa5b-e5a7ee2a1835",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db572fa7-0963-4297-81dd-c6e0e52cfd29",
              "parent_uuid": "962c4ca6-33c2-41c1-9a28-3591a3800a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2eb914fb-c8b4-4a28-a932-c23f2d4ad92a",
                  "parent_uuid": "db572fa7-0963-4297-81dd-c6e0e52cfd29",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ee79fd53-0028-41d1-820c-674011c577ca",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42b6a12f-b7f2-4ea1-bfd0-b49c19a44d2e",
              "parent_uuid": "ee79fd53-0028-41d1-820c-674011c577ca",
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
              "uuid": "bb6c7461-f758-4d8c-9476-2f85986fc0cd",
              "parent_uuid": "ee79fd53-0028-41d1-820c-674011c577ca",
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
              "uuid": "35bcca75-c9bf-4e33-b9e9-5ac33bf05a8b",
              "parent_uuid": "ee79fd53-0028-41d1-820c-674011c577ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7f5abc4-e47b-4d97-8b5a-6eb4f313b6f7",
                  "parent_uuid": "35bcca75-c9bf-4e33-b9e9-5ac33bf05a8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a82a8ae-5fc2-4a21-80fa-6af39546b7e9",
              "parent_uuid": "ee79fd53-0028-41d1-820c-674011c577ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a8b48a6-b6d7-433d-8218-5970cfee3deb",
                  "parent_uuid": "3a82a8ae-5fc2-4a21-80fa-6af39546b7e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b559c8e7-55c4-4cc6-9c2c-9d9449426290",
              "parent_uuid": "ee79fd53-0028-41d1-820c-674011c577ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30a37503-5149-4f7b-835c-dc3f1b301ba6",
                  "parent_uuid": "b559c8e7-55c4-4cc6-9c2c-9d9449426290",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa045a59-34cc-4db3-8e67-d9638d18728a",
              "parent_uuid": "ee79fd53-0028-41d1-820c-674011c577ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7192761-1d2b-4845-addc-f014acb91a5a",
                  "parent_uuid": "fa045a59-34cc-4db3-8e67-d9638d18728a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6196a80f-058d-432a-9dd8-0a6f24e59c10",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f77c2e5-a973-42a1-8b3e-d086b87ec4ab",
              "parent_uuid": "6196a80f-058d-432a-9dd8-0a6f24e59c10",
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
              "uuid": "9b4fc3c0-bb87-4ffb-9096-33144754dfbe",
              "parent_uuid": "6196a80f-058d-432a-9dd8-0a6f24e59c10",
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
              "uuid": "2a8f4b1f-39a6-4f14-a67f-272cb7be6d89",
              "parent_uuid": "6196a80f-058d-432a-9dd8-0a6f24e59c10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72d105ba-05d9-4ad3-b656-834d5ae0ef5d",
                  "parent_uuid": "2a8f4b1f-39a6-4f14-a67f-272cb7be6d89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "162bfdb8-2999-4ed7-953f-fe612ef6f63f",
              "parent_uuid": "6196a80f-058d-432a-9dd8-0a6f24e59c10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd3d3012-d79d-4a1c-9581-53427c538f2d",
                  "parent_uuid": "162bfdb8-2999-4ed7-953f-fe612ef6f63f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a1d9212-9ca1-4b26-95fa-c3eb1ff5442a",
              "parent_uuid": "6196a80f-058d-432a-9dd8-0a6f24e59c10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2270112b-4dcf-46ba-b503-f225dc7ff087",
                  "parent_uuid": "9a1d9212-9ca1-4b26-95fa-c3eb1ff5442a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a5e116d-0f49-41df-abf3-2a3ddce297a7",
              "parent_uuid": "6196a80f-058d-432a-9dd8-0a6f24e59c10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15220726-add1-4f7c-9b6f-eedc6977b170",
                  "parent_uuid": "6a5e116d-0f49-41df-abf3-2a3ddce297a7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0826b6b0-ad8d-4d92-8499-f882e35af85b",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88a462e0-869a-4cae-ba7d-668f3f163959",
              "parent_uuid": "0826b6b0-ad8d-4d92-8499-f882e35af85b",
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
              "uuid": "2c0e1299-d5fa-4855-912a-b217303f1267",
              "parent_uuid": "0826b6b0-ad8d-4d92-8499-f882e35af85b",
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
              "uuid": "076c5983-ac53-4d15-bca4-9179f64481de",
              "parent_uuid": "0826b6b0-ad8d-4d92-8499-f882e35af85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "022fad36-7958-42f3-a7a8-bbff2d3fcaea",
                  "parent_uuid": "076c5983-ac53-4d15-bca4-9179f64481de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7581e672-dc77-4541-bc2d-7aa7c8c4d57c",
              "parent_uuid": "0826b6b0-ad8d-4d92-8499-f882e35af85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e0707ab-9655-441d-b4f6-d119363303cf",
                  "parent_uuid": "7581e672-dc77-4541-bc2d-7aa7c8c4d57c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a28a6697-22f6-480b-8f1d-b89617708d75",
              "parent_uuid": "0826b6b0-ad8d-4d92-8499-f882e35af85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61c9bae1-457f-41af-85dc-e1b4093cfdab",
                  "parent_uuid": "a28a6697-22f6-480b-8f1d-b89617708d75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f8a9e09-dbab-4e63-be1f-67eb6c29bc10",
              "parent_uuid": "0826b6b0-ad8d-4d92-8499-f882e35af85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6090d76a-6562-44eb-bdae-9b6db3040c37",
                  "parent_uuid": "0f8a9e09-dbab-4e63-be1f-67eb6c29bc10",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "71c68a76-0f3a-43cb-9851-16e8c4258375",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51762d90-28ab-4c0f-a234-a63ee5c92242",
              "parent_uuid": "71c68a76-0f3a-43cb-9851-16e8c4258375",
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
              "uuid": "60cf8d99-df61-4e60-87fa-2f15da17f683",
              "parent_uuid": "71c68a76-0f3a-43cb-9851-16e8c4258375",
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
              "uuid": "9e64c743-7fc7-4726-87da-52d323b660c2",
              "parent_uuid": "71c68a76-0f3a-43cb-9851-16e8c4258375",
              "tagName": "td",
              "properties": [
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
                  "uuid": "70f54263-71e4-401e-9054-431eabe0473b",
                  "parent_uuid": "9e64c743-7fc7-4726-87da-52d323b660c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f421e35f-1796-4fdd-8459-342da87238be",
              "parent_uuid": "71c68a76-0f3a-43cb-9851-16e8c4258375",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04ff46cb-d115-4ef8-a3ac-ae070ebbbc42",
                  "parent_uuid": "f421e35f-1796-4fdd-8459-342da87238be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80586f4d-5e7c-4056-8d13-239d5d8472fe",
              "parent_uuid": "71c68a76-0f3a-43cb-9851-16e8c4258375",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1798e386-28a9-4700-be59-9f86977a5ce8",
                  "parent_uuid": "80586f4d-5e7c-4056-8d13-239d5d8472fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67ef3127-7bb6-4791-b44a-f1591dbb788e",
              "parent_uuid": "71c68a76-0f3a-43cb-9851-16e8c4258375",
              "tagName": "td",
              "properties": [
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
                  "uuid": "80d20554-00fe-4131-b263-0aeaed85d8a7",
                  "parent_uuid": "67ef3127-7bb6-4791-b44a-f1591dbb788e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "639b9af8-fd73-466c-bbe3-adb3fe0f7e49",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8208c19-8389-40d2-a547-fc32ef252dc7",
              "parent_uuid": "639b9af8-fd73-466c-bbe3-adb3fe0f7e49",
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
              "uuid": "34dfd275-66e3-414c-8554-fb4497a08e08",
              "parent_uuid": "639b9af8-fd73-466c-bbe3-adb3fe0f7e49",
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
              "uuid": "d23a3c78-a10f-452f-9fec-54ae01836bb0",
              "parent_uuid": "639b9af8-fd73-466c-bbe3-adb3fe0f7e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2376a52e-1898-4a3f-93bd-d70f4668de60",
                  "parent_uuid": "d23a3c78-a10f-452f-9fec-54ae01836bb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b7c33fd-6c07-4c98-a4ce-2fd0910bfde8",
              "parent_uuid": "639b9af8-fd73-466c-bbe3-adb3fe0f7e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbe838e6-f2de-4cc0-97be-004233e9926c",
                  "parent_uuid": "6b7c33fd-6c07-4c98-a4ce-2fd0910bfde8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3aef3e46-43a3-4bd6-9c89-9af1ceef65fc",
              "parent_uuid": "639b9af8-fd73-466c-bbe3-adb3fe0f7e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2d7240e-0431-4063-a54c-cd06b10cb144",
                  "parent_uuid": "3aef3e46-43a3-4bd6-9c89-9af1ceef65fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bafb6a47-6bd6-4396-9218-54afcb2beb67",
              "parent_uuid": "639b9af8-fd73-466c-bbe3-adb3fe0f7e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a827c91-09ff-40c0-a567-ece032b39c6d",
                  "parent_uuid": "bafb6a47-6bd6-4396-9218-54afcb2beb67",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "45ccab1e-356b-4634-b874-bb48df873201",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "918adc3e-5462-467b-9eb0-db5d05df76ef",
              "parent_uuid": "45ccab1e-356b-4634-b874-bb48df873201",
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
              "uuid": "ae785349-cf5d-49fe-a79c-f6b777d28b3f",
              "parent_uuid": "45ccab1e-356b-4634-b874-bb48df873201",
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
              "uuid": "498b1e80-2d1c-41ae-8a8e-baf87339f2b4",
              "parent_uuid": "45ccab1e-356b-4634-b874-bb48df873201",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c76ab5c-8abb-47c0-9264-2141d09d0e81",
                  "parent_uuid": "498b1e80-2d1c-41ae-8a8e-baf87339f2b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8cd0d90-8656-4a6f-a78e-5c6a57d3c29f",
              "parent_uuid": "45ccab1e-356b-4634-b874-bb48df873201",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64a2c0df-6a0f-4bbe-9870-a0ad07576555",
                  "parent_uuid": "a8cd0d90-8656-4a6f-a78e-5c6a57d3c29f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99cce252-18e7-4a8b-872b-63cf86fcd32d",
              "parent_uuid": "45ccab1e-356b-4634-b874-bb48df873201",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73b83b8e-69de-42fc-a4ae-3f8fef2e3c0d",
                  "parent_uuid": "99cce252-18e7-4a8b-872b-63cf86fcd32d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "224b0247-eb54-4746-b2ce-7834668d646c",
              "parent_uuid": "45ccab1e-356b-4634-b874-bb48df873201",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee82afd5-b41b-4b01-8fa4-7be46cff8e64",
                  "parent_uuid": "224b0247-eb54-4746-b2ce-7834668d646c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cfa45334-9579-4f7a-b8c1-92d30607d843",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40f2b41b-8752-4221-9c84-50075e4f68d2",
              "parent_uuid": "cfa45334-9579-4f7a-b8c1-92d30607d843",
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
              "uuid": "33739ca6-7a0a-46ff-90f5-aec4e5fb659f",
              "parent_uuid": "cfa45334-9579-4f7a-b8c1-92d30607d843",
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
              "uuid": "193c49cd-f9e8-4ff2-a670-d50111263673",
              "parent_uuid": "cfa45334-9579-4f7a-b8c1-92d30607d843",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59d8d31c-7733-4ce4-8833-479c09e033ca",
                  "parent_uuid": "193c49cd-f9e8-4ff2-a670-d50111263673",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3f1b34f-4b14-45c3-bc3a-df4c64dfb6c9",
              "parent_uuid": "cfa45334-9579-4f7a-b8c1-92d30607d843",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8fc8320-3083-4242-9b72-4906e5c0646a",
                  "parent_uuid": "c3f1b34f-4b14-45c3-bc3a-df4c64dfb6c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "596d1a5a-f9b6-42be-b4ba-a3b2be184550",
              "parent_uuid": "cfa45334-9579-4f7a-b8c1-92d30607d843",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25c8dbc8-bff1-4f7d-b7a3-b1603510db63",
                  "parent_uuid": "596d1a5a-f9b6-42be-b4ba-a3b2be184550",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b4ce1b7-2f5c-42fc-a5ea-9478542e8608",
              "parent_uuid": "cfa45334-9579-4f7a-b8c1-92d30607d843",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f839901-3691-4405-912b-104da11262cb",
                  "parent_uuid": "1b4ce1b7-2f5c-42fc-a5ea-9478542e8608",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "392b99a0-1710-4ed0-b5c1-a30e520cd560",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9de56887-b3d0-40b0-99f3-7ed097c506ee",
              "parent_uuid": "392b99a0-1710-4ed0-b5c1-a30e520cd560",
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
              "uuid": "a06e2b89-dbb5-4bd9-bbaa-2e8a3ae85510",
              "parent_uuid": "392b99a0-1710-4ed0-b5c1-a30e520cd560",
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
              "uuid": "e185a8e4-1b3d-4d0f-aa00-750711d12c7d",
              "parent_uuid": "392b99a0-1710-4ed0-b5c1-a30e520cd560",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e96f99dd-1149-4eca-b748-ac211abfdbca",
                  "parent_uuid": "e185a8e4-1b3d-4d0f-aa00-750711d12c7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a144b97d-6b1e-4d6d-b71d-44330e7222fc",
              "parent_uuid": "392b99a0-1710-4ed0-b5c1-a30e520cd560",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7b49b5b-ca7f-4f9d-b7ee-4c0905fdc2cd",
                  "parent_uuid": "a144b97d-6b1e-4d6d-b71d-44330e7222fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c345a33b-0b42-4444-9d33-e713c4c880d3",
              "parent_uuid": "392b99a0-1710-4ed0-b5c1-a30e520cd560",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ed52bd4-d300-4e3c-8927-0d39a32b454c",
                  "parent_uuid": "c345a33b-0b42-4444-9d33-e713c4c880d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10af673c-1d73-4885-98de-716a871fb9e6",
              "parent_uuid": "392b99a0-1710-4ed0-b5c1-a30e520cd560",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a1221f6-4b4c-4450-81dd-bb8dfcc4e3d4",
                  "parent_uuid": "10af673c-1d73-4885-98de-716a871fb9e6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38689510-fd5d-4c3c-99bb-2877f81ded6a",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a32359a9-62af-4438-bcfd-f17e58eee711",
              "parent_uuid": "38689510-fd5d-4c3c-99bb-2877f81ded6a",
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
              "uuid": "4cc45fb6-111c-4405-a177-bba518c0a72e",
              "parent_uuid": "38689510-fd5d-4c3c-99bb-2877f81ded6a",
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
              "uuid": "2624d254-5ea3-4404-a8b3-6eae2bc369cb",
              "parent_uuid": "38689510-fd5d-4c3c-99bb-2877f81ded6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df576fa1-3e28-4d55-9aca-f42f894af91e",
                  "parent_uuid": "2624d254-5ea3-4404-a8b3-6eae2bc369cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6099aa5-2fa6-492a-8dec-f9c12c251991",
              "parent_uuid": "38689510-fd5d-4c3c-99bb-2877f81ded6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04bb3a48-166c-47e9-82cb-e499cf1aba76",
                  "parent_uuid": "a6099aa5-2fa6-492a-8dec-f9c12c251991",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea0e6a42-ac62-443b-bb5b-b57c2e967fc9",
              "parent_uuid": "38689510-fd5d-4c3c-99bb-2877f81ded6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f426f924-26f4-4dd7-a961-4a1824b5fcf5",
                  "parent_uuid": "ea0e6a42-ac62-443b-bb5b-b57c2e967fc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78c07332-b97f-4271-bf6e-0bfab6e35f48",
              "parent_uuid": "38689510-fd5d-4c3c-99bb-2877f81ded6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed782183-6d50-4766-9e8b-faee5beab986",
                  "parent_uuid": "78c07332-b97f-4271-bf6e-0bfab6e35f48",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0e61da99-6001-4294-a669-8c03e5244019",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e390a750-56b1-445c-b33b-9dcd76c85927",
              "parent_uuid": "0e61da99-6001-4294-a669-8c03e5244019",
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
              "uuid": "ea9d2062-60c8-4d99-97b0-b677e45ec075",
              "parent_uuid": "0e61da99-6001-4294-a669-8c03e5244019",
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
              "uuid": "1e19d463-d7ca-4d9d-9ac0-5a7f75e94391",
              "parent_uuid": "0e61da99-6001-4294-a669-8c03e5244019",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbd441a8-fef9-4b39-b83b-6ad2c5b88e4e",
                  "parent_uuid": "1e19d463-d7ca-4d9d-9ac0-5a7f75e94391",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28a3002a-afab-47e8-a78a-15c8757db6b3",
              "parent_uuid": "0e61da99-6001-4294-a669-8c03e5244019",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5fd7c63-c4cc-4e28-a957-1ad1d9fcbb30",
                  "parent_uuid": "28a3002a-afab-47e8-a78a-15c8757db6b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3715070-f134-4197-b6a6-95b968666fc5",
              "parent_uuid": "0e61da99-6001-4294-a669-8c03e5244019",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea835072-bb1d-46df-8fc0-7e5d6a89d3ae",
                  "parent_uuid": "a3715070-f134-4197-b6a6-95b968666fc5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1fd25019-2364-4f64-8589-20057bfd254c",
              "parent_uuid": "0e61da99-6001-4294-a669-8c03e5244019",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06cee866-0eac-4922-9f65-625e21c77454",
                  "parent_uuid": "1fd25019-2364-4f64-8589-20057bfd254c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c9b778ec-b05e-454c-afd7-df42fa1fad2d",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96ef6d17-387d-4003-abb9-20eba146f10b",
              "parent_uuid": "c9b778ec-b05e-454c-afd7-df42fa1fad2d",
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
              "uuid": "7ea5e90e-255b-4fcf-b8ce-669073e2a00c",
              "parent_uuid": "c9b778ec-b05e-454c-afd7-df42fa1fad2d",
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
              "uuid": "732a7bc1-a634-4c29-a6a4-bd22b584ff1a",
              "parent_uuid": "c9b778ec-b05e-454c-afd7-df42fa1fad2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f6f7ec5-c0fc-47a5-910f-bc4d7e2d4e68",
                  "parent_uuid": "732a7bc1-a634-4c29-a6a4-bd22b584ff1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07b71101-c431-4fab-8878-644f39877c00",
              "parent_uuid": "c9b778ec-b05e-454c-afd7-df42fa1fad2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07e33705-d3ff-433b-8c3d-df65e063f0c7",
                  "parent_uuid": "07b71101-c431-4fab-8878-644f39877c00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c0a91d2-4a1c-4201-863c-8d1c8d6caf22",
              "parent_uuid": "c9b778ec-b05e-454c-afd7-df42fa1fad2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f466218b-a158-4979-a3a6-30546929a5e5",
                  "parent_uuid": "0c0a91d2-4a1c-4201-863c-8d1c8d6caf22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cbbe167-a54f-4e01-a220-5261844afbd6",
              "parent_uuid": "c9b778ec-b05e-454c-afd7-df42fa1fad2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec9b71b3-3036-4990-be3c-b1a77fb6cb02",
                  "parent_uuid": "4cbbe167-a54f-4e01-a220-5261844afbd6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "466619ef-d0d1-4f21-a79d-159ca66475d0",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f7c1ef3-5263-4a8e-b732-5b8af409a10f",
              "parent_uuid": "466619ef-d0d1-4f21-a79d-159ca66475d0",
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
              "innerHtml": "\r\n                    <span><b>Zustand und Funktion an EBG/Shuttle 01 - 13</b><br>- Sensoren, Distanzen<br>- Laufräder für Längs- und Querfahrwerk, Seitenführungsrad (Lagerung, Laufruhe)<br>- Teleskoparme, Antriebkette<br>- Drehgeber, Induktivgeber<br>- Gassenfahrt, Quergassenfahrt, Behälterentnahme, Behältereinlagerung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0cf64ded-20a7-4a19-8fef-8e7d9b47fe53",
              "parent_uuid": "466619ef-d0d1-4f21-a79d-159ca66475d0",
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
              "uuid": "e6baacc1-f053-46a1-a7ca-d9d33ffd24bb",
              "parent_uuid": "466619ef-d0d1-4f21-a79d-159ca66475d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fb00eb9-3a89-4da0-bbfb-0446762a5ac1",
                  "parent_uuid": "e6baacc1-f053-46a1-a7ca-d9d33ffd24bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f347ce9-40c0-401e-9e92-a59a00a7c1b2",
              "parent_uuid": "466619ef-d0d1-4f21-a79d-159ca66475d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "582d8f0d-68d0-478d-be68-3d2aa4e98fdf",
                  "parent_uuid": "9f347ce9-40c0-401e-9e92-a59a00a7c1b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "118a7a15-2f6e-494b-a2a6-696f9f1014ac",
              "parent_uuid": "466619ef-d0d1-4f21-a79d-159ca66475d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f11f4238-1242-4f35-8bd1-985ef1f782ca",
                  "parent_uuid": "118a7a15-2f6e-494b-a2a6-696f9f1014ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eff52874-6f48-4413-9dc2-9c875c2ae1b8",
              "parent_uuid": "466619ef-d0d1-4f21-a79d-159ca66475d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ea4dcc0-61d6-4d76-b49f-8f77295f8243",
                  "parent_uuid": "eff52874-6f48-4413-9dc2-9c875c2ae1b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6048a80-0f0b-48da-ac79-9232e26359c4",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65e90633-26b1-4974-9e67-d8d78f6f0d42",
              "parent_uuid": "e6048a80-0f0b-48da-ac79-9232e26359c4",
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Schutzvorrichtung zu den Gassenbereichen<br>- Knapp-Lock<br>- Not-Halt Taster<br>- Schutzzaun, Schutzabdeckung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cfd7bff3-7746-4a6f-8099-ace0f25a5aa7",
              "parent_uuid": "e6048a80-0f0b-48da-ac79-9232e26359c4",
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
              "uuid": "38ec36c1-a04c-4c1a-a2a6-cbcf6908f14e",
              "parent_uuid": "e6048a80-0f0b-48da-ac79-9232e26359c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84a027e5-9c1d-427b-9505-c6aa484cff0a",
                  "parent_uuid": "38ec36c1-a04c-4c1a-a2a6-cbcf6908f14e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73227aff-897b-4c9c-a10a-e315214c7b9f",
              "parent_uuid": "e6048a80-0f0b-48da-ac79-9232e26359c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b688d6f-6846-4529-b61a-06ec4bd4c8c7",
                  "parent_uuid": "73227aff-897b-4c9c-a10a-e315214c7b9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "129d7ee1-5a8e-4e3e-8cd2-fe07f9a840f5",
              "parent_uuid": "e6048a80-0f0b-48da-ac79-9232e26359c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b53962d1-2643-47cb-80a1-a56d8eb211ae",
                  "parent_uuid": "129d7ee1-5a8e-4e3e-8cd2-fe07f9a840f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5c0924d-4e89-4485-8cba-40d9c52ea766",
              "parent_uuid": "e6048a80-0f0b-48da-ac79-9232e26359c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7fe0602-4cd3-444b-9207-65e59446a551",
                  "parent_uuid": "a5c0924d-4e89-4485-8cba-40d9c52ea766",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5320bd18-2cb5-4cbe-b8c9-cdb5f9189890",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "6c4e6838-92ab-49ea-91c1-a173d9e6f865",
              "parent_uuid": "5320bd18-2cb5-4cbe-b8c9-cdb5f9189890",
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
          "uuid": "00fabf82-0119-4ce5-9f27-57563e332846",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ab48204-7bcf-4f7b-9b4b-e9c394b848f2",
              "parent_uuid": "00fabf82-0119-4ce5-9f27-57563e332846",
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
          "uuid": "3d3f183b-0f78-4d23-b6cc-4fe5f3b224e7",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "deb114a4-0b8b-4e13-96f4-eebdf5be738e",
              "parent_uuid": "3d3f183b-0f78-4d23-b6cc-4fe5f3b224e7",
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
                  "uuid": "46a13ba9-5da3-4247-bc8f-6ef88dfef891",
                  "parent_uuid": "deb114a4-0b8b-4e13-96f4-eebdf5be738e",
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
          "uuid": "fde2b9e9-124d-44fc-9259-3cc6883e4820",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d5e8f26-d6f7-4f07-b0d7-c319d4f7184c",
              "parent_uuid": "fde2b9e9-124d-44fc-9259-3cc6883e4820",
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
          "uuid": "149b83cf-80bd-4bc5-842e-5eae14391e2b",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a9daff4b-8e9b-489d-8f92-2cdf0f04df81",
              "parent_uuid": "149b83cf-80bd-4bc5-842e-5eae14391e2b",
              "tagName": "td",
              "properties": [
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
          "uuid": "a14b0abe-1868-426c-9b9a-1b10049d62ef",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28611cfb-6282-49f0-b585-8c1d66b9f4e8",
              "parent_uuid": "a14b0abe-1868-426c-9b9a-1b10049d62ef",
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
              "uuid": "51c361c8-f5fa-42cd-a4a3-8c002201034e",
              "parent_uuid": "a14b0abe-1868-426c-9b9a-1b10049d62ef",
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
              "uuid": "9fd3f7b2-ad47-4cec-b242-2e8de1008eb4",
              "parent_uuid": "a14b0abe-1868-426c-9b9a-1b10049d62ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5ebcd52-1411-4df7-bcc8-1e9a121f2137",
                  "parent_uuid": "9fd3f7b2-ad47-4cec-b242-2e8de1008eb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "316f5df1-5bf2-4105-8f30-a7649ee149a4",
              "parent_uuid": "a14b0abe-1868-426c-9b9a-1b10049d62ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acb4598c-5d33-43b0-a169-f2f35016f036",
                  "parent_uuid": "316f5df1-5bf2-4105-8f30-a7649ee149a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "babade82-7528-494a-a3d2-a5c0abf9c108",
              "parent_uuid": "a14b0abe-1868-426c-9b9a-1b10049d62ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9aefe9fc-30d9-4452-86a9-f4c8cda8df60",
                  "parent_uuid": "babade82-7528-494a-a3d2-a5c0abf9c108",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5fe24be0-7da9-4a73-b3f9-43b8299233f1",
              "parent_uuid": "a14b0abe-1868-426c-9b9a-1b10049d62ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea50645c-1e20-4233-b959-893231d08c11",
                  "parent_uuid": "5fe24be0-7da9-4a73-b3f9-43b8299233f1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7bd2b29-1965-4dbc-a9c2-7ac6e95a1e23",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81f22226-5c53-4b74-ba7e-86f5aede784c",
              "parent_uuid": "a7bd2b29-1965-4dbc-a9c2-7ac6e95a1e23",
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
              "uuid": "f0260c01-3536-4a18-ab3c-e7f0e60460fc",
              "parent_uuid": "a7bd2b29-1965-4dbc-a9c2-7ac6e95a1e23",
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
              "uuid": "c1e71b67-f698-45c2-afca-b405159f40f9",
              "parent_uuid": "a7bd2b29-1965-4dbc-a9c2-7ac6e95a1e23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8e25277-3fee-4e23-864d-50ac9235f7e9",
                  "parent_uuid": "c1e71b67-f698-45c2-afca-b405159f40f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1718d9f-fbb2-44d4-bfed-6ba0d0aba05a",
              "parent_uuid": "a7bd2b29-1965-4dbc-a9c2-7ac6e95a1e23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95974f8f-1fc7-445e-a0d9-a77db4ae4555",
                  "parent_uuid": "a1718d9f-fbb2-44d4-bfed-6ba0d0aba05a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b212f93-3f02-4372-9d3c-1b8d5e17bd4c",
              "parent_uuid": "a7bd2b29-1965-4dbc-a9c2-7ac6e95a1e23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee53ce65-ba4a-4dae-b3b8-98383ba6d2e9",
                  "parent_uuid": "0b212f93-3f02-4372-9d3c-1b8d5e17bd4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b5c7b87-5031-4bf2-af73-30c92616528c",
              "parent_uuid": "a7bd2b29-1965-4dbc-a9c2-7ac6e95a1e23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1eb37d58-ae3b-4499-8923-aa5076ebe0fe",
                  "parent_uuid": "2b5c7b87-5031-4bf2-af73-30c92616528c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3870a3a0-43cd-4fb0-abb9-77186d80b864",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "993acdba-b983-45fd-b1b9-8e0033ecda3f",
              "parent_uuid": "3870a3a0-43cd-4fb0-abb9-77186d80b864",
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
              "uuid": "0a956d4f-a531-4a96-b73b-ea2d5fe3993e",
              "parent_uuid": "3870a3a0-43cd-4fb0-abb9-77186d80b864",
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
              "uuid": "75dea1de-6739-484c-8dd1-5a1bcd766ac1",
              "parent_uuid": "3870a3a0-43cd-4fb0-abb9-77186d80b864",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbb3ba9d-3baf-431c-b626-fa2ead5e8514",
                  "parent_uuid": "75dea1de-6739-484c-8dd1-5a1bcd766ac1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a67b81d-7bed-4798-ac9c-cce5d539f02b",
              "parent_uuid": "3870a3a0-43cd-4fb0-abb9-77186d80b864",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ecf088e-0545-497f-b203-a32a48a20dca",
                  "parent_uuid": "8a67b81d-7bed-4798-ac9c-cce5d539f02b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d53e2b8b-b596-4068-80fe-84b82fbeae82",
              "parent_uuid": "3870a3a0-43cd-4fb0-abb9-77186d80b864",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1e0cf90-fb00-430b-9290-428d291f5efa",
                  "parent_uuid": "d53e2b8b-b596-4068-80fe-84b82fbeae82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58af9528-1030-417d-b773-5f70b800a940",
              "parent_uuid": "3870a3a0-43cd-4fb0-abb9-77186d80b864",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42414a0c-eccb-4067-ba3e-4fa209a385bb",
                  "parent_uuid": "58af9528-1030-417d-b773-5f70b800a940",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d393963c-9858-4eda-946a-2a83f8331497",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c9e1a41-2876-40ec-8ae2-6362a6ea7ad3",
              "parent_uuid": "d393963c-9858-4eda-946a-2a83f8331497",
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
              "uuid": "59e0dd59-6106-4cee-95da-a808d0019a95",
              "parent_uuid": "d393963c-9858-4eda-946a-2a83f8331497",
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
              "uuid": "2a6c1435-8d9a-446f-9f83-160084ce14ef",
              "parent_uuid": "d393963c-9858-4eda-946a-2a83f8331497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97b58f14-760b-4cdb-b775-5de4297be78d",
                  "parent_uuid": "2a6c1435-8d9a-446f-9f83-160084ce14ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d9e51dd-824c-42f3-86b1-ace25ba4113a",
              "parent_uuid": "d393963c-9858-4eda-946a-2a83f8331497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c1cefa6-92ba-48a3-abbf-3c59c269383b",
                  "parent_uuid": "4d9e51dd-824c-42f3-86b1-ace25ba4113a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e96ff3df-3a08-43fa-add7-c996320d6e7c",
              "parent_uuid": "d393963c-9858-4eda-946a-2a83f8331497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab423133-e878-4c23-ac90-3f5cef583f26",
                  "parent_uuid": "e96ff3df-3a08-43fa-add7-c996320d6e7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61219fa5-74fe-40e6-8848-8d43bf62d556",
              "parent_uuid": "d393963c-9858-4eda-946a-2a83f8331497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c71add8-fc3d-4b6b-ab1f-658ac990438f",
                  "parent_uuid": "61219fa5-74fe-40e6-8848-8d43bf62d556",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "738c430e-7611-4140-9bc8-f4d65dd79e42",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "87712bca-178e-4e3c-8ce9-eae41ce894f6",
              "parent_uuid": "738c430e-7611-4140-9bc8-f4d65dd79e42",
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
          "uuid": "6c7aeba7-3a54-4279-b904-26d7c9563b85",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c9e78b4-6c16-4aee-b8da-de44f23c3ea3",
              "parent_uuid": "6c7aeba7-3a54-4279-b904-26d7c9563b85",
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
              "uuid": "b0751c98-46a9-4183-8127-35b6e2804235",
              "parent_uuid": "6c7aeba7-3a54-4279-b904-26d7c9563b85",
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
              "uuid": "ea9cafa7-8416-44ff-a2f8-745b991df3ad",
              "parent_uuid": "6c7aeba7-3a54-4279-b904-26d7c9563b85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a292a6e1-6705-416f-a388-7524c5759a74",
                  "parent_uuid": "ea9cafa7-8416-44ff-a2f8-745b991df3ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8d72c2e-cf32-4c22-8b23-4ae0859010ea",
              "parent_uuid": "6c7aeba7-3a54-4279-b904-26d7c9563b85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89565651-5220-4279-a22d-89b9f3c4ba2e",
                  "parent_uuid": "a8d72c2e-cf32-4c22-8b23-4ae0859010ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75837499-1ebc-4acd-afd3-459bf3dd45d3",
              "parent_uuid": "6c7aeba7-3a54-4279-b904-26d7c9563b85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0bd4a74-e2dc-4ddf-bc31-7a35050a0b06",
                  "parent_uuid": "75837499-1ebc-4acd-afd3-459bf3dd45d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dff9c0a6-a81b-48a1-9e21-9386354324a0",
              "parent_uuid": "6c7aeba7-3a54-4279-b904-26d7c9563b85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf0ddb1d-198b-424d-836f-b17f582ed12d",
                  "parent_uuid": "dff9c0a6-a81b-48a1-9e21-9386354324a0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79a33d08-0d2f-40bc-8a2e-2b6654d774fb",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37420665-b057-4028-b630-e13bc5d72e13",
              "parent_uuid": "79a33d08-0d2f-40bc-8a2e-2b6654d774fb",
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
              "uuid": "ff53b621-7fd3-44b2-bb6f-82196bf05437",
              "parent_uuid": "79a33d08-0d2f-40bc-8a2e-2b6654d774fb",
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
              "uuid": "f9d38bb9-5391-4f0d-a944-0081f1b3e514",
              "parent_uuid": "79a33d08-0d2f-40bc-8a2e-2b6654d774fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a63e0632-65db-4c06-bd32-c87be6ae4ba4",
                  "parent_uuid": "f9d38bb9-5391-4f0d-a944-0081f1b3e514",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ce6932e-ab7f-4b06-ba20-eaa5165d1f39",
              "parent_uuid": "79a33d08-0d2f-40bc-8a2e-2b6654d774fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23a6e2b0-4625-49f3-8302-91dd033075c1",
                  "parent_uuid": "1ce6932e-ab7f-4b06-ba20-eaa5165d1f39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a12b1a6d-9574-4781-a624-6f935c89b3c4",
              "parent_uuid": "79a33d08-0d2f-40bc-8a2e-2b6654d774fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e72a2b53-e549-4ed0-bacb-709fe19f6928",
                  "parent_uuid": "a12b1a6d-9574-4781-a624-6f935c89b3c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26d86789-93ee-4e15-a93e-d1e434bcefa0",
              "parent_uuid": "79a33d08-0d2f-40bc-8a2e-2b6654d774fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f1e4085-4f02-4fb4-8d35-42f1a13040ce",
                  "parent_uuid": "26d86789-93ee-4e15-a93e-d1e434bcefa0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b6233f52-bf32-4db5-817f-ac569f09ca84",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf0c40d5-58c2-4c51-8564-45a552ca31b2",
              "parent_uuid": "b6233f52-bf32-4db5-817f-ac569f09ca84",
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
              "uuid": "f0fd53ef-ac7c-41c8-8474-4a7417a812a1",
              "parent_uuid": "b6233f52-bf32-4db5-817f-ac569f09ca84",
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
              "uuid": "2ca3c6e6-2e3f-4810-969a-0b93d85269a0",
              "parent_uuid": "b6233f52-bf32-4db5-817f-ac569f09ca84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52a6ab33-1335-4062-a390-e01fda4721c8",
                  "parent_uuid": "2ca3c6e6-2e3f-4810-969a-0b93d85269a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43539ad4-ff33-45a3-a2d6-b4ede43ddb46",
              "parent_uuid": "b6233f52-bf32-4db5-817f-ac569f09ca84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dec14c42-06a0-4295-ba96-58694f6a7655",
                  "parent_uuid": "43539ad4-ff33-45a3-a2d6-b4ede43ddb46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c17fe890-a5d1-4fad-98af-b22d81e204bd",
              "parent_uuid": "b6233f52-bf32-4db5-817f-ac569f09ca84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be2aebcd-fddb-43d0-bd01-6b5b0a3e3e5f",
                  "parent_uuid": "c17fe890-a5d1-4fad-98af-b22d81e204bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b80fc245-6edd-40bb-b8eb-062bf19b0164",
              "parent_uuid": "b6233f52-bf32-4db5-817f-ac569f09ca84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11928e4b-f36c-479c-84d1-56e371f393c7",
                  "parent_uuid": "b80fc245-6edd-40bb-b8eb-062bf19b0164",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4733007d-a606-4064-bc32-08e51be5549d",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7cb34b05-5f18-42eb-a502-44ed736f3e28",
              "parent_uuid": "4733007d-a606-4064-bc32-08e51be5549d",
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
              "uuid": "8407eadc-5a63-47d3-b5bb-6a3d5d86eefb",
              "parent_uuid": "4733007d-a606-4064-bc32-08e51be5549d",
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
              "uuid": "b28da31d-fca7-4459-b127-0aaecee32e0b",
              "parent_uuid": "4733007d-a606-4064-bc32-08e51be5549d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58fa4b40-2f3e-472f-a8a4-a347d81f6e3f",
                  "parent_uuid": "b28da31d-fca7-4459-b127-0aaecee32e0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7016936e-1089-4798-be89-ddbab63e9767",
              "parent_uuid": "4733007d-a606-4064-bc32-08e51be5549d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4f710c3-5598-4088-bd63-e2e7c82be591",
                  "parent_uuid": "7016936e-1089-4798-be89-ddbab63e9767",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50c77e3c-4def-4552-8715-179d6d5670ec",
              "parent_uuid": "4733007d-a606-4064-bc32-08e51be5549d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dedbdfbd-52eb-4f15-a491-98acc11e7e35",
                  "parent_uuid": "50c77e3c-4def-4552-8715-179d6d5670ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f60f64ef-ff19-4790-9ac3-f26c7a3d3481",
              "parent_uuid": "4733007d-a606-4064-bc32-08e51be5549d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbe099c2-0c48-484e-bddf-0ab0fd81a385",
                  "parent_uuid": "f60f64ef-ff19-4790-9ac3-f26c7a3d3481",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b057ab1-af16-4611-93e9-7499eda74325",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49edc34c-1ecd-4266-b910-c58bbf1f96c6",
              "parent_uuid": "0b057ab1-af16-4611-93e9-7499eda74325",
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
          "uuid": "515c8898-91b7-43dd-bd79-dff26a578914",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46ddd32a-367d-4daf-885e-278c52acbbf1",
              "parent_uuid": "515c8898-91b7-43dd-bd79-dff26a578914",
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
          "uuid": "490f96e6-f878-46dc-ad56-a83bf6a4e204",
          "parent_uuid": "8c03bbce-e0c2-4f47-a4a3-cf2889d500c1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc735803-ce66-4929-a39a-d6ff07f26bbf",
              "parent_uuid": "490f96e6-f878-46dc-ad56-a83bf6a4e204",
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
                  "uuid": "71d2e489-2a7b-4978-96ee-14d2d1e13fa3",
                  "parent_uuid": "cc735803-ce66-4929-a39a-d6ff07f26bbf",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS cl_uid 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 



DECLARE @allChecklists TABLE (CL_UID uniqueidentifier NOT NULL PRIMARY KEY, CL_Name nvarchar(256) NULL, CL_Sort int NULL) 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Sort) 
          SELECT 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID, N'Schüttgutcontainer' AS CL_Name, 1 AS CL_Sort 
UNION ALL SELECT '1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS CL_UID, N'EVA' AS CL_Name, 2 AS CL_Sort 
UNION ALL SELECT '58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS CL_UID, N'CIS' AS CL_Name, 3 AS CL_Sort 
UNION ALL SELECT 'DA19D272-9439-47A7-9749-153DAFAB2B69' AS CL_UID, N'VHP' AS CL_Name, 4 AS CL_Sort 
UNION ALL SELECT '698EA23D-485A-4CEE-9B06-2E130A3A5626' AS CL_UID, N'NPL' AS CL_Name, 5 AS CL_Sort 
UNION ALL SELECT 'F1A2DD8A-2D11-496E-9B14-13559405089F' AS CL_UID, N'BPS_M7' AS CL_Name, 6 AS CL_Sort 
UNION ALL SELECT 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS CL_UID, N'BPS_1020' AS CL_Name, 7 AS CL_Sort 
; 



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

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         CL_UID 
        ,CL_Name 
    ) 
    VALUES 
    ( 
         CTE.CL_UID 
        ,CTE.CL_Name 
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
		,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '698EA23D-485A-4CEE-9B06-2E130A3A5626'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

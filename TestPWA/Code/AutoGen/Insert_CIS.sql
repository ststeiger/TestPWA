
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
  "uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "fb8aee41-3129-4c71-b6b1-275275cfdae7",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "b9a79cbe-1214-436e-b6a0-ad42c7465c8f",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "08af724c-aeda-4526-ba2d-0b07f40eaa84",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "01c5042f-cbe6-4fdd-b768-60e4361550dd",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "c2707f17-e0d9-486c-abc6-7262b6284563",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "64f651a2-1a0b-44f8-a33a-c70a28dca148",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "8d09fdf0-8797-4f9c-a633-4408d42e905b",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
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
      "uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
      "parent_uuid": "7eda272a-c03f-4e18-9793-e983a94ae97c",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6d2e5589-4bd3-4ffb-8224-4fedeac04afa",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "bbea6a88-3882-4ea2-848f-dae370b7a8d1",
              "parent_uuid": "6d2e5589-4bd3-4ffb-8224-4fedeac04afa",
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
              "uuid": "96efabf3-bc1f-412e-92f5-d6aab10a48de",
              "parent_uuid": "6d2e5589-4bd3-4ffb-8224-4fedeac04afa",
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
              "uuid": "ba35bf39-4873-4070-9105-4ecd809eccd0",
              "parent_uuid": "6d2e5589-4bd3-4ffb-8224-4fedeac04afa",
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
              "uuid": "e154243c-6b6e-40ba-9d12-78049c94cb44",
              "parent_uuid": "6d2e5589-4bd3-4ffb-8224-4fedeac04afa",
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
          "uuid": "8a23e5e3-b675-4d4c-b38e-a7b0ea639e10",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "31b31d01-c244-49c8-9ca7-3c166d414b27",
              "parent_uuid": "8a23e5e3-b675-4d4c-b38e-a7b0ea639e10",
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
              "uuid": "6afc3708-addf-4484-acd2-69dbe0552cee",
              "parent_uuid": "8a23e5e3-b675-4d4c-b38e-a7b0ea639e10",
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
              "uuid": "95a6a005-4e01-499d-bc4b-a39ae164c64f",
              "parent_uuid": "8a23e5e3-b675-4d4c-b38e-a7b0ea639e10",
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
              "uuid": "607e724c-ad05-4746-88f0-e3b0eccf664c",
              "parent_uuid": "8a23e5e3-b675-4d4c-b38e-a7b0ea639e10",
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
          "uuid": "48b1326f-32e5-485f-a4ca-b46833ecf7cc",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f0d12b4-66bd-4ccf-8070-4c497c3b3432",
              "parent_uuid": "48b1326f-32e5-485f-a4ca-b46833ecf7cc",
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
              "uuid": "b135fc67-14cb-4397-9816-914ed22926d8",
              "parent_uuid": "48b1326f-32e5-485f-a4ca-b46833ecf7cc",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "24bf594f-300d-49c9-bda6-2f798b6f7235",
              "parent_uuid": "48b1326f-32e5-485f-a4ca-b46833ecf7cc",
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
              "uuid": "9bb0c121-2e9f-4f21-a2d5-78d3f7bb4b0a",
              "parent_uuid": "48b1326f-32e5-485f-a4ca-b46833ecf7cc",
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
              "uuid": "ffd2cb82-2fc1-4aa0-b7c6-91293a104693",
              "parent_uuid": "48b1326f-32e5-485f-a4ca-b46833ecf7cc",
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
              "uuid": "2c6ebc9e-4d77-4c3e-a165-168ceb89a7ad",
              "parent_uuid": "48b1326f-32e5-485f-a4ca-b46833ecf7cc",
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
          "uuid": "35cb4e25-d2f6-4717-bee9-2db63cd6020c",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "997965f1-d479-43e3-a338-57279a50dcbe",
              "parent_uuid": "35cb4e25-d2f6-4717-bee9-2db63cd6020c",
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
          "uuid": "e018f55d-1ff8-4c2e-befe-b1d2768cc6b4",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89c318fd-2692-4dbe-9d65-867acb3f2bc9",
              "parent_uuid": "e018f55d-1ff8-4c2e-befe-b1d2768cc6b4",
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
              "uuid": "5a117125-c5f0-46ba-a286-627fa8d82ca7",
              "parent_uuid": "e018f55d-1ff8-4c2e-befe-b1d2768cc6b4",
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
              "uuid": "16a8d937-0c39-4806-bc8e-429f5c9074f2",
              "parent_uuid": "e018f55d-1ff8-4c2e-befe-b1d2768cc6b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "caa9d448-346a-4ea3-853d-924f7fa48063",
                  "parent_uuid": "16a8d937-0c39-4806-bc8e-429f5c9074f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d9c973f-845b-4f13-979c-aafc24b2dce4",
              "parent_uuid": "e018f55d-1ff8-4c2e-befe-b1d2768cc6b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45f6214d-2ca2-4540-80d4-265bc955d9c3",
                  "parent_uuid": "7d9c973f-845b-4f13-979c-aafc24b2dce4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "831f4dcf-ef1b-42b8-a670-dff8bb5dced2",
              "parent_uuid": "e018f55d-1ff8-4c2e-befe-b1d2768cc6b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54a163ec-e68b-4729-8dc6-4232a93b29f1",
                  "parent_uuid": "831f4dcf-ef1b-42b8-a670-dff8bb5dced2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae5a6c93-27c8-4298-975d-638044c20062",
              "parent_uuid": "e018f55d-1ff8-4c2e-befe-b1d2768cc6b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "718b7261-2d9b-4570-bf32-9c16aeb13c92",
                  "parent_uuid": "ae5a6c93-27c8-4298-975d-638044c20062",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5232d9fa-b7de-4301-a62d-a9803fbb6005",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0cfd19ab-987c-4e1d-a9fc-6d0cea9b80af",
              "parent_uuid": "5232d9fa-b7de-4301-a62d-a9803fbb6005",
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
              "uuid": "53062036-737b-4132-9876-ea20880d7411",
              "parent_uuid": "5232d9fa-b7de-4301-a62d-a9803fbb6005",
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
              "uuid": "1caebbc3-8913-4d5c-8b4b-ffc3d4b63743",
              "parent_uuid": "5232d9fa-b7de-4301-a62d-a9803fbb6005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8467b74f-82f7-4c10-a6d1-4d8e314c0da8",
                  "parent_uuid": "1caebbc3-8913-4d5c-8b4b-ffc3d4b63743",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53d6d77b-4f73-41df-a3e3-ee0323690519",
              "parent_uuid": "5232d9fa-b7de-4301-a62d-a9803fbb6005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1a2dc0f-583a-4149-81b6-c7a1f0a7b240",
                  "parent_uuid": "53d6d77b-4f73-41df-a3e3-ee0323690519",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecc59c93-5323-4f86-8054-1446d043e361",
              "parent_uuid": "5232d9fa-b7de-4301-a62d-a9803fbb6005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fafd9e9b-79ae-437b-847a-42fe6749742f",
                  "parent_uuid": "ecc59c93-5323-4f86-8054-1446d043e361",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3119980-7d3c-48be-bec5-fea384f04d6e",
              "parent_uuid": "5232d9fa-b7de-4301-a62d-a9803fbb6005",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "825c038b-c647-44d5-99b8-66016cd47cc6",
                  "parent_uuid": "e3119980-7d3c-48be-bec5-fea384f04d6e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "30852536-2fce-45eb-8df8-7e895d37409e",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "824aa14a-9674-4696-b205-ae8f4c9f4a98",
              "parent_uuid": "30852536-2fce-45eb-8df8-7e895d37409e",
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
              "uuid": "a34137e1-7fc8-4d8f-9a65-7f00df2f7166",
              "parent_uuid": "30852536-2fce-45eb-8df8-7e895d37409e",
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
              "uuid": "81f93d68-82b0-4567-8b7a-cf0589b6967f",
              "parent_uuid": "30852536-2fce-45eb-8df8-7e895d37409e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad1a79a5-a275-4ee8-b144-f59c2afd2ddf",
                  "parent_uuid": "81f93d68-82b0-4567-8b7a-cf0589b6967f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29b48ddb-4f4b-418e-8015-cb2877d66e34",
              "parent_uuid": "30852536-2fce-45eb-8df8-7e895d37409e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f30075ff-9183-4a9d-86ef-66fc7ef19576",
                  "parent_uuid": "29b48ddb-4f4b-418e-8015-cb2877d66e34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0dbb849-6602-4988-8ed2-0bd25a1e1712",
              "parent_uuid": "30852536-2fce-45eb-8df8-7e895d37409e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b82626a9-7778-45d2-9f14-ad220457bff4",
                  "parent_uuid": "e0dbb849-6602-4988-8ed2-0bd25a1e1712",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73a07293-eac4-46ab-ad68-6529353051df",
              "parent_uuid": "30852536-2fce-45eb-8df8-7e895d37409e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08c66d33-493e-4379-a4b7-44b9988724a9",
                  "parent_uuid": "73a07293-eac4-46ab-ad68-6529353051df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "476e2950-7e6d-4af0-bf57-c5e53d248776",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f55d735d-1cab-4e35-981d-f78a08c08f6c",
              "parent_uuid": "476e2950-7e6d-4af0-bf57-c5e53d248776",
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
              "uuid": "13a85651-6547-4c56-9dfe-e186379367e9",
              "parent_uuid": "476e2950-7e6d-4af0-bf57-c5e53d248776",
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
              "uuid": "2d826b54-2951-4c6f-a2eb-ab58289b41a8",
              "parent_uuid": "476e2950-7e6d-4af0-bf57-c5e53d248776",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfbab4ed-3b0c-492d-84ed-a095dc3fbbe8",
                  "parent_uuid": "2d826b54-2951-4c6f-a2eb-ab58289b41a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3aea8bdf-a79a-4659-8bdd-131588eabc63",
              "parent_uuid": "476e2950-7e6d-4af0-bf57-c5e53d248776",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52ca83f4-1003-4956-9995-f58907ccc512",
                  "parent_uuid": "3aea8bdf-a79a-4659-8bdd-131588eabc63",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f7f710f-5c98-4862-a01b-3eb34e5a3460",
              "parent_uuid": "476e2950-7e6d-4af0-bf57-c5e53d248776",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e93408a7-da73-4224-b006-518558f0d96f",
                  "parent_uuid": "3f7f710f-5c98-4862-a01b-3eb34e5a3460",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0a107ee-4128-497f-8084-6dbc547b619c",
              "parent_uuid": "476e2950-7e6d-4af0-bf57-c5e53d248776",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f5f9123-3aaa-4ac0-b1d5-e11493f5a1e6",
                  "parent_uuid": "c0a107ee-4128-497f-8084-6dbc547b619c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c7014d5d-b4b9-4839-822e-6f641ae4461f",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "560ef948-2672-404e-aa2b-23e8c04e9b71",
              "parent_uuid": "c7014d5d-b4b9-4839-822e-6f641ae4461f",
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
          "uuid": "90beaf00-208d-4f8f-a043-8937578eefad",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12ada28d-4ff5-4e82-a348-77123f87cf60",
              "parent_uuid": "90beaf00-208d-4f8f-a043-8937578eefad",
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
              "innerHtml": "\r\n                    <span><b>Gesamte Anlage reinigen:</b><br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9d56dbe9-a83f-477b-8211-1e627230f6a7",
              "parent_uuid": "90beaf00-208d-4f8f-a043-8937578eefad",
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
              "uuid": "ce010ddc-3bf4-45d3-ba81-f0f81141d592",
              "parent_uuid": "90beaf00-208d-4f8f-a043-8937578eefad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a779c89-7c21-4d68-ae9f-dae478a033e2",
                  "parent_uuid": "ce010ddc-3bf4-45d3-ba81-f0f81141d592",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a676f2c-d612-4413-a019-146163c09a95",
              "parent_uuid": "90beaf00-208d-4f8f-a043-8937578eefad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3eae371-b7f9-4ef7-9a2f-a8ac359a2a55",
                  "parent_uuid": "1a676f2c-d612-4413-a019-146163c09a95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc95180e-a0af-4e42-b2fa-970a50800c5f",
              "parent_uuid": "90beaf00-208d-4f8f-a043-8937578eefad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3962bdcf-702b-4a72-bc93-f0083cb4ae88",
                  "parent_uuid": "cc95180e-a0af-4e42-b2fa-970a50800c5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef72c2c0-ef22-4d7d-b28c-8af13e974d0e",
              "parent_uuid": "90beaf00-208d-4f8f-a043-8937578eefad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1297b54f-56fb-4197-8e3c-5ad086e7acef",
                  "parent_uuid": "ef72c2c0-ef22-4d7d-b28c-8af13e974d0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e26de24-a239-4f14-a070-ce7defd77dfe",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "beef8baf-2ace-44d6-9bb9-90e82510d0c2",
              "parent_uuid": "7e26de24-a239-4f14-a070-ce7defd77dfe",
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
              "uuid": "9e3e39cd-61b8-4e29-b38d-efd8bac6f458",
              "parent_uuid": "7e26de24-a239-4f14-a070-ce7defd77dfe",
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
              "uuid": "d9cb58cd-b597-41fb-b666-6d50d0ebe8b1",
              "parent_uuid": "7e26de24-a239-4f14-a070-ce7defd77dfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71d72807-d458-4e82-88cf-cd008eb266bf",
                  "parent_uuid": "d9cb58cd-b597-41fb-b666-6d50d0ebe8b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ec42f00-a84f-4dda-9e82-09389c2756b5",
              "parent_uuid": "7e26de24-a239-4f14-a070-ce7defd77dfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bf526a1-78c6-439d-8a7d-5c22a7340705",
                  "parent_uuid": "9ec42f00-a84f-4dda-9e82-09389c2756b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5dbb2db-957d-424d-bf1a-3a3bf96ef8c8",
              "parent_uuid": "7e26de24-a239-4f14-a070-ce7defd77dfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2f99589-d129-451b-bf85-616c34057016",
                  "parent_uuid": "c5dbb2db-957d-424d-bf1a-3a3bf96ef8c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "335ffbf5-d9b5-428f-8434-3dcfd5e23c54",
              "parent_uuid": "7e26de24-a239-4f14-a070-ce7defd77dfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aea40efd-b7d9-4ce5-a554-4c26d434f3fd",
                  "parent_uuid": "335ffbf5-d9b5-428f-8434-3dcfd5e23c54",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0572ade2-3cbc-4c97-8126-bcabdbb12aa6",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97203160-7240-484a-b10e-e73feb120108",
              "parent_uuid": "0572ade2-3cbc-4c97-8126-bcabdbb12aa6",
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
              "uuid": "319010ed-813c-4a82-8261-efa310cf9c81",
              "parent_uuid": "0572ade2-3cbc-4c97-8126-bcabdbb12aa6",
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
              "uuid": "63514787-789b-4c18-99da-9a3e78735505",
              "parent_uuid": "0572ade2-3cbc-4c97-8126-bcabdbb12aa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6bfbecb-bada-4214-b170-2b0d60e949bc",
                  "parent_uuid": "63514787-789b-4c18-99da-9a3e78735505",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c653fb2d-c3c0-4816-9c23-0f1bc4b34d9a",
              "parent_uuid": "0572ade2-3cbc-4c97-8126-bcabdbb12aa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ff74282-127a-411c-8505-aec711bd50a3",
                  "parent_uuid": "c653fb2d-c3c0-4816-9c23-0f1bc4b34d9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cf64d35-0b7b-4baa-a85f-bb5fea65d2fd",
              "parent_uuid": "0572ade2-3cbc-4c97-8126-bcabdbb12aa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e1b5a08-5b0c-45aa-add4-2f7f4a296d94",
                  "parent_uuid": "1cf64d35-0b7b-4baa-a85f-bb5fea65d2fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa905961-9b65-47b4-a50d-9688d65dbc32",
              "parent_uuid": "0572ade2-3cbc-4c97-8126-bcabdbb12aa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d41aa6de-3926-48f2-867a-ea9bed887423",
                  "parent_uuid": "fa905961-9b65-47b4-a50d-9688d65dbc32",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b1c0a1a1-6f4a-4e9a-b29a-20160eb17a85",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0acad13a-6576-4857-b061-7beb3fc1aea9",
              "parent_uuid": "b1c0a1a1-6f4a-4e9a-b29a-20160eb17a85",
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
              "uuid": "1c0b560b-9595-42c1-935c-92a33fd9a13a",
              "parent_uuid": "b1c0a1a1-6f4a-4e9a-b29a-20160eb17a85",
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
              "uuid": "2d9e64db-8d0f-4b29-b153-8ae6a3d35af3",
              "parent_uuid": "b1c0a1a1-6f4a-4e9a-b29a-20160eb17a85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af54edb4-ab65-401b-b61e-ec161db5bae2",
                  "parent_uuid": "2d9e64db-8d0f-4b29-b153-8ae6a3d35af3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77ac58f9-0552-494e-842d-17934acff8be",
              "parent_uuid": "b1c0a1a1-6f4a-4e9a-b29a-20160eb17a85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d6abb70-c9f9-4885-a3c4-159a72957e9a",
                  "parent_uuid": "77ac58f9-0552-494e-842d-17934acff8be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d70177fc-c363-4709-b607-bef0ed2d381f",
              "parent_uuid": "b1c0a1a1-6f4a-4e9a-b29a-20160eb17a85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98d502a8-947b-4cda-99b3-2e5a66951fc3",
                  "parent_uuid": "d70177fc-c363-4709-b607-bef0ed2d381f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c517478-828a-46c2-8ed3-14099c3291b3",
              "parent_uuid": "b1c0a1a1-6f4a-4e9a-b29a-20160eb17a85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f97a970-a10b-447f-ae64-853811fb7f61",
                  "parent_uuid": "1c517478-828a-46c2-8ed3-14099c3291b3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2032551a-4109-4137-a084-317306428ff6",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72d828af-c6d6-46c5-9641-a274e39a8e2d",
              "parent_uuid": "2032551a-4109-4137-a084-317306428ff6",
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
              "innerHtml": "\r\n                    <span><b>Transportriemen gross reinigen:</b><br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "013f44dc-d6b2-4acd-be2c-16394e64cf2b",
              "parent_uuid": "2032551a-4109-4137-a084-317306428ff6",
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
              "uuid": "0b2df1bf-bcd3-4a4a-9a2d-4cda8d484045",
              "parent_uuid": "2032551a-4109-4137-a084-317306428ff6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52ba9fa4-3ea0-4712-92bc-0fc7f78a5265",
                  "parent_uuid": "0b2df1bf-bcd3-4a4a-9a2d-4cda8d484045",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44b32ab8-dc83-432c-9f45-d5489c8e5063",
              "parent_uuid": "2032551a-4109-4137-a084-317306428ff6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d927b66-80c8-49ca-9232-ec127df26fb9",
                  "parent_uuid": "44b32ab8-dc83-432c-9f45-d5489c8e5063",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4281bd24-9834-4255-90ba-eab62c166f62",
              "parent_uuid": "2032551a-4109-4137-a084-317306428ff6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80166246-4fd7-48e4-9701-0e2e0f139c9e",
                  "parent_uuid": "4281bd24-9834-4255-90ba-eab62c166f62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bfab28b6-3254-4c7c-a5f1-524ebd3feeac",
              "parent_uuid": "2032551a-4109-4137-a084-317306428ff6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa694364-34ab-4ce5-9999-3b9078978875",
                  "parent_uuid": "bfab28b6-3254-4c7c-a5f1-524ebd3feeac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "49ef9413-ba21-4286-bc6c-22a5398d2d8e",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d66fbf29-ffe4-4f44-8a73-73f258faaf01",
              "parent_uuid": "49ef9413-ba21-4286-bc6c-22a5398d2d8e",
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
              "innerHtml": "\r\n                    <span><b>Transportriemen klein reinigen:</b><br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "86b90572-25b8-4699-aaf0-e19626b2a6c9",
              "parent_uuid": "49ef9413-ba21-4286-bc6c-22a5398d2d8e",
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
              "uuid": "e38afdde-71a9-4ec6-8bac-f57ac47ff078",
              "parent_uuid": "49ef9413-ba21-4286-bc6c-22a5398d2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6902cc06-b5e4-4623-b33a-570e56e2a98a",
                  "parent_uuid": "e38afdde-71a9-4ec6-8bac-f57ac47ff078",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c9f3ced-e2fb-41a1-b796-ba438df4bdb8",
              "parent_uuid": "49ef9413-ba21-4286-bc6c-22a5398d2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad313985-3a8d-4ec7-9f16-55b26f5eece8",
                  "parent_uuid": "0c9f3ced-e2fb-41a1-b796-ba438df4bdb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8dd81184-05c0-425a-ab9b-b8e38d1bd547",
              "parent_uuid": "49ef9413-ba21-4286-bc6c-22a5398d2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95c18885-65a8-49d1-9f3d-f382d34735f5",
                  "parent_uuid": "8dd81184-05c0-425a-ab9b-b8e38d1bd547",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d343b4f-7295-4c39-919b-51a86fb02687",
              "parent_uuid": "49ef9413-ba21-4286-bc6c-22a5398d2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6072d53b-056d-439f-9fed-aa0ab9748a00",
                  "parent_uuid": "4d343b4f-7295-4c39-919b-51a86fb02687",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "55fd9926-e9a9-4df2-b4d5-8d97314277bd",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0bffd33e-c8b7-4bfa-b7b8-65a440361117",
              "parent_uuid": "55fd9926-e9a9-4df2-b4d5-8d97314277bd",
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
              "innerHtml": "\r\n                    <span><b>Spannung Transporriemen gross überprüfen:</b><br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7724d77f-23f1-4b52-af36-556b11fe0f09",
              "parent_uuid": "55fd9926-e9a9-4df2-b4d5-8d97314277bd",
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
              "uuid": "9a703e5b-a920-476b-b4fa-aaea1db8a4a0",
              "parent_uuid": "55fd9926-e9a9-4df2-b4d5-8d97314277bd",
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
                  "uuid": "8a11177f-648e-48cf-85a7-7fafa0a86f45",
                  "parent_uuid": "9a703e5b-a920-476b-b4fa-aaea1db8a4a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f8f87c6-81fb-406e-9d7b-3c6f2be20ca0",
              "parent_uuid": "55fd9926-e9a9-4df2-b4d5-8d97314277bd",
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
                  "uuid": "85d834ae-932f-462b-bc58-1bd5f99ae241",
                  "parent_uuid": "2f8f87c6-81fb-406e-9d7b-3c6f2be20ca0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71cf70dc-e195-4b61-a3ce-82b8784f53a2",
              "parent_uuid": "55fd9926-e9a9-4df2-b4d5-8d97314277bd",
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
                  "uuid": "60dc2ce7-8905-4b53-b738-a2054f61808c",
                  "parent_uuid": "71cf70dc-e195-4b61-a3ce-82b8784f53a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5423eb21-a6e0-4a9c-9336-9a4aca406d56",
              "parent_uuid": "55fd9926-e9a9-4df2-b4d5-8d97314277bd",
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
                  "uuid": "52f97a38-922f-4f9a-94f2-b0d96d1674fc",
                  "parent_uuid": "5423eb21-a6e0-4a9c-9336-9a4aca406d56",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52d2ea12-0975-4f7b-91c0-1b88a4cba1cd",
              "parent_uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
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
              "uuid": "ee07e234-118e-42cb-bfde-c7431d289bcf",
              "parent_uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
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
              "uuid": "e74162b4-ed81-49fd-8dad-b4482412384f",
              "parent_uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
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
              "uuid": "0168fd83-c7ee-426e-8500-056a14cebcd6",
              "parent_uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
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
                  "uuid": "8861636a-7539-46f7-ba4d-86382d6f8409",
                  "parent_uuid": "0168fd83-c7ee-426e-8500-056a14cebcd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6119eb36-095f-40c2-961a-d49d0a6acbc9",
              "parent_uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
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
                  "uuid": "74c1e4a1-9991-4762-8a4c-5953f4ce1c65",
                  "parent_uuid": "6119eb36-095f-40c2-961a-d49d0a6acbc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afb7c921-7be7-44f9-9fe5-5e914cc95708",
              "parent_uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
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
                  "uuid": "1211a509-3013-4b04-bca8-defe138aff0b",
                  "parent_uuid": "afb7c921-7be7-44f9-9fe5-5e914cc95708",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae77f382-fdfd-42d6-a8e1-1e08e9faad86",
              "parent_uuid": "2bcf5bb1-3777-4f92-9a81-a78c1583a460",
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
                  "uuid": "f46de914-f65f-4fb7-956f-f9b6916182d8",
                  "parent_uuid": "ae77f382-fdfd-42d6-a8e1-1e08e9faad86",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f3c1c05-4b5d-4eb6-a3b1-aae3e26b239f",
              "parent_uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
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
              "uuid": "810946ea-83f1-4942-9e92-879befdca12a",
              "parent_uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
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
              "uuid": "4d220bd6-5810-4070-9b0a-19bf03f65f31",
              "parent_uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
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
                  "uuid": "2eb9eb59-d911-4c01-b6ee-1fecf69638aa",
                  "parent_uuid": "4d220bd6-5810-4070-9b0a-19bf03f65f31",
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
              "uuid": "59c0d586-3270-4acb-aee3-c6eb1a919a38",
              "parent_uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
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
                  "uuid": "b6cae9b1-f698-42b2-af79-d3474439b301",
                  "parent_uuid": "59c0d586-3270-4acb-aee3-c6eb1a919a38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f477cd78-5e47-4018-852c-f7601fb16b51",
              "parent_uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
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
                  "uuid": "9c9a3f1f-e3da-4f58-b1b5-514fc9d949f5",
                  "parent_uuid": "f477cd78-5e47-4018-852c-f7601fb16b51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4af2ed4-5107-465d-804f-08319c8596e6",
              "parent_uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
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
                  "uuid": "90276c8c-eef1-4fb0-bacf-0065482ce659",
                  "parent_uuid": "c4af2ed4-5107-465d-804f-08319c8596e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4596ddaf-f5c5-4145-92ff-52ca63398898",
              "parent_uuid": "31df9e28-8ec5-4dea-a1f4-a7fa0ccc34f8",
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
                  "uuid": "f72ebb80-41a0-4ed5-8a77-4facc351460a",
                  "parent_uuid": "4596ddaf-f5c5-4145-92ff-52ca63398898",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f747ef2-3544-47e2-bb50-06bf2d409e2b",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e44123b5-c0e6-49c4-b1c3-7ef5ab4df1bd",
              "parent_uuid": "0f747ef2-3544-47e2-bb50-06bf2d409e2b",
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
              "uuid": "ebeb9c7f-5e3c-4263-8d9f-0f86b65ef530",
              "parent_uuid": "0f747ef2-3544-47e2-bb50-06bf2d409e2b",
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
              "uuid": "10070eba-2064-432a-8e85-a3080d4d03ea",
              "parent_uuid": "0f747ef2-3544-47e2-bb50-06bf2d409e2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bf3323d-5f4d-49ea-84ce-49947062c5e2",
                  "parent_uuid": "10070eba-2064-432a-8e85-a3080d4d03ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "faa71bfc-e5d0-45db-8674-2dfb7a06f4f0",
              "parent_uuid": "0f747ef2-3544-47e2-bb50-06bf2d409e2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f461b574-610e-41b7-9039-a69757fb987d",
                  "parent_uuid": "faa71bfc-e5d0-45db-8674-2dfb7a06f4f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0bb6309-ed36-47cd-9486-9ecc8407da5c",
              "parent_uuid": "0f747ef2-3544-47e2-bb50-06bf2d409e2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70425f60-3ef3-409c-a809-b2757cecb72c",
                  "parent_uuid": "f0bb6309-ed36-47cd-9486-9ecc8407da5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c70ac7b-22d2-4e23-9e64-2659ff1f39c9",
              "parent_uuid": "0f747ef2-3544-47e2-bb50-06bf2d409e2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f9b9e1b-71c6-4363-a6b5-bcb0a2eb8fe3",
                  "parent_uuid": "3c70ac7b-22d2-4e23-9e64-2659ff1f39c9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8c8af813-e93e-4714-97af-07451965acb4",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcdc96cd-4cd6-4003-97b6-153bf392eac5",
              "parent_uuid": "8c8af813-e93e-4714-97af-07451965acb4",
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
              "uuid": "8f0bf556-5e0f-4586-b0e3-0af9b00aa686",
              "parent_uuid": "8c8af813-e93e-4714-97af-07451965acb4",
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
              "uuid": "88d4f0fc-c82f-45e3-b917-0314d40751c5",
              "parent_uuid": "8c8af813-e93e-4714-97af-07451965acb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "167544ad-25df-42e6-8942-14c0d69d47bd",
                  "parent_uuid": "88d4f0fc-c82f-45e3-b917-0314d40751c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2c437a3-824a-42b4-8305-e937c3fd04a7",
              "parent_uuid": "8c8af813-e93e-4714-97af-07451965acb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "145a86f4-822d-49c3-863c-dafa7c1e356f",
                  "parent_uuid": "e2c437a3-824a-42b4-8305-e937c3fd04a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c01263e3-3ae3-4e64-bb6d-f7bf2d354c78",
              "parent_uuid": "8c8af813-e93e-4714-97af-07451965acb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73ccd328-5b27-4fa4-8121-abdf01edd318",
                  "parent_uuid": "c01263e3-3ae3-4e64-bb6d-f7bf2d354c78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68622bb1-fd5e-437f-bedc-9e3bdb83b9d0",
              "parent_uuid": "8c8af813-e93e-4714-97af-07451965acb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6ac4df7-c5e3-4b35-bc04-1691f81bd544",
                  "parent_uuid": "68622bb1-fd5e-437f-bedc-9e3bdb83b9d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "191cfeec-5118-41c0-b528-47a9b232519b",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c6c53ea-cde2-415b-8408-94fa67f90b47",
              "parent_uuid": "191cfeec-5118-41c0-b528-47a9b232519b",
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
              "uuid": "9d67fc9f-9c66-4000-89e2-b5951a17dbb0",
              "parent_uuid": "191cfeec-5118-41c0-b528-47a9b232519b",
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
              "uuid": "2bdfa612-650c-4d83-b6c8-79f94f338ec0",
              "parent_uuid": "191cfeec-5118-41c0-b528-47a9b232519b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8286f591-cdab-49c1-a70b-91cbd3418df3",
                  "parent_uuid": "2bdfa612-650c-4d83-b6c8-79f94f338ec0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44d58b2a-26c0-4d99-a981-38fee498a75c",
              "parent_uuid": "191cfeec-5118-41c0-b528-47a9b232519b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef132847-9a4d-4ebc-a41a-52f363e411e1",
                  "parent_uuid": "44d58b2a-26c0-4d99-a981-38fee498a75c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b058a610-3ba2-4163-95cf-b08bb98a962d",
              "parent_uuid": "191cfeec-5118-41c0-b528-47a9b232519b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4eca1530-e368-495e-9761-b52f3fbe1187",
                  "parent_uuid": "b058a610-3ba2-4163-95cf-b08bb98a962d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0cb6ffb-57d7-4b22-bada-5e2ab48337d7",
              "parent_uuid": "191cfeec-5118-41c0-b528-47a9b232519b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ba72e10-6147-4a3c-a025-571f19aad731",
                  "parent_uuid": "f0cb6ffb-57d7-4b22-bada-5e2ab48337d7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a3125b79-8ad8-4cc8-8a51-6a253db47a42",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a6f2597-190f-4d9e-9e7b-cb20092091c5",
              "parent_uuid": "a3125b79-8ad8-4cc8-8a51-6a253db47a42",
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
              "uuid": "d0c9ed81-d16f-438f-ab8d-3a391d71bcb4",
              "parent_uuid": "a3125b79-8ad8-4cc8-8a51-6a253db47a42",
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
              "uuid": "48107464-582f-4773-b5fb-b269e474ed18",
              "parent_uuid": "a3125b79-8ad8-4cc8-8a51-6a253db47a42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6aa8e83f-2f45-4982-ab23-d81d77ea5d55",
                  "parent_uuid": "48107464-582f-4773-b5fb-b269e474ed18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8422726-f61a-4c87-b0ce-fe3eb7c7f053",
              "parent_uuid": "a3125b79-8ad8-4cc8-8a51-6a253db47a42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c4203be-b9ea-456d-b339-614eecca2615",
                  "parent_uuid": "e8422726-f61a-4c87-b0ce-fe3eb7c7f053",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "635ce404-d582-42ee-a3a3-13d4ae5ed8ca",
              "parent_uuid": "a3125b79-8ad8-4cc8-8a51-6a253db47a42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d52fa8fc-dbfc-435a-95ff-005fb34b45f7",
                  "parent_uuid": "635ce404-d582-42ee-a3a3-13d4ae5ed8ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9150e336-5cd4-4f35-8973-aa338a2e5c1e",
              "parent_uuid": "a3125b79-8ad8-4cc8-8a51-6a253db47a42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1111a23d-4ca5-4332-b440-d6344f53120f",
                  "parent_uuid": "9150e336-5cd4-4f35-8973-aa338a2e5c1e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c030e05f-40c2-4552-aed6-19cedf695f68",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "426c11e1-5bc2-45dd-84b3-85f52d8ff178",
              "parent_uuid": "c030e05f-40c2-4552-aed6-19cedf695f68",
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
          "uuid": "748bd9ad-5db3-45bf-b92d-8cd120751f2c",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "567f5933-f207-46ee-8fcc-fc672ffcc33b",
              "parent_uuid": "748bd9ad-5db3-45bf-b92d-8cd120751f2c",
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
              "uuid": "72fbbfde-85e6-489e-bff6-3e6ad71dbdd8",
              "parent_uuid": "748bd9ad-5db3-45bf-b92d-8cd120751f2c",
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
              "uuid": "bc42b795-4017-4ba3-a694-62689cc7742d",
              "parent_uuid": "748bd9ad-5db3-45bf-b92d-8cd120751f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "daf766a6-8362-4a99-9978-63ea5965fc63",
                  "parent_uuid": "bc42b795-4017-4ba3-a694-62689cc7742d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23615ca0-fdd0-4cb3-b64b-a77e416ebf18",
              "parent_uuid": "748bd9ad-5db3-45bf-b92d-8cd120751f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "048c9d93-f370-4b9b-add2-831b84850d48",
                  "parent_uuid": "23615ca0-fdd0-4cb3-b64b-a77e416ebf18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e31d261d-9b6b-4f04-84cb-a93a568ee940",
              "parent_uuid": "748bd9ad-5db3-45bf-b92d-8cd120751f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44b7b2a3-38a9-465d-9bfb-d5e89c20501e",
                  "parent_uuid": "e31d261d-9b6b-4f04-84cb-a93a568ee940",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d4d15a7-1134-4a2b-901e-d0ff64d9da73",
              "parent_uuid": "748bd9ad-5db3-45bf-b92d-8cd120751f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ce57f71-f340-4a65-9e0a-fce86a4e741e",
                  "parent_uuid": "7d4d15a7-1134-4a2b-901e-d0ff64d9da73",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b687a9fe-5520-43b9-9cf0-9e354deefabc",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a476dad8-95d7-4342-a998-e43e315278e6",
              "parent_uuid": "b687a9fe-5520-43b9-9cf0-9e354deefabc",
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
              "uuid": "3f609cc1-07ed-4b9b-b79a-a29a10f17174",
              "parent_uuid": "b687a9fe-5520-43b9-9cf0-9e354deefabc",
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
              "uuid": "5c9ca171-9673-486c-8e32-cf50b380b78d",
              "parent_uuid": "b687a9fe-5520-43b9-9cf0-9e354deefabc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23d567c4-c7e2-4a5c-9148-16c25e8fab52",
                  "parent_uuid": "5c9ca171-9673-486c-8e32-cf50b380b78d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16a4482b-4fda-46de-83a7-6d8c5f836854",
              "parent_uuid": "b687a9fe-5520-43b9-9cf0-9e354deefabc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b482af9a-12b0-44ba-96a3-211e282453ac",
                  "parent_uuid": "16a4482b-4fda-46de-83a7-6d8c5f836854",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "605b3a21-2f35-4366-9447-2ebddbaf07da",
              "parent_uuid": "b687a9fe-5520-43b9-9cf0-9e354deefabc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcee8ffd-1684-42d2-ac59-94191ec8134f",
                  "parent_uuid": "605b3a21-2f35-4366-9447-2ebddbaf07da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4932c841-d614-49b1-9417-166ba8421951",
              "parent_uuid": "b687a9fe-5520-43b9-9cf0-9e354deefabc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b64a7467-2149-4a55-9fd3-ea235c98699d",
                  "parent_uuid": "4932c841-d614-49b1-9417-166ba8421951",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cf062f17-7f32-493d-8461-8ba20c461748",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b55e235-2148-4619-8b18-554f7ddfed91",
              "parent_uuid": "cf062f17-7f32-493d-8461-8ba20c461748",
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
              "uuid": "1be40758-d5b8-456a-955f-f2e85f251b55",
              "parent_uuid": "cf062f17-7f32-493d-8461-8ba20c461748",
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
              "uuid": "9a9c48a0-1e6b-4137-9c9d-714d63722b44",
              "parent_uuid": "cf062f17-7f32-493d-8461-8ba20c461748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b29baa59-c44e-4d5d-8a61-98239f7df41f",
                  "parent_uuid": "9a9c48a0-1e6b-4137-9c9d-714d63722b44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fab35820-f328-46fb-ae7d-f217531bfa47",
              "parent_uuid": "cf062f17-7f32-493d-8461-8ba20c461748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d88b8e2b-6d62-47e9-b026-f152f7aed413",
                  "parent_uuid": "fab35820-f328-46fb-ae7d-f217531bfa47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4c9879f-f21f-4da8-af3f-ff0c13a3ebd2",
              "parent_uuid": "cf062f17-7f32-493d-8461-8ba20c461748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "263971c9-c69c-47c2-8832-5db8dc84913a",
                  "parent_uuid": "f4c9879f-f21f-4da8-af3f-ff0c13a3ebd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94b9934f-70e4-46ca-9111-9cf7764df4f7",
              "parent_uuid": "cf062f17-7f32-493d-8461-8ba20c461748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d56119d-06c5-4cc7-98d8-6462a642a2a8",
                  "parent_uuid": "94b9934f-70e4-46ca-9111-9cf7764df4f7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "294f70e5-54e8-4cc8-b479-5cf1dce55e59",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fab44498-27fe-469c-ade9-6311b3d62d9b",
              "parent_uuid": "294f70e5-54e8-4cc8-b479-5cf1dce55e59",
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
              "uuid": "839c07f1-813c-4def-9117-6689e839b791",
              "parent_uuid": "294f70e5-54e8-4cc8-b479-5cf1dce55e59",
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
              "uuid": "06b8ce8b-f6c2-46eb-a2d3-885c68da60f8",
              "parent_uuid": "294f70e5-54e8-4cc8-b479-5cf1dce55e59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "893adf48-23a1-4222-a4c9-c0f2e5603f82",
                  "parent_uuid": "06b8ce8b-f6c2-46eb-a2d3-885c68da60f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "710a833f-f536-4045-9112-a240a6b4d3b7",
              "parent_uuid": "294f70e5-54e8-4cc8-b479-5cf1dce55e59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdded520-bb6f-4046-8f69-1999e32e4001",
                  "parent_uuid": "710a833f-f536-4045-9112-a240a6b4d3b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3dd120a4-82b9-4389-8758-f3a2f35bf280",
              "parent_uuid": "294f70e5-54e8-4cc8-b479-5cf1dce55e59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "014e5413-5d02-446b-b491-c61942ae0624",
                  "parent_uuid": "3dd120a4-82b9-4389-8758-f3a2f35bf280",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba366af0-0404-43b0-885b-7abe2377ac62",
              "parent_uuid": "294f70e5-54e8-4cc8-b479-5cf1dce55e59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ed207cd-b0b8-4e39-83b2-f0e79e8626a7",
                  "parent_uuid": "ba366af0-0404-43b0-885b-7abe2377ac62",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "46844f98-9778-46d4-b663-3da28c79bc64",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "454e2998-970f-473b-a344-b9a1925d9f92",
              "parent_uuid": "46844f98-9778-46d4-b663-3da28c79bc64",
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
              "uuid": "2e599fad-31d4-4dcf-8c7e-4b76252a1ba7",
              "parent_uuid": "46844f98-9778-46d4-b663-3da28c79bc64",
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
              "uuid": "3a8c805d-a274-4b69-bab4-caf29c3681a6",
              "parent_uuid": "46844f98-9778-46d4-b663-3da28c79bc64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb5d7cd2-1613-4bb1-81df-153bc4030cae",
                  "parent_uuid": "3a8c805d-a274-4b69-bab4-caf29c3681a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afc296ea-542d-4c73-9de7-d8b26fa0eac4",
              "parent_uuid": "46844f98-9778-46d4-b663-3da28c79bc64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04240c5b-2aad-4e32-9d7d-7d4b48a4d3ec",
                  "parent_uuid": "afc296ea-542d-4c73-9de7-d8b26fa0eac4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27e28d9d-b424-4fca-8263-99a3260c7d26",
              "parent_uuid": "46844f98-9778-46d4-b663-3da28c79bc64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86c8ca07-c80e-427d-8983-8a9532cb8350",
                  "parent_uuid": "27e28d9d-b424-4fca-8263-99a3260c7d26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b7af106-9afe-45df-9964-e73f7a2b7519",
              "parent_uuid": "46844f98-9778-46d4-b663-3da28c79bc64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19fe08af-2199-4d69-9f87-016c9bc1e483",
                  "parent_uuid": "7b7af106-9afe-45df-9964-e73f7a2b7519",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1d986532-e448-412f-bf24-5e45a62fae20",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a57f5e5-c7ac-44b4-9e10-9a98564674ae",
              "parent_uuid": "1d986532-e448-412f-bf24-5e45a62fae20",
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
          "uuid": "7ba4014f-ca81-4335-80d3-d2235d772f48",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "359b627b-452e-4e6a-bf1e-822ac891de72",
              "parent_uuid": "7ba4014f-ca81-4335-80d3-d2235d772f48",
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
          "uuid": "f227a18a-7eca-4c2e-adb8-21c1b0d63b2d",
          "parent_uuid": "927b2f0e-e1f9-48ca-bd0f-3c526c6ac249",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8364f16e-d358-461e-a479-2ec10da87576",
              "parent_uuid": "f227a18a-7eca-4c2e-adb8-21c1b0d63b2d",
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
                  "uuid": "056f0632-d7e0-4059-b99a-6a9db4cda2fa",
                  "parent_uuid": "8364f16e-d358-461e-a479-2ec10da87576",
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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
		,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '58A6D34C-2D4B-4F8A-B831-60488591AEDC'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

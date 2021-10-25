
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
  "uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "8db42488-742f-446b-807c-d47cf3434e4b",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "1f98ac13-edb6-44bc-ba88-2b989a65101b",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "8572f2e1-07f7-49d2-9130-f7303bc772e6",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "9c7c9bcb-4ce5-4fd3-bc2d-f47d5ae96953",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "14a93899-2a32-4db8-9d42-e06e609acf94",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "e49444f9-f0f5-40e2-a26a-43cb556cc6a8",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "1ea856ff-7bb0-430a-9ed9-4b8189482981",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
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
      "uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
      "parent_uuid": "e7edb45b-e0f5-4537-af0b-c4d43af75090",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "080a8be6-3934-4909-8a36-9e9f44c9a6ff",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "c77c962e-4907-48bd-a33e-11f1139fe307",
              "parent_uuid": "080a8be6-3934-4909-8a36-9e9f44c9a6ff",
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
              "uuid": "19593cf7-47de-4fd9-b9fa-77fc4103bfea",
              "parent_uuid": "080a8be6-3934-4909-8a36-9e9f44c9a6ff",
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
              "uuid": "5dadca1e-4880-4f23-9d6d-d68cfb803ef4",
              "parent_uuid": "080a8be6-3934-4909-8a36-9e9f44c9a6ff",
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
              "uuid": "91970d7c-f3d9-436b-8c51-b943821c4661",
              "parent_uuid": "080a8be6-3934-4909-8a36-9e9f44c9a6ff",
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
          "uuid": "b79580ab-b2c5-4891-92d5-c002ff42b1d9",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "ec2664a4-7fc2-40ba-8fc4-05cfbe107088",
              "parent_uuid": "b79580ab-b2c5-4891-92d5-c002ff42b1d9",
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
              "uuid": "0dbfb9f7-40f9-40f8-9196-2e85efa7f200",
              "parent_uuid": "b79580ab-b2c5-4891-92d5-c002ff42b1d9",
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
              "uuid": "ef6c1074-8c37-4587-b8ae-c6da1fefeab1",
              "parent_uuid": "b79580ab-b2c5-4891-92d5-c002ff42b1d9",
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
              "uuid": "77b8d55f-7f79-4ef9-8461-b78ac12e60e9",
              "parent_uuid": "b79580ab-b2c5-4891-92d5-c002ff42b1d9",
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
          "uuid": "b36908cd-bdb1-40b6-b55f-c2d62aa5d60b",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "836562fe-3b25-4793-b26d-844fc1a5f571",
              "parent_uuid": "b36908cd-bdb1-40b6-b55f-c2d62aa5d60b",
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
              "uuid": "470a07a0-3aed-42b1-aaef-944cca6f779e",
              "parent_uuid": "b36908cd-bdb1-40b6-b55f-c2d62aa5d60b",
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
              "uuid": "1048eebf-a267-45fc-b571-b5cadc685f57",
              "parent_uuid": "b36908cd-bdb1-40b6-b55f-c2d62aa5d60b",
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
              "uuid": "b7b11cdc-1ea5-4fe8-9275-e742acece9f1",
              "parent_uuid": "b36908cd-bdb1-40b6-b55f-c2d62aa5d60b",
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
              "uuid": "0b97fad6-d587-49bb-a009-bc03ca115628",
              "parent_uuid": "b36908cd-bdb1-40b6-b55f-c2d62aa5d60b",
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
              "uuid": "d660899b-c56d-479e-b5d6-82dd7cc0a624",
              "parent_uuid": "b36908cd-bdb1-40b6-b55f-c2d62aa5d60b",
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
          "uuid": "9189bcb8-8fca-406b-a0b3-b58d6acea3e3",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0ff47e07-3927-4d89-83ec-68b47b78eda4",
              "parent_uuid": "9189bcb8-8fca-406b-a0b3-b58d6acea3e3",
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
          "uuid": "98ac7ec8-f62b-422e-8cb7-0bad7f0a875c",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f8e56e3-9bb4-47a0-8bc9-4889b220eeb8",
              "parent_uuid": "98ac7ec8-f62b-422e-8cb7-0bad7f0a875c",
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
              "uuid": "657be45f-6fc9-4d3a-a975-1d9b69339fe5",
              "parent_uuid": "98ac7ec8-f62b-422e-8cb7-0bad7f0a875c",
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
              "uuid": "e85849ec-7482-4a0a-8f55-7d0eb1b933c6",
              "parent_uuid": "98ac7ec8-f62b-422e-8cb7-0bad7f0a875c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6cf65814-0f1a-448d-bdfe-4c0e21b1aa65",
                  "parent_uuid": "e85849ec-7482-4a0a-8f55-7d0eb1b933c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b6f3b46-6a8f-4d6a-b612-391452082af8",
              "parent_uuid": "98ac7ec8-f62b-422e-8cb7-0bad7f0a875c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13a2c3c2-a202-4833-8c35-8d56cb5ef6b5",
                  "parent_uuid": "7b6f3b46-6a8f-4d6a-b612-391452082af8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6a90008-1321-4981-9975-3bef088a482e",
              "parent_uuid": "98ac7ec8-f62b-422e-8cb7-0bad7f0a875c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97031783-4aac-496c-a8c9-1b69c4cc18d0",
                  "parent_uuid": "b6a90008-1321-4981-9975-3bef088a482e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4dd81e8c-828d-4621-a14b-5eadaa4395a6",
              "parent_uuid": "98ac7ec8-f62b-422e-8cb7-0bad7f0a875c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d250a9fd-a134-416d-b602-98033d588ea8",
                  "parent_uuid": "4dd81e8c-828d-4621-a14b-5eadaa4395a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "17ffdde2-2d23-4f88-916e-d94191aae9e8",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d3bcf74-7345-4f1b-98ed-b66bf538ef12",
              "parent_uuid": "17ffdde2-2d23-4f88-916e-d94191aae9e8",
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
              "uuid": "36097f9f-bc20-4c9f-9b59-46a8edce1e92",
              "parent_uuid": "17ffdde2-2d23-4f88-916e-d94191aae9e8",
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
              "uuid": "2a185089-c0b3-4896-8e6b-5134e9d97691",
              "parent_uuid": "17ffdde2-2d23-4f88-916e-d94191aae9e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abdacf0e-3db9-4cda-b83c-ec4d2b83e8cf",
                  "parent_uuid": "2a185089-c0b3-4896-8e6b-5134e9d97691",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b208eb58-48cd-44f0-8871-f6aaadcdf8eb",
              "parent_uuid": "17ffdde2-2d23-4f88-916e-d94191aae9e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7370dc70-99a2-4ac2-bb8d-7f5bd9d8302e",
                  "parent_uuid": "b208eb58-48cd-44f0-8871-f6aaadcdf8eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b5eb5a7-0675-4513-acf7-16cd696eebb7",
              "parent_uuid": "17ffdde2-2d23-4f88-916e-d94191aae9e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49e9a770-3676-4f77-a977-ab443222765e",
                  "parent_uuid": "9b5eb5a7-0675-4513-acf7-16cd696eebb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "215ba755-3b1a-49ff-867d-3f98ae38b92d",
              "parent_uuid": "17ffdde2-2d23-4f88-916e-d94191aae9e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10158ac7-c667-4cc8-b747-e54546f614eb",
                  "parent_uuid": "215ba755-3b1a-49ff-867d-3f98ae38b92d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3ebf5b2f-afc0-44bf-a629-cdebe3c12f21",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10704925-4f7b-477d-bac6-8b552292252a",
              "parent_uuid": "3ebf5b2f-afc0-44bf-a629-cdebe3c12f21",
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
              "uuid": "ec7ec4a3-531a-4013-afb4-6ea5672cb8d9",
              "parent_uuid": "3ebf5b2f-afc0-44bf-a629-cdebe3c12f21",
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
              "uuid": "af61bad7-521e-4a4e-bd4f-777534bea6c6",
              "parent_uuid": "3ebf5b2f-afc0-44bf-a629-cdebe3c12f21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc01a3ea-6d85-4e33-9c04-aa0b55c14955",
                  "parent_uuid": "af61bad7-521e-4a4e-bd4f-777534bea6c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d11c5c1-1c3f-4c42-af74-35eaf9d87803",
              "parent_uuid": "3ebf5b2f-afc0-44bf-a629-cdebe3c12f21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04aee971-82fa-4d9d-8035-75e4d0a395f2",
                  "parent_uuid": "1d11c5c1-1c3f-4c42-af74-35eaf9d87803",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c968826-36ee-47df-aa27-71e0137223a7",
              "parent_uuid": "3ebf5b2f-afc0-44bf-a629-cdebe3c12f21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46d66f4b-2de8-4eb7-9f32-ef30199b3bec",
                  "parent_uuid": "2c968826-36ee-47df-aa27-71e0137223a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f0ad33f-0d45-480b-80da-a9d09ce9ac78",
              "parent_uuid": "3ebf5b2f-afc0-44bf-a629-cdebe3c12f21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "105f98d6-5c89-4b76-b9c2-923b2da36954",
                  "parent_uuid": "6f0ad33f-0d45-480b-80da-a9d09ce9ac78",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fc201d47-1c9a-47d8-ac83-51219587ba69",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb020d30-8b14-4720-b223-93f7e2f728e8",
              "parent_uuid": "fc201d47-1c9a-47d8-ac83-51219587ba69",
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
              "uuid": "f6b4623f-9311-46b8-bc4b-cda8d7192b36",
              "parent_uuid": "fc201d47-1c9a-47d8-ac83-51219587ba69",
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
              "uuid": "4e8f0996-ca43-4668-9ad6-b0beeaaf0e48",
              "parent_uuid": "fc201d47-1c9a-47d8-ac83-51219587ba69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f0a964b-de89-45f9-b323-eae0e99c7237",
                  "parent_uuid": "4e8f0996-ca43-4668-9ad6-b0beeaaf0e48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "109ce1bc-e40c-4809-aa1c-f3525cd8bdfd",
              "parent_uuid": "fc201d47-1c9a-47d8-ac83-51219587ba69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df713153-befd-4503-99d6-16e3ad2a7d9d",
                  "parent_uuid": "109ce1bc-e40c-4809-aa1c-f3525cd8bdfd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c05a9f1c-406a-46cf-8875-4216eebf5ac8",
              "parent_uuid": "fc201d47-1c9a-47d8-ac83-51219587ba69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f35d299f-de90-48fc-8e80-dadcac9154e9",
                  "parent_uuid": "c05a9f1c-406a-46cf-8875-4216eebf5ac8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43aec61d-ab60-46b6-b0bb-7d241fd2239f",
              "parent_uuid": "fc201d47-1c9a-47d8-ac83-51219587ba69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "325d83cc-b189-4e07-8d72-db85f03582fe",
                  "parent_uuid": "43aec61d-ab60-46b6-b0bb-7d241fd2239f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b56c9e4f-32bf-41b6-ab95-858ceef1b756",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9532392-f845-4ce1-bee9-f0febb1d40ec",
              "parent_uuid": "b56c9e4f-32bf-41b6-ab95-858ceef1b756",
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
              "uuid": "d87dc85f-1b94-48e4-9d66-33e2078ea1de",
              "parent_uuid": "b56c9e4f-32bf-41b6-ab95-858ceef1b756",
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
              "uuid": "5c9013d1-a727-4227-8d45-aacd1064e048",
              "parent_uuid": "b56c9e4f-32bf-41b6-ab95-858ceef1b756",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c72fd151-7d2d-4404-8f5d-97a9bbb23f63",
                  "parent_uuid": "5c9013d1-a727-4227-8d45-aacd1064e048",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bd97928-dfed-462b-af6f-d00ce14956ca",
              "parent_uuid": "b56c9e4f-32bf-41b6-ab95-858ceef1b756",
              "tagName": "td",
              "properties": [
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
                  "uuid": "52c81971-0228-4208-ae01-9550a0ab52d0",
                  "parent_uuid": "1bd97928-dfed-462b-af6f-d00ce14956ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c416c6d4-532f-4b8b-ad94-786f53fcd5e0",
              "parent_uuid": "b56c9e4f-32bf-41b6-ab95-858ceef1b756",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2101d4b9-fe1a-4551-bbcc-465e8ba1f59f",
                  "parent_uuid": "c416c6d4-532f-4b8b-ad94-786f53fcd5e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a749111-407f-4c90-80eb-9eb26b6dfef4",
              "parent_uuid": "b56c9e4f-32bf-41b6-ab95-858ceef1b756",
              "tagName": "td",
              "properties": [
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
                  "uuid": "54297ec4-e639-44b0-8630-09d8b2c54047",
                  "parent_uuid": "2a749111-407f-4c90-80eb-9eb26b6dfef4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e7f00bf0-8ea1-4dd3-935b-0c83779b548f",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f041d719-20fc-459f-a91b-edfe80ff26d2",
              "parent_uuid": "e7f00bf0-8ea1-4dd3-935b-0c83779b548f",
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
              "uuid": "cef8b5bf-f971-4b0f-bd6b-6cb17db57bc9",
              "parent_uuid": "e7f00bf0-8ea1-4dd3-935b-0c83779b548f",
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
              "uuid": "f07ef03a-2e8e-4971-8aba-2792fa1cac44",
              "parent_uuid": "e7f00bf0-8ea1-4dd3-935b-0c83779b548f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77ce9ea3-7f6d-4eb0-afcd-243bc03c85a3",
                  "parent_uuid": "f07ef03a-2e8e-4971-8aba-2792fa1cac44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee65e86f-05a5-4241-86fe-39ef8988bea8",
              "parent_uuid": "e7f00bf0-8ea1-4dd3-935b-0c83779b548f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42495dd6-2689-41ee-8961-344b2b083dc6",
                  "parent_uuid": "ee65e86f-05a5-4241-86fe-39ef8988bea8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66640f0e-b5a3-4843-8297-d5d1d97e356f",
              "parent_uuid": "e7f00bf0-8ea1-4dd3-935b-0c83779b548f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa01c7cc-3bfb-44a4-8931-bd9ac2b35b09",
                  "parent_uuid": "66640f0e-b5a3-4843-8297-d5d1d97e356f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "570a6cd4-de29-41ee-b59d-559d7553b5de",
              "parent_uuid": "e7f00bf0-8ea1-4dd3-935b-0c83779b548f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6cfba79d-bc40-4403-8677-07f217df8bb8",
                  "parent_uuid": "570a6cd4-de29-41ee-b59d-559d7553b5de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1fe8d1c1-7697-4316-b32e-4a27715498ed",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10f3a6c3-e39e-4cb8-b9cc-b9548c2ddff4",
              "parent_uuid": "1fe8d1c1-7697-4316-b32e-4a27715498ed",
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
              "uuid": "8df5736d-a874-41c7-b911-9ba8d749a068",
              "parent_uuid": "1fe8d1c1-7697-4316-b32e-4a27715498ed",
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
              "uuid": "e3452682-2b6f-43fc-b87e-ac78fbc1894d",
              "parent_uuid": "1fe8d1c1-7697-4316-b32e-4a27715498ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8998559-a54c-4370-b2af-65294a216837",
                  "parent_uuid": "e3452682-2b6f-43fc-b87e-ac78fbc1894d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28e72662-01e1-49b1-aa6e-dc656994c291",
              "parent_uuid": "1fe8d1c1-7697-4316-b32e-4a27715498ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5d7e773-ed0e-4c9b-aa4e-c7b362520739",
                  "parent_uuid": "28e72662-01e1-49b1-aa6e-dc656994c291",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "221e55cf-1d57-4d56-90d9-44e668980a1c",
              "parent_uuid": "1fe8d1c1-7697-4316-b32e-4a27715498ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adc1f829-fac8-4372-8cda-d677c2f8dd94",
                  "parent_uuid": "221e55cf-1d57-4d56-90d9-44e668980a1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04c40309-f2ba-4445-b7ba-73f39d973fbf",
              "parent_uuid": "1fe8d1c1-7697-4316-b32e-4a27715498ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bece8a8-faf3-4654-b147-db64e3f77c19",
                  "parent_uuid": "04c40309-f2ba-4445-b7ba-73f39d973fbf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c649f593-1082-4d13-9956-f4f229519eb0",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c703883b-3c42-4893-9bab-850e2ceb8cfb",
              "parent_uuid": "c649f593-1082-4d13-9956-f4f229519eb0",
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
              "uuid": "8e7b2d35-95ef-4a6f-a1a5-5983a91b9ee3",
              "parent_uuid": "c649f593-1082-4d13-9956-f4f229519eb0",
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
              "uuid": "b3803175-b466-4e3c-beb2-4e8256aa3c98",
              "parent_uuid": "c649f593-1082-4d13-9956-f4f229519eb0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d67bdc7f-74e8-4156-8864-f0b935999b13",
                  "parent_uuid": "b3803175-b466-4e3c-beb2-4e8256aa3c98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75c484d2-0b97-4f24-9be3-1c767afd6358",
              "parent_uuid": "c649f593-1082-4d13-9956-f4f229519eb0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f913b218-5659-48c8-bd10-b0088a2e4206",
                  "parent_uuid": "75c484d2-0b97-4f24-9be3-1c767afd6358",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a1e7744-3664-4bc5-8b4a-2883e0b6794d",
              "parent_uuid": "c649f593-1082-4d13-9956-f4f229519eb0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e132e2f-2987-47cd-b564-38555988904f",
                  "parent_uuid": "5a1e7744-3664-4bc5-8b4a-2883e0b6794d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac80a637-5774-424e-b9cc-4dd25de66cac",
              "parent_uuid": "c649f593-1082-4d13-9956-f4f229519eb0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01a8aad3-2e40-4cb1-a876-d4e3478f9312",
                  "parent_uuid": "ac80a637-5774-424e-b9cc-4dd25de66cac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "131efb72-5c7c-46a3-925a-771740db4998",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f69fe404-86fe-4c0f-aa18-91cfa7ead1a6",
              "parent_uuid": "131efb72-5c7c-46a3-925a-771740db4998",
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
              "uuid": "fe3aa62c-2ec9-4830-8e9a-784fb75b9313",
              "parent_uuid": "131efb72-5c7c-46a3-925a-771740db4998",
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
              "uuid": "1658662a-6674-4805-88d5-c097bfaf0b26",
              "parent_uuid": "131efb72-5c7c-46a3-925a-771740db4998",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac3a3969-3e55-4bcc-a6ae-17d5bd61c291",
                  "parent_uuid": "1658662a-6674-4805-88d5-c097bfaf0b26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce03a086-eef5-41da-89e8-7d910754e825",
              "parent_uuid": "131efb72-5c7c-46a3-925a-771740db4998",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbf7c35c-afba-4133-a466-0f8ed2ca9017",
                  "parent_uuid": "ce03a086-eef5-41da-89e8-7d910754e825",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06c40f53-e1b4-4fa7-85ad-c7e2311f497f",
              "parent_uuid": "131efb72-5c7c-46a3-925a-771740db4998",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e30b9ba3-4e78-465d-a3f1-ebce751d0634",
                  "parent_uuid": "06c40f53-e1b4-4fa7-85ad-c7e2311f497f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1565297a-05d5-45df-b118-602c1d1747a6",
              "parent_uuid": "131efb72-5c7c-46a3-925a-771740db4998",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b6e12bd-0c27-4dbc-baf0-ddb491f07b71",
                  "parent_uuid": "1565297a-05d5-45df-b118-602c1d1747a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bfc82cfc-7014-44e3-a671-8909744dae85",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff3a28f7-41c4-4bb1-8285-353d71f69de7",
              "parent_uuid": "bfc82cfc-7014-44e3-a671-8909744dae85",
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
              "uuid": "f0654e61-7b87-4c85-a801-3aed4b8736c3",
              "parent_uuid": "bfc82cfc-7014-44e3-a671-8909744dae85",
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
              "uuid": "4d29e8a6-615b-4baf-9423-78ad94fff333",
              "parent_uuid": "bfc82cfc-7014-44e3-a671-8909744dae85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd9cd43c-29f2-49c6-9c9b-e8eb0537a89f",
                  "parent_uuid": "4d29e8a6-615b-4baf-9423-78ad94fff333",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c65ee85-638a-4c1f-b2e8-a5a3f37bec7d",
              "parent_uuid": "bfc82cfc-7014-44e3-a671-8909744dae85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "896f23b9-43ae-44d8-8dce-600e9c967888",
                  "parent_uuid": "0c65ee85-638a-4c1f-b2e8-a5a3f37bec7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "525a904f-fc77-4c57-be0a-8bc55a147486",
              "parent_uuid": "bfc82cfc-7014-44e3-a671-8909744dae85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "deddd02b-ea09-4931-8a94-9c1ae9e2bdbc",
                  "parent_uuid": "525a904f-fc77-4c57-be0a-8bc55a147486",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "740f0360-4487-456e-98fa-01670103684e",
              "parent_uuid": "bfc82cfc-7014-44e3-a671-8909744dae85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c02d44b-dd08-4ce1-8e27-2deec3068ee2",
                  "parent_uuid": "740f0360-4487-456e-98fa-01670103684e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c01ca9a2-cd54-4298-ae4b-1c5b68fbb8f1",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf8ef31d-3270-4f66-b65b-daa69afb554f",
              "parent_uuid": "c01ca9a2-cd54-4298-ae4b-1c5b68fbb8f1",
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
              "uuid": "2c9dbb4c-a798-4542-a043-f808a1357ed0",
              "parent_uuid": "c01ca9a2-cd54-4298-ae4b-1c5b68fbb8f1",
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
              "uuid": "710c6830-f8c4-40f7-949d-552080766ebc",
              "parent_uuid": "c01ca9a2-cd54-4298-ae4b-1c5b68fbb8f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c9efc18-0c48-473f-9b32-e61cb4087aec",
                  "parent_uuid": "710c6830-f8c4-40f7-949d-552080766ebc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d66c7be-88f3-4ec6-92a6-cbcb76ccb0cb",
              "parent_uuid": "c01ca9a2-cd54-4298-ae4b-1c5b68fbb8f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa32aa4f-3920-4458-a411-daeeb6a1cca7",
                  "parent_uuid": "0d66c7be-88f3-4ec6-92a6-cbcb76ccb0cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36adae17-36d1-49fd-aa54-ed8fdf5cd2c4",
              "parent_uuid": "c01ca9a2-cd54-4298-ae4b-1c5b68fbb8f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93a83f39-9ea6-4308-b590-74ca09ca847a",
                  "parent_uuid": "36adae17-36d1-49fd-aa54-ed8fdf5cd2c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ffe7618f-fc39-4c35-9edb-a9a2fe8033a6",
              "parent_uuid": "c01ca9a2-cd54-4298-ae4b-1c5b68fbb8f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc15cb92-37e1-4c7a-bef8-124d6f60f46b",
                  "parent_uuid": "ffe7618f-fc39-4c35-9edb-a9a2fe8033a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2c8165df-00f9-497a-a209-12c6b9b99fce",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b96e5964-bcc3-498c-9853-106363b11782",
              "parent_uuid": "2c8165df-00f9-497a-a209-12c6b9b99fce",
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
              "uuid": "a757cb4b-8b7b-400d-b224-15fbf9cca035",
              "parent_uuid": "2c8165df-00f9-497a-a209-12c6b9b99fce",
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
              "uuid": "d300c768-4829-4902-87cb-37f514b42e40",
              "parent_uuid": "2c8165df-00f9-497a-a209-12c6b9b99fce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "561d99ea-4a91-4e57-a9eb-8304cec39c93",
                  "parent_uuid": "d300c768-4829-4902-87cb-37f514b42e40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f79adc8d-f99d-40a6-bec1-760696d3ca25",
              "parent_uuid": "2c8165df-00f9-497a-a209-12c6b9b99fce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3822fe80-f417-45ba-8ff3-034be9ed8501",
                  "parent_uuid": "f79adc8d-f99d-40a6-bec1-760696d3ca25",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e3d189e-41e2-4291-8cc6-afacdc880929",
              "parent_uuid": "2c8165df-00f9-497a-a209-12c6b9b99fce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "000b9838-b13c-423f-b220-1f2f0df59c62",
                  "parent_uuid": "9e3d189e-41e2-4291-8cc6-afacdc880929",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e1ecbfc-fb9d-473e-b297-4059991fcc50",
              "parent_uuid": "2c8165df-00f9-497a-a209-12c6b9b99fce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19f9a78a-2974-473f-9744-078e4c29425c",
                  "parent_uuid": "0e1ecbfc-fb9d-473e-b297-4059991fcc50",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2c5d4ca7-bd50-4cdd-ba8a-52a38b96659b",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c909b1a-72ef-488c-9932-1c16d50d3a20",
              "parent_uuid": "2c5d4ca7-bd50-4cdd-ba8a-52a38b96659b",
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
              "uuid": "8a22b9da-e44b-4c81-95bf-5beea5f5849e",
              "parent_uuid": "2c5d4ca7-bd50-4cdd-ba8a-52a38b96659b",
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
              "uuid": "d31beb49-95b4-4364-a779-4a431f7e0ed2",
              "parent_uuid": "2c5d4ca7-bd50-4cdd-ba8a-52a38b96659b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2766580f-98ba-4da8-8204-4723fb6ae1a2",
                  "parent_uuid": "d31beb49-95b4-4364-a779-4a431f7e0ed2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7001914-7e19-4023-b858-045bc3e4e197",
              "parent_uuid": "2c5d4ca7-bd50-4cdd-ba8a-52a38b96659b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "955425b1-ed7d-4bfa-8268-ab72cedd9aad",
                  "parent_uuid": "b7001914-7e19-4023-b858-045bc3e4e197",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5a98021-36d4-415e-8876-c095f5c729bb",
              "parent_uuid": "2c5d4ca7-bd50-4cdd-ba8a-52a38b96659b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f927f2c-7e89-40b3-9ffc-7853852151fe",
                  "parent_uuid": "d5a98021-36d4-415e-8876-c095f5c729bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56065bb5-f372-4c9e-b4eb-000d79caa663",
              "parent_uuid": "2c5d4ca7-bd50-4cdd-ba8a-52a38b96659b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "801fa888-7ecd-41f6-942c-43a87d839b72",
                  "parent_uuid": "56065bb5-f372-4c9e-b4eb-000d79caa663",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b2ad46b4-dfcd-42ae-a1aa-e8f257f2a23b",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "604630fe-4c51-4465-8f6e-13425c575bd6",
              "parent_uuid": "b2ad46b4-dfcd-42ae-a1aa-e8f257f2a23b",
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
              "uuid": "ee0cbfbd-f14d-454f-afb1-17ac3d7d5282",
              "parent_uuid": "b2ad46b4-dfcd-42ae-a1aa-e8f257f2a23b",
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
              "uuid": "7168245c-5f1f-4935-a42a-ccd45b9ca16d",
              "parent_uuid": "b2ad46b4-dfcd-42ae-a1aa-e8f257f2a23b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a6f8f67-4845-4ea0-87cc-ad80f5f765c8",
                  "parent_uuid": "7168245c-5f1f-4935-a42a-ccd45b9ca16d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1609883-939b-4bab-b53c-92d3d59581db",
              "parent_uuid": "b2ad46b4-dfcd-42ae-a1aa-e8f257f2a23b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c91b427-1ca1-4ada-a8f7-31c1787db8b4",
                  "parent_uuid": "d1609883-939b-4bab-b53c-92d3d59581db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05d92c71-6e59-4d0a-a791-0224984a6c5a",
              "parent_uuid": "b2ad46b4-dfcd-42ae-a1aa-e8f257f2a23b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c76910e-b6bb-4a40-b2ea-d8fba959a383",
                  "parent_uuid": "05d92c71-6e59-4d0a-a791-0224984a6c5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3212177-6c14-4654-a4d6-6f528207cda8",
              "parent_uuid": "b2ad46b4-dfcd-42ae-a1aa-e8f257f2a23b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55a7500e-bf00-47e1-98a0-ac30a765ac6b",
                  "parent_uuid": "b3212177-6c14-4654-a4d6-6f528207cda8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fe175f21-2e21-4473-9fed-cb9e83e9db9e",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "6fd57ad0-7d3e-483b-861d-3345845b23d6",
              "parent_uuid": "fe175f21-2e21-4473-9fed-cb9e83e9db9e",
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
          "uuid": "5810df2e-7516-4ce3-a138-7ca4aed10b73",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bac0272-8613-465b-808a-4f7c89523222",
              "parent_uuid": "5810df2e-7516-4ce3-a138-7ca4aed10b73",
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
          "uuid": "29c5b828-8a46-41ff-8092-f4ea38aff9f4",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "255e0b36-2aec-472d-a804-96e92387beb8",
              "parent_uuid": "29c5b828-8a46-41ff-8092-f4ea38aff9f4",
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
                  "uuid": "73f45508-9ef6-484a-99db-b181c480057e",
                  "parent_uuid": "255e0b36-2aec-472d-a804-96e92387beb8",
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
          "uuid": "08277075-f435-4128-b2fa-e69d89bfdc23",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24770578-6e78-457a-8713-bf86904f7da5",
              "parent_uuid": "08277075-f435-4128-b2fa-e69d89bfdc23",
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
          "uuid": "94e636d6-65f4-4414-9ff0-3f157f50fe22",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "62eb0a3e-aac5-4c58-a704-eeba9e45292b",
              "parent_uuid": "94e636d6-65f4-4414-9ff0-3f157f50fe22",
              "tagName": "td",
              "properties": [
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
          "uuid": "12baf7a2-61ad-4197-ad45-de3233b177a3",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bd4d12ee-6d22-4177-a1a7-9d8700e5a8f1",
              "parent_uuid": "12baf7a2-61ad-4197-ad45-de3233b177a3",
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
              "uuid": "0867d9cc-a147-426f-9d58-e41c9da376ff",
              "parent_uuid": "12baf7a2-61ad-4197-ad45-de3233b177a3",
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
              "uuid": "aa1f8333-71a7-4741-8ccb-89bb23c59f8e",
              "parent_uuid": "12baf7a2-61ad-4197-ad45-de3233b177a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff13b83a-722e-4c70-be5b-2f4e85bf5d23",
                  "parent_uuid": "aa1f8333-71a7-4741-8ccb-89bb23c59f8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39ed8cbe-4b8e-4739-85e2-35878cba3eb3",
              "parent_uuid": "12baf7a2-61ad-4197-ad45-de3233b177a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48dbae1e-1a14-4900-b353-5f36fb28879d",
                  "parent_uuid": "39ed8cbe-4b8e-4739-85e2-35878cba3eb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a323d51c-760a-4c1f-83b5-7e8064fd6200",
              "parent_uuid": "12baf7a2-61ad-4197-ad45-de3233b177a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd9fffc4-08da-48ca-a202-c96a5057c958",
                  "parent_uuid": "a323d51c-760a-4c1f-83b5-7e8064fd6200",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00866a5a-acb7-469a-b52a-3f7e563eb77c",
              "parent_uuid": "12baf7a2-61ad-4197-ad45-de3233b177a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5c5ddc6-fa62-4e64-a66d-615a001ca7ec",
                  "parent_uuid": "00866a5a-acb7-469a-b52a-3f7e563eb77c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d40590fb-515a-4123-8bdc-0db7466bb233",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2072ae34-f2f1-4b11-9b17-c2aadf757c9a",
              "parent_uuid": "d40590fb-515a-4123-8bdc-0db7466bb233",
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
              "uuid": "ef8e6530-d006-467e-b39b-f47787c5628c",
              "parent_uuid": "d40590fb-515a-4123-8bdc-0db7466bb233",
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
              "uuid": "034f68cf-e669-40aa-a646-1b521d161425",
              "parent_uuid": "d40590fb-515a-4123-8bdc-0db7466bb233",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ce47118-f5e6-4b9b-bd90-83b8d4aa283f",
                  "parent_uuid": "034f68cf-e669-40aa-a646-1b521d161425",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66b4bad1-7be6-4223-84e5-efb1a2bc4ec3",
              "parent_uuid": "d40590fb-515a-4123-8bdc-0db7466bb233",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df175f1c-52af-482c-9559-d0cceb369029",
                  "parent_uuid": "66b4bad1-7be6-4223-84e5-efb1a2bc4ec3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b92f358c-4675-45a0-9aab-d639a57f738e",
              "parent_uuid": "d40590fb-515a-4123-8bdc-0db7466bb233",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9cd75fd1-9779-4328-a228-1fea2d4cb2c6",
                  "parent_uuid": "b92f358c-4675-45a0-9aab-d639a57f738e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "780cd3ae-f4e0-4e27-a279-72604c4802f4",
              "parent_uuid": "d40590fb-515a-4123-8bdc-0db7466bb233",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ff5048d-9b25-407b-9201-77a10441a43a",
                  "parent_uuid": "780cd3ae-f4e0-4e27-a279-72604c4802f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5151eb79-4c59-4b8e-ae7e-df50585e678f",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74b50a57-806e-4ad3-85f6-5f036f691b63",
              "parent_uuid": "5151eb79-4c59-4b8e-ae7e-df50585e678f",
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
              "uuid": "b7780bda-f687-4c0a-a08f-7474447444d5",
              "parent_uuid": "5151eb79-4c59-4b8e-ae7e-df50585e678f",
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
              "uuid": "61f557f8-fb08-4f2a-84b9-a55b6882bc15",
              "parent_uuid": "5151eb79-4c59-4b8e-ae7e-df50585e678f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "689b6929-be9b-4d91-957d-4dfe5f060047",
                  "parent_uuid": "61f557f8-fb08-4f2a-84b9-a55b6882bc15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "643adfa4-8a85-4094-9d66-2d87ce9be420",
              "parent_uuid": "5151eb79-4c59-4b8e-ae7e-df50585e678f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abb1922b-436d-4f3f-b7e7-6d478813d694",
                  "parent_uuid": "643adfa4-8a85-4094-9d66-2d87ce9be420",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6efb9f6b-9ea8-4d4d-9816-b792ea2aa5b9",
              "parent_uuid": "5151eb79-4c59-4b8e-ae7e-df50585e678f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94a76c10-600e-4e93-a030-79967d9f1a7e",
                  "parent_uuid": "6efb9f6b-9ea8-4d4d-9816-b792ea2aa5b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c8adf99-4b55-47ba-80e3-6ec1933363ef",
              "parent_uuid": "5151eb79-4c59-4b8e-ae7e-df50585e678f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b11ab777-1a78-4e80-9e30-6b86ef2a7461",
                  "parent_uuid": "9c8adf99-4b55-47ba-80e3-6ec1933363ef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d33e7736-259f-4e11-8ad6-037bceae264e",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d937489b-fc46-4585-838c-15695d72c9ad",
              "parent_uuid": "d33e7736-259f-4e11-8ad6-037bceae264e",
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
              "uuid": "69c826ad-2fe6-4546-b141-4cf0505f7817",
              "parent_uuid": "d33e7736-259f-4e11-8ad6-037bceae264e",
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
              "uuid": "483a5c2b-3f2a-43e0-9979-b0abb30c5107",
              "parent_uuid": "d33e7736-259f-4e11-8ad6-037bceae264e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6296e001-c91c-425a-95e0-b45f6b9c593b",
                  "parent_uuid": "483a5c2b-3f2a-43e0-9979-b0abb30c5107",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30a275df-7622-4616-b336-68e78d9e80af",
              "parent_uuid": "d33e7736-259f-4e11-8ad6-037bceae264e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67d69092-9abd-4039-bbfe-6e49e8fb652e",
                  "parent_uuid": "30a275df-7622-4616-b336-68e78d9e80af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd97caf9-ff83-428b-96da-3a910310212d",
              "parent_uuid": "d33e7736-259f-4e11-8ad6-037bceae264e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e686adc4-f5e1-4e11-9171-dde4fb44f602",
                  "parent_uuid": "fd97caf9-ff83-428b-96da-3a910310212d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "928bb2be-af2a-4270-82a3-77c7a1e50066",
              "parent_uuid": "d33e7736-259f-4e11-8ad6-037bceae264e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94fa2ee7-4e28-472c-9576-577ff02ff933",
                  "parent_uuid": "928bb2be-af2a-4270-82a3-77c7a1e50066",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bbe7b44a-48c4-438b-b106-4a4701d1ed0b",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "efde33d9-2bea-4f39-b8f7-92b290f745ce",
              "parent_uuid": "bbe7b44a-48c4-438b-b106-4a4701d1ed0b",
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
          "uuid": "d994f6be-3eb6-4ee1-a9cc-9255d0044cd1",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c84dd2fc-d146-40ae-af75-c3df3b672afa",
              "parent_uuid": "d994f6be-3eb6-4ee1-a9cc-9255d0044cd1",
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
              "uuid": "5cd65c11-7c02-4ef8-86f4-c7b44e8bcfe5",
              "parent_uuid": "d994f6be-3eb6-4ee1-a9cc-9255d0044cd1",
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
              "uuid": "31c4a067-5751-42c5-96aa-1e51fb174f0e",
              "parent_uuid": "d994f6be-3eb6-4ee1-a9cc-9255d0044cd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cc6444b-a032-4b56-9913-8304ae1b42d5",
                  "parent_uuid": "31c4a067-5751-42c5-96aa-1e51fb174f0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd8fe5ba-71cf-47a8-978b-1374fd4866f4",
              "parent_uuid": "d994f6be-3eb6-4ee1-a9cc-9255d0044cd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc828f39-5a66-4ffe-90cb-60ae38bc12c3",
                  "parent_uuid": "cd8fe5ba-71cf-47a8-978b-1374fd4866f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f56ca9a-9d21-4b87-ad90-1e958cf42825",
              "parent_uuid": "d994f6be-3eb6-4ee1-a9cc-9255d0044cd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f1a283e-2c38-46d7-9230-92778d9e701e",
                  "parent_uuid": "0f56ca9a-9d21-4b87-ad90-1e958cf42825",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb11a4f8-cace-480a-a1ec-63b5c1019170",
              "parent_uuid": "d994f6be-3eb6-4ee1-a9cc-9255d0044cd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fc5f52e-b226-4b4d-86d7-5e4c04962a08",
                  "parent_uuid": "bb11a4f8-cace-480a-a1ec-63b5c1019170",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd7246a9-f195-430d-8c11-f12bef8a0d2a",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f180a16-cbe0-4455-a429-de64ddafc411",
              "parent_uuid": "fd7246a9-f195-430d-8c11-f12bef8a0d2a",
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
              "uuid": "fe020002-bdab-4945-a1a9-481d8b50b606",
              "parent_uuid": "fd7246a9-f195-430d-8c11-f12bef8a0d2a",
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
              "uuid": "9129d398-90b5-499f-88dd-1b8dadd1de11",
              "parent_uuid": "fd7246a9-f195-430d-8c11-f12bef8a0d2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a624cf3-b44f-4db2-9112-bb0327a8a9ee",
                  "parent_uuid": "9129d398-90b5-499f-88dd-1b8dadd1de11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14afd54b-48cb-4dc2-9530-3ae5d3d4382e",
              "parent_uuid": "fd7246a9-f195-430d-8c11-f12bef8a0d2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "531c953d-eedf-4118-a08e-174340f24257",
                  "parent_uuid": "14afd54b-48cb-4dc2-9530-3ae5d3d4382e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5c255a9-6851-4d46-8fc5-903402208081",
              "parent_uuid": "fd7246a9-f195-430d-8c11-f12bef8a0d2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db7ab31e-f53c-4c52-9579-22a2c6e0eb1c",
                  "parent_uuid": "c5c255a9-6851-4d46-8fc5-903402208081",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "839fecea-fba2-44fe-b3fe-45e28f24a1f5",
              "parent_uuid": "fd7246a9-f195-430d-8c11-f12bef8a0d2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83fc6b55-9ce0-44f4-9f98-0dbdfcc3d1b0",
                  "parent_uuid": "839fecea-fba2-44fe-b3fe-45e28f24a1f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c08df064-9e9c-4812-8b2c-5b38e4948062",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e430528-e32d-4983-b5f0-95cc2dcd8336",
              "parent_uuid": "c08df064-9e9c-4812-8b2c-5b38e4948062",
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
              "uuid": "f758e1e8-e12a-443b-8b62-46168fba8474",
              "parent_uuid": "c08df064-9e9c-4812-8b2c-5b38e4948062",
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
              "uuid": "035324d5-c49f-43df-9e57-2e114e58d51f",
              "parent_uuid": "c08df064-9e9c-4812-8b2c-5b38e4948062",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fa85759-7ad8-44ed-941e-0bec90f111c1",
                  "parent_uuid": "035324d5-c49f-43df-9e57-2e114e58d51f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90c959fc-7f78-4f9e-8db1-515e6a691924",
              "parent_uuid": "c08df064-9e9c-4812-8b2c-5b38e4948062",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f86c0aef-f5ac-491d-90fb-a035ece799d3",
                  "parent_uuid": "90c959fc-7f78-4f9e-8db1-515e6a691924",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "baeeb59b-9ec0-44a3-b33f-11608a1789ce",
              "parent_uuid": "c08df064-9e9c-4812-8b2c-5b38e4948062",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f81baa65-6cd0-43e8-ae9f-d16c6299c95a",
                  "parent_uuid": "baeeb59b-9ec0-44a3-b33f-11608a1789ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81c3f207-0068-4e29-aa84-4b5eb98d247a",
              "parent_uuid": "c08df064-9e9c-4812-8b2c-5b38e4948062",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19543762-6b1c-4de9-a281-9bdb2a0f511d",
                  "parent_uuid": "81c3f207-0068-4e29-aa84-4b5eb98d247a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "041a4bdb-a8af-42da-b587-95b846eced16",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8df38bd4-765a-4da4-966f-0076341ee9a9",
              "parent_uuid": "041a4bdb-a8af-42da-b587-95b846eced16",
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
              "uuid": "87e4f337-fd75-44bb-b233-a8ec6522deb3",
              "parent_uuid": "041a4bdb-a8af-42da-b587-95b846eced16",
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
              "uuid": "f47325b1-79b9-462b-8793-d6335260289b",
              "parent_uuid": "041a4bdb-a8af-42da-b587-95b846eced16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a65a16be-6544-46e3-8f45-731c9162512e",
                  "parent_uuid": "f47325b1-79b9-462b-8793-d6335260289b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6644b3dd-e978-4e17-9493-cfdc67c9da42",
              "parent_uuid": "041a4bdb-a8af-42da-b587-95b846eced16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2c1ad19-4ff6-4bcb-9781-25a5ced30599",
                  "parent_uuid": "6644b3dd-e978-4e17-9493-cfdc67c9da42",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b41841ac-0c04-45d2-9d92-6214e00d11aa",
              "parent_uuid": "041a4bdb-a8af-42da-b587-95b846eced16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0be6a51a-b624-4830-a151-66119f2bd493",
                  "parent_uuid": "b41841ac-0c04-45d2-9d92-6214e00d11aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86f0ee61-2f3c-413f-a6e7-5d5c22d36d2f",
              "parent_uuid": "041a4bdb-a8af-42da-b587-95b846eced16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf894c79-1375-4d1f-8df5-8f46f6d39bf1",
                  "parent_uuid": "86f0ee61-2f3c-413f-a6e7-5d5c22d36d2f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "573c6fdb-cb10-4395-9661-f9b5ffb26bf9",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae893a21-db3a-46f8-b5fc-1795929070f1",
              "parent_uuid": "573c6fdb-cb10-4395-9661-f9b5ffb26bf9",
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
          "uuid": "dc6b8202-b6fa-491e-9ce6-cb5e41b1f67c",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c38f5615-574b-4582-81a0-01ce734358d9",
              "parent_uuid": "dc6b8202-b6fa-491e-9ce6-cb5e41b1f67c",
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
          "uuid": "5d82befc-aab8-439c-8fe4-892e924038f7",
          "parent_uuid": "04599908-c6e7-47ec-bb81-e61490e66dae",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a275bb26-7871-4235-8cba-530dadb5a513",
              "parent_uuid": "5d82befc-aab8-439c-8fe4-892e924038f7",
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
                  "uuid": "aac51678-9422-4c76-ad74-0db7da3d577d",
                  "parent_uuid": "a275bb26-7871-4235-8cba-530dadb5a513",
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

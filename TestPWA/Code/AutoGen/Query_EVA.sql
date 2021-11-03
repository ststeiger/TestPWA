
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
  "uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "1a701f43-d4c8-49f9-8d6e-8716b001513c",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "7ecbdfe0-65fe-4172-987a-f04702ed866e",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "d8de37b5-65ca-4fff-aaad-f8b068293a0c",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "3c777f42-f583-40e9-a85a-f7c5084e9149",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "f2bcbb36-bb1c-41e8-b701-978c66c8f074",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "7a485a90-06e3-4671-a1a9-f7753a26a0eb",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "4d2d1f6e-553f-4f90-aaf7-774d8a3c8ce6",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
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
      "uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
      "parent_uuid": "ac3fbfed-9dc0-4cd3-860f-234a1550d005",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7a5c839f-ba08-434f-a7df-4ac4be945ee7",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "18afab8e-f20d-4745-9ade-55ed4a3ea51d",
              "parent_uuid": "7a5c839f-ba08-434f-a7df-4ac4be945ee7",
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
              "uuid": "b7e7a200-66ea-46cf-87f2-301ee35c5606",
              "parent_uuid": "7a5c839f-ba08-434f-a7df-4ac4be945ee7",
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
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "604138a9-b875-4603-b87b-e8bfd77f6423",
              "parent_uuid": "7a5c839f-ba08-434f-a7df-4ac4be945ee7",
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
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "f5cccfcd-ac06-4aa3-95c8-7ac5938eaf9a",
              "parent_uuid": "7a5c839f-ba08-434f-a7df-4ac4be945ee7",
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
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Ent- und Verpackungsanlage</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "5cb4a3e9-c85f-4c08-b832-cf4c4a8799bd",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "cbfb12d0-42c4-4780-ac8e-56e746851e20",
              "parent_uuid": "5cb4a3e9-c85f-4c08-b832-cf4c4a8799bd",
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
              "uuid": "d60cbe36-6c7b-4953-b449-489d84930886",
              "parent_uuid": "5cb4a3e9-c85f-4c08-b832-cf4c4a8799bd",
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
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f5635315-317b-4253-b037-cad913d40120",
              "parent_uuid": "5cb4a3e9-c85f-4c08-b832-cf4c4a8799bd",
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
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "17e964ee-4615-48b3-a9fe-0c75f138d5c0",
              "parent_uuid": "5cb4a3e9-c85f-4c08-b832-cf4c4a8799bd",
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
          "uuid": "8afcc79b-9f66-4d12-a01e-631770891b68",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8033cb83-3fc5-46b9-9564-b317c7d8b363",
              "parent_uuid": "8afcc79b-9f66-4d12-a01e-631770891b68",
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
              "uuid": "183c8ac8-ef9f-45a0-bc7f-784c4a06c7f8",
              "parent_uuid": "8afcc79b-9f66-4d12-a01e-631770891b68",
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
              "uuid": "6389db5c-0b25-408e-8e9a-e01585e3d708",
              "parent_uuid": "8afcc79b-9f66-4d12-a01e-631770891b68",
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
              "uuid": "d57bac48-2fdc-4af6-97ee-843546161324",
              "parent_uuid": "8afcc79b-9f66-4d12-a01e-631770891b68",
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
              "uuid": "e091b920-717d-4958-9443-ca261415c495",
              "parent_uuid": "8afcc79b-9f66-4d12-a01e-631770891b68",
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
              "uuid": "5170e2ff-3a63-462f-8503-b8421c607f7c",
              "parent_uuid": "8afcc79b-9f66-4d12-a01e-631770891b68",
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
          "uuid": "495c97ed-87cb-49f7-9d13-369a8f7317a5",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ab37934d-2021-4236-95ba-eb536665ff3d",
              "parent_uuid": "495c97ed-87cb-49f7-9d13-369a8f7317a5",
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
          "uuid": "915833fe-9163-4a08-9915-eba321cfc954",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f81c3bd-58ff-4f0b-b28b-227a85185a30",
              "parent_uuid": "915833fe-9163-4a08-9915-eba321cfc954",
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
              "uuid": "a6843c79-745c-48b7-9ceb-9a7de86ecf6f",
              "parent_uuid": "915833fe-9163-4a08-9915-eba321cfc954",
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
              "uuid": "25d6a583-a44f-48dd-bd3e-7e8e705c3950",
              "parent_uuid": "915833fe-9163-4a08-9915-eba321cfc954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85027a54-a0f6-4cee-9bcb-0674656cf1eb",
                  "parent_uuid": "25d6a583-a44f-48dd-bd3e-7e8e705c3950",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e097426b-48e2-4e6e-92fe-be13fad16f2b",
              "parent_uuid": "915833fe-9163-4a08-9915-eba321cfc954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "746eaca0-9bc3-4f20-9e5d-62d6edd2c23f",
                  "parent_uuid": "e097426b-48e2-4e6e-92fe-be13fad16f2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76fb3096-9ded-4b0b-bd96-7106232c3e18",
              "parent_uuid": "915833fe-9163-4a08-9915-eba321cfc954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74978f01-8965-4d47-8160-3981cdad5b58",
                  "parent_uuid": "76fb3096-9ded-4b0b-bd96-7106232c3e18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30904e0f-af5f-4efb-9d07-f18ac045e050",
              "parent_uuid": "915833fe-9163-4a08-9915-eba321cfc954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10390026-cfca-462e-b858-0d05edf87526",
                  "parent_uuid": "30904e0f-af5f-4efb-9d07-f18ac045e050",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0db0f91-bc7a-4494-ba11-2df0383285db",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d54f4f62-9d53-4dff-8b4c-cda9fca647f1",
              "parent_uuid": "e0db0f91-bc7a-4494-ba11-2df0383285db",
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
              "uuid": "9df2b8ad-bc30-41af-9a28-a09bf844b567",
              "parent_uuid": "e0db0f91-bc7a-4494-ba11-2df0383285db",
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
              "uuid": "1897a654-8f0a-4c91-baf6-917575d6b600",
              "parent_uuid": "e0db0f91-bc7a-4494-ba11-2df0383285db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51c1027a-ae1c-4d04-84a8-e6bb5c5ac338",
                  "parent_uuid": "1897a654-8f0a-4c91-baf6-917575d6b600",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ca863c7-04d9-4200-a82d-729d2f04abce",
              "parent_uuid": "e0db0f91-bc7a-4494-ba11-2df0383285db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b79f579-af2e-4d64-b54c-e3ae1c51d119",
                  "parent_uuid": "7ca863c7-04d9-4200-a82d-729d2f04abce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86cc5bf3-cd67-4d2f-a08b-53116a776f95",
              "parent_uuid": "e0db0f91-bc7a-4494-ba11-2df0383285db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70157815-b68e-40ae-ab0b-43b75785dd0a",
                  "parent_uuid": "86cc5bf3-cd67-4d2f-a08b-53116a776f95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea436125-a140-4eb8-aaaa-73efeeb1d427",
              "parent_uuid": "e0db0f91-bc7a-4494-ba11-2df0383285db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e361d53d-f603-4220-9288-7ef6ac0c8b84",
                  "parent_uuid": "ea436125-a140-4eb8-aaaa-73efeeb1d427",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8c7ab09a-7bf2-436f-8deb-8a8a79447e4f",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fe47c788-6bd0-4570-9728-5948b02e5843",
              "parent_uuid": "8c7ab09a-7bf2-436f-8deb-8a8a79447e4f",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5509c599-4ba0-48fa-bd0a-96e30c71abfd",
              "parent_uuid": "8c7ab09a-7bf2-436f-8deb-8a8a79447e4f",
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
              "uuid": "542ae506-6e4e-41d7-a8cd-6279b40942c9",
              "parent_uuid": "8c7ab09a-7bf2-436f-8deb-8a8a79447e4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fac9e253-a078-4bb8-b02d-05d9a6e16c80",
                  "parent_uuid": "542ae506-6e4e-41d7-a8cd-6279b40942c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77b19d9e-b0bc-4410-990a-a9e7399aa74b",
              "parent_uuid": "8c7ab09a-7bf2-436f-8deb-8a8a79447e4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9141eb2-fe90-4cee-aee7-138530ac7da2",
                  "parent_uuid": "77b19d9e-b0bc-4410-990a-a9e7399aa74b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d66bbd5f-0d92-48b1-9b13-f72b5fa664d5",
              "parent_uuid": "8c7ab09a-7bf2-436f-8deb-8a8a79447e4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a8630d6-8505-4c29-b1f0-f2e9c3866382",
                  "parent_uuid": "d66bbd5f-0d92-48b1-9b13-f72b5fa664d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7914327-2625-4e52-ae37-d4d13a7fc069",
              "parent_uuid": "8c7ab09a-7bf2-436f-8deb-8a8a79447e4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f8011cc-1347-490e-946a-7043df8e3c74",
                  "parent_uuid": "c7914327-2625-4e52-ae37-d4d13a7fc069",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cd8fb0ee-972b-42ac-96bf-60e17ee3fea5",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1e62526-23d6-4c0c-bb08-5f9ee6799745",
              "parent_uuid": "cd8fb0ee-972b-42ac-96bf-60e17ee3fea5",
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
              "uuid": "d9bacae5-baa9-4d1a-b681-e17a82f70989",
              "parent_uuid": "cd8fb0ee-972b-42ac-96bf-60e17ee3fea5",
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
              "innerHtml": "<span>2J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e87bb77c-405b-4b5c-a7e8-ce0822f20b9e",
              "parent_uuid": "cd8fb0ee-972b-42ac-96bf-60e17ee3fea5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6394c4c0-0496-4e8e-b199-811bea6552c2",
                  "parent_uuid": "e87bb77c-405b-4b5c-a7e8-ce0822f20b9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e12da1d-88de-41d4-89d7-8005a96d0cb2",
              "parent_uuid": "cd8fb0ee-972b-42ac-96bf-60e17ee3fea5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65596a3f-60ed-4478-91df-19fcb277b45b",
                  "parent_uuid": "4e12da1d-88de-41d4-89d7-8005a96d0cb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cbef33f0-d20a-4a29-ade7-a732d3cca8d3",
              "parent_uuid": "cd8fb0ee-972b-42ac-96bf-60e17ee3fea5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7fe179c-5ad7-4f1f-b0fb-3f72215931e7",
                  "parent_uuid": "cbef33f0-d20a-4a29-ade7-a732d3cca8d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a19e4f44-fd02-41cc-a50e-e28faa085b4a",
              "parent_uuid": "cd8fb0ee-972b-42ac-96bf-60e17ee3fea5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4083eaac-861b-4857-bcb3-f4b19f396607",
                  "parent_uuid": "a19e4f44-fd02-41cc-a50e-e28faa085b4a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "becaa629-5b3a-44fb-a76c-3ff04db345de",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "562a6d68-d9ee-4f29-9eda-7308d0da9bb3",
              "parent_uuid": "becaa629-5b3a-44fb-a76c-3ff04db345de",
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
              "uuid": "003219cb-8446-4b05-b2d2-f4c7376ede81",
              "parent_uuid": "becaa629-5b3a-44fb-a76c-3ff04db345de",
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
              "uuid": "0dbc40fe-4db9-43e1-ab9d-f2f003606689",
              "parent_uuid": "becaa629-5b3a-44fb-a76c-3ff04db345de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1229bae9-49c9-4754-b921-3082d2c49c8d",
                  "parent_uuid": "0dbc40fe-4db9-43e1-ab9d-f2f003606689",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43ff7af0-10ed-48a4-a81d-5307d6b15a0b",
              "parent_uuid": "becaa629-5b3a-44fb-a76c-3ff04db345de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24280bf2-89cd-471d-8997-0039bf825112",
                  "parent_uuid": "43ff7af0-10ed-48a4-a81d-5307d6b15a0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "441ff425-a8de-48dc-96a2-1a6724d12921",
              "parent_uuid": "becaa629-5b3a-44fb-a76c-3ff04db345de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78c07099-310a-48ba-a190-b621b38f8474",
                  "parent_uuid": "441ff425-a8de-48dc-96a2-1a6724d12921",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f4a764c-69f5-47dc-bdc2-7afb87c623fb",
              "parent_uuid": "becaa629-5b3a-44fb-a76c-3ff04db345de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72ef9966-1659-40f2-83fe-e7d529de6b17",
                  "parent_uuid": "0f4a764c-69f5-47dc-bdc2-7afb87c623fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "057c93d5-ebe4-4444-9494-522a0898fba5",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea8b2829-401e-40f6-adc8-0fea46b40c30",
              "parent_uuid": "057c93d5-ebe4-4444-9494-522a0898fba5",
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
              "uuid": "3aca0b89-7d2a-41fd-bf28-b340516409e0",
              "parent_uuid": "057c93d5-ebe4-4444-9494-522a0898fba5",
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
              "uuid": "e6e4f3a2-ed63-4e6d-9655-2b8d9470866d",
              "parent_uuid": "057c93d5-ebe4-4444-9494-522a0898fba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d796a5ec-088c-443c-b11f-0153b35d810a",
                  "parent_uuid": "e6e4f3a2-ed63-4e6d-9655-2b8d9470866d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f2e9af5-cb3b-4f20-acad-1cc2d733cd2a",
              "parent_uuid": "057c93d5-ebe4-4444-9494-522a0898fba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a2d19a5-65ef-442d-939d-fb8a185d8e75",
                  "parent_uuid": "7f2e9af5-cb3b-4f20-acad-1cc2d733cd2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bcf965d2-a341-411d-885f-f9b8ceec8c78",
              "parent_uuid": "057c93d5-ebe4-4444-9494-522a0898fba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "195b15fc-6ee6-4d50-8d5c-e85afffb3188",
                  "parent_uuid": "bcf965d2-a341-411d-885f-f9b8ceec8c78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b8057f9-f19e-4ef4-b13c-36c33b123355",
              "parent_uuid": "057c93d5-ebe4-4444-9494-522a0898fba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "534f5b6b-5955-4596-b9bc-e5d723ebd940",
                  "parent_uuid": "0b8057f9-f19e-4ef4-b13c-36c33b123355",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d1697ccd-3670-4a67-bac8-737941070b4f",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee0e2d56-5192-4d72-90f1-63a16f12b7ab",
              "parent_uuid": "d1697ccd-3670-4a67-bac8-737941070b4f",
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
              "uuid": "ba21ec87-3057-46dd-98b4-7d7c48921a3b",
              "parent_uuid": "d1697ccd-3670-4a67-bac8-737941070b4f",
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
              "uuid": "083c186d-bbb9-453f-b444-fa1d397e487e",
              "parent_uuid": "d1697ccd-3670-4a67-bac8-737941070b4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07a930d7-67b3-4553-9b85-62e1adc55a3b",
                  "parent_uuid": "083c186d-bbb9-453f-b444-fa1d397e487e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc51b8f5-db94-4630-bf0b-ef66378222f4",
              "parent_uuid": "d1697ccd-3670-4a67-bac8-737941070b4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c112e80d-5e16-4b39-9203-f9b2d37ec53b",
                  "parent_uuid": "dc51b8f5-db94-4630-bf0b-ef66378222f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9676f59c-0f52-4f0d-8cda-2ae1d9f6ccd5",
              "parent_uuid": "d1697ccd-3670-4a67-bac8-737941070b4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ecdfc18-1dd6-4bf5-bbc0-059a7f95326f",
                  "parent_uuid": "9676f59c-0f52-4f0d-8cda-2ae1d9f6ccd5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bab83b4-ac89-46f9-be40-3adfd6311391",
              "parent_uuid": "d1697ccd-3670-4a67-bac8-737941070b4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ad24a2d-89e2-423d-9da9-dc100c1a5a48",
                  "parent_uuid": "0bab83b4-ac89-46f9-be40-3adfd6311391",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d3f18bbe-dff0-4a04-99b5-182dd3317a72",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4451beed-c795-4485-a99c-23add39534d2",
              "parent_uuid": "d3f18bbe-dff0-4a04-99b5-182dd3317a72",
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
              "innerHtml": "\r\n                    <span>Alle Mitnehmerstege auf den Förderbändern mechanisch prüfen und fixieren wenn gelockert</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b4afa04e-ffa5-4f98-86cb-2c05304e08e1",
              "parent_uuid": "d3f18bbe-dff0-4a04-99b5-182dd3317a72",
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
              "uuid": "db45d0f6-249e-4d92-ac11-33af84b9368f",
              "parent_uuid": "d3f18bbe-dff0-4a04-99b5-182dd3317a72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d27a6f4-b781-4fd9-8479-964ac902ba37",
                  "parent_uuid": "db45d0f6-249e-4d92-ac11-33af84b9368f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61b394bf-475c-4fbc-b886-ee994a0f295d",
              "parent_uuid": "d3f18bbe-dff0-4a04-99b5-182dd3317a72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac3cd123-8dfc-4226-9d80-076291310ece",
                  "parent_uuid": "61b394bf-475c-4fbc-b886-ee994a0f295d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84d170e8-4e54-4bb5-9d90-a7dcccf9bbc4",
              "parent_uuid": "d3f18bbe-dff0-4a04-99b5-182dd3317a72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efc93476-513a-4c28-a102-3a8f540e38a3",
                  "parent_uuid": "84d170e8-4e54-4bb5-9d90-a7dcccf9bbc4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10573887-dcc4-46db-aaa9-2bb66aa03068",
              "parent_uuid": "d3f18bbe-dff0-4a04-99b5-182dd3317a72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c198bf20-241c-4035-ae25-f7472e4c0af7",
                  "parent_uuid": "10573887-dcc4-46db-aaa9-2bb66aa03068",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fa86c9e9-f7b5-4955-95fc-fcb04be14bc8",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb60d4fd-375d-4ce4-8235-3c9e7249d886",
              "parent_uuid": "fa86c9e9-f7b5-4955-95fc-fcb04be14bc8",
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
              "innerHtml": "\r\n                    <span>Antriebsmotoren für die Transportbänder prüfen (Geräusche, Laufruhe, Lager, Kabelanschlüsse, Schraubenkontrolle)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4efee2c0-550e-4937-a2ac-3aa0bbd59174",
              "parent_uuid": "fa86c9e9-f7b5-4955-95fc-fcb04be14bc8",
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
              "uuid": "68b48fc6-59e7-4d63-8ff6-b3d9d9e7959b",
              "parent_uuid": "fa86c9e9-f7b5-4955-95fc-fcb04be14bc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0555f16a-e677-4cdb-aa68-010c56674a52",
                  "parent_uuid": "68b48fc6-59e7-4d63-8ff6-b3d9d9e7959b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1bc4d8e-b652-43ce-8468-0c477f9139ff",
              "parent_uuid": "fa86c9e9-f7b5-4955-95fc-fcb04be14bc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62a5c630-35b3-472a-af86-7a6e7c6b7746",
                  "parent_uuid": "f1bc4d8e-b652-43ce-8468-0c477f9139ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e227ce52-2233-46fe-b0e5-24b4d03a4023",
              "parent_uuid": "fa86c9e9-f7b5-4955-95fc-fcb04be14bc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d1cc16f-6cd2-47ef-82b3-58f462ac4614",
                  "parent_uuid": "e227ce52-2233-46fe-b0e5-24b4d03a4023",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f57eeeba-37c4-4e66-adcc-158495310835",
              "parent_uuid": "fa86c9e9-f7b5-4955-95fc-fcb04be14bc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "333b146d-3a3b-4071-bb0d-3039ce2ac46b",
                  "parent_uuid": "f57eeeba-37c4-4e66-adcc-158495310835",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dd88ff7e-b734-4f37-8e18-bfd595d47dc4",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8eea1dcc-2252-451d-8b6d-4c5f0f62df1f",
              "parent_uuid": "dd88ff7e-b734-4f37-8e18-bfd595d47dc4",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rollenförderer bei Ent- und Verpackungsstation auf Beschädigungen prüfen (Laufruhe, Geräusche, Riemen, Anschlusskabel)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e2065b70-11e4-4812-8aae-f7c1afdf45b1",
              "parent_uuid": "dd88ff7e-b734-4f37-8e18-bfd595d47dc4",
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
              "uuid": "0979be83-ccd2-46e1-aa76-2ee187e88ebd",
              "parent_uuid": "dd88ff7e-b734-4f37-8e18-bfd595d47dc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b38dab6-8f11-4d99-a62f-89380f15bae8",
                  "parent_uuid": "0979be83-ccd2-46e1-aa76-2ee187e88ebd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9644ba9-0eed-42bb-9a5c-83ad11c91eb0",
              "parent_uuid": "dd88ff7e-b734-4f37-8e18-bfd595d47dc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "229bc548-c428-4b77-970c-ef39ec6ff552",
                  "parent_uuid": "b9644ba9-0eed-42bb-9a5c-83ad11c91eb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16ab2583-0097-4a37-8ecb-af970405b03e",
              "parent_uuid": "dd88ff7e-b734-4f37-8e18-bfd595d47dc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f6c1c2e-a685-4922-a396-e13ec28948db",
                  "parent_uuid": "16ab2583-0097-4a37-8ecb-af970405b03e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e10d089-2ee6-4c58-b475-8e16085da7b1",
              "parent_uuid": "dd88ff7e-b734-4f37-8e18-bfd595d47dc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad83a1af-3d3c-4bf3-8331-16c75da50c94",
                  "parent_uuid": "1e10d089-2ee6-4c58-b475-8e16085da7b1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76c30cc6-6f8d-4c3d-8b2b-fc91deeea987",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6544ba74-62be-45cb-ae0c-55a211476b66",
              "parent_uuid": "76c30cc6-6f8d-4c3d-8b2b-fc91deeea987",
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
              "innerHtml": "\r\n                    <span>Ausrichtung der Sensoren prüfen (Lichtschranke, Positionsschalter,Reflektoren, Füllstandssensor)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "40cd4c0b-ce6b-453b-a812-a3ef2368c90a",
              "parent_uuid": "76c30cc6-6f8d-4c3d-8b2b-fc91deeea987",
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
              "uuid": "c7fe2620-e8d0-435e-bb08-c55144d846a8",
              "parent_uuid": "76c30cc6-6f8d-4c3d-8b2b-fc91deeea987",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ab126eb-5e12-44b3-b159-0a6560c59946",
                  "parent_uuid": "c7fe2620-e8d0-435e-bb08-c55144d846a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8882935-505e-4fa3-bc01-780362903774",
              "parent_uuid": "76c30cc6-6f8d-4c3d-8b2b-fc91deeea987",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e1895bd-4f26-4417-9a2c-b656c02fa472",
                  "parent_uuid": "c8882935-505e-4fa3-bc01-780362903774",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d838a3e7-4dc0-4e4c-a5f9-a0d4244602c5",
              "parent_uuid": "76c30cc6-6f8d-4c3d-8b2b-fc91deeea987",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b802d070-8d34-4543-9cd6-a19a4419e117",
                  "parent_uuid": "d838a3e7-4dc0-4e4c-a5f9-a0d4244602c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c73ac6f-c415-4cd9-b0b9-cff9485a74b8",
              "parent_uuid": "76c30cc6-6f8d-4c3d-8b2b-fc91deeea987",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16ba7953-6e27-4d66-93c4-ac001b811214",
                  "parent_uuid": "3c73ac6f-c415-4cd9-b0b9-cff9485a74b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9574176e-dc02-4ed7-ae48-5cbdceb472e1",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2b65aa4-2bf8-4eca-b326-2f45e4d2bca2",
              "parent_uuid": "9574176e-dc02-4ed7-ae48-5cbdceb472e1",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Linearantriebe bei Befüllung Münzrollierer und Schüttgutcontainer prüfen (Bewegungen, Positionierung, Geräusche)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d4b2eb47-928e-4185-b93f-e9ad2b7ec13c",
              "parent_uuid": "9574176e-dc02-4ed7-ae48-5cbdceb472e1",
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
              "uuid": "afa12bcb-6b1f-42c3-a0a9-f689f895c868",
              "parent_uuid": "9574176e-dc02-4ed7-ae48-5cbdceb472e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f7f4f9f-05b5-4a8b-be62-dc116af32593",
                  "parent_uuid": "afa12bcb-6b1f-42c3-a0a9-f689f895c868",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "298765ff-a500-424b-bf72-5130bb2d2a0e",
              "parent_uuid": "9574176e-dc02-4ed7-ae48-5cbdceb472e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03597022-0ec0-4c9e-84ac-b65658860061",
                  "parent_uuid": "298765ff-a500-424b-bf72-5130bb2d2a0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1773c052-564c-4e2f-a520-714043617d04",
              "parent_uuid": "9574176e-dc02-4ed7-ae48-5cbdceb472e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f32a040d-e358-4013-b735-bea814c86a3f",
                  "parent_uuid": "1773c052-564c-4e2f-a520-714043617d04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cce8668a-318b-4fd1-b6a2-0df03df206ce",
              "parent_uuid": "9574176e-dc02-4ed7-ae48-5cbdceb472e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c545b33a-3c73-4867-a1bd-9db88388e7d4",
                  "parent_uuid": "cce8668a-318b-4fd1-b6a2-0df03df206ce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "691df994-b78e-4d40-89f7-c55681d009f3",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7e03730-ee49-4a77-bf41-25dac2f9e3ce",
              "parent_uuid": "691df994-b78e-4d40-89f7-c55681d009f3",
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
                  "70"
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
              "innerHtml": "\r\n                    <span>Zustand der zwei Pneumatikeinheiten kontrollieren<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "56acb7aa-2e2c-48d9-9092-c2c8e1f73da2",
              "parent_uuid": "691df994-b78e-4d40-89f7-c55681d009f3",
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
              "uuid": "d8e41df8-c143-4b4e-9773-1f88482b924d",
              "parent_uuid": "691df994-b78e-4d40-89f7-c55681d009f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afbace2b-e756-4e30-97ae-66b4ce3afaef",
                  "parent_uuid": "d8e41df8-c143-4b4e-9773-1f88482b924d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b92ede4e-880e-4d7b-9075-4cf17fdecb08",
              "parent_uuid": "691df994-b78e-4d40-89f7-c55681d009f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47cf65f6-c42a-4d3d-b781-96cbda84d5ac",
                  "parent_uuid": "b92ede4e-880e-4d7b-9075-4cf17fdecb08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4bcfd87-dba5-4144-a4c9-641403873d3f",
              "parent_uuid": "691df994-b78e-4d40-89f7-c55681d009f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41faaa92-847b-41d5-a558-2d9da3392e49",
                  "parent_uuid": "b4bcfd87-dba5-4144-a4c9-641403873d3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e605dd2-e51c-4e6c-ba39-6d0196f830fb",
              "parent_uuid": "691df994-b78e-4d40-89f7-c55681d009f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3973f309-5ac6-4f58-98f8-68c60b40717e",
                  "parent_uuid": "4e605dd2-e51c-4e6c-ba39-6d0196f830fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f337cd9a-14a4-44a6-b540-669baa67b1eb",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68c2ecd3-e314-44e1-befd-4d12376716bb",
              "parent_uuid": "f337cd9a-14a4-44a6-b540-669baa67b1eb",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Mechanische Kontrolle der pneumatischen Stopper, Zentrierer, Abschieber bei Münzverpacker prüfen<br>- Bewegungsgeschwindigkeit, Druck<br>- Endanschlag</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "95cad508-2597-486b-a56f-32f325406285",
              "parent_uuid": "f337cd9a-14a4-44a6-b540-669baa67b1eb",
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
              "uuid": "475e4eab-e8c4-4128-8ce9-6b2fcd7901b1",
              "parent_uuid": "f337cd9a-14a4-44a6-b540-669baa67b1eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83803cdf-3c80-4479-8f30-943cf246a9ac",
                  "parent_uuid": "475e4eab-e8c4-4128-8ce9-6b2fcd7901b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef8b5b86-cf11-4ad0-9587-558ce72bf9fe",
              "parent_uuid": "f337cd9a-14a4-44a6-b540-669baa67b1eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea7baef7-7f1c-489b-a9b0-86eef260c9b8",
                  "parent_uuid": "ef8b5b86-cf11-4ad0-9587-558ce72bf9fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9a572ab-9a48-44a9-8df3-3020a0a9be96",
              "parent_uuid": "f337cd9a-14a4-44a6-b540-669baa67b1eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "173b50c0-9dcf-4885-9ded-3843d329aee8",
                  "parent_uuid": "c9a572ab-9a48-44a9-8df3-3020a0a9be96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12f47714-aee6-4a46-ab9b-7c65dbc344d2",
              "parent_uuid": "f337cd9a-14a4-44a6-b540-669baa67b1eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27546210-2bee-4cac-9af8-ef505efb62cb",
                  "parent_uuid": "12f47714-aee6-4a46-ab9b-7c65dbc344d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8ff774ad-fe02-42fe-aebf-49a0bcfe9eb1",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "115dd44e-6018-4526-84ea-8f6e698d02e5",
              "parent_uuid": "8ff774ad-fe02-42fe-aebf-49a0bcfe9eb1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
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
          "uuid": "10ad32f1-4b70-41e0-826a-a91114696b32",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1c1201b7-3d6e-49dc-92a4-0423a8a38da5",
              "parent_uuid": "10ad32f1-4b70-41e0-826a-a91114696b32",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "263e4ae6-3de1-43a9-83f7-139d1d413232",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e85d3fc7-36e7-4979-93e2-0912bdc1ff17",
              "parent_uuid": "263e4ae6-3de1-43a9-83f7-139d1d413232",
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
                  "72"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kartonverdichter, Wasserstopp Schlauchplatzsicherung prüfen.<br>-Wasserhahn bei Kartonverdichter schliessen<br>-Wasser Auffanggefäss unter Wasserhahn stellen<br>-Wasserhahn sprunghaft voll öffnen. </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5201094d-4ac4-4d4c-9466-043fb0c7a3e6",
              "parent_uuid": "263e4ae6-3de1-43a9-83f7-139d1d413232",
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
              "uuid": "530fc59a-3b29-4224-a79d-c099a5b69904",
              "parent_uuid": "263e4ae6-3de1-43a9-83f7-139d1d413232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21ba0aad-5eb6-414a-9d29-94eea3340989",
                  "parent_uuid": "530fc59a-3b29-4224-a79d-c099a5b69904",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a38f20a5-a5ad-4517-b14d-c9f85bf6754f",
              "parent_uuid": "263e4ae6-3de1-43a9-83f7-139d1d413232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cdb0390-5704-41a5-8b2a-b00ce2c6a5bb",
                  "parent_uuid": "a38f20a5-a5ad-4517-b14d-c9f85bf6754f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efb0087f-d4c5-43c0-8355-e44180df1a2c",
              "parent_uuid": "263e4ae6-3de1-43a9-83f7-139d1d413232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03a27bdc-78a8-4da5-9d5c-43d6cc3f62f3",
                  "parent_uuid": "efb0087f-d4c5-43c0-8355-e44180df1a2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7010715f-063d-4528-9b8f-7e9abf766e4d",
              "parent_uuid": "263e4ae6-3de1-43a9-83f7-139d1d413232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "145225dd-0527-40dd-8da1-17d8a05926f5",
                  "parent_uuid": "7010715f-063d-4528-9b8f-7e9abf766e4d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e68b68c2-6515-4d50-8b07-5e399efcf619",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d64ede7-9748-4c38-b406-f86970ab4ab7",
              "parent_uuid": "e68b68c2-6515-4d50-8b07-5e399efcf619",
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
              "innerHtml": "\r\n                    <span>Filtermatten an den Schaltschränken bei starker Verschmutzung austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "83513002-eff1-4e63-b9c4-86f60890f545",
              "parent_uuid": "e68b68c2-6515-4d50-8b07-5e399efcf619",
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
              "uuid": "3676460e-b9fe-4cca-931a-e7590cf97168",
              "parent_uuid": "e68b68c2-6515-4d50-8b07-5e399efcf619",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1fa0c8d1-598b-4c6d-87a7-9f3430c4a6f4",
                  "parent_uuid": "3676460e-b9fe-4cca-931a-e7590cf97168",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62da9372-7f79-40a0-aa79-c15e08b93edb",
              "parent_uuid": "e68b68c2-6515-4d50-8b07-5e399efcf619",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "500626c8-24d4-4ce9-9219-a16842709ef2",
                  "parent_uuid": "62da9372-7f79-40a0-aa79-c15e08b93edb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "335fc2cc-4261-4d4d-87d3-7016bcad69e1",
              "parent_uuid": "e68b68c2-6515-4d50-8b07-5e399efcf619",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7de47193-4f45-4333-a4e6-9f11700b9b16",
                  "parent_uuid": "335fc2cc-4261-4d4d-87d3-7016bcad69e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65011b22-3ae5-48ae-8378-3cee194f091a",
              "parent_uuid": "e68b68c2-6515-4d50-8b07-5e399efcf619",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "537b1f61-539c-4929-b813-45b0670ffe40",
                  "parent_uuid": "65011b22-3ae5-48ae-8378-3cee194f091a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "10f8b989-9cca-49c5-87a4-0f8e56bf4d40",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47a8aaa4-fb22-42ee-880c-9cad4a6da222",
              "parent_uuid": "10f8b989-9cca-49c5-87a4-0f8e56bf4d40",
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
              "innerHtml": "\r\n                    <span>Sensoren mit trockenem, fusselfreien Tuch reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bc8166fe-a2b8-4c61-807f-297206b75978",
              "parent_uuid": "10f8b989-9cca-49c5-87a4-0f8e56bf4d40",
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
              "uuid": "059cafe9-9b01-486a-a3d4-7d00dbd178c5",
              "parent_uuid": "10f8b989-9cca-49c5-87a4-0f8e56bf4d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03cf69cd-1e6a-4c75-b6c7-37633fb7825e",
                  "parent_uuid": "059cafe9-9b01-486a-a3d4-7d00dbd178c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b87a2aa5-ef63-4677-9cf3-f82dc33bd091",
              "parent_uuid": "10f8b989-9cca-49c5-87a4-0f8e56bf4d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3072765-c9e9-4353-a8f7-a6a92e7ee955",
                  "parent_uuid": "b87a2aa5-ef63-4677-9cf3-f82dc33bd091",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7676e47-111f-412d-b9ee-fe579163e468",
              "parent_uuid": "10f8b989-9cca-49c5-87a4-0f8e56bf4d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "483b0415-0d70-4772-9a3c-b073fa95adcf",
                  "parent_uuid": "c7676e47-111f-412d-b9ee-fe579163e468",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "745fe174-18ed-4ff0-bdd3-5b5063ce91e6",
              "parent_uuid": "10f8b989-9cca-49c5-87a4-0f8e56bf4d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ad8051d-7fb6-44a1-bb65-295c8002f275",
                  "parent_uuid": "745fe174-18ed-4ff0-bdd3-5b5063ce91e6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "e7f70b1b-4056-475c-91e8-9f9450465dd6",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "766cb544-9549-4ef5-b8ef-839d9bfb913b",
              "parent_uuid": "e7f70b1b-4056-475c-91e8-9f9450465dd6",
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
              "innerHtml": "\r\n                    <span>Förderstrecken reinigen (Münzablagerungen, Papierresten)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "47f7b01a-1311-447c-ac6c-f23eaf5e1a24",
              "parent_uuid": "e7f70b1b-4056-475c-91e8-9f9450465dd6",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "52035851-9381-4734-a146-3948725e0eff",
              "parent_uuid": "e7f70b1b-4056-475c-91e8-9f9450465dd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acd5852e-7f58-468f-850f-fce4a9fdb279",
                  "parent_uuid": "52035851-9381-4734-a146-3948725e0eff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aebe0706-2ddc-4046-a11f-6c9936e6a641",
              "parent_uuid": "e7f70b1b-4056-475c-91e8-9f9450465dd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0a10523-0ea4-4979-8ac2-e2d1f57f6989",
                  "parent_uuid": "aebe0706-2ddc-4046-a11f-6c9936e6a641",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40e7638c-a58d-4a9a-864a-d90bed064358",
              "parent_uuid": "e7f70b1b-4056-475c-91e8-9f9450465dd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "def3ee04-1836-486e-a140-e4280ff7abd3",
                  "parent_uuid": "40e7638c-a58d-4a9a-864a-d90bed064358",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d20863b5-c417-4131-b1be-9bb2f6dde3ce",
              "parent_uuid": "e7f70b1b-4056-475c-91e8-9f9450465dd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77b3518e-c695-4e35-8c8d-c079e7e41cca",
                  "parent_uuid": "d20863b5-c417-4131-b1be-9bb2f6dde3ce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ec43fded-d4ee-4bc6-82a2-afadd82218fb",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b5182bf-3446-4532-b160-e1d3c1ebc157",
              "parent_uuid": "ec43fded-d4ee-4bc6-82a2-afadd82218fb",
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
              "innerHtml": "\r\n                    <span>Roboterbereiche von Roboter 1-5 von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "11bdf69e-863e-441d-93bf-6dec0c93a418",
              "parent_uuid": "ec43fded-d4ee-4bc6-82a2-afadd82218fb",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b5e7d195-1fb8-47d3-9224-f3d21275d980",
              "parent_uuid": "ec43fded-d4ee-4bc6-82a2-afadd82218fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7826032c-092b-4b45-a8a9-1cc3b795d971",
                  "parent_uuid": "b5e7d195-1fb8-47d3-9224-f3d21275d980",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b723ce1-1773-4bee-a290-95ea4b521450",
              "parent_uuid": "ec43fded-d4ee-4bc6-82a2-afadd82218fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b456abc4-9831-4aa1-a31e-8b6fb83b049e",
                  "parent_uuid": "4b723ce1-1773-4bee-a290-95ea4b521450",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb953cd5-c17e-4f71-b457-9941742e645e",
              "parent_uuid": "ec43fded-d4ee-4bc6-82a2-afadd82218fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0389a05e-0004-4d5b-aafa-8fc6a0c0b5c2",
                  "parent_uuid": "fb953cd5-c17e-4f71-b457-9941742e645e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eefcb629-b296-4d1c-8449-f04e11ae659b",
              "parent_uuid": "ec43fded-d4ee-4bc6-82a2-afadd82218fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a350608e-d18b-4253-841f-0fb3419fbc20",
                  "parent_uuid": "eefcb629-b296-4d1c-8449-f04e11ae659b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ddcbea5a-45b6-43e8-a58a-2c111794d7f6",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30f8c3e8-c987-4b8c-8835-107487159851",
              "parent_uuid": "ddcbea5a-45b6-43e8-a58a-2c111794d7f6",
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
              "innerHtml": "\r\n                    <span>Alle drei Münzrollierer von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "44e54591-955a-4277-a734-52e3dcab7a35",
              "parent_uuid": "ddcbea5a-45b6-43e8-a58a-2c111794d7f6",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "22ca37e0-a7ba-4b93-abcb-00e35984b97d",
              "parent_uuid": "ddcbea5a-45b6-43e8-a58a-2c111794d7f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07de0827-4429-4d90-9c91-0cf9726171b4",
                  "parent_uuid": "22ca37e0-a7ba-4b93-abcb-00e35984b97d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "feec5b78-0e5a-4862-8f19-64d7d1554818",
              "parent_uuid": "ddcbea5a-45b6-43e8-a58a-2c111794d7f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74b85cd5-7410-4823-beef-dcc2ea182143",
                  "parent_uuid": "feec5b78-0e5a-4862-8f19-64d7d1554818",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09c7eb64-5b6f-48c5-8354-31e3cd2619e1",
              "parent_uuid": "ddcbea5a-45b6-43e8-a58a-2c111794d7f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dff460b4-7564-47fe-a127-036761e3abca",
                  "parent_uuid": "09c7eb64-5b6f-48c5-8354-31e3cd2619e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43ba992f-534d-4d06-b706-061ccfa3e1fb",
              "parent_uuid": "ddcbea5a-45b6-43e8-a58a-2c111794d7f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91f90b12-3c1a-4513-b48b-2d6071aff57a",
                  "parent_uuid": "43ba992f-534d-4d06-b706-061ccfa3e1fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a1dbf7fe-37af-4aca-8fee-09f72d7740b3",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "796cd601-4694-4242-833a-05e9ec62425a",
              "parent_uuid": "a1dbf7fe-37af-4aca-8fee-09f72d7740b3",
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
              "innerHtml": "\r\n                    <span>Kartonsverschliesser von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c50a1ea1-9d3f-47ad-a3cb-4690033f6b1a",
              "parent_uuid": "a1dbf7fe-37af-4aca-8fee-09f72d7740b3",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4b1c4f0f-56e1-40e7-aa56-1ea31be05d5d",
              "parent_uuid": "a1dbf7fe-37af-4aca-8fee-09f72d7740b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86af7a4f-7a27-4581-b3da-2439a0dbbdfa",
                  "parent_uuid": "4b1c4f0f-56e1-40e7-aa56-1ea31be05d5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62b3d643-fce1-4961-a4a2-165a1f0e4a79",
              "parent_uuid": "a1dbf7fe-37af-4aca-8fee-09f72d7740b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e859b562-ebf2-428a-ba31-fe7341b55cb9",
                  "parent_uuid": "62b3d643-fce1-4961-a4a2-165a1f0e4a79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cff35a3-00f0-4250-b70a-e5d434cb6f20",
              "parent_uuid": "a1dbf7fe-37af-4aca-8fee-09f72d7740b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73486037-5abe-4f69-89fb-baffbf727ae0",
                  "parent_uuid": "3cff35a3-00f0-4250-b70a-e5d434cb6f20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0baae448-a893-465f-905b-29fb5fdcbd87",
              "parent_uuid": "a1dbf7fe-37af-4aca-8fee-09f72d7740b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f94c5d2-c4d1-4e9e-b3cd-c4e005a303f2",
                  "parent_uuid": "0baae448-a893-465f-905b-29fb5fdcbd87",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de0ce504-9d7a-4388-ae54-aa047e1dcc1f",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac43229a-285e-408c-a264-6b6f4c4c42b6",
              "parent_uuid": "de0ce504-9d7a-4388-ae54-aa047e1dcc1f",
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
              "innerHtml": "\r\n                    <span>Bereich der Strapex Bindegeräte von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "64b1e2e0-fb0d-415d-a5fc-e595959514e6",
              "parent_uuid": "de0ce504-9d7a-4388-ae54-aa047e1dcc1f",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e6d9c08e-9a87-4fb7-9238-3d2d79a5d289",
              "parent_uuid": "de0ce504-9d7a-4388-ae54-aa047e1dcc1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88d19c5a-d3be-4480-9fa6-47009f9a0d60",
                  "parent_uuid": "e6d9c08e-9a87-4fb7-9238-3d2d79a5d289",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "701c9494-fd63-442d-8f50-66c5ce0f8c7a",
              "parent_uuid": "de0ce504-9d7a-4388-ae54-aa047e1dcc1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5f9ccec-0196-4e29-9edb-f36f0e431c95",
                  "parent_uuid": "701c9494-fd63-442d-8f50-66c5ce0f8c7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f08f2f13-a7ca-4694-b1fa-298589df921a",
              "parent_uuid": "de0ce504-9d7a-4388-ae54-aa047e1dcc1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce78c076-b2f8-4896-80a7-3ef4c691b840",
                  "parent_uuid": "f08f2f13-a7ca-4694-b1fa-298589df921a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a54490b9-c09c-4ebf-a311-e3cdece44b90",
              "parent_uuid": "de0ce504-9d7a-4388-ae54-aa047e1dcc1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "749ea231-f809-49ef-bdec-1a2005f4a5e5",
                  "parent_uuid": "a54490b9-c09c-4ebf-a311-e3cdece44b90",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b5139728-847c-4ec2-919e-a1fe9a35a583",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d6f7f4aa-d25e-40d6-b622-94a1b383784e",
              "parent_uuid": "b5139728-847c-4ec2-919e-a1fe9a35a583",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "5d13efe7-04d8-4b3d-9cfb-06e4eb8c9827",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4080c22b-c0f6-40e1-90c7-ce2a2da5cc61",
              "parent_uuid": "5d13efe7-04d8-4b3d-9cfb-06e4eb8c9827",
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
              "innerHtml": "\r\n                    <span>Etikettierer von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e24f0d48-32b8-46a5-b6f5-eba5ea678112",
              "parent_uuid": "5d13efe7-04d8-4b3d-9cfb-06e4eb8c9827",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e740f23d-6c3b-43ad-8358-eaa082b8dc11",
              "parent_uuid": "5d13efe7-04d8-4b3d-9cfb-06e4eb8c9827",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17e2f49d-8450-43b0-ad8a-e1f7a93d3a9f",
                  "parent_uuid": "e740f23d-6c3b-43ad-8358-eaa082b8dc11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42cf6475-c634-4c63-9ed0-90e9ec79d237",
              "parent_uuid": "5d13efe7-04d8-4b3d-9cfb-06e4eb8c9827",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d42d889-26f0-495e-aaa7-c7ddbce7e448",
                  "parent_uuid": "42cf6475-c634-4c63-9ed0-90e9ec79d237",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a79f959-b006-4752-a456-959603d35747",
              "parent_uuid": "5d13efe7-04d8-4b3d-9cfb-06e4eb8c9827",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b33ada99-ed3d-4ac1-84df-bd964ef1058f",
                  "parent_uuid": "3a79f959-b006-4752-a456-959603d35747",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0720ea5b-39f3-4656-9791-5a7c7e65a42b",
              "parent_uuid": "5d13efe7-04d8-4b3d-9cfb-06e4eb8c9827",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d01d9382-fe4b-419b-9912-9e07697c2fe7",
                  "parent_uuid": "0720ea5b-39f3-4656-9791-5a7c7e65a42b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e387c57-af4a-492c-a3c9-8caaf63db416",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57409896-e589-41cd-877c-b88eee4693c9",
              "parent_uuid": "7e387c57-af4a-492c-a3c9-8caaf63db416",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen ob die Daten auf der Datenablage auf dem NAS abgelegt werden, Speicher-platzbelegung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "91fc49e3-e48b-4172-bb00-2013abac4373",
              "parent_uuid": "7e387c57-af4a-492c-a3c9-8caaf63db416",
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
              "innerHtml": "\r\n                    <span>1M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f7959bbb-ec29-4242-ae0b-0cdc3a240818",
              "parent_uuid": "7e387c57-af4a-492c-a3c9-8caaf63db416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e4b6136-45be-4b46-a9c8-4c4821c58878",
                  "parent_uuid": "f7959bbb-ec29-4242-ae0b-0cdc3a240818",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24931b44-cd66-4262-9343-308a59ba393c",
              "parent_uuid": "7e387c57-af4a-492c-a3c9-8caaf63db416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "306269aa-857a-4cde-b84a-785a3933bf13",
                  "parent_uuid": "24931b44-cd66-4262-9343-308a59ba393c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c5dad0c-4fd9-4cf6-b036-4f8d5471c699",
              "parent_uuid": "7e387c57-af4a-492c-a3c9-8caaf63db416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea75dcc1-d5e1-48dd-9e0e-b5b3972b70a8",
                  "parent_uuid": "3c5dad0c-4fd9-4cf6-b036-4f8d5471c699",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "223389fe-3af3-4cc9-aa04-496408fcaedc",
              "parent_uuid": "7e387c57-af4a-492c-a3c9-8caaf63db416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe44772f-17d7-4560-9e59-254a905b5b32",
                  "parent_uuid": "223389fe-3af3-4cc9-aa04-496408fcaedc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9282699-b0bd-4b8f-810c-647e5e583edf",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2dc4b7a4-c649-4023-8ee3-84bd84a4f3a2",
              "parent_uuid": "b9282699-b0bd-4b8f-810c-647e5e583edf",
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
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "df0a142f-5fd7-4ea2-b616-9b2ad894cca4",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f10721b-25ab-45e1-9194-1c7251af1eb2",
              "parent_uuid": "df0a142f-5fd7-4ea2-b616-9b2ad894cca4",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "3eac7603-7c8b-468c-8d3f-0ad8db44a4c4",
          "parent_uuid": "2b6b284e-e745-4c0b-bcc1-a982d47b5d0a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf74a7f4-8967-4c26-90f0-bd4a96bc9385",
              "parent_uuid": "3eac7603-7c8b-468c-8d3f-0ad8db44a4c4",
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
                  "uuid": "425d7482-1e97-4b01-969b-63fac8aa3e99",
                  "parent_uuid": "cf74a7f4-8967-4c26-90f0-bd4a96bc9385",
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
          "sort": 33,
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

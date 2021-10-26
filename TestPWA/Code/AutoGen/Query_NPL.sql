
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
  "uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "364487a9-4717-4b4b-96f4-7099c0c61bd3",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "ca20ea27-44b3-4d55-9ba8-dd849a85ca25",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "c0800997-a95f-49c0-bbd0-7388b5160776",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "6a4c09d9-c1a3-4d98-b089-f9e2ea8b2d61",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "daee4f67-3932-4e99-a60c-4a15803cd5b3",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "e52bb38f-8135-4f25-99d5-d51451e9927a",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "663c48cf-7fdc-498b-8748-350e44917930",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
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
      "uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
      "parent_uuid": "0ee442e6-4dab-4826-8a1e-373b236fa565",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "8c45e74a-0a33-4dc3-b109-8c2876b56e37",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "18e8b63d-9654-4536-91d2-115006349290",
              "parent_uuid": "8c45e74a-0a33-4dc3-b109-8c2876b56e37",
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
              "uuid": "b096e31f-2fd8-4c70-812f-acc3fe136059",
              "parent_uuid": "8c45e74a-0a33-4dc3-b109-8c2876b56e37",
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
              "uuid": "dbbbdbe2-1a2e-4bbb-bc69-38ccffb5233d",
              "parent_uuid": "8c45e74a-0a33-4dc3-b109-8c2876b56e37",
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
              "uuid": "39eee98c-439f-47b9-9a9c-cfea7658164a",
              "parent_uuid": "8c45e74a-0a33-4dc3-b109-8c2876b56e37",
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
          "uuid": "5fe8cab4-a9d7-4735-9760-c079a6d2ecba",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "4822056b-cdc8-460d-b395-e7811cf02a57",
              "parent_uuid": "5fe8cab4-a9d7-4735-9760-c079a6d2ecba",
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
              "uuid": "e87a4cea-cd8b-4415-b2fe-412548d617c5",
              "parent_uuid": "5fe8cab4-a9d7-4735-9760-c079a6d2ecba",
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
              "uuid": "dda33df3-b50b-4591-a833-462cd4de203a",
              "parent_uuid": "5fe8cab4-a9d7-4735-9760-c079a6d2ecba",
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
              "uuid": "c5351462-433c-419d-bd9a-88b5fe4ef34b",
              "parent_uuid": "5fe8cab4-a9d7-4735-9760-c079a6d2ecba",
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
          "uuid": "c6bd528d-32dd-4bdd-bfc4-dc133c2c8550",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2260160c-35e9-4a16-840b-aeec0c3d1bc6",
              "parent_uuid": "c6bd528d-32dd-4bdd-bfc4-dc133c2c8550",
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
              "uuid": "19327d57-aa32-4828-acc6-0da3dfa01855",
              "parent_uuid": "c6bd528d-32dd-4bdd-bfc4-dc133c2c8550",
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
              "uuid": "58d44198-0b45-4d65-a7b3-4d0071b30b2a",
              "parent_uuid": "c6bd528d-32dd-4bdd-bfc4-dc133c2c8550",
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
              "uuid": "9399d0ce-0e35-4f14-99c6-8b2ba3e2ea98",
              "parent_uuid": "c6bd528d-32dd-4bdd-bfc4-dc133c2c8550",
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
              "uuid": "54088eac-fedc-4e4b-a357-cf02d8447492",
              "parent_uuid": "c6bd528d-32dd-4bdd-bfc4-dc133c2c8550",
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
              "uuid": "41288f10-365e-47e1-bf62-17f214b3d66a",
              "parent_uuid": "c6bd528d-32dd-4bdd-bfc4-dc133c2c8550",
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
          "uuid": "ffde05e7-cfd0-43c9-a592-84ae3ab37418",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6b8cbcc7-52e3-4ba3-ae01-d9789ce722fa",
              "parent_uuid": "ffde05e7-cfd0-43c9-a592-84ae3ab37418",
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
          "uuid": "34861165-5036-441d-8a10-55651543d90a",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f229233-08e1-430e-9319-989bff57aeac",
              "parent_uuid": "34861165-5036-441d-8a10-55651543d90a",
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
              "uuid": "7d863007-675b-46c8-b520-516f8fed3e3e",
              "parent_uuid": "34861165-5036-441d-8a10-55651543d90a",
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
              "uuid": "86c5c60f-1201-4549-8790-83f23ca1d076",
              "parent_uuid": "34861165-5036-441d-8a10-55651543d90a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af223b98-c7fc-4992-bd82-f4d8e6271633",
                  "parent_uuid": "86c5c60f-1201-4549-8790-83f23ca1d076",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "594840ca-c6fb-4cfa-aca2-9e87f9922625",
              "parent_uuid": "34861165-5036-441d-8a10-55651543d90a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "631235ac-7fa6-48e4-9970-acd7e4734657",
                  "parent_uuid": "594840ca-c6fb-4cfa-aca2-9e87f9922625",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f725707-0ff3-4eca-96b4-370e2d453bc1",
              "parent_uuid": "34861165-5036-441d-8a10-55651543d90a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53bb8530-4f5e-4a2d-a6e6-c59e5c50b128",
                  "parent_uuid": "8f725707-0ff3-4eca-96b4-370e2d453bc1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ed6b5af-8fb6-4a22-b8be-cbdcf2bd3540",
              "parent_uuid": "34861165-5036-441d-8a10-55651543d90a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29a76836-43e8-468a-ae24-511c8135ed8c",
                  "parent_uuid": "9ed6b5af-8fb6-4a22-b8be-cbdcf2bd3540",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b6cf7fec-e2a0-483b-b209-e48907420caa",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59bf02da-a48e-4cea-b3a9-1f3bff640d31",
              "parent_uuid": "b6cf7fec-e2a0-483b-b209-e48907420caa",
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
              "uuid": "25fbe614-cfa2-4265-a216-edd6217cdd03",
              "parent_uuid": "b6cf7fec-e2a0-483b-b209-e48907420caa",
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
              "uuid": "6366c41a-bf66-4c46-9573-a8c2a732109d",
              "parent_uuid": "b6cf7fec-e2a0-483b-b209-e48907420caa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "132f381a-c507-4bbc-a941-147eca8727e0",
                  "parent_uuid": "6366c41a-bf66-4c46-9573-a8c2a732109d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8f35fe1-5ac4-4bee-b4f5-b6fd1126929a",
              "parent_uuid": "b6cf7fec-e2a0-483b-b209-e48907420caa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70552ca1-c26e-47e2-aa5b-3624a81e7d40",
                  "parent_uuid": "d8f35fe1-5ac4-4bee-b4f5-b6fd1126929a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "98e58857-d13e-4173-932c-88e87c6f48f2",
              "parent_uuid": "b6cf7fec-e2a0-483b-b209-e48907420caa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "276b6b98-76c6-481f-ab49-62f99fe2619a",
                  "parent_uuid": "98e58857-d13e-4173-932c-88e87c6f48f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07945dc8-3bca-4b99-9530-2f850c6eb2d2",
              "parent_uuid": "b6cf7fec-e2a0-483b-b209-e48907420caa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f615a22-dc22-450c-8346-030d8c14e53a",
                  "parent_uuid": "07945dc8-3bca-4b99-9530-2f850c6eb2d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3fbdb260-4ea9-4fd3-840f-81bade35d79c",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95fc200c-a710-417d-bc2d-553e030c68a6",
              "parent_uuid": "3fbdb260-4ea9-4fd3-840f-81bade35d79c",
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
              "uuid": "c8ac2f33-6760-461e-82e5-d466a83a7dc1",
              "parent_uuid": "3fbdb260-4ea9-4fd3-840f-81bade35d79c",
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
              "uuid": "93232ebc-a6fe-47e8-8fe2-19c0f32ca016",
              "parent_uuid": "3fbdb260-4ea9-4fd3-840f-81bade35d79c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d48676ac-2bfb-4224-a169-bae68994014c",
                  "parent_uuid": "93232ebc-a6fe-47e8-8fe2-19c0f32ca016",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e3c7b1e-504a-4aaf-8a49-2401a75c9471",
              "parent_uuid": "3fbdb260-4ea9-4fd3-840f-81bade35d79c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87bb5dd6-139b-4666-854a-2fddedae16a1",
                  "parent_uuid": "2e3c7b1e-504a-4aaf-8a49-2401a75c9471",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64089d9c-b131-4208-b058-86d1cb025c0d",
              "parent_uuid": "3fbdb260-4ea9-4fd3-840f-81bade35d79c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71b53ed8-73bd-4d94-9de6-e7a2876fb4ad",
                  "parent_uuid": "64089d9c-b131-4208-b058-86d1cb025c0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "751ccd68-6db1-4136-bf45-34bdbe64abfd",
              "parent_uuid": "3fbdb260-4ea9-4fd3-840f-81bade35d79c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5f4b08d-f1dd-4ef6-8346-8d0816db254f",
                  "parent_uuid": "751ccd68-6db1-4136-bf45-34bdbe64abfd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "57e70ae9-8aaa-4b71-aa61-02ce222306a3",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efe3bd56-739a-45d4-820a-d78142a8fc40",
              "parent_uuid": "57e70ae9-8aaa-4b71-aa61-02ce222306a3",
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
              "uuid": "dbe0d1a7-d10f-41fd-82ee-9cba33bcd7db",
              "parent_uuid": "57e70ae9-8aaa-4b71-aa61-02ce222306a3",
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
              "uuid": "951c320d-eaf7-4578-8870-7734586b566d",
              "parent_uuid": "57e70ae9-8aaa-4b71-aa61-02ce222306a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "580c0541-7e72-4e99-8fb5-48c458f4348e",
                  "parent_uuid": "951c320d-eaf7-4578-8870-7734586b566d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da3b5fb8-6398-4347-8098-6cb4329982ae",
              "parent_uuid": "57e70ae9-8aaa-4b71-aa61-02ce222306a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e753d2c3-54a4-4c82-9980-792790868b46",
                  "parent_uuid": "da3b5fb8-6398-4347-8098-6cb4329982ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "206d08eb-547a-4f44-baec-f701487e3a7e",
              "parent_uuid": "57e70ae9-8aaa-4b71-aa61-02ce222306a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c38a8383-4328-4019-a937-2db9d00c63b3",
                  "parent_uuid": "206d08eb-547a-4f44-baec-f701487e3a7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bd358ee-0590-4f74-9dc8-3511a59693c8",
              "parent_uuid": "57e70ae9-8aaa-4b71-aa61-02ce222306a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93bfdd5c-c6cc-478b-be14-fd7e97ddf2f6",
                  "parent_uuid": "1bd358ee-0590-4f74-9dc8-3511a59693c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5f8e903-ec32-4474-a32c-d3a12c801968",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f5fc17f-7ec7-420a-b89c-cbc313bcd66e",
              "parent_uuid": "c5f8e903-ec32-4474-a32c-d3a12c801968",
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
              "uuid": "6e698616-319f-41a2-8ee6-4fe319ff4f4e",
              "parent_uuid": "c5f8e903-ec32-4474-a32c-d3a12c801968",
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
              "uuid": "61c504a1-7888-4569-847f-80275a74686d",
              "parent_uuid": "c5f8e903-ec32-4474-a32c-d3a12c801968",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6ca02e1a-65e9-48bd-bcd2-edc6ffcb8858",
                  "parent_uuid": "61c504a1-7888-4569-847f-80275a74686d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a2c7542-f060-420f-ad22-14d0c6134a87",
              "parent_uuid": "c5f8e903-ec32-4474-a32c-d3a12c801968",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a1950f15-9d47-4304-a31e-2ed71f56cd30",
                  "parent_uuid": "3a2c7542-f060-420f-ad22-14d0c6134a87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02ca963f-7809-4458-940d-255803d0a63e",
              "parent_uuid": "c5f8e903-ec32-4474-a32c-d3a12c801968",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cce784b3-762a-4f18-98ae-301facf681cc",
                  "parent_uuid": "02ca963f-7809-4458-940d-255803d0a63e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed0183dd-2a92-4470-99a8-d23ec80a9b04",
              "parent_uuid": "c5f8e903-ec32-4474-a32c-d3a12c801968",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d4713525-ea76-41e9-98f7-3c2f05d8de5b",
                  "parent_uuid": "ed0183dd-2a92-4470-99a8-d23ec80a9b04",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18d34bf9-87ce-4e64-a9ab-4bd7766e8f4b",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "528ac8c0-d560-41a6-a4e8-e8cabc5fc23c",
              "parent_uuid": "18d34bf9-87ce-4e64-a9ab-4bd7766e8f4b",
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
              "uuid": "4e859140-08a8-4e57-a957-fe3cbd61e72e",
              "parent_uuid": "18d34bf9-87ce-4e64-a9ab-4bd7766e8f4b",
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
              "uuid": "d842d936-4ac9-474d-a71d-7f4e53bc2e91",
              "parent_uuid": "18d34bf9-87ce-4e64-a9ab-4bd7766e8f4b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0aa0f41-d587-44a8-95ed-2bd92fad8109",
                  "parent_uuid": "d842d936-4ac9-474d-a71d-7f4e53bc2e91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4155c20-b92c-4b56-aa96-4ccf2ffe493f",
              "parent_uuid": "18d34bf9-87ce-4e64-a9ab-4bd7766e8f4b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d041309-52fe-4c7e-9b79-0cb61c31447f",
                  "parent_uuid": "c4155c20-b92c-4b56-aa96-4ccf2ffe493f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63d4619c-1fce-497a-8e6a-a343f7d90384",
              "parent_uuid": "18d34bf9-87ce-4e64-a9ab-4bd7766e8f4b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ec31336-2d78-4d4d-ac7b-9c9dd3129052",
                  "parent_uuid": "63d4619c-1fce-497a-8e6a-a343f7d90384",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "901a283f-77bc-4f5a-90a6-9dc16f575ddb",
              "parent_uuid": "18d34bf9-87ce-4e64-a9ab-4bd7766e8f4b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7c52a67-f392-43b5-8c12-bbdd6f91d3df",
                  "parent_uuid": "901a283f-77bc-4f5a-90a6-9dc16f575ddb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ccf3671f-208b-44eb-aaa1-215a98967ebd",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e14d0e7f-1020-415a-93bf-649c2a4cf966",
              "parent_uuid": "ccf3671f-208b-44eb-aaa1-215a98967ebd",
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
              "uuid": "154ec8bf-5163-45f9-ba70-e335a92c0df7",
              "parent_uuid": "ccf3671f-208b-44eb-aaa1-215a98967ebd",
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
              "uuid": "a534f365-163d-4328-9fb6-7942640103ac",
              "parent_uuid": "ccf3671f-208b-44eb-aaa1-215a98967ebd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26fb35e1-d4be-4e39-badc-298227c72b28",
                  "parent_uuid": "a534f365-163d-4328-9fb6-7942640103ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b8f31db-78eb-4e8b-9cca-c580c3c24e40",
              "parent_uuid": "ccf3671f-208b-44eb-aaa1-215a98967ebd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2cd1c55-2b77-4917-9aa9-87e797a4591d",
                  "parent_uuid": "7b8f31db-78eb-4e8b-9cca-c580c3c24e40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1372f627-5826-4602-b89a-41d4ebf4312e",
              "parent_uuid": "ccf3671f-208b-44eb-aaa1-215a98967ebd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b020b54d-361d-41d0-a9d5-7cc8e05f6509",
                  "parent_uuid": "1372f627-5826-4602-b89a-41d4ebf4312e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af5c0775-e178-43ff-b5f5-ad4bb751b664",
              "parent_uuid": "ccf3671f-208b-44eb-aaa1-215a98967ebd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1586fb75-d602-4e88-a5b0-5c2d798dc318",
                  "parent_uuid": "af5c0775-e178-43ff-b5f5-ad4bb751b664",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31986c86-e7b0-4257-99e5-32b5d0facc71",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58acd345-c0e0-4663-881e-757c1e9b5492",
              "parent_uuid": "31986c86-e7b0-4257-99e5-32b5d0facc71",
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
              "uuid": "d6a60218-97bc-4da7-9a2e-72a77026a821",
              "parent_uuid": "31986c86-e7b0-4257-99e5-32b5d0facc71",
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
              "uuid": "cce79a98-87c0-41f7-a947-245f15bd0d81",
              "parent_uuid": "31986c86-e7b0-4257-99e5-32b5d0facc71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c01ad12-5379-404b-827b-07137b8e0151",
                  "parent_uuid": "cce79a98-87c0-41f7-a947-245f15bd0d81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "204ebbb0-e898-4442-b410-bec2319b6219",
              "parent_uuid": "31986c86-e7b0-4257-99e5-32b5d0facc71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9fb68c4-780c-4b02-84b0-f5cbdf22cdd5",
                  "parent_uuid": "204ebbb0-e898-4442-b410-bec2319b6219",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73c506e2-9ad5-40de-a593-6b9cd9074763",
              "parent_uuid": "31986c86-e7b0-4257-99e5-32b5d0facc71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c50064a-f558-4d9f-95ba-073ff58d039d",
                  "parent_uuid": "73c506e2-9ad5-40de-a593-6b9cd9074763",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af4f175e-ee82-4bfd-b1ec-e1510af75fe7",
              "parent_uuid": "31986c86-e7b0-4257-99e5-32b5d0facc71",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9fcdf8c-bd9b-4920-ad2b-ecab6e155d03",
                  "parent_uuid": "af4f175e-ee82-4bfd-b1ec-e1510af75fe7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a099bbe0-fa08-4056-9bf5-ba7a90885984",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e854eed4-2ff4-48d4-a885-6328f966d045",
              "parent_uuid": "a099bbe0-fa08-4056-9bf5-ba7a90885984",
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
              "uuid": "2babf9aa-c390-4a86-8408-6052974f7bde",
              "parent_uuid": "a099bbe0-fa08-4056-9bf5-ba7a90885984",
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
              "uuid": "2d74af7c-a76d-4693-841e-33ba81920787",
              "parent_uuid": "a099bbe0-fa08-4056-9bf5-ba7a90885984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42eb91f8-0388-4b91-beb9-6397af490488",
                  "parent_uuid": "2d74af7c-a76d-4693-841e-33ba81920787",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13433dfb-667d-4f28-804b-6ef8b1ba98a8",
              "parent_uuid": "a099bbe0-fa08-4056-9bf5-ba7a90885984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96070233-376c-4e2d-88f3-04b864c4aad7",
                  "parent_uuid": "13433dfb-667d-4f28-804b-6ef8b1ba98a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1000e148-ade5-4736-83dc-b4f6ac735524",
              "parent_uuid": "a099bbe0-fa08-4056-9bf5-ba7a90885984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bf07dbe-7741-48fa-8c2f-c0131d53d3a7",
                  "parent_uuid": "1000e148-ade5-4736-83dc-b4f6ac735524",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8a52bdd-6d77-4a62-b2ce-39a790d56ec1",
              "parent_uuid": "a099bbe0-fa08-4056-9bf5-ba7a90885984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe02fc83-177c-441b-9463-3458f63b9e90",
                  "parent_uuid": "d8a52bdd-6d77-4a62-b2ce-39a790d56ec1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6fcf0f7b-ec22-4b47-ab79-a1fe0c0e8ab4",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "626c70b3-4eb7-40e7-8edb-a8e5964f2e38",
              "parent_uuid": "6fcf0f7b-ec22-4b47-ab79-a1fe0c0e8ab4",
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
              "uuid": "f6c4063b-0c50-411f-ba96-708d301189aa",
              "parent_uuid": "6fcf0f7b-ec22-4b47-ab79-a1fe0c0e8ab4",
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
              "uuid": "d91d70a3-1754-44a6-973c-cb9a32dbfd8e",
              "parent_uuid": "6fcf0f7b-ec22-4b47-ab79-a1fe0c0e8ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16056a64-d95c-4c89-b25c-bc8239579644",
                  "parent_uuid": "d91d70a3-1754-44a6-973c-cb9a32dbfd8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3afd361c-13dc-4c15-9a17-010f4609ef98",
              "parent_uuid": "6fcf0f7b-ec22-4b47-ab79-a1fe0c0e8ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2968f06-bc34-409b-94bc-02567f138ed2",
                  "parent_uuid": "3afd361c-13dc-4c15-9a17-010f4609ef98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96219712-9524-41d2-b653-6238cc98a77e",
              "parent_uuid": "6fcf0f7b-ec22-4b47-ab79-a1fe0c0e8ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67a46fe6-3e4d-46f1-a577-eab3cc0ccbbf",
                  "parent_uuid": "96219712-9524-41d2-b653-6238cc98a77e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8a15984-f254-4edd-94a3-6a6b28472626",
              "parent_uuid": "6fcf0f7b-ec22-4b47-ab79-a1fe0c0e8ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "840363ef-2fc9-4da3-bd8d-3d278a7de314",
                  "parent_uuid": "f8a15984-f254-4edd-94a3-6a6b28472626",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b6d5f03-10a1-4880-b2ba-d1b4f54a2b77",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "edbc47aa-0b11-4ba9-8307-ea02f59d0764",
              "parent_uuid": "0b6d5f03-10a1-4880-b2ba-d1b4f54a2b77",
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
              "uuid": "195bef97-230c-43f8-9992-0a6ef565c19e",
              "parent_uuid": "0b6d5f03-10a1-4880-b2ba-d1b4f54a2b77",
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
              "uuid": "5d561727-1c82-45b3-8e74-b57360120e5e",
              "parent_uuid": "0b6d5f03-10a1-4880-b2ba-d1b4f54a2b77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f32d72b-ee7a-4445-8667-713a83931539",
                  "parent_uuid": "5d561727-1c82-45b3-8e74-b57360120e5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f53445d5-bab0-4448-a71d-f7281d5f5015",
              "parent_uuid": "0b6d5f03-10a1-4880-b2ba-d1b4f54a2b77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de4d0bcd-5980-48c2-b2c8-021dc1ec7521",
                  "parent_uuid": "f53445d5-bab0-4448-a71d-f7281d5f5015",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcaee1df-3629-4f70-a611-b8dfefe92f6d",
              "parent_uuid": "0b6d5f03-10a1-4880-b2ba-d1b4f54a2b77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "051eb0eb-32cb-420d-ae52-d002850a5e34",
                  "parent_uuid": "fcaee1df-3629-4f70-a611-b8dfefe92f6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ce6bdaf-d964-4402-a824-6a126bd0b380",
              "parent_uuid": "0b6d5f03-10a1-4880-b2ba-d1b4f54a2b77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e4ef6f5-1fca-4256-9a6b-1f1de18f12e1",
                  "parent_uuid": "1ce6bdaf-d964-4402-a824-6a126bd0b380",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "181daa9a-04f3-479a-ac10-a98f553bb6f5",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72d57fa8-1f1e-4894-979f-1b09811b6a36",
              "parent_uuid": "181daa9a-04f3-479a-ac10-a98f553bb6f5",
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
              "uuid": "10683865-da88-42b8-9b3e-980acaca71bc",
              "parent_uuid": "181daa9a-04f3-479a-ac10-a98f553bb6f5",
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
              "uuid": "198c9564-1bba-40be-a2ab-d89626650a0b",
              "parent_uuid": "181daa9a-04f3-479a-ac10-a98f553bb6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1465869-9acf-4f42-9511-c5fa48b79ef5",
                  "parent_uuid": "198c9564-1bba-40be-a2ab-d89626650a0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7bf8c85-1edd-4ba1-98f2-c6f161415403",
              "parent_uuid": "181daa9a-04f3-479a-ac10-a98f553bb6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a219249b-8d95-4a1c-bb48-bf7283029c94",
                  "parent_uuid": "a7bf8c85-1edd-4ba1-98f2-c6f161415403",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29d18cb6-8d03-48e6-b635-77028acb00aa",
              "parent_uuid": "181daa9a-04f3-479a-ac10-a98f553bb6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2a9552a-8083-4d0b-b85f-36acd697c9e9",
                  "parent_uuid": "29d18cb6-8d03-48e6-b635-77028acb00aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d213e46a-f718-480a-a6a3-7c45424f4b18",
              "parent_uuid": "181daa9a-04f3-479a-ac10-a98f553bb6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b6ce596-4bf6-42b4-92e5-de65128d60b6",
                  "parent_uuid": "d213e46a-f718-480a-a6a3-7c45424f4b18",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e3242a6-8880-487a-9141-adea8e0caeac",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3bc82b1d-31b3-460e-939f-765455c106e2",
              "parent_uuid": "8e3242a6-8880-487a-9141-adea8e0caeac",
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
              "uuid": "77df9845-e90a-4ca6-8b2f-e8ecb1a22954",
              "parent_uuid": "8e3242a6-8880-487a-9141-adea8e0caeac",
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
              "uuid": "7d2b99a6-2329-4742-9b32-b186f8ad22af",
              "parent_uuid": "8e3242a6-8880-487a-9141-adea8e0caeac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e46ecdd-f3ec-47f1-94b5-b8d99cdfb994",
                  "parent_uuid": "7d2b99a6-2329-4742-9b32-b186f8ad22af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d756110a-248d-443e-aa80-8ff90e78981a",
              "parent_uuid": "8e3242a6-8880-487a-9141-adea8e0caeac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bec3555-3abd-436e-b7fa-70b5846e74d9",
                  "parent_uuid": "d756110a-248d-443e-aa80-8ff90e78981a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ca2cdd3-3422-4a99-bd49-0ee95c715b4d",
              "parent_uuid": "8e3242a6-8880-487a-9141-adea8e0caeac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9db3c890-8ba2-4940-9e2c-243138870830",
                  "parent_uuid": "0ca2cdd3-3422-4a99-bd49-0ee95c715b4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9e6e6d7-aaec-4eeb-b95f-5625b5250078",
              "parent_uuid": "8e3242a6-8880-487a-9141-adea8e0caeac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0795e38e-fbab-4f18-8d26-4652b32abec6",
                  "parent_uuid": "c9e6e6d7-aaec-4eeb-b95f-5625b5250078",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "49181c9c-f9ac-4000-bfa9-307f58247e74",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b75bac15-0aa2-4f36-a437-ef8b87365783",
              "parent_uuid": "49181c9c-f9ac-4000-bfa9-307f58247e74",
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
              "uuid": "1a6843b2-05f0-48c8-8b8f-11bb0053c340",
              "parent_uuid": "49181c9c-f9ac-4000-bfa9-307f58247e74",
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
              "uuid": "6784d904-aee4-4fc2-bbc1-6f25a76bfa29",
              "parent_uuid": "49181c9c-f9ac-4000-bfa9-307f58247e74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78f9931f-54c7-4a73-8216-af850ac818c2",
                  "parent_uuid": "6784d904-aee4-4fc2-bbc1-6f25a76bfa29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59f272e6-b8db-4271-a30d-a49f69055bd6",
              "parent_uuid": "49181c9c-f9ac-4000-bfa9-307f58247e74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af5539a1-4676-4925-b0b6-de407d483f9a",
                  "parent_uuid": "59f272e6-b8db-4271-a30d-a49f69055bd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "509bc832-a1c1-49c6-a415-93dedb665a34",
              "parent_uuid": "49181c9c-f9ac-4000-bfa9-307f58247e74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8906f310-2655-4b0e-809b-4b1d7fb8ab65",
                  "parent_uuid": "509bc832-a1c1-49c6-a415-93dedb665a34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d16323ff-6d5c-4c8f-8304-cbe7a7287ace",
              "parent_uuid": "49181c9c-f9ac-4000-bfa9-307f58247e74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6cdb370d-fa1a-4806-8157-eb060f170f8d",
                  "parent_uuid": "d16323ff-6d5c-4c8f-8304-cbe7a7287ace",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "12e486cf-018c-4fe4-a9de-6eee2a98a5cd",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "07958493-114d-46bf-9fe8-882656dcfc8d",
              "parent_uuid": "12e486cf-018c-4fe4-a9de-6eee2a98a5cd",
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
          "uuid": "43228428-c776-4c94-a2fe-1bc6068250b1",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dfd80adf-c90c-4570-abe7-5db1d68fe5ad",
              "parent_uuid": "43228428-c776-4c94-a2fe-1bc6068250b1",
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
          "uuid": "c0fe455b-69fd-49aa-9648-31b7688ccd1a",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "92328836-7c3c-4675-98d1-8ea68e88a4b8",
              "parent_uuid": "c0fe455b-69fd-49aa-9648-31b7688ccd1a",
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
                  "uuid": "f1affa7d-1ad1-4036-9109-3234a4c4208d",
                  "parent_uuid": "92328836-7c3c-4675-98d1-8ea68e88a4b8",
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
          "uuid": "099a0c40-040d-4b39-b75f-fc3a99080f1e",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18328851-bfea-4597-853f-0103378a6de5",
              "parent_uuid": "099a0c40-040d-4b39-b75f-fc3a99080f1e",
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
          "uuid": "45f382c0-c5a3-456d-8e1f-9e36d23864c7",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9c932b0a-22cd-4c76-b475-4a9f834f92e9",
              "parent_uuid": "45f382c0-c5a3-456d-8e1f-9e36d23864c7",
              "tagName": "td",
              "properties": [
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
          "uuid": "e69640a8-51b4-4c5b-b1fd-71a2537646c6",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f36f9b5-150c-4c62-8ae3-e257f0a764a1",
              "parent_uuid": "e69640a8-51b4-4c5b-b1fd-71a2537646c6",
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
              "uuid": "afdf6951-971e-4aa6-b2d1-90378ca3d10e",
              "parent_uuid": "e69640a8-51b4-4c5b-b1fd-71a2537646c6",
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
              "uuid": "e7f3ceb2-eacf-4c1b-83b4-6457b621f898",
              "parent_uuid": "e69640a8-51b4-4c5b-b1fd-71a2537646c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e33d759-e60a-40e8-832e-7fb4cf9fbfc2",
                  "parent_uuid": "e7f3ceb2-eacf-4c1b-83b4-6457b621f898",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3137141-3d14-49a1-b12a-428d54c08924",
              "parent_uuid": "e69640a8-51b4-4c5b-b1fd-71a2537646c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e99ad2ef-cb40-45c7-8468-f2bd313c6d90",
                  "parent_uuid": "c3137141-3d14-49a1-b12a-428d54c08924",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a62fe7d-831c-48e1-b944-1e14a82d946f",
              "parent_uuid": "e69640a8-51b4-4c5b-b1fd-71a2537646c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8782e59-49a6-4bf0-a375-9bf1ac77dfb1",
                  "parent_uuid": "7a62fe7d-831c-48e1-b944-1e14a82d946f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05963c3e-fdb3-4a88-bde9-aee7bc0c6a1a",
              "parent_uuid": "e69640a8-51b4-4c5b-b1fd-71a2537646c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49aa22de-632d-4aec-8e6c-edc28207c08e",
                  "parent_uuid": "05963c3e-fdb3-4a88-bde9-aee7bc0c6a1a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "11227589-086c-41c8-91f1-13c3a836e069",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "876d9009-82bd-4d2c-8c2e-aacd3bd40eb9",
              "parent_uuid": "11227589-086c-41c8-91f1-13c3a836e069",
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
              "uuid": "a0d301dc-84b9-44cd-a11d-af303aa84dd9",
              "parent_uuid": "11227589-086c-41c8-91f1-13c3a836e069",
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
              "uuid": "8ff4a78b-ea66-4c87-8664-cb0b564a5c8b",
              "parent_uuid": "11227589-086c-41c8-91f1-13c3a836e069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2facb6f-33f4-4270-9ad6-135e44656424",
                  "parent_uuid": "8ff4a78b-ea66-4c87-8664-cb0b564a5c8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ffed924-15e4-43b6-bff9-6f46cd42db0b",
              "parent_uuid": "11227589-086c-41c8-91f1-13c3a836e069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a306de5-4fbd-4ec9-a888-b097f46a4e76",
                  "parent_uuid": "8ffed924-15e4-43b6-bff9-6f46cd42db0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f77194f5-0725-46ce-8882-f0a6c3a66b78",
              "parent_uuid": "11227589-086c-41c8-91f1-13c3a836e069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26d0868e-96a6-4e61-a1b3-e8d51db659dd",
                  "parent_uuid": "f77194f5-0725-46ce-8882-f0a6c3a66b78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ad3e02a-cecc-4489-a615-29563a352f58",
              "parent_uuid": "11227589-086c-41c8-91f1-13c3a836e069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d934a4ed-d347-4158-aa4d-3820fb6909d2",
                  "parent_uuid": "5ad3e02a-cecc-4489-a615-29563a352f58",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cb108567-2f81-475c-a8bb-d1542d1c5f69",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c925aba7-8a70-42be-9762-d904529101a8",
              "parent_uuid": "cb108567-2f81-475c-a8bb-d1542d1c5f69",
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
              "uuid": "3c20c7ed-6c03-4ecc-aad7-dbaede7078f2",
              "parent_uuid": "cb108567-2f81-475c-a8bb-d1542d1c5f69",
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
              "uuid": "a3137a7f-f92a-44ae-9462-08d5a092c89b",
              "parent_uuid": "cb108567-2f81-475c-a8bb-d1542d1c5f69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ddc872f-fd00-4f08-8162-887e3aebed44",
                  "parent_uuid": "a3137a7f-f92a-44ae-9462-08d5a092c89b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a91bb242-46cc-4614-a45e-2446c0e2c64c",
              "parent_uuid": "cb108567-2f81-475c-a8bb-d1542d1c5f69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "533a9fd8-5e98-42a1-9f58-527bf55dc7e1",
                  "parent_uuid": "a91bb242-46cc-4614-a45e-2446c0e2c64c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20320311-594a-4e67-ab4c-3a842ac39e89",
              "parent_uuid": "cb108567-2f81-475c-a8bb-d1542d1c5f69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2475f4ba-dd17-46f3-9aca-4be82a9dc7f2",
                  "parent_uuid": "20320311-594a-4e67-ab4c-3a842ac39e89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "422d31d9-bfdc-4c1d-97f6-9038c1cac446",
              "parent_uuid": "cb108567-2f81-475c-a8bb-d1542d1c5f69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c51408de-ed90-4e3b-996b-3e9056b8541b",
                  "parent_uuid": "422d31d9-bfdc-4c1d-97f6-9038c1cac446",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ffa002d-88c2-4184-b427-08e21beb8784",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c124c887-d03f-40ad-a379-aea6454419e4",
              "parent_uuid": "4ffa002d-88c2-4184-b427-08e21beb8784",
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
              "uuid": "1ea61ee8-f33c-4d65-811b-6a372668f7bd",
              "parent_uuid": "4ffa002d-88c2-4184-b427-08e21beb8784",
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
              "uuid": "c8952579-c1ff-4e69-93b3-6eaf8ab69031",
              "parent_uuid": "4ffa002d-88c2-4184-b427-08e21beb8784",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b90c676f-344a-4b86-83e2-efdf00c7e201",
                  "parent_uuid": "c8952579-c1ff-4e69-93b3-6eaf8ab69031",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dce775d4-3bba-43fe-a4bd-99c17ff577a6",
              "parent_uuid": "4ffa002d-88c2-4184-b427-08e21beb8784",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09aa6ec3-919c-4386-aac4-31cde8eb4c19",
                  "parent_uuid": "dce775d4-3bba-43fe-a4bd-99c17ff577a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26cbe620-2b51-4e40-9987-09d428866e9a",
              "parent_uuid": "4ffa002d-88c2-4184-b427-08e21beb8784",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "221a37d7-0523-497c-b745-2002b6539057",
                  "parent_uuid": "26cbe620-2b51-4e40-9987-09d428866e9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f446fcff-69ab-4e7e-93c3-5e7541c39833",
              "parent_uuid": "4ffa002d-88c2-4184-b427-08e21beb8784",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4175e76-31e3-4235-860f-d16c6cf18ce2",
                  "parent_uuid": "f446fcff-69ab-4e7e-93c3-5e7541c39833",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "baf2e7a0-2a19-4903-a2f5-72b8262f5362",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c16b336c-efb0-49d9-a1b8-88c966e54dc4",
              "parent_uuid": "baf2e7a0-2a19-4903-a2f5-72b8262f5362",
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
          "uuid": "b463d958-8397-49a4-b57d-5672e7aa5230",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "046cd6a0-7156-46dd-92f3-304ae14e3b07",
              "parent_uuid": "b463d958-8397-49a4-b57d-5672e7aa5230",
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
              "uuid": "f515cb2c-b03e-49a3-a823-4891cdef70a0",
              "parent_uuid": "b463d958-8397-49a4-b57d-5672e7aa5230",
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
              "uuid": "73d0498a-1e7d-4595-9bfc-bb778b381f47",
              "parent_uuid": "b463d958-8397-49a4-b57d-5672e7aa5230",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65f3688b-ef34-4166-a49f-f41608462192",
                  "parent_uuid": "73d0498a-1e7d-4595-9bfc-bb778b381f47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34d1d766-7e6f-49f2-b708-3b66dd1c3ef1",
              "parent_uuid": "b463d958-8397-49a4-b57d-5672e7aa5230",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3383da81-e0d5-47b6-a110-6f75aca52ba4",
                  "parent_uuid": "34d1d766-7e6f-49f2-b708-3b66dd1c3ef1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "673d6295-2a72-4c11-aa24-d712d2a131dd",
              "parent_uuid": "b463d958-8397-49a4-b57d-5672e7aa5230",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4dfece1f-a7a3-446d-abde-4f09c24e103b",
                  "parent_uuid": "673d6295-2a72-4c11-aa24-d712d2a131dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "840827a1-c668-44c8-88f7-25ac837ffca1",
              "parent_uuid": "b463d958-8397-49a4-b57d-5672e7aa5230",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c36601e2-4179-458a-9708-7847911d2737",
                  "parent_uuid": "840827a1-c668-44c8-88f7-25ac837ffca1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e5b34094-cef1-427f-ab51-86f66d2c66f3",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ccf1e643-cbf6-481e-b590-fa247bcc8a2f",
              "parent_uuid": "e5b34094-cef1-427f-ab51-86f66d2c66f3",
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
              "uuid": "dac7c560-1c52-4364-bf22-807b0ea28269",
              "parent_uuid": "e5b34094-cef1-427f-ab51-86f66d2c66f3",
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
              "uuid": "f74440bb-4e35-4cb5-9180-7273d2b32fa8",
              "parent_uuid": "e5b34094-cef1-427f-ab51-86f66d2c66f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88ec56c8-a026-482f-b236-00f0757647fa",
                  "parent_uuid": "f74440bb-4e35-4cb5-9180-7273d2b32fa8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdfc9b84-f9b0-46c1-9614-99dabe7bf460",
              "parent_uuid": "e5b34094-cef1-427f-ab51-86f66d2c66f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a89f88e-9032-4f03-8b27-6db9ea91716c",
                  "parent_uuid": "cdfc9b84-f9b0-46c1-9614-99dabe7bf460",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "821d4325-42e7-4e53-b3aa-c85166ca2337",
              "parent_uuid": "e5b34094-cef1-427f-ab51-86f66d2c66f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "972aa158-095f-4d4e-978f-2c941e343aa6",
                  "parent_uuid": "821d4325-42e7-4e53-b3aa-c85166ca2337",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ff4477c-3b10-43dd-b8d7-e0f6c80cf8ee",
              "parent_uuid": "e5b34094-cef1-427f-ab51-86f66d2c66f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e2f16a4-57f7-410e-9116-0c6f9a283c93",
                  "parent_uuid": "6ff4477c-3b10-43dd-b8d7-e0f6c80cf8ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fc380c56-c38f-4539-966b-69b5b61421bd",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bfc1215f-a2ba-43c0-afc9-3f84f01b730e",
              "parent_uuid": "fc380c56-c38f-4539-966b-69b5b61421bd",
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
              "uuid": "b261c922-935d-4d19-883c-3cd179bd560f",
              "parent_uuid": "fc380c56-c38f-4539-966b-69b5b61421bd",
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
              "uuid": "643722ff-9ae5-4875-b2d2-0ed47a25ff1f",
              "parent_uuid": "fc380c56-c38f-4539-966b-69b5b61421bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7345778-c9e7-4ce4-b756-dfc79a3882ff",
                  "parent_uuid": "643722ff-9ae5-4875-b2d2-0ed47a25ff1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e201e24d-4f77-435a-9214-561a79094b9e",
              "parent_uuid": "fc380c56-c38f-4539-966b-69b5b61421bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53b38b13-5397-4ffb-b99a-422d1d6d2d59",
                  "parent_uuid": "e201e24d-4f77-435a-9214-561a79094b9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1b97661-c692-4271-b3b1-d1cf6b4f4bd9",
              "parent_uuid": "fc380c56-c38f-4539-966b-69b5b61421bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cdbfcc0-4a47-4c4d-8754-14ad8c0ce0e6",
                  "parent_uuid": "b1b97661-c692-4271-b3b1-d1cf6b4f4bd9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47a56dc8-df2c-4a1e-be0f-002d06b83579",
              "parent_uuid": "fc380c56-c38f-4539-966b-69b5b61421bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b556087-d85e-420d-844c-8cf7db15c97c",
                  "parent_uuid": "47a56dc8-df2c-4a1e-be0f-002d06b83579",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "82cdbd54-de6a-4418-b8ae-66d871ffda14",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85a5e3b5-9cb5-4bd4-8fec-0122f0265d85",
              "parent_uuid": "82cdbd54-de6a-4418-b8ae-66d871ffda14",
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
              "uuid": "e6d5b871-c051-43f5-b6bd-c2bebeb9a372",
              "parent_uuid": "82cdbd54-de6a-4418-b8ae-66d871ffda14",
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
              "uuid": "eacc728e-95c1-436a-87eb-69dc5357f0d0",
              "parent_uuid": "82cdbd54-de6a-4418-b8ae-66d871ffda14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5707d723-6478-4221-bee0-34e000e6d2e3",
                  "parent_uuid": "eacc728e-95c1-436a-87eb-69dc5357f0d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "360662ea-4e64-4015-806c-b9305dd52fcb",
              "parent_uuid": "82cdbd54-de6a-4418-b8ae-66d871ffda14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "328af829-b170-4ce9-aad5-90a6705fb32b",
                  "parent_uuid": "360662ea-4e64-4015-806c-b9305dd52fcb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "237f2314-af38-4733-93b7-1ef35504b39c",
              "parent_uuid": "82cdbd54-de6a-4418-b8ae-66d871ffda14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f91259d-71d8-4b5e-9742-0b00bd4039b8",
                  "parent_uuid": "237f2314-af38-4733-93b7-1ef35504b39c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0e356c0-0e3b-42a2-93d2-701564d35880",
              "parent_uuid": "82cdbd54-de6a-4418-b8ae-66d871ffda14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c06aeb2-b778-4550-980a-57f810ea0d30",
                  "parent_uuid": "b0e356c0-0e3b-42a2-93d2-701564d35880",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "07705248-7112-4811-af7e-17326e3cd67a",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e8c2bd2-2919-434b-a96f-3b7348b1ae0c",
              "parent_uuid": "07705248-7112-4811-af7e-17326e3cd67a",
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
          "uuid": "30a2d684-5048-40d8-9b32-b92487e6a3b2",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae8a95c3-6494-4dee-a1d3-72f1ebd8fdcc",
              "parent_uuid": "30a2d684-5048-40d8-9b32-b92487e6a3b2",
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
          "uuid": "65f72198-2ddd-4fca-aee3-53004c6732c9",
          "parent_uuid": "5ff7b10b-01de-434a-a256-86186a5754bb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0e875a0-57e0-4b69-a418-15aceb88d06b",
              "parent_uuid": "65f72198-2ddd-4fca-aee3-53004c6732c9",
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
                  "uuid": "d359a091-1e13-43e7-be97-e7f6e8adfe0b",
                  "parent_uuid": "e0e875a0-57e0-4b69-a418-15aceb88d06b",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

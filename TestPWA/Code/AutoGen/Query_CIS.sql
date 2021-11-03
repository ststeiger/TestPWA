
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
  "uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "b4a09dd4-a845-455d-85cb-7ff4e9ab5f2b",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "d55cf67d-ca49-48b0-aa37-dda5b688c0b5",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "c617cf75-0fa0-4618-839c-3d062b8cd464",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "5422c253-07a2-421f-9260-9fb94ed300d8",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "8cac8551-0b05-4337-a09e-5fbad1039c1d",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "5787a0b2-6a63-4de9-a8d8-2e4c52be5acb",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "ce0ede2c-1caa-4a0d-831e-011f9d5ad7b4",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
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
      "uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
      "parent_uuid": "811e2650-9e4d-4745-8167-a8c267422204",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b2366794-0e74-4c9f-9919-3674e920b8e6",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d91e2dbb-77a8-4dc7-8897-6646759f7e3b",
              "parent_uuid": "b2366794-0e74-4c9f-9919-3674e920b8e6",
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
              "uuid": "357bfcbf-a880-4b69-a6b1-1e7b2abfd390",
              "parent_uuid": "b2366794-0e74-4c9f-9919-3674e920b8e6",
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
              "uuid": "9910a57b-d00e-4d66-add5-c9e878f61509",
              "parent_uuid": "b2366794-0e74-4c9f-9919-3674e920b8e6",
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
              "uuid": "d221bd3a-9712-430c-8357-38f35e81dd24",
              "parent_uuid": "b2366794-0e74-4c9f-9919-3674e920b8e6",
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
          "uuid": "ef8bfc46-5523-407e-8568-8139249d6218",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "730992ef-d7eb-4ead-92fc-526a5f034bdc",
              "parent_uuid": "ef8bfc46-5523-407e-8568-8139249d6218",
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
              "uuid": "cd04dde3-27fe-461e-9bdb-750cb258ab83",
              "parent_uuid": "ef8bfc46-5523-407e-8568-8139249d6218",
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
              "uuid": "485d1f12-602d-4d76-b4b1-f102556d4ca2",
              "parent_uuid": "ef8bfc46-5523-407e-8568-8139249d6218",
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
              "uuid": "31e6a0b3-ce92-445c-8552-4ec296030269",
              "parent_uuid": "ef8bfc46-5523-407e-8568-8139249d6218",
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
          "uuid": "c78b8a95-c7d3-4f65-abb0-ed1db9fbd98d",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "023978c6-e56c-4d10-a9be-868c590b20f6",
              "parent_uuid": "c78b8a95-c7d3-4f65-abb0-ed1db9fbd98d",
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
              "uuid": "59f3bc8a-7685-4477-ad9b-e158461a89ab",
              "parent_uuid": "c78b8a95-c7d3-4f65-abb0-ed1db9fbd98d",
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
              "uuid": "68053057-0a19-4083-8b00-447665d3ef08",
              "parent_uuid": "c78b8a95-c7d3-4f65-abb0-ed1db9fbd98d",
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
              "uuid": "8349439d-fcc8-444c-9103-64a62157c4d4",
              "parent_uuid": "c78b8a95-c7d3-4f65-abb0-ed1db9fbd98d",
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
              "uuid": "74000be1-2f56-4a10-9a25-7217ba6562be",
              "parent_uuid": "c78b8a95-c7d3-4f65-abb0-ed1db9fbd98d",
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
              "uuid": "ea77b504-c24c-436f-8732-1ddc81aa8c33",
              "parent_uuid": "c78b8a95-c7d3-4f65-abb0-ed1db9fbd98d",
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
          "uuid": "bf9dcf57-0dd2-44a1-8709-e8d83355bb9d",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "733e7a48-315b-4fae-8780-2de3678dfbb0",
              "parent_uuid": "bf9dcf57-0dd2-44a1-8709-e8d83355bb9d",
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
          "uuid": "9eb135e3-3dfe-4549-8f23-fc65f80044e3",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26a6b201-9fab-4e4f-b12f-cdcce7509e7c",
              "parent_uuid": "9eb135e3-3dfe-4549-8f23-fc65f80044e3",
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
              "uuid": "17841d78-3dc9-48d8-9e67-340efb00fa7f",
              "parent_uuid": "9eb135e3-3dfe-4549-8f23-fc65f80044e3",
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
              "uuid": "763f06de-3ce9-4294-b70b-a75730ebb6a2",
              "parent_uuid": "9eb135e3-3dfe-4549-8f23-fc65f80044e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f753b2d0-41a3-4633-839c-f5735ae89bd3",
                  "parent_uuid": "763f06de-3ce9-4294-b70b-a75730ebb6a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "082c5eaf-1c2b-434b-abe9-227c74652f9b",
              "parent_uuid": "9eb135e3-3dfe-4549-8f23-fc65f80044e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b45c737c-9009-4249-af77-f2177f2bbe73",
                  "parent_uuid": "082c5eaf-1c2b-434b-abe9-227c74652f9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77124231-b181-454b-8a4b-b94ef6db2379",
              "parent_uuid": "9eb135e3-3dfe-4549-8f23-fc65f80044e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8a1f85c-8d17-49d1-beb5-028f926c6d5e",
                  "parent_uuid": "77124231-b181-454b-8a4b-b94ef6db2379",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b19fc4d-f6b2-4b5c-bce4-d881d922aba6",
              "parent_uuid": "9eb135e3-3dfe-4549-8f23-fc65f80044e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "837ad336-ec7c-4505-a42b-136f6e97370e",
                  "parent_uuid": "9b19fc4d-f6b2-4b5c-bce4-d881d922aba6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14515528-ea33-44c5-9e05-bf107f895c0f",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9a8d4be-287b-48dd-8185-50366ad9f81a",
              "parent_uuid": "14515528-ea33-44c5-9e05-bf107f895c0f",
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
              "uuid": "1532d862-2db4-4175-bc15-6e1db39a5e2c",
              "parent_uuid": "14515528-ea33-44c5-9e05-bf107f895c0f",
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
              "uuid": "4928615c-f508-406c-bf0d-9872bfebf849",
              "parent_uuid": "14515528-ea33-44c5-9e05-bf107f895c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc20b1ad-8252-41b0-8277-a7dad1c36205",
                  "parent_uuid": "4928615c-f508-406c-bf0d-9872bfebf849",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d96476f9-9cc0-4345-85fd-7093584f08bb",
              "parent_uuid": "14515528-ea33-44c5-9e05-bf107f895c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd3a8948-4055-411d-bf89-8e53d8b51498",
                  "parent_uuid": "d96476f9-9cc0-4345-85fd-7093584f08bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd999266-c7e1-480b-b557-aa12c96d429d",
              "parent_uuid": "14515528-ea33-44c5-9e05-bf107f895c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f29b75b-47fd-4a75-9321-6160fc12cecd",
                  "parent_uuid": "cd999266-c7e1-480b-b557-aa12c96d429d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70dacc97-e21b-4f74-b2a4-cf78b576aa7c",
              "parent_uuid": "14515528-ea33-44c5-9e05-bf107f895c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81d4262d-0aaa-4efb-b8ee-c372de6e8388",
                  "parent_uuid": "70dacc97-e21b-4f74-b2a4-cf78b576aa7c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9211c021-b54e-487f-a4a2-c3240b3774ce",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d64b0b6-ff9c-4ad0-aa68-ba44e6cd206c",
              "parent_uuid": "9211c021-b54e-487f-a4a2-c3240b3774ce",
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
              "uuid": "5f932cb6-fe85-4218-aa9f-1ebf3c4340ac",
              "parent_uuid": "9211c021-b54e-487f-a4a2-c3240b3774ce",
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
              "uuid": "cffb2c5e-39ec-4441-8048-b72ac7482c11",
              "parent_uuid": "9211c021-b54e-487f-a4a2-c3240b3774ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a4d8956-660c-441a-9c10-58962818d482",
                  "parent_uuid": "cffb2c5e-39ec-4441-8048-b72ac7482c11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf214dd8-4091-47cf-9ec3-b6cd5a18626e",
              "parent_uuid": "9211c021-b54e-487f-a4a2-c3240b3774ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b88fffe-2b3e-4e9b-b2a6-d2f67562d91f",
                  "parent_uuid": "cf214dd8-4091-47cf-9ec3-b6cd5a18626e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2fa4fcc-3ce6-4202-bb33-f034d3047560",
              "parent_uuid": "9211c021-b54e-487f-a4a2-c3240b3774ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e980138a-bbe0-44a5-8f7c-08a65174409d",
                  "parent_uuid": "b2fa4fcc-3ce6-4202-bb33-f034d3047560",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dbb207e-bf07-4baa-b244-432e223c28cf",
              "parent_uuid": "9211c021-b54e-487f-a4a2-c3240b3774ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed30ba3b-71e8-4ef7-b8ef-8c77c614b36e",
                  "parent_uuid": "6dbb207e-bf07-4baa-b244-432e223c28cf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "95e8a7b5-a11a-4ad2-9539-f24c05024d1d",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea8b7305-57a9-470d-833a-1398a24df506",
              "parent_uuid": "95e8a7b5-a11a-4ad2-9539-f24c05024d1d",
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
              "uuid": "ed344967-29cc-4798-9b14-2ad7527af36e",
              "parent_uuid": "95e8a7b5-a11a-4ad2-9539-f24c05024d1d",
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
              "uuid": "e6ddf8c2-eaec-45b6-af21-a182a7584456",
              "parent_uuid": "95e8a7b5-a11a-4ad2-9539-f24c05024d1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40dad0d6-6ddf-418c-8025-f3ecb0cad774",
                  "parent_uuid": "e6ddf8c2-eaec-45b6-af21-a182a7584456",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64e8ff25-9c74-411b-be8e-11f7d9ec0838",
              "parent_uuid": "95e8a7b5-a11a-4ad2-9539-f24c05024d1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8aaf5495-1fa4-457c-98fe-490805a46527",
                  "parent_uuid": "64e8ff25-9c74-411b-be8e-11f7d9ec0838",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "820c2dbc-fda6-4158-b8a4-1002f45b217b",
              "parent_uuid": "95e8a7b5-a11a-4ad2-9539-f24c05024d1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4a0c8bd-d61e-41f4-8049-03030f1f505c",
                  "parent_uuid": "820c2dbc-fda6-4158-b8a4-1002f45b217b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17807966-bf39-4dc1-a447-ebaf39d459db",
              "parent_uuid": "95e8a7b5-a11a-4ad2-9539-f24c05024d1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33fce8e1-ce74-441b-bdd3-9775d1757acc",
                  "parent_uuid": "17807966-bf39-4dc1-a447-ebaf39d459db",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cae72907-3547-44ea-882a-e77fdda38a84",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "7fe16aea-c6db-45e3-8a1c-cfc93a90b63e",
              "parent_uuid": "cae72907-3547-44ea-882a-e77fdda38a84",
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
          "uuid": "b4f2bd5f-8e93-4578-b0b3-2d189899b5f0",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d71b756-cbd9-4afb-b19a-2e739af994ba",
              "parent_uuid": "b4f2bd5f-8e93-4578-b0b3-2d189899b5f0",
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
              "uuid": "a482dafe-5458-4ce3-9956-612facc8a5ea",
              "parent_uuid": "b4f2bd5f-8e93-4578-b0b3-2d189899b5f0",
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
              "uuid": "d840c92a-9742-435d-84ef-44c963580280",
              "parent_uuid": "b4f2bd5f-8e93-4578-b0b3-2d189899b5f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2d0070d-7309-41e3-9a01-8dcbb83c0ce6",
                  "parent_uuid": "d840c92a-9742-435d-84ef-44c963580280",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa7da3c9-3e15-4fb1-ae50-6c2a33c88f9b",
              "parent_uuid": "b4f2bd5f-8e93-4578-b0b3-2d189899b5f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff1e4444-02c7-41be-a327-67f90436d3f3",
                  "parent_uuid": "fa7da3c9-3e15-4fb1-ae50-6c2a33c88f9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df0840bf-6214-4fdd-999c-a37db33880c6",
              "parent_uuid": "b4f2bd5f-8e93-4578-b0b3-2d189899b5f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fdc1ea02-bb57-4819-b7c5-93dd16c8fee1",
                  "parent_uuid": "df0840bf-6214-4fdd-999c-a37db33880c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a35eb5e8-9178-445c-881f-bd58d4bb44c0",
              "parent_uuid": "b4f2bd5f-8e93-4578-b0b3-2d189899b5f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5007fa10-ed61-4ecc-8744-140295f72845",
                  "parent_uuid": "a35eb5e8-9178-445c-881f-bd58d4bb44c0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9eb58dea-3208-45c4-b35a-9e922a08eb8e",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f0a6427-590b-4559-b9c2-d3411e845f82",
              "parent_uuid": "9eb58dea-3208-45c4-b35a-9e922a08eb8e",
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
              "uuid": "810908e4-3965-4473-82cf-632b35a52f44",
              "parent_uuid": "9eb58dea-3208-45c4-b35a-9e922a08eb8e",
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
              "uuid": "5a802092-0e76-417d-870d-e98b05216f9d",
              "parent_uuid": "9eb58dea-3208-45c4-b35a-9e922a08eb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf7bc4af-1dcb-441e-ba14-80e488cb6efe",
                  "parent_uuid": "5a802092-0e76-417d-870d-e98b05216f9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f033e526-5dec-4fd0-bf6a-9826a78e3026",
              "parent_uuid": "9eb58dea-3208-45c4-b35a-9e922a08eb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "810758a9-9889-463b-88d4-99ae61f2d05c",
                  "parent_uuid": "f033e526-5dec-4fd0-bf6a-9826a78e3026",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08aa1125-359d-4b83-a9a5-302bfee7a27d",
              "parent_uuid": "9eb58dea-3208-45c4-b35a-9e922a08eb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6639258-cd92-4d91-ad37-b2b925b5350d",
                  "parent_uuid": "08aa1125-359d-4b83-a9a5-302bfee7a27d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1d1ecf0-5891-4fe1-80ae-5dff4d313915",
              "parent_uuid": "9eb58dea-3208-45c4-b35a-9e922a08eb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "057a6b2b-c86a-4d60-b3c6-18c7f4d4c499",
                  "parent_uuid": "e1d1ecf0-5891-4fe1-80ae-5dff4d313915",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ff1fbd4-32d1-41d0-a86a-e3faaec9ab93",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f586c292-d0c4-45dc-9fe9-029537ef4d0f",
              "parent_uuid": "4ff1fbd4-32d1-41d0-a86a-e3faaec9ab93",
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
              "uuid": "c478acfe-467e-483a-bc0c-2e38574fdcea",
              "parent_uuid": "4ff1fbd4-32d1-41d0-a86a-e3faaec9ab93",
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
              "uuid": "02ec160f-0583-414b-ac29-168711061da5",
              "parent_uuid": "4ff1fbd4-32d1-41d0-a86a-e3faaec9ab93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c953ff9-c0ef-48a8-a22b-9055c8104c2e",
                  "parent_uuid": "02ec160f-0583-414b-ac29-168711061da5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8643ff4b-d7df-46af-a11f-fcb06e6981f5",
              "parent_uuid": "4ff1fbd4-32d1-41d0-a86a-e3faaec9ab93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d475355-7848-4844-8669-254acd681fbd",
                  "parent_uuid": "8643ff4b-d7df-46af-a11f-fcb06e6981f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da69805f-97ce-4eed-8963-efa70dd63d9c",
              "parent_uuid": "4ff1fbd4-32d1-41d0-a86a-e3faaec9ab93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0abfe976-eab4-42ba-a13b-2f8a8fcb46c5",
                  "parent_uuid": "da69805f-97ce-4eed-8963-efa70dd63d9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72e929f6-6cd2-4402-869d-b90f575c3f34",
              "parent_uuid": "4ff1fbd4-32d1-41d0-a86a-e3faaec9ab93",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38957f07-c905-4702-987b-d62b8f22787b",
                  "parent_uuid": "72e929f6-6cd2-4402-869d-b90f575c3f34",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79b72943-951b-4634-906a-8f06ad512f57",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e62cac31-e3de-46bc-b202-e4b6788d45cf",
              "parent_uuid": "79b72943-951b-4634-906a-8f06ad512f57",
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
              "uuid": "90e78bf2-4af0-4b27-ad22-0a69d198b622",
              "parent_uuid": "79b72943-951b-4634-906a-8f06ad512f57",
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
              "uuid": "62c2fe53-992a-4c54-8f1c-b8cb048eda60",
              "parent_uuid": "79b72943-951b-4634-906a-8f06ad512f57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71b27a83-1a8e-4838-a2dd-ab79e4fc798c",
                  "parent_uuid": "62c2fe53-992a-4c54-8f1c-b8cb048eda60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17e69c30-3002-4666-b608-b560087e3a22",
              "parent_uuid": "79b72943-951b-4634-906a-8f06ad512f57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85269b95-1aae-4751-817c-ef6cb38a963c",
                  "parent_uuid": "17e69c30-3002-4666-b608-b560087e3a22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2064f061-79a7-46d4-b413-565caf4c892d",
              "parent_uuid": "79b72943-951b-4634-906a-8f06ad512f57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37046103-e701-48bf-be02-819c42d1351b",
                  "parent_uuid": "2064f061-79a7-46d4-b413-565caf4c892d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3cf7073-1c1a-476b-9101-8ffaa5cc828a",
              "parent_uuid": "79b72943-951b-4634-906a-8f06ad512f57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39928a42-b8ae-481d-82c9-264764f8b35e",
                  "parent_uuid": "c3cf7073-1c1a-476b-9101-8ffaa5cc828a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4bd724d1-2823-4a4d-990f-267c86471b8c",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5455c5c5-c594-48db-89f7-09e26b7b9bb8",
              "parent_uuid": "4bd724d1-2823-4a4d-990f-267c86471b8c",
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
              "uuid": "3ecef6ef-4c5e-4d1c-a3d7-60c6ba454aaa",
              "parent_uuid": "4bd724d1-2823-4a4d-990f-267c86471b8c",
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
              "uuid": "13431901-8a0f-4954-b433-929d8e8ea16e",
              "parent_uuid": "4bd724d1-2823-4a4d-990f-267c86471b8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71de00f1-ddb1-45b5-9e66-56379aaef886",
                  "parent_uuid": "13431901-8a0f-4954-b433-929d8e8ea16e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5ea9e7a-9dca-4aaa-9c71-7385dbc1a372",
              "parent_uuid": "4bd724d1-2823-4a4d-990f-267c86471b8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f00ad55-a343-4dd9-a38a-fd459fe884a6",
                  "parent_uuid": "f5ea9e7a-9dca-4aaa-9c71-7385dbc1a372",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4902e9f-341c-4bf9-8c7a-3eae53083525",
              "parent_uuid": "4bd724d1-2823-4a4d-990f-267c86471b8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47f505ea-c709-4922-af19-d061e32cb8bf",
                  "parent_uuid": "a4902e9f-341c-4bf9-8c7a-3eae53083525",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc745321-6b30-4455-b5f2-9b72cd93b99e",
              "parent_uuid": "4bd724d1-2823-4a4d-990f-267c86471b8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64984449-0b0a-4dd8-8e24-1b771b417fd9",
                  "parent_uuid": "cc745321-6b30-4455-b5f2-9b72cd93b99e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "65de2028-ce29-402c-aae8-54df6dbc7b73",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8a9bfc2-3631-4f05-bc62-8c0adc20a4bf",
              "parent_uuid": "65de2028-ce29-402c-aae8-54df6dbc7b73",
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
              "uuid": "6cd48b1d-afd9-4fd9-b118-3edee234e5d6",
              "parent_uuid": "65de2028-ce29-402c-aae8-54df6dbc7b73",
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
              "uuid": "149998e9-87ff-4bd1-92cb-bd1f7872b073",
              "parent_uuid": "65de2028-ce29-402c-aae8-54df6dbc7b73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d0e58db-386a-499d-bb3c-007bcb46e048",
                  "parent_uuid": "149998e9-87ff-4bd1-92cb-bd1f7872b073",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc47903d-6965-4043-b439-05f71893c273",
              "parent_uuid": "65de2028-ce29-402c-aae8-54df6dbc7b73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95dcd2cc-d2bc-47b1-872c-7453d6548140",
                  "parent_uuid": "bc47903d-6965-4043-b439-05f71893c273",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d64e0191-4736-4caf-8dad-3aa406e08e06",
              "parent_uuid": "65de2028-ce29-402c-aae8-54df6dbc7b73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e511ed3-1d8d-4ae9-a44a-92964ada7a2d",
                  "parent_uuid": "d64e0191-4736-4caf-8dad-3aa406e08e06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc202174-1a83-43bd-ace4-da38d812ada1",
              "parent_uuid": "65de2028-ce29-402c-aae8-54df6dbc7b73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c29b9c38-936f-4a85-907f-86d46bca922a",
                  "parent_uuid": "fc202174-1a83-43bd-ace4-da38d812ada1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "da2a3fcd-aee0-4664-b0a4-f19b8dbd7ba7",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "237fdebd-c98b-4f35-9724-2df0e6216246",
              "parent_uuid": "da2a3fcd-aee0-4664-b0a4-f19b8dbd7ba7",
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
              "uuid": "80dac147-4fc0-4715-8ed7-8bc912f48866",
              "parent_uuid": "da2a3fcd-aee0-4664-b0a4-f19b8dbd7ba7",
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
              "uuid": "71dd008a-ae59-4dbf-bd8e-935ca72c0790",
              "parent_uuid": "da2a3fcd-aee0-4664-b0a4-f19b8dbd7ba7",
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
                  "uuid": "b21ce584-0a8c-4291-a432-fa85151446a9",
                  "parent_uuid": "71dd008a-ae59-4dbf-bd8e-935ca72c0790",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6223a6c-c254-4d50-ac4b-4a2f01408008",
              "parent_uuid": "da2a3fcd-aee0-4664-b0a4-f19b8dbd7ba7",
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
                  "uuid": "f11a00a7-3515-42ae-b631-1458a8722ee5",
                  "parent_uuid": "b6223a6c-c254-4d50-ac4b-4a2f01408008",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2ecdd70-7504-42b4-9b7e-16bd4ade24dc",
              "parent_uuid": "da2a3fcd-aee0-4664-b0a4-f19b8dbd7ba7",
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
                  "uuid": "07ed600b-d75b-4667-b6d7-d8fccbbbc6e9",
                  "parent_uuid": "d2ecdd70-7504-42b4-9b7e-16bd4ade24dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab96f1ad-7f56-433f-b8e4-db7eb41710f1",
              "parent_uuid": "da2a3fcd-aee0-4664-b0a4-f19b8dbd7ba7",
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
                  "uuid": "92629f11-0fd3-4eb3-a523-00f00792b335",
                  "parent_uuid": "ab96f1ad-7f56-433f-b8e4-db7eb41710f1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "974689e0-ccde-4d08-8ab3-18ed6c359398",
              "parent_uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
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
              "uuid": "7e56302a-0e78-4a82-aac7-df1a670642c0",
              "parent_uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
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
              "uuid": "77e91d5a-f61f-43c9-ba9f-f0dfe30a806c",
              "parent_uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
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
              "uuid": "391ab204-896a-455d-beb6-dfaf72e5adf9",
              "parent_uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
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
                  "uuid": "de342826-3447-4832-9cff-cd1604898f7e",
                  "parent_uuid": "391ab204-896a-455d-beb6-dfaf72e5adf9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05118250-1dc4-4318-842b-8ab7241a5605",
              "parent_uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
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
                  "uuid": "979eca25-a7f8-4ec6-8611-c2d32b8ee9f7",
                  "parent_uuid": "05118250-1dc4-4318-842b-8ab7241a5605",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f66b2e56-00b7-4f29-bd9d-aee828857abe",
              "parent_uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
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
                  "uuid": "c2a02586-e4fd-4e48-b1de-ede76af3b5d1",
                  "parent_uuid": "f66b2e56-00b7-4f29-bd9d-aee828857abe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc6e3342-ba68-4e32-8193-69192d79d64c",
              "parent_uuid": "ab97fd5a-6e75-4286-be3d-df640fd6fe41",
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
                  "uuid": "c75717f4-6a5e-4090-a1a7-8c980a81d93d",
                  "parent_uuid": "fc6e3342-ba68-4e32-8193-69192d79d64c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9846830-408d-465f-8855-2074acf9681e",
              "parent_uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
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
              "uuid": "605668f2-c2ca-4156-be80-a4e79b0597fc",
              "parent_uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
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
              "uuid": "24d607b5-9d44-4cf4-95b6-4337f58b077c",
              "parent_uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
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
                  "uuid": "8cb4e332-24a7-47eb-b92d-9e57ecd35587",
                  "parent_uuid": "24d607b5-9d44-4cf4-95b6-4337f58b077c",
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
              "uuid": "b2a264c3-0734-44aa-8c26-f88a2701a9bc",
              "parent_uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
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
                  "uuid": "ac4d0863-13a5-4c48-9c0d-369169623d36",
                  "parent_uuid": "b2a264c3-0734-44aa-8c26-f88a2701a9bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "998bd344-89ca-4277-9fa1-3d8a2c3da4c5",
              "parent_uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
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
                  "uuid": "c87cde1f-31b3-4a34-94d7-ebedbd270181",
                  "parent_uuid": "998bd344-89ca-4277-9fa1-3d8a2c3da4c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91434f86-05cc-4078-bb75-985f743ad7b2",
              "parent_uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
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
                  "uuid": "9ce49897-6dbb-40a2-872a-30ff13c82d88",
                  "parent_uuid": "91434f86-05cc-4078-bb75-985f743ad7b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6065e84-8196-4fbf-b6aa-b8ef2794615b",
              "parent_uuid": "0dccf70f-7dfa-441e-ab79-3d63f7f13341",
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
                  "uuid": "a1d5643a-f637-4292-890e-48b344d4226d",
                  "parent_uuid": "c6065e84-8196-4fbf-b6aa-b8ef2794615b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5b92f2b7-36bf-4540-ab28-5c155d1cae9b",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8b16ac8-dd12-4aba-89d9-1edec4d5651b",
              "parent_uuid": "5b92f2b7-36bf-4540-ab28-5c155d1cae9b",
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
              "uuid": "bb964e43-4f12-4a30-99d9-a945011fda93",
              "parent_uuid": "5b92f2b7-36bf-4540-ab28-5c155d1cae9b",
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
              "uuid": "c923bafb-d3d8-4a9c-b028-408c684d22dd",
              "parent_uuid": "5b92f2b7-36bf-4540-ab28-5c155d1cae9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "847ae2d9-559f-4e46-8c11-21882d9dfd0b",
                  "parent_uuid": "c923bafb-d3d8-4a9c-b028-408c684d22dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c4e35ca-be4e-4d79-988b-21721fdfb68d",
              "parent_uuid": "5b92f2b7-36bf-4540-ab28-5c155d1cae9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35f81075-533a-40a5-b7d0-d74b6c0e7e52",
                  "parent_uuid": "9c4e35ca-be4e-4d79-988b-21721fdfb68d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6aaa6c2-f306-43fa-8d53-5a4481ae1012",
              "parent_uuid": "5b92f2b7-36bf-4540-ab28-5c155d1cae9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10f111ba-2022-4621-8218-bb5ad7373ff1",
                  "parent_uuid": "f6aaa6c2-f306-43fa-8d53-5a4481ae1012",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "562fe54a-b43b-4e90-a2a0-05f46813884a",
              "parent_uuid": "5b92f2b7-36bf-4540-ab28-5c155d1cae9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9be2c752-ce55-496d-bd30-8de955199b7a",
                  "parent_uuid": "562fe54a-b43b-4e90-a2a0-05f46813884a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "817c8e7e-7d8a-45b5-8a1b-c3c355ec4bef",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95a2ee80-f818-48a6-b794-98dd576c977f",
              "parent_uuid": "817c8e7e-7d8a-45b5-8a1b-c3c355ec4bef",
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
              "uuid": "af27223b-c5ae-4957-8361-58a9e2cffb98",
              "parent_uuid": "817c8e7e-7d8a-45b5-8a1b-c3c355ec4bef",
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
              "uuid": "77fc28ea-f709-4648-9197-07e5a2bcc3cb",
              "parent_uuid": "817c8e7e-7d8a-45b5-8a1b-c3c355ec4bef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7510670d-495e-4324-8e5c-a45b8ac40c91",
                  "parent_uuid": "77fc28ea-f709-4648-9197-07e5a2bcc3cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3672331-c20a-42dd-bc27-fc3c3edcb657",
              "parent_uuid": "817c8e7e-7d8a-45b5-8a1b-c3c355ec4bef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb983300-33c7-405d-a5b6-b4695eaa5883",
                  "parent_uuid": "e3672331-c20a-42dd-bc27-fc3c3edcb657",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25dc1862-b39c-4eab-83c7-e870e88d51fe",
              "parent_uuid": "817c8e7e-7d8a-45b5-8a1b-c3c355ec4bef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e0a0ec5-a363-4586-a5bf-d732db42193a",
                  "parent_uuid": "25dc1862-b39c-4eab-83c7-e870e88d51fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6da3ef10-53dc-48b8-b92f-abdeb5657981",
              "parent_uuid": "817c8e7e-7d8a-45b5-8a1b-c3c355ec4bef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2699db68-acb5-4d4c-bd28-419fc5b8240c",
                  "parent_uuid": "6da3ef10-53dc-48b8-b92f-abdeb5657981",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9aaab73c-21b9-4211-a364-1e953e45eccf",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b583990-0ba8-471e-b7c6-2fab3a285553",
              "parent_uuid": "9aaab73c-21b9-4211-a364-1e953e45eccf",
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
              "uuid": "ad0a8f36-1a48-4a47-8a1d-e9a1aad02bc7",
              "parent_uuid": "9aaab73c-21b9-4211-a364-1e953e45eccf",
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
              "uuid": "45cf7277-9aa3-4409-a57e-fe4b58766aac",
              "parent_uuid": "9aaab73c-21b9-4211-a364-1e953e45eccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19a3e176-71ca-4a85-992f-fa7bf4c03a7f",
                  "parent_uuid": "45cf7277-9aa3-4409-a57e-fe4b58766aac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92d1ef71-b88d-41da-a4cf-5d8bf0315042",
              "parent_uuid": "9aaab73c-21b9-4211-a364-1e953e45eccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a652c8a5-4da5-4985-928d-9c90957b4990",
                  "parent_uuid": "92d1ef71-b88d-41da-a4cf-5d8bf0315042",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6290ef7a-4c05-4d9b-9517-afcded3df561",
              "parent_uuid": "9aaab73c-21b9-4211-a364-1e953e45eccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f1328ba-b9e5-48f8-801b-f81dc378bfbb",
                  "parent_uuid": "6290ef7a-4c05-4d9b-9517-afcded3df561",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5449d59e-c6d2-4032-9f26-c08e0af527cf",
              "parent_uuid": "9aaab73c-21b9-4211-a364-1e953e45eccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33ad2229-11fd-4517-842c-e6cba3726b5f",
                  "parent_uuid": "5449d59e-c6d2-4032-9f26-c08e0af527cf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1a954871-d951-46c7-ac9c-9272ec097658",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e50847d-5b2b-4456-b0f2-60d000e2d901",
              "parent_uuid": "1a954871-d951-46c7-ac9c-9272ec097658",
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
              "uuid": "801b58f4-7e12-4fd8-8221-9f100a04334e",
              "parent_uuid": "1a954871-d951-46c7-ac9c-9272ec097658",
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
              "uuid": "a5f2d29e-0629-42db-9bc7-e2926196bb47",
              "parent_uuid": "1a954871-d951-46c7-ac9c-9272ec097658",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c6795bd-fb55-49f5-a97e-10d60c71664e",
                  "parent_uuid": "a5f2d29e-0629-42db-9bc7-e2926196bb47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29667357-c210-4c20-bc0a-c1e63915db3d",
              "parent_uuid": "1a954871-d951-46c7-ac9c-9272ec097658",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c05f710-acb2-4893-bfb9-9b9c3791c464",
                  "parent_uuid": "29667357-c210-4c20-bc0a-c1e63915db3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6541bcdd-719b-4274-b6c7-b74467e574c5",
              "parent_uuid": "1a954871-d951-46c7-ac9c-9272ec097658",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4be8ba93-cee2-40a3-a2be-0f60803faf2c",
                  "parent_uuid": "6541bcdd-719b-4274-b6c7-b74467e574c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30831b19-d87e-43c9-afc9-1fe12f9bb962",
              "parent_uuid": "1a954871-d951-46c7-ac9c-9272ec097658",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d60ff1ed-03ff-4e11-b5ad-8e1c083c6a06",
                  "parent_uuid": "30831b19-d87e-43c9-afc9-1fe12f9bb962",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "822517cf-26e8-43f9-bb8e-8f32e7989574",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "89a9cd6a-3a7f-47bf-a5f9-7686e10ed1eb",
              "parent_uuid": "822517cf-26e8-43f9-bb8e-8f32e7989574",
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
          "uuid": "b086e128-227c-45ad-87ce-d541dbedd514",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a70c2a0d-d37a-437d-9b42-af9829a6cb5d",
              "parent_uuid": "b086e128-227c-45ad-87ce-d541dbedd514",
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
              "uuid": "1916d35e-0ad9-4a9c-a883-0f8a06d842f3",
              "parent_uuid": "b086e128-227c-45ad-87ce-d541dbedd514",
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
              "uuid": "d8a3a970-098a-4212-aea1-ecacb79100ce",
              "parent_uuid": "b086e128-227c-45ad-87ce-d541dbedd514",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a91ab29c-60eb-419e-b49d-60672c3590c9",
                  "parent_uuid": "d8a3a970-098a-4212-aea1-ecacb79100ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1494033a-40b2-4026-bb5f-2af9d5d99b2f",
              "parent_uuid": "b086e128-227c-45ad-87ce-d541dbedd514",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70004db6-c888-4d17-a2ee-c7729d906892",
                  "parent_uuid": "1494033a-40b2-4026-bb5f-2af9d5d99b2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05121adf-1161-407b-bc0d-e35843a5fb94",
              "parent_uuid": "b086e128-227c-45ad-87ce-d541dbedd514",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0e39730-cc56-46c6-963d-d881d07ad6f8",
                  "parent_uuid": "05121adf-1161-407b-bc0d-e35843a5fb94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee27a9b2-7937-45e8-97a8-f57148f1b2a1",
              "parent_uuid": "b086e128-227c-45ad-87ce-d541dbedd514",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "feaeda24-f5b6-48d6-97e1-0d3de2ce9c4d",
                  "parent_uuid": "ee27a9b2-7937-45e8-97a8-f57148f1b2a1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "16a5ed8e-f717-46fe-bf6e-9d708d8f43c0",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "142c32f4-331b-40fd-bb7f-ed77d0af4359",
              "parent_uuid": "16a5ed8e-f717-46fe-bf6e-9d708d8f43c0",
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
              "uuid": "a25cabb7-d08a-4566-a2a0-8fcd9d51daa5",
              "parent_uuid": "16a5ed8e-f717-46fe-bf6e-9d708d8f43c0",
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
              "uuid": "baf3132a-0b1a-40f7-8cd0-1602e26554b2",
              "parent_uuid": "16a5ed8e-f717-46fe-bf6e-9d708d8f43c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d707795f-76a9-4f57-bbc8-8c27e75e5ae8",
                  "parent_uuid": "baf3132a-0b1a-40f7-8cd0-1602e26554b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8df7215-ea47-4d36-89b0-025f263f7803",
              "parent_uuid": "16a5ed8e-f717-46fe-bf6e-9d708d8f43c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc287499-d9fc-4235-b2c2-ef1e7c5a143e",
                  "parent_uuid": "e8df7215-ea47-4d36-89b0-025f263f7803",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d634886-41fb-48ea-bba1-2e6d3e9b2ca2",
              "parent_uuid": "16a5ed8e-f717-46fe-bf6e-9d708d8f43c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cb90a2b-7aee-4ba6-995d-9e74260fb4ed",
                  "parent_uuid": "4d634886-41fb-48ea-bba1-2e6d3e9b2ca2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba8ba56c-21ec-40ac-b52c-5ce962ea1c4d",
              "parent_uuid": "16a5ed8e-f717-46fe-bf6e-9d708d8f43c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8deb3840-3f85-440d-8f05-8ccd0fbe013e",
                  "parent_uuid": "ba8ba56c-21ec-40ac-b52c-5ce962ea1c4d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "81665570-b8b2-46b3-93eb-6ef0f71807fa",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7bb78a0c-6896-4561-91ce-4257ac9a0127",
              "parent_uuid": "81665570-b8b2-46b3-93eb-6ef0f71807fa",
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
              "uuid": "543e9c8b-9bd0-44e9-87c5-e75982cbedfa",
              "parent_uuid": "81665570-b8b2-46b3-93eb-6ef0f71807fa",
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
              "uuid": "3425b3d3-cd84-4628-8a93-7c3dc6efc9a3",
              "parent_uuid": "81665570-b8b2-46b3-93eb-6ef0f71807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64c82595-c278-486b-b187-f310df62828b",
                  "parent_uuid": "3425b3d3-cd84-4628-8a93-7c3dc6efc9a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d8ef905-c3a7-49c6-b77a-b553d9ead1a6",
              "parent_uuid": "81665570-b8b2-46b3-93eb-6ef0f71807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13698ef0-e363-4d3a-a9c5-c9c3665bb8a4",
                  "parent_uuid": "4d8ef905-c3a7-49c6-b77a-b553d9ead1a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76f5f230-cc34-4d45-9106-616dd41ee079",
              "parent_uuid": "81665570-b8b2-46b3-93eb-6ef0f71807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6be6889-a8a6-42ce-9c78-b3992cb4ce97",
                  "parent_uuid": "76f5f230-cc34-4d45-9106-616dd41ee079",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "592648d6-fd59-4bd3-8fbc-bd588776852a",
              "parent_uuid": "81665570-b8b2-46b3-93eb-6ef0f71807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32f65330-316a-4ee8-a93d-6b2bf5c52e57",
                  "parent_uuid": "592648d6-fd59-4bd3-8fbc-bd588776852a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7620cefa-aec9-429a-9c4b-5cfb279ec5a3",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2fb6776-a617-4949-9ce0-9951879d8b40",
              "parent_uuid": "7620cefa-aec9-429a-9c4b-5cfb279ec5a3",
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
              "uuid": "00d6c79e-e887-4590-9f49-1d3f8fc14a88",
              "parent_uuid": "7620cefa-aec9-429a-9c4b-5cfb279ec5a3",
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
              "uuid": "ade9fbe3-580a-42bc-99b8-f32011e28d06",
              "parent_uuid": "7620cefa-aec9-429a-9c4b-5cfb279ec5a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "450362c2-c9cf-498d-b976-90a0f41c45cc",
                  "parent_uuid": "ade9fbe3-580a-42bc-99b8-f32011e28d06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ec2fce0-b708-43c0-abe5-9d265eab9e5b",
              "parent_uuid": "7620cefa-aec9-429a-9c4b-5cfb279ec5a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81083950-fd27-4b4c-a0ce-22448e8847ed",
                  "parent_uuid": "1ec2fce0-b708-43c0-abe5-9d265eab9e5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a291325-196e-4af9-8296-7273de2fa51d",
              "parent_uuid": "7620cefa-aec9-429a-9c4b-5cfb279ec5a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc2af212-4bf9-4e8e-bc31-deda7d396450",
                  "parent_uuid": "9a291325-196e-4af9-8296-7273de2fa51d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "919c764e-e2b7-4cb9-8a25-a2c29a233bf2",
              "parent_uuid": "7620cefa-aec9-429a-9c4b-5cfb279ec5a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27fdee0b-7a0d-4c06-8b39-f28fc2c5fdeb",
                  "parent_uuid": "919c764e-e2b7-4cb9-8a25-a2c29a233bf2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d9bdde30-a0c5-4c07-a19d-073cf2ab7f76",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60310f07-47dc-4b5d-9cea-807cb5c95e04",
              "parent_uuid": "d9bdde30-a0c5-4c07-a19d-073cf2ab7f76",
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
              "uuid": "6944ad73-b6c1-45d5-abc6-0f4fd4450c04",
              "parent_uuid": "d9bdde30-a0c5-4c07-a19d-073cf2ab7f76",
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
              "uuid": "c68c17ed-6f52-4947-9028-66a5ba4b52ab",
              "parent_uuid": "d9bdde30-a0c5-4c07-a19d-073cf2ab7f76",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5641050c-bb56-4ded-8304-0afd9e1da56b",
                  "parent_uuid": "c68c17ed-6f52-4947-9028-66a5ba4b52ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ac9ac3c-ba32-43f4-a2a1-5b21749733b4",
              "parent_uuid": "d9bdde30-a0c5-4c07-a19d-073cf2ab7f76",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e3abf52-4174-4216-8be2-864f3c38433b",
                  "parent_uuid": "0ac9ac3c-ba32-43f4-a2a1-5b21749733b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5261e285-2d42-497b-8225-7ff191b700bc",
              "parent_uuid": "d9bdde30-a0c5-4c07-a19d-073cf2ab7f76",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1e8da40-ec66-4ebb-991e-897aad283c3f",
                  "parent_uuid": "5261e285-2d42-497b-8225-7ff191b700bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0ccb598-6ec6-4a4b-9ebc-33175afda99f",
              "parent_uuid": "d9bdde30-a0c5-4c07-a19d-073cf2ab7f76",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28ad2da6-2158-4504-87ff-49989cc71afd",
                  "parent_uuid": "f0ccb598-6ec6-4a4b-9ebc-33175afda99f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c2b1160-e9b4-4136-abf0-aae6f91b56f5",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "849df8d3-cb9b-419a-8260-ff6db5a138ef",
              "parent_uuid": "6c2b1160-e9b4-4136-abf0-aae6f91b56f5",
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
          "uuid": "924dfb92-1693-4a6c-a29a-1574618aa901",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e14d291-b65d-4247-bf6e-00200b248c6a",
              "parent_uuid": "924dfb92-1693-4a6c-a29a-1574618aa901",
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
          "uuid": "12a99b03-08b7-44e8-9e2f-e127a0705f80",
          "parent_uuid": "412132d0-6add-4518-be34-ae03b84f2bdd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "835bd9c3-9feb-45f5-b311-c436fe86e0a5",
              "parent_uuid": "12a99b03-08b7-44e8-9e2f-e127a0705f80",
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
                  "uuid": "bd2ef80f-3680-48eb-a8ba-1ae290754493",
                  "parent_uuid": "835bd9c3-9feb-45f5-b311-c436fe86e0a5",
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


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
  "uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "c6120f20-b3cc-43a5-9084-8599e38d03c0",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "014f03f6-f03a-4c9b-b771-ee2f5fcd2184",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "873b5a16-d534-4345-8dd2-d98e65a79bb8",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "bc09ef00-91c0-4109-8c3c-bf2a259ca7ea",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "f4c00254-e124-4e69-b566-b1585f7d0d3c",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "2528fb64-ad6d-4fe6-9938-fca9a7aa86ac",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "9f39a46d-4dbe-42a4-8a54-706310864c8b",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
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
      "uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
      "parent_uuid": "2a251ac7-f2c1-4f15-92fd-1842abfc96b6",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "978cb4b0-b68e-431e-ae22-291a8cdeeae8",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "ca4c9eb0-4e56-43b8-8733-440f756337cd",
              "parent_uuid": "978cb4b0-b68e-431e-ae22-291a8cdeeae8",
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
              "uuid": "c47fd04d-226c-46e3-9d37-13975ab00de1",
              "parent_uuid": "978cb4b0-b68e-431e-ae22-291a8cdeeae8",
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
              "uuid": "1517bd7e-8401-4243-b9f3-880303882fa9",
              "parent_uuid": "978cb4b0-b68e-431e-ae22-291a8cdeeae8",
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
              "uuid": "7bcd144c-344d-4bb0-9fad-81865a9abea7",
              "parent_uuid": "978cb4b0-b68e-431e-ae22-291a8cdeeae8",
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
          "uuid": "a4188d68-59d9-4e48-bb5f-ddd0dda1ca66",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "19400a53-023a-4b18-adb9-c16388a721fa",
              "parent_uuid": "a4188d68-59d9-4e48-bb5f-ddd0dda1ca66",
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
              "uuid": "a768fa48-1ab3-409b-897d-621de911d520",
              "parent_uuid": "a4188d68-59d9-4e48-bb5f-ddd0dda1ca66",
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
              "uuid": "cc3b1dc9-4897-4a99-b552-fb5f92d599f2",
              "parent_uuid": "a4188d68-59d9-4e48-bb5f-ddd0dda1ca66",
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
              "uuid": "f2a283c1-9fd5-494c-8aa4-87dff6aad17b",
              "parent_uuid": "a4188d68-59d9-4e48-bb5f-ddd0dda1ca66",
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
          "uuid": "813c14be-5cca-4b5b-9427-76114dfb0a1b",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8a7843e-bdb5-46ec-a054-02817bb10c90",
              "parent_uuid": "813c14be-5cca-4b5b-9427-76114dfb0a1b",
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
              "uuid": "0f8867eb-0a8c-46a2-b2da-1d37e89a93eb",
              "parent_uuid": "813c14be-5cca-4b5b-9427-76114dfb0a1b",
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
              "uuid": "2ff46897-f16d-4fce-be00-8cd942bb364d",
              "parent_uuid": "813c14be-5cca-4b5b-9427-76114dfb0a1b",
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
              "uuid": "575f0494-f72d-4007-8cbf-48d2671e9857",
              "parent_uuid": "813c14be-5cca-4b5b-9427-76114dfb0a1b",
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
              "uuid": "b497cee8-af4b-4a19-b733-15df7766330a",
              "parent_uuid": "813c14be-5cca-4b5b-9427-76114dfb0a1b",
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
              "uuid": "723664c4-4cdf-441d-bc43-54725a9bb9e1",
              "parent_uuid": "813c14be-5cca-4b5b-9427-76114dfb0a1b",
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
          "uuid": "e7bcc164-272d-406b-bc58-cb85e59b5849",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1b10a531-b4f4-4a22-9b69-db54240fd162",
              "parent_uuid": "e7bcc164-272d-406b-bc58-cb85e59b5849",
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
          "uuid": "64ed53b9-83ae-4111-995d-51b0ff762590",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e558d0cf-80cd-488d-945a-b49bde9408b0",
              "parent_uuid": "64ed53b9-83ae-4111-995d-51b0ff762590",
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
              "uuid": "17c66f78-7503-48f8-8582-7a579d96fb1b",
              "parent_uuid": "64ed53b9-83ae-4111-995d-51b0ff762590",
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
              "uuid": "47c5af6e-9bd2-4a2e-9b07-a1e722cf9ead",
              "parent_uuid": "64ed53b9-83ae-4111-995d-51b0ff762590",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6226d61b-24d2-45c5-aaa2-3e55cd5c8470",
                  "parent_uuid": "47c5af6e-9bd2-4a2e-9b07-a1e722cf9ead",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdee1c47-3c87-4a72-babd-41b18e4659c0",
              "parent_uuid": "64ed53b9-83ae-4111-995d-51b0ff762590",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "473fb56a-389c-45c1-a157-3cd84b27a49a",
                  "parent_uuid": "fdee1c47-3c87-4a72-babd-41b18e4659c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "390b7356-7035-4a77-bb09-acfb8761dd26",
              "parent_uuid": "64ed53b9-83ae-4111-995d-51b0ff762590",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d7b1071-37b8-4387-a5f2-bc5a73e690fb",
                  "parent_uuid": "390b7356-7035-4a77-bb09-acfb8761dd26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6143d81-c38c-4a9b-b9dd-0619d1015e03",
              "parent_uuid": "64ed53b9-83ae-4111-995d-51b0ff762590",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcd23ff2-d68a-4829-8a7e-ebec222790d5",
                  "parent_uuid": "c6143d81-c38c-4a9b-b9dd-0619d1015e03",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "802e1800-3ecc-4961-91b0-02c2e7e13243",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6486dbca-58d3-4066-a310-c254d73878bc",
              "parent_uuid": "802e1800-3ecc-4961-91b0-02c2e7e13243",
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
              "uuid": "774a429f-7e25-4e79-940c-b6815194b8a5",
              "parent_uuid": "802e1800-3ecc-4961-91b0-02c2e7e13243",
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
              "uuid": "bf86df92-0a71-46ab-8328-19841f5a340d",
              "parent_uuid": "802e1800-3ecc-4961-91b0-02c2e7e13243",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1458b226-37ff-4750-9b57-92a6d36e08ce",
                  "parent_uuid": "bf86df92-0a71-46ab-8328-19841f5a340d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b3f90e6-05a6-4c64-afee-979b234f43de",
              "parent_uuid": "802e1800-3ecc-4961-91b0-02c2e7e13243",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d50c85d-0c3e-410e-be77-441572f5ccca",
                  "parent_uuid": "7b3f90e6-05a6-4c64-afee-979b234f43de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abd07b59-45d7-4b65-b60a-be31a50d1c57",
              "parent_uuid": "802e1800-3ecc-4961-91b0-02c2e7e13243",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87dd0e06-acc7-478d-b777-a386ce4335a6",
                  "parent_uuid": "abd07b59-45d7-4b65-b60a-be31a50d1c57",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a976a5a-e0dc-4b87-8e89-6606c6f6ecec",
              "parent_uuid": "802e1800-3ecc-4961-91b0-02c2e7e13243",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb89988d-e2a3-4ba9-b449-f90ee8ada026",
                  "parent_uuid": "0a976a5a-e0dc-4b87-8e89-6606c6f6ecec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70339d0b-15df-462f-9590-3f4bf68406e1",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7df9161-752c-4eca-96f9-6b17da35bbd6",
              "parent_uuid": "70339d0b-15df-462f-9590-3f4bf68406e1",
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
              "uuid": "9841fe39-8ddd-46ff-a7ba-47c8b7dab8f7",
              "parent_uuid": "70339d0b-15df-462f-9590-3f4bf68406e1",
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
              "uuid": "2432e92d-d5da-4682-8d26-2e3e29469e63",
              "parent_uuid": "70339d0b-15df-462f-9590-3f4bf68406e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "577f3e55-a7ed-44aa-8cbb-85d912d3d3da",
                  "parent_uuid": "2432e92d-d5da-4682-8d26-2e3e29469e63",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "143ce8fd-e083-4936-9ac8-a400b1f0e54c",
              "parent_uuid": "70339d0b-15df-462f-9590-3f4bf68406e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab4fe63c-91a9-4a1b-84c1-1ae7626e0723",
                  "parent_uuid": "143ce8fd-e083-4936-9ac8-a400b1f0e54c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "119983e4-cb00-426d-b360-e3449f871b2d",
              "parent_uuid": "70339d0b-15df-462f-9590-3f4bf68406e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58443521-3053-41d6-a799-a7768bfc3098",
                  "parent_uuid": "119983e4-cb00-426d-b360-e3449f871b2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f003dbc9-a1a6-41c1-9b24-0e5d18ab9127",
              "parent_uuid": "70339d0b-15df-462f-9590-3f4bf68406e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8507b05d-eed6-456a-bc9b-c33ef1cb3dd0",
                  "parent_uuid": "f003dbc9-a1a6-41c1-9b24-0e5d18ab9127",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9e1c203e-222b-4761-9875-3ac6277630ce",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c01bbd1c-91ee-4578-95b9-4c2cc2f14d1a",
              "parent_uuid": "9e1c203e-222b-4761-9875-3ac6277630ce",
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
              "uuid": "1cc0bacd-8e6d-4b09-bf68-3e2e20799285",
              "parent_uuid": "9e1c203e-222b-4761-9875-3ac6277630ce",
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
              "uuid": "307e5588-ad8f-4a88-8519-cef7a4f53bb0",
              "parent_uuid": "9e1c203e-222b-4761-9875-3ac6277630ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16efe732-04f8-479b-933d-29c0813812c0",
                  "parent_uuid": "307e5588-ad8f-4a88-8519-cef7a4f53bb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8bfc0251-95f2-443a-b422-9f0ad1ce12a8",
              "parent_uuid": "9e1c203e-222b-4761-9875-3ac6277630ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44c107e1-7608-44a3-bad3-8157e4751d27",
                  "parent_uuid": "8bfc0251-95f2-443a-b422-9f0ad1ce12a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3989c937-01c5-4f15-91a4-11af225ef536",
              "parent_uuid": "9e1c203e-222b-4761-9875-3ac6277630ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1782fe5a-37a8-4767-845b-4f357b72ad11",
                  "parent_uuid": "3989c937-01c5-4f15-91a4-11af225ef536",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea47f4a4-b848-470e-a756-d270f6eb6c01",
              "parent_uuid": "9e1c203e-222b-4761-9875-3ac6277630ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e23aedf7-82a9-49dd-a169-9daa97c96544",
                  "parent_uuid": "ea47f4a4-b848-470e-a756-d270f6eb6c01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "87b734d3-8d89-41a5-8270-b6cb0e582454",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc2662fb-429c-4dae-b055-e9b0df548bda",
              "parent_uuid": "87b734d3-8d89-41a5-8270-b6cb0e582454",
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
              "uuid": "d60cd2b3-b378-4d70-b2ce-5020627213e4",
              "parent_uuid": "87b734d3-8d89-41a5-8270-b6cb0e582454",
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
              "uuid": "0dd6803e-2068-4ea1-b21d-840e0212fae8",
              "parent_uuid": "87b734d3-8d89-41a5-8270-b6cb0e582454",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ec53adfe-9127-43e6-8f62-db730b37ebbd",
                  "parent_uuid": "0dd6803e-2068-4ea1-b21d-840e0212fae8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cefe321-1a97-46ed-baf8-1f58f4bfff4b",
              "parent_uuid": "87b734d3-8d89-41a5-8270-b6cb0e582454",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cf28339a-3626-4584-ade7-b1a1b8252eda",
                  "parent_uuid": "9cefe321-1a97-46ed-baf8-1f58f4bfff4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00806f58-efc9-4eaf-a1dc-e7d34645185d",
              "parent_uuid": "87b734d3-8d89-41a5-8270-b6cb0e582454",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9de26b65-bfb5-470f-882c-941681eae501",
                  "parent_uuid": "00806f58-efc9-4eaf-a1dc-e7d34645185d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92bc2708-a05a-4fb2-bd90-a8016f166850",
              "parent_uuid": "87b734d3-8d89-41a5-8270-b6cb0e582454",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8af8325a-577d-4b0b-b650-ee9057c9bd45",
                  "parent_uuid": "92bc2708-a05a-4fb2-bd90-a8016f166850",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "89cb02a5-6495-40a6-a1a0-b20f59f3d1b6",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7f27e78-34ca-4822-a7fc-d2a13700b0e8",
              "parent_uuid": "89cb02a5-6495-40a6-a1a0-b20f59f3d1b6",
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
              "uuid": "84afd31a-1d7d-4126-8574-1f2fb6fa6979",
              "parent_uuid": "89cb02a5-6495-40a6-a1a0-b20f59f3d1b6",
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
              "uuid": "386eff23-d220-4ded-ba7d-6a6e87490636",
              "parent_uuid": "89cb02a5-6495-40a6-a1a0-b20f59f3d1b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "774a6a07-27d0-4e14-a8e3-f0c8f490a124",
                  "parent_uuid": "386eff23-d220-4ded-ba7d-6a6e87490636",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "489ce450-5a85-4587-97ca-197c6769c53a",
              "parent_uuid": "89cb02a5-6495-40a6-a1a0-b20f59f3d1b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b382b686-7808-4732-b448-ad48ffcbb18f",
                  "parent_uuid": "489ce450-5a85-4587-97ca-197c6769c53a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44427a3c-4d86-4669-9d3b-693ceb9b8e05",
              "parent_uuid": "89cb02a5-6495-40a6-a1a0-b20f59f3d1b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d34cf32-87e9-436d-ba54-73b9fbc6acae",
                  "parent_uuid": "44427a3c-4d86-4669-9d3b-693ceb9b8e05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0336c438-31fb-4387-810d-80f9592ceb75",
              "parent_uuid": "89cb02a5-6495-40a6-a1a0-b20f59f3d1b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7b296e6-433f-4a99-b153-6895cc9a7337",
                  "parent_uuid": "0336c438-31fb-4387-810d-80f9592ceb75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e8f52f37-06c4-48a6-ae0a-312d63aa8103",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4038554-1d4a-41b4-8aec-f8457615858d",
              "parent_uuid": "e8f52f37-06c4-48a6-ae0a-312d63aa8103",
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
              "uuid": "d151ac22-8fa2-46c2-a423-1f7e25945439",
              "parent_uuid": "e8f52f37-06c4-48a6-ae0a-312d63aa8103",
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
              "uuid": "e4e757f1-217f-44c2-8167-533b31075a16",
              "parent_uuid": "e8f52f37-06c4-48a6-ae0a-312d63aa8103",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f20a2343-b49c-4881-aa15-a4d1a0eda3d8",
                  "parent_uuid": "e4e757f1-217f-44c2-8167-533b31075a16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bcf1720e-b1d1-4c6b-ac48-c524bf88a9d9",
              "parent_uuid": "e8f52f37-06c4-48a6-ae0a-312d63aa8103",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4585d7a-23da-4553-a786-a5a4ead20e19",
                  "parent_uuid": "bcf1720e-b1d1-4c6b-ac48-c524bf88a9d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a44f4ec8-b007-459e-a216-f481a59d4002",
              "parent_uuid": "e8f52f37-06c4-48a6-ae0a-312d63aa8103",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "127238d2-6986-4d67-aa2e-30e2ee46b7f3",
                  "parent_uuid": "a44f4ec8-b007-459e-a216-f481a59d4002",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "264ada30-906d-416f-aecd-7a10ac0a1932",
              "parent_uuid": "e8f52f37-06c4-48a6-ae0a-312d63aa8103",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be446787-7eb5-48e9-a4b0-35bb218e08d9",
                  "parent_uuid": "264ada30-906d-416f-aecd-7a10ac0a1932",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4352b2bf-5eff-460f-9463-20bdeaeb6c12",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b622791c-803d-4294-8120-98ea20b4e9aa",
              "parent_uuid": "4352b2bf-5eff-460f-9463-20bdeaeb6c12",
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
              "uuid": "ffebd839-acba-4a9b-bfce-dc686bd506e1",
              "parent_uuid": "4352b2bf-5eff-460f-9463-20bdeaeb6c12",
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
              "uuid": "a57759cf-4c0a-4a47-a1e7-ffdcd2afd769",
              "parent_uuid": "4352b2bf-5eff-460f-9463-20bdeaeb6c12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b0a424c-f463-42ef-b68c-bd8183ede3f8",
                  "parent_uuid": "a57759cf-4c0a-4a47-a1e7-ffdcd2afd769",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77971932-3772-405c-8c13-3c619ad45522",
              "parent_uuid": "4352b2bf-5eff-460f-9463-20bdeaeb6c12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f941140b-78ed-4924-aa68-8c4b7cd2c6b8",
                  "parent_uuid": "77971932-3772-405c-8c13-3c619ad45522",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53842b8b-7fe0-41a0-9c3b-77159c5126d8",
              "parent_uuid": "4352b2bf-5eff-460f-9463-20bdeaeb6c12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a1be0b5-761b-4581-97c3-ee5a03504e6d",
                  "parent_uuid": "53842b8b-7fe0-41a0-9c3b-77159c5126d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54e2eac8-4aab-48e9-83f5-233b82c1e2c8",
              "parent_uuid": "4352b2bf-5eff-460f-9463-20bdeaeb6c12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d61f5b2-6871-4af7-a33c-9e1091b89b7f",
                  "parent_uuid": "54e2eac8-4aab-48e9-83f5-233b82c1e2c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "da315e95-6578-4b3b-8eca-167cfb4fbc3e",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97e03a9e-676e-4570-a889-52a083b292cc",
              "parent_uuid": "da315e95-6578-4b3b-8eca-167cfb4fbc3e",
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
              "uuid": "9d818928-1f67-45af-8373-6b8cee010097",
              "parent_uuid": "da315e95-6578-4b3b-8eca-167cfb4fbc3e",
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
              "uuid": "ad3b6754-f07d-41e4-a10f-d03cab843840",
              "parent_uuid": "da315e95-6578-4b3b-8eca-167cfb4fbc3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11d9c6d3-6d44-4a8d-a224-e897dfce52e5",
                  "parent_uuid": "ad3b6754-f07d-41e4-a10f-d03cab843840",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e7101c7-88a3-4ab8-8c83-2a0c6bebcc30",
              "parent_uuid": "da315e95-6578-4b3b-8eca-167cfb4fbc3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c9f4fc0-e4b8-4112-ae24-bbf5968858f2",
                  "parent_uuid": "7e7101c7-88a3-4ab8-8c83-2a0c6bebcc30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2235425-5e6a-4e3e-8714-24222f3a7465",
              "parent_uuid": "da315e95-6578-4b3b-8eca-167cfb4fbc3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64b14780-c4ad-4f88-b59a-2363defb7b41",
                  "parent_uuid": "a2235425-5e6a-4e3e-8714-24222f3a7465",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2369110b-e38f-41c5-a984-3239121b6e27",
              "parent_uuid": "da315e95-6578-4b3b-8eca-167cfb4fbc3e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdb26c66-06d9-4fb5-9850-95617843e4b7",
                  "parent_uuid": "2369110b-e38f-41c5-a984-3239121b6e27",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6ff72920-1667-4cdc-8955-3b38f6927061",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68f9de4a-e2e4-4170-8990-6f27935b09f2",
              "parent_uuid": "6ff72920-1667-4cdc-8955-3b38f6927061",
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
              "uuid": "f3fa6e62-3933-4fc5-8b74-3c89682de658",
              "parent_uuid": "6ff72920-1667-4cdc-8955-3b38f6927061",
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
              "uuid": "0518b970-4ae2-4560-8216-edd686bab7c0",
              "parent_uuid": "6ff72920-1667-4cdc-8955-3b38f6927061",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d229bf23-48d4-4f24-8065-02cd9381a700",
                  "parent_uuid": "0518b970-4ae2-4560-8216-edd686bab7c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1f1ffe2-4495-4649-9154-7fce7945092d",
              "parent_uuid": "6ff72920-1667-4cdc-8955-3b38f6927061",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6c9e576-50d6-4caf-96ca-f33b943a18de",
                  "parent_uuid": "e1f1ffe2-4495-4649-9154-7fce7945092d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa2765ea-f35b-4f54-96a4-5683d6043a9b",
              "parent_uuid": "6ff72920-1667-4cdc-8955-3b38f6927061",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e368e564-a843-455d-b08b-4af3c018073a",
                  "parent_uuid": "fa2765ea-f35b-4f54-96a4-5683d6043a9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8b0d3cd-e95a-486c-8ed1-f949e5865614",
              "parent_uuid": "6ff72920-1667-4cdc-8955-3b38f6927061",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb28ed6f-a667-414e-9ac8-8ebdcd4a2842",
                  "parent_uuid": "b8b0d3cd-e95a-486c-8ed1-f949e5865614",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b2feee8-62bb-4fc3-9782-ec43a8f2ea47",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3e86b71-a775-4be7-93d1-e233a2a8e7f6",
              "parent_uuid": "7b2feee8-62bb-4fc3-9782-ec43a8f2ea47",
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
              "uuid": "34f439e5-4aaf-4dd3-8898-7c4e7439d2e4",
              "parent_uuid": "7b2feee8-62bb-4fc3-9782-ec43a8f2ea47",
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
              "uuid": "bab4195f-7f78-4f5f-95d6-0e8f1d70140f",
              "parent_uuid": "7b2feee8-62bb-4fc3-9782-ec43a8f2ea47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efa59300-f04d-43e4-83a2-fc9e82124512",
                  "parent_uuid": "bab4195f-7f78-4f5f-95d6-0e8f1d70140f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ffa43dd-31ad-4e75-b74e-593ca96145ff",
              "parent_uuid": "7b2feee8-62bb-4fc3-9782-ec43a8f2ea47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8fe38ca-aade-4090-b95d-f3a0a15e4904",
                  "parent_uuid": "7ffa43dd-31ad-4e75-b74e-593ca96145ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1a6c051-ce07-4b79-af73-eaf1e1cd2fe6",
              "parent_uuid": "7b2feee8-62bb-4fc3-9782-ec43a8f2ea47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d18eb21-52c5-4e8b-a1df-b220c60b4c9f",
                  "parent_uuid": "b1a6c051-ce07-4b79-af73-eaf1e1cd2fe6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c33b1bd-83b8-4b71-9f58-5ea5ba406d07",
              "parent_uuid": "7b2feee8-62bb-4fc3-9782-ec43a8f2ea47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be535534-0a57-40bb-b64b-4dd5f8fb70bc",
                  "parent_uuid": "1c33b1bd-83b8-4b71-9f58-5ea5ba406d07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5a3d3fba-a117-4279-9200-85ad48d6b935",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "25ef5ed6-da86-43d1-9ccd-750271cbeb32",
              "parent_uuid": "5a3d3fba-a117-4279-9200-85ad48d6b935",
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
              "uuid": "a10e981d-8de5-4f6a-a055-38cdbbbb7810",
              "parent_uuid": "5a3d3fba-a117-4279-9200-85ad48d6b935",
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
              "uuid": "2c260726-1808-4cf9-bf7d-ff04191a7605",
              "parent_uuid": "5a3d3fba-a117-4279-9200-85ad48d6b935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "362ddb24-820e-4f25-94ca-760c79b9d4cb",
                  "parent_uuid": "2c260726-1808-4cf9-bf7d-ff04191a7605",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19d8acef-486d-4214-a7fe-0f9091578cad",
              "parent_uuid": "5a3d3fba-a117-4279-9200-85ad48d6b935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee781734-5b57-4082-a680-b2850c769e0b",
                  "parent_uuid": "19d8acef-486d-4214-a7fe-0f9091578cad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4da7fc51-845b-449b-9342-90ab33f78ac5",
              "parent_uuid": "5a3d3fba-a117-4279-9200-85ad48d6b935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1870d05-9b34-4df4-8982-5eb076582581",
                  "parent_uuid": "4da7fc51-845b-449b-9342-90ab33f78ac5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6be1e71b-1094-4476-993c-882421153fb1",
              "parent_uuid": "5a3d3fba-a117-4279-9200-85ad48d6b935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5324750-3ddf-42ae-80fc-8f7e421cc185",
                  "parent_uuid": "6be1e71b-1094-4476-993c-882421153fb1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ab31e88-eb9b-456f-beb9-d25ea7728896",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e376859b-4048-42dd-89dc-f159998c0776",
              "parent_uuid": "4ab31e88-eb9b-456f-beb9-d25ea7728896",
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
              "uuid": "4dde7841-88fd-4e42-bf17-5910da0ed4c8",
              "parent_uuid": "4ab31e88-eb9b-456f-beb9-d25ea7728896",
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
              "uuid": "73d8b58d-c26f-4dac-ac99-cf47b5d2a3d6",
              "parent_uuid": "4ab31e88-eb9b-456f-beb9-d25ea7728896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fac8c9d2-0218-4f28-8f27-efc60b992a9c",
                  "parent_uuid": "73d8b58d-c26f-4dac-ac99-cf47b5d2a3d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b3692a3-74ff-4f8c-8d51-26b778524fa5",
              "parent_uuid": "4ab31e88-eb9b-456f-beb9-d25ea7728896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0846903b-5d59-4d96-a939-e96c717517b3",
                  "parent_uuid": "9b3692a3-74ff-4f8c-8d51-26b778524fa5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d525f2f-65d7-40bf-8315-ef01d1a6dd26",
              "parent_uuid": "4ab31e88-eb9b-456f-beb9-d25ea7728896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e60b2a89-f7c5-4118-91b3-a5c1944facb7",
                  "parent_uuid": "1d525f2f-65d7-40bf-8315-ef01d1a6dd26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2fda4a78-1bbb-4e2b-b766-e3ae944962f0",
              "parent_uuid": "4ab31e88-eb9b-456f-beb9-d25ea7728896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c0d0639-b018-41ba-854f-9d5d68673e65",
                  "parent_uuid": "2fda4a78-1bbb-4e2b-b766-e3ae944962f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "149bbbdc-8d32-4dc2-a9a0-bdd9cea55003",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b6dab01a-ade6-4164-ad3d-5d94900081a9",
              "parent_uuid": "149bbbdc-8d32-4dc2-a9a0-bdd9cea55003",
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
              "uuid": "3b231fda-c5a5-46c3-ac73-108258d47fb9",
              "parent_uuid": "149bbbdc-8d32-4dc2-a9a0-bdd9cea55003",
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
              "uuid": "e1cdb631-c6a3-4840-80c8-fe75110f21d7",
              "parent_uuid": "149bbbdc-8d32-4dc2-a9a0-bdd9cea55003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b012f38-4cb4-48db-922c-5f457a979731",
                  "parent_uuid": "e1cdb631-c6a3-4840-80c8-fe75110f21d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed4f9081-8a1a-4748-8aa1-fba5f3ec80fc",
              "parent_uuid": "149bbbdc-8d32-4dc2-a9a0-bdd9cea55003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8b27937-f841-428a-81ea-33b0d5f234ad",
                  "parent_uuid": "ed4f9081-8a1a-4748-8aa1-fba5f3ec80fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eeb16956-5a95-4ac9-9c70-7517ad3cae59",
              "parent_uuid": "149bbbdc-8d32-4dc2-a9a0-bdd9cea55003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40559dc7-24dc-4ceb-b9c9-463784f56208",
                  "parent_uuid": "eeb16956-5a95-4ac9-9c70-7517ad3cae59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d92cb730-581e-4b8a-b48a-2038d08ee5eb",
              "parent_uuid": "149bbbdc-8d32-4dc2-a9a0-bdd9cea55003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfdcce14-823c-4c27-a3f7-1457a2c6033f",
                  "parent_uuid": "d92cb730-581e-4b8a-b48a-2038d08ee5eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1a7347e3-11c1-4a30-9feb-0ac1a3e680e5",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "1796bb31-a236-4965-8e09-b40232eca2f8",
              "parent_uuid": "1a7347e3-11c1-4a30-9feb-0ac1a3e680e5",
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
          "uuid": "56f0ed41-ce4c-4770-a904-f36676713388",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "851c0a16-d841-4f12-851a-58631a64a341",
              "parent_uuid": "56f0ed41-ce4c-4770-a904-f36676713388",
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
          "uuid": "b70806ab-e227-4be8-82e5-b96fec507522",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40334f07-8c9a-48ae-a8fa-38b72b4d5dd2",
              "parent_uuid": "b70806ab-e227-4be8-82e5-b96fec507522",
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
                  "uuid": "3813f9dc-c3e4-4be0-87ad-03ab83de22c3",
                  "parent_uuid": "40334f07-8c9a-48ae-a8fa-38b72b4d5dd2",
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
          "uuid": "e5726205-0bc5-45da-a0c5-8e22816c05f3",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc180326-a01b-4ba9-8482-177ca372c533",
              "parent_uuid": "e5726205-0bc5-45da-a0c5-8e22816c05f3",
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
          "uuid": "b1fdd697-df0f-4b3b-ae35-33ac060b7949",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e57f523d-1373-40c0-9d37-2c74f624bb25",
              "parent_uuid": "b1fdd697-df0f-4b3b-ae35-33ac060b7949",
              "tagName": "td",
              "properties": [
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
          "uuid": "a28396a7-20cd-4378-ac1d-abe9ad71f78c",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0f617ca-35ed-4545-a66d-600feff3aea9",
              "parent_uuid": "a28396a7-20cd-4378-ac1d-abe9ad71f78c",
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
              "uuid": "e09090d0-b810-4c7f-9fec-38fe3ef2e77a",
              "parent_uuid": "a28396a7-20cd-4378-ac1d-abe9ad71f78c",
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
              "uuid": "7f3629e7-ff90-4266-975c-281b1f9bc2fc",
              "parent_uuid": "a28396a7-20cd-4378-ac1d-abe9ad71f78c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb27cb4d-c274-455c-b163-3ee864c00db9",
                  "parent_uuid": "7f3629e7-ff90-4266-975c-281b1f9bc2fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0adc9c23-6c96-439b-91fb-f8c6e6901f7e",
              "parent_uuid": "a28396a7-20cd-4378-ac1d-abe9ad71f78c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4955e87d-b911-4754-a912-4dd0e4dcceee",
                  "parent_uuid": "0adc9c23-6c96-439b-91fb-f8c6e6901f7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24dd0237-24b4-4b00-848f-63de8576a727",
              "parent_uuid": "a28396a7-20cd-4378-ac1d-abe9ad71f78c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d27b390f-6d83-4c48-8301-a21a440e8dce",
                  "parent_uuid": "24dd0237-24b4-4b00-848f-63de8576a727",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "367f3ac8-1517-4997-821c-84deb9b5d15e",
              "parent_uuid": "a28396a7-20cd-4378-ac1d-abe9ad71f78c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a966c75c-5f87-4f7a-8baf-8315aed6d6d5",
                  "parent_uuid": "367f3ac8-1517-4997-821c-84deb9b5d15e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4987eb25-5202-47b6-aff5-c9d493bfa7e6",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5267eae7-3be0-451e-80a9-9f01e32ef7a3",
              "parent_uuid": "4987eb25-5202-47b6-aff5-c9d493bfa7e6",
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
              "uuid": "6016a15b-0633-484a-bd41-1ba74899fbe7",
              "parent_uuid": "4987eb25-5202-47b6-aff5-c9d493bfa7e6",
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
              "uuid": "2a075d9b-8363-43b6-a235-678d25961f4b",
              "parent_uuid": "4987eb25-5202-47b6-aff5-c9d493bfa7e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de66c097-697d-4e09-a9a5-a2f1a412df34",
                  "parent_uuid": "2a075d9b-8363-43b6-a235-678d25961f4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91731bf6-e3a9-481b-9337-d3bcb0eee475",
              "parent_uuid": "4987eb25-5202-47b6-aff5-c9d493bfa7e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "269c16d0-fea0-46b4-aa62-737edb29c8d7",
                  "parent_uuid": "91731bf6-e3a9-481b-9337-d3bcb0eee475",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c812c56-1894-4187-bf4a-3d8c293d01c9",
              "parent_uuid": "4987eb25-5202-47b6-aff5-c9d493bfa7e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "683de27c-a906-4faa-876f-f4bc8a29a12a",
                  "parent_uuid": "1c812c56-1894-4187-bf4a-3d8c293d01c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5890d46-1865-40ec-b3b4-18ba70bb6f88",
              "parent_uuid": "4987eb25-5202-47b6-aff5-c9d493bfa7e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c65e4b0a-dd59-4bbc-bb9b-8d3fa9877a27",
                  "parent_uuid": "d5890d46-1865-40ec-b3b4-18ba70bb6f88",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "294722da-31cf-426b-9872-b0c7ea8665fd",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fa374a0-4ba9-402d-87ad-4d1499b87a30",
              "parent_uuid": "294722da-31cf-426b-9872-b0c7ea8665fd",
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
              "uuid": "025f20e3-61f7-458e-8a2c-e89ff765d168",
              "parent_uuid": "294722da-31cf-426b-9872-b0c7ea8665fd",
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
              "uuid": "0942218c-2d6d-49e4-9451-faf014bdc86a",
              "parent_uuid": "294722da-31cf-426b-9872-b0c7ea8665fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d200f152-9c4f-4ecb-a7eb-a353992c4b80",
                  "parent_uuid": "0942218c-2d6d-49e4-9451-faf014bdc86a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7df98111-1369-44db-b30a-fb697865c4ea",
              "parent_uuid": "294722da-31cf-426b-9872-b0c7ea8665fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41d793da-096b-464c-ab7a-0f5e19267ab9",
                  "parent_uuid": "7df98111-1369-44db-b30a-fb697865c4ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f30744ca-aa2f-4b84-8a34-8f2c4ff03ae7",
              "parent_uuid": "294722da-31cf-426b-9872-b0c7ea8665fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47d30e90-fd2f-4127-85af-2e7e899606c5",
                  "parent_uuid": "f30744ca-aa2f-4b84-8a34-8f2c4ff03ae7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42b8e046-ecfe-46a5-8907-f8515b52b6ed",
              "parent_uuid": "294722da-31cf-426b-9872-b0c7ea8665fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "801192a9-e692-4cd3-b3e4-3d090696381a",
                  "parent_uuid": "42b8e046-ecfe-46a5-8907-f8515b52b6ed",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "606ae39d-aeaa-416c-bcee-33930dd15f1f",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d29f17f-7dc0-49dd-8f25-cb7f896e5096",
              "parent_uuid": "606ae39d-aeaa-416c-bcee-33930dd15f1f",
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
              "uuid": "9763af2c-6ce7-4f43-9a47-ae21c3b29978",
              "parent_uuid": "606ae39d-aeaa-416c-bcee-33930dd15f1f",
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
              "uuid": "2db1adf3-5083-43df-b275-1824fd6c6bb9",
              "parent_uuid": "606ae39d-aeaa-416c-bcee-33930dd15f1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a40188df-d28a-47f2-a4c4-a26cd6664054",
                  "parent_uuid": "2db1adf3-5083-43df-b275-1824fd6c6bb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c26c482e-f433-40ec-a451-0f9edcd7b805",
              "parent_uuid": "606ae39d-aeaa-416c-bcee-33930dd15f1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a84f1e31-9c9d-4a8b-bc69-69cf0ce3bd21",
                  "parent_uuid": "c26c482e-f433-40ec-a451-0f9edcd7b805",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "712f2f9c-9763-45dc-8638-e9ee0130ef4e",
              "parent_uuid": "606ae39d-aeaa-416c-bcee-33930dd15f1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a70c7454-625b-4485-af78-4645789159ae",
                  "parent_uuid": "712f2f9c-9763-45dc-8638-e9ee0130ef4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e16b9fd5-85b7-4645-80ed-f81532f6d453",
              "parent_uuid": "606ae39d-aeaa-416c-bcee-33930dd15f1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c2a56dc-56e3-48bf-b10f-56be417ee0d2",
                  "parent_uuid": "e16b9fd5-85b7-4645-80ed-f81532f6d453",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0c9bd20-4722-46f0-a271-8f226e6ea5a7",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5cb37e55-a5cc-4b60-bb0d-0dd9e3b9eb3b",
              "parent_uuid": "e0c9bd20-4722-46f0-a271-8f226e6ea5a7",
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
          "uuid": "e3b258c0-ff44-43ac-ada1-8ba318342aa0",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8590e447-d74d-4db8-9b69-ba5bdbc76270",
              "parent_uuid": "e3b258c0-ff44-43ac-ada1-8ba318342aa0",
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
              "uuid": "ee6af68d-0257-418d-986a-be044f22445d",
              "parent_uuid": "e3b258c0-ff44-43ac-ada1-8ba318342aa0",
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
              "uuid": "46223363-c2c0-4a68-84c4-f13c7b9155e3",
              "parent_uuid": "e3b258c0-ff44-43ac-ada1-8ba318342aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "140266f4-873c-4f18-8bab-30046cb02d19",
                  "parent_uuid": "46223363-c2c0-4a68-84c4-f13c7b9155e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9ff1cd7-0fbf-46f2-b1a8-5af08c1bf314",
              "parent_uuid": "e3b258c0-ff44-43ac-ada1-8ba318342aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70ae526d-d514-4ca0-a8f3-51265dc020e4",
                  "parent_uuid": "f9ff1cd7-0fbf-46f2-b1a8-5af08c1bf314",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdb4a42b-5803-4945-8cac-3ae3295ef8a0",
              "parent_uuid": "e3b258c0-ff44-43ac-ada1-8ba318342aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2edce724-6cf0-424d-b7af-bf9bc1d0bcaa",
                  "parent_uuid": "fdb4a42b-5803-4945-8cac-3ae3295ef8a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a153e21a-5e07-4b2e-a89a-00a5cd545811",
              "parent_uuid": "e3b258c0-ff44-43ac-ada1-8ba318342aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54b9e8d0-e3b9-44ff-a6ec-be5fba585172",
                  "parent_uuid": "a153e21a-5e07-4b2e-a89a-00a5cd545811",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "efe1336a-5e89-403d-805a-92499dd3ac7c",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c970bb89-f84a-470b-a610-212644f65a90",
              "parent_uuid": "efe1336a-5e89-403d-805a-92499dd3ac7c",
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
              "uuid": "05e58528-0d32-4a0f-b032-739f6bc82a91",
              "parent_uuid": "efe1336a-5e89-403d-805a-92499dd3ac7c",
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
              "uuid": "91f564f5-968d-4220-97e0-bff3b87eab19",
              "parent_uuid": "efe1336a-5e89-403d-805a-92499dd3ac7c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c81c4d3-5249-476c-9f00-624ea739aa8e",
                  "parent_uuid": "91f564f5-968d-4220-97e0-bff3b87eab19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d9fd103-129e-4b1f-94b3-060011e8cdf0",
              "parent_uuid": "efe1336a-5e89-403d-805a-92499dd3ac7c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01ff0baa-d161-408c-ada5-d1a21fe71f61",
                  "parent_uuid": "1d9fd103-129e-4b1f-94b3-060011e8cdf0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad92a09f-8291-43eb-9af9-0bc436cec950",
              "parent_uuid": "efe1336a-5e89-403d-805a-92499dd3ac7c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8886ea7-68f9-4ddd-9efd-b39cf2691914",
                  "parent_uuid": "ad92a09f-8291-43eb-9af9-0bc436cec950",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7141ed62-1f09-4e8a-8cf4-7f5872beaebb",
              "parent_uuid": "efe1336a-5e89-403d-805a-92499dd3ac7c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9104ed6-ccaf-4d70-9ffb-c529113af662",
                  "parent_uuid": "7141ed62-1f09-4e8a-8cf4-7f5872beaebb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "760e3707-248e-4c0b-8ed9-c6b03ad9fb05",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df0ad584-8794-4eb3-9aac-9a83ba75362e",
              "parent_uuid": "760e3707-248e-4c0b-8ed9-c6b03ad9fb05",
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
              "uuid": "c4fb39e6-a73c-4746-a2af-996e020c2419",
              "parent_uuid": "760e3707-248e-4c0b-8ed9-c6b03ad9fb05",
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
              "uuid": "4ddec77a-020a-4608-81e3-ef4dbcb0e9d3",
              "parent_uuid": "760e3707-248e-4c0b-8ed9-c6b03ad9fb05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ecc0f498-f873-4d94-bb13-1d45a40c3553",
                  "parent_uuid": "4ddec77a-020a-4608-81e3-ef4dbcb0e9d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33e80284-1ece-4f68-85d7-7a25d5ca1179",
              "parent_uuid": "760e3707-248e-4c0b-8ed9-c6b03ad9fb05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de292224-3627-4fba-8dc0-c29de9867ce3",
                  "parent_uuid": "33e80284-1ece-4f68-85d7-7a25d5ca1179",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "057688cd-41dc-4e7f-94a0-2ea9729cb130",
              "parent_uuid": "760e3707-248e-4c0b-8ed9-c6b03ad9fb05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef206ad0-472f-4da9-9ecb-91ec4e505071",
                  "parent_uuid": "057688cd-41dc-4e7f-94a0-2ea9729cb130",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb487072-645c-46d6-865b-28cf3ef0a2cc",
              "parent_uuid": "760e3707-248e-4c0b-8ed9-c6b03ad9fb05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8b1c8ff-9b42-42ac-a78b-80d1e7e530f3",
                  "parent_uuid": "fb487072-645c-46d6-865b-28cf3ef0a2cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7fbdf75d-1abf-4da6-aeb9-c5ea33f14d91",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5616e2bf-af26-4080-a3a2-06024080ea88",
              "parent_uuid": "7fbdf75d-1abf-4da6-aeb9-c5ea33f14d91",
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
              "uuid": "9cc6c3ef-530a-475b-ac45-9e2b20f71882",
              "parent_uuid": "7fbdf75d-1abf-4da6-aeb9-c5ea33f14d91",
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
              "uuid": "8f66b52f-b215-4278-8b22-9729c045dec7",
              "parent_uuid": "7fbdf75d-1abf-4da6-aeb9-c5ea33f14d91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "146d8e67-a6b8-4fb5-8a1f-1014160b561c",
                  "parent_uuid": "8f66b52f-b215-4278-8b22-9729c045dec7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8762ede8-8bad-4096-b67c-1f9d71c40f7c",
              "parent_uuid": "7fbdf75d-1abf-4da6-aeb9-c5ea33f14d91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "876ff152-7cc0-4ca0-9ec8-2dd3107dfe40",
                  "parent_uuid": "8762ede8-8bad-4096-b67c-1f9d71c40f7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0fbc408-5675-48ca-a775-4d939ffdd072",
              "parent_uuid": "7fbdf75d-1abf-4da6-aeb9-c5ea33f14d91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51037fcb-fb75-4462-a1ea-7cec4fd1abe0",
                  "parent_uuid": "b0fbc408-5675-48ca-a775-4d939ffdd072",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "250ac964-f572-450e-a0b6-1d72e288bbaa",
              "parent_uuid": "7fbdf75d-1abf-4da6-aeb9-c5ea33f14d91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7abc3041-91aa-4dd5-8b4f-95792bf6d402",
                  "parent_uuid": "250ac964-f572-450e-a0b6-1d72e288bbaa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ba7da66b-c3e7-4924-b0e5-7659b648e02c",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbf4f24c-2885-4818-8937-d3eaa55c013f",
              "parent_uuid": "ba7da66b-c3e7-4924-b0e5-7659b648e02c",
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
          "uuid": "5c1ca54a-f1d4-4a68-84d4-dfffa89ab9ee",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9538f24-4985-41eb-bdff-2e364a3729c0",
              "parent_uuid": "5c1ca54a-f1d4-4a68-84d4-dfffa89ab9ee",
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
          "uuid": "9c865263-3f56-4e25-b787-da448d48ff55",
          "parent_uuid": "0a335d6e-c5cf-462d-8fb2-438ef5330d8a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7264dd7a-c076-4839-9eb0-9937048e6495",
              "parent_uuid": "9c865263-3f56-4e25-b787-da448d48ff55",
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
                  "uuid": "f245088c-126e-4cc4-9cd5-f85ad025d7db",
                  "parent_uuid": "7264dd7a-c076-4839-9eb0-9937048e6495",
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

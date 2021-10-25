
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
  "uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
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
      "uuid": "2ae90bae-34ca-47b9-ba74-b82b6b961b83",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
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
      "uuid": "edcbe6bb-d33b-48b5-b4a3-95557003f0b2",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "35"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "17dfec65-ec6d-4372-8c90-ee887757087c",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
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
      "uuid": "5084ba3d-10b9-457a-8e76-7aefbe3f6ead",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
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
      "uuid": "6a3746eb-8a9c-43b3-8517-129a8caf8652",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "80"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "d791627b-9614-4e78-9a73-d12975030285",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
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
      "uuid": "18a26360-ae05-4e89-8021-b98b0530180e",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
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
      "uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
      "parent_uuid": "a9124378-69e4-4b63-8912-98c17bb23aba",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f2d6d552-7505-4d2d-a514-2cacacb3a6e5",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "uuid": "8c1bcd9a-a287-41cb-80e5-3a405ebace12",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "uuid": "64205d00-01fb-45cf-a36a-fe117cf37767",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "uuid": "7e6f6bd9-5825-42e8-9cf8-41580a7417e5",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Visuelle Handarbeitsplatz</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1a5b85ef-c2e4-4558-a0f1-3429df3019e5",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "5264013f-a40a-44fe-bd3c-b2a7661ebcb5",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "59f7b7b1-2984-406c-b36d-c7f10b4320c2",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "innerHtml": "\r\n                    <span>Nr.</span>\r\n                ",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "03aaa9c1-9900-4ac9-a39b-9d4489cf9cbe",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "sort": 7,
              "lvl": 0
            },
            {
              "uuid": "324242d8-26b4-488f-a607-8db779a23494",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "sort": 8,
              "lvl": 0
            },
            {
              "uuid": "fba9f53c-8084-4701-9400-49db895bff77",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "sort": 9,
              "lvl": 0
            },
            {
              "uuid": "2c45fdd7-a47a-42e3-aac6-ee154e00d510",
              "parent_uuid": "fb55b885-3c50-4fa9-b978-96b177b918f7",
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
              "sort": 10,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "2a59dad2-960a-4db3-a61b-4ab4727881cc",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "45cfeb67-9d1e-4728-b253-1f8bc318c00e",
              "parent_uuid": "2a59dad2-960a-4db3-a61b-4ab4727881cc",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "20"
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
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "50cdb33f-9484-486f-abc3-94d5372413c7",
              "parent_uuid": "2a59dad2-960a-4db3-a61b-4ab4727881cc",
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
              "uuid": "14170aa0-0dc5-43aa-9e84-23580f809254",
              "parent_uuid": "2a59dad2-960a-4db3-a61b-4ab4727881cc",
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
              "uuid": "7c886c00-cece-49e7-bc76-2f5b40b96c48",
              "parent_uuid": "2a59dad2-960a-4db3-a61b-4ab4727881cc",
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
          "uuid": "babc7b1f-60b5-4d8c-ad79-9f9c0bbe64d3",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21fa31d6-a228-4ba5-8fe3-665b211a9e17",
              "parent_uuid": "babc7b1f-60b5-4d8c-ad79-9f9c0bbe64d3",
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
              "uuid": "1334ccd3-49fb-43fb-aa8f-51f373012b02",
              "parent_uuid": "babc7b1f-60b5-4d8c-ad79-9f9c0bbe64d3",
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
              "uuid": "a385e66f-2c94-4221-9625-dbced5a3947f",
              "parent_uuid": "babc7b1f-60b5-4d8c-ad79-9f9c0bbe64d3",
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
              "uuid": "4282de00-1ead-40bc-a45c-7b8b8ae72c40",
              "parent_uuid": "babc7b1f-60b5-4d8c-ad79-9f9c0bbe64d3",
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
              "uuid": "a93dbc7f-9c90-4790-9e3e-ee12608c8c85",
              "parent_uuid": "babc7b1f-60b5-4d8c-ad79-9f9c0bbe64d3",
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
              "uuid": "d985da57-dadc-441b-9dc9-c6f2556f9a3a",
              "parent_uuid": "babc7b1f-60b5-4d8c-ad79-9f9c0bbe64d3",
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
          "uuid": "81d4fe39-4deb-4e7d-b3af-a9e905417bce",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "877eeb9a-24b9-4019-901f-7b88e2c9634c",
              "parent_uuid": "81d4fe39-4deb-4e7d-b3af-a9e905417bce",
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
          "uuid": "690510af-e8ff-4891-bd8e-16cf1c19a37c",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7901e68-4615-41c3-94ee-d55577ee8d06",
              "parent_uuid": "690510af-e8ff-4891-bd8e-16cf1c19a37c",
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
              "uuid": "7047d826-a3e2-482d-b26e-94975f5be9e8",
              "parent_uuid": "690510af-e8ff-4891-bd8e-16cf1c19a37c",
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
              "uuid": "b1f7cdba-14b5-4acf-a328-bf936b5dbb41",
              "parent_uuid": "690510af-e8ff-4891-bd8e-16cf1c19a37c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32c50e2a-69d4-45ec-8e58-2d3bb6ccf61c",
                  "parent_uuid": "b1f7cdba-14b5-4acf-a328-bf936b5dbb41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0845c4c7-d91b-47d7-ab18-3654a6537a63",
              "parent_uuid": "690510af-e8ff-4891-bd8e-16cf1c19a37c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "536eef54-e377-4547-a40a-4e4d98ba3e8a",
                  "parent_uuid": "0845c4c7-d91b-47d7-ab18-3654a6537a63",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7e6d761-9b71-43a4-9f9d-8429be47c299",
              "parent_uuid": "690510af-e8ff-4891-bd8e-16cf1c19a37c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6301d006-22d0-4ca6-be33-6066e7e58d7b",
                  "parent_uuid": "f7e6d761-9b71-43a4-9f9d-8429be47c299",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41b1de4f-7b31-4f49-83bf-f1e53a8ae041",
              "parent_uuid": "690510af-e8ff-4891-bd8e-16cf1c19a37c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5538d73-0996-4170-8344-224c086024df",
                  "parent_uuid": "41b1de4f-7b31-4f49-83bf-f1e53a8ae041",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e983d367-2d4b-4f92-aa4d-7733d82cd837",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f93473fc-1baf-4648-b2c6-41f0ddadb66f",
              "parent_uuid": "e983d367-2d4b-4f92-aa4d-7733d82cd837",
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
              "uuid": "c1ca4827-eea3-4467-8662-ab0f8bbef2af",
              "parent_uuid": "e983d367-2d4b-4f92-aa4d-7733d82cd837",
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
              "uuid": "381d506e-b744-4af6-9b8b-1be48ac25326",
              "parent_uuid": "e983d367-2d4b-4f92-aa4d-7733d82cd837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e9e6876-4d5b-4e38-a4a2-761dc651dc6e",
                  "parent_uuid": "381d506e-b744-4af6-9b8b-1be48ac25326",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b844da6a-0369-41f6-9c4b-2c9dc8cd9b24",
              "parent_uuid": "e983d367-2d4b-4f92-aa4d-7733d82cd837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b725cc0-ee52-4dcf-ba0f-836ad7bf4655",
                  "parent_uuid": "b844da6a-0369-41f6-9c4b-2c9dc8cd9b24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b88021c-13f1-42c9-bb81-6f60de1ab29e",
              "parent_uuid": "e983d367-2d4b-4f92-aa4d-7733d82cd837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21ced203-8883-4f6f-a38a-1760dfd53066",
                  "parent_uuid": "5b88021c-13f1-42c9-bb81-6f60de1ab29e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0915bc7f-9cfe-464e-bfd3-9f9d13ca65b0",
              "parent_uuid": "e983d367-2d4b-4f92-aa4d-7733d82cd837",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac1e696e-d8fc-44fa-b7b4-ab88acbf125a",
                  "parent_uuid": "0915bc7f-9cfe-464e-bfd3-9f9d13ca65b0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d128773-e101-4252-8765-97b711504bea",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e0706bf-d5c0-4fe4-a6a0-bbcd23db110a",
              "parent_uuid": "7d128773-e101-4252-8765-97b711504bea",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Andeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5b311425-c6bc-4e60-8174-8b8f056e5d67",
              "parent_uuid": "7d128773-e101-4252-8765-97b711504bea",
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
              "uuid": "ce411d25-447d-4447-9fed-b923db97ff67",
              "parent_uuid": "7d128773-e101-4252-8765-97b711504bea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "953b70c5-c2c5-4d43-99fb-010a7e751f45",
                  "parent_uuid": "ce411d25-447d-4447-9fed-b923db97ff67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72974d9d-dafa-4284-b7a8-4a8c8d1825a3",
              "parent_uuid": "7d128773-e101-4252-8765-97b711504bea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62c94f10-6a7e-415b-b224-556003e4aacb",
                  "parent_uuid": "72974d9d-dafa-4284-b7a8-4a8c8d1825a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a96c1b3-3e80-4082-8a2b-2964110b2ee0",
              "parent_uuid": "7d128773-e101-4252-8765-97b711504bea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b176b13-53c1-41b5-8591-9c8fdf15f234",
                  "parent_uuid": "7a96c1b3-3e80-4082-8a2b-2964110b2ee0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a3f2a2a-0132-4f60-af1c-6e5ba26ea55b",
              "parent_uuid": "7d128773-e101-4252-8765-97b711504bea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "255bc44c-acee-4184-9c9f-081a1eaad40b",
                  "parent_uuid": "8a3f2a2a-0132-4f60-af1c-6e5ba26ea55b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "83ef8533-65a1-409b-ae7d-5c674b34cb48",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41da6c35-4dfd-4988-90d3-c7bce0990322",
              "parent_uuid": "83ef8533-65a1-409b-ae7d-5c674b34cb48",
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
              "uuid": "22cf9ca0-c4a6-4d90-84e9-796186f8bf4b",
              "parent_uuid": "83ef8533-65a1-409b-ae7d-5c674b34cb48",
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
              "innerHtml": "\r\n                    <span>2J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b009bce3-af32-430b-9d17-2408e54fd5a7",
              "parent_uuid": "83ef8533-65a1-409b-ae7d-5c674b34cb48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24ee9af1-4388-491c-9384-db418b8394c0",
                  "parent_uuid": "b009bce3-af32-430b-9d17-2408e54fd5a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8280d1dc-c5d6-4131-b7f4-145ac8027d5b",
              "parent_uuid": "83ef8533-65a1-409b-ae7d-5c674b34cb48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "768d387e-dce1-4999-abc7-cba8db4b6c94",
                  "parent_uuid": "8280d1dc-c5d6-4131-b7f4-145ac8027d5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b66f61e-f20d-4cd9-9235-cf99f99c510d",
              "parent_uuid": "83ef8533-65a1-409b-ae7d-5c674b34cb48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4cd8f9e4-65cb-4350-9730-b2dde10365ff",
                  "parent_uuid": "7b66f61e-f20d-4cd9-9235-cf99f99c510d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "adf46020-4967-4e63-9ac9-94c16bc0ab65",
              "parent_uuid": "83ef8533-65a1-409b-ae7d-5c674b34cb48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffb83f66-f690-41cc-b91d-09b147e89803",
                  "parent_uuid": "adf46020-4967-4e63-9ac9-94c16bc0ab65",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "64e1aa2c-a8cb-4ded-b67e-8c38ee0be407",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ac5fe54-4f04-4d55-8b1e-99b6e7aa3042",
              "parent_uuid": "64e1aa2c-a8cb-4ded-b67e-8c38ee0be407",
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
              "uuid": "df0cab92-6271-4baa-b178-f79394ea9cd5",
              "parent_uuid": "64e1aa2c-a8cb-4ded-b67e-8c38ee0be407",
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
              "uuid": "29733fef-8000-4e16-99e9-8d4a46d7b8be",
              "parent_uuid": "64e1aa2c-a8cb-4ded-b67e-8c38ee0be407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6feb9d2c-b2f7-4ff1-bb34-14eb6d7143dd",
                  "parent_uuid": "29733fef-8000-4e16-99e9-8d4a46d7b8be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca69a682-30eb-401e-91ce-24dc6462d2f2",
              "parent_uuid": "64e1aa2c-a8cb-4ded-b67e-8c38ee0be407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73b48238-278f-4cf4-ae2e-44d3903f48e0",
                  "parent_uuid": "ca69a682-30eb-401e-91ce-24dc6462d2f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edd89843-2264-46da-8d70-948be2d9c7e9",
              "parent_uuid": "64e1aa2c-a8cb-4ded-b67e-8c38ee0be407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f450bb98-b982-4df7-b6e2-65df78707186",
                  "parent_uuid": "edd89843-2264-46da-8d70-948be2d9c7e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e806b31-7115-46d4-a51b-ef781f822723",
              "parent_uuid": "64e1aa2c-a8cb-4ded-b67e-8c38ee0be407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "474762f9-694d-4c1c-8e1a-c81a8ea0a41f",
                  "parent_uuid": "8e806b31-7115-46d4-a51b-ef781f822723",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de381170-9ded-4df6-a9b8-863f148aafe8",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9edf047-52ec-4fe9-9d6f-13cbc70e5ead",
              "parent_uuid": "de381170-9ded-4df6-a9b8-863f148aafe8",
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
              "uuid": "7abae58e-ef31-4bed-a365-22faa6c184ff",
              "parent_uuid": "de381170-9ded-4df6-a9b8-863f148aafe8",
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
              "uuid": "f46b18c0-8d16-49cc-835f-fae44303f136",
              "parent_uuid": "de381170-9ded-4df6-a9b8-863f148aafe8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0de037ed-9c03-463e-bbec-4445ac9ea1b4",
                  "parent_uuid": "f46b18c0-8d16-49cc-835f-fae44303f136",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57afcf35-0a9e-489c-a3c1-4904f9200346",
              "parent_uuid": "de381170-9ded-4df6-a9b8-863f148aafe8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "544ab332-9148-4fd1-9071-e7e4e1becf1c",
                  "parent_uuid": "57afcf35-0a9e-489c-a3c1-4904f9200346",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f111625-fc6c-4c86-bb54-37279ae8d98b",
              "parent_uuid": "de381170-9ded-4df6-a9b8-863f148aafe8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9c64b08-9816-4a62-9b9f-94708521f8d5",
                  "parent_uuid": "6f111625-fc6c-4c86-bb54-37279ae8d98b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3a40eeb-2494-4d38-9713-2a9d6dd12df6",
              "parent_uuid": "de381170-9ded-4df6-a9b8-863f148aafe8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ca85a22-5b1e-4d71-98a2-376346c0adbe",
                  "parent_uuid": "b3a40eeb-2494-4d38-9713-2a9d6dd12df6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e99fa98-2cd2-4384-a172-8e076ec5209f",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "67112378-d435-4407-b19f-ce1c6778bceb",
              "parent_uuid": "2e99fa98-2cd2-4384-a172-8e076ec5209f",
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
              "uuid": "afd1c323-6e3c-488c-bf24-cfe97bae948e",
              "parent_uuid": "2e99fa98-2cd2-4384-a172-8e076ec5209f",
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
              "uuid": "5b8081ba-7c46-4218-8d40-6bf41fb7e868",
              "parent_uuid": "2e99fa98-2cd2-4384-a172-8e076ec5209f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c201658-b648-47a7-a632-00ad0d4df2b4",
                  "parent_uuid": "5b8081ba-7c46-4218-8d40-6bf41fb7e868",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f93b762-51d1-4858-b1d5-6594ab6831ac",
              "parent_uuid": "2e99fa98-2cd2-4384-a172-8e076ec5209f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfb871e6-61ac-4c46-80b2-518c1ba41817",
                  "parent_uuid": "2f93b762-51d1-4858-b1d5-6594ab6831ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38ef4568-f67b-43a2-b25c-41bc4ab251aa",
              "parent_uuid": "2e99fa98-2cd2-4384-a172-8e076ec5209f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87e566a9-641c-493c-8c4b-740f1b3ad4cc",
                  "parent_uuid": "38ef4568-f67b-43a2-b25c-41bc4ab251aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24e5fa4d-baac-4d11-a00e-8e2545ed4c95",
              "parent_uuid": "2e99fa98-2cd2-4384-a172-8e076ec5209f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d701f15c-6a20-42d5-8b56-7f802877e232",
                  "parent_uuid": "24e5fa4d-baac-4d11-a00e-8e2545ed4c95",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "02545059-e782-4b7b-9861-307cdd08fa1b",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8a0e5d1-91af-4c17-a303-206d80431ea0",
              "parent_uuid": "02545059-e782-4b7b-9861-307cdd08fa1b",
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
              "innerHtml": "\r\n                    <span>Bei den zwei Antriebsmotoren die Laufruhe, Geräuschentwicklung und Lagerung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "431076df-f296-4d03-b4ed-828b6fa873d2",
              "parent_uuid": "02545059-e782-4b7b-9861-307cdd08fa1b",
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
              "uuid": "1092bb1b-457a-49b4-a357-b4c94326642d",
              "parent_uuid": "02545059-e782-4b7b-9861-307cdd08fa1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29466e3c-1494-423f-8088-3e2de6f3e909",
                  "parent_uuid": "1092bb1b-457a-49b4-a357-b4c94326642d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "142692ea-cc2d-42cc-b183-3192a1d7e45e",
              "parent_uuid": "02545059-e782-4b7b-9861-307cdd08fa1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f03809fc-6693-430b-ac74-89fd49547c3d",
                  "parent_uuid": "142692ea-cc2d-42cc-b183-3192a1d7e45e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcca6349-dafe-4138-9638-5407e1e04e8a",
              "parent_uuid": "02545059-e782-4b7b-9861-307cdd08fa1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f051558c-f037-46b5-9070-fcef65780126",
                  "parent_uuid": "fcca6349-dafe-4138-9638-5407e1e04e8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4c49c0a-d6b6-4117-be82-d20b8dd124cc",
              "parent_uuid": "02545059-e782-4b7b-9861-307cdd08fa1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9584637-ab85-4a1f-8fc8-7b1226288fa8",
                  "parent_uuid": "b4c49c0a-d6b6-4117-be82-d20b8dd124cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e5d86bf4-8737-4d09-844a-3eae8379ed8d",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2e5bbfdd-ec04-4900-b7c0-3a352b6487bb",
              "parent_uuid": "e5d86bf4-8737-4d09-844a-3eae8379ed8d",
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "4b156d4d-6b54-4d3b-92cc-d0b6c94c324d",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80264018-4d3b-4404-83c8-56f1527baf00",
              "parent_uuid": "4b156d4d-6b54-4d3b-92cc-d0b6c94c324d",
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
              "innerHtml": "\r\n                    <span>Reinigung des HAP mittels Staubsauger und Reinigungsmittel u.a. Bremsenreiniger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "21ab22c6-0e44-4c44-acbb-a96025baf2d0",
              "parent_uuid": "4b156d4d-6b54-4d3b-92cc-d0b6c94c324d",
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
              "uuid": "49ef83b0-48fa-478e-b798-4128e46a6f34",
              "parent_uuid": "4b156d4d-6b54-4d3b-92cc-d0b6c94c324d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d07b7dca-82d1-40f4-9a03-4b368f8d8e8e",
                  "parent_uuid": "49ef83b0-48fa-478e-b798-4128e46a6f34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e43b9512-c850-478f-89a2-045784140f44",
              "parent_uuid": "4b156d4d-6b54-4d3b-92cc-d0b6c94c324d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5b2a751-b89a-4352-ab91-e1016c4119e3",
                  "parent_uuid": "e43b9512-c850-478f-89a2-045784140f44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d66cf71-a334-466a-8692-e4872aa44eeb",
              "parent_uuid": "4b156d4d-6b54-4d3b-92cc-d0b6c94c324d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aac3ecfa-bfbf-48c0-a865-7e0ab5549d46",
                  "parent_uuid": "9d66cf71-a334-466a-8692-e4872aa44eeb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c7b26ee-778b-4003-a6a9-1fb5edb0c3dc",
              "parent_uuid": "4b156d4d-6b54-4d3b-92cc-d0b6c94c324d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47e6904e-f9b4-4bb1-b7f1-1cdcd3430244",
                  "parent_uuid": "5c7b26ee-778b-4003-a6a9-1fb5edb0c3dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0db0af5f-bdcc-4fa0-bd55-edc164f5fe27",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ee46f01-55d8-4960-9250-068815bd2bde",
              "parent_uuid": "0db0af5f-bdcc-4fa0-bd55-edc164f5fe27",
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "3a33dc6b-1b51-4f71-9565-e6b2fe99d8b0",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d3e844f-d987-4c42-bb59-31efa16230ac",
              "parent_uuid": "3a33dc6b-1b51-4f71-9565-e6b2fe99d8b0",
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "a45e4440-65fd-4656-80da-8be9ec34dce4",
          "parent_uuid": "bc96a1e2-a8c9-4a25-9790-f2c230d69f30",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "207a2cd1-7410-4c2b-9e34-1223a5cfe55b",
              "parent_uuid": "a45e4440-65fd-4656-80da-8be9ec34dce4",
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
                  "uuid": "7b9f830d-aa78-420e-9343-40e1d05da657",
                  "parent_uuid": "207a2cd1-7410-4c2b-9e34-1223a5cfe55b",
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
          "sort": 16,
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
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
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
		,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DA19D272-9439-47A7-9749-153DAFAB2B69'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

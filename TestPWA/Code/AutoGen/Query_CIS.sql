
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
  "uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "87bd2213-8d57-4266-a0fe-cc50ea96cdff",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "337bea81-6b65-4885-a29d-1bea17d402cb",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "f51b10bc-950d-41cf-8088-eb215ddbad1d",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "5693c6c0-133e-46cd-9a0d-b85c6509ec85",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "f52bfdc1-f9ff-4304-98ad-c36d394b4946",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "cd8a41a0-f01c-47ea-b5d7-c511d04965c6",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "2b111ef5-57ab-4956-acda-857134d15058",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
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
      "uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
      "parent_uuid": "f337e4f8-261d-49c5-bade-02ad02285fab",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6f8965c5-7a11-4c4c-842b-3e6911d1a160",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "48cc6272-db3e-43b4-80b1-49d709eb47ab",
              "parent_uuid": "6f8965c5-7a11-4c4c-842b-3e6911d1a160",
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
              "uuid": "d63d46a5-b29d-4a2a-86c0-3b91df248ed6",
              "parent_uuid": "6f8965c5-7a11-4c4c-842b-3e6911d1a160",
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
              "uuid": "19dadcf3-d5b2-4e88-82b5-c9987a60f11d",
              "parent_uuid": "6f8965c5-7a11-4c4c-842b-3e6911d1a160",
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
              "uuid": "fa497a7b-3af6-4b1a-b81b-c64183f6ca7e",
              "parent_uuid": "6f8965c5-7a11-4c4c-842b-3e6911d1a160",
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
          "uuid": "9c1756d0-c767-406d-baa5-4e2ab4a5f0f9",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "8676b1ca-7394-460a-853a-c421e53f317c",
              "parent_uuid": "9c1756d0-c767-406d-baa5-4e2ab4a5f0f9",
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
              "uuid": "a75f6172-52c9-43ff-bb61-cee824d08f8d",
              "parent_uuid": "9c1756d0-c767-406d-baa5-4e2ab4a5f0f9",
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
              "uuid": "a142c520-d02d-410b-809e-ae2154b64d20",
              "parent_uuid": "9c1756d0-c767-406d-baa5-4e2ab4a5f0f9",
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
              "uuid": "06d17f84-9d22-4470-8496-10047bdfe35f",
              "parent_uuid": "9c1756d0-c767-406d-baa5-4e2ab4a5f0f9",
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
          "uuid": "b9169dfb-56d0-4d83-b699-0caea4700473",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f912a479-b510-4715-965d-c034516f7695",
              "parent_uuid": "b9169dfb-56d0-4d83-b699-0caea4700473",
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
              "uuid": "f930128d-3156-4248-ab64-ed6bf384661b",
              "parent_uuid": "b9169dfb-56d0-4d83-b699-0caea4700473",
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
              "uuid": "bce30ac6-95b9-4b04-8d6d-c517d46e30e7",
              "parent_uuid": "b9169dfb-56d0-4d83-b699-0caea4700473",
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
              "uuid": "4151d049-1714-4181-be83-b3b05e143b0e",
              "parent_uuid": "b9169dfb-56d0-4d83-b699-0caea4700473",
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
              "uuid": "88f5654c-6daf-45d7-997c-4f4a7f26c2e1",
              "parent_uuid": "b9169dfb-56d0-4d83-b699-0caea4700473",
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
              "uuid": "d66b28c9-dd4d-4d20-a0a0-34db5650afba",
              "parent_uuid": "b9169dfb-56d0-4d83-b699-0caea4700473",
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
          "uuid": "872b8bb6-f8b4-4e1b-8587-523a1e240308",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "74c4c7d7-871c-4d4a-b2da-7d27df8d720f",
              "parent_uuid": "872b8bb6-f8b4-4e1b-8587-523a1e240308",
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
          "uuid": "66f19d28-75ec-4fd9-8d6c-659adfc39cc6",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b42749e-49a9-40f3-a580-0f8a1fa1b231",
              "parent_uuid": "66f19d28-75ec-4fd9-8d6c-659adfc39cc6",
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
              "uuid": "16e96bc7-59ba-4424-a3cf-bbec64c0ec0a",
              "parent_uuid": "66f19d28-75ec-4fd9-8d6c-659adfc39cc6",
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
              "uuid": "bcc8a437-e30a-46f3-911b-72c41d076ab8",
              "parent_uuid": "66f19d28-75ec-4fd9-8d6c-659adfc39cc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e978289-7ae1-4c7e-851e-cd9122b2d376",
                  "parent_uuid": "bcc8a437-e30a-46f3-911b-72c41d076ab8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b5e945d-9f65-4de9-a203-b611ee7e6e4b",
              "parent_uuid": "66f19d28-75ec-4fd9-8d6c-659adfc39cc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed557d34-479d-4d31-82d7-11810f25ecd5",
                  "parent_uuid": "5b5e945d-9f65-4de9-a203-b611ee7e6e4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "337ffdd9-c96a-47da-a79f-fb57233ef812",
              "parent_uuid": "66f19d28-75ec-4fd9-8d6c-659adfc39cc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11060c77-93d9-4eef-80bf-e265b55c50d9",
                  "parent_uuid": "337ffdd9-c96a-47da-a79f-fb57233ef812",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3144e453-d881-4967-8c2b-38b3ad123d32",
              "parent_uuid": "66f19d28-75ec-4fd9-8d6c-659adfc39cc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cc79d6b-ac8f-45e6-a47f-167a226aa7e0",
                  "parent_uuid": "3144e453-d881-4967-8c2b-38b3ad123d32",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c888ee77-f812-438e-b175-2359a7b5c1dd",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb9b19d2-53f4-4d39-98ba-a3fb3bb1979c",
              "parent_uuid": "c888ee77-f812-438e-b175-2359a7b5c1dd",
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
              "uuid": "086d553b-c577-4f4a-867e-b3ad8d980f3c",
              "parent_uuid": "c888ee77-f812-438e-b175-2359a7b5c1dd",
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
              "uuid": "79f3bfe7-d938-4837-a277-a32d60b464b4",
              "parent_uuid": "c888ee77-f812-438e-b175-2359a7b5c1dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc2e136b-f7ae-4e8b-bcda-e17466598ec9",
                  "parent_uuid": "79f3bfe7-d938-4837-a277-a32d60b464b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd92eeca-1896-47ed-bf9e-2d5eaca2b096",
              "parent_uuid": "c888ee77-f812-438e-b175-2359a7b5c1dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "321b07bc-b5eb-4cd3-8ac6-0f63ba683346",
                  "parent_uuid": "cd92eeca-1896-47ed-bf9e-2d5eaca2b096",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df5ab8e9-600c-4be4-8dca-d9bb7a495d20",
              "parent_uuid": "c888ee77-f812-438e-b175-2359a7b5c1dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "362700cf-2f78-4791-af21-4fd0f08e5140",
                  "parent_uuid": "df5ab8e9-600c-4be4-8dca-d9bb7a495d20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7da991d2-6b2c-47c9-a5a7-a5d0990e8660",
              "parent_uuid": "c888ee77-f812-438e-b175-2359a7b5c1dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef73082d-9374-4e1d-8c79-2cd21447c926",
                  "parent_uuid": "7da991d2-6b2c-47c9-a5a7-a5d0990e8660",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "08ffa6a3-ed1a-4c0f-a8f6-48dec42195c8",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7bcd6110-c55d-485e-a932-0936018612f9",
              "parent_uuid": "08ffa6a3-ed1a-4c0f-a8f6-48dec42195c8",
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
              "uuid": "897006fa-7a16-4e3d-aa45-7588fa14ffd4",
              "parent_uuid": "08ffa6a3-ed1a-4c0f-a8f6-48dec42195c8",
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
              "uuid": "5ef4bd41-8ab3-47b2-80e7-d5127322c258",
              "parent_uuid": "08ffa6a3-ed1a-4c0f-a8f6-48dec42195c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00363a20-ba28-4f8b-966f-a116a7e56d85",
                  "parent_uuid": "5ef4bd41-8ab3-47b2-80e7-d5127322c258",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bfd997e2-f882-4422-a5ea-956d48e193c8",
              "parent_uuid": "08ffa6a3-ed1a-4c0f-a8f6-48dec42195c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b840e77b-b95a-4a95-8a55-e4d24ed1d15d",
                  "parent_uuid": "bfd997e2-f882-4422-a5ea-956d48e193c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36ef4c4a-d185-4556-a710-1f1010fb7e98",
              "parent_uuid": "08ffa6a3-ed1a-4c0f-a8f6-48dec42195c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d14877f-cb82-4491-beea-7330d6ccb2f6",
                  "parent_uuid": "36ef4c4a-d185-4556-a710-1f1010fb7e98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62fc35d8-b144-46b6-ae76-9abb90737fd3",
              "parent_uuid": "08ffa6a3-ed1a-4c0f-a8f6-48dec42195c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "909d9845-30a2-493a-b3c1-6efa840f0e96",
                  "parent_uuid": "62fc35d8-b144-46b6-ae76-9abb90737fd3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d5549abd-3318-4cd4-91e5-b0ec6f7e09fd",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f8778ea-d1c2-4222-af40-cd01bbb9ec9c",
              "parent_uuid": "d5549abd-3318-4cd4-91e5-b0ec6f7e09fd",
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
              "uuid": "3b68c8bc-a1b0-4416-8c7d-d621e5485f76",
              "parent_uuid": "d5549abd-3318-4cd4-91e5-b0ec6f7e09fd",
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
              "uuid": "0696b079-ea4a-424f-8d84-0fb586a0feba",
              "parent_uuid": "d5549abd-3318-4cd4-91e5-b0ec6f7e09fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "397f5f3b-7621-4b5e-a27e-77b501b66812",
                  "parent_uuid": "0696b079-ea4a-424f-8d84-0fb586a0feba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ac1f242-9e4c-483b-bf8b-2d7af1abc52e",
              "parent_uuid": "d5549abd-3318-4cd4-91e5-b0ec6f7e09fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c26682e-ad43-4d6a-a92f-5df8a266053a",
                  "parent_uuid": "6ac1f242-9e4c-483b-bf8b-2d7af1abc52e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54d33ed3-47dc-452d-9be4-1a20be65e9a5",
              "parent_uuid": "d5549abd-3318-4cd4-91e5-b0ec6f7e09fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db5aa0a3-a599-4728-9e22-7f63b5b0b45b",
                  "parent_uuid": "54d33ed3-47dc-452d-9be4-1a20be65e9a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39d719b1-079a-4210-aa5e-64e0cfff943b",
              "parent_uuid": "d5549abd-3318-4cd4-91e5-b0ec6f7e09fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a906b66-1ca1-4e24-9e31-4af0b6f7cb6a",
                  "parent_uuid": "39d719b1-079a-4210-aa5e-64e0cfff943b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8d8a4a1d-aa52-464e-a078-27b98fc47011",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4ee2b5ae-dd2a-4250-9caf-0450e6c655e1",
              "parent_uuid": "8d8a4a1d-aa52-464e-a078-27b98fc47011",
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
          "uuid": "fe72ec05-dd7d-45e6-952b-fcb7b49caf31",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c2ef40da-656d-480e-81ff-89339a0dc54f",
              "parent_uuid": "fe72ec05-dd7d-45e6-952b-fcb7b49caf31",
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
              "uuid": "362ac674-3b04-4a16-944d-8bd5eb94dd77",
              "parent_uuid": "fe72ec05-dd7d-45e6-952b-fcb7b49caf31",
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
              "uuid": "982a6c9a-2c82-43a9-8097-ea012a0319fb",
              "parent_uuid": "fe72ec05-dd7d-45e6-952b-fcb7b49caf31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d64e0a96-7b49-4c0c-a1ef-f9c98fe1b21c",
                  "parent_uuid": "982a6c9a-2c82-43a9-8097-ea012a0319fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "010fcee0-4c51-42bb-b77f-377287744198",
              "parent_uuid": "fe72ec05-dd7d-45e6-952b-fcb7b49caf31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10550638-190d-4d88-a344-4025323a4ef3",
                  "parent_uuid": "010fcee0-4c51-42bb-b77f-377287744198",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "804e6f8d-3c91-481b-a69b-09670385adc8",
              "parent_uuid": "fe72ec05-dd7d-45e6-952b-fcb7b49caf31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b8f6ea9-f42e-4412-bad0-8f1b96ea4adc",
                  "parent_uuid": "804e6f8d-3c91-481b-a69b-09670385adc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d1c0f7c-3346-4069-9396-0be591bc67b3",
              "parent_uuid": "fe72ec05-dd7d-45e6-952b-fcb7b49caf31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62b6b6bc-04ff-4359-a2e0-1ef956e50b50",
                  "parent_uuid": "5d1c0f7c-3346-4069-9396-0be591bc67b3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6723a3ef-4661-4e4e-b77b-c82cb8dc9937",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90e585c3-a282-4ad1-b4b7-847bc6511f8a",
              "parent_uuid": "6723a3ef-4661-4e4e-b77b-c82cb8dc9937",
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
              "uuid": "999f55e2-e53a-4d19-8ae5-d50e9cf2eeaf",
              "parent_uuid": "6723a3ef-4661-4e4e-b77b-c82cb8dc9937",
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
              "uuid": "dd835836-0f1e-4cf8-9d03-5220b93a6204",
              "parent_uuid": "6723a3ef-4661-4e4e-b77b-c82cb8dc9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f1834f0-c965-472a-acdb-6f0e4e0ffa13",
                  "parent_uuid": "dd835836-0f1e-4cf8-9d03-5220b93a6204",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78ce7fb6-7f37-4ee1-8a12-ecbf59a52efc",
              "parent_uuid": "6723a3ef-4661-4e4e-b77b-c82cb8dc9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16de3c53-ad12-4d08-bb66-3ccdd031abd9",
                  "parent_uuid": "78ce7fb6-7f37-4ee1-8a12-ecbf59a52efc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af0b1fa8-c113-490d-ab53-876cea4aa70c",
              "parent_uuid": "6723a3ef-4661-4e4e-b77b-c82cb8dc9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f46ecd3b-9d2f-41ed-8048-889aefd30acb",
                  "parent_uuid": "af0b1fa8-c113-490d-ab53-876cea4aa70c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73419326-49b9-470f-9f52-fd018ffd1893",
              "parent_uuid": "6723a3ef-4661-4e4e-b77b-c82cb8dc9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd602bca-3ed4-440d-8cd8-9fe5d096b97a",
                  "parent_uuid": "73419326-49b9-470f-9f52-fd018ffd1893",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c9d8520-e485-48f5-80da-d606ea8be415",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "318e8f54-2a19-4dad-873a-d6d7fb7c6996",
              "parent_uuid": "7c9d8520-e485-48f5-80da-d606ea8be415",
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
              "uuid": "6f616545-b6ad-407a-943b-c5fd15171517",
              "parent_uuid": "7c9d8520-e485-48f5-80da-d606ea8be415",
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
              "uuid": "248032cb-5b9f-4312-b051-45227f49624b",
              "parent_uuid": "7c9d8520-e485-48f5-80da-d606ea8be415",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0dbc62ef-6eab-4712-aa0b-867b98dc0d4a",
                  "parent_uuid": "248032cb-5b9f-4312-b051-45227f49624b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0c3df92-4a91-49db-85b2-486c901ccd18",
              "parent_uuid": "7c9d8520-e485-48f5-80da-d606ea8be415",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ecdbc718-234e-4a6b-8911-711c04143fe7",
                  "parent_uuid": "e0c3df92-4a91-49db-85b2-486c901ccd18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d06987e9-60f3-40d3-8301-b57f0f6b74c7",
              "parent_uuid": "7c9d8520-e485-48f5-80da-d606ea8be415",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5999fb44-0bf5-4b3a-ad3d-e344d72a447d",
                  "parent_uuid": "d06987e9-60f3-40d3-8301-b57f0f6b74c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9047c9b4-a36c-4453-97ca-d75b25518d49",
              "parent_uuid": "7c9d8520-e485-48f5-80da-d606ea8be415",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "720996a2-4e12-495e-b110-a0ce638f9dff",
                  "parent_uuid": "9047c9b4-a36c-4453-97ca-d75b25518d49",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "99421b3d-e564-4fb6-857c-41b0d9b56932",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e3bc5deb-b889-4d44-b443-4303295fc5f9",
              "parent_uuid": "99421b3d-e564-4fb6-857c-41b0d9b56932",
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
              "uuid": "386a8d7b-f1d6-423d-b321-216e568f5d24",
              "parent_uuid": "99421b3d-e564-4fb6-857c-41b0d9b56932",
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
              "uuid": "b8f6d9ef-3dfa-437c-91c2-f6aeefd1e89a",
              "parent_uuid": "99421b3d-e564-4fb6-857c-41b0d9b56932",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a0913cf-3c45-4d07-9cad-b8fcc2d59fd8",
                  "parent_uuid": "b8f6d9ef-3dfa-437c-91c2-f6aeefd1e89a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45d3aceb-673a-406b-b133-d13ee082b994",
              "parent_uuid": "99421b3d-e564-4fb6-857c-41b0d9b56932",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d28e483-39ee-4b73-98f6-61b34b6069d9",
                  "parent_uuid": "45d3aceb-673a-406b-b133-d13ee082b994",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bc1f5db-5f11-47d0-9cea-44497b406767",
              "parent_uuid": "99421b3d-e564-4fb6-857c-41b0d9b56932",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e8f35e1-5242-42fb-a70e-499fd903b940",
                  "parent_uuid": "5bc1f5db-5f11-47d0-9cea-44497b406767",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47a9e376-1bb6-46af-a18f-0c3fe08635f6",
              "parent_uuid": "99421b3d-e564-4fb6-857c-41b0d9b56932",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c83d0814-9dde-4253-a99e-64237cb715ed",
                  "parent_uuid": "47a9e376-1bb6-46af-a18f-0c3fe08635f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "93b50f93-8956-4298-8f71-2fcffa568fe7",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47867778-e94d-4b11-9dd3-984fe8bcf191",
              "parent_uuid": "93b50f93-8956-4298-8f71-2fcffa568fe7",
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
              "uuid": "ba3ad619-c264-4799-98f5-d71b6bda6d13",
              "parent_uuid": "93b50f93-8956-4298-8f71-2fcffa568fe7",
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
              "uuid": "048f3c69-cc10-4d8c-8745-df0720990431",
              "parent_uuid": "93b50f93-8956-4298-8f71-2fcffa568fe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b83d8d2-b161-450b-a23e-43c9ae8f9254",
                  "parent_uuid": "048f3c69-cc10-4d8c-8745-df0720990431",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49a09d27-fcb1-4839-958f-9559f992c012",
              "parent_uuid": "93b50f93-8956-4298-8f71-2fcffa568fe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5555dd5c-105b-42ea-8be7-045ff5a86016",
                  "parent_uuid": "49a09d27-fcb1-4839-958f-9559f992c012",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04df6fb1-ef19-48ee-87a8-84c046e456e6",
              "parent_uuid": "93b50f93-8956-4298-8f71-2fcffa568fe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db930144-cb70-4908-8ae9-0711d7c26b1f",
                  "parent_uuid": "04df6fb1-ef19-48ee-87a8-84c046e456e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90b78de3-3155-46c7-8cfa-a09cddf20060",
              "parent_uuid": "93b50f93-8956-4298-8f71-2fcffa568fe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a5fb27e-f9ca-4c6c-bde0-9fb34847f33f",
                  "parent_uuid": "90b78de3-3155-46c7-8cfa-a09cddf20060",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d3456fa7-d6b1-4664-89b2-73397fb0c738",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39481cd4-c542-42fc-93ad-3b65fe93fb62",
              "parent_uuid": "d3456fa7-d6b1-4664-89b2-73397fb0c738",
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
              "uuid": "c5c1062b-e9c3-4d13-9196-649965cdb2d1",
              "parent_uuid": "d3456fa7-d6b1-4664-89b2-73397fb0c738",
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
              "uuid": "d4ef5341-6c71-45db-b022-86192bf93d58",
              "parent_uuid": "d3456fa7-d6b1-4664-89b2-73397fb0c738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "caad2a95-a277-495f-9b41-da36f1934f69",
                  "parent_uuid": "d4ef5341-6c71-45db-b022-86192bf93d58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23957696-6eb2-4905-920e-2c95aa543f39",
              "parent_uuid": "d3456fa7-d6b1-4664-89b2-73397fb0c738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e65e16b6-9f6b-4cf0-9796-05432ac12a84",
                  "parent_uuid": "23957696-6eb2-4905-920e-2c95aa543f39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be9acca3-61cc-4153-a4a8-b9eef7be92b9",
              "parent_uuid": "d3456fa7-d6b1-4664-89b2-73397fb0c738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "210dab87-6ff3-4936-bd3b-ed3867766286",
                  "parent_uuid": "be9acca3-61cc-4153-a4a8-b9eef7be92b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3485ac3d-9daf-4b79-aa57-3d25a7ff8262",
              "parent_uuid": "d3456fa7-d6b1-4664-89b2-73397fb0c738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81bb8e0d-8988-40e2-9fb3-a8de236d588a",
                  "parent_uuid": "3485ac3d-9daf-4b79-aa57-3d25a7ff8262",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "171440bb-d12c-4b40-a493-e6c94b783070",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4043663-a4b0-4391-8f79-a412aa156b4d",
              "parent_uuid": "171440bb-d12c-4b40-a493-e6c94b783070",
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
              "uuid": "6479284f-aeea-4b7e-93b8-3017afb79a84",
              "parent_uuid": "171440bb-d12c-4b40-a493-e6c94b783070",
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
              "uuid": "1adc94e9-d6ff-4718-8ea5-b482acdd4c1b",
              "parent_uuid": "171440bb-d12c-4b40-a493-e6c94b783070",
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
                  "uuid": "4fb9bbab-0853-4bb5-a1c7-a398de6b7f5a",
                  "parent_uuid": "1adc94e9-d6ff-4718-8ea5-b482acdd4c1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8df5a960-f7ae-401a-9c28-4632a2e0338b",
              "parent_uuid": "171440bb-d12c-4b40-a493-e6c94b783070",
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
                  "uuid": "a92af5ea-17e1-4e48-b642-429c19c726ce",
                  "parent_uuid": "8df5a960-f7ae-401a-9c28-4632a2e0338b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "616f4cfa-f540-475b-b54d-8b72aadca3f0",
              "parent_uuid": "171440bb-d12c-4b40-a493-e6c94b783070",
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
                  "uuid": "8b261d2d-4f50-4419-89fa-556c7151d00c",
                  "parent_uuid": "616f4cfa-f540-475b-b54d-8b72aadca3f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e067ad3-0a16-4936-b764-8df7263e4682",
              "parent_uuid": "171440bb-d12c-4b40-a493-e6c94b783070",
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
                  "uuid": "f4f5ca00-c823-4d86-af8a-65bfbdc8a420",
                  "parent_uuid": "2e067ad3-0a16-4936-b764-8df7263e4682",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0de1afa6-2a1e-4282-bd77-e0395894066e",
              "parent_uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
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
              "uuid": "c988a4c3-9cd7-4e87-b2b2-e8d4e1a07135",
              "parent_uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
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
              "uuid": "86a5c1a4-50eb-4a35-8561-8632e7d48eaf",
              "parent_uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
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
              "uuid": "b3fe9b1d-28fa-4f1d-9f2f-343bdfbc6334",
              "parent_uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
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
                  "uuid": "612aad6a-1f07-432f-b666-0e67ef1d47ec",
                  "parent_uuid": "b3fe9b1d-28fa-4f1d-9f2f-343bdfbc6334",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34226b6f-2f58-4801-98e1-a4da33ae445a",
              "parent_uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
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
                  "uuid": "8d4a676b-57d9-42df-9979-4b68ce5b9757",
                  "parent_uuid": "34226b6f-2f58-4801-98e1-a4da33ae445a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f2e58e9-df53-48a1-b12d-86f6fbfbad07",
              "parent_uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
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
                  "uuid": "cabf5997-e3c1-4647-bb01-1db7d4b1f594",
                  "parent_uuid": "7f2e58e9-df53-48a1-b12d-86f6fbfbad07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2f0ace5-5950-4b93-a330-118d0db71ab0",
              "parent_uuid": "14c6bef6-b97b-4591-a969-7c0c69243622",
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
                  "uuid": "d5c403f0-81fd-4bab-acfa-f8056b4fd7b9",
                  "parent_uuid": "b2f0ace5-5950-4b93-a330-118d0db71ab0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95453dd1-e426-4636-8f11-0acdf5e72213",
              "parent_uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
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
              "uuid": "1e87c426-865d-492b-8a25-7efa042001e6",
              "parent_uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
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
              "uuid": "52534b51-0d95-49a5-946b-0b35c6f59767",
              "parent_uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
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
                  "uuid": "91e6dccd-dd7c-4af3-a556-e66128cb6612",
                  "parent_uuid": "52534b51-0d95-49a5-946b-0b35c6f59767",
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
              "uuid": "357b25a3-4ae0-40cb-a08d-79c5ff973772",
              "parent_uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
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
                  "uuid": "de1e0990-3868-4277-8d38-057a7d777689",
                  "parent_uuid": "357b25a3-4ae0-40cb-a08d-79c5ff973772",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b57cfb2-1862-43f3-a312-7ba3de575136",
              "parent_uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
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
                  "uuid": "fd2de130-eddf-4adb-981f-ea9605306320",
                  "parent_uuid": "9b57cfb2-1862-43f3-a312-7ba3de575136",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80c1e07f-fd32-425c-b980-a8b5f6d6cba8",
              "parent_uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
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
                  "uuid": "f33a583d-58f6-4f3f-8ea1-bf79115848fe",
                  "parent_uuid": "80c1e07f-fd32-425c-b980-a8b5f6d6cba8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f241f82a-23dc-4330-87ed-c66a32929774",
              "parent_uuid": "4e040239-4a7b-43ac-8b62-87e39b9eef6d",
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
                  "uuid": "a0ba2275-705b-48b7-8a6b-0a6265f90fa0",
                  "parent_uuid": "f241f82a-23dc-4330-87ed-c66a32929774",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "223b461d-3fc8-4e97-aaa6-d1c10d2c814f",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02c33cd0-a73d-458f-a9e2-4878609da386",
              "parent_uuid": "223b461d-3fc8-4e97-aaa6-d1c10d2c814f",
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
              "uuid": "5ab8e154-1263-44a1-a475-e023ce6584d1",
              "parent_uuid": "223b461d-3fc8-4e97-aaa6-d1c10d2c814f",
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
              "uuid": "e125abaf-7728-4be7-8afd-8186ab44f292",
              "parent_uuid": "223b461d-3fc8-4e97-aaa6-d1c10d2c814f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0261ff29-2e7c-4a04-9bf6-008499344902",
                  "parent_uuid": "e125abaf-7728-4be7-8afd-8186ab44f292",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5b508a1-7646-4cc5-9d75-c95c443d1012",
              "parent_uuid": "223b461d-3fc8-4e97-aaa6-d1c10d2c814f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7687f10-a154-4d24-97f1-3c7feaae58e2",
                  "parent_uuid": "f5b508a1-7646-4cc5-9d75-c95c443d1012",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab4bead9-f094-4e27-a607-7f31e73a026a",
              "parent_uuid": "223b461d-3fc8-4e97-aaa6-d1c10d2c814f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f076066-7b23-4eb9-8f2d-c7c575a38979",
                  "parent_uuid": "ab4bead9-f094-4e27-a607-7f31e73a026a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69c786a5-41e8-4779-8858-80bd1f71c4c5",
              "parent_uuid": "223b461d-3fc8-4e97-aaa6-d1c10d2c814f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e0bdf5d-0f34-4e48-8404-373a40429289",
                  "parent_uuid": "69c786a5-41e8-4779-8858-80bd1f71c4c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c176771-57bb-486d-9297-738fbcce84fc",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5941e90f-ac32-4862-a29b-121cbffca745",
              "parent_uuid": "6c176771-57bb-486d-9297-738fbcce84fc",
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
              "uuid": "0cd56cdd-1966-44b4-8120-df2bbc2bda49",
              "parent_uuid": "6c176771-57bb-486d-9297-738fbcce84fc",
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
              "uuid": "f4ea972b-75e4-4249-831a-77f8985b3d01",
              "parent_uuid": "6c176771-57bb-486d-9297-738fbcce84fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74d8320b-b6cd-4411-8846-9303c6faa506",
                  "parent_uuid": "f4ea972b-75e4-4249-831a-77f8985b3d01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1f24a79-ae30-4e6e-b414-f9b212694831",
              "parent_uuid": "6c176771-57bb-486d-9297-738fbcce84fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbadca13-1977-48f0-9166-96db7507c5e5",
                  "parent_uuid": "f1f24a79-ae30-4e6e-b414-f9b212694831",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80bd1d46-5469-4965-9d4a-8f3416e10b81",
              "parent_uuid": "6c176771-57bb-486d-9297-738fbcce84fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d84a0cf-f80d-451d-ac48-005b7674f658",
                  "parent_uuid": "80bd1d46-5469-4965-9d4a-8f3416e10b81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d1e4a22-6175-4210-95d1-ed8e4b2042ed",
              "parent_uuid": "6c176771-57bb-486d-9297-738fbcce84fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53664283-824f-4379-9e64-2f38e808607d",
                  "parent_uuid": "6d1e4a22-6175-4210-95d1-ed8e4b2042ed",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8eaacebe-8fe0-4641-9a6e-89a8300e49f8",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b4b7fa9-736b-4e8b-84a7-9e3ffb22b2e5",
              "parent_uuid": "8eaacebe-8fe0-4641-9a6e-89a8300e49f8",
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
              "uuid": "581ae61c-6e13-40d8-9f53-484520e3b215",
              "parent_uuid": "8eaacebe-8fe0-4641-9a6e-89a8300e49f8",
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
              "uuid": "82a0f573-46ab-43cc-940f-c7fe38ab0dbf",
              "parent_uuid": "8eaacebe-8fe0-4641-9a6e-89a8300e49f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02f518ff-a902-40f4-98e7-329510640c94",
                  "parent_uuid": "82a0f573-46ab-43cc-940f-c7fe38ab0dbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "660ba1d4-914d-413a-a55d-406d4a75a838",
              "parent_uuid": "8eaacebe-8fe0-4641-9a6e-89a8300e49f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66dbc10c-9967-4d0f-a40a-8ade2a61d610",
                  "parent_uuid": "660ba1d4-914d-413a-a55d-406d4a75a838",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53bc1820-fa77-4249-b31c-076b619b7dcb",
              "parent_uuid": "8eaacebe-8fe0-4641-9a6e-89a8300e49f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51f67dde-d746-485a-9194-8f7b4cb9fbf4",
                  "parent_uuid": "53bc1820-fa77-4249-b31c-076b619b7dcb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a04805b9-c4dd-45b4-91cd-b317bd97e5d6",
              "parent_uuid": "8eaacebe-8fe0-4641-9a6e-89a8300e49f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a451bbc8-4084-4b04-b2df-d0bfa32f2801",
                  "parent_uuid": "a04805b9-c4dd-45b4-91cd-b317bd97e5d6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2ff956ff-0e44-466d-b690-0270eacc0d92",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8b1216b-a6c5-4df3-b05f-fee2f7d19ea4",
              "parent_uuid": "2ff956ff-0e44-466d-b690-0270eacc0d92",
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
              "uuid": "b7d580fa-3fea-4a6b-b17c-8af3960e29db",
              "parent_uuid": "2ff956ff-0e44-466d-b690-0270eacc0d92",
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
              "uuid": "fa0fae9a-c47f-4658-bac2-105c4daa42d5",
              "parent_uuid": "2ff956ff-0e44-466d-b690-0270eacc0d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "049347cb-4ec6-4bb7-ac79-8ee410697e1b",
                  "parent_uuid": "fa0fae9a-c47f-4658-bac2-105c4daa42d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75777fc8-86f4-4183-981f-c3bcf69933b0",
              "parent_uuid": "2ff956ff-0e44-466d-b690-0270eacc0d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30eb6d83-0476-4823-a693-ac6c5c32ff96",
                  "parent_uuid": "75777fc8-86f4-4183-981f-c3bcf69933b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17b52ac3-fe09-4c87-9fa8-5e574f5899e1",
              "parent_uuid": "2ff956ff-0e44-466d-b690-0270eacc0d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0509071-4bc9-4ebf-9f6e-3b30de60fc69",
                  "parent_uuid": "17b52ac3-fe09-4c87-9fa8-5e574f5899e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8e43be1-a94f-482c-ab65-1bf460db6b5d",
              "parent_uuid": "2ff956ff-0e44-466d-b690-0270eacc0d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c20aa4b5-3590-41fb-80a3-608749146398",
                  "parent_uuid": "c8e43be1-a94f-482c-ab65-1bf460db6b5d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8889db17-55fd-4086-9722-f917bc668b1d",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "768ee8c0-1b80-4679-b176-2cb50d73d3ed",
              "parent_uuid": "8889db17-55fd-4086-9722-f917bc668b1d",
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
          "uuid": "1e397b59-74b2-491c-bfbc-7458102a2625",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37b7c003-e65c-4946-9bbe-5a16e5b55fdf",
              "parent_uuid": "1e397b59-74b2-491c-bfbc-7458102a2625",
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
              "uuid": "f29ef9f9-d95f-4f94-bdde-d91e7f8dc829",
              "parent_uuid": "1e397b59-74b2-491c-bfbc-7458102a2625",
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
              "uuid": "63f6c895-438f-4ffb-979d-e55b4f6feac1",
              "parent_uuid": "1e397b59-74b2-491c-bfbc-7458102a2625",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45b7473c-a4e3-4943-ab22-29dbf0c82406",
                  "parent_uuid": "63f6c895-438f-4ffb-979d-e55b4f6feac1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99fd3dae-17df-47e2-94bc-577b16eb6030",
              "parent_uuid": "1e397b59-74b2-491c-bfbc-7458102a2625",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc8c1420-3f68-4db6-83ff-e12f87b00aea",
                  "parent_uuid": "99fd3dae-17df-47e2-94bc-577b16eb6030",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ba19550-bc60-481d-88fb-61fb46ae54ec",
              "parent_uuid": "1e397b59-74b2-491c-bfbc-7458102a2625",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75fcae63-f2c3-4333-8969-912b1689fdfc",
                  "parent_uuid": "0ba19550-bc60-481d-88fb-61fb46ae54ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "705c2d7d-4508-497c-8535-e5921691cb9a",
              "parent_uuid": "1e397b59-74b2-491c-bfbc-7458102a2625",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "396ae471-1a80-4ca1-9895-2c127f471eb6",
                  "parent_uuid": "705c2d7d-4508-497c-8535-e5921691cb9a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "417aa86f-9ff4-4986-9395-1b612f6fdf8d",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a6ab72e-39f7-4563-a999-1fe250e8a1ba",
              "parent_uuid": "417aa86f-9ff4-4986-9395-1b612f6fdf8d",
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
              "uuid": "8b81e3a7-68b1-4e97-ad9b-eeec5736dc8c",
              "parent_uuid": "417aa86f-9ff4-4986-9395-1b612f6fdf8d",
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
              "uuid": "c2ca6fdb-c696-4303-a568-f96eb9d532b6",
              "parent_uuid": "417aa86f-9ff4-4986-9395-1b612f6fdf8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3590143-7e43-4ae2-a05e-24e61cfa77d1",
                  "parent_uuid": "c2ca6fdb-c696-4303-a568-f96eb9d532b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45ce7de9-b343-4bfc-a0c5-84db65fd2530",
              "parent_uuid": "417aa86f-9ff4-4986-9395-1b612f6fdf8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a747a5c9-d4b3-4255-9c8b-e7c9cd0fa2fa",
                  "parent_uuid": "45ce7de9-b343-4bfc-a0c5-84db65fd2530",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cff73f1b-c1a8-4bc3-a640-541e3355f42b",
              "parent_uuid": "417aa86f-9ff4-4986-9395-1b612f6fdf8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57bc2a41-e956-4be4-aafe-0b33b965caf7",
                  "parent_uuid": "cff73f1b-c1a8-4bc3-a640-541e3355f42b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ead3f49-f173-4224-9b6c-047fca84f328",
              "parent_uuid": "417aa86f-9ff4-4986-9395-1b612f6fdf8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d02e7f1e-2143-4a6c-a45b-b2ba68762eb8",
                  "parent_uuid": "9ead3f49-f173-4224-9b6c-047fca84f328",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d81e084-bb0f-44ea-b3fc-d6797c9852d2",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "108f3e85-dfb1-4ee1-8a2c-c071fa06cc6b",
              "parent_uuid": "6d81e084-bb0f-44ea-b3fc-d6797c9852d2",
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
              "uuid": "059c10e2-12ab-4f64-aabc-03582e0e4096",
              "parent_uuid": "6d81e084-bb0f-44ea-b3fc-d6797c9852d2",
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
              "uuid": "bb38b9c6-97bd-4aa2-aa39-11112a13870d",
              "parent_uuid": "6d81e084-bb0f-44ea-b3fc-d6797c9852d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "214781f1-0492-4310-89cc-ddf1179bce21",
                  "parent_uuid": "bb38b9c6-97bd-4aa2-aa39-11112a13870d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "641406b9-6edd-417b-b573-4d49cc1bab08",
              "parent_uuid": "6d81e084-bb0f-44ea-b3fc-d6797c9852d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41142c7b-2a83-4216-91ae-ca9e49495118",
                  "parent_uuid": "641406b9-6edd-417b-b573-4d49cc1bab08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7879e615-9494-4d90-bfef-1b0a492c17ee",
              "parent_uuid": "6d81e084-bb0f-44ea-b3fc-d6797c9852d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8bd22ce7-7386-4490-aa63-a6a14e2b86fa",
                  "parent_uuid": "7879e615-9494-4d90-bfef-1b0a492c17ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df050a1d-2ee3-4308-9776-7e03ad03d5e6",
              "parent_uuid": "6d81e084-bb0f-44ea-b3fc-d6797c9852d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca777afa-17bf-4ced-a900-a05553a8f514",
                  "parent_uuid": "df050a1d-2ee3-4308-9776-7e03ad03d5e6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c4cac40e-6f90-41af-8c5c-6e4e7a6011ef",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40ce5e53-bff4-42e1-94d6-f52def443acd",
              "parent_uuid": "c4cac40e-6f90-41af-8c5c-6e4e7a6011ef",
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
              "uuid": "78a9744b-9782-4d8f-b101-80e7a00a80d0",
              "parent_uuid": "c4cac40e-6f90-41af-8c5c-6e4e7a6011ef",
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
              "uuid": "20d585a0-dbff-476a-a0ea-3e28a9258af6",
              "parent_uuid": "c4cac40e-6f90-41af-8c5c-6e4e7a6011ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "116a6949-e48b-4f98-8da2-7f64c5d50e16",
                  "parent_uuid": "20d585a0-dbff-476a-a0ea-3e28a9258af6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e443a815-8de4-48c4-9b7d-5a4ab0169e20",
              "parent_uuid": "c4cac40e-6f90-41af-8c5c-6e4e7a6011ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad99bafd-f962-436e-85c3-1e21bebbe3f5",
                  "parent_uuid": "e443a815-8de4-48c4-9b7d-5a4ab0169e20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d33d466-b096-471a-ad98-1d9b5077031d",
              "parent_uuid": "c4cac40e-6f90-41af-8c5c-6e4e7a6011ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "439dea23-bd8a-4b31-87b9-48663b4df2ae",
                  "parent_uuid": "6d33d466-b096-471a-ad98-1d9b5077031d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c87ffb9-32b5-4c7c-bc23-5abf3b4db215",
              "parent_uuid": "c4cac40e-6f90-41af-8c5c-6e4e7a6011ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d21a4d47-543a-4b05-9b84-9eaa5a888049",
                  "parent_uuid": "0c87ffb9-32b5-4c7c-bc23-5abf3b4db215",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f33a5100-cce2-491f-bf5d-ee636fb3d66d",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4262256c-42dc-44e1-86c5-4dcfbb6e41b1",
              "parent_uuid": "f33a5100-cce2-491f-bf5d-ee636fb3d66d",
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
              "uuid": "49f4c7cc-d53e-4700-95ca-8baa751507e1",
              "parent_uuid": "f33a5100-cce2-491f-bf5d-ee636fb3d66d",
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
              "uuid": "10e65716-e1e1-495e-af68-cc8d22332a10",
              "parent_uuid": "f33a5100-cce2-491f-bf5d-ee636fb3d66d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96b71ffa-e825-4aa7-a402-b2fae3287159",
                  "parent_uuid": "10e65716-e1e1-495e-af68-cc8d22332a10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b31c96f-8be8-4d60-a069-e847f7af3512",
              "parent_uuid": "f33a5100-cce2-491f-bf5d-ee636fb3d66d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f0e2d01-d8de-4bfa-ac7b-e1f7817cd49b",
                  "parent_uuid": "5b31c96f-8be8-4d60-a069-e847f7af3512",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43bbca4c-38be-4852-a669-84a4b3ba9ec2",
              "parent_uuid": "f33a5100-cce2-491f-bf5d-ee636fb3d66d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "666cfab2-7637-451b-b5c6-211d92567e30",
                  "parent_uuid": "43bbca4c-38be-4852-a669-84a4b3ba9ec2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "222cee82-183b-401a-a970-e1153fab6ce6",
              "parent_uuid": "f33a5100-cce2-491f-bf5d-ee636fb3d66d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49d16240-9cb6-491a-b633-65bf935cc4d9",
                  "parent_uuid": "222cee82-183b-401a-a970-e1153fab6ce6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "40858c10-6a72-4214-a11d-54e30275dd09",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d406316c-58cc-4f0e-a919-ab800c7e4957",
              "parent_uuid": "40858c10-6a72-4214-a11d-54e30275dd09",
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
          "uuid": "b1e9ca97-f2ef-4597-9466-7487c34e5aab",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49504ff5-3d19-430a-80a9-4ef023f5a2e0",
              "parent_uuid": "b1e9ca97-f2ef-4597-9466-7487c34e5aab",
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
          "uuid": "19e1c23b-b82d-4c25-891f-b791449bd9d3",
          "parent_uuid": "f07208f6-cbda-41d7-acee-33b91720d5a1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0466dfb-cfef-46c4-b491-214f919236d6",
              "parent_uuid": "19e1c23b-b82d-4c25-891f-b791449bd9d3",
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
                  "uuid": "15443e40-943f-4fdb-9d33-fc02f7ed2724",
                  "parent_uuid": "e0466dfb-cfef-46c4-b491-214f919236d6",
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

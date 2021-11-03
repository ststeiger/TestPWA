
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
  "uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
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
      "uuid": "b8498b72-a318-47c1-883e-467238727d37",
      "parent_uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "3"
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
      "uuid": "69f7634e-37f6-42f1-8fee-40e62e40f7dd",
      "parent_uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "77"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "df7e0fa3-2c2f-4150-87f6-d3e8f787f15b",
      "parent_uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 2,
      "lvl": 0
    },
    {
      "uuid": "4294efe9-fd93-49f3-a449-1510d684d125",
      "parent_uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "67"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "fdb7470e-3b30-4ca1-8ad3-7b0ce27940b3",
      "parent_uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "49"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "52246a2b-f3d1-4a17-9bef-46757d9a5390",
      "parent_uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
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
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
      "parent_uuid": "8066cedf-894b-44e5-8080-acf719e6846e",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0b3822b2-155d-4716-8884-e91aca9933f3",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 2px solid #000000"
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
              "innerHtml": "\r\n                    <span>Datum:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b0eed1d8-f383-44e1-8844-8c254da0082d",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "d11adfcc-211d-4f53-9583-cb9bab0f40fb",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "3da3797a-dc42-401c-acf6-483db226bf53",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Schüttgutcontainer</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "de9c91a1-a456-46b5-8cf5-68db3630fc33",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "f5042b91-3372-4eac-8e4f-b1c8b7141753",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "05b80159-bb7a-4d85-bdb4-7df7482441b0",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "9e891c29-0d02-4de5-9951-08978070467d",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "dc17ea83-53d1-48e0-83a1-047fe3881405",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "7335afb6-5c69-4e89-b19d-b2b5703450fd",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
              "uuid": "36f901d2-a78d-42cf-94bb-da35afbdaa08",
              "parent_uuid": "5bcefadf-95b6-44df-8a42-5d2e104e59f8",
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
          "uuid": "f9053732-f659-4cdf-b750-fcc7c7a65fef",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "95329b86-a9a5-4397-8e1c-3c70f0827139",
              "parent_uuid": "f9053732-f659-4cdf-b750-fcc7c7a65fef",
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
              "uuid": "a8745d0e-374a-47b3-991d-17b1b6839c55",
              "parent_uuid": "f9053732-f659-4cdf-b750-fcc7c7a65fef",
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
              "uuid": "f598ac42-f4dd-428e-bae2-cae8a4472b3b",
              "parent_uuid": "f9053732-f659-4cdf-b750-fcc7c7a65fef",
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
              "uuid": "bc0ac25e-2e84-47fd-ac40-55df818630ba",
              "parent_uuid": "f9053732-f659-4cdf-b750-fcc7c7a65fef",
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
          "uuid": "89f1763f-ff71-47ef-ba0d-0101d0e6891c",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33a31375-2981-45cc-a56d-8fca7ba4c383",
              "parent_uuid": "89f1763f-ff71-47ef-ba0d-0101d0e6891c",
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
                  "center"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"blink_notme\">Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "decf7ab2-367a-4cf9-a745-d1f95a694ad3",
              "parent_uuid": "89f1763f-ff71-47ef-ba0d-0101d0e6891c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ],
                [
                  "style",
                  "height: 4.5cm;"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b1b3788f-b1a8-4f8b-a555-a058cda29359",
              "parent_uuid": "89f1763f-ff71-47ef-ba0d-0101d0e6891c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "8b3ec813-9489-4feb-808a-73b7ca9f137d",
              "parent_uuid": "89f1763f-ff71-47ef-ba0d-0101d0e6891c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">nicht in Ordnung</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "560ef4ca-6354-46bc-b57a-f77dfb384bca",
              "parent_uuid": "89f1763f-ff71-47ef-ba0d-0101d0e6891c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">erledigt</span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "c280da71-133c-4d0c-a8b5-d06fcbe7afbe",
              "parent_uuid": "89f1763f-ff71-47ef-ba0d-0101d0e6891c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">nicht vorhanden</span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cc3c6043-7ed8-4e1e-801c-7a29af9b2378",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "4"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "61d39963-8f22-42ba-acd0-b88e07221a1c",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8bb296de-0fec-4c59-adf6-193c2eef7a03",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "51619fe6-8e8e-405c-ae04-157d71589133",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "eb9feb5a-2f45-405a-868d-516f7f05d1e1",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "362d9ffa-53d8-4ec0-ba09-d4b5503dc692",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "8c099c3c-6680-478a-8cbb-758fdba5ce16",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "68476d95-4378-4b97-b5b2-f4234e287948",
              "parent_uuid": "5cb9c1e6-f094-4114-a3a6-34cad15cd071",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 7,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9dad6414-e637-4828-a42e-33aa1efa72d8",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
              "tagName": "td",
              "properties": [
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
                  "4"
                ]
              ],
              "innerHtml": "\r\n                    <span>Im plombierten Zustand muss die grösst mögliche Öffnung gemessen werden.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "70cb0283-2567-4e70-acf6-d3fa9903cae6",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>5mm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c82d7e75-9889-4137-ade6-7838c67ca4dd",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; margin:0; padding: 0; "
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96827eb6-d09b-4d5f-998c-2c2a6ca37f44",
                  "parent_uuid": "c82d7e75-9889-4137-ade6-7838c67ca4dd",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "display: block; width: 100%; height: 100%; box-sizing: border-box; margin:0; padding:0;"
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
              "uuid": "9effd0a7-28ec-4ab5-ad14-e02539664d3b",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d0378455-4760-4e3b-8d4f-ce4971e5693c",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "cab78db3-1458-4145-b891-bf5466a52c76",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
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
              "uuid": "9efdc901-ee90-4459-ad27-1161783005e0",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "b11ccecc-fcc4-4996-8516-bee6c4cbaf87",
              "parent_uuid": "48ba4b74-439b-4fdd-8dd3-64892b4b5c45",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 7,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "f5422bda-52fa-455e-a622-53d85403ca6e",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa9e001b-f843-451c-9547-85095c080275",
              "parent_uuid": "f5422bda-52fa-455e-a622-53d85403ca6e",
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
              "innerHtml": "\r\n                    <span>Auf Beschädigungen oder Defekte prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7ae3b89c-bb26-403f-8d1f-ae3c7584d4d4",
              "parent_uuid": "f5422bda-52fa-455e-a622-53d85403ca6e",
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
              "uuid": "49b1b43e-8cd4-4e31-a98f-5710dd5223c4",
              "parent_uuid": "f5422bda-52fa-455e-a622-53d85403ca6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18b57ee3-7ec9-4184-8ecc-b15bd169d464",
                  "parent_uuid": "49b1b43e-8cd4-4e31-a98f-5710dd5223c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d3bd1c4-1400-453f-9eaf-636e6d5657ef",
              "parent_uuid": "f5422bda-52fa-455e-a622-53d85403ca6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43e6082c-6a57-43b3-9d7d-7a48f7ba6654",
                  "parent_uuid": "1d3bd1c4-1400-453f-9eaf-636e6d5657ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbf673b3-a7fc-4036-bda8-5e1d9bc89108",
              "parent_uuid": "f5422bda-52fa-455e-a622-53d85403ca6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e465ad1f-1ae4-4c40-b223-a235594b2b6e",
                  "parent_uuid": "bbf673b3-a7fc-4036-bda8-5e1d9bc89108",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "caed2f55-395b-4a45-a114-5016fbcf472c",
              "parent_uuid": "f5422bda-52fa-455e-a622-53d85403ca6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ecf5810-1154-447c-825e-8c303dcee7dc",
                  "parent_uuid": "caed2f55-395b-4a45-a114-5016fbcf472c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d73d5b61-0ed3-4cca-8177-a08deffcdfc7",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7c9654d-c7f3-40dd-b577-b7e1cdac29ce",
              "parent_uuid": "d73d5b61-0ed3-4cca-8177-a08deffcdfc7",
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
                  "height",
                  "20"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "3d3b184b-f489-49a2-a6e8-f12f71c1e928",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8640d9a5-04f9-4f6a-964d-1b556a9e1bcb",
              "parent_uuid": "3d3b184b-f489-49a2-a6e8-f12f71c1e928",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "b016dc31-f957-4a55-a206-d53cb2342c0f",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "92255b27-cfd6-4bc5-b28e-5796fe2d031c",
              "parent_uuid": "b016dc31-f957-4a55-a206-d53cb2342c0f",
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
              "innerHtml": "\r\n                    <span>Führungsschiene links / rechts fetten mit Molykote weisses Lagerfett</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ffb8a6f2-8c1d-49e9-abca-50133fd0130e",
              "parent_uuid": "b016dc31-f957-4a55-a206-d53cb2342c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "83278842-e51d-47ab-ad86-a1e22be28bba",
              "parent_uuid": "b016dc31-f957-4a55-a206-d53cb2342c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e7c5c9a-1790-4eae-9f85-8c4304d51abb",
                  "parent_uuid": "83278842-e51d-47ab-ad86-a1e22be28bba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "044bc7a5-253d-4f56-a754-dd251219d4c5",
              "parent_uuid": "b016dc31-f957-4a55-a206-d53cb2342c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f89ac1aa-267b-49c3-8149-449423992345",
                  "parent_uuid": "044bc7a5-253d-4f56-a754-dd251219d4c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "365b2392-5996-439b-b2fa-7e868e220ff8",
              "parent_uuid": "b016dc31-f957-4a55-a206-d53cb2342c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c95eecd-e4be-4a79-a6b2-a6ad30543aa7",
                  "parent_uuid": "365b2392-5996-439b-b2fa-7e868e220ff8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "114e8fa3-2915-4953-8aaf-1cb0d7b6dcfa",
              "parent_uuid": "b016dc31-f957-4a55-a206-d53cb2342c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95ae5057-da7d-4052-a66f-25a57cf04931",
                  "parent_uuid": "114e8fa3-2915-4953-8aaf-1cb0d7b6dcfa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "678822b4-ebc9-4953-af63-5f4c3f1e30b8",
          "parent_uuid": "178a7ecc-a3ef-4713-9938-84073aefd3ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed4cf6e8-029e-4630-a41e-d46c22bbae2b",
              "parent_uuid": "678822b4-ebc9-4953-af63-5f4c3f1e30b8",
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
              "innerHtml": "\r\n                    <span>Schieber fetten mit Molykote weisses Lagerfett</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9519e7b1-6877-4650-abe0-267593e8e573",
              "parent_uuid": "678822b4-ebc9-4953-af63-5f4c3f1e30b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a57e3219-2ec3-45f3-a0b4-bb8cb18d5ef3",
              "parent_uuid": "678822b4-ebc9-4953-af63-5f4c3f1e30b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aba1b505-9189-4895-a9a8-562d8f7de668",
                  "parent_uuid": "a57e3219-2ec3-45f3-a0b4-bb8cb18d5ef3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d76db0f2-6151-41fe-90a2-9fcbb57afe9b",
              "parent_uuid": "678822b4-ebc9-4953-af63-5f4c3f1e30b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84c0d94e-b54d-443e-ade4-e7e51cb2ec3e",
                  "parent_uuid": "d76db0f2-6151-41fe-90a2-9fcbb57afe9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdff382d-2683-4088-b74b-08e4b2bf54d5",
              "parent_uuid": "678822b4-ebc9-4953-af63-5f4c3f1e30b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d68e0c8-d6cc-45c0-badb-eaefffb8660a",
                  "parent_uuid": "cdff382d-2683-4088-b74b-08e4b2bf54d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5526fd4-2f22-4bc9-96b7-38e05f088171",
              "parent_uuid": "678822b4-ebc9-4953-af63-5f4c3f1e30b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d02f88b-fd05-47fa-b2e2-a201ff927211",
                  "parent_uuid": "a5526fd4-2f22-4bc9-96b7-38e05f088171",
                  "tagName": "input",
                  "properties": [
                    [
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
        }
      ],
      "sort": 6,
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

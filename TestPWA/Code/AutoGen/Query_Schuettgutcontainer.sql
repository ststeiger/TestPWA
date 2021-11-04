
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
  "uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
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
      "uuid": "782b134f-03c2-4418-a3e3-72ad81d99ada",
      "parent_uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
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
      "uuid": "6fb71b06-a358-4420-a98b-6854676098d4",
      "parent_uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
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
      "uuid": "6fea1f45-1756-4989-a0c5-54de90d93eee",
      "parent_uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
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
      "uuid": "98a51174-5373-47c0-840e-ced9a6ad7717",
      "parent_uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
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
      "uuid": "a1a38cff-a377-46bc-83ff-3229a5104539",
      "parent_uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
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
      "uuid": "9e20c01a-dc92-4e57-9dc9-c94f65cbf5e0",
      "parent_uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
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
      "uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
      "parent_uuid": "2873caa4-ee3e-466d-94d8-f2b8da72c26b",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "631db34c-a98e-4750-97e2-7e4b8c4e940f",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "c30e4c7a-e062-47de-9ac9-e9242fd9034b",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "faaac9b8-0845-411f-b893-c7c4e3ffccc5",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "f1a6e5b0-2c89-4cd1-97b5-530198f364d9",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "ed779beb-6f96-4a58-8298-9d2b540fa681",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "3e70a099-1cd7-41d1-aecd-a40529f6a73a",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "2a5fcfad-2e2d-477a-920c-187630845b53",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "167596e8-4a6b-4f92-9c47-0292a3b360d6",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "5c611bee-7172-433b-9aa4-1c9057b8f1f2",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "b6413575-5bf9-4ad5-979e-ac84b63e0039",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
              "uuid": "318e234c-f3d5-4cf3-a105-3c705ec0f6dc",
              "parent_uuid": "861c6bb1-f016-47ca-92c7-1306dd12a577",
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
          "uuid": "39ffdb93-2c24-492f-a6e9-5863867cc600",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "09db1c60-0f04-4d58-81f8-cc695e0f3b0c",
              "parent_uuid": "39ffdb93-2c24-492f-a6e9-5863867cc600",
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
              "uuid": "52963b83-1369-49b3-8428-4d60146c99e3",
              "parent_uuid": "39ffdb93-2c24-492f-a6e9-5863867cc600",
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
              "uuid": "0d22c39e-24ea-4396-abad-c6816d2801fc",
              "parent_uuid": "39ffdb93-2c24-492f-a6e9-5863867cc600",
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
              "uuid": "dcc4a5b5-049a-4c95-8b1d-a2f0bdf5c533",
              "parent_uuid": "39ffdb93-2c24-492f-a6e9-5863867cc600",
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
          "uuid": "d09c48ee-09d9-49f2-b0f3-66cc2e84d8e3",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f623ce3-4019-4000-966b-a54025b8b0f0",
              "parent_uuid": "d09c48ee-09d9-49f2-b0f3-66cc2e84d8e3",
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
              "uuid": "850077cc-8612-49ba-b02a-12cd348a4225",
              "parent_uuid": "d09c48ee-09d9-49f2-b0f3-66cc2e84d8e3",
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
              "uuid": "50a2d5a9-96aa-4e51-89f6-19729561200a",
              "parent_uuid": "d09c48ee-09d9-49f2-b0f3-66cc2e84d8e3",
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
              "uuid": "d9a6271a-2603-491a-affe-220dfcffd31f",
              "parent_uuid": "d09c48ee-09d9-49f2-b0f3-66cc2e84d8e3",
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
              "uuid": "e1f973e2-425b-4895-8339-d5e94ab84e66",
              "parent_uuid": "d09c48ee-09d9-49f2-b0f3-66cc2e84d8e3",
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
              "uuid": "409ff1b6-8beb-48e2-9a69-acdd22043f0b",
              "parent_uuid": "d09c48ee-09d9-49f2-b0f3-66cc2e84d8e3",
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
          "uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d78df5fc-fb31-4e3a-a89b-fee79c6a6f58",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
              "uuid": "48c51e91-566a-4eec-b1a6-32bd1408e384",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
              "uuid": "d132709e-c53c-460b-ae42-eb0a869d364e",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
              "uuid": "eb6da7d1-5bc1-4ae0-9265-b00680eb5699",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
              "uuid": "91247bbc-18cc-4001-91d9-58d5017bfed0",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
              "uuid": "adb0e442-8643-497e-8fe8-d11b6804bba4",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
              "uuid": "fac4f2ed-faf3-4953-af65-b83087d8a4c6",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
              "uuid": "e30e23a1-ab09-4cfc-afcc-bc8ece3aadd9",
              "parent_uuid": "5c9c54b1-43c7-46ca-a760-708ca9020309",
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
          "uuid": "8faca692-7451-4864-a75b-481fc45398aa",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cfe4cba-375a-4a17-85b1-4a300dff9944",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
              "tagName": "td",
              "properties": [
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
              "uuid": "84369946-7ffa-4ee7-a3ca-afe055a1b282",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
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
              "uuid": "96c0c9b7-c3bb-497c-bc2b-e3aaeb9c4466",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
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
                  "uuid": "803108b1-816e-4ccc-b3d3-f35a6cab1cdc",
                  "parent_uuid": "96c0c9b7-c3bb-497c-bc2b-e3aaeb9c4466",
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
              "uuid": "ec045f31-4f6e-4bf3-862a-110b265bc929",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
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
              "uuid": "d8f6525a-6843-4347-a8ea-3d63ffeb22f5",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
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
              "uuid": "a7e08f59-d22a-47c4-a26e-928881f16ab4",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
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
              "uuid": "649297de-0dc8-4262-a776-45e9765805f7",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
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
              "uuid": "358f902e-3817-4fae-888d-16f7a8f0656c",
              "parent_uuid": "8faca692-7451-4864-a75b-481fc45398aa",
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
          "uuid": "447654bd-186d-495c-9d9a-c3e7b376a2d2",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "974d2c84-2484-4c3e-8d41-322a2e54b124",
              "parent_uuid": "447654bd-186d-495c-9d9a-c3e7b376a2d2",
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
              "uuid": "9765326d-72f2-4aa5-84c3-3e7a8685d021",
              "parent_uuid": "447654bd-186d-495c-9d9a-c3e7b376a2d2",
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
              "uuid": "9f17a8ed-f00f-48a4-ab2e-29ae4ac50f64",
              "parent_uuid": "447654bd-186d-495c-9d9a-c3e7b376a2d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54b7c90d-4385-4f17-8150-66057fe74bac",
                  "parent_uuid": "9f17a8ed-f00f-48a4-ab2e-29ae4ac50f64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57564f6f-5c80-4e7f-a1b8-8d6d81f19a96",
              "parent_uuid": "447654bd-186d-495c-9d9a-c3e7b376a2d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67bc9127-d205-49bb-a824-e89b08ed1e6f",
                  "parent_uuid": "57564f6f-5c80-4e7f-a1b8-8d6d81f19a96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f7ec516-b557-433a-bc3e-f7bbf2a3304e",
              "parent_uuid": "447654bd-186d-495c-9d9a-c3e7b376a2d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b37cb657-2a77-422c-b3af-74ba3e8c4a7c",
                  "parent_uuid": "0f7ec516-b557-433a-bc3e-f7bbf2a3304e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80330114-3a45-47cc-aa6a-e6e75ee35eb6",
              "parent_uuid": "447654bd-186d-495c-9d9a-c3e7b376a2d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be63e4de-76dc-4a60-979f-661d821c5ad9",
                  "parent_uuid": "80330114-3a45-47cc-aa6a-e6e75ee35eb6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7948b651-3d28-4c7a-8d67-314eece57202",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5c030e8-70f6-452d-bfed-4507ddee2dda",
              "parent_uuid": "7948b651-3d28-4c7a-8d67-314eece57202",
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
          "uuid": "a4bd4908-c6cd-42a8-a037-649352c57d3d",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9852da93-85d5-462f-8f43-81259425cb5c",
              "parent_uuid": "a4bd4908-c6cd-42a8-a037-649352c57d3d",
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
          "uuid": "06771d27-6f8f-4835-85b4-63dc307b1cd7",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de3da543-77cf-45cd-9ffa-2631c7de54e8",
              "parent_uuid": "06771d27-6f8f-4835-85b4-63dc307b1cd7",
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
              "uuid": "0f1b146d-7871-49d0-9e8a-a3fd21c6ec8c",
              "parent_uuid": "06771d27-6f8f-4835-85b4-63dc307b1cd7",
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
              "uuid": "442b65e8-4df1-48ae-9763-153935a3197f",
              "parent_uuid": "06771d27-6f8f-4835-85b4-63dc307b1cd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ecfc61f-04fa-4f7e-af68-56e4017f17b6",
                  "parent_uuid": "442b65e8-4df1-48ae-9763-153935a3197f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06a98372-1f83-470f-bee9-a9439461e56c",
              "parent_uuid": "06771d27-6f8f-4835-85b4-63dc307b1cd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dca54c8b-c25b-476d-a68a-eca48b5a5738",
                  "parent_uuid": "06a98372-1f83-470f-bee9-a9439461e56c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3396a39d-c506-49ac-934e-3493348aa5e4",
              "parent_uuid": "06771d27-6f8f-4835-85b4-63dc307b1cd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "535e9d27-b8a4-4aed-8498-053d53126210",
                  "parent_uuid": "3396a39d-c506-49ac-934e-3493348aa5e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc0dccf9-217b-4380-9677-ca44139164ef",
              "parent_uuid": "06771d27-6f8f-4835-85b4-63dc307b1cd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09393e77-9570-4884-b413-b8c6daa6d6d4",
                  "parent_uuid": "dc0dccf9-217b-4380-9677-ca44139164ef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9beb7b9f-091e-483f-9f11-933f2e9714e1",
          "parent_uuid": "9cf429a2-b5a1-4ba2-8b89-5b5d6209ba89",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f869977-1209-4be4-9d4f-d7cf04a89456",
              "parent_uuid": "9beb7b9f-091e-483f-9f11-933f2e9714e1",
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
              "uuid": "cfefe85c-ef4f-40c3-941e-8fd15b4e85db",
              "parent_uuid": "9beb7b9f-091e-483f-9f11-933f2e9714e1",
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
              "uuid": "ee8be229-0f5a-4b8f-b189-e5d7b0f783e3",
              "parent_uuid": "9beb7b9f-091e-483f-9f11-933f2e9714e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d96df11b-efce-47cf-bd64-7167682ca547",
                  "parent_uuid": "ee8be229-0f5a-4b8f-b189-e5d7b0f783e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afe58849-fcdc-4244-b26d-e13e03b2d745",
              "parent_uuid": "9beb7b9f-091e-483f-9f11-933f2e9714e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "165f87d5-084b-4acd-867f-84f964ec0910",
                  "parent_uuid": "afe58849-fcdc-4244-b26d-e13e03b2d745",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac0dad52-b1eb-49f1-8810-9c629e5d1aec",
              "parent_uuid": "9beb7b9f-091e-483f-9f11-933f2e9714e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb35c4ca-29d5-4df8-ba64-4b03b4a5a7ef",
                  "parent_uuid": "ac0dad52-b1eb-49f1-8810-9c629e5d1aec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16056e00-9942-43ea-9c14-3e86674714a7",
              "parent_uuid": "9beb7b9f-091e-483f-9f11-933f2e9714e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e63b16c-753a-44b8-adfe-3c4cc35c0946",
                  "parent_uuid": "16056e00-9942-43ea-9c14-3e86674714a7",
                  "tagName": "input",
                  "properties": [
                    [
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

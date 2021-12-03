
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
  "uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
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
      "uuid": "3b78333b-8f36-4723-a95c-aba870aab2b2",
      "parent_uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
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
      "uuid": "b845851d-3f2e-48f4-9ee9-406eded1f2b2",
      "parent_uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
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
      "uuid": "b366889d-bfce-4f60-8bb7-b051f91c2f40",
      "parent_uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
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
      "uuid": "a23aa533-2e1c-48f2-a20d-57f83ade35c5",
      "parent_uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
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
      "uuid": "d1e6af4a-bf37-46b9-87c8-2734f9fdede3",
      "parent_uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
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
      "uuid": "88911775-b1a4-486c-90c6-ec8ec7a5f7f0",
      "parent_uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
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
      "uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
      "parent_uuid": "80209acd-d628-4fd9-9cd0-4ad620977d1c",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c719b2bc-9a4e-4f18-8a6b-26e2f3e0ca07",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "ac3c5500-7213-428b-893a-1828a53315c2",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "284f2360-09c4-48e9-b9d1-746c9cf0ee83",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "e5976f29-795c-4358-a808-e62d8c3a4417",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "ef5ece27-2f6d-426d-9728-59e06b342656",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "4571b82c-2b5d-4b89-b9ef-395d1a4cb937",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "52ce3d5b-20fc-4f72-8073-8d1ca3326829",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "06822d2d-e9e7-4997-84e3-17547dc6d575",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "3917b137-a442-4b19-8df4-f3cf48a94932",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "a59a6eea-af68-44e7-b567-4b18f170ba61",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
              "uuid": "47d2e88d-b2ac-4228-ba01-787615b05643",
              "parent_uuid": "a56a9323-be3a-4a3b-9bd8-ccc473adc8e6",
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
          "uuid": "62ae835a-e6f5-4714-a65f-73e32bb26262",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8b7a5fca-e624-4ea2-8426-798f4241d49d",
              "parent_uuid": "62ae835a-e6f5-4714-a65f-73e32bb26262",
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
              "uuid": "c80d3b59-6c35-483d-8e02-449bd092fa59",
              "parent_uuid": "62ae835a-e6f5-4714-a65f-73e32bb26262",
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
              "uuid": "d47b6053-1bb9-4e0a-a0b4-a87dc8d24b61",
              "parent_uuid": "62ae835a-e6f5-4714-a65f-73e32bb26262",
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
              "uuid": "dd90960f-f794-4713-a6b1-62a15be3f02a",
              "parent_uuid": "62ae835a-e6f5-4714-a65f-73e32bb26262",
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
          "uuid": "1ca5b63c-4def-49f7-8a0f-df6cc51dd336",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "836118f8-950a-403e-b7fa-8ce66c5e26d3",
              "parent_uuid": "1ca5b63c-4def-49f7-8a0f-df6cc51dd336",
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
              "uuid": "4a1fe0fc-d73a-4066-a3ce-dbffc6641518",
              "parent_uuid": "1ca5b63c-4def-49f7-8a0f-df6cc51dd336",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ],
                [
                  "style",
                  "max-height: 4cm;"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5004586b-edaf-41f6-821b-4631e53e05ef",
              "parent_uuid": "1ca5b63c-4def-49f7-8a0f-df6cc51dd336",
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
              "uuid": "ac7502c3-994f-415a-a01a-7f379df502d5",
              "parent_uuid": "1ca5b63c-4def-49f7-8a0f-df6cc51dd336",
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
              "uuid": "0158ff89-58a2-467b-beeb-028c54971e9e",
              "parent_uuid": "1ca5b63c-4def-49f7-8a0f-df6cc51dd336",
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
              "uuid": "ab1733a2-f235-4ccc-9913-a416b0277fa0",
              "parent_uuid": "1ca5b63c-4def-49f7-8a0f-df6cc51dd336",
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
          "uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d1e72549-c827-4f8b-8faf-67d6a410ef5f",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
              "uuid": "32d39e97-8ee4-422a-8bf0-9ee8a54138a4",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
              "uuid": "279b27bc-4cbf-41ff-9b27-4b237a75b84e",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
              "uuid": "25d9b1b1-cda3-415b-b447-7b3c19bbcf0b",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
              "uuid": "a57fe66a-1bf1-4cde-96cc-fe605e696c9a",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
              "uuid": "0459f999-6807-4770-972a-3c9fecc6f7f4",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
              "uuid": "2a9e7e82-d4b5-440f-a4e7-283ce5abf493",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
              "uuid": "49b18156-2494-43ee-bcdd-1208a64ffe38",
              "parent_uuid": "310bdcbc-e38b-4ae1-873c-778cf2c03e30",
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
          "uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "178d2512-a19f-4864-b5d3-0993b4093d39",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
              "tagName": "td",
              "properties": [
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
              "uuid": "cc6b87a3-7f22-4b65-9936-696a4526f941",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
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
              "uuid": "6cb4c02b-e82a-46c7-870f-8d440ff58a37",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
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
                  "uuid": "4c67321d-1f87-41ab-8d16-527dc55d8256",
                  "parent_uuid": "6cb4c02b-e82a-46c7-870f-8d440ff58a37",
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
              "uuid": "522d5fda-45ad-4a7c-ba7a-f037fbec58c7",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
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
              "uuid": "ffa1551b-3d3c-4936-95c4-4da6b5ee496b",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
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
              "uuid": "0d890f7f-b324-49da-bde8-51e742e4c2ef",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
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
              "uuid": "b21f58fc-92bf-49e6-a87c-2f64eccdbe06",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
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
              "uuid": "494ee969-02e0-47f1-8cfd-6019ab2dd34d",
              "parent_uuid": "3a29ca23-2842-404c-a866-83a7b2af5171",
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
          "uuid": "81a92ac0-b56f-4131-a4e9-357c3b66d966",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f837db28-76e4-440c-8bd8-7da0d5f99af3",
              "parent_uuid": "81a92ac0-b56f-4131-a4e9-357c3b66d966",
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
              "uuid": "b30cbead-bf36-4baa-a90d-cb4a269e7ab7",
              "parent_uuid": "81a92ac0-b56f-4131-a4e9-357c3b66d966",
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
              "uuid": "e23988b8-ee3f-41ca-acea-7e8109e7798f",
              "parent_uuid": "81a92ac0-b56f-4131-a4e9-357c3b66d966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "437e16ae-857d-4fc9-80b1-af4708f091e8",
                  "parent_uuid": "e23988b8-ee3f-41ca-acea-7e8109e7798f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d241db47-5ed7-4512-b272-782446aee762",
              "parent_uuid": "81a92ac0-b56f-4131-a4e9-357c3b66d966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "915451b2-ecf8-48f0-804b-387ee54e1d32",
                  "parent_uuid": "d241db47-5ed7-4512-b272-782446aee762",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f320a84-ef4d-4b19-bd19-4bd2b570d944",
              "parent_uuid": "81a92ac0-b56f-4131-a4e9-357c3b66d966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05416543-3a82-4482-83a8-f17a8932b8fb",
                  "parent_uuid": "1f320a84-ef4d-4b19-bd19-4bd2b570d944",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38bff6bb-7e0e-4f8c-8b7f-ba1909566c0e",
              "parent_uuid": "81a92ac0-b56f-4131-a4e9-357c3b66d966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bf28837-a720-4a4d-a631-d5b8204f6acb",
                  "parent_uuid": "38bff6bb-7e0e-4f8c-8b7f-ba1909566c0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3d733fb-933d-4e79-941e-49ca87b380f3",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d5025ed-1828-46fc-8c46-7d21dbe4aae0",
              "parent_uuid": "b3d733fb-933d-4e79-941e-49ca87b380f3",
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
          "uuid": "c8e075ab-a8ec-4534-8da1-1037ed7f58d0",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "eb234d68-dba9-4a94-9b69-894c58ea02d9",
              "parent_uuid": "c8e075ab-a8ec-4534-8da1-1037ed7f58d0",
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
          "uuid": "dd80cfd5-5b53-4ce0-a181-57c2633dfba5",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d91dcf64-7aa3-4be2-97cb-8380db867897",
              "parent_uuid": "dd80cfd5-5b53-4ce0-a181-57c2633dfba5",
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
              "uuid": "5842ba14-56f6-4063-9919-1c27c8b62343",
              "parent_uuid": "dd80cfd5-5b53-4ce0-a181-57c2633dfba5",
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
              "uuid": "05e9140b-5687-417f-a5ea-1593b0aa0400",
              "parent_uuid": "dd80cfd5-5b53-4ce0-a181-57c2633dfba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36a53fff-9935-480e-a903-548d7adb4fa8",
                  "parent_uuid": "05e9140b-5687-417f-a5ea-1593b0aa0400",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1b15721-ce95-4665-b68c-71f554e97235",
              "parent_uuid": "dd80cfd5-5b53-4ce0-a181-57c2633dfba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddd6ee44-b9df-4ec4-9035-ca0f8abb79e0",
                  "parent_uuid": "c1b15721-ce95-4665-b68c-71f554e97235",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1d7dcc7-8d0b-4538-adc0-db80abed34c3",
              "parent_uuid": "dd80cfd5-5b53-4ce0-a181-57c2633dfba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e5c85d2-f64e-4b08-a514-31a4b8a3f9a0",
                  "parent_uuid": "b1d7dcc7-8d0b-4538-adc0-db80abed34c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e428e4f-72fd-4efe-9292-76f9a6838603",
              "parent_uuid": "dd80cfd5-5b53-4ce0-a181-57c2633dfba5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e8a03e7-69d7-428b-aa23-14aa6961f07a",
                  "parent_uuid": "8e428e4f-72fd-4efe-9292-76f9a6838603",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c815a926-36f5-4bfb-9de3-85161f50cec0",
          "parent_uuid": "48798cd4-7991-466d-8dea-fdc64fd6a990",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4464351f-94ea-47b3-988b-df774c3c6732",
              "parent_uuid": "c815a926-36f5-4bfb-9de3-85161f50cec0",
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
              "uuid": "fdfe1500-4aa0-4efd-9083-4692f12582ec",
              "parent_uuid": "c815a926-36f5-4bfb-9de3-85161f50cec0",
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
              "uuid": "838651e4-c4a4-45aa-b953-39a2d0433374",
              "parent_uuid": "c815a926-36f5-4bfb-9de3-85161f50cec0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db54cde5-ca09-47bb-a8c3-851e186a3d73",
                  "parent_uuid": "838651e4-c4a4-45aa-b953-39a2d0433374",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "896c7aef-6eac-4ee3-bc3c-d679cd8d2fae",
              "parent_uuid": "c815a926-36f5-4bfb-9de3-85161f50cec0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ee7e455-7b82-452d-92c2-20122040aea1",
                  "parent_uuid": "896c7aef-6eac-4ee3-bc3c-d679cd8d2fae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d9a017a-714f-475f-9fd5-72eaa4b0bed3",
              "parent_uuid": "c815a926-36f5-4bfb-9de3-85161f50cec0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bb0a8ed-e62e-4591-93af-26f032824d14",
                  "parent_uuid": "1d9a017a-714f-475f-9fd5-72eaa4b0bed3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e6230e4-ee17-4f71-94c2-9bfc5940019c",
              "parent_uuid": "c815a926-36f5-4bfb-9de3-85161f50cec0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6687d488-2ebd-4b80-8d7e-e2cb8966175b",
                  "parent_uuid": "1e6230e4-ee17-4f71-94c2-9bfc5940019c",
                  "tagName": "input",
                  "properties": [
                    [
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
    ,'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS cl_uid 
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



DECLARE @allChecklistsVersions TABLE ( CL_UID uniqueidentifier NOT NULL PRIMARY KEY(CL_UID), CL_Name nvarchar(256) NULL, CLV_UID uniqueidentifier NOT NULL, CLV_Sort int); 

INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'eb159a9c-e69f-49f4-b10e-3a4825973e46', N'Schüttgutcontainer', '08796354-F7AA-4EDF-B943-A51F7AFDAD1D', 1); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'1f6bee57-38a8-4b29-9986-bfad7d107215', N'EVA', '11109E12-7B76-4B60-9168-42FC41D28383', 2); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'58a6d34c-2d4b-4f8a-b831-60488591aedc', N'CIS', '7F973E2D-5BEB-4E0F-932E-642CB936E7B6', 3); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'da19d272-9439-47a7-9749-153dafab2b69', N'VHP', 'E4FD4412-523C-41F0-9CDF-FFB3E5638C3C', 4); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'698ea23d-485a-4cee-9b06-2e130a3a5626', N'NPL', '6A3210F8-161F-4DF5-9566-1C66BF41D61D', 5); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'f1a2dd8a-2d11-496e-9b14-13559405089f', N'BPS_M7', '26456198-0699-4718-AAF7-B8119BE9D705', 6); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'ddada097-1bb4-46d5-9ee5-7bb28dd3201b', N'BPS_1020', 'FA28E4D1-E505-4C54-9305-52D526DD0D70', 7); 



;WITH CTE AS 
(
	SELECT 
		 CLV_UID AS CLV_UID -- uniqueidentifier 
		,CL_UID CLV_CL_UID -- uniqueidentifier 
		,(SELECT TOP 1 BE_ID FROM T_Benutzer WHERE BE_User IN ('noob.mcnoobington', 'administrator') ) AS CLV_Owner_BE_ID -- int 
		,CURRENT_TIMESTAMP AS CLV_Created -- datetime 
		,CAST('29991231' AS datetime) AS CLV_Obsoleted -- datetime 
	FROM @allChecklistsVersions 
)
-- SELECT * FROM CTE 


MERGE INTO dbo.T_ChecklistVersion AS A 
USING CTE ON CTE.CLV_UID = A.CLV_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.CLV_CL_UID = CTE.CLV_CL_UID 
            ,A.CLV_Owner_BE_ID = CTE.CLV_Owner_BE_ID 
			,A.CLV_Created = CTE.CLV_Created 
			,A.CLV_Obsoleted = CTE.CLV_Obsoleted 


WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
		 CLV_UID 
		,CLV_CL_UID 
		,CLV_Owner_BE_ID 
		,CLV_Created 
		,CLV_Obsoleted 
    ) 
    VALUES 
    ( 
		 CTE.CLV_UID 
		,CTE.CLV_CL_UID 
		,CTE.CLV_Owner_BE_ID 
		,CTE.CLV_Created 
		,CTE.CLV_Obsoleted 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;


SELECT * FROM T_ChecklistVersion;


-- DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 
-- DELETE FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
-- DELETE FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 




-- T_ChecklistElements

;WITH CTE AS 
( 
	SELECT 
		 uuid AS ELE_UID -- uniqueidentifier
		,parent_uuid AS ELE_Parent_UID -- uniqueidentifier
		,'08796354-F7AA-4EDF-B943-A51F7AFDAD1D' AS ELE_CLV_UID -- uniqueidentifier
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
            ,A.ELE_CLV_UID = CTE.ELE_CLV_UID 
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
        ,ELE_CLV_UID 
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
        ,CTE.ELE_CLV_UID 
        ,CTE.ELE_TagName 
        ,CTE.ELE_Level 
        ,CTE.ELE_Sort 
        ,CTE.ELE_RecSort 
        ,CTE.ELE_InnerHtml 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
 WHEN NOT MATCHED BY SOURCE AND A.ELE_CLV_UID IN(SELECT ELE_CLV_UID FROM CTE WHERE ELE_CLV_UID IS NOT NULL GROUP BY ELE_CLV_UID) THEN DELETE;
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
SET @__cl_uid = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CLV_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CLV_UID IN (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cl_uid ORDER BY CLV_Created  DESC )

-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties 
WHERE PRO_ELE_UID IN ( SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CLV_UID IN (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cl_uid ORDER BY CLV_Created  DESC ) 
) ORDER BY PRO_ELE_UID, PRO_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


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
  "uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
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
      "uuid": "6873f0fb-1b11-443d-860f-88d615b9d98e",
      "parent_uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
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
      "uuid": "681abdfb-d675-41ea-a30a-bfe508224a29",
      "parent_uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
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
      "uuid": "c08e59b9-d21f-42da-ab50-0bac795fb241",
      "parent_uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
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
      "uuid": "a30aa4b3-3ca9-4837-b650-5f12c9a9d158",
      "parent_uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
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
      "uuid": "4adb40b4-05d4-404a-9734-2e2b0ea8b9a7",
      "parent_uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
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
      "uuid": "71b1f089-8691-450b-b00f-db48c6680a20",
      "parent_uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
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
      "uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
      "parent_uuid": "a2ae0761-5f2c-415d-a4fb-8dc5957036ed",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "66999bfe-6cdf-4393-a016-416dd393803b",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "d484ae18-1e06-4706-b6f3-60e6ed54d891",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "01500c54-2596-449a-ada0-3d9ee26faae9",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "3e32df39-6693-4072-b99c-0f0df1402ab1",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "a9815de5-dccf-4e04-981f-a2fb9f79a643",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "77760353-afb9-48a3-8b49-b228dada3cf1",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "cf0a741b-4365-445c-92ba-f253e736f37f",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "7877fc92-3192-42e5-995c-87cf014dca22",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "86148621-ebd9-440a-b219-e27c9eee1b07",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "46cae5c5-53fb-436c-a51f-9a151dab00d5",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
              "uuid": "8180a54c-14a0-45e8-836a-fc64a70a1011",
              "parent_uuid": "3a7c1adc-915e-48a6-b74e-633e0e094a65",
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
          "uuid": "3c3aba69-bb2e-4c84-a443-d007977111a5",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "133bf060-2891-4e29-9e06-8e54606d0e90",
              "parent_uuid": "3c3aba69-bb2e-4c84-a443-d007977111a5",
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
              "uuid": "8eb8ec48-aeab-480f-b3df-4d3e1f67d04d",
              "parent_uuid": "3c3aba69-bb2e-4c84-a443-d007977111a5",
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
              "uuid": "2fff96e8-5f14-46ba-800f-195897ddbfdb",
              "parent_uuid": "3c3aba69-bb2e-4c84-a443-d007977111a5",
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
              "uuid": "6c92a465-f07a-4a7d-8409-efda3ca59b37",
              "parent_uuid": "3c3aba69-bb2e-4c84-a443-d007977111a5",
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
          "uuid": "9df3600a-2786-430f-ab8b-d48c6ec127fb",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4167dbf-7eb0-4668-a1ef-39b299b4ce61",
              "parent_uuid": "9df3600a-2786-430f-ab8b-d48c6ec127fb",
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
              "uuid": "95f55170-ad5b-4b5a-8611-33743ab4e4c5",
              "parent_uuid": "9df3600a-2786-430f-ab8b-d48c6ec127fb",
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
              "uuid": "0e960e11-76c3-428b-aebb-d2c6695150a8",
              "parent_uuid": "9df3600a-2786-430f-ab8b-d48c6ec127fb",
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
              "uuid": "412667bb-f3f4-4d46-8666-acad9aa765d6",
              "parent_uuid": "9df3600a-2786-430f-ab8b-d48c6ec127fb",
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
              "uuid": "c581d70b-b4a6-4db3-925b-75a81aab6e07",
              "parent_uuid": "9df3600a-2786-430f-ab8b-d48c6ec127fb",
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
              "uuid": "7d4c0383-0bb9-4a4b-b84d-f3a431c5c1e0",
              "parent_uuid": "9df3600a-2786-430f-ab8b-d48c6ec127fb",
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
          "uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c7a9b4a8-50c8-4e11-bad5-d19c816e431a",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
              "uuid": "de73a094-85e0-4967-9e87-740ff0ea8cc3",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
              "uuid": "6f77d0b8-6a95-4456-95ff-598485363843",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
              "uuid": "47e053a4-8347-48ec-a58f-36f9ffadb4c8",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
              "uuid": "a48a3070-d4c0-4d2e-ac3e-644550e8bd5d",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
              "uuid": "010a7472-764a-44f7-b9be-932dce3fa334",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
              "uuid": "916f5bfc-0291-4354-8671-37c50be82dc0",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
              "uuid": "fdefcdc9-33ca-494e-85a7-9cd4ca8e1e8a",
              "parent_uuid": "512984b1-8ee1-4ded-9e66-1b5b56305143",
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
          "uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee6dd484-ec9b-4b47-be4b-589ed4c149bb",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
              "tagName": "td",
              "properties": [
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
              "uuid": "78f231c0-eab6-44e6-b034-bf0c4fc4ec35",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
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
              "uuid": "1e53246e-71a2-4978-b1b0-1b45484c95b0",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
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
                  "uuid": "32647162-0e72-43b8-9621-5087c6af0741",
                  "parent_uuid": "1e53246e-71a2-4978-b1b0-1b45484c95b0",
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
              "uuid": "33bbad62-32b8-4040-9553-d9ea626fbed2",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
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
              "uuid": "9e0e2565-aed9-4307-a036-2d65632db64d",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
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
              "uuid": "09c130c7-1944-409a-ba35-392a8334e086",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
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
              "uuid": "f9f09227-3aa1-4778-bdbe-d8983432643c",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
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
              "uuid": "52aed8e8-1230-4f44-a007-085d44177e1c",
              "parent_uuid": "dc19e793-74f4-47c4-b203-3b035f62cbba",
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
          "uuid": "6363c0b6-1f83-4a76-bbb1-542726f0f7f9",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7084776a-a69f-4b29-b679-cc652f873a1a",
              "parent_uuid": "6363c0b6-1f83-4a76-bbb1-542726f0f7f9",
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
              "uuid": "105e5eb3-8b43-4524-bf77-b225a58d85ed",
              "parent_uuid": "6363c0b6-1f83-4a76-bbb1-542726f0f7f9",
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
              "uuid": "1017e44f-a657-45f2-8bb1-7f597bbaa452",
              "parent_uuid": "6363c0b6-1f83-4a76-bbb1-542726f0f7f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbc077b5-188d-4768-b49b-8479724810cf",
                  "parent_uuid": "1017e44f-a657-45f2-8bb1-7f597bbaa452",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba493782-10bc-4c80-8947-96e2e6b771ac",
              "parent_uuid": "6363c0b6-1f83-4a76-bbb1-542726f0f7f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "953883ee-d248-472a-8c19-63a1c164f5df",
                  "parent_uuid": "ba493782-10bc-4c80-8947-96e2e6b771ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "545cd468-f301-4b59-9485-d4f1af534b98",
              "parent_uuid": "6363c0b6-1f83-4a76-bbb1-542726f0f7f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c3e09dc-0977-4dd5-b61b-3705a0d6ae53",
                  "parent_uuid": "545cd468-f301-4b59-9485-d4f1af534b98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e790b9d9-887f-47f8-a106-a859e3c5ff5f",
              "parent_uuid": "6363c0b6-1f83-4a76-bbb1-542726f0f7f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdb3efcc-01ad-4d11-9887-21105cd66399",
                  "parent_uuid": "e790b9d9-887f-47f8-a106-a859e3c5ff5f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4702479c-543f-46ca-a379-8eaa1fcc9307",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48ac78e1-1b3c-4414-96f6-3db184ef55f3",
              "parent_uuid": "4702479c-543f-46ca-a379-8eaa1fcc9307",
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
          "uuid": "46dbbbb5-cbff-42c8-8882-7f52e2b3d80e",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "578b0036-aea2-4e61-9dd9-fd4fec025a8d",
              "parent_uuid": "46dbbbb5-cbff-42c8-8882-7f52e2b3d80e",
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
          "uuid": "55fd4e82-8813-4de4-b26a-3c308a546151",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd621c09-7bcd-499d-8614-ba1d8fdc8c12",
              "parent_uuid": "55fd4e82-8813-4de4-b26a-3c308a546151",
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
              "uuid": "2983e3ad-4a0e-4d0d-b35c-63fff5c6c641",
              "parent_uuid": "55fd4e82-8813-4de4-b26a-3c308a546151",
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
              "uuid": "b837977f-b394-4768-90c5-cf6d340291fe",
              "parent_uuid": "55fd4e82-8813-4de4-b26a-3c308a546151",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40f91fdc-33cb-4943-adf8-e5ec019ef1dc",
                  "parent_uuid": "b837977f-b394-4768-90c5-cf6d340291fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0b8cb3f-4b79-4521-a149-93252050acc4",
              "parent_uuid": "55fd4e82-8813-4de4-b26a-3c308a546151",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "364b16b5-2bf8-41ff-b3cb-90251f37756c",
                  "parent_uuid": "d0b8cb3f-4b79-4521-a149-93252050acc4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e1e4be3-ba0a-465d-b3a9-5dc0621d3f74",
              "parent_uuid": "55fd4e82-8813-4de4-b26a-3c308a546151",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1cdd7ac-c966-4ed5-9b45-d878dc5c2f7a",
                  "parent_uuid": "8e1e4be3-ba0a-465d-b3a9-5dc0621d3f74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ad910ff-7d45-4f3d-b8d4-35ac764a19a6",
              "parent_uuid": "55fd4e82-8813-4de4-b26a-3c308a546151",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34f731c4-075a-4c13-bae7-17058571e452",
                  "parent_uuid": "9ad910ff-7d45-4f3d-b8d4-35ac764a19a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cec9eede-c7f4-4b35-8f56-d72bdba1924b",
          "parent_uuid": "37c812b3-bd5d-4f04-b12c-72e3ced12c5a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d92a7ad3-86d3-45ab-9727-e477cd8ec7fc",
              "parent_uuid": "cec9eede-c7f4-4b35-8f56-d72bdba1924b",
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
              "uuid": "9b6ea716-5259-4bff-a021-dd82755ad5be",
              "parent_uuid": "cec9eede-c7f4-4b35-8f56-d72bdba1924b",
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
              "uuid": "7a3d011f-79f1-48e1-b47f-373aa41a7ce4",
              "parent_uuid": "cec9eede-c7f4-4b35-8f56-d72bdba1924b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "491edcd5-64fc-4fee-b16f-4008f6351ad8",
                  "parent_uuid": "7a3d011f-79f1-48e1-b47f-373aa41a7ce4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f432ca3c-5044-4019-b84b-939ec000dc6f",
              "parent_uuid": "cec9eede-c7f4-4b35-8f56-d72bdba1924b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3da9914-2b36-4e8f-8d88-5a91951de781",
                  "parent_uuid": "f432ca3c-5044-4019-b84b-939ec000dc6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5c5e2ca-8c02-4bfc-a4de-5aeacc80cb0b",
              "parent_uuid": "cec9eede-c7f4-4b35-8f56-d72bdba1924b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ac1d7cc-ba0d-489f-a829-7623ce93956c",
                  "parent_uuid": "e5c5e2ca-8c02-4bfc-a4de-5aeacc80cb0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b22a373-9e0a-4d0d-928a-4e8873c19653",
              "parent_uuid": "cec9eede-c7f4-4b35-8f56-d72bdba1924b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5610d29a-172c-490a-85bf-4fc28c0748f1",
                  "parent_uuid": "4b22a373-9e0a-4d0d-928a-4e8873c19653",
                  "tagName": "input",
                  "properties": [
                    [
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





-- DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 
-- DELETE FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
-- DELETE FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 




-- T_ChecklistElements

;WITH CTE AS 
( 
	SELECT 
		 uuid AS ELE_UID -- uniqueidentifier
		,parent_uuid AS ELE_Parent_UID -- uniqueidentifier
		,'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

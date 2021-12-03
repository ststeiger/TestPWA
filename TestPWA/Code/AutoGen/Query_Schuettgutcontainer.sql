
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
  "uuid": "00210478-9140-4508-889d-717af7f4797a",
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
      "uuid": "be436954-7a4e-47a8-9d9d-7d27c6318664",
      "parent_uuid": "00210478-9140-4508-889d-717af7f4797a",
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
      "uuid": "79dca175-34c6-4b00-aa08-7effde0da25c",
      "parent_uuid": "00210478-9140-4508-889d-717af7f4797a",
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
      "uuid": "dd3c3325-27a0-4422-ac99-ab1a9b5a31ba",
      "parent_uuid": "00210478-9140-4508-889d-717af7f4797a",
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
      "uuid": "e48bb994-6bf2-45ba-9d17-d9d966708e43",
      "parent_uuid": "00210478-9140-4508-889d-717af7f4797a",
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
      "uuid": "64a567dc-cf5d-4ca1-8d07-fcf313cafb5b",
      "parent_uuid": "00210478-9140-4508-889d-717af7f4797a",
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
      "uuid": "71c0cfaa-67a2-4d94-b9e9-6e814ee96aa2",
      "parent_uuid": "00210478-9140-4508-889d-717af7f4797a",
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
      "uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
      "parent_uuid": "00210478-9140-4508-889d-717af7f4797a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4ca9ed17-7efe-41c9-99c6-b82f0caabef4",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "7501ba56-d77f-49d6-9bed-c0a14c790a10",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "30fd27a9-8d16-482d-aca0-0fafd666552c",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "6f2cc331-b35f-4270-b6cb-c4e4de630c25",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "1c7c4aac-26a1-4528-996e-301797b9b4f4",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "7048fc7b-d185-4df3-940c-3e89c4448a00",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "fa147674-4954-45e2-b1e2-5ee78f9fc68e",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "a13bf23c-1d45-4560-8e0a-4884cbbcf360",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "f8c978eb-631d-401c-9559-ac356fb16f9e",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "df502769-66cb-473d-8ab2-6fd5d707fd69",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
              "uuid": "33d013df-d535-43d6-a4d8-7a822b855878",
              "parent_uuid": "977543da-77b5-423f-8b8f-a228f63ecb91",
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
          "uuid": "b25a86ec-140c-4798-9528-7e99992d677b",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f0ce0ae6-e79e-4c0f-8cf2-b0a9a6f09d76",
              "parent_uuid": "b25a86ec-140c-4798-9528-7e99992d677b",
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
              "uuid": "c72e20e6-58fa-451c-9aa6-231a8284f2a7",
              "parent_uuid": "b25a86ec-140c-4798-9528-7e99992d677b",
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
              "uuid": "f4601cb7-e052-4e04-b12c-4d77893d040e",
              "parent_uuid": "b25a86ec-140c-4798-9528-7e99992d677b",
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
              "uuid": "3cfae2c9-1e0e-430f-8c1f-e28aa7e28032",
              "parent_uuid": "b25a86ec-140c-4798-9528-7e99992d677b",
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
          "uuid": "ba080d61-f45d-419d-a2a7-562a4c46139b",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da057826-8c4f-4cb7-b3d1-0e91bba4d75e",
              "parent_uuid": "ba080d61-f45d-419d-a2a7-562a4c46139b",
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
              "uuid": "c2eeadbe-5136-4d7f-adaa-05d75a2e3552",
              "parent_uuid": "ba080d61-f45d-419d-a2a7-562a4c46139b",
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
              "uuid": "e9929d8c-56b2-4b42-ae67-0121d283003f",
              "parent_uuid": "ba080d61-f45d-419d-a2a7-562a4c46139b",
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
              "uuid": "8dfcade7-50f3-4956-866f-e101a50ed550",
              "parent_uuid": "ba080d61-f45d-419d-a2a7-562a4c46139b",
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
              "uuid": "33210d15-e4e8-42b0-bb0b-8c2109f8d0df",
              "parent_uuid": "ba080d61-f45d-419d-a2a7-562a4c46139b",
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
              "uuid": "a29da43a-00df-4cb2-89db-9f8ea6eec46c",
              "parent_uuid": "ba080d61-f45d-419d-a2a7-562a4c46139b",
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
          "uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "77760272-1783-420d-b8eb-ad4557c78195",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
              "uuid": "926fcd46-76ff-4fde-8b08-5d5e595bbae5",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
              "uuid": "a6068d24-b09a-40e5-85dd-2736624c98a5",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
              "uuid": "7073b3e4-5512-486b-b971-c351c32edec9",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
              "uuid": "30042797-35ca-4268-9a86-68eb9d0ef852",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
              "uuid": "4f374ac6-b4ea-45b2-8781-b9729bbbabd5",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
              "uuid": "3f2cb1fa-0c36-41d0-8d16-70549d86f01c",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
              "uuid": "d0e4fb8b-4544-465a-8cf6-1b8759bd3c82",
              "parent_uuid": "8277261e-3697-44f6-95ad-cc93a6689940",
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
          "uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8d414a3-37a7-4a9e-9368-326fc27b4f6b",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
              "tagName": "td",
              "properties": [
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
              "uuid": "577e774b-0d7e-4503-a66e-a76759215dab",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
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
              "uuid": "82131b36-1396-40d4-956f-655378dcfa4f",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
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
                  "uuid": "8e46d527-b9c6-4fe5-8b62-9a0cda46baef",
                  "parent_uuid": "82131b36-1396-40d4-956f-655378dcfa4f",
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
              "uuid": "954b6d59-fcc1-4008-9854-3a57cf0cc3c2",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
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
              "uuid": "b0de4211-61bb-4c22-a440-b06406c3866b",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
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
              "uuid": "f6626cc2-5633-4d71-8291-532df8745d16",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
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
              "uuid": "0855b1e1-ef5a-4f50-bf02-510e4f598ef9",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
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
              "uuid": "fa78359c-d9e3-42a0-a55b-d71fe01408eb",
              "parent_uuid": "f594c484-3dce-4ccc-af42-102b2dec9f38",
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
          "uuid": "997c71b6-83a5-4111-a299-1f7ad861f8db",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34898051-91a7-4962-a998-b6f1a5037aa6",
              "parent_uuid": "997c71b6-83a5-4111-a299-1f7ad861f8db",
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
              "uuid": "d9a604f0-4aae-4bc1-bb93-66bbb17ee4a0",
              "parent_uuid": "997c71b6-83a5-4111-a299-1f7ad861f8db",
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
              "uuid": "be1994a5-f2fb-4077-9955-9ae2d526e26b",
              "parent_uuid": "997c71b6-83a5-4111-a299-1f7ad861f8db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8ab00c3-9f23-4fa6-b216-dd3b3540eee3",
                  "parent_uuid": "be1994a5-f2fb-4077-9955-9ae2d526e26b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37235ded-a335-4385-aa19-a7269a3de060",
              "parent_uuid": "997c71b6-83a5-4111-a299-1f7ad861f8db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b74666a-c095-4815-b91f-e46fccfe71a2",
                  "parent_uuid": "37235ded-a335-4385-aa19-a7269a3de060",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee52f400-f6a8-4c04-9bb1-3b114cefe5d7",
              "parent_uuid": "997c71b6-83a5-4111-a299-1f7ad861f8db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7915098d-6eec-4502-aac9-c5f456395fdf",
                  "parent_uuid": "ee52f400-f6a8-4c04-9bb1-3b114cefe5d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49c8f272-ff9b-41a9-9e6c-3fc97be164cb",
              "parent_uuid": "997c71b6-83a5-4111-a299-1f7ad861f8db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "975bdc8c-2158-41ef-a641-40a0e930bfb2",
                  "parent_uuid": "49c8f272-ff9b-41a9-9e6c-3fc97be164cb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5d74219c-93f2-459e-9bed-89608899d29e",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8315a244-2141-4f3a-8347-ce5af90e9df7",
              "parent_uuid": "5d74219c-93f2-459e-9bed-89608899d29e",
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
          "uuid": "567e3f86-99cf-44ff-bb73-2b368041339c",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2e801eb7-deb2-46ef-99ef-141aa31f4355",
              "parent_uuid": "567e3f86-99cf-44ff-bb73-2b368041339c",
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
          "uuid": "cf99aebf-dd47-464f-b004-952b514f0326",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3b8a6ee-45ab-4f1a-937b-f40aa0898d78",
              "parent_uuid": "cf99aebf-dd47-464f-b004-952b514f0326",
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
              "uuid": "84a8092a-2b41-411d-82d1-2b55fa8544a5",
              "parent_uuid": "cf99aebf-dd47-464f-b004-952b514f0326",
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
              "uuid": "e157de19-fdfe-4531-9351-a13be50f96d9",
              "parent_uuid": "cf99aebf-dd47-464f-b004-952b514f0326",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ee2e8b4-7232-4727-93b2-4100f12cece4",
                  "parent_uuid": "e157de19-fdfe-4531-9351-a13be50f96d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05f21f78-7a8c-444e-a3b6-cddb1bc1fa60",
              "parent_uuid": "cf99aebf-dd47-464f-b004-952b514f0326",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "239cd0ba-0a3a-4aeb-b59a-84a8a4708e82",
                  "parent_uuid": "05f21f78-7a8c-444e-a3b6-cddb1bc1fa60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e58caefe-273c-4747-8ada-07b4dd7fc86f",
              "parent_uuid": "cf99aebf-dd47-464f-b004-952b514f0326",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "609b6e56-4134-4b6d-8030-28555bfd6a8a",
                  "parent_uuid": "e58caefe-273c-4747-8ada-07b4dd7fc86f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b2d64d8-5d14-49b7-ac7f-b209ab9c5628",
              "parent_uuid": "cf99aebf-dd47-464f-b004-952b514f0326",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23dc26b3-e36c-4e92-9d34-248fddf0a4ea",
                  "parent_uuid": "3b2d64d8-5d14-49b7-ac7f-b209ab9c5628",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e626ea5-3378-4065-b71b-8d228d7ccea2",
          "parent_uuid": "314a3266-f1d9-4656-8824-d5807bf28907",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "903b5092-dd75-48c2-a858-17c3304bff7b",
              "parent_uuid": "7e626ea5-3378-4065-b71b-8d228d7ccea2",
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
              "uuid": "1ed1c429-d9ea-4935-85a1-f9d86ec94929",
              "parent_uuid": "7e626ea5-3378-4065-b71b-8d228d7ccea2",
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
              "uuid": "1cf51ef5-1284-4996-8bc0-1ce37e5892ea",
              "parent_uuid": "7e626ea5-3378-4065-b71b-8d228d7ccea2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40761194-52c0-4d00-b3a8-66f302c9cfdb",
                  "parent_uuid": "1cf51ef5-1284-4996-8bc0-1ce37e5892ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82847be5-02e2-4d73-827b-4f701248aabc",
              "parent_uuid": "7e626ea5-3378-4065-b71b-8d228d7ccea2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b37a2326-95f0-4cbc-8790-b094a5145452",
                  "parent_uuid": "82847be5-02e2-4d73-827b-4f701248aabc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37976911-5920-408d-bb5f-47948f562b44",
              "parent_uuid": "7e626ea5-3378-4065-b71b-8d228d7ccea2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63bf54b8-fa03-4b42-9c81-fedd2d024ae1",
                  "parent_uuid": "37976911-5920-408d-bb5f-47948f562b44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f535463f-bff1-49b3-811b-5156dd1bad53",
              "parent_uuid": "7e626ea5-3378-4065-b71b-8d228d7ccea2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c55f262-0122-4bf7-b93c-9b246849db6a",
                  "parent_uuid": "f535463f-bff1-49b3-811b-5156dd1bad53",
                  "tagName": "input",
                  "properties": [
                    [
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

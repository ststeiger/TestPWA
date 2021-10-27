
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
  "uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
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
      "uuid": "af92bd7d-1521-4590-8dd5-5ff490692ba9",
      "parent_uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "3"
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
      "uuid": "d15e1fff-486c-411e-b30c-014033fced8a",
      "parent_uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
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
      "uuid": "707fb20d-af66-498f-b9d2-62cdf425f9fc",
      "parent_uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
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
      "uuid": "c38af95d-5dd0-479c-89d2-b530338817cb",
      "parent_uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
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
      "uuid": "b7b79e98-4ca1-4af1-8a80-4e0150432e03",
      "parent_uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
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
      "uuid": "67c55d47-636e-47e8-af6e-a76e3b5f7b43",
      "parent_uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
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
      "uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
      "parent_uuid": "cb04e3a8-8694-4531-8784-8117bcea0d1a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b37ac576-e9dc-4439-bcd8-5aa3ab84242f",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "a980eb41-5e17-4ab4-ad4f-9ca5ee0f8c86",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "8f04229d-60b6-42de-84cd-b34f7b6aecaf",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "d7bf5dcf-51f4-433d-ab85-94aafd5c06be",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "321d2d0a-9603-4f1f-a566-36630ae133b1",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "257ef391-1c02-4e45-948f-06d38b6aacf9",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "303ba37c-4939-4b8e-b5f1-4619e8fdfa47",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "54f633ef-8347-4158-a973-48a6695fd748",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "93b505fb-9b09-4ec2-862c-d29cb9ce803c",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "186df231-d34b-46ff-ade1-18439f431f8a",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
              "uuid": "0f71a657-04c9-4ffd-90a1-f91e59e7da03",
              "parent_uuid": "275e11c8-4732-4e9e-8a10-0cb80d1fb7a2",
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
          "uuid": "e9e7d557-d48d-4c08-9267-bae498444ca3",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5bbda18c-0c99-4d89-b965-ccfc4b3c6208",
              "parent_uuid": "e9e7d557-d48d-4c08-9267-bae498444ca3",
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
              "uuid": "048b51ae-e2da-49e7-a7e9-611d7eeea89a",
              "parent_uuid": "e9e7d557-d48d-4c08-9267-bae498444ca3",
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
              "uuid": "9c997c1e-9ab6-435b-9caf-4dd30cf7c97f",
              "parent_uuid": "e9e7d557-d48d-4c08-9267-bae498444ca3",
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
              "uuid": "0a065097-ed18-48f0-b039-824a255af4f2",
              "parent_uuid": "e9e7d557-d48d-4c08-9267-bae498444ca3",
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
          "uuid": "f9613383-7d66-46e2-ab5a-a2957576485d",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6dcee723-22cb-4c24-a917-fbd49ebf5bca",
              "parent_uuid": "f9613383-7d66-46e2-ab5a-a2957576485d",
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
              "uuid": "f62048f1-134f-42fa-9b53-e0231a13bbb4",
              "parent_uuid": "f9613383-7d66-46e2-ab5a-a2957576485d",
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
              "uuid": "8c860a9e-8d14-4ce0-a323-3eead23c2331",
              "parent_uuid": "f9613383-7d66-46e2-ab5a-a2957576485d",
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
              "uuid": "0dfffa8b-48cf-433d-a6c8-a483021f5853",
              "parent_uuid": "f9613383-7d66-46e2-ab5a-a2957576485d",
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
              "uuid": "c7a622ec-266c-4080-b045-bdeef3fc7582",
              "parent_uuid": "f9613383-7d66-46e2-ab5a-a2957576485d",
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
              "uuid": "e4d0952d-a417-4c91-a4c7-0443051c2dbb",
              "parent_uuid": "f9613383-7d66-46e2-ab5a-a2957576485d",
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
          "uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "179e04fd-7483-4b53-b2e8-e68b60315125",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
              "uuid": "0fa248ce-9541-4925-9d35-9e582d5dc83e",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
              "uuid": "8b2b5774-b4aa-4f10-93ce-6fbaa44f7a7c",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
              "uuid": "b2d8925e-2bb3-47dd-a43e-8d7aa74b57d7",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
              "uuid": "778ba806-81a8-4aff-aef0-2d5381491795",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
              "uuid": "326b8604-5394-4914-9632-b70050714aa5",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
              "uuid": "23bae0b5-bd26-47f5-a564-1c89e58a62ad",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
              "uuid": "d6d9bdc4-8356-4d30-825d-44185e0140ad",
              "parent_uuid": "dc32806e-f991-4018-a8ae-76ce07288d9c",
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
          "uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8adc7f78-8a80-42f4-869c-51a9666e8679",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
              "tagName": "td",
              "properties": [
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
              "uuid": "2f57c09b-a9b7-4037-9478-af77c2bfe4d2",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
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
              "uuid": "4b4c30c1-d9ce-430d-b1f4-82e76ff99da9",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
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
                  "uuid": "7f1fbd62-b949-482d-b5a0-c31ac519c96b",
                  "parent_uuid": "4b4c30c1-d9ce-430d-b1f4-82e76ff99da9",
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
              "uuid": "379098c9-6de8-4131-b982-db7421376428",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
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
              "uuid": "30cd225e-b19b-4e50-903d-36e8cb96f530",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
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
              "uuid": "fdfcc5f2-20e7-449e-94b1-8ceaa7ddf9c4",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
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
              "uuid": "6369ea31-3791-4801-86b8-c8648d6cbef9",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
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
              "uuid": "b2f1bdf4-3a9b-47c7-912a-6f8900c8e4d9",
              "parent_uuid": "255c8e25-4a36-4236-a807-ba00ef2b4053",
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
          "uuid": "b8758723-6798-4189-a07a-55a925594a92",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a7a82703-99c5-4aa0-89f5-6b0e51cd6965",
              "parent_uuid": "b8758723-6798-4189-a07a-55a925594a92",
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
              "uuid": "5116ffd6-cb9c-4021-8671-791be3717970",
              "parent_uuid": "b8758723-6798-4189-a07a-55a925594a92",
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
              "uuid": "a12c4271-68fd-47a3-b7e5-b1711c90b5ab",
              "parent_uuid": "b8758723-6798-4189-a07a-55a925594a92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4aa240ee-0a8b-4662-b7ee-4303dc1f57c4",
                  "parent_uuid": "a12c4271-68fd-47a3-b7e5-b1711c90b5ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fb5d7e1-b8fa-4a69-8012-de0cbd9af076",
              "parent_uuid": "b8758723-6798-4189-a07a-55a925594a92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57383168-8557-468d-bde2-6d0054363c96",
                  "parent_uuid": "0fb5d7e1-b8fa-4a69-8012-de0cbd9af076",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ac5cd3d-bb6f-4c56-98cc-de903f65e7bc",
              "parent_uuid": "b8758723-6798-4189-a07a-55a925594a92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c8d3d85-9775-4fb7-9617-c3adc44fb063",
                  "parent_uuid": "6ac5cd3d-bb6f-4c56-98cc-de903f65e7bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc317d88-244e-41a6-bf06-039c685e64cc",
              "parent_uuid": "b8758723-6798-4189-a07a-55a925594a92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67a48d5d-9fed-4add-b133-15547b3f9d1b",
                  "parent_uuid": "bc317d88-244e-41a6-bf06-039c685e64cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c29f7836-8230-4604-a43e-0b3127b93257",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6447373-6cab-431c-948c-f9000ca69b4a",
              "parent_uuid": "c29f7836-8230-4604-a43e-0b3127b93257",
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
          "uuid": "bf71f40a-da02-4bf5-ac9a-717e75a937de",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ca93c4b6-12f6-4d94-9f49-dd3074a43981",
              "parent_uuid": "bf71f40a-da02-4bf5-ac9a-717e75a937de",
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
          "uuid": "7a68f982-c70b-4949-b6cd-84be3a23e40b",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f875a01-8635-4497-abef-635bad0d9bed",
              "parent_uuid": "7a68f982-c70b-4949-b6cd-84be3a23e40b",
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
              "uuid": "a604a793-7932-4b81-8246-00c9c393ffbe",
              "parent_uuid": "7a68f982-c70b-4949-b6cd-84be3a23e40b",
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
              "uuid": "4452f249-2f41-46f8-b6b8-13a43ca6c88b",
              "parent_uuid": "7a68f982-c70b-4949-b6cd-84be3a23e40b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a59acd2c-9266-4d75-b930-88f7c5743612",
                  "parent_uuid": "4452f249-2f41-46f8-b6b8-13a43ca6c88b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c34e4c67-98fe-4812-b5a9-ebdaac8f15a6",
              "parent_uuid": "7a68f982-c70b-4949-b6cd-84be3a23e40b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b71c8fb8-a9be-4b9a-9ab3-2b14a2e39b3b",
                  "parent_uuid": "c34e4c67-98fe-4812-b5a9-ebdaac8f15a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d025176c-31ae-47b4-9475-93160dd4662e",
              "parent_uuid": "7a68f982-c70b-4949-b6cd-84be3a23e40b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c62c3061-7d1b-4660-868d-538fb001557d",
                  "parent_uuid": "d025176c-31ae-47b4-9475-93160dd4662e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44bbf3dd-eb51-4aa0-912a-51c7c004698f",
              "parent_uuid": "7a68f982-c70b-4949-b6cd-84be3a23e40b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b860e110-c507-4f52-9707-1c84a0890e49",
                  "parent_uuid": "44bbf3dd-eb51-4aa0-912a-51c7c004698f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e5e6483-6061-49eb-a1ab-e7f72bb788e3",
          "parent_uuid": "084b53cd-d594-4455-b795-b48845f2c87c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dce8dabc-38eb-4c6e-8738-91366e93fd5a",
              "parent_uuid": "8e5e6483-6061-49eb-a1ab-e7f72bb788e3",
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
              "uuid": "06c15e9b-8175-4ce5-ad3a-04e56d16e3c4",
              "parent_uuid": "8e5e6483-6061-49eb-a1ab-e7f72bb788e3",
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
              "uuid": "59354484-27f5-417a-bb88-17781909b666",
              "parent_uuid": "8e5e6483-6061-49eb-a1ab-e7f72bb788e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1642aa0c-9e61-483b-9896-e3c62399374a",
                  "parent_uuid": "59354484-27f5-417a-bb88-17781909b666",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d42024e-f86b-41d0-8b6f-6515007bbc59",
              "parent_uuid": "8e5e6483-6061-49eb-a1ab-e7f72bb788e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb986f4d-8598-463e-8176-dab6dbbb97cc",
                  "parent_uuid": "7d42024e-f86b-41d0-8b6f-6515007bbc59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd8b5fbe-b3b5-456c-8d53-152c555b407d",
              "parent_uuid": "8e5e6483-6061-49eb-a1ab-e7f72bb788e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cfb1cd5-1f4b-4dde-a793-b97f7ed9f869",
                  "parent_uuid": "cd8b5fbe-b3b5-456c-8d53-152c555b407d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0457bd9f-b526-4d6a-bdd3-0492aaafea88",
              "parent_uuid": "8e5e6483-6061-49eb-a1ab-e7f72bb788e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71714194-28dc-4081-98d4-12561836fb45",
                  "parent_uuid": "0457bd9f-b526-4d6a-bdd3-0492aaafea88",
                  "tagName": "input",
                  "properties": [
                    [
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

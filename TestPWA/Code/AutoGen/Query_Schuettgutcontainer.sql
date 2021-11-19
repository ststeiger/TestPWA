
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
  "uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
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
      "uuid": "27d667dc-20ac-4c94-832d-a47c4fd99e2e",
      "parent_uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
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
      "uuid": "01ed294f-8d67-43a1-85ae-da9a1428af4c",
      "parent_uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
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
      "uuid": "d1af9f53-4022-4fa2-9184-9869a87808ee",
      "parent_uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
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
      "uuid": "9896feef-6819-4f2a-be01-d09f6a93588f",
      "parent_uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
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
      "uuid": "e44fc8a6-e138-4f53-aa2b-deb48f543879",
      "parent_uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
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
      "uuid": "b9185bd9-423a-4701-831d-74a08a7448d3",
      "parent_uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
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
      "uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
      "parent_uuid": "6ab1e288-6f9e-4cda-ae0a-6a09894fb48f",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "24ffe855-7556-477c-b40f-24d682bf50e8",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "f7c84ed4-4ba0-4925-a0e1-41939db72878",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "46b20b2d-2a47-4bee-b81e-01def9fd81a2",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "528a54ab-f324-4683-8587-4c3f9c107d5b",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "39f867f2-4e43-4889-a162-bf0962810848",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "a72aff45-040e-4eaf-b14d-041d64cdfacd",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "0a01b4c2-3127-4b78-bf5c-89bee4f27066",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "155626f8-6e34-4d93-8453-0f1d41131ae0",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "73a4c057-6e20-4533-a8e3-4fee01241735",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "ccb19d1b-cd18-46c7-a0c5-5908ccc61eda",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
              "uuid": "414da934-f4c2-4418-af62-1adb5b5e71ea",
              "parent_uuid": "7584efd6-c3d7-482e-9998-53e73e55c4a3",
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
          "uuid": "7531d38f-7717-4700-830d-78305a26554c",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e7420621-f49b-4443-b88a-82a9ec833113",
              "parent_uuid": "7531d38f-7717-4700-830d-78305a26554c",
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
              "uuid": "971c80c6-988b-4f07-a6fb-e9e1e528e3d3",
              "parent_uuid": "7531d38f-7717-4700-830d-78305a26554c",
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
              "uuid": "55a74945-b88a-4f42-8ec2-262b379e3c2d",
              "parent_uuid": "7531d38f-7717-4700-830d-78305a26554c",
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
              "uuid": "92ff564e-a8a1-47f0-9a41-e2b202dcd0d7",
              "parent_uuid": "7531d38f-7717-4700-830d-78305a26554c",
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
          "uuid": "2e396889-3108-438a-bb0b-53134aee5285",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "063eec23-3a36-46ba-98d6-3e7610906b30",
              "parent_uuid": "2e396889-3108-438a-bb0b-53134aee5285",
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
              "uuid": "d0a08639-a310-42b9-bab5-902175e5d6f4",
              "parent_uuid": "2e396889-3108-438a-bb0b-53134aee5285",
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
              "uuid": "256734ac-fdca-4cdc-8d27-3417062087a8",
              "parent_uuid": "2e396889-3108-438a-bb0b-53134aee5285",
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
              "uuid": "bb40128f-bf66-4380-90fb-aabff41b4f64",
              "parent_uuid": "2e396889-3108-438a-bb0b-53134aee5285",
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
              "uuid": "ddb55d43-c044-47a6-ae18-0ca0fd08ee8c",
              "parent_uuid": "2e396889-3108-438a-bb0b-53134aee5285",
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
              "uuid": "8bb40b9a-3f2b-453e-9a7e-5cc3db27082e",
              "parent_uuid": "2e396889-3108-438a-bb0b-53134aee5285",
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
          "uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fd6e0245-87ab-4f15-8baa-aeebf2650d1c",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
              "uuid": "08ef0c2c-c11b-4325-b553-41a2dc634a13",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
              "uuid": "23100f15-e653-4d52-a3c1-917bbd1ce3b3",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
              "uuid": "14c2ef04-88cc-4404-979f-f49cd8cb8b03",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
              "uuid": "757c1762-71fd-4c32-b3c9-1a006970a9ae",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
              "uuid": "5fcab211-4ffe-47a6-9210-8e1f75dbda1e",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
              "uuid": "4e5818a8-67da-49b6-a3d5-81721b72c860",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
              "uuid": "f7dad6b2-ebe6-4506-81c5-82152aaab07a",
              "parent_uuid": "8ab7e5ae-8735-48fb-88b9-1eb716524add",
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
          "uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e6e97f1-19e6-42a6-ae69-bded7ca68059",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
              "tagName": "td",
              "properties": [
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
              "uuid": "5fceb1bb-9cd0-4ca8-a10a-edc1dc9acf52",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
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
              "uuid": "e35c019a-6e5a-4ff7-9268-a38216ee23f1",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
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
                  "uuid": "8df2dce1-aeb9-4219-bdda-bd29d319b8a5",
                  "parent_uuid": "e35c019a-6e5a-4ff7-9268-a38216ee23f1",
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
              "uuid": "a3fbd808-1bc2-42d1-a74e-d0cf28a75ae6",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
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
              "uuid": "9d6c4820-340d-4638-9e2a-703d62babda6",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
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
              "uuid": "36573852-0683-46a5-b5e0-f8dc5e515134",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
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
              "uuid": "f6d5ef48-df0b-4d82-b73a-b66faad11f63",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
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
              "uuid": "8d2d992b-d3fc-4a8e-9335-4da64d95e8c7",
              "parent_uuid": "2340e8bb-c2cb-4633-bdd4-4a2cd9101059",
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
          "uuid": "9e172649-98ca-444a-a706-03e333758445",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ef73888-b53c-41bf-9152-7d3b53339c33",
              "parent_uuid": "9e172649-98ca-444a-a706-03e333758445",
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
              "uuid": "a9091bce-5049-48c6-8151-13c94d6b78d7",
              "parent_uuid": "9e172649-98ca-444a-a706-03e333758445",
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
              "uuid": "df812088-897f-4713-a4ca-099bce8462fc",
              "parent_uuid": "9e172649-98ca-444a-a706-03e333758445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f33cf4ba-98df-4b71-b7ce-6e22a9344fbf",
                  "parent_uuid": "df812088-897f-4713-a4ca-099bce8462fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6910918c-1b7a-4792-9bde-013c32a56d27",
              "parent_uuid": "9e172649-98ca-444a-a706-03e333758445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5071dba-409d-4197-ab7e-f73caf06900d",
                  "parent_uuid": "6910918c-1b7a-4792-9bde-013c32a56d27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f41d89d5-8653-4e66-93ff-2fa61f03026f",
              "parent_uuid": "9e172649-98ca-444a-a706-03e333758445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70557042-71b3-4922-905c-e81e6666394f",
                  "parent_uuid": "f41d89d5-8653-4e66-93ff-2fa61f03026f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc0b1c06-0160-4193-9d4d-056c340a5063",
              "parent_uuid": "9e172649-98ca-444a-a706-03e333758445",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9224f49-57a3-4c47-a8b5-e3daa315cab1",
                  "parent_uuid": "bc0b1c06-0160-4193-9d4d-056c340a5063",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f07e4544-11d0-4705-86b7-f0966a55a10f",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0feaff0b-b346-4848-a1af-0e7e688026d8",
              "parent_uuid": "f07e4544-11d0-4705-86b7-f0966a55a10f",
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
          "uuid": "f65e5eba-2360-43f4-a7db-a24d99e34390",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "00cac922-9003-44d7-9e56-c47b21b6e1c4",
              "parent_uuid": "f65e5eba-2360-43f4-a7db-a24d99e34390",
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
          "uuid": "2c2d8ceb-b2a1-458f-aa9c-89bc2b097957",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c909d73-86ee-4074-8a13-0f5be34c86a4",
              "parent_uuid": "2c2d8ceb-b2a1-458f-aa9c-89bc2b097957",
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
              "uuid": "2e97e275-a825-4180-88f7-3a31eddabbdd",
              "parent_uuid": "2c2d8ceb-b2a1-458f-aa9c-89bc2b097957",
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
              "uuid": "89533634-fd9f-4126-a7ac-2e424f85580e",
              "parent_uuid": "2c2d8ceb-b2a1-458f-aa9c-89bc2b097957",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce802f3f-743f-4f31-bd30-91b9ced462d4",
                  "parent_uuid": "89533634-fd9f-4126-a7ac-2e424f85580e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d51e9932-a42d-499f-bc62-9d9bfaba0bc5",
              "parent_uuid": "2c2d8ceb-b2a1-458f-aa9c-89bc2b097957",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16e99b30-6d9e-4ccf-a87c-f4506dd30387",
                  "parent_uuid": "d51e9932-a42d-499f-bc62-9d9bfaba0bc5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09b10fbb-3243-40d3-a913-ec232edcdd72",
              "parent_uuid": "2c2d8ceb-b2a1-458f-aa9c-89bc2b097957",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a756ab63-62e0-4217-861b-c10da565abc4",
                  "parent_uuid": "09b10fbb-3243-40d3-a913-ec232edcdd72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5f77f5b-0d8e-45f6-8081-97b24fd6dcdd",
              "parent_uuid": "2c2d8ceb-b2a1-458f-aa9c-89bc2b097957",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "669e9344-2ee2-47af-96a7-55164d8d2dd5",
                  "parent_uuid": "e5f77f5b-0d8e-45f6-8081-97b24fd6dcdd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f5cf838-198f-4aa7-b7ce-2516477d263d",
          "parent_uuid": "5f6067a5-ed67-4cba-ad7f-fdba2ffa76c2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a047fd2-0a61-4661-b629-0911b78c754b",
              "parent_uuid": "0f5cf838-198f-4aa7-b7ce-2516477d263d",
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
              "uuid": "c52d37cc-44d6-4184-bfb1-ebd5d0e1d674",
              "parent_uuid": "0f5cf838-198f-4aa7-b7ce-2516477d263d",
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
              "uuid": "c88939ac-506e-45f8-8d22-4512e112b673",
              "parent_uuid": "0f5cf838-198f-4aa7-b7ce-2516477d263d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df5a66be-a00c-4fe0-a750-935fe8cbd872",
                  "parent_uuid": "c88939ac-506e-45f8-8d22-4512e112b673",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17cfc77e-812e-4b7b-b819-a31fc26ad009",
              "parent_uuid": "0f5cf838-198f-4aa7-b7ce-2516477d263d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0102a492-7759-4d1d-89f5-dae0d4bfe6ca",
                  "parent_uuid": "17cfc77e-812e-4b7b-b819-a31fc26ad009",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26bc126f-9626-4c81-b689-2631db7258f3",
              "parent_uuid": "0f5cf838-198f-4aa7-b7ce-2516477d263d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3aed8d4-d97f-4f8c-828c-550f580fc432",
                  "parent_uuid": "26bc126f-9626-4c81-b689-2631db7258f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "572ae113-9a06-450b-934e-a8a1ad2557e8",
              "parent_uuid": "0f5cf838-198f-4aa7-b7ce-2516477d263d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22952d43-7454-4b5b-bc06-5aa00130767f",
                  "parent_uuid": "572ae113-9a06-450b-934e-a8a1ad2557e8",
                  "tagName": "input",
                  "properties": [
                    [
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

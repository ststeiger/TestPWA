
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
  "uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
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
      "uuid": "b5b114f2-0986-4eb8-a297-57bd1645f9d3",
      "parent_uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
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
      "uuid": "b874c99d-41b4-43e6-9a3c-27aaf3357008",
      "parent_uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
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
      "uuid": "86659193-1547-4551-aff5-6b81a9675e87",
      "parent_uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
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
      "uuid": "84daf8a2-4520-4df2-867b-7b316e19b8ed",
      "parent_uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
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
      "uuid": "7a5598eb-7271-4063-b320-2e24a9a9b281",
      "parent_uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
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
      "uuid": "28f7970b-dd05-494d-8e3c-085a1fd689e6",
      "parent_uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
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
      "uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
      "parent_uuid": "284773f4-1f97-456d-b4a0-3fc6400555db",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7dfc4502-6031-4372-96c3-620509585a05",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "303d9666-5113-499c-b1df-7f524046ca63",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "5ac1c77c-aaec-42e3-b75f-aae5dde12f94",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "ed7f635c-5084-402c-ada3-cc199c8be676",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "90e35b66-63e0-4467-a38a-01d5c10c057a",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "9a7a4527-5215-41b8-8823-df090c275a75",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "7ee5c796-51f2-4ef7-88de-111f3daaba6e",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "4f4bc434-6feb-4b37-8a24-a48f5f56d69f",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "f786b7fb-bba6-4344-be01-d5950d6a4046",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "7ad8c199-a190-46a2-8a3c-85c992fcc46f",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "ce69e128-8dcb-4ffd-ae29-6e99a4e41843",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
              "uuid": "0712566e-086d-4496-b1ec-d72864a46904",
              "parent_uuid": "7dfc4502-6031-4372-96c3-620509585a05",
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
          "uuid": "da1a5fe1-2e77-43a6-a274-77a5cd098188",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1b551b76-dde5-4b88-9020-a2012f27fae9",
              "parent_uuid": "da1a5fe1-2e77-43a6-a274-77a5cd098188",
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
              "uuid": "60afe147-105c-4f76-94a1-a1fb7251c270",
              "parent_uuid": "da1a5fe1-2e77-43a6-a274-77a5cd098188",
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
              "uuid": "c2623702-84da-4a61-8527-f9e716bb924b",
              "parent_uuid": "da1a5fe1-2e77-43a6-a274-77a5cd098188",
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
              "uuid": "c2d13749-13ad-4ef0-bf07-95454a22afc4",
              "parent_uuid": "da1a5fe1-2e77-43a6-a274-77a5cd098188",
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
          "uuid": "930a524c-447e-4633-90f7-70dcd313dfbf",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78b56dbb-bc5c-46e4-b602-06c16e5d487a",
              "parent_uuid": "930a524c-447e-4633-90f7-70dcd313dfbf",
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
              "uuid": "e6db586d-f5e2-4138-a4b1-8d46e4b6a91a",
              "parent_uuid": "930a524c-447e-4633-90f7-70dcd313dfbf",
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
              "uuid": "9a26ef73-f7fb-4b21-b4d4-9e7373cdab54",
              "parent_uuid": "930a524c-447e-4633-90f7-70dcd313dfbf",
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
              "uuid": "add34057-58dc-4c13-ad53-e6e6ef72a570",
              "parent_uuid": "930a524c-447e-4633-90f7-70dcd313dfbf",
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
              "uuid": "12e41ea1-142e-4640-85b0-ceafd1b791b9",
              "parent_uuid": "930a524c-447e-4633-90f7-70dcd313dfbf",
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
              "uuid": "9f561f9d-cc13-4c5f-a687-9120e3f5df6b",
              "parent_uuid": "930a524c-447e-4633-90f7-70dcd313dfbf",
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
          "uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "80b86f85-1110-4a64-a055-0074beae1f3f",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
              "uuid": "e00aa119-e7ec-4330-ad00-69576eb48140",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
              "uuid": "9cf6e4f1-e5ba-4a41-be7a-d801d0f4bbdf",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
              "uuid": "a33f78c3-b02c-4c2b-95d9-17202c0bf271",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
              "uuid": "360e517e-1883-4ff1-b59a-4ba5393d5453",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
              "uuid": "4fb11f0f-2fbb-4941-be59-27e72baf1b90",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
              "uuid": "6887938f-3bc0-4d77-ad2d-1e8b49532e04",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
              "uuid": "f52ee5a3-5a93-46da-83cc-75833901973e",
              "parent_uuid": "774336e7-9905-4689-bc1a-a6034021b8cc",
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
          "uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22047408-fd20-4a5d-b09d-82d629404fe4",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
              "tagName": "td",
              "properties": [
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
              "uuid": "ffddce09-9e92-4fab-97f1-4ef95e7bbcc2",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
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
              "uuid": "e603d4f5-91c4-46c6-aa68-3fa3ceae9a71",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
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
                  "uuid": "4cf77af8-2e8d-400a-a251-77b3513f9d44",
                  "parent_uuid": "e603d4f5-91c4-46c6-aa68-3fa3ceae9a71",
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
              "uuid": "cefb6690-0a51-465e-9822-1f6c6c8204d3",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
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
              "uuid": "e7ee4a63-78fc-49a9-9632-fe6f314f8e11",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
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
              "uuid": "8279ae00-f636-4179-b6da-88693d3e6d28",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
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
              "uuid": "0f08c8cb-c4f8-4cb0-bd5d-d1016459a34a",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
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
              "uuid": "56213a34-9f70-4170-b2d7-1042e8370fb6",
              "parent_uuid": "26096f55-9b12-42ab-b897-1af7210eae1b",
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
          "uuid": "9beaccfa-0fc3-472a-9c94-c688a9ff3823",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3f310e5-2fcd-4d48-8ca9-55152dea81db",
              "parent_uuid": "9beaccfa-0fc3-472a-9c94-c688a9ff3823",
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
              "uuid": "c384405a-c1b0-49ba-8b91-1e390f67f996",
              "parent_uuid": "9beaccfa-0fc3-472a-9c94-c688a9ff3823",
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
              "uuid": "71bcfb20-bd7f-46fa-bfe1-ad42a25019ce",
              "parent_uuid": "9beaccfa-0fc3-472a-9c94-c688a9ff3823",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5f2bf44-6d93-40dc-98ed-d1d890f1eaf6",
                  "parent_uuid": "71bcfb20-bd7f-46fa-bfe1-ad42a25019ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f9024a2-8143-4a23-9fa4-6cfb03dd332a",
              "parent_uuid": "9beaccfa-0fc3-472a-9c94-c688a9ff3823",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f3cccf9-8b4f-4faf-9052-bb333a6014f2",
                  "parent_uuid": "3f9024a2-8143-4a23-9fa4-6cfb03dd332a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6f01e6d-a87f-4403-a4c3-d73f5f4e8598",
              "parent_uuid": "9beaccfa-0fc3-472a-9c94-c688a9ff3823",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bdb05847-9788-42fd-834b-0c78c09f14b2",
                  "parent_uuid": "e6f01e6d-a87f-4403-a4c3-d73f5f4e8598",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d9ecc64-92e4-4118-8bf7-5ef99e4ce673",
              "parent_uuid": "9beaccfa-0fc3-472a-9c94-c688a9ff3823",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea2f65b1-7c6d-48af-b631-a67149d73cdd",
                  "parent_uuid": "4d9ecc64-92e4-4118-8bf7-5ef99e4ce673",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e97e751f-aec6-4017-a4b0-fa0c1690ead9",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eeffec4a-5808-4fc9-95e2-e2e6145f17ff",
              "parent_uuid": "e97e751f-aec6-4017-a4b0-fa0c1690ead9",
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
          "uuid": "71753aa2-2ac3-4f23-9639-842ff0ce28f9",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "378cd704-9318-4d72-8b0d-6ff2d521c153",
              "parent_uuid": "71753aa2-2ac3-4f23-9639-842ff0ce28f9",
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
          "uuid": "38dece80-8d01-4336-89b6-842394c0e780",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a496a11-2af5-4d20-9717-15f648413548",
              "parent_uuid": "38dece80-8d01-4336-89b6-842394c0e780",
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
              "uuid": "ae78742e-b5d7-4a57-a431-4f405b982060",
              "parent_uuid": "38dece80-8d01-4336-89b6-842394c0e780",
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
              "uuid": "773c9d07-02e4-4731-9b14-a2a3af023b0f",
              "parent_uuid": "38dece80-8d01-4336-89b6-842394c0e780",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a6dc397-bb4c-4de6-bea7-ea5be93107e0",
                  "parent_uuid": "773c9d07-02e4-4731-9b14-a2a3af023b0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61252e05-5fcc-4395-9ea4-180d9cf4bd7d",
              "parent_uuid": "38dece80-8d01-4336-89b6-842394c0e780",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d9c1c57-bdc8-4f7c-a59e-9b06deffea7e",
                  "parent_uuid": "61252e05-5fcc-4395-9ea4-180d9cf4bd7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9937c938-58b6-4660-85e8-bbe30c2e3d83",
              "parent_uuid": "38dece80-8d01-4336-89b6-842394c0e780",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98600a2b-1aef-4589-b305-0e401452fc37",
                  "parent_uuid": "9937c938-58b6-4660-85e8-bbe30c2e3d83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "413861f3-e7e5-4e73-9f2c-7c7c2aa757eb",
              "parent_uuid": "38dece80-8d01-4336-89b6-842394c0e780",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e7672d0-1187-451f-8c5e-83503a22c802",
                  "parent_uuid": "413861f3-e7e5-4e73-9f2c-7c7c2aa757eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9f4f0ca2-c746-4482-8f93-b13de5929282",
          "parent_uuid": "0458a129-cf97-485b-a7f3-810f7d3a3bec",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5935a69d-65b9-4103-a6eb-7bb0f72179b0",
              "parent_uuid": "9f4f0ca2-c746-4482-8f93-b13de5929282",
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
              "uuid": "65629e23-cff2-412b-b825-7def5061bc81",
              "parent_uuid": "9f4f0ca2-c746-4482-8f93-b13de5929282",
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
              "uuid": "652136a1-e120-43ca-9cf2-194837beb09f",
              "parent_uuid": "9f4f0ca2-c746-4482-8f93-b13de5929282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40257136-add5-4ec3-986f-1b51f6fad357",
                  "parent_uuid": "652136a1-e120-43ca-9cf2-194837beb09f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "655b56c8-7a7e-4fc9-948c-37b0c49e94b6",
              "parent_uuid": "9f4f0ca2-c746-4482-8f93-b13de5929282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3088018-9605-4e14-804c-2c2ce9411871",
                  "parent_uuid": "655b56c8-7a7e-4fc9-948c-37b0c49e94b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f97292e-7ba1-4637-9f9b-45a25ef88e29",
              "parent_uuid": "9f4f0ca2-c746-4482-8f93-b13de5929282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bc12782-d03b-497b-b3df-d988d46544bb",
                  "parent_uuid": "4f97292e-7ba1-4637-9f9b-45a25ef88e29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7dc448aa-9505-432e-b6f7-a42288c43aa9",
              "parent_uuid": "9f4f0ca2-c746-4482-8f93-b13de5929282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95703005-2d35-4f92-8d28-76e7a31bd4d9",
                  "parent_uuid": "7dc448aa-9505-432e-b6f7-a42288c43aa9",
                  "tagName": "input",
                  "properties": [
                    [
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

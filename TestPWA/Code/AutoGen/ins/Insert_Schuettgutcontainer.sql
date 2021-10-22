
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
  "uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "5d1aa998-2af2-420e-97fc-1c63d6f4743a",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "d3558f20-0215-4a45-a959-2d97e147d97e",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "bb617a22-b61c-40cc-a183-d79892d31728",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "df62e32e-d758-4bd6-be28-f65e213e25c8",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "58158f5a-c516-4fd4-8291-279f2852ce06",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "3e1ae6c0-b0b9-4c21-b93a-bc09fd9b302d",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "115c774c-f973-445e-899d-52a90d986f4a",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "bb2fccd1-b8b2-4586-b201-35a9b062178a",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "502e8883-a84b-4bb1-8fe5-3e26ed8f8a3d",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "081641c2-09dc-49e6-82d6-bc1d8aa6265d",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "0c163523-d810-431a-9b39-8d78ca4fd504",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "2d34c627-f994-4dab-b90e-033f492257fb",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "fdbb3ee2-b6cb-4df9-a886-b201ca5718c2",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "fd0f419b-fd2b-488b-8792-dc93a6265951",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "8475b08f-1ee2-4f07-8f63-40fd2e9a3d07",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "f16ca41e-e9dc-415f-8151-b4e02df5d4e8",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "b54cdb84-cf74-4c44-a773-d7e459fa2fc4",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
          "uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0c137cbe-3fc0-4f91-8a40-1064c14ff526",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
              "uuid": "f12cd205-4fb3-4e41-8b3e-980e82cbad7b",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
              "uuid": "1f988d81-f9de-4e9e-8651-9f7230046c60",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
              "uuid": "21771b3d-cabb-461f-9dc5-0057cfaf3d09",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
          "uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6973a93-f4e6-464d-973e-7ef586aaf3e7",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
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
              "uuid": "9e2dd651-b98b-4f0f-8e8e-89db8e7758a9",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
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
              "uuid": "43c28301-5a07-434b-af7e-4e4c55bd99a0",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
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
              "uuid": "f8671937-977f-434e-8aa5-8864cb3ad52f",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
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
              "uuid": "49ed908d-2f49-40a9-9481-b7d8d755eaf4",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
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
              "uuid": "90c84ef1-541c-4c58-9dcc-cc36cfb59080",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
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
          "uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "57039d85-946d-4da8-ba5c-9197d7c1618a",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
              "uuid": "25fdb6d1-e97c-430b-99af-779ca29d20e3",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
              "uuid": "58fad092-d74b-4204-a9df-e4dcc7dd49a6",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
              "uuid": "70eb1547-0042-4cde-8e1d-2daf909d47e0",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
              "uuid": "95df441d-6b52-4a2d-a66c-3f48c33f453c",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
              "uuid": "a3ea36d0-e475-41bf-8d7b-c1de3996ab9a",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
              "uuid": "dbf7fca5-c56c-4f8d-9918-cb28852dd0a1",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
              "uuid": "9746ad41-77de-4b6b-a04a-e5cda6a49f0e",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
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
          "uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53ca83cb-ed6e-4e2b-82dc-d0afee89a5cc",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "uuid": "a263a0ae-9d83-4ac4-985f-a1298d28c70e",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "uuid": "55d944ec-81cc-4af3-9cdd-ed10b765a43f",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "innerHtml": "\r\n                    <input type=\"text\" style=\"display: block; width: 100%; height: 100%; box-sizing: border-box; margin:0; padding:0;\">\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "bcf48398-3397-40c2-9b5f-5e1ab68a8aa5",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "uuid": "2ddc140e-9baa-40cb-84ae-44d424589859",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "uuid": "f8ab6764-2e05-4554-bcd5-7f96da417984",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "uuid": "53d7e229-2d9a-4795-95c5-b6271d5e0673",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "uuid": "032294e9-9dd1-4a01-bd0f-4c9560b38abd",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
          "uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e781ff44-6e3d-4411-acc7-c0c10a021dcf",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "uuid": "3b17788b-b1d3-4bb2-aed4-349eaece643b",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "uuid": "2bd309a3-5227-4381-b4c3-5120179c88bb",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "63c253c3-0dd1-44b9-97a8-3e3f7f6e1208",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "aa1cefbe-7b45-4818-92ae-961143ba8925",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "bcd5a7bd-ddf5-4f0b-bf48-955bb9c74c63",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "7d14237f-f03d-4d50-b301-4247fd01b1f6",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd5cd0f7-1199-41a8-bfae-2d89a08ea32f",
              "parent_uuid": "7d14237f-f03d-4d50-b301-4247fd01b1f6",
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
          "uuid": "0a66d9b9-0c00-4548-b586-0df0f9a61805",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e97d817d-2d39-4165-8261-5f058061f734",
              "parent_uuid": "0a66d9b9-0c00-4548-b586-0df0f9a61805",
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
          "uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00ee2432-2f6d-4e84-ac1a-e698d67fb354",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
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
              "uuid": "c2bbf271-3aff-44d8-9258-4b899d1c7201",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
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
              "uuid": "758a3e31-340b-4532-b82d-7dd56a86805c",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "11b8a04b-6834-4d24-9d83-20befc8cda2e",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "7d87dff1-d367-42d5-98be-fbeed43469d3",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "185003a5-2ab7-4093-8453-2ec77816ed82",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2de9f30c-2101-455c-892b-6eca811822ac",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
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
              "uuid": "922c7a9f-602e-4eb4-9063-e226e75df407",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
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
              "uuid": "4202ac52-5cb5-426d-8e0f-4aa19f402fe0",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a5c6fe8d-34ab-4d6a-b591-765633a352f9",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1dc2debb-6a5e-4372-a79d-dcd947263d56",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "b0e9a6b3-91ac-47e2-8f4d-d01dcf3ae63e",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS cl_uid 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 



DECLARE @allChecklists TABLE (CL_UID uniqueidentifier NOT NULL PRIMARY KEY, CL_Name nvarchar(256) NULL, CL_Sort int NULL) 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Sort) 
          SELECT 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID, 'Sch�ttgutcontainer' AS CL_Name, 1 AS CL_Sort 
UNION ALL SELECT '1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS CL_UID, 'EVA' AS CL_Name, 2 AS CL_Sort 
UNION ALL SELECT '58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS CL_UID, 'CIS' AS CL_Name, 3 AS CL_Sort 
UNION ALL SELECT 'DA19D272-9439-47A7-9749-153DAFAB2B69' AS CL_UID, 'VHP' AS CL_Name, 4 AS CL_Sort 
UNION ALL SELECT '698EA23D-485A-4CEE-9B06-2E130A3A5626' AS CL_UID, 'NPL' AS CL_Name, 5 AS CL_Sort 
UNION ALL SELECT 'F1A2DD8A-2D11-496E-9B14-13559405089F' AS CL_UID, 'BPS_M7' AS CL_Name, 6 AS CL_Sort 
UNION ALL SELECT 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS CL_UID, 'BPS_1020' AS CL_Name, 7 AS CL_Sort 
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

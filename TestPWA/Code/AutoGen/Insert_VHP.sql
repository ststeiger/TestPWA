
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
  "uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "0a8411e3-7bcf-4d78-9448-3f0e3158f2fe",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "2"
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
      "uuid": "2ed2d54d-2b44-473a-a8e5-93567f4ff0ac",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "35"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "d10c9f5a-ef51-4167-bc29-b9fad5690f71",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "c8abf951-ac38-46c7-9b20-5bde073ac4bd",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "88"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "ba8dbe6f-aec8-4718-b0b7-c2533fa491d6",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "80"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "a3e9ef97-2a93-4358-b95b-8cf4eddcb4c7",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "9fcae0e3-b9d7-4a26-89a4-b67ae5c2f9ec",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "2d109eae-76b5-4f95-9557-883990510b59",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5f0674cb-2dcb-4c23-9f9d-d2b6425e98d5",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "innerHtml": "\r\n                    <span>Datum:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7f27e0b2-be37-4010-a907-102c720faa93",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "d5cf5a85-e602-4ba0-bfcb-c08decf928fe",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "250d3d44-67f2-48ca-9f5e-8b4de0251714",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Visuelle Handarbeitsplatz</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0e9ebf7f-ff12-4844-997b-7e65c4199ba5",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "fefb1d57-6303-4792-9f87-49f81a14b6ad",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "edbb64fd-58b2-4f97-b137-8c6ede5dc8d0",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "efa62d5c-a7fb-4dcd-863a-2c1972885e55",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "c4643ea2-901c-44d3-b340-af9603566eac",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "036fedf6-1100-4d1e-b4a5-bee71f98ec67",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "9d770ebe-620f-4123-b0d2-f26b2637e790",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
          "uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4dfb7f2d-4009-4b70-9258-d3d1cd41bfda",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
              "uuid": "99d430cc-977c-4af1-9cf3-b4a71f95eb77",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
              "uuid": "440b0108-d7b4-4b48-98d3-617866ff8982",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
              "uuid": "c95ea089-886e-4d90-8601-9e71b04f5752",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
          "uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd12431c-10f1-467d-8475-41efd4b0d933",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
                  "center"
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
              "uuid": "041891fc-36ae-4f09-af8e-abe115a31beb",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4.5cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7f785d74-82c4-49f7-a08e-614e971d310e",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "2bb392e5-a533-43fe-ac6c-6619ef6660d3",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "723b2f2d-4c11-4a58-bcd8-af2e0d3f2a71",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "b4920047-79f8-4a6d-84f4-806c135f9f42",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
          "uuid": "ad0e9e56-26ea-4104-92bb-f53a2c94def1",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1906cec3-6779-4828-aed8-f5e9311067b0",
              "parent_uuid": "ad0e9e56-26ea-4104-92bb-f53a2c94def1",
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
          "uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae365123-da89-4a9f-aa6c-3ea413b31e47",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
              "uuid": "8fd84a7c-c41e-445b-ab13-7c8839dbf9d0",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
              "uuid": "39b51c43-7175-444a-9135-068f34817ff0",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
              "uuid": "9f22a68d-c1ab-42d6-a476-e3274338fdbf",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
              "uuid": "83f8061d-d205-4ef7-95b2-cba50fc0990d",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
              "uuid": "f8632c78-819a-4fb0-ad50-f689c65a79f9",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c06e1c93-9975-4fe3-ad44-1b00771c3079",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Sicherheitsschalter beim Steigband</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4656a4df-1a1e-4ffb-a5e5-8f333519921c",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
              "uuid": "a7fa77fe-fdc5-42a1-8a4a-1436d796e606",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
              "uuid": "36ad0b9c-2c9f-4e7e-94b8-53fd5f96ecd8",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
              "uuid": "34b798fb-6208-4755-ab18-c7f009009022",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
              "uuid": "1dbcbcae-9a80-4b54-b5ab-29f193371e51",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
          "uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2aa6881f-fd8f-44a6-b8bf-a6a973cc2dc8",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Andeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d9e6269a-4f86-440e-a17d-8fc87fefd072",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
              "uuid": "153f74a3-7bb2-4244-8dff-4b9d0782e734",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
              "uuid": "76dc1ef0-25c1-45c5-aa2e-87f78253e577",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
              "uuid": "60d66c97-6852-420a-b21e-12d1038b73b5",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
              "uuid": "6a080957-3f43-47bd-90b2-be326acd8aed",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "232826cf-2df5-419d-950c-8d403e03d3e5",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
              "innerHtml": "\r\n                    <span>Geräteprüfung nach SNR 462638 durchgeführt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f72cf592-6339-4b3e-9c18-0243805e6c02",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
              "innerHtml": "\r\n                    <span>2J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4f89d07a-c25b-4e72-98e9-cd6f91d16a96",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
              "uuid": "d3a95807-b747-4bae-9938-8db5791165fa",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
              "uuid": "642c5570-ff0a-478f-aa3f-5efb2e922111",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
              "uuid": "c9fe4945-61a7-4f41-ac28-109d07892485",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04391b39-c11d-4ffa-9452-6019db89038a",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
              "innerHtml": "\r\n                    <span>Steigband auf Beschädigungen oder Risse prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "224c95bc-2c63-4d8a-91e1-c327f6319efb",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
              "uuid": "b6f404a9-aa33-4ebc-b153-70534d8e0a47",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
              "uuid": "59ba105e-db6a-4eef-80bf-a4527a69cac3",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
              "uuid": "2d0d3c6f-e300-4edc-b2a1-246334ea80e0",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
              "uuid": "67d3eb93-9948-4844-a0c5-b4c4e21dde85",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
          "uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2605f07-e0cb-4d0f-9248-d1add5f991ce",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
                  "37"
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
              "innerHtml": "\r\n                    <span>Steigband Zentrierung des Fördergurts prüfen. Der seitliche Abstand links/rechts sollte ca. identisch sein.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "20d430a7-5bd4-4076-855d-547879ce1656",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
              "uuid": "406f4840-83a9-44c1-a68e-60089c79c002",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
              "uuid": "ba88a5e1-600f-4d28-8f1c-5591287889f3",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
              "uuid": "2d226285-5c89-41e0-ab10-48980436a8b1",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
              "uuid": "0933217d-c863-47bc-80ef-8120bde126cd",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
        },
        {
          "uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3793823-756a-4a4c-8856-91d5e00b2764",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
                  "33"
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
              "innerHtml": "\r\n                    <span>Transferband auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b6d5e9ec-4dca-4a48-9410-56e144240d62",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
              "uuid": "04246858-36ff-4ae8-9fbb-3b24bb3f7825",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
              "uuid": "2a38c4fb-f5bd-4c94-b0b7-372e164a965e",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
              "uuid": "a990a468-3694-45f2-9e1e-25a20fd47a29",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
              "uuid": "bcf575c3-fcd2-4e1e-a370-f361e93c0777",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32bf198a-091c-4032-bfca-1e451b12c065",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
                  "37"
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
              "innerHtml": "\r\n                    <span>Bei den zwei Antriebsmotoren die Laufruhe, Geräuschentwicklung und Lagerung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "da60afb5-c17f-4251-a3fa-80c060ff6340",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
              "uuid": "74c0bd44-de88-4dff-9309-28afa5d3a155",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
              "uuid": "bf534c53-71e1-4dad-82e3-8a7b64298184",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
              "uuid": "7f27bf6d-1a25-46a7-826d-a53d5d254a44",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
              "uuid": "aa11ad9e-9c62-43bd-98c6-dd815a9cc39d",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "646e60a3-5623-4a60-bfb8-6fc2181837b6",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "593227d4-6e9a-4f8d-8ce0-a76ad8775668",
              "parent_uuid": "646e60a3-5623-4a60-bfb8-6fc2181837b6",
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b0ee646-620e-4e05-a8d8-2de34e6b979d",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
              "innerHtml": "\r\n                    <span>Reinigung des HAP mittels Staubsauger und Reinigungsmittel u.a. Bremsenreiniger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "dc42df3a-99f2-4111-9cfb-bb10f738fb62",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
              "uuid": "e876a7f9-2f23-4ed6-b27f-e2cf849ccbee",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
              "uuid": "a7d502f5-09f8-4c2b-a8e3-b5b23c9cb008",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
              "uuid": "fced221b-9983-45f9-8db9-221afd489d34",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
              "uuid": "8a1df4d5-d39d-458b-80ee-01189327817b",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "ceef6816-2c2a-4d36-9207-c517181610d2",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7968a1df-a93b-48af-b530-b045da1c2c44",
              "parent_uuid": "ceef6816-2c2a-4d36-9207-c517181610d2",
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "7a36ece0-b241-400d-b074-c8c51af0babb",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8533246-4ffa-4c4a-a4db-22ba9c50344c",
              "parent_uuid": "7a36ece0-b241-400d-b074-c8c51af0babb",
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "ac91a758-2c85-46e1-92e6-01d6edafdc0c",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04ca5d80-84d3-4e7a-8c99-96765651dae9",
              "parent_uuid": "ac91a758-2c85-46e1-92e6-01d6edafdc0c",
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
              "innerHtml": "\r\n                    <textarea class=\"notes\"></textarea>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 16,
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
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
		,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DA19D272-9439-47A7-9749-153DAFAB2B69'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


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
  "uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
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
      "uuid": "ac6f62db-1467-4e29-94d3-700830b04ef4",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "2"
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
      "uuid": "e2bc0bda-efe1-4ca0-8517-b0f2c521186b",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "50"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "9465dea4-b7f0-428b-889d-eb380dd48a59",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
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
      "uuid": "f2aa1cf0-4a91-4a7b-8b59-a96c6a120dc7",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
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
      "uuid": "8bf4776e-deff-4b76-9dac-a555f3641905",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "55"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "dc6cc64f-481d-4d6e-ab89-163f20876238",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "29"
        ]
      ],
      "children": [],
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "889d71df-eca6-48de-b6a1-54c58e09ea8b",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
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
      "uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
      "parent_uuid": "f477edc3-a804-4570-962c-3eed27cd38b3",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b36d9fbd-362b-40b0-bf87-32b6ac2156ef",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "6944f7af-1524-4a76-8eba-a7ff180b3670",
              "parent_uuid": "b36d9fbd-362b-40b0-bf87-32b6ac2156ef",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e0ef7221-eda2-4d0e-88a1-22e75d44ce7c",
              "parent_uuid": "b36d9fbd-362b-40b0-bf87-32b6ac2156ef",
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
              "uuid": "d2a3f552-2bd8-4299-981e-b540bbb1d0e8",
              "parent_uuid": "b36d9fbd-362b-40b0-bf87-32b6ac2156ef",
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
              "uuid": "6beeffd1-12bf-4222-a94a-d21494c1c07e",
              "parent_uuid": "b36d9fbd-362b-40b0-bf87-32b6ac2156ef",
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
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<span>Bargeldgewerk:     BPS 1020</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "83038443-a907-491f-8f45-0cf1b42ec5c1",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "f1c22f65-fe3d-4470-af5c-8226934caf75",
              "parent_uuid": "83038443-a907-491f-8f45-0cf1b42ec5c1",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Wartungsfirma:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3809797b-9650-4916-9b46-89219d11dec1",
              "parent_uuid": "83038443-a907-491f-8f45-0cf1b42ec5c1",
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
              "uuid": "e9ccbc2f-977b-4834-a07c-2c2a4292c888",
              "parent_uuid": "83038443-a907-491f-8f45-0cf1b42ec5c1",
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
              "uuid": "5ff0b53f-f95a-4b2a-b62b-5551b81894f4",
              "parent_uuid": "83038443-a907-491f-8f45-0cf1b42ec5c1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "<span>Servicetechniker:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 1,
          "lvl": 0
        },
        {
          "uuid": "3a4aed47-30e3-42ee-94c0-9950243f6d94",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "4d712190-9092-41ff-aa69-ff1501fdf5ec",
              "parent_uuid": "3a4aed47-30e3-42ee-94c0-9950243f6d94",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 2px solid #000000"
                ],
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
              "innerHtml": "<span>Stunden:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9dfed7d5-a338-4568-89cf-f08679b4f706",
              "parent_uuid": "3a4aed47-30e3-42ee-94c0-9950243f6d94",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "102d5f39-da87-4a3d-84f8-0692767f8d4c",
              "parent_uuid": "3a4aed47-30e3-42ee-94c0-9950243f6d94",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "09b4e1d2-e1ac-4bea-a9a0-5e0185abaa67",
              "parent_uuid": "3a4aed47-30e3-42ee-94c0-9950243f6d94",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
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
              "innerHtml": "<span>Noten:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "dd907e75-4a6e-4bd7-bc98-a893c907459b",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6611c934-52d2-4622-89a5-0ab92e0af907",
              "parent_uuid": "dd907e75-4a6e-4bd7-bc98-a893c907459b",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1c06b5e0-66f5-4547-89ae-f01cc71af25f",
              "parent_uuid": "dd907e75-4a6e-4bd7-bc98-a893c907459b",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e09c5634-afcc-4da9-a210-4d24a6a8012b",
              "parent_uuid": "dd907e75-4a6e-4bd7-bc98-a893c907459b",
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
              "uuid": "503ac66b-c9be-4ad6-8e79-5696446e4a47",
              "parent_uuid": "dd907e75-4a6e-4bd7-bc98-a893c907459b",
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
              "uuid": "64ab266e-98de-462f-959c-84c531fdcd54",
              "parent_uuid": "dd907e75-4a6e-4bd7-bc98-a893c907459b",
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
              "uuid": "e5b5e558-a6b7-4b36-9300-36e461837071",
              "parent_uuid": "dd907e75-4a6e-4bd7-bc98-a893c907459b",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "d3fe4679-d77f-4764-9ebf-d03d024ec8f7",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "738a0672-3aed-411a-9fad-7d8eaeb5baff",
              "parent_uuid": "d3fe4679-d77f-4764-9ebf-d03d024ec8f7",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "0c5ae3f1-b34f-470c-99e3-c55a4b301c7d",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4dfb61d-97de-4ed1-bccd-77fc2434fd17",
              "parent_uuid": "0c5ae3f1-b34f-470c-99e3-c55a4b301c7d",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im Eingabemodul tauschen </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7319219d-a699-42fd-b84f-3c60bb418518",
              "parent_uuid": "0c5ae3f1-b34f-470c-99e3-c55a4b301c7d",
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
              "innerHtml": "\r\n                    <span>61</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "04c18778-cc4f-409b-ac75-6571827b58a7",
              "parent_uuid": "0c5ae3f1-b34f-470c-99e3-c55a4b301c7d",
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
                  "uuid": "84ba383c-6d8a-4bcd-a74d-b4a2daafe19d",
                  "parent_uuid": "04c18778-cc4f-409b-ac75-6571827b58a7",
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
              "uuid": "61880d41-67ff-4308-8f5a-2fbc3d5de8db",
              "parent_uuid": "0c5ae3f1-b34f-470c-99e3-c55a4b301c7d",
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
                  "uuid": "d7a0f4ad-90a9-4e0b-90c4-4b692e4e95ac",
                  "parent_uuid": "61880d41-67ff-4308-8f5a-2fbc3d5de8db",
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
              "uuid": "cf8513d2-ce34-48e8-ac5c-8a4173589be2",
              "parent_uuid": "0c5ae3f1-b34f-470c-99e3-c55a4b301c7d",
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
                  "uuid": "6576178b-1848-404b-94bb-b2877c04e964",
                  "parent_uuid": "cf8513d2-ce34-48e8-ac5c-8a4173589be2",
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
              "uuid": "f53ed347-83df-4082-9f08-a69756e9e251",
              "parent_uuid": "0c5ae3f1-b34f-470c-99e3-c55a4b301c7d",
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
                  "uuid": "884e4f04-ae22-408b-bdc9-4a42e382d822",
                  "parent_uuid": "f53ed347-83df-4082-9f08-a69756e9e251",
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
          "uuid": "e98de8d2-b761-49e7-b37e-ccc2045ff5f7",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a646175-1f98-41e5-90a0-c03927695735",
              "parent_uuid": "e98de8d2-b761-49e7-b37e-ccc2045ff5f7",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im OM, DM und SM prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2fb7a0bd-794c-4b2e-b549-45f2cc4abcc8",
              "parent_uuid": "e98de8d2-b761-49e7-b37e-ccc2045ff5f7",
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
              "innerHtml": "\r\n                    <span>68</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fda3f558-16cb-4a3f-a7a6-2bedccb6dc18",
              "parent_uuid": "e98de8d2-b761-49e7-b37e-ccc2045ff5f7",
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
                  "uuid": "d1b5c60b-5ed9-45a8-9644-34e8b23e4554",
                  "parent_uuid": "fda3f558-16cb-4a3f-a7a6-2bedccb6dc18",
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
              "uuid": "7eafcdee-1079-4bb8-a094-862915c17d22",
              "parent_uuid": "e98de8d2-b761-49e7-b37e-ccc2045ff5f7",
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
                  "uuid": "7703fa49-6220-4c87-be62-e38025f1f2fb",
                  "parent_uuid": "7eafcdee-1079-4bb8-a094-862915c17d22",
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
              "uuid": "88f01196-8201-446a-b5ca-289ed55413cf",
              "parent_uuid": "e98de8d2-b761-49e7-b37e-ccc2045ff5f7",
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
                  "uuid": "389b965d-6af5-410b-8a70-fd93e74aee4c",
                  "parent_uuid": "88f01196-8201-446a-b5ca-289ed55413cf",
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
              "uuid": "3da5904f-dc28-4815-9279-7062d155b5a2",
              "parent_uuid": "e98de8d2-b761-49e7-b37e-ccc2045ff5f7",
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
                  "uuid": "31eac729-b771-40e4-9110-cd99ca918c7b",
                  "parent_uuid": "3da5904f-dc28-4815-9279-7062d155b5a2",
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
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "60efefc4-47c2-44f7-bf2b-cc42b2a302f4",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a925814e-011b-476d-bf30-cef6147c263e",
              "parent_uuid": "60efefc4-47c2-44f7-bf2b-cc42b2a302f4",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Antriebsriemen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "120452a6-d8c8-4f83-8cc7-9ad0e61de902",
              "parent_uuid": "60efefc4-47c2-44f7-bf2b-cc42b2a302f4",
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
              "innerHtml": "<span>74</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2c4a72e8-f705-424e-9475-19474303243b",
              "parent_uuid": "60efefc4-47c2-44f7-bf2b-cc42b2a302f4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42e25ae8-03c9-41a6-bf50-7d0f6b16ea7b",
                  "parent_uuid": "2c4a72e8-f705-424e-9475-19474303243b",
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
              "uuid": "e73969b0-9f2d-41e5-b33a-8737c2f67f71",
              "parent_uuid": "60efefc4-47c2-44f7-bf2b-cc42b2a302f4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b265235e-f7ea-4f69-8873-2f6f9ca9c45a",
                  "parent_uuid": "e73969b0-9f2d-41e5-b33a-8737c2f67f71",
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
              "uuid": "8abd0852-4986-4b6f-a75e-2307f9b7c35e",
              "parent_uuid": "60efefc4-47c2-44f7-bf2b-cc42b2a302f4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88a98df7-c02e-48f9-b35e-ef3e8f40c330",
                  "parent_uuid": "8abd0852-4986-4b6f-a75e-2307f9b7c35e",
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
              "uuid": "bb5526b2-7810-4383-89b2-dee47793fa00",
              "parent_uuid": "60efefc4-47c2-44f7-bf2b-cc42b2a302f4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4934e34-77d7-4a60-a198-eb523f5ccfd9",
                  "parent_uuid": "bb5526b2-7810-4383-89b2-dee47793fa00",
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
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "df89fb3a-434e-4857-947e-807e4d2ca66d",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "14b3af11-59be-414c-9256-ec998ecf3081",
              "parent_uuid": "df89fb3a-434e-4857-947e-807e4d2ca66d",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "71380073-9540-4e3a-b89c-89615f102016",
              "parent_uuid": "df89fb3a-434e-4857-947e-807e4d2ca66d",
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
              "innerHtml": "\r\n                    <span>57</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "72059e60-3e56-4adb-a5f1-5ff3fb8bedfe",
              "parent_uuid": "df89fb3a-434e-4857-947e-807e4d2ca66d",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7df1e8ca-083a-475a-87b7-cca60edee261",
                  "parent_uuid": "72059e60-3e56-4adb-a5f1-5ff3fb8bedfe",
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
              "uuid": "c8f57d95-e3fa-48e7-a771-3b25773ee53f",
              "parent_uuid": "df89fb3a-434e-4857-947e-807e4d2ca66d",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e7d5a92-c903-44d5-8f0f-6cb32ec2d62d",
                  "parent_uuid": "c8f57d95-e3fa-48e7-a771-3b25773ee53f",
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
              "uuid": "fe3c406e-ddb5-46db-9aef-3a23d117c1f0",
              "parent_uuid": "df89fb3a-434e-4857-947e-807e4d2ca66d",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20814e85-9305-49c0-aedd-8e771d0e5076",
                  "parent_uuid": "fe3c406e-ddb5-46db-9aef-3a23d117c1f0",
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
              "uuid": "dc889541-5dbe-4e5b-94f9-ecfe3fca3023",
              "parent_uuid": "df89fb3a-434e-4857-947e-807e4d2ca66d",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00e8f366-a5f1-4fcf-9698-c3cdb7306b04",
                  "parent_uuid": "dc889541-5dbe-4e5b-94f9-ecfe3fca3023",
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
          "uuid": "5aeea438-bb5d-413f-8af4-9a22a4611848",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7824f05d-0ca5-40b4-b28a-f24eb87a4c44",
              "parent_uuid": "5aeea438-bb5d-413f-8af4-9a22a4611848",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhalteblock prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "68c71bdd-d778-4d90-9350-73cbab5145cb",
              "parent_uuid": "5aeea438-bb5d-413f-8af4-9a22a4611848",
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
              "innerHtml": "\r\n                    <span>59</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1c45ab1e-d37d-4624-9f0d-4f5512ba2bd2",
              "parent_uuid": "5aeea438-bb5d-413f-8af4-9a22a4611848",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1da1fbae-3fed-4a20-b5c6-8be22c71a26c",
                  "parent_uuid": "1c45ab1e-d37d-4624-9f0d-4f5512ba2bd2",
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
              "uuid": "55a8dfd9-e057-4352-a57b-e35ef05c67ad",
              "parent_uuid": "5aeea438-bb5d-413f-8af4-9a22a4611848",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a00ff1e5-5878-493c-b08c-fceb17587fde",
                  "parent_uuid": "55a8dfd9-e057-4352-a57b-e35ef05c67ad",
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
              "uuid": "da796745-7215-4b9d-b963-3c66a4f60a9d",
              "parent_uuid": "5aeea438-bb5d-413f-8af4-9a22a4611848",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3254de7a-a3db-4681-8c7f-dab25128958a",
                  "parent_uuid": "da796745-7215-4b9d-b963-3c66a4f60a9d",
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
              "uuid": "6b0a5d4a-b802-4380-b360-a389581e730c",
              "parent_uuid": "5aeea438-bb5d-413f-8af4-9a22a4611848",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4acf65d8-f22f-41e8-802f-42c13ca976ea",
                  "parent_uuid": "6b0a5d4a-b802-4380-b360-a389581e730c",
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
        },
        {
          "uuid": "25bd0550-3eb7-4043-a17b-4dbc8e1600d9",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f919110-f99d-45c2-9154-ac052b160bcc",
              "parent_uuid": "25bd0550-3eb7-4043-a17b-4dbc8e1600d9",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>BN-Eingabebereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ec26abd0-ede5-4d1e-bf1d-95be21d96b25",
              "parent_uuid": "25bd0550-3eb7-4043-a17b-4dbc8e1600d9",
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
              "innerHtml": "\r\n                    <span>27</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7d4357e3-2215-46f9-aa3a-f92f5ae20fae",
              "parent_uuid": "25bd0550-3eb7-4043-a17b-4dbc8e1600d9",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4d129ce-9fb4-4975-a74c-9e5e5378a197",
                  "parent_uuid": "7d4357e3-2215-46f9-aa3a-f92f5ae20fae",
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
              "uuid": "47f1faa0-d1b6-4042-9915-3c6f8922cd95",
              "parent_uuid": "25bd0550-3eb7-4043-a17b-4dbc8e1600d9",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65d879db-b0c2-452f-b4f5-f1373c8d2b9d",
                  "parent_uuid": "47f1faa0-d1b6-4042-9915-3c6f8922cd95",
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
              "uuid": "bdb5e53c-132f-4b60-8b84-396c3d8eeccb",
              "parent_uuid": "25bd0550-3eb7-4043-a17b-4dbc8e1600d9",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ede2bcd-2fb7-481f-8d11-3f22e384a701",
                  "parent_uuid": "bdb5e53c-132f-4b60-8b84-396c3d8eeccb",
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
              "uuid": "75ae8a4b-2b2f-4596-874c-fd3311304e52",
              "parent_uuid": "25bd0550-3eb7-4043-a17b-4dbc8e1600d9",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ac98899-ff86-4ab2-9b14-23b2401c6986",
                  "parent_uuid": "75ae8a4b-2b2f-4596-874c-fd3311304e52",
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
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "ce069334-da5d-4750-9190-584716005d2a",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd609e6c-b6f5-4736-8599-1ba892983124",
              "parent_uuid": "ce069334-da5d-4750-9190-584716005d2a",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e7c7121d-5903-475c-a83b-c9d27314245d",
              "parent_uuid": "ce069334-da5d-4750-9190-584716005d2a",
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
              "innerHtml": "\r\n                    <span>80</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "cf74043c-9a72-44bd-b26c-15ee2f88bcdb",
              "parent_uuid": "ce069334-da5d-4750-9190-584716005d2a",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4299257-034e-4d62-ac69-2c0bc73d6a0f",
                  "parent_uuid": "cf74043c-9a72-44bd-b26c-15ee2f88bcdb",
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
              "uuid": "03d2b7fb-3c0f-4b26-be1b-67777dde1d07",
              "parent_uuid": "ce069334-da5d-4750-9190-584716005d2a",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37782eb1-be7d-4e9e-929c-7c7fcb7d1102",
                  "parent_uuid": "03d2b7fb-3c0f-4b26-be1b-67777dde1d07",
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
              "uuid": "805fdce7-192c-4231-8819-2342c688111f",
              "parent_uuid": "ce069334-da5d-4750-9190-584716005d2a",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0dce3c5-0f59-4f67-9fc8-20683bc93856",
                  "parent_uuid": "805fdce7-192c-4231-8819-2342c688111f",
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
              "uuid": "f4996f45-49a0-47cb-9d8d-03a5d0be5ce8",
              "parent_uuid": "ce069334-da5d-4750-9190-584716005d2a",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cd054da-828a-41a7-b778-7249068d8129",
                  "parent_uuid": "f4996f45-49a0-47cb-9d8d-03a5d0be5ce8",
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
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "b5941dcf-7006-4fb7-8914-fb0301c740c3",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0dbdb28-f782-4613-b7d8-878f286463d0",
              "parent_uuid": "b5941dcf-7006-4fb7-8914-fb0301c740c3",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Leitbleche und Weichenflügel im Shredderbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a32126ed-f865-4ebe-8534-35b548c14cf1",
              "parent_uuid": "b5941dcf-7006-4fb7-8914-fb0301c740c3",
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
              "innerHtml": "\r\n                    <span>76</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0afcdb8e-7f76-42fa-849a-ca23d81ed19f",
              "parent_uuid": "b5941dcf-7006-4fb7-8914-fb0301c740c3",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dac6fc0-0c00-42a9-b4a7-6764118ba731",
                  "parent_uuid": "0afcdb8e-7f76-42fa-849a-ca23d81ed19f",
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
              "uuid": "ceed860b-1a84-47b5-a392-7b94504d3e8b",
              "parent_uuid": "b5941dcf-7006-4fb7-8914-fb0301c740c3",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bf530c4-ead2-49ee-af1f-e30cdc5bf987",
                  "parent_uuid": "ceed860b-1a84-47b5-a392-7b94504d3e8b",
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
              "uuid": "50d1f08a-5cf8-46dc-b5be-3cac2d7d572d",
              "parent_uuid": "b5941dcf-7006-4fb7-8914-fb0301c740c3",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bda4fd15-985b-4d24-9ad5-27d4c90b1a29",
                  "parent_uuid": "50d1f08a-5cf8-46dc-b5be-3cac2d7d572d",
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
              "uuid": "380e5f32-f6b9-4beb-a6a0-8aa9747dde85",
              "parent_uuid": "b5941dcf-7006-4fb7-8914-fb0301c740c3",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "014691e5-b520-4487-8280-e454803b1bb3",
                  "parent_uuid": "380e5f32-f6b9-4beb-a6a0-8aa9747dde85",
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "a6a7e218-750c-4423-bc7f-4c0747d6ec70",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8affccf-b106-4930-9b7b-bff31a484038",
              "parent_uuid": "a6a7e218-750c-4423-bc7f-4c0747d6ec70",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Filtermatten der Lüfter reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a4db9192-4c61-4f78-ba45-283da383c4f3",
              "parent_uuid": "a6a7e218-750c-4423-bc7f-4c0747d6ec70",
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
              "innerHtml": "\r\n                    <span>85</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f7fa998d-cfec-418f-b4f6-923d9113b817",
              "parent_uuid": "a6a7e218-750c-4423-bc7f-4c0747d6ec70",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42059146-ece4-498e-9f97-c4ba39f9c941",
                  "parent_uuid": "f7fa998d-cfec-418f-b4f6-923d9113b817",
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
              "uuid": "3d97e01e-dd7d-4904-a6c4-5718d02658be",
              "parent_uuid": "a6a7e218-750c-4423-bc7f-4c0747d6ec70",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6adedbcb-e63b-4e11-8c66-69a9e262aaef",
                  "parent_uuid": "3d97e01e-dd7d-4904-a6c4-5718d02658be",
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
              "uuid": "476b6163-aa0a-44de-8368-28541325cd46",
              "parent_uuid": "a6a7e218-750c-4423-bc7f-4c0747d6ec70",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00417451-6514-455a-a11e-ec35f8c074a8",
                  "parent_uuid": "476b6163-aa0a-44de-8368-28541325cd46",
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
              "uuid": "529bd2e4-e05f-47d1-8976-31db885cbd03",
              "parent_uuid": "a6a7e218-750c-4423-bc7f-4c0747d6ec70",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbdee2d9-fd10-4fd3-aaf7-b2166596a775",
                  "parent_uuid": "529bd2e4-e05f-47d1-8976-31db885cbd03",
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
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "8667acca-4572-47da-a30e-c9d19b3cb310",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "99c8b5c3-d763-4c63-9d65-f0543953d2b2",
              "parent_uuid": "8667acca-4572-47da-a30e-c9d19b3cb310",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Warnzeichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b13fc771-4311-4e4d-aefe-c6d296d798f8",
              "parent_uuid": "8667acca-4572-47da-a30e-c9d19b3cb310",
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
              "innerHtml": "\r\n                    <span>81</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c30228cf-695c-41ae-a63b-653c85927d75",
              "parent_uuid": "8667acca-4572-47da-a30e-c9d19b3cb310",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "832ca448-34b2-42cd-845a-98e15343c8e4",
                  "parent_uuid": "c30228cf-695c-41ae-a63b-653c85927d75",
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
              "uuid": "ad47ca4c-930b-4a60-a833-11d9002ad1ba",
              "parent_uuid": "8667acca-4572-47da-a30e-c9d19b3cb310",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2491a39e-c755-4d9c-ae08-be8c2c2a42ea",
                  "parent_uuid": "ad47ca4c-930b-4a60-a833-11d9002ad1ba",
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
              "uuid": "fae41739-a83d-4b26-88c4-3c60c0204ce7",
              "parent_uuid": "8667acca-4572-47da-a30e-c9d19b3cb310",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a59ed398-cac8-48c1-a598-ae89a312c21d",
                  "parent_uuid": "fae41739-a83d-4b26-88c4-3c60c0204ce7",
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
              "uuid": "6e51a9f0-8261-4884-9e68-9871ca3f4fa1",
              "parent_uuid": "8667acca-4572-47da-a30e-c9d19b3cb310",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ecde2bb-6d75-4819-a360-af35fbd37704",
                  "parent_uuid": "6e51a9f0-8261-4884-9e68-9871ca3f4fa1",
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "92640275-d695-498a-a5e6-88a508afb4ac",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34f64004-116f-4151-9772-79bc3b6b231c",
              "parent_uuid": "92640275-d695-498a-a5e6-88a508afb4ac",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Staplerscheiben reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "163faa86-ac5f-4e3c-b1fd-3f4a57ea98cc",
              "parent_uuid": "92640275-d695-498a-a5e6-88a508afb4ac",
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
              "innerHtml": "\r\n                    <span>56</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "04890771-c87c-4cea-9eae-3917f1152de4",
              "parent_uuid": "92640275-d695-498a-a5e6-88a508afb4ac",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3aeeb19e-8a54-4d72-8bf7-7375a78c619c",
                  "parent_uuid": "04890771-c87c-4cea-9eae-3917f1152de4",
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
              "uuid": "081d2558-0e60-4ce1-afef-e5ad15cb45e4",
              "parent_uuid": "92640275-d695-498a-a5e6-88a508afb4ac",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4981f5ea-ff59-49df-b3f7-7f1efc53350d",
                  "parent_uuid": "081d2558-0e60-4ce1-afef-e5ad15cb45e4",
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
              "uuid": "3f3ebfd8-1bb7-42f9-91b7-778cf5cab136",
              "parent_uuid": "92640275-d695-498a-a5e6-88a508afb4ac",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0d90b51-045d-48be-a18c-063bf97788c3",
                  "parent_uuid": "3f3ebfd8-1bb7-42f9-91b7-778cf5cab136",
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
              "uuid": "674c4d7b-3e2e-48ea-bdda-dc0891586b6e",
              "parent_uuid": "92640275-d695-498a-a5e6-88a508afb4ac",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81cb8ca3-c6ce-4265-9e4a-5bc22986f3d4",
                  "parent_uuid": "674c4d7b-3e2e-48ea-bdda-dc0891586b6e",
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "9a79c4f0-d9a6-4d7e-aba1-a3318c56df1f",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96eb5da0-8fcd-41b6-b8d2-c4df451bf877",
              "parent_uuid": "9a79c4f0-d9a6-4d7e-aba1-a3318c56df1f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Flachriemen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9073990e-ed06-4c3c-8cf7-edf27e3bb550",
              "parent_uuid": "9a79c4f0-d9a6-4d7e-aba1-a3318c56df1f",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "78030dc6-9242-4663-bdf7-a6c45bc7688a",
              "parent_uuid": "9a79c4f0-d9a6-4d7e-aba1-a3318c56df1f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "983a8d45-a9bc-4b66-b953-949ee8e25a29",
                  "parent_uuid": "78030dc6-9242-4663-bdf7-a6c45bc7688a",
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
              "uuid": "18b0b9a6-555c-4b24-8406-18512ce737f8",
              "parent_uuid": "9a79c4f0-d9a6-4d7e-aba1-a3318c56df1f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6e7f617-12fe-4799-a754-0457ec17127f",
                  "parent_uuid": "18b0b9a6-555c-4b24-8406-18512ce737f8",
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
              "uuid": "9a7421ce-4302-4457-870b-6292f1e215ff",
              "parent_uuid": "9a79c4f0-d9a6-4d7e-aba1-a3318c56df1f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6a6da2e-213d-4dd2-babb-721f1b1ccc33",
                  "parent_uuid": "9a7421ce-4302-4457-870b-6292f1e215ff",
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
              "uuid": "4e9e4bdc-14aa-4436-a77d-170b4cea8bde",
              "parent_uuid": "9a79c4f0-d9a6-4d7e-aba1-a3318c56df1f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "826ca573-0fae-463e-841e-93a404955495",
                  "parent_uuid": "4e9e4bdc-14aa-4436-a77d-170b4cea8bde",
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
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "45ae8aba-5821-4470-9021-983a20d47f0b",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "840a705f-bad3-4e54-8f3d-57a0a1f9e23b",
              "parent_uuid": "45ae8aba-5821-4470-9021-983a20d47f0b",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "29"
                ],
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "35bf3253-840d-494f-b0d1-ca7dca856c38",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5610de7c-e9f5-456e-8886-2bf7f5d5c859",
              "parent_uuid": "35bf3253-840d-494f-b0d1-ca7dca856c38",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
                ],
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "e1d6051f-de0c-4855-8ecb-1bbe0bc0586d",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "034bc21e-5cbe-44d2-b468-41333361d157",
              "parent_uuid": "e1d6051f-de0c-4855-8ecb-1bbe0bc0586d",
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
              "children": [
                {
                  "uuid": "77b58d58-8b38-4939-b42c-db82b15a26f0",
                  "parent_uuid": "034bc21e-5cbe-44d2-b468-41333361d157",
                  "tagName": "textarea",
                  "properties": [
                    [
                      "class",
                      "notes"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "d31cb54e-5337-4b02-b397-50d0cb91508b",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6a12ff2-c640-44d5-a9e4-aeaf74212fad",
              "parent_uuid": "d31cb54e-5337-4b02-b397-50d0cb91508b",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "ca4364d2-37ce-4fad-b226-633960ab19c3",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "76a60a1a-1256-40c5-80eb-a1e862b7d319",
              "parent_uuid": "ca4364d2-37ce-4fad-b226-633960ab19c3",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei eingeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "af07388c-e47b-44d9-ba6e-fd24aa8e3b88",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d4542ac-619a-461a-93fc-029877bdad21",
              "parent_uuid": "af07388c-e47b-44d9-ba6e-fd24aa8e3b88",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e8920484-9716-4de8-84a8-a7795079660a",
              "parent_uuid": "af07388c-e47b-44d9-ba6e-fd24aa8e3b88",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "de501294-b885-4bfd-8254-6448a3a7422e",
              "parent_uuid": "af07388c-e47b-44d9-ba6e-fd24aa8e3b88",
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
              "uuid": "3b4765a2-7da6-46de-a969-77b43c2a5ef1",
              "parent_uuid": "af07388c-e47b-44d9-ba6e-fd24aa8e3b88",
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
              "uuid": "bb7e66b2-0365-497c-ab4a-0fcffa1b8ecf",
              "parent_uuid": "af07388c-e47b-44d9-ba6e-fd24aa8e3b88",
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
              "uuid": "a3040687-7498-49c9-a447-0ee29e0ad900",
              "parent_uuid": "af07388c-e47b-44d9-ba6e-fd24aa8e3b88",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "a2e485f3-eeab-4544-80c4-306025ecd3fe",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb845c41-e803-40d7-b505-62732b369d60",
              "parent_uuid": "a2e485f3-eeab-4544-80c4-306025ecd3fe",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder - Sicherheitsbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5de32048-8013-43e0-9972-8d1638c9f300",
              "parent_uuid": "a2e485f3-eeab-4544-80c4-306025ecd3fe",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6b1d4fc0-da26-4c2b-95e1-ea790f5f84e0",
              "parent_uuid": "a2e485f3-eeab-4544-80c4-306025ecd3fe",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e20e0014-8a9d-4c59-b544-336bb6bd96fd",
                  "parent_uuid": "6b1d4fc0-da26-4c2b-95e1-ea790f5f84e0",
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
              "uuid": "b0982d12-d365-4aea-bd21-45c8ffdba59f",
              "parent_uuid": "a2e485f3-eeab-4544-80c4-306025ecd3fe",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7766ef1c-8223-4d0c-8b58-5c822f22150b",
                  "parent_uuid": "b0982d12-d365-4aea-bd21-45c8ffdba59f",
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
              "uuid": "2fedbcc5-206a-406e-83ca-cc125d0858eb",
              "parent_uuid": "a2e485f3-eeab-4544-80c4-306025ecd3fe",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "970a239c-cee5-40f6-86f2-27b2c34c96ab",
                  "parent_uuid": "2fedbcc5-206a-406e-83ca-cc125d0858eb",
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
              "uuid": "a2be214a-6b3a-43fb-80f4-e43db600771d",
              "parent_uuid": "a2e485f3-eeab-4544-80c4-306025ecd3fe",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f757c01-f3c9-4d55-8461-ebd67351520d",
                  "parent_uuid": "a2be214a-6b3a-43fb-80f4-e43db600771d",
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "cab623da-b367-4484-9aeb-b93d2af81611",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "193c9a6c-86c5-4086-bd16-a4b358e1bfe5",
              "parent_uuid": "cab623da-b367-4484-9aeb-b93d2af81611",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Luftleitplatte und Reflextaster prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ec951212-2aa2-4326-907a-0051b839e3e5",
              "parent_uuid": "cab623da-b367-4484-9aeb-b93d2af81611",
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
              "innerHtml": "\r\n                    <span>89</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "19a5fbed-e391-48a4-9dc7-de5314e89838",
              "parent_uuid": "cab623da-b367-4484-9aeb-b93d2af81611",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad6ff922-1491-4d39-84ba-f32e16857e91",
                  "parent_uuid": "19a5fbed-e391-48a4-9dc7-de5314e89838",
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
              "uuid": "71475ba5-6bda-4a9a-90a1-caa32834597f",
              "parent_uuid": "cab623da-b367-4484-9aeb-b93d2af81611",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98a81271-08c7-4f41-bce7-754d0e7b6912",
                  "parent_uuid": "71475ba5-6bda-4a9a-90a1-caa32834597f",
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
              "uuid": "caead5c9-3a16-415a-915c-9f131b298d1e",
              "parent_uuid": "cab623da-b367-4484-9aeb-b93d2af81611",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bacf45c-8bea-4ec4-ba06-845b4cdb0844",
                  "parent_uuid": "caead5c9-3a16-415a-915c-9f131b298d1e",
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
              "uuid": "088c2762-c381-43b3-a8a0-12d02531b374",
              "parent_uuid": "cab623da-b367-4484-9aeb-b93d2af81611",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0e05ba5-9e6a-4028-b941-049d10d18de0",
                  "parent_uuid": "088c2762-c381-43b3-a8a0-12d02531b374",
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
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "8af15556-4741-44f6-8181-1d3611abc546",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b1a92cd-9bb1-460e-ab33-6dcf312596dd",
              "parent_uuid": "8af15556-4741-44f6-8181-1d3611abc546",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Unterdrucksystem prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "573af498-6034-4d63-b09e-177089193f59",
              "parent_uuid": "8af15556-4741-44f6-8181-1d3611abc546",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5a9ee0b0-8f17-4c44-86cd-3e60e83367cb",
              "parent_uuid": "8af15556-4741-44f6-8181-1d3611abc546",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a9e1ef6-7bb3-4f38-b9f9-a2518456ce52",
                  "parent_uuid": "5a9ee0b0-8f17-4c44-86cd-3e60e83367cb",
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
              "uuid": "3ec192f2-3708-4c83-8b5d-f1d32825102d",
              "parent_uuid": "8af15556-4741-44f6-8181-1d3611abc546",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb6b41b6-2086-4815-baa9-a4b797038f7e",
                  "parent_uuid": "3ec192f2-3708-4c83-8b5d-f1d32825102d",
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
              "uuid": "a1c85cb6-24be-4ad6-b182-00129495fcea",
              "parent_uuid": "8af15556-4741-44f6-8181-1d3611abc546",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e17d2116-2a3d-450e-a37c-9b12154b64fa",
                  "parent_uuid": "a1c85cb6-24be-4ad6-b182-00129495fcea",
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
              "uuid": "ee2c65e1-04ee-4cb9-81f3-bd9cef92cc2f",
              "parent_uuid": "8af15556-4741-44f6-8181-1d3611abc546",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b811ae4f-71a5-4df2-98c0-ceb3c649125f",
                  "parent_uuid": "ee2c65e1-04ee-4cb9-81f3-bd9cef92cc2f",
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
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "63693b29-c415-4c39-9c6c-e9bc0e63d55e",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "acb642d9-fdd1-4fe1-a241-ce4bc2ca0f11",
              "parent_uuid": "63693b29-c415-4c39-9c6c-e9bc0e63d55e",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Lüfter prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6b7c3f38-48d8-4669-ae5c-912e4297bf15",
              "parent_uuid": "63693b29-c415-4c39-9c6c-e9bc0e63d55e",
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
              "innerHtml": "\r\n                    <span>88</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "82dc73d9-a2c1-4c40-a7b3-f8461e8235f6",
              "parent_uuid": "63693b29-c415-4c39-9c6c-e9bc0e63d55e",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be9bec31-4e88-4cb8-90d4-5dcc0678b82a",
                  "parent_uuid": "82dc73d9-a2c1-4c40-a7b3-f8461e8235f6",
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
              "uuid": "126c7564-9188-40c0-8000-a58549561344",
              "parent_uuid": "63693b29-c415-4c39-9c6c-e9bc0e63d55e",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e822995d-17a3-46b1-91cb-4bc09950fd7e",
                  "parent_uuid": "126c7564-9188-40c0-8000-a58549561344",
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
              "uuid": "341ef312-5bae-4e76-aa32-c9b02bc5a79a",
              "parent_uuid": "63693b29-c415-4c39-9c6c-e9bc0e63d55e",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e06715a8-9499-4694-ae72-68447de3f5e1",
                  "parent_uuid": "341ef312-5bae-4e76-aa32-c9b02bc5a79a",
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
              "uuid": "2c725b7b-e3fb-4323-9ac3-4f9f5a205075",
              "parent_uuid": "63693b29-c415-4c39-9c6c-e9bc0e63d55e",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a74d3c25-e9aa-455b-beb2-b5e370354ac5",
                  "parent_uuid": "2c725b7b-e3fb-4323-9ac3-4f9f5a205075",
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
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "c7c739da-d4ac-4ec9-a41d-bb491553ee4f",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d34ba96e-6fd8-4b18-8c89-afb3912c3a76",
              "parent_uuid": "c7c739da-d4ac-4ec9-a41d-bb491553ee4f",
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
                  "valign",
                  "top"
                ],
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "dab220cd-15ef-468e-bb16-6b19783cf6a3",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb6a8a0e-c6b2-417d-84d5-05d3e1f141ad",
              "parent_uuid": "dab220cd-15ef-468e-bb16-6b19783cf6a3",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
                ],
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "791e20b5-ffb4-4d41-886d-fdc772d26046",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68768a33-5dd2-4202-a9bf-0be6ef86a692",
              "parent_uuid": "791e20b5-ffb4-4d41-886d-fdc772d26046",
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
              "children": [
                {
                  "uuid": "65f91388-8897-4bdb-a66b-fee5efac00d1",
                  "parent_uuid": "68768a33-5dd2-4202-a9bf-0be6ef86a692",
                  "tagName": "textarea",
                  "properties": [
                    [
                      "class",
                      "notes"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "d305c4c3-c673-429b-9fdb-85215006ed8c",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "982b4f73-71e7-4dcd-8713-9e80900a5ea4",
              "parent_uuid": "d305c4c3-c673-429b-9fdb-85215006ed8c",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "2d7d76ec-f2e4-483b-a963-83b5fbf5096b",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "93becbc1-0bb2-426e-8450-fb5d8d9d19b5",
              "parent_uuid": "2d7d76ec-f2e4-483b-a963-83b5fbf5096b",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei laufender Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "4eeee578-d5b0-4477-8d17-4de8ab38f051",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a72abe85-1e1e-4c71-ad61-f44101f791c9",
              "parent_uuid": "4eeee578-d5b0-4477-8d17-4de8ab38f051",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "33af6188-2ef4-4825-9349-f047385ae6da",
              "parent_uuid": "4eeee578-d5b0-4477-8d17-4de8ab38f051",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0654e1ef-d9d0-4837-84c8-a68c0eb7037a",
              "parent_uuid": "4eeee578-d5b0-4477-8d17-4de8ab38f051",
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
              "uuid": "514ee221-52db-496f-9331-107dfe18350a",
              "parent_uuid": "4eeee578-d5b0-4477-8d17-4de8ab38f051",
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
              "uuid": "d62e18ea-b865-4b72-a2ec-8378680908e7",
              "parent_uuid": "4eeee578-d5b0-4477-8d17-4de8ab38f051",
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
              "uuid": "ee976edd-f180-4c93-8b8e-97a77a010431",
              "parent_uuid": "4eeee578-d5b0-4477-8d17-4de8ab38f051",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "f5e71378-9575-46ea-af60-a6f15fa1694b",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "9b2ecf00-4381-43ad-88b1-26cf70817d76",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6a3c378-d132-4249-a465-da5373074d7a",
              "parent_uuid": "9b2ecf00-4381-43ad-88b1-26cf70817d76",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen auf Gleichlauf überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b26f32dd-a77a-42aa-8181-aba26c1cffce",
              "parent_uuid": "9b2ecf00-4381-43ad-88b1-26cf70817d76",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f7f02fa0-3871-4d81-8cf2-47c0e9551dc5",
              "parent_uuid": "9b2ecf00-4381-43ad-88b1-26cf70817d76",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "714a6e36-9174-44f0-aeb5-813239a4e826",
                  "parent_uuid": "f7f02fa0-3871-4d81-8cf2-47c0e9551dc5",
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
              "uuid": "6404975c-7d23-4c54-9c67-96685eb9c2c3",
              "parent_uuid": "9b2ecf00-4381-43ad-88b1-26cf70817d76",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c2cacf5-b2e6-4aad-913f-43598a51d337",
                  "parent_uuid": "6404975c-7d23-4c54-9c67-96685eb9c2c3",
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
              "uuid": "79b945ec-19f8-4bd2-9167-a4a4f3da0751",
              "parent_uuid": "9b2ecf00-4381-43ad-88b1-26cf70817d76",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e11b525-3bf4-4a57-813f-13a383c4e66e",
                  "parent_uuid": "79b945ec-19f8-4bd2-9167-a4a4f3da0751",
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
              "uuid": "1fcc83bc-e8d3-4f2b-ba8b-2c01fa4cac11",
              "parent_uuid": "9b2ecf00-4381-43ad-88b1-26cf70817d76",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c5203df-d56f-4189-8230-0fb3940f36ac",
                  "parent_uuid": "1fcc83bc-e8d3-4f2b-ba8b-2c01fa4cac11",
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
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "734f12d3-81ee-4e4a-8505-41c2f6f979cf",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c282304c-a724-4299-8e69-9c1d64443898",
              "parent_uuid": "734f12d3-81ee-4e4a-8505-41c2f6f979cf",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Transport- und Antriebsrollen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "11b560df-66a4-4c34-b369-3e3fbea6595c",
              "parent_uuid": "734f12d3-81ee-4e4a-8505-41c2f6f979cf",
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
              "innerHtml": "\r\n                    <span>93</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "108757da-8cb7-44ae-ad08-6fbd756ae94f",
              "parent_uuid": "734f12d3-81ee-4e4a-8505-41c2f6f979cf",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dec265d4-86b9-4525-b352-16f78b39eb4f",
                  "parent_uuid": "108757da-8cb7-44ae-ad08-6fbd756ae94f",
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
              "uuid": "7b49fc40-1f3c-4cd5-bfd7-641779358b85",
              "parent_uuid": "734f12d3-81ee-4e4a-8505-41c2f6f979cf",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a46bf28-1387-4e66-bcb3-d8766e23348b",
                  "parent_uuid": "7b49fc40-1f3c-4cd5-bfd7-641779358b85",
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
              "uuid": "13c9e15b-8854-4157-a094-90b4fcfe7872",
              "parent_uuid": "734f12d3-81ee-4e4a-8505-41c2f6f979cf",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f30e4fcd-6903-41ff-8b6d-9ea60e9dbb19",
                  "parent_uuid": "13c9e15b-8854-4157-a094-90b4fcfe7872",
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
              "uuid": "ca17f132-2edf-4940-96a0-853f058ddf9e",
              "parent_uuid": "734f12d3-81ee-4e4a-8505-41c2f6f979cf",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0adcdfd4-2185-4f4f-929b-6baeeed95c34",
                  "parent_uuid": "ca17f132-2edf-4940-96a0-853f058ddf9e",
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
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "9c28de38-e009-4f38-960e-35ffc3684481",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3236f3f-6531-4da7-99e7-7ec93002dc9a",
              "parent_uuid": "9c28de38-e009-4f38-960e-35ffc3684481",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolendruckköpfe und Farbbänder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "34fb8ba2-3ecf-4f37-8a24-14ff1d99b3f5",
              "parent_uuid": "9c28de38-e009-4f38-960e-35ffc3684481",
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
              "innerHtml": "\r\n                    <span>96</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "cadc58e3-86fc-40e8-ad75-20711ee1e254",
              "parent_uuid": "9c28de38-e009-4f38-960e-35ffc3684481",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "405b130e-a886-44af-ab6c-32439693f329",
                  "parent_uuid": "cadc58e3-86fc-40e8-ad75-20711ee1e254",
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
              "uuid": "1d61cffb-5630-4402-bedd-5bd1859c4833",
              "parent_uuid": "9c28de38-e009-4f38-960e-35ffc3684481",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15a3d27a-6b36-4108-ac24-6db68886e8af",
                  "parent_uuid": "1d61cffb-5630-4402-bedd-5bd1859c4833",
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
              "uuid": "f4e75b1e-c449-4d99-92af-a461ae1e0591",
              "parent_uuid": "9c28de38-e009-4f38-960e-35ffc3684481",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0924a385-6c1c-47db-938e-8a33649bac1e",
                  "parent_uuid": "f4e75b1e-c449-4d99-92af-a461ae1e0591",
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
              "uuid": "d893a86e-5c83-4d6c-9d92-5103dfc5fec5",
              "parent_uuid": "9c28de38-e009-4f38-960e-35ffc3684481",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6fbcd2b-257f-4335-82a6-680bc57001be",
                  "parent_uuid": "d893a86e-5c83-4d6c-9d92-5103dfc5fec5",
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "72c618d9-1669-42c4-b8f0-1e6ef5dd633f",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a5b2fd55-8bd2-46b3-ac8d-1f303cc5dc1c",
              "parent_uuid": "72c618d9-1669-42c4-b8f0-1e6ef5dd633f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolierungsvorgang prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7d1692ac-b126-4577-aba1-49aa88c53a17",
              "parent_uuid": "72c618d9-1669-42c4-b8f0-1e6ef5dd633f",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9d192af6-4921-46e3-b9e2-97de2716ecc9",
              "parent_uuid": "72c618d9-1669-42c4-b8f0-1e6ef5dd633f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bc72afd-a53f-41f5-93ac-48b39d0c5f7c",
                  "parent_uuid": "9d192af6-4921-46e3-b9e2-97de2716ecc9",
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
              "uuid": "7fc7b5cf-ffb2-4ea7-9b81-d19b49608ef0",
              "parent_uuid": "72c618d9-1669-42c4-b8f0-1e6ef5dd633f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "703d0473-ea9f-4fd5-8c07-aed99e594f6f",
                  "parent_uuid": "7fc7b5cf-ffb2-4ea7-9b81-d19b49608ef0",
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
              "uuid": "b5bab69f-0234-4b4b-9f45-67e5a97fd39f",
              "parent_uuid": "72c618d9-1669-42c4-b8f0-1e6ef5dd633f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "405405b7-4a45-4e19-951d-fee7fecf4e3d",
                  "parent_uuid": "b5bab69f-0234-4b4b-9f45-67e5a97fd39f",
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
              "uuid": "9fac6a84-9fcb-4450-a173-5ee899fcd60c",
              "parent_uuid": "72c618d9-1669-42c4-b8f0-1e6ef5dd633f",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3119190-ea96-4804-84d3-f7e753928f0c",
                  "parent_uuid": "9fac6a84-9fcb-4450-a173-5ee899fcd60c",
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
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "660bdca0-9fc6-4b31-a1b5-cd2cb7597fba",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "790685e2-f40b-4203-aacf-26bcfcb30621",
              "parent_uuid": "660bdca0-9fc6-4b31-a1b5-cd2cb7597fba",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder- Saugluftüberwachung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fddd613a-914d-46ec-9c1a-dd47672fc3e2",
              "parent_uuid": "660bdca0-9fc6-4b31-a1b5-cd2cb7597fba",
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
              "innerHtml": "\r\n                    <span>124</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4ba1bcd7-c128-4703-ab40-422eedbc20a3",
              "parent_uuid": "660bdca0-9fc6-4b31-a1b5-cd2cb7597fba",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0890cfb-2efd-40a8-a192-2e82a51ac672",
                  "parent_uuid": "4ba1bcd7-c128-4703-ab40-422eedbc20a3",
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
              "uuid": "dbb0ae69-be3d-4269-8382-71ad21eaa991",
              "parent_uuid": "660bdca0-9fc6-4b31-a1b5-cd2cb7597fba",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "746bd99c-d4bc-47c4-9eae-d9013d4c0716",
                  "parent_uuid": "dbb0ae69-be3d-4269-8382-71ad21eaa991",
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
              "uuid": "7a8c71b7-2c0d-4736-a2e0-c00354faa7c9",
              "parent_uuid": "660bdca0-9fc6-4b31-a1b5-cd2cb7597fba",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "570fb683-4cf7-4e4d-ac4f-1d548f2998bf",
                  "parent_uuid": "7a8c71b7-2c0d-4736-a2e0-c00354faa7c9",
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
              "uuid": "4eb792ff-9cc2-4a58-a943-b03168597ccf",
              "parent_uuid": "660bdca0-9fc6-4b31-a1b5-cd2cb7597fba",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f02d187-6efe-4d84-9004-4ddc89e48f36",
                  "parent_uuid": "4eb792ff-9cc2-4a58-a943-b03168597ccf",
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
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "8c8f7e55-a0bb-4ea0-b5b4-f41e4fc432b4",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "daf65bd2-5ab1-44ef-a618-d8894aa37a57",
              "parent_uuid": "8c8f7e55-a0bb-4ea0-b5b4-f41e4fc432b4",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Sicherheitseinrichtung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "121977e9-45ca-48b9-8b71-53e64fc5db60",
              "parent_uuid": "8c8f7e55-a0bb-4ea0-b5b4-f41e4fc432b4",
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
              "innerHtml": "\r\n                    <span>91</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c1098776-0d11-486a-b912-9369a25f04ca",
              "parent_uuid": "8c8f7e55-a0bb-4ea0-b5b4-f41e4fc432b4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6948ec1c-87a3-4568-bf7d-ccde4e2f8ecb",
                  "parent_uuid": "c1098776-0d11-486a-b912-9369a25f04ca",
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
              "uuid": "6eb5ff90-dc05-429a-9098-3ab7ea50c313",
              "parent_uuid": "8c8f7e55-a0bb-4ea0-b5b4-f41e4fc432b4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6a26974-db24-4416-b734-42b604575dc3",
                  "parent_uuid": "6eb5ff90-dc05-429a-9098-3ab7ea50c313",
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
              "uuid": "c0285a80-ede0-4ba1-bf23-f3300ab68079",
              "parent_uuid": "8c8f7e55-a0bb-4ea0-b5b4-f41e4fc432b4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d091845-4b9b-4bec-ad64-c99522a40446",
                  "parent_uuid": "c0285a80-ede0-4ba1-bf23-f3300ab68079",
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
              "uuid": "813721e1-8466-440e-9506-9ec642157c5a",
              "parent_uuid": "8c8f7e55-a0bb-4ea0-b5b4-f41e4fc432b4",
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
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2244a9d4-cc20-49a5-83b7-746fde07bef7",
                  "parent_uuid": "813721e1-8466-440e-9506-9ec642157c5a",
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
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "9b683a59-19a5-426c-afcd-2205e2f246b7",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7ad8434-cd3c-4ffd-ab73-184a3513814d",
              "parent_uuid": "9b683a59-19a5-426c-afcd-2205e2f246b7",
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "67037a0f-6ae0-42f1-acd5-e14d41954a9a",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "250bb1c1-5a71-45c2-9fca-fad236571b70",
              "parent_uuid": "67037a0f-6ae0-42f1-acd5-e14d41954a9a",
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "e4f46f0f-df82-4c3a-9843-9427f084b1ce",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a35b4f20-1efa-4f56-b0cd-a04ecdce95aa",
              "parent_uuid": "e4f46f0f-df82-4c3a-9843-9427f084b1ce",
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
              "children": [
                {
                  "uuid": "f6fac450-032a-408d-a6ee-43b7e3f61322",
                  "parent_uuid": "a35b4f20-1efa-4f56-b0cd-a04ecdce95aa",
                  "tagName": "textarea",
                  "properties": [
                    [
                      "class",
                      "notes"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "f945836c-a354-4f13-bdd1-3366ec636cf9",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a8c7c99-6e3c-4998-9484-2d9220c32cb9",
              "parent_uuid": "f945836c-a354-4f13-bdd1-3366ec636cf9",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "8abb36f6-5984-4834-8439-74bf9a614282",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "127252c7-37b2-4f31-b743-7d2fe85ce883",
              "parent_uuid": "8abb36f6-5984-4834-8439-74bf9a614282",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Benötigte Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "a48d8de4-cb03-4b95-9e2d-dac3434b1d27",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "753d6758-6b2e-4e30-9c13-67c43cbbc7a9",
              "parent_uuid": "a48d8de4-cb03-4b95-9e2d-dac3434b1d27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3977918c-6750-4364-886b-00d3abd20db1",
              "parent_uuid": "a48d8de4-cb03-4b95-9e2d-dac3434b1d27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikelnummer</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c8887005-3ce6-4871-a265-6ea5acb233b8",
              "parent_uuid": "a48d8de4-cb03-4b95-9e2d-dac3434b1d27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Anzahl</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "218e5689-6ad7-400e-a149-0daa1502e443",
              "parent_uuid": "a48d8de4-cb03-4b95-9e2d-dac3434b1d27",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Lagerort</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "23f2f201-0463-40c2-9e2e-094fb1db823a",
              "parent_uuid": "a48d8de4-cb03-4b95-9e2d-dac3434b1d27",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "e743ae90-c2b1-47fa-83bc-a4efb67043fe",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be03f7c0-a7af-44bb-b2a0-68cd64a67ab4",
              "parent_uuid": "e743ae90-c2b1-47fa-83bc-a4efb67043fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2842 (M276)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4f679e0b-34bf-4075-a9ff-47aac93e41a9",
              "parent_uuid": "e743ae90-c2b1-47fa-83bc-a4efb67043fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 720 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "df690084-37f3-4917-8793-9660c992a63e",
              "parent_uuid": "e743ae90-c2b1-47fa-83bc-a4efb67043fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "db64614a-3682-448d-bc36-5f41da929d10",
              "parent_uuid": "e743ae90-c2b1-47fa-83bc-a4efb67043fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G04</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "4c4d2204-98c8-4024-8ade-28ffed544843",
              "parent_uuid": "e743ae90-c2b1-47fa-83bc-a4efb67043fe",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "342eeafb-124f-47dd-8720-3ed5f768c32a",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98c63eba-9cc9-49c4-8d0b-794704e851ac",
              "parent_uuid": "342eeafb-124f-47dd-8720-3ed5f768c32a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2510</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b6b8732f-fd4d-46a2-8e38-dc4e5b2fdccf",
              "parent_uuid": "342eeafb-124f-47dd-8720-3ed5f768c32a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>146 605 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "060fbd2c-1658-491f-a0a3-4e469f57f73f",
              "parent_uuid": "342eeafb-124f-47dd-8720-3ed5f768c32a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "69502cd0-fbfa-4bf7-88b3-dd916e0adf13",
              "parent_uuid": "342eeafb-124f-47dd-8720-3ed5f768c32a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 H01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "00be883e-6b6f-4e69-ab67-d736eefc5dd6",
              "parent_uuid": "342eeafb-124f-47dd-8720-3ed5f768c32a",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "e79c5e12-33a1-4f3d-b7f6-ab3ce43bd6e8",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1ca93a69-0f74-4d5b-b10c-c5289d90b842",
              "parent_uuid": "e79c5e12-33a1-4f3d-b7f6-ab3ce43bd6e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2233 (M274)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "49ee742e-0ce8-4949-bf62-66e36e80cd2a",
              "parent_uuid": "e79c5e12-33a1-4f3d-b7f6-ab3ce43bd6e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 718 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1a8224f4-9b18-4dd2-89ed-016f42a5392d",
              "parent_uuid": "e79c5e12-33a1-4f3d-b7f6-ab3ce43bd6e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "59bfa5fc-2df4-4d9f-bf09-52e9bcd1cd63",
              "parent_uuid": "e79c5e12-33a1-4f3d-b7f6-ab3ce43bd6e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b6b5c62b-a366-4de5-8e69-052724d3f33d",
              "parent_uuid": "e79c5e12-33a1-4f3d-b7f6-ab3ce43bd6e8",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "c07af888-df1e-4ecd-ba98-4fd688d87879",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fc1428e-ed06-478e-bddc-9d7c6a0596d5",
              "parent_uuid": "c07af888-df1e-4ecd-ba98-4fd688d87879",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 1707 (M275)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "738c3b7a-8753-47d4-a440-f0a98ee44561",
              "parent_uuid": "c07af888-df1e-4ecd-ba98-4fd688d87879",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 719 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "28e958b9-a0c4-4332-a931-9797f9171112",
              "parent_uuid": "c07af888-df1e-4ecd-ba98-4fd688d87879",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c554e16c-b4b1-425d-a70e-7836c84bc23d",
              "parent_uuid": "c07af888-df1e-4ecd-ba98-4fd688d87879",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "fe0c659d-2676-4069-a06a-b60b8d591f23",
              "parent_uuid": "c07af888-df1e-4ecd-ba98-4fd688d87879",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "18226598-1106-4a85-9438-2a9772cb7d57",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8992f36-2672-45e1-839a-2f5faf21e01e",
              "parent_uuid": "18226598-1106-4a85-9438-2a9772cb7d57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M279)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d275db5b-83d6-42bd-b918-49e9eea63311",
              "parent_uuid": "18226598-1106-4a85-9438-2a9772cb7d57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>156 537 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "84e0f3ba-eba0-4b3e-8860-2e2b6eeeb0f7",
              "parent_uuid": "18226598-1106-4a85-9438-2a9772cb7d57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e3cdb7ac-548e-414f-abe3-acbabe08ae26",
              "parent_uuid": "18226598-1106-4a85-9438-2a9772cb7d57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "4f22589b-dbb9-46db-8ea7-c81074b553f6",
              "parent_uuid": "18226598-1106-4a85-9438-2a9772cb7d57",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "9f963071-29a1-4785-b0c1-a7aa8fdd1d6c",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d20e36d3-adf9-4c37-8964-7b1196a79567",
              "parent_uuid": "9f963071-29a1-4785-b0c1-a7aa8fdd1d6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 236 (M269)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "793d5921-bb74-4497-a534-a06a503cbf2f",
              "parent_uuid": "9f963071-29a1-4785-b0c1-a7aa8fdd1d6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    s<span>174 264 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ae21e7b5-8248-4cec-b488-e08b52d62d40",
              "parent_uuid": "9f963071-29a1-4785-b0c1-a7aa8fdd1d6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "585d0921-f882-4b99-8909-7c1bc0b8c75a",
              "parent_uuid": "9f963071-29a1-4785-b0c1-a7aa8fdd1d6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F03</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a176d787-7cd2-4cf3-9bce-066bcdb9651b",
              "parent_uuid": "9f963071-29a1-4785-b0c1-a7aa8fdd1d6c",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "41441a15-9633-4050-9d4a-5e64f2c381d9",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1418f9e-e880-4992-bbe0-2a4796942e0f",
              "parent_uuid": "41441a15-9633-4050-9d4a-5e64f2c381d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Klemmrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "28161368-f88c-4cf3-8a3b-cc212c74c408",
              "parent_uuid": "41441a15-9633-4050-9d4a-5e64f2c381d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>272 900 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "924d23fa-ca5f-4ebd-bd42-177a2bb394f8",
              "parent_uuid": "41441a15-9633-4050-9d4a-5e64f2c381d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e4701d71-8396-4635-bee9-92c866e6eeb0",
              "parent_uuid": "41441a15-9633-4050-9d4a-5e64f2c381d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E06</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "146cb22c-62ac-4981-ace4-f5c0200d211b",
              "parent_uuid": "41441a15-9633-4050-9d4a-5e64f2c381d9",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "1fbed127-e73f-4f35-b393-75d78d1f5c3a",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b68e5d3-98bd-406f-be83-a6e274bfe450",
              "parent_uuid": "1fbed127-e73f-4f35-b393-75d78d1f5c3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Kugellager 6001-2RSH</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "86f47283-d8f7-49c3-9e95-ca980fd55bcb",
              "parent_uuid": "1fbed127-e73f-4f35-b393-75d78d1f5c3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>188 512 000</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "97022a71-a1f9-406a-8450-e023bcd07af5",
              "parent_uuid": "1fbed127-e73f-4f35-b393-75d78d1f5c3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d3d54f63-2a14-4871-babc-f25bdd87717e",
              "parent_uuid": "1fbed127-e73f-4f35-b393-75d78d1f5c3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E12</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "79ae4768-dd5e-4b1b-8ff9-7074864231d1",
              "parent_uuid": "1fbed127-e73f-4f35-b393-75d78d1f5c3a",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "4ccd5c0a-1cc3-4fae-b79d-fb783ceb354f",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d82480d-2c84-4512-a399-2231e1bd8244",
              "parent_uuid": "4ccd5c0a-1cc3-4fae-b79d-fb783ceb354f",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "4da5b1ea-9762-4630-a5f5-a3abb04297d7",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "93316311-01d1-4c64-976c-d78e50e15242",
              "parent_uuid": "4da5b1ea-9762-4630-a5f5-a3abb04297d7",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
                ],
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "c7e66ab4-e792-4e2a-84ca-f1cea498a126",
          "parent_uuid": "b5718097-9592-4ca5-8ae5-ddfc37b2fa54",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8ee655bc-621e-4b16-a40f-a44fd40d737a",
              "parent_uuid": "c7e66ab4-e792-4e2a-84ca-f1cea498a126",
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
              "children": [
                {
                  "uuid": "3bbfbd0a-ce1c-4a59-af58-95f2f0f7c390",
                  "parent_uuid": "8ee655bc-621e-4b16-a40f-a44fd40d737a",
                  "tagName": "textarea",
                  "properties": [
                    [
                      "class",
                      "notes"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 56,
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
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
		,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

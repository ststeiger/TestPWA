
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
  "uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "d89b7701-e28d-4507-a4d7-fede4d1c8f46",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "820271d5-ca0c-4315-be82-13e0021320b2",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "c3cf9e94-9995-4d56-ab52-17a6f6f3f301",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "aea1f858-bdd0-4677-816d-af2a8dfb90eb",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "123f1c08-751c-4aa1-be55-bb1f3f058fc1",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "03769e08-cb03-493e-bdec-81725ceb0c62",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "74268a0a-984b-4210-b0a1-c6dd1cdae439",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
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
      "uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
      "parent_uuid": "cb1e88de-db9f-4892-b96c-f412c533e716",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6759d153-a51e-4672-84f8-cc070358f42b",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "44c9f985-8b02-427f-8e88-56562c85267a",
              "parent_uuid": "6759d153-a51e-4672-84f8-cc070358f42b",
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
              "uuid": "cd387026-e2e3-484e-badc-a0ed78b210c0",
              "parent_uuid": "6759d153-a51e-4672-84f8-cc070358f42b",
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
              "uuid": "10744f8b-8e4f-473b-af2e-dd0bcd10a988",
              "parent_uuid": "6759d153-a51e-4672-84f8-cc070358f42b",
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
              "uuid": "79eae1b3-07a5-4bc3-b0f1-0f537507e5d4",
              "parent_uuid": "6759d153-a51e-4672-84f8-cc070358f42b",
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
          "uuid": "67db58d1-84de-4443-addc-d0853732abb9",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "5d80654e-73b7-427f-a924-100746b3777a",
              "parent_uuid": "67db58d1-84de-4443-addc-d0853732abb9",
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
              "uuid": "5247b486-69db-4c57-9baf-d65bb874f5bb",
              "parent_uuid": "67db58d1-84de-4443-addc-d0853732abb9",
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
              "uuid": "c30800fc-17e0-4cbb-95b6-7a8d83ed8001",
              "parent_uuid": "67db58d1-84de-4443-addc-d0853732abb9",
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
              "uuid": "326628b9-6a3d-4f76-aaad-3c2844e4a209",
              "parent_uuid": "67db58d1-84de-4443-addc-d0853732abb9",
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
          "uuid": "af9a979e-5930-4823-94a7-cd9469727032",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "38285532-5cc1-4f23-945a-221f2d747aa7",
              "parent_uuid": "af9a979e-5930-4823-94a7-cd9469727032",
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
              "uuid": "20beaee7-c167-41e2-94a3-77f2f11f191c",
              "parent_uuid": "af9a979e-5930-4823-94a7-cd9469727032",
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
              "uuid": "41b3ba99-2f04-4e35-9a63-e0249f90d644",
              "parent_uuid": "af9a979e-5930-4823-94a7-cd9469727032",
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
              "uuid": "6f3d4850-5f82-47b5-9a05-76751c5ac46d",
              "parent_uuid": "af9a979e-5930-4823-94a7-cd9469727032",
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
          "uuid": "941fd393-4887-4d6b-b305-3fc7ccc150fb",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c36ce413-84e5-4e97-9b92-a8be726299de",
              "parent_uuid": "941fd393-4887-4d6b-b305-3fc7ccc150fb",
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
              "uuid": "e63e144d-db49-4359-a279-ee50404c1e4e",
              "parent_uuid": "941fd393-4887-4d6b-b305-3fc7ccc150fb",
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
              "uuid": "b79da65d-7e41-4c97-9bc3-b86f13a8141f",
              "parent_uuid": "941fd393-4887-4d6b-b305-3fc7ccc150fb",
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
              "uuid": "ee67635c-2c17-4480-b2e4-227886ab0da6",
              "parent_uuid": "941fd393-4887-4d6b-b305-3fc7ccc150fb",
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
              "uuid": "27426853-c91d-4857-ba93-73b324d69cff",
              "parent_uuid": "941fd393-4887-4d6b-b305-3fc7ccc150fb",
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
              "uuid": "4023cef3-a955-4af1-b020-bfdf75ed7ac0",
              "parent_uuid": "941fd393-4887-4d6b-b305-3fc7ccc150fb",
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
          "uuid": "8b9d0947-3f59-4940-a6a1-255ce0c01f39",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "63d25d3e-0bb9-4791-8f0d-9f703624d08c",
              "parent_uuid": "8b9d0947-3f59-4940-a6a1-255ce0c01f39",
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
          "uuid": "ee687470-05ac-45b6-bd69-5cacdf8f6bf1",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3978253-af66-40df-90f2-cf348e41dfba",
              "parent_uuid": "ee687470-05ac-45b6-bd69-5cacdf8f6bf1",
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
              "uuid": "935a9434-d0b5-4a94-a997-4916a5ed1b80",
              "parent_uuid": "ee687470-05ac-45b6-bd69-5cacdf8f6bf1",
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
              "uuid": "66102d7e-0ad7-42c8-aded-2a463c4fd092",
              "parent_uuid": "ee687470-05ac-45b6-bd69-5cacdf8f6bf1",
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
                  "uuid": "60d64fd9-721b-4f9e-b130-c80b0f927557",
                  "parent_uuid": "66102d7e-0ad7-42c8-aded-2a463c4fd092",
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
              "uuid": "7a667af0-dcfe-4ceb-87d5-7176b3943c6e",
              "parent_uuid": "ee687470-05ac-45b6-bd69-5cacdf8f6bf1",
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
                  "uuid": "b92b9ea9-6377-4992-a50b-c4755631298a",
                  "parent_uuid": "7a667af0-dcfe-4ceb-87d5-7176b3943c6e",
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
              "uuid": "ad7443b8-ecc2-4c0d-b0cb-d9d2bf03be43",
              "parent_uuid": "ee687470-05ac-45b6-bd69-5cacdf8f6bf1",
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
                  "uuid": "cbaa8de1-78b7-4a06-bcb2-4e0a1b2305ac",
                  "parent_uuid": "ad7443b8-ecc2-4c0d-b0cb-d9d2bf03be43",
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
              "uuid": "b01db64e-6c15-4df1-bbab-006861464afc",
              "parent_uuid": "ee687470-05ac-45b6-bd69-5cacdf8f6bf1",
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
                  "uuid": "34888edd-60c2-4982-96c2-afe417738b43",
                  "parent_uuid": "b01db64e-6c15-4df1-bbab-006861464afc",
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
          "uuid": "cfc30635-42b2-4686-834f-601e9d5299d5",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2eb7d009-6ad9-40df-ba2f-3800ca2bdf25",
              "parent_uuid": "cfc30635-42b2-4686-834f-601e9d5299d5",
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
              "uuid": "17f4ced1-c180-4ba9-9283-1869ba1c9247",
              "parent_uuid": "cfc30635-42b2-4686-834f-601e9d5299d5",
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
              "uuid": "4e066b38-c49d-49a6-b63a-67c89dc40ce9",
              "parent_uuid": "cfc30635-42b2-4686-834f-601e9d5299d5",
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
                  "uuid": "133cadf5-90e0-42d6-91b7-7a49816b8288",
                  "parent_uuid": "4e066b38-c49d-49a6-b63a-67c89dc40ce9",
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
              "uuid": "7b2e47fa-caed-45dd-8996-497ecd4ed440",
              "parent_uuid": "cfc30635-42b2-4686-834f-601e9d5299d5",
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
                  "uuid": "78513652-7a66-4d58-9562-63d34dc15cb2",
                  "parent_uuid": "7b2e47fa-caed-45dd-8996-497ecd4ed440",
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
              "uuid": "84ef4dbc-0885-455a-aed1-474e99beae35",
              "parent_uuid": "cfc30635-42b2-4686-834f-601e9d5299d5",
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
                  "uuid": "a90d9123-c750-44c3-9009-01a2df0ca3b7",
                  "parent_uuid": "84ef4dbc-0885-455a-aed1-474e99beae35",
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
              "uuid": "614bf743-c2e3-487e-b77e-dc55541cd4ba",
              "parent_uuid": "cfc30635-42b2-4686-834f-601e9d5299d5",
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
                  "uuid": "66318d13-465b-4e71-9a3b-d008c7655dd4",
                  "parent_uuid": "614bf743-c2e3-487e-b77e-dc55541cd4ba",
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
          "uuid": "b17567cc-ff85-42aa-b860-74ff920d33b9",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4eaa60bf-40ce-426a-a352-23bf3268da83",
              "parent_uuid": "b17567cc-ff85-42aa-b860-74ff920d33b9",
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
              "uuid": "e8532ac3-3946-4548-85c0-9badf1f2d129",
              "parent_uuid": "b17567cc-ff85-42aa-b860-74ff920d33b9",
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
              "uuid": "44fb8845-47d7-4760-a376-761c59aef8d0",
              "parent_uuid": "b17567cc-ff85-42aa-b860-74ff920d33b9",
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
                  "uuid": "60ff329f-b2f0-4684-96a0-4c7544fa4e74",
                  "parent_uuid": "44fb8845-47d7-4760-a376-761c59aef8d0",
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
              "uuid": "891adad1-5cdf-49ad-9b8a-20c74b1d528f",
              "parent_uuid": "b17567cc-ff85-42aa-b860-74ff920d33b9",
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
                  "uuid": "6a449b0f-988d-4c36-88bf-3f4b497cbdc2",
                  "parent_uuid": "891adad1-5cdf-49ad-9b8a-20c74b1d528f",
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
              "uuid": "9b083541-3a26-49f4-be7c-a7aae4adad3e",
              "parent_uuid": "b17567cc-ff85-42aa-b860-74ff920d33b9",
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
                  "uuid": "a2906912-cdec-4e1b-91cf-0ae21227dbf9",
                  "parent_uuid": "9b083541-3a26-49f4-be7c-a7aae4adad3e",
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
              "uuid": "8f41a4d0-9445-46df-97f1-73c82a75678c",
              "parent_uuid": "b17567cc-ff85-42aa-b860-74ff920d33b9",
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
                  "uuid": "27c22ffa-e8d9-4249-ad09-e8ee0bd594a1",
                  "parent_uuid": "8f41a4d0-9445-46df-97f1-73c82a75678c",
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
          "uuid": "a7d3a868-8d37-4052-8403-fcd3bbbf5048",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "017e5f64-37fe-48ed-a565-77e92eec6a2b",
              "parent_uuid": "a7d3a868-8d37-4052-8403-fcd3bbbf5048",
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
              "uuid": "a2cb8b3a-f6bb-441c-8384-6d0aded0dc0f",
              "parent_uuid": "a7d3a868-8d37-4052-8403-fcd3bbbf5048",
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
              "uuid": "f2db32e3-2ad5-4ef9-bd54-f75e86d91f48",
              "parent_uuid": "a7d3a868-8d37-4052-8403-fcd3bbbf5048",
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
                  "uuid": "0d584c87-c754-4b46-9517-863f1d70dce8",
                  "parent_uuid": "f2db32e3-2ad5-4ef9-bd54-f75e86d91f48",
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
              "uuid": "1534f85f-d77c-4075-8be0-993e378cf9e9",
              "parent_uuid": "a7d3a868-8d37-4052-8403-fcd3bbbf5048",
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
                  "uuid": "a742fb02-6f05-46fb-87be-6945c88daf18",
                  "parent_uuid": "1534f85f-d77c-4075-8be0-993e378cf9e9",
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
              "uuid": "bfae354b-33dd-4294-b396-decc6cd913b2",
              "parent_uuid": "a7d3a868-8d37-4052-8403-fcd3bbbf5048",
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
                  "uuid": "2b8219b9-f6e3-4a8f-9b50-2776a697f0cd",
                  "parent_uuid": "bfae354b-33dd-4294-b396-decc6cd913b2",
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
              "uuid": "32ab9f9c-c9aa-4f00-8db5-d2675d5ca5a9",
              "parent_uuid": "a7d3a868-8d37-4052-8403-fcd3bbbf5048",
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
                  "uuid": "e5f1b2bc-ae81-4721-9530-7794e0b5bca7",
                  "parent_uuid": "32ab9f9c-c9aa-4f00-8db5-d2675d5ca5a9",
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
          "uuid": "be3ab456-78fb-4a88-b307-82149890cf15",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96016d8e-6cb3-4052-b13a-77dc1cd53f9a",
              "parent_uuid": "be3ab456-78fb-4a88-b307-82149890cf15",
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
              "uuid": "1216f1ac-e2a6-484d-a7f7-a9d316378599",
              "parent_uuid": "be3ab456-78fb-4a88-b307-82149890cf15",
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
              "uuid": "fb0e6e0f-9c91-4cae-84a2-7bb368fd692f",
              "parent_uuid": "be3ab456-78fb-4a88-b307-82149890cf15",
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
                  "uuid": "e30950b4-b3c9-4afc-9ec9-fa519c547392",
                  "parent_uuid": "fb0e6e0f-9c91-4cae-84a2-7bb368fd692f",
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
              "uuid": "e05ffe74-5293-410e-b8c3-38b5796e44ce",
              "parent_uuid": "be3ab456-78fb-4a88-b307-82149890cf15",
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
                  "uuid": "98b56ff7-2562-4f4e-a9f7-158bba3876ce",
                  "parent_uuid": "e05ffe74-5293-410e-b8c3-38b5796e44ce",
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
              "uuid": "194b3faa-6741-4edf-85a4-9605452001da",
              "parent_uuid": "be3ab456-78fb-4a88-b307-82149890cf15",
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
                  "uuid": "73d4be63-e3be-4f84-8fd6-c4850272b325",
                  "parent_uuid": "194b3faa-6741-4edf-85a4-9605452001da",
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
              "uuid": "29a7481f-4050-4c72-8fe1-0cefee914f8b",
              "parent_uuid": "be3ab456-78fb-4a88-b307-82149890cf15",
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
                  "uuid": "ef7a51ca-1206-41ba-94dc-4c956a0ce8cd",
                  "parent_uuid": "29a7481f-4050-4c72-8fe1-0cefee914f8b",
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
          "uuid": "04aa32bd-8798-47ae-9a9a-12261a9ca585",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a409878c-edd9-4b55-9b12-11160992aeb9",
              "parent_uuid": "04aa32bd-8798-47ae-9a9a-12261a9ca585",
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
              "uuid": "bbce3859-0c19-4827-b99d-d32557441d3d",
              "parent_uuid": "04aa32bd-8798-47ae-9a9a-12261a9ca585",
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
              "uuid": "5e99ea23-82f7-46c7-a2dd-7fac441308ff",
              "parent_uuid": "04aa32bd-8798-47ae-9a9a-12261a9ca585",
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
                  "uuid": "399963b8-6901-4377-aff1-bb35c585a980",
                  "parent_uuid": "5e99ea23-82f7-46c7-a2dd-7fac441308ff",
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
              "uuid": "d9433e06-983c-41c5-941b-bb06e0e997c7",
              "parent_uuid": "04aa32bd-8798-47ae-9a9a-12261a9ca585",
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
                  "uuid": "d1b383a4-7e34-45a4-8386-daae7f809b74",
                  "parent_uuid": "d9433e06-983c-41c5-941b-bb06e0e997c7",
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
              "uuid": "e559c4ed-6b75-47f7-9acb-9b09d6dec944",
              "parent_uuid": "04aa32bd-8798-47ae-9a9a-12261a9ca585",
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
                  "uuid": "39ec4754-bd2a-44b7-bbda-1b557cc39739",
                  "parent_uuid": "e559c4ed-6b75-47f7-9acb-9b09d6dec944",
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
              "uuid": "20e2a6dd-dddd-495c-9d48-6e0f9e4131dd",
              "parent_uuid": "04aa32bd-8798-47ae-9a9a-12261a9ca585",
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
                  "uuid": "b32e35d5-f919-4e40-8a41-459f9495b311",
                  "parent_uuid": "20e2a6dd-dddd-495c-9d48-6e0f9e4131dd",
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
          "uuid": "cd056abd-8d1b-4c8c-be13-b1d2c7f4a40d",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "414a45b4-1f36-4feb-aec2-b0cc683be611",
              "parent_uuid": "cd056abd-8d1b-4c8c-be13-b1d2c7f4a40d",
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
              "uuid": "fe813b62-8d44-4046-aecb-875ae8bf36a7",
              "parent_uuid": "cd056abd-8d1b-4c8c-be13-b1d2c7f4a40d",
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
              "uuid": "09cd1723-a03c-446f-b053-ace8f3a819ed",
              "parent_uuid": "cd056abd-8d1b-4c8c-be13-b1d2c7f4a40d",
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
                  "uuid": "d71a48f6-40bb-452f-a3f8-ed6393633bd1",
                  "parent_uuid": "09cd1723-a03c-446f-b053-ace8f3a819ed",
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
              "uuid": "ea91c606-11d8-42d7-b035-53b089754707",
              "parent_uuid": "cd056abd-8d1b-4c8c-be13-b1d2c7f4a40d",
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
                  "uuid": "76e15065-80d4-4ae8-ac08-0acc64220b79",
                  "parent_uuid": "ea91c606-11d8-42d7-b035-53b089754707",
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
              "uuid": "0cd2b801-ae56-46da-8783-3c13d9618617",
              "parent_uuid": "cd056abd-8d1b-4c8c-be13-b1d2c7f4a40d",
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
                  "uuid": "fce49cc1-5cc2-40ba-bd11-3b3099084552",
                  "parent_uuid": "0cd2b801-ae56-46da-8783-3c13d9618617",
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
              "uuid": "f98c307f-c5c4-47b8-8c2d-235dd3fbfa39",
              "parent_uuid": "cd056abd-8d1b-4c8c-be13-b1d2c7f4a40d",
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
                  "uuid": "23a8c5f8-f12e-4199-993f-5e742b816453",
                  "parent_uuid": "f98c307f-c5c4-47b8-8c2d-235dd3fbfa39",
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
          "uuid": "491a9eda-17c3-4cff-9ace-368c6460bcd0",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c7039f8-13b9-4438-8c2b-ac34e5886548",
              "parent_uuid": "491a9eda-17c3-4cff-9ace-368c6460bcd0",
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
              "uuid": "87f2962b-ff8a-4c1d-a69e-abc56c9b5840",
              "parent_uuid": "491a9eda-17c3-4cff-9ace-368c6460bcd0",
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
              "uuid": "3e9608d1-a0be-4536-8f39-811f70069238",
              "parent_uuid": "491a9eda-17c3-4cff-9ace-368c6460bcd0",
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
                  "uuid": "d9eb58e9-cb77-4d1c-8f21-e78de245273d",
                  "parent_uuid": "3e9608d1-a0be-4536-8f39-811f70069238",
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
              "uuid": "69b96b89-d0ee-4813-b62d-42d35a05dec1",
              "parent_uuid": "491a9eda-17c3-4cff-9ace-368c6460bcd0",
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
                  "uuid": "91acbdb6-80d6-408e-b140-f9ad0d1ef81a",
                  "parent_uuid": "69b96b89-d0ee-4813-b62d-42d35a05dec1",
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
              "uuid": "465f4594-f4ec-4a64-bb2c-03bb97f9c4b3",
              "parent_uuid": "491a9eda-17c3-4cff-9ace-368c6460bcd0",
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
                  "uuid": "866e6957-a25f-4711-8033-b96f393dadfd",
                  "parent_uuid": "465f4594-f4ec-4a64-bb2c-03bb97f9c4b3",
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
              "uuid": "b0d9a612-d1fb-486b-88d8-97b642c5b706",
              "parent_uuid": "491a9eda-17c3-4cff-9ace-368c6460bcd0",
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
                  "uuid": "7a718702-eafd-4f65-8810-1e199ede5bc6",
                  "parent_uuid": "b0d9a612-d1fb-486b-88d8-97b642c5b706",
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
          "uuid": "cf4ab23f-6c6f-4fb2-83e3-3ec9512e9f84",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6774b206-917e-4bf3-a0ca-11665974d07b",
              "parent_uuid": "cf4ab23f-6c6f-4fb2-83e3-3ec9512e9f84",
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
              "uuid": "ce3fc634-d0cd-42f0-b541-5ee16a873428",
              "parent_uuid": "cf4ab23f-6c6f-4fb2-83e3-3ec9512e9f84",
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
              "uuid": "66fd6606-dcef-40d8-b62f-d2f4204ba7eb",
              "parent_uuid": "cf4ab23f-6c6f-4fb2-83e3-3ec9512e9f84",
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
                  "uuid": "257276f4-999d-4d92-b366-01706f245cc3",
                  "parent_uuid": "66fd6606-dcef-40d8-b62f-d2f4204ba7eb",
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
              "uuid": "7242ecf9-4acb-4e89-99f3-fe2c671ffb9b",
              "parent_uuid": "cf4ab23f-6c6f-4fb2-83e3-3ec9512e9f84",
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
                  "uuid": "83f83ed9-5e1d-4be4-83f4-114094f72e94",
                  "parent_uuid": "7242ecf9-4acb-4e89-99f3-fe2c671ffb9b",
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
              "uuid": "eea6518c-b97b-47ec-a629-a3b9ab1dc55f",
              "parent_uuid": "cf4ab23f-6c6f-4fb2-83e3-3ec9512e9f84",
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
                  "uuid": "bb43f7ad-09a0-4b17-b254-7ef3655eea77",
                  "parent_uuid": "eea6518c-b97b-47ec-a629-a3b9ab1dc55f",
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
              "uuid": "bc0b9445-fc9b-4431-8bd4-3c865114b1b5",
              "parent_uuid": "cf4ab23f-6c6f-4fb2-83e3-3ec9512e9f84",
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
                  "uuid": "b6c8a57f-258a-4f33-be43-23322965e83d",
                  "parent_uuid": "bc0b9445-fc9b-4431-8bd4-3c865114b1b5",
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
          "uuid": "ebbef26f-370c-4f7f-b979-170b289f597a",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d0e55b2-0168-4838-a364-0ac3caafcde7",
              "parent_uuid": "ebbef26f-370c-4f7f-b979-170b289f597a",
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
              "uuid": "02e5a431-1ad7-4a5c-8644-f8c755ea7225",
              "parent_uuid": "ebbef26f-370c-4f7f-b979-170b289f597a",
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
              "uuid": "eaa8d8f4-873f-4a19-994c-b15669628ac4",
              "parent_uuid": "ebbef26f-370c-4f7f-b979-170b289f597a",
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
                  "uuid": "727f6173-56ab-4b91-ad00-f01debb856bd",
                  "parent_uuid": "eaa8d8f4-873f-4a19-994c-b15669628ac4",
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
              "uuid": "b1408bfb-fe2d-4e46-a933-75b1ee1aa9c4",
              "parent_uuid": "ebbef26f-370c-4f7f-b979-170b289f597a",
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
                  "uuid": "561f0cd8-ca92-4f2b-847c-d25049459b99",
                  "parent_uuid": "b1408bfb-fe2d-4e46-a933-75b1ee1aa9c4",
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
              "uuid": "d2dc943c-126a-4a32-b524-af59ec0c1fb2",
              "parent_uuid": "ebbef26f-370c-4f7f-b979-170b289f597a",
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
                  "uuid": "5c835768-6db8-47c7-9abe-c7274a37d9ee",
                  "parent_uuid": "d2dc943c-126a-4a32-b524-af59ec0c1fb2",
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
              "uuid": "bc5f6318-c3c4-44e3-a12c-51a6b33d7bfe",
              "parent_uuid": "ebbef26f-370c-4f7f-b979-170b289f597a",
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
                  "uuid": "75b76504-3dc5-4ac7-90ee-652e363bc695",
                  "parent_uuid": "bc5f6318-c3c4-44e3-a12c-51a6b33d7bfe",
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
          "uuid": "4e32624d-9043-4532-8339-d407874e0808",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02ca1e15-7d5a-431c-b7d7-6e541f3c37eb",
              "parent_uuid": "4e32624d-9043-4532-8339-d407874e0808",
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
              "uuid": "af9299b5-05f9-4b30-a6e1-67e8ed8c2bd4",
              "parent_uuid": "4e32624d-9043-4532-8339-d407874e0808",
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
              "uuid": "f7b72a1f-dc61-44d3-ae9d-50b9e7a25ffe",
              "parent_uuid": "4e32624d-9043-4532-8339-d407874e0808",
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
                  "uuid": "ea32f104-c523-4dbb-94c2-3142d4a24bb0",
                  "parent_uuid": "f7b72a1f-dc61-44d3-ae9d-50b9e7a25ffe",
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
              "uuid": "5876eea0-9ce9-45bd-8e8a-742561c9214b",
              "parent_uuid": "4e32624d-9043-4532-8339-d407874e0808",
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
                  "uuid": "6b59f214-00a5-43ea-b655-af185ad87718",
                  "parent_uuid": "5876eea0-9ce9-45bd-8e8a-742561c9214b",
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
              "uuid": "fd2086a8-878f-4177-91dd-d6832039040a",
              "parent_uuid": "4e32624d-9043-4532-8339-d407874e0808",
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
                  "uuid": "9e881ed9-d3b8-443a-85c6-2f82dd5074a8",
                  "parent_uuid": "fd2086a8-878f-4177-91dd-d6832039040a",
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
              "uuid": "731d8f3f-ff33-4010-bd09-effd02e1f71c",
              "parent_uuid": "4e32624d-9043-4532-8339-d407874e0808",
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
                  "uuid": "7d205d89-bf09-4215-a851-ed4efee3754b",
                  "parent_uuid": "731d8f3f-ff33-4010-bd09-effd02e1f71c",
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
          "uuid": "e9bfd2d9-2f5e-43fc-b78b-4dc6bf16fff1",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75bbc606-79df-4583-9af7-ee43a1eaefc2",
              "parent_uuid": "e9bfd2d9-2f5e-43fc-b78b-4dc6bf16fff1",
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
              "uuid": "fba41a56-409d-4ddf-8689-c2c6d4f37893",
              "parent_uuid": "e9bfd2d9-2f5e-43fc-b78b-4dc6bf16fff1",
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
              "uuid": "c290b7c6-7a76-4eac-8715-244e49567eeb",
              "parent_uuid": "e9bfd2d9-2f5e-43fc-b78b-4dc6bf16fff1",
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
                  "uuid": "cf294df2-a1d2-4d84-ba0b-356abc1a4b72",
                  "parent_uuid": "c290b7c6-7a76-4eac-8715-244e49567eeb",
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
              "uuid": "94d7a9e2-09f6-4c04-8111-ae831d1d1227",
              "parent_uuid": "e9bfd2d9-2f5e-43fc-b78b-4dc6bf16fff1",
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
                  "uuid": "e28bfaa7-e7e1-471b-8fe5-1a2cba94cedb",
                  "parent_uuid": "94d7a9e2-09f6-4c04-8111-ae831d1d1227",
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
              "uuid": "df24b5ed-ab6c-45d9-a6f0-3f673b5c80c1",
              "parent_uuid": "e9bfd2d9-2f5e-43fc-b78b-4dc6bf16fff1",
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
                  "uuid": "a7d708c7-f370-48d2-bdc4-e125a3767e11",
                  "parent_uuid": "df24b5ed-ab6c-45d9-a6f0-3f673b5c80c1",
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
              "uuid": "30dff73f-b75f-416c-ba0b-c82831508545",
              "parent_uuid": "e9bfd2d9-2f5e-43fc-b78b-4dc6bf16fff1",
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
                  "uuid": "1f8fcc2d-4ac0-4cc5-b6b1-53f07517170c",
                  "parent_uuid": "30dff73f-b75f-416c-ba0b-c82831508545",
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
          "uuid": "5d1ac595-0046-48f0-993b-15a637f6bd7c",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a214f6c7-ef76-4f32-bc6f-9a7218fdd5a5",
              "parent_uuid": "5d1ac595-0046-48f0-993b-15a637f6bd7c",
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
          "uuid": "bbd1aa87-cc6f-42f5-9d30-53bf887c3c88",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f045f372-ce94-43ef-b3b1-63306c59465a",
              "parent_uuid": "bbd1aa87-cc6f-42f5-9d30-53bf887c3c88",
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
          "uuid": "254c2482-3de8-4420-b607-9b4ae69ce6d0",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae672c22-4f8f-478d-8abc-0032f32c4a24",
              "parent_uuid": "254c2482-3de8-4420-b607-9b4ae69ce6d0",
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
                  "uuid": "7a687345-b4e8-42ab-8cae-2d673159d485",
                  "parent_uuid": "ae672c22-4f8f-478d-8abc-0032f32c4a24",
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
          "uuid": "dbd3c92a-437b-4a2f-9811-93fae88e1f06",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "780a4949-b106-4825-aba6-1e579fc1487c",
              "parent_uuid": "dbd3c92a-437b-4a2f-9811-93fae88e1f06",
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
          "uuid": "8e1d55ab-7edf-4e01-9bfa-b6414ca8b8bf",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "512ddf8b-7e9e-4813-ba3b-9acc3b4045c6",
              "parent_uuid": "8e1d55ab-7edf-4e01-9bfa-b6414ca8b8bf",
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
          "uuid": "f3b63c9c-7f46-4b3f-ab52-6665c9d02055",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8b595b6-a4bb-44b0-90fa-579ef08d32ff",
              "parent_uuid": "f3b63c9c-7f46-4b3f-ab52-6665c9d02055",
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
              "uuid": "58199179-636a-4ab5-b391-118878a9a189",
              "parent_uuid": "f3b63c9c-7f46-4b3f-ab52-6665c9d02055",
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
              "uuid": "98e67333-61b8-44b4-b42a-91ea6bffbf5e",
              "parent_uuid": "f3b63c9c-7f46-4b3f-ab52-6665c9d02055",
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
              "uuid": "845eb749-4b84-4c6d-a6a8-62a32f494262",
              "parent_uuid": "f3b63c9c-7f46-4b3f-ab52-6665c9d02055",
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
              "uuid": "930fc726-7ee4-4deb-adef-f40c1405ce9e",
              "parent_uuid": "f3b63c9c-7f46-4b3f-ab52-6665c9d02055",
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
              "uuid": "852b51a3-8e9a-40ac-a404-96cbe686524e",
              "parent_uuid": "f3b63c9c-7f46-4b3f-ab52-6665c9d02055",
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
          "uuid": "71900dd2-66ae-4fc3-9932-0efb8290512e",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fe154d7-5046-44e7-9ad2-0710a594392e",
              "parent_uuid": "71900dd2-66ae-4fc3-9932-0efb8290512e",
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
              "uuid": "93a18c7c-c387-4659-afd8-79cb94d08e4c",
              "parent_uuid": "71900dd2-66ae-4fc3-9932-0efb8290512e",
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
              "uuid": "e8742b6a-b063-48e2-ba68-bb4d65e67e18",
              "parent_uuid": "71900dd2-66ae-4fc3-9932-0efb8290512e",
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
                  "uuid": "81ab42f4-197f-4f74-8f62-754353476a6a",
                  "parent_uuid": "e8742b6a-b063-48e2-ba68-bb4d65e67e18",
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
              "uuid": "74f9774a-2f11-4047-a334-1f51effeaf9d",
              "parent_uuid": "71900dd2-66ae-4fc3-9932-0efb8290512e",
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
                  "uuid": "40a286ee-2c34-4aa2-8954-170123a8aee1",
                  "parent_uuid": "74f9774a-2f11-4047-a334-1f51effeaf9d",
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
              "uuid": "8848ae6f-fd4a-4f0f-bb6f-c627b5e6702d",
              "parent_uuid": "71900dd2-66ae-4fc3-9932-0efb8290512e",
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
                  "uuid": "cdf15e18-ce5c-4ed6-ab3b-5b30a1b0d243",
                  "parent_uuid": "8848ae6f-fd4a-4f0f-bb6f-c627b5e6702d",
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
              "uuid": "55b6ef8e-6fa4-4891-ad54-129c8e351b16",
              "parent_uuid": "71900dd2-66ae-4fc3-9932-0efb8290512e",
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
                  "uuid": "91bbbb9c-0efd-44f2-b243-cce1039e234b",
                  "parent_uuid": "55b6ef8e-6fa4-4891-ad54-129c8e351b16",
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
          "uuid": "83164b82-01ab-4277-8a72-7882be0dc3ac",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69f3d72a-cfa4-490f-848b-c4a661724a28",
              "parent_uuid": "83164b82-01ab-4277-8a72-7882be0dc3ac",
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
              "uuid": "0ffbd321-aff1-40a0-86e9-b29186628240",
              "parent_uuid": "83164b82-01ab-4277-8a72-7882be0dc3ac",
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
              "uuid": "31978d59-5d57-47ea-bdd6-821f855bb6b1",
              "parent_uuid": "83164b82-01ab-4277-8a72-7882be0dc3ac",
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
                  "uuid": "9cf10f6e-172c-4c24-881d-edd142cc3303",
                  "parent_uuid": "31978d59-5d57-47ea-bdd6-821f855bb6b1",
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
              "uuid": "99e59d4e-7a77-4509-bda4-e5a2ccfdcd22",
              "parent_uuid": "83164b82-01ab-4277-8a72-7882be0dc3ac",
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
                  "uuid": "6e5c1e93-2339-411b-91a0-6b60d5661084",
                  "parent_uuid": "99e59d4e-7a77-4509-bda4-e5a2ccfdcd22",
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
              "uuid": "fc1ba040-1ed9-42e2-8bcb-aff84dbdf46d",
              "parent_uuid": "83164b82-01ab-4277-8a72-7882be0dc3ac",
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
                  "uuid": "09b1c8a9-d5de-4302-a0ca-5ec7d239c471",
                  "parent_uuid": "fc1ba040-1ed9-42e2-8bcb-aff84dbdf46d",
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
              "uuid": "0690de82-92a6-42c2-bc95-e4e26d7a565f",
              "parent_uuid": "83164b82-01ab-4277-8a72-7882be0dc3ac",
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
                  "uuid": "e35ccea1-9914-4978-bd59-b51997b2adb1",
                  "parent_uuid": "0690de82-92a6-42c2-bc95-e4e26d7a565f",
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
          "uuid": "c789c156-0b14-42f6-95c0-bb0b88fdfeef",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0bda55e7-666c-43fc-b288-1c2d4dd108d5",
              "parent_uuid": "c789c156-0b14-42f6-95c0-bb0b88fdfeef",
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
              "uuid": "79098dba-1504-4ea8-b12f-f925ac6142d2",
              "parent_uuid": "c789c156-0b14-42f6-95c0-bb0b88fdfeef",
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
              "uuid": "7fa5b8f9-3958-4898-8b27-28ef5ff65c80",
              "parent_uuid": "c789c156-0b14-42f6-95c0-bb0b88fdfeef",
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
                  "uuid": "c1596e93-4068-4014-a9d6-9ad5aab36dee",
                  "parent_uuid": "7fa5b8f9-3958-4898-8b27-28ef5ff65c80",
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
              "uuid": "d330e040-f6e1-4116-90f4-a1153f01aeae",
              "parent_uuid": "c789c156-0b14-42f6-95c0-bb0b88fdfeef",
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
                  "uuid": "57c4be37-046f-4524-9167-978cdfdfa867",
                  "parent_uuid": "d330e040-f6e1-4116-90f4-a1153f01aeae",
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
              "uuid": "fc4ac092-95d0-4e3a-b650-84d6b20c2bc3",
              "parent_uuid": "c789c156-0b14-42f6-95c0-bb0b88fdfeef",
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
                  "uuid": "44974cdb-aaaf-46e8-8fc9-cafc4af2c58d",
                  "parent_uuid": "fc4ac092-95d0-4e3a-b650-84d6b20c2bc3",
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
              "uuid": "3344eecf-e96f-408d-8fdd-f0f6e726fa7a",
              "parent_uuid": "c789c156-0b14-42f6-95c0-bb0b88fdfeef",
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
                  "uuid": "e4dd6ecc-1cbd-4d71-af74-67e9595dd93a",
                  "parent_uuid": "3344eecf-e96f-408d-8fdd-f0f6e726fa7a",
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
          "uuid": "fe8a4ac9-ecc5-43b3-b126-8bf98b2a090d",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f2117c5-3e37-48bb-a75d-af895e0abf30",
              "parent_uuid": "fe8a4ac9-ecc5-43b3-b126-8bf98b2a090d",
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
              "uuid": "aa9e066b-2bcb-46e1-a6b7-b6f415094be9",
              "parent_uuid": "fe8a4ac9-ecc5-43b3-b126-8bf98b2a090d",
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
              "uuid": "9acde0b7-cbca-41a9-b207-3abbbb669f90",
              "parent_uuid": "fe8a4ac9-ecc5-43b3-b126-8bf98b2a090d",
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
                  "uuid": "cfd3ea37-a8f7-43a1-a2a3-b2d0677b92e8",
                  "parent_uuid": "9acde0b7-cbca-41a9-b207-3abbbb669f90",
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
              "uuid": "fe499f81-0171-45f2-a9e9-e5517be3337f",
              "parent_uuid": "fe8a4ac9-ecc5-43b3-b126-8bf98b2a090d",
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
                  "uuid": "7df2b7ec-4373-4cb1-99c1-19b2a5459e87",
                  "parent_uuid": "fe499f81-0171-45f2-a9e9-e5517be3337f",
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
              "uuid": "9a44dacb-3e61-4a4e-afa5-9f04a779fcdb",
              "parent_uuid": "fe8a4ac9-ecc5-43b3-b126-8bf98b2a090d",
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
                  "uuid": "be040ead-4486-4f9f-9ac8-7bb720e8f9b4",
                  "parent_uuid": "9a44dacb-3e61-4a4e-afa5-9f04a779fcdb",
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
              "uuid": "1f6eb67d-cdf0-445d-a323-307297f90934",
              "parent_uuid": "fe8a4ac9-ecc5-43b3-b126-8bf98b2a090d",
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
                  "uuid": "e3ad601e-cc2a-433e-8ac2-81940766378a",
                  "parent_uuid": "1f6eb67d-cdf0-445d-a323-307297f90934",
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
          "uuid": "b6e3ebcc-b856-4b82-8465-f27c4b65e26a",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "567df983-f936-42e2-8fc5-114294d5eb56",
              "parent_uuid": "b6e3ebcc-b856-4b82-8465-f27c4b65e26a",
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
          "uuid": "30f55b65-571d-4fda-be19-39a17306d9bb",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1c030c0-1409-4c94-bbb9-5f97cb3a302e",
              "parent_uuid": "30f55b65-571d-4fda-be19-39a17306d9bb",
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
          "uuid": "b36c5085-7fe1-4060-b52f-032e8f0f49b4",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3cea8a93-827f-41d6-9e2d-3adf18159a64",
              "parent_uuid": "b36c5085-7fe1-4060-b52f-032e8f0f49b4",
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
                  "uuid": "15f29d1b-931f-4c34-bb15-249efb7114f2",
                  "parent_uuid": "3cea8a93-827f-41d6-9e2d-3adf18159a64",
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
          "uuid": "fa475b1f-0546-4b89-a6a6-73d3e7f89ce2",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8e06b94-3b35-4498-83bc-3aa7f9fdf8fd",
              "parent_uuid": "fa475b1f-0546-4b89-a6a6-73d3e7f89ce2",
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
          "uuid": "2cd1235d-396a-43a7-98eb-5975ce0c56b0",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "67fd943b-f3e9-4847-bee9-d483cde9d747",
              "parent_uuid": "2cd1235d-396a-43a7-98eb-5975ce0c56b0",
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
          "uuid": "ccdc4e8a-477e-441a-bc05-c660f020afe7",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea9ba0b2-7b72-4128-a7ab-8a7fc004e050",
              "parent_uuid": "ccdc4e8a-477e-441a-bc05-c660f020afe7",
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
              "uuid": "7f869cfb-4054-4471-8eb5-d3209bc65bce",
              "parent_uuid": "ccdc4e8a-477e-441a-bc05-c660f020afe7",
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
              "uuid": "3d4173f9-8fed-4501-935d-b332b05b3de5",
              "parent_uuid": "ccdc4e8a-477e-441a-bc05-c660f020afe7",
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
              "uuid": "94e1349e-c579-4e97-91c4-9663bfe51a8a",
              "parent_uuid": "ccdc4e8a-477e-441a-bc05-c660f020afe7",
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
              "uuid": "5e38fc7e-8b16-473a-8a1f-89bf0a988d01",
              "parent_uuid": "ccdc4e8a-477e-441a-bc05-c660f020afe7",
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
              "uuid": "20e44823-71db-40c5-abcc-de04ee03bef1",
              "parent_uuid": "ccdc4e8a-477e-441a-bc05-c660f020afe7",
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
          "uuid": "61fbecc2-c89b-44f6-b33f-7eaf9b1e4bb6",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "7d39c593-718e-4efa-94d8-660b16537557",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e96e78e-6cf6-4db2-bc4e-bbf9e59139e5",
              "parent_uuid": "7d39c593-718e-4efa-94d8-660b16537557",
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
              "uuid": "12417ca0-cf37-4153-b9ee-1ab26d9d3dc4",
              "parent_uuid": "7d39c593-718e-4efa-94d8-660b16537557",
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
              "uuid": "c1f53701-dc87-4cd8-96b1-1c57f9614596",
              "parent_uuid": "7d39c593-718e-4efa-94d8-660b16537557",
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
                  "uuid": "29eb4122-d463-4023-8a54-8f7da1573ae8",
                  "parent_uuid": "c1f53701-dc87-4cd8-96b1-1c57f9614596",
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
              "uuid": "22e1fa66-8f6a-459b-a3f7-301c1f427faf",
              "parent_uuid": "7d39c593-718e-4efa-94d8-660b16537557",
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
                  "uuid": "fac88e07-6a5e-46a3-9385-396d043b5a64",
                  "parent_uuid": "22e1fa66-8f6a-459b-a3f7-301c1f427faf",
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
              "uuid": "4f823263-78e5-4ce8-b837-519c7b2b0761",
              "parent_uuid": "7d39c593-718e-4efa-94d8-660b16537557",
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
                  "uuid": "03d64081-8d0e-4c42-ab6f-8868a2b96382",
                  "parent_uuid": "4f823263-78e5-4ce8-b837-519c7b2b0761",
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
              "uuid": "13893b45-e1de-4502-a01a-7e78cbac3d7c",
              "parent_uuid": "7d39c593-718e-4efa-94d8-660b16537557",
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
                  "uuid": "ca3ad75b-03d3-4182-b405-bb0b8e23e573",
                  "parent_uuid": "13893b45-e1de-4502-a01a-7e78cbac3d7c",
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
          "uuid": "212eebb7-d48d-4007-b4b3-7f11f281c7a3",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d175410a-4529-4fb5-a253-b66f4c4e0f66",
              "parent_uuid": "212eebb7-d48d-4007-b4b3-7f11f281c7a3",
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
              "uuid": "a328b934-8bef-48d2-afe2-f28486dcb94a",
              "parent_uuid": "212eebb7-d48d-4007-b4b3-7f11f281c7a3",
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
              "uuid": "c7eed0e7-7d91-451f-b08d-220de3bea8c9",
              "parent_uuid": "212eebb7-d48d-4007-b4b3-7f11f281c7a3",
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
                  "uuid": "a52bdcf4-62f1-4677-9192-2bedf822eae4",
                  "parent_uuid": "c7eed0e7-7d91-451f-b08d-220de3bea8c9",
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
              "uuid": "35e04c0c-0a10-4af3-b6f2-2bd47f220262",
              "parent_uuid": "212eebb7-d48d-4007-b4b3-7f11f281c7a3",
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
                  "uuid": "9c48c929-1e40-49c7-a8c6-8e2478267f75",
                  "parent_uuid": "35e04c0c-0a10-4af3-b6f2-2bd47f220262",
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
              "uuid": "60e7d2c1-1bb0-4e37-ae18-fabb66a967a4",
              "parent_uuid": "212eebb7-d48d-4007-b4b3-7f11f281c7a3",
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
                  "uuid": "3dfe4afa-a963-4278-b7f2-eb9e6aeeae46",
                  "parent_uuid": "60e7d2c1-1bb0-4e37-ae18-fabb66a967a4",
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
              "uuid": "fb395dd7-ea2b-4fdc-9682-e7c70e16eb59",
              "parent_uuid": "212eebb7-d48d-4007-b4b3-7f11f281c7a3",
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
                  "uuid": "8db7cb89-ecd4-4726-810d-bb5690e79c20",
                  "parent_uuid": "fb395dd7-ea2b-4fdc-9682-e7c70e16eb59",
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
          "uuid": "7f4e2f5c-a3f5-4c35-bf75-3a2a4eaec0bf",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c16bf162-1fb8-465f-9461-a7ac10c256f0",
              "parent_uuid": "7f4e2f5c-a3f5-4c35-bf75-3a2a4eaec0bf",
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
              "uuid": "a2e2824f-1e57-4615-ae5d-557599597503",
              "parent_uuid": "7f4e2f5c-a3f5-4c35-bf75-3a2a4eaec0bf",
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
              "uuid": "7f540346-363e-489b-b3a6-a228b184f9d9",
              "parent_uuid": "7f4e2f5c-a3f5-4c35-bf75-3a2a4eaec0bf",
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
                  "uuid": "bd97ebb1-6cbb-4d5d-a142-205ac5f893a6",
                  "parent_uuid": "7f540346-363e-489b-b3a6-a228b184f9d9",
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
              "uuid": "dc601ed1-c94e-4c3f-bc50-032c65cbaf5f",
              "parent_uuid": "7f4e2f5c-a3f5-4c35-bf75-3a2a4eaec0bf",
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
                  "uuid": "a8ae611f-bdfb-4482-9d02-feb27457c5fc",
                  "parent_uuid": "dc601ed1-c94e-4c3f-bc50-032c65cbaf5f",
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
              "uuid": "7487a961-d748-4bb6-b821-a1ff7eaf5591",
              "parent_uuid": "7f4e2f5c-a3f5-4c35-bf75-3a2a4eaec0bf",
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
                  "uuid": "2f97e1a1-f978-423a-bda7-f0332176e8bd",
                  "parent_uuid": "7487a961-d748-4bb6-b821-a1ff7eaf5591",
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
              "uuid": "81bd3d77-8b3a-404a-98d9-14efcd644247",
              "parent_uuid": "7f4e2f5c-a3f5-4c35-bf75-3a2a4eaec0bf",
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
                  "uuid": "67640c14-8377-416d-88a3-d196af0e2bc0",
                  "parent_uuid": "81bd3d77-8b3a-404a-98d9-14efcd644247",
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
          "uuid": "1fc94a17-1e35-4b31-9391-c7108fa4b090",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e674ed58-218b-4ec4-9bda-4035b6d0b1ef",
              "parent_uuid": "1fc94a17-1e35-4b31-9391-c7108fa4b090",
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
              "uuid": "b98f0d07-ee4a-451a-87c1-119a513c61d3",
              "parent_uuid": "1fc94a17-1e35-4b31-9391-c7108fa4b090",
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
              "uuid": "1cc2972f-ef1e-4464-8b90-5972d73e3034",
              "parent_uuid": "1fc94a17-1e35-4b31-9391-c7108fa4b090",
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
                  "uuid": "a4226f12-70ac-4b1f-8b5b-4d4fde4c4333",
                  "parent_uuid": "1cc2972f-ef1e-4464-8b90-5972d73e3034",
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
              "uuid": "dcbc309c-651c-4484-95d6-e954689f3222",
              "parent_uuid": "1fc94a17-1e35-4b31-9391-c7108fa4b090",
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
                  "uuid": "288b84b0-2fe1-41d4-997d-1ca8b88af369",
                  "parent_uuid": "dcbc309c-651c-4484-95d6-e954689f3222",
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
              "uuid": "b3e15d93-f4dd-4090-a3cd-e4a883e5e0e1",
              "parent_uuid": "1fc94a17-1e35-4b31-9391-c7108fa4b090",
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
                  "uuid": "ae11c3ed-84d7-4662-ae8e-e87e5bf74327",
                  "parent_uuid": "b3e15d93-f4dd-4090-a3cd-e4a883e5e0e1",
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
              "uuid": "6eca411d-e613-4af8-8e22-598e9f317d0e",
              "parent_uuid": "1fc94a17-1e35-4b31-9391-c7108fa4b090",
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
                  "uuid": "f6b47c9b-56ba-4069-9782-325a11997f63",
                  "parent_uuid": "6eca411d-e613-4af8-8e22-598e9f317d0e",
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
          "uuid": "37c3152c-c9b8-4ae4-81df-aa0905a5fcda",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d95003f-36e3-48e8-813a-c8c5f208716a",
              "parent_uuid": "37c3152c-c9b8-4ae4-81df-aa0905a5fcda",
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
              "uuid": "2722d4ab-1bc4-418d-bc5b-778d0c88d641",
              "parent_uuid": "37c3152c-c9b8-4ae4-81df-aa0905a5fcda",
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
              "uuid": "dc0fa26d-2634-46c4-b0c8-484bef5237b8",
              "parent_uuid": "37c3152c-c9b8-4ae4-81df-aa0905a5fcda",
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
                  "uuid": "06d3d480-4e4b-44ba-9ae2-077db85e9ade",
                  "parent_uuid": "dc0fa26d-2634-46c4-b0c8-484bef5237b8",
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
              "uuid": "33ac37fd-c538-4a1e-b031-fff2234b4145",
              "parent_uuid": "37c3152c-c9b8-4ae4-81df-aa0905a5fcda",
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
                  "uuid": "fe1d30eb-4b94-42e2-bf48-d2a0c5435373",
                  "parent_uuid": "33ac37fd-c538-4a1e-b031-fff2234b4145",
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
              "uuid": "b746fb68-94ec-4e37-b667-4eca290c3a82",
              "parent_uuid": "37c3152c-c9b8-4ae4-81df-aa0905a5fcda",
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
                  "uuid": "3bef7d7b-486e-4b67-8a73-176717fa9836",
                  "parent_uuid": "b746fb68-94ec-4e37-b667-4eca290c3a82",
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
              "uuid": "efa12be3-668c-4faa-9f25-e8545cff65f2",
              "parent_uuid": "37c3152c-c9b8-4ae4-81df-aa0905a5fcda",
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
                  "uuid": "3baa043e-f362-4ff0-936f-c1131bab1128",
                  "parent_uuid": "efa12be3-668c-4faa-9f25-e8545cff65f2",
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
          "uuid": "28f9ce0a-5756-4f6f-a33f-fddbac0bc56b",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84c9f8a8-3b7e-4683-9a02-4f781ce0fee9",
              "parent_uuid": "28f9ce0a-5756-4f6f-a33f-fddbac0bc56b",
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
              "uuid": "841a7bcd-9cee-4b6b-b4fd-b078aafcf9a0",
              "parent_uuid": "28f9ce0a-5756-4f6f-a33f-fddbac0bc56b",
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
              "uuid": "57ee2647-546e-4073-92d0-d770eab569be",
              "parent_uuid": "28f9ce0a-5756-4f6f-a33f-fddbac0bc56b",
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
                  "uuid": "cfc8d112-4773-4dc7-8a47-60b686e16810",
                  "parent_uuid": "57ee2647-546e-4073-92d0-d770eab569be",
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
              "uuid": "7c6f6054-5d7c-4f20-ac83-49a38660ce5d",
              "parent_uuid": "28f9ce0a-5756-4f6f-a33f-fddbac0bc56b",
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
                  "uuid": "151af2eb-8ae9-49e7-9ba7-b75a70d6cb85",
                  "parent_uuid": "7c6f6054-5d7c-4f20-ac83-49a38660ce5d",
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
              "uuid": "a26986ea-2db9-4a76-a5a8-cf7468e9f165",
              "parent_uuid": "28f9ce0a-5756-4f6f-a33f-fddbac0bc56b",
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
                  "uuid": "96530f8b-39c6-4507-adf6-0eb60459200e",
                  "parent_uuid": "a26986ea-2db9-4a76-a5a8-cf7468e9f165",
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
              "uuid": "4ce82c02-323f-44ff-8d7e-140d821a3ffc",
              "parent_uuid": "28f9ce0a-5756-4f6f-a33f-fddbac0bc56b",
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
                  "uuid": "3d881942-1251-432f-8ce6-a4bc737d77a1",
                  "parent_uuid": "4ce82c02-323f-44ff-8d7e-140d821a3ffc",
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
          "uuid": "f8b151a0-a14b-45d6-8fd1-12f1b09a876a",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f443a87-8fae-489a-9d03-cfc94fdb4279",
              "parent_uuid": "f8b151a0-a14b-45d6-8fd1-12f1b09a876a",
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
          "uuid": "dfd06463-9039-40a2-a238-10f54b275900",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e0fdd29-54e3-4fcf-9709-b75a382d89ab",
              "parent_uuid": "dfd06463-9039-40a2-a238-10f54b275900",
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
          "uuid": "40afdd86-3e6e-433a-b1db-ae722ccdcd2c",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb73ae5c-1983-42b2-aefd-bcee0368ea64",
              "parent_uuid": "40afdd86-3e6e-433a-b1db-ae722ccdcd2c",
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
                  "uuid": "db911ee7-bf49-4de9-9389-32405f55c510",
                  "parent_uuid": "bb73ae5c-1983-42b2-aefd-bcee0368ea64",
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
          "uuid": "36c79f51-41e3-4769-a637-00cb587b7e10",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ccd815f0-f8b1-40ea-8bdd-de97daa5dcfb",
              "parent_uuid": "36c79f51-41e3-4769-a637-00cb587b7e10",
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
          "uuid": "35926808-164c-4a50-a197-fbcc445a808b",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "87848ddc-77f0-47bb-a410-669c81413dbd",
              "parent_uuid": "35926808-164c-4a50-a197-fbcc445a808b",
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
          "uuid": "ffb4788c-60ee-4903-8f5e-007e808e103d",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ae27d54-09b1-4e39-aaaa-1b7ca9ecf314",
              "parent_uuid": "ffb4788c-60ee-4903-8f5e-007e808e103d",
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
              "uuid": "a7f8d678-10b0-442a-b324-81ee9926093e",
              "parent_uuid": "ffb4788c-60ee-4903-8f5e-007e808e103d",
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
              "uuid": "38840e7e-b261-4024-8690-9524c22da97e",
              "parent_uuid": "ffb4788c-60ee-4903-8f5e-007e808e103d",
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
              "uuid": "5d852f4e-2e23-4eea-8617-c0194f3f1112",
              "parent_uuid": "ffb4788c-60ee-4903-8f5e-007e808e103d",
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
              "uuid": "942dc1d3-f097-4490-9203-9e1dc734ffcb",
              "parent_uuid": "ffb4788c-60ee-4903-8f5e-007e808e103d",
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
          "uuid": "6c5273a4-ee75-48cc-804e-443f57ca91cd",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a77061ee-6913-41f8-9dc0-96d26551a61b",
              "parent_uuid": "6c5273a4-ee75-48cc-804e-443f57ca91cd",
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
              "uuid": "c202b4b4-cadd-4c1e-bee8-6dfc59981bf2",
              "parent_uuid": "6c5273a4-ee75-48cc-804e-443f57ca91cd",
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
              "uuid": "eda9e194-5838-4330-b8f7-527bc1ae65a3",
              "parent_uuid": "6c5273a4-ee75-48cc-804e-443f57ca91cd",
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
              "uuid": "fd64ed6a-a43d-41d9-9228-3284ed45763f",
              "parent_uuid": "6c5273a4-ee75-48cc-804e-443f57ca91cd",
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
              "uuid": "cd493aff-bd3b-48ba-84b6-52e50b90a1ca",
              "parent_uuid": "6c5273a4-ee75-48cc-804e-443f57ca91cd",
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
          "uuid": "f4af8bff-3c33-48ee-a444-20dbd298f983",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c976c655-a3be-4b49-a112-795aa44c1e70",
              "parent_uuid": "f4af8bff-3c33-48ee-a444-20dbd298f983",
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
              "uuid": "11543fe2-5574-4600-a1c8-1b7dfd94be10",
              "parent_uuid": "f4af8bff-3c33-48ee-a444-20dbd298f983",
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
              "uuid": "8ecd1f0f-1b7a-4d2c-bb1a-a3e6d5069ec8",
              "parent_uuid": "f4af8bff-3c33-48ee-a444-20dbd298f983",
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
              "uuid": "8887b103-38d2-4001-a564-f692ef93852e",
              "parent_uuid": "f4af8bff-3c33-48ee-a444-20dbd298f983",
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
              "uuid": "9fe28544-e208-4ed9-97d6-215ead229c4f",
              "parent_uuid": "f4af8bff-3c33-48ee-a444-20dbd298f983",
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
          "uuid": "2b819a9c-436e-4028-bd3c-c7496f15a981",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62285bd7-3641-43c1-ab7a-29f8e9eb38de",
              "parent_uuid": "2b819a9c-436e-4028-bd3c-c7496f15a981",
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
              "uuid": "6556d3cb-d646-4c3c-9f85-41b964676dca",
              "parent_uuid": "2b819a9c-436e-4028-bd3c-c7496f15a981",
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
              "uuid": "69b8e637-a728-4e8c-95b5-25c68b4d1d2e",
              "parent_uuid": "2b819a9c-436e-4028-bd3c-c7496f15a981",
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
              "uuid": "3b2f737c-0b52-4836-8230-bbf0dcc209ca",
              "parent_uuid": "2b819a9c-436e-4028-bd3c-c7496f15a981",
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
              "uuid": "a8b33405-e428-4f76-8182-d1b7fd831fca",
              "parent_uuid": "2b819a9c-436e-4028-bd3c-c7496f15a981",
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
          "uuid": "53a83332-7c0e-466e-b05b-09a3fde89d76",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e74c51a-ba28-42a0-8023-e385d347d907",
              "parent_uuid": "53a83332-7c0e-466e-b05b-09a3fde89d76",
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
              "uuid": "6b3a5312-9d39-4efd-a352-6cee2fb95705",
              "parent_uuid": "53a83332-7c0e-466e-b05b-09a3fde89d76",
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
              "uuid": "82aff720-60f4-465c-a72d-6164c9d47400",
              "parent_uuid": "53a83332-7c0e-466e-b05b-09a3fde89d76",
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
              "uuid": "3f699a7a-f0ad-4b20-9bef-c6118cdc89a3",
              "parent_uuid": "53a83332-7c0e-466e-b05b-09a3fde89d76",
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
              "uuid": "71f35250-87ba-422e-b0d7-d52244684374",
              "parent_uuid": "53a83332-7c0e-466e-b05b-09a3fde89d76",
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
          "uuid": "b6979728-3765-45ad-957b-985e6f377f86",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ef5016a-2ae2-4e66-95d3-0a5f6a965b41",
              "parent_uuid": "b6979728-3765-45ad-957b-985e6f377f86",
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
              "uuid": "37601969-e0dd-4fc2-a2d6-bb9b6c7b567f",
              "parent_uuid": "b6979728-3765-45ad-957b-985e6f377f86",
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
              "uuid": "7cfbf02d-7430-44a1-8af7-7763e695f26e",
              "parent_uuid": "b6979728-3765-45ad-957b-985e6f377f86",
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
              "uuid": "fed38ce3-b5f3-4f0b-bc99-a8d515c3063e",
              "parent_uuid": "b6979728-3765-45ad-957b-985e6f377f86",
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
              "uuid": "3c8e03eb-1ff2-426a-89fe-91b4c4479652",
              "parent_uuid": "b6979728-3765-45ad-957b-985e6f377f86",
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
          "uuid": "970918b8-2662-45d7-b5ca-cb5caf9bd5a8",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "17e7c195-418e-40c4-a262-97685ac1e175",
              "parent_uuid": "970918b8-2662-45d7-b5ca-cb5caf9bd5a8",
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
              "uuid": "56839cbb-b5eb-447e-9317-15d2fe01c42f",
              "parent_uuid": "970918b8-2662-45d7-b5ca-cb5caf9bd5a8",
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
              "uuid": "5ba321dc-b1d7-4788-b6f8-524cb56b9455",
              "parent_uuid": "970918b8-2662-45d7-b5ca-cb5caf9bd5a8",
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
              "uuid": "f2893fbf-e2ee-43e6-8a03-4a387d6445df",
              "parent_uuid": "970918b8-2662-45d7-b5ca-cb5caf9bd5a8",
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
              "uuid": "0d0efe84-93cc-4226-bc25-de53211993f8",
              "parent_uuid": "970918b8-2662-45d7-b5ca-cb5caf9bd5a8",
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
          "uuid": "4e6c8d25-d783-4ebf-aad1-483ec51c19c5",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c77408dd-f51b-4d43-8c12-cad5f8e9d25a",
              "parent_uuid": "4e6c8d25-d783-4ebf-aad1-483ec51c19c5",
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
              "uuid": "82004d5f-9e81-4980-b3d8-015c8c41014c",
              "parent_uuid": "4e6c8d25-d783-4ebf-aad1-483ec51c19c5",
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
              "uuid": "6ef8472a-5515-4316-9157-8972a47ac973",
              "parent_uuid": "4e6c8d25-d783-4ebf-aad1-483ec51c19c5",
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
              "uuid": "4fa65725-8c09-4fa3-b212-9e3effb69320",
              "parent_uuid": "4e6c8d25-d783-4ebf-aad1-483ec51c19c5",
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
              "uuid": "7da6c463-8879-448d-9781-a94d09d5a71d",
              "parent_uuid": "4e6c8d25-d783-4ebf-aad1-483ec51c19c5",
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
          "uuid": "39645445-3d84-419f-aaf8-809fa39efc46",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be2b743c-47ce-4e73-aa31-7c20bc657c87",
              "parent_uuid": "39645445-3d84-419f-aaf8-809fa39efc46",
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
              "uuid": "12bbed9d-ddf3-4abc-8513-b4b1a503a746",
              "parent_uuid": "39645445-3d84-419f-aaf8-809fa39efc46",
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
              "uuid": "21eb3787-ae2a-468e-a1d6-60d70ba9c545",
              "parent_uuid": "39645445-3d84-419f-aaf8-809fa39efc46",
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
              "uuid": "68c39267-181b-41ff-8587-81eaaf66ef5d",
              "parent_uuid": "39645445-3d84-419f-aaf8-809fa39efc46",
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
              "uuid": "7d7fe5f6-5c66-445f-9419-61f133fd3231",
              "parent_uuid": "39645445-3d84-419f-aaf8-809fa39efc46",
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
          "uuid": "4fef9ec8-ae95-4c7a-9c6b-47adc42043cb",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1ee94aa-fddb-4252-b2b4-caece23e40eb",
              "parent_uuid": "4fef9ec8-ae95-4c7a-9c6b-47adc42043cb",
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
          "uuid": "2470c2c1-f0ed-49dc-9d43-a6aadf55aa91",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c9a74630-5d12-455a-9123-31046e8ddd31",
              "parent_uuid": "2470c2c1-f0ed-49dc-9d43-a6aadf55aa91",
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
          "uuid": "9bafb66b-4d34-4993-acea-07add21e1855",
          "parent_uuid": "1cf0284e-4912-4724-8816-04b5ef009925",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c95be8d-0625-4c0d-959d-4eae2fe107bf",
              "parent_uuid": "9bafb66b-4d34-4993-acea-07add21e1855",
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
                  "uuid": "973e4ea5-cb88-4c89-a03e-fe0baf31182c",
                  "parent_uuid": "8c95be8d-0625-4c0d-959d-4eae2fe107bf",
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

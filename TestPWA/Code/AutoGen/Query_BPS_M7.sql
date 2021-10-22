
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
  "uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "4184065d-1f91-42d8-a7b1-99b48722c1d1",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "a2db4616-a6c1-456b-b112-1c9e90e0e358",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "d1ab9b43-ae9b-4e3f-8143-0831dca4b1c8",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "e27c51dd-1943-406d-b897-f0ed58c647cb",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "6b6dd7d7-fe8e-4621-b261-3af8b3207100",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "e3128fa0-d580-4c02-a5bf-0b9275c0ef13",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "bbf072f6-b03d-4342-a612-366309f84f98",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "ded6c9be-e660-4dd5-8af9-b5b7ffbe4c2a",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
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
              "uuid": "194c6bc4-ea02-4581-850b-cd56fb378a00",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
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
              "uuid": "5683923d-0255-425f-bc39-8f37d330223b",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
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
              "uuid": "2df1e474-f0bb-4493-b546-06d03d5ea5b0",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk:     BPS M7 </span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "f5c564dd-1a0e-4a95-ba56-b699a308b83c",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
                  "height",
                  "20"
                ]
              ],
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b7761bbf-e7c7-468b-b397-12df1c797190",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7f24768d-ffb4-49de-8c9c-b6164c9104bb",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "b83de45d-e522-418b-a998-3202b64b5671",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
          "uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "abb89e92-921a-4783-b9a1-33da4bb1547f",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "143"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b3d28d8a-60dd-4608-8e19-feaffa3ebbe2",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e74f1e83-cd35-49e5-aba8-0389e110d10f",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "fea98291-f093-4e82-886c-cd848a4c7117",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "828967b2-d04c-4aa9-95f9-e80b75f8c7c2",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "uuid": "4781a2e3-5d30-41cd-bf6d-ff26e5e6659f",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "d3a96b80-ac25-4583-8f94-ce91c1991907",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f79efd99-78c2-4981-bb2a-13ca9f6f100e",
              "parent_uuid": "d3a96b80-ac25-4583-8f94-ce91c1991907",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e064c4c-e673-4cf7-a618-ff52e1054b9f",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
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
              "uuid": "ca3382a3-ed73-4cc0-bad4-4d24c22f108c",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "20912dcf-64cd-49a1-b7b3-e8dcba82fffb",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
              "uuid": "a917e142-65b8-4c2e-a8d1-ef1558cc2cc0",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
              "uuid": "69f1daf3-8bf0-48d6-ad92-65ae30d2a2ed",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
              "uuid": "196a19f5-dbef-4bd5-a888-64992d5b9e34",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
          "uuid": "674c5522-b697-4144-8b1c-de516aa78376",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05805849-dfed-4888-b5ff-2aac1d9ea236",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
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
              "uuid": "2740f39a-fafb-48ad-80e7-587a6410a6ba",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b2f8cb94-467a-4aac-b4c4-53c7c991bb52",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
              "uuid": "bcd16a77-1d34-47a6-9065-bb004aa5b540",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
              "uuid": "e0101049-e947-4be4-b6ae-19c1edf28295",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
              "uuid": "52389ad8-09d9-4668-bbc9-a84d66fe31e7",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
          "uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6538f482-8a03-4a41-a225-123f09134a21",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
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
              "innerHtml": "\r\n                    <span>Doppelspurbanderolierer reinigen und justieren</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6719ccdc-a3cd-459b-b0fc-ab5b25d383cb",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
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
              "innerHtml": "\r\n                    <span>79</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7c4aeac9-8074-4b3a-a78e-f558fe65d869",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "dff597e0-a79c-4752-b5bb-220ea43e6e23",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "90f93e43-04fa-4351-8617-0f7ec500fddd",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "80ca67de-dc7d-47e6-95b7-38b36112f54a",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
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
          "uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "352ced97-e44f-410b-aeec-3e5f9973fda6",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
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
              "innerHtml": "\r\n                    <span>Flach- Zahnriemen Hauptantrieb prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f2ec8376-403b-4e9d-89dd-d6a798104754",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
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
              "innerHtml": "\r\n                    <span>87</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2c2f0012-837a-45ca-8183-94a31ed24281",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "24b577e4-c7e2-41d9-8a1f-e968f1b36274",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "2e1e42f1-a299-417a-bbba-7b33b5f7a54a",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "7154ebf6-4469-4b02-9dcb-7bc95b0d78a3",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
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
          "uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8d89c36-40ce-40f7-907f-5d344b3b6911",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ae83e18f-cab6-4c7a-9158-5da404eeaece",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
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
              "uuid": "b9e66eb6-4f12-4499-a6ba-dbd7d084ffc2",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a29b772d-7ed2-4722-8421-3042aea5e14b",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d542b8f3-0838-437d-bc92-8d725cc71918",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "b0ac0620-f52e-4381-83cd-673ed4ee66db",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
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
          "uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "093b920c-a28f-432d-842d-c1c9cc99161f",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhaltewalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c3e3bd80-826b-4f8c-9e21-9b6028fd5bc7",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
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
              "uuid": "648cb34f-d0f9-42fa-86db-cc3c81150884",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a7cf7113-2af4-43d6-a57a-a5ac8f879cbd",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "34895b03-490d-462e-8dc9-1b32df2c9095",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "ec139bd0-7a1c-4992-834d-bcdcb48bb360",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
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
          "uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f970820-cbdc-403e-95c3-356f3990d955",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
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
              "uuid": "558bd6a8-7568-4b2a-90e7-f39b42eee8ea",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
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
              "uuid": "855a51b4-8205-489c-9a56-402a310e580e",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a80a4679-d591-4626-b3dc-f245939ebe66",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1693aff1-390e-4d71-aa96-1bf9cb06e5f4",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "3cf01190-50ea-4bf5-814e-326f5e70a458",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
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
          "uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "572808c4-938a-416b-ba4c-c6f807629477",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
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
              "innerHtml": "\r\n                    <span>Lichtschranken Schiebetürenüberwachung reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b47ada77-638c-4f40-a91c-f9a1e8f12487",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
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
              "uuid": "aef274e0-466b-4af2-8b14-8af3eddb4fbd",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a1d7d961-9461-419a-8c7e-f1d75700640c",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "faa47cf3-ee0d-4ba0-ad14-3541c005d404",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "90e0b978-f0bf-4078-bc31-7891551463d0",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
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
          "uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dfadd774-809b-4d07-bd37-4740dbf6c5fd",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
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
              "innerHtml": "\r\n                    <span>Banknotenweichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c33ee935-51c5-4bc2-a050-0a7ca233dbf7",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
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
              "uuid": "233b4322-f09e-40c8-ae47-c797fe90513a",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a1a32915-7978-4c23-9030-fec4e8182089",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b29fcf3f-ea39-4590-95eb-d05fab3e8a49",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "49d80997-bebf-47a4-b35e-f32ab8012c29",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "903ee34a-73bf-486a-a5fd-a49a16914d0b",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
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
              "innerHtml": "\r\n                    <span>Bündler prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "27e836b3-5241-47be-a703-25a1936c0b0e",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
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
              "innerHtml": "\r\n                    <span>90</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2c1fc1d8-53a8-4468-a003-f1143a14e3eb",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a7ac9eaa-d9c8-4e54-8460-99c35a06cd9a",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d1475acd-a223-423f-bae3-84f40ae66699",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "cb51993a-baad-4ee3-8da0-9cb95f38188f",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
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
          "uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff8b4228-c1a7-4d0b-b983-c29662282690",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
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
              "uuid": "83f14478-7482-4c46-a361-9198b3adc0b9",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
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
              "innerHtml": "\r\n                    <span>140</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fc8a81f6-6e1b-4aa2-84b1-072d49193c51",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "5478b54b-2ddb-4e02-a8ae-3de04b9b1ab6",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6bf2db45-30e0-45ee-9c0a-8339160c657e",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "9c6bfc9f-801e-4089-8112-3118c673fc91",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "29c9e096-7dd6-4251-85d2-3013084e555a",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
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
              "uuid": "3030dfc0-0c43-48b9-b7b0-58a51504d7e5",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
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
              "uuid": "f5a662d0-d6fe-4045-8166-855968a82274",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9bcbba0b-3624-4012-8611-a308fa2d6aa1",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0cbe622b-12be-4261-a26f-192f3fc14585",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "9b65c2dc-29c8-4e88-a89e-90ac42d3a197",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "aef7888a-3a5d-49db-936c-999f17862661",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4530507e-42a4-4ca5-8b57-32e78bb09e02",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
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
              "uuid": "40deebba-6fae-4e7c-bf33-49f867bde328",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
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
              "innerHtml": "\r\n                    <span>99</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5b1667a3-fd9f-4650-98e3-7cf78c41c00d",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e3ed8efc-c085-4caa-8dc3-348e5659e536",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d00fa792-d97b-43d7-b69f-4675137e8dd4",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "0065148d-45fa-47fc-8a0b-250c33cb3bf1",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28ee26bb-4e94-4c3f-b224-186f3ddeaaaf",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
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
              "uuid": "0aa78723-de3f-43f2-93f5-f363fd51d19e",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
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
              "innerHtml": "\r\n                    <span>94</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "aa30f51e-64d9-4372-b1ff-8dc038a37b29",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "75709b69-3537-4abe-b090-62fed948ded9",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "679e74a4-57e0-496f-b8fc-500a9a22715c",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "5c9162ed-76c7-49bc-82d8-4db2b8cfbc88",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54d5273a-2119-4e64-9fcb-e7de070e8eed",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
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
              "uuid": "79bf74c6-f844-4539-ad72-f115640c283c",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
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
              "innerHtml": "\r\n                    <span>66</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "56925ad3-0b77-4c72-9cd7-0bad29ef4f19",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "25dfdd69-dd24-409d-947a-93a00bd48376",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "621ab7d6-2196-4d9e-a2d9-cb9367dd0e65",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "50d97b17-4156-4a8d-a49e-ae625493424a",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00b147af-0637-42c1-a573-84b192e79f31",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
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
              "uuid": "9614f0b8-c153-482b-b64b-4dd0bd00c15e",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
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
              "uuid": "1ecfdb44-c78b-4ccb-8267-0599dbbc6c58",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "3dfa340a-c894-48d7-b429-a489b55126c7",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "9d216fe9-fdfb-4b47-8a9f-a13dd980d8d0",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "a27ad991-d5bb-4448-8f25-0cddd2f35934",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "58f8f7b0-58c9-40c6-a117-9c06e5673e59",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "477b9da7-8f73-4eeb-b35d-fd4fb11a5261",
              "parent_uuid": "58f8f7b0-58c9-40c6-a117-9c06e5673e59",
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
          "uuid": "97c471c4-3d8c-4686-91f4-b9bb2597ec69",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6d9d038-aecb-4248-8bc1-42270120787f",
              "parent_uuid": "97c471c4-3d8c-4686-91f4-b9bb2597ec69",
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "9954996a-2cc9-4d77-917e-e6339687208c",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4bb98645-965a-444b-9685-280da850c707",
              "parent_uuid": "9954996a-2cc9-4d77-917e-e6339687208c",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "f8eb5670-dcd0-498f-a2c8-aa7e0db15f0e",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f1eddcf-146b-4491-909e-7e9d522a5a28",
              "parent_uuid": "f8eb5670-dcd0-498f-a2c8-aa7e0db15f0e",
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "89c62acf-10b9-4f26-b4c5-d87358550086",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "72ab89d8-547c-4c06-b6ed-14527f0bced4",
              "parent_uuid": "89c62acf-10b9-4f26-b4c5-d87358550086",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "569e6eff-892a-403b-8b79-82aeb860e327",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "innerHtml": "<span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d9e85bd4-ded9-41af-b87e-d5d4a0d93c0d",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "91bfd296-5dcd-4f33-99fc-573eb4d16fff",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "f34827ac-8196-4cb8-9dff-f774b6ae7486",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6a929244-9056-4ce1-8bbb-8c50e1b37548",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "uuid": "d8e4f63c-8788-499e-ab94-c3d1bff1a6d2",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "6d425ed9-8106-4edf-ba04-8aba0515ddf7",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7640654c-9897-407d-b3c5-cfe6f93ee311",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
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
              "uuid": "0b69c6cd-dcdc-4833-86e8-8304eaeecec7",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
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
              "innerHtml": "\r\n                    <span>148</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "3687d5dc-3575-40c6-ba64-cafe8bd9c0b2",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9b3bf0f0-326b-4330-aaae-3578bd2de595",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a2bd3083-ee88-422e-8737-81697d5a8c9a",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "7f429d4e-6237-4337-9a9b-3359438bbcd1",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aeab85f2-0967-4ddf-b028-f93e15985cb2",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
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
              "uuid": "b89cb79a-cd99-40d1-98a5-7ac472ea2671",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
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
              "innerHtml": "\r\n                    <span>103</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "994afce9-bbb5-423c-9b69-698e5948cbbb",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "92cac5bc-5d1e-474d-bdb5-eb5e90e850bc",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "4daab201-1962-42cf-a624-f34a69a3f37d",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "6efc8bfa-02fe-4520-bbae-10620cb196ba",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c02b6cf0-a5c2-4295-a098-19d69dfaf43b",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
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
              "uuid": "4754b360-2bfd-45da-b842-553213c50106",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
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
              "uuid": "ff27650b-d8ab-410b-bb30-679ae53eb1b5",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6f073c4f-5f04-43f6-80f9-d92f23ff12bb",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "872fed40-e444-46c9-bce0-c62ec0120df2",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "636f6ad6-524a-4acf-a513-170d9a80e988",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc19a52c-8077-403f-b93f-19419efd5eb4",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
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
              "uuid": "b0408467-4f4c-454d-a309-f4682719ee08",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
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
              "innerHtml": "\r\n                    <span>102</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "10e11364-6283-44db-beab-47613f4ed764",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "def081ab-f169-45ec-a689-b8f2a42a5a9a",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "832cde07-b9e0-437c-a5ed-767015b8c1e8",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "a0e4888d-481a-4757-b6db-7c1c5a51fc73",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "19d9965f-66b1-4322-90ca-302308c97746",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ddf7fd49-e0ac-4ef4-8800-c5b0b026b30a",
              "parent_uuid": "19d9965f-66b1-4322-90ca-302308c97746",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "4ff60f55-d598-4233-a1c8-ea138dcdc3d0",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df4c1203-3d02-455f-957d-a0be7deabcc8",
              "parent_uuid": "4ff60f55-d598-4233-a1c8-ea138dcdc3d0",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "1799eefe-3bee-4491-8347-9cef8fad8515",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c30f036-7e4a-4b4b-8d5c-a6ba1bfcaa5d",
              "parent_uuid": "1799eefe-3bee-4491-8347-9cef8fad8515",
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
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "0821cf7d-50b1-4a35-b928-c9e69a1496ed",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b176641-6954-4034-a15b-8cb825307d47",
              "parent_uuid": "0821cf7d-50b1-4a35-b928-c9e69a1496ed",
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
                  "60"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "e92f56d1-7bb6-4544-9580-fd346708c0e1",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e33d18fd-18b1-4eb7-9dcd-a557e7b80198",
              "parent_uuid": "e92f56d1-7bb6-4544-9580-fd346708c0e1",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000"
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
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b15fc12-0642-4e2a-b9db-59e3ab996639",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "uuid": "7ba5311b-a6e7-426f-8801-7e93a2f84144",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d41667f0-d67c-469e-b47e-b5de830d9527",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "ef84bf95-44e4-4808-95f7-331be6b6afad",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0d25dd45-2a82-4deb-a577-0c252aca6fdf",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "uuid": "506e46e2-e12e-4541-882c-275d17c73242",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "440d6202-3403-408b-951d-588f52e5dd13",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23aea506-ef82-4e1f-882e-efc89478d30c",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
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
              "uuid": "ac5cf7b3-3a85-4eea-8423-2daaf98b558f",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
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
              "uuid": "aaa7ef23-82c7-4aff-82c7-c92049f45076",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d0a6dc49-2aa4-40fc-a253-8aa3f13d4606",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "de8a07a6-8c44-4926-9b20-8cf0474842cd",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "6415a412-c93c-4960-ab80-3b3130a2ba49",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2bc0b4f9-ef76-44e1-8469-97fe9082eba2",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
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
              "uuid": "7a7636f3-de15-4e73-b0d8-8995c185f523",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
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
              "innerHtml": "\r\n                    <span>109</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8dfcabc9-733a-4d05-aa6a-c6aa4cf5d906",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "da944de5-d8be-4bfe-8757-095ca62266ae",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "100df026-2ee6-4a11-a5df-d7a48e1a8b62",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "449b4bce-098e-4bb0-8e36-090794d02149",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08903fa0-d512-45fd-b991-47e448da2ba3",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
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
              "uuid": "feecec20-57bf-46d4-9b5f-8d574ccdf48a",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
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
              "innerHtml": "\r\n                    <span>112</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "75c09b46-94cd-4fb4-b9e6-17b255c8aea6",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "40f77ae0-8f0d-471c-9a6d-7507a7122df3",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "f585b06d-8b6a-49bc-8120-fa364de8cd12",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "692adfa4-6ef1-431d-87ff-3dbb83ee963f",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5cb251f0-f702-4ecd-9222-a97dbe9c0ed7",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
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
              "uuid": "698e2ed3-aec7-45da-9e0f-ba7cd18f0b37",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
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
              "uuid": "75925bd4-ba4d-4e80-8bc5-63af186b8169",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "5bce7257-1957-4027-be3d-67a9e0fc3233",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "74d37b32-ebcc-4cf5-a89d-0a4698e5d028",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "c38dd081-114b-42ba-ba1a-929acb9450bb",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a1df8bc-fff8-45dc-ba21-a271760aaadd",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
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
              "uuid": "890d98f8-9b82-4e8b-ab17-c52d014a3b2f",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
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
              "innerHtml": "\r\n                    <span>150</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dd50044e-7911-40c7-83fb-ee12802308b4",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e137ee0c-efca-40df-a4c2-722e2a752cd3",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6447c6a5-0163-4004-9a41-e5931e914619",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "80569f4d-48df-4624-bd01-5ac5570e9c78",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc7c9ddd-d525-4667-a28c-da8edf8ef125",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
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
              "uuid": "49532b93-b674-4511-966d-ba8ca0974622",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
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
              "innerHtml": "\r\n                    <span>106</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a1bdc3ef-f4c6-4d19-a0bb-99ead36cbada",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6911d374-d0fb-427f-87fb-6cac48c9e14a",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "252eae8b-5e1b-4a96-9bf2-fee9e4b4d8d3",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "d6e90877-93aa-4750-937c-9fa330a4d4d7",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "e1123d03-17c7-4ed7-8a3b-c369b7c599ae",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "943f2f74-75ad-4925-9abd-f1a99e2c8139",
              "parent_uuid": "e1123d03-17c7-4ed7-8a3b-c369b7c599ae",
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
          "uuid": "9337fb6a-8f56-42f2-a902-31182190f39b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f829bb1-df4c-4c83-be24-e0a775dbacf7",
              "parent_uuid": "9337fb6a-8f56-42f2-a902-31182190f39b",
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
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "788d081b-b9f8-46eb-a22a-042158ff7471",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8050373-3a67-4fe1-8027-4c582cc6620d",
              "parent_uuid": "788d081b-b9f8-46eb-a22a-042158ff7471",
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
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "b8cd8353-e120-42ad-808e-2a21fff6d57e",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7814e453-7d61-4f9f-8074-d5bd36b90f7d",
              "parent_uuid": "b8cd8353-e120-42ad-808e-2a21fff6d57e",
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
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "a8149f56-bd70-4188-8e23-589d69fe6753",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "87f9a137-d38c-4581-bffd-f506dd2b217b",
              "parent_uuid": "a8149f56-bd70-4188-8e23-589d69fe6753",
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
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efe1e07e-b21e-4d38-a8af-761585631678",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
                  "border-right: none; vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c623cb16-e49b-44a2-a83e-8a6af7bf5d32",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "2"
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
              "uuid": "4669b22c-5fc7-4748-83e0-20fb8f5e5d8f",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
              "uuid": "c8d9ab25-a9f0-4653-af15-4af64976154d",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
              "uuid": "2f5a7cda-6b62-403b-9c7b-54bb990df9e1",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ede6cda6-a11d-48ea-b02d-b5c73e46cea1",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 3467 (M415)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "85eadc07-44af-456f-bf1a-0052d4f297c7",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "innerHtml": "\r\n                    <span>262 407 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e1c3d72d-83b1-4055-976d-7ba4ceba6662",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "uuid": "1484d570-12c9-4d9a-b381-70d63f1112fd",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "3e144349-4a5b-4b32-8bcb-9fab7b07f60f",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
          "uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38c53652-bc2a-4537-9ba1-ae74ed6ac774",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2409 (M414)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "28d01bb6-84af-4398-a9fd-3bcfb3293836",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "innerHtml": "\r\n                    <span>263 536 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a971869c-33b5-402c-8ff3-a696758892b6",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "uuid": "6e7e57da-e350-491b-a0ef-3712a45ceb4a",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "9fd1a34a-ca5d-4eb0-9861-03ac7625c348",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
          "uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46d1d274-45f6-4cca-a291-e0b539899f17",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2135 (M402)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "137627e9-dd25-46c9-8418-dd85310403b2",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "innerHtml": "\r\n                    <span>262 507 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "361a03df-9c4a-4842-bef4-d5f7365695f4",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "uuid": "85f30c03-6bfc-41fc-8cdb-ffa09ea60728",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d677043d-5a00-4c6a-8577-b0aaaa7e8c75",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
          "uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d878bb75-f8e3-4b9a-88af-96f0d98421c6",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 1510 (M306)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "449527a1-1a45-4b82-a836-11cf234aea71",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "innerHtml": "\r\n                    <span>117 363 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "bf081891-67ef-40af-a177-794fa114d420",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "uuid": "7b3e98a8-6221-4f28-a040-a7ac6d33b431",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a83008e4-db4f-4766-ad63-3cc5e99b7bc8",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
          "uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aaccf5e2-0a3e-44e0-a63d-866b9a438ea3",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 990 (M376)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "857eed2b-2fc7-4dc8-aae5-ff50a84f2ea7",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "innerHtml": "\r\n                    <span>268 909 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8965414e-40c3-4e9d-af46-998ac994db33",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "uuid": "0340c847-6663-4d9a-869c-67fd133abf39",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "e7d9afe1-4610-4bf2-8939-aeaeb8abf3f5",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
          "uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d96a37ea-c5e3-4b5f-84f7-71462b5f5da9",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 297 (M281)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6a157443-f791-44d8-b29a-83e41dfd55c1",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "innerHtml": "\r\n                    <span>244 040 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b61bd678-3032-4eeb-a8ff-101261e6eb1b",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "uuid": "7b465ed3-fcaf-48d1-8c54-c32db04abeda",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "30459e6e-1d06-41fd-b214-bc1a971a1662",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28008e40-51b8-4155-96b6-b5bec6f52cfd",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M280)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c7ea80e2-4116-4255-885b-27ee19ede359",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "uuid": "81656eb9-6c7d-480c-bbb4-2f2efe6093a2",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "uuid": "22c48f2a-42c2-49be-8524-faa3307d26f7",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "577a29c4-83fc-401b-b040-4b9475ea17c3",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a870f00d-ddc7-4fe0-98e1-7114a8672b7f",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "uuid": "75aac01f-2e0c-451d-afb8-e2fd5b033843",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "innerHtml": "\r\n                    <span>272 900 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "38ba49dc-ff72-4d5f-940d-4b26476959fc",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "uuid": "a072b3a4-97e1-408d-bf3c-7e6e78fa3504",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "9c7fdc77-dd81-470a-b956-4cf1f7800814",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
          "sort": 56,
          "lvl": 0
        },
        {
          "uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "584bf507-6053-405c-89d3-7be0b6377676",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "uuid": "9ce2b4d7-6977-4e67-817f-28474fa387f7",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "uuid": "1b369b25-5ad2-4f1c-8a91-c8b3394edc9b",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "uuid": "dabbe9ab-52f0-494b-8075-e28ef4aa4f45",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d2ff45a0-45fe-409c-8d79-972792de8a94",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
            }
          ],
          "sort": 57,
          "lvl": 0
        },
        {
          "uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fc4cbe8-9ff7-4794-b340-ac7e17b60878",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "innerHtml": "\r\n                    <span>Einlaufblech (M308)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ba13c3ba-2719-4e64-9b4f-a2f7865b84db",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "innerHtml": "\r\n                    <span>155 487 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "519478da-f7ba-4f14-a5ca-a70957de2f04",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "5f3194d5-b839-4054-a470-e207894b6e69",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "524525e2-3b34-4172-92a7-1fb218c40dd2",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
          "sort": 58,
          "lvl": 0
        },
        {
          "uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52e24d72-c22f-4977-816c-797677498bee",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "innerHtml": "\r\n                    <span>Schieber</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0f574f3c-df53-49f1-b43e-68e508842680",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "innerHtml": "\r\n                    <span>212 408 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "3a478fa8-ca3d-41f7-afc7-a28fbdeee185",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a686a4a0-be10-4b03-8c9d-de5365eba4ca",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "49d7cb53-2ae6-45b8-bd4b-b97cb7008532",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
          "sort": 59,
          "lvl": 0
        },
        {
          "uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "200be211-f345-465c-92e9-24f9f1c4b461",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "innerHtml": "\r\n                    <span>Kugellager (6007 LB) Rotor</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5bc1d445-124f-4025-b01e-4af41aa302b1",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c586b061-a68b-45a1-9965-987b85489b69",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "57c0f7b7-f8ec-446b-b4d3-6c5b147970ba",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "innerHtml": "\r\n                    <span size=\"1\" color=\"#000000\">Werkstatt</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a488e7bf-f329-40b4-818c-2cd0d1f42f00",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
          "sort": 60,
          "lvl": 0
        },
        {
          "uuid": "a1f7db1d-ea5c-41cd-87f0-9a838e6678f1",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4712f772-a50d-4f78-8b2a-3f24afb9413e",
              "parent_uuid": "a1f7db1d-ea5c-41cd-87f0-9a838e6678f1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "height",
                  "30"
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
          "sort": 61,
          "lvl": 0
        },
        {
          "uuid": "3dbb2dd1-08f7-4885-be32-ebf71bee8aa3",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54af0b5f-b6fd-46ae-a570-c3d7a0d0b3f0",
              "parent_uuid": "3dbb2dd1-08f7-4885-be32-ebf71bee8aa3",
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 62,
          "lvl": 0
        },
        {
          "uuid": "a227af2a-ae79-4b2c-bd04-fdf81d997102",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f62305c-c072-4e93-a0a1-dd3a94aae70d",
              "parent_uuid": "a227af2a-ae79-4b2c-bd04-fdf81d997102",
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
          "sort": 63,
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

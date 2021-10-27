
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
  "uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "c5a7b940-38c7-453d-a9f1-b306b661f92c",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "680a6e25-a142-478c-a172-f5359fa520eb",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "a8e3e718-842b-486e-afcc-a41166f2c72a",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "e83da555-5c6b-4587-8122-9f5e804f84df",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "1fe85725-7ac9-46e4-9dee-a20e43a3fa26",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "4f598961-75fa-410e-b85c-38bb44e94f01",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "380c1909-4c97-4bdf-aab8-903e1bd8243a",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
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
      "uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
      "parent_uuid": "f2ab7903-60d4-46ee-b8b5-8d3b84be0a0c",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "fc6153b7-50df-4157-9493-b7d318506e68",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "1ccd35a5-5ec6-49e8-963d-158d7c9f8a5f",
              "parent_uuid": "fc6153b7-50df-4157-9493-b7d318506e68",
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
              "uuid": "a386970f-41c2-413f-929f-d01a73ef1579",
              "parent_uuid": "fc6153b7-50df-4157-9493-b7d318506e68",
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
              "uuid": "af62d595-46d9-4822-a03d-c2fcdfd4e49e",
              "parent_uuid": "fc6153b7-50df-4157-9493-b7d318506e68",
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
              "uuid": "c8e1885b-9f72-43e4-b1c5-15d0f77cefe1",
              "parent_uuid": "fc6153b7-50df-4157-9493-b7d318506e68",
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
          "uuid": "683d5b18-ce7e-4f2e-ad82-842600706fcf",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "3b74a472-639d-4b03-b159-e252586f5a7d",
              "parent_uuid": "683d5b18-ce7e-4f2e-ad82-842600706fcf",
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
              "uuid": "e0fbbad8-f052-4b4a-9d4a-f94e90bb35b8",
              "parent_uuid": "683d5b18-ce7e-4f2e-ad82-842600706fcf",
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
              "uuid": "02503850-72a3-42f7-98a2-007efd88c369",
              "parent_uuid": "683d5b18-ce7e-4f2e-ad82-842600706fcf",
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
              "uuid": "55892a5d-c8d9-4d94-a4d2-c9f9556c67b1",
              "parent_uuid": "683d5b18-ce7e-4f2e-ad82-842600706fcf",
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
          "uuid": "c9b82936-ff83-4520-b73c-32e21a1c1d8d",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "91ec9550-cbc1-45c5-be90-9601db887422",
              "parent_uuid": "c9b82936-ff83-4520-b73c-32e21a1c1d8d",
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
              "uuid": "17d2bde3-52f9-4c46-9e48-67332994b78a",
              "parent_uuid": "c9b82936-ff83-4520-b73c-32e21a1c1d8d",
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
              "uuid": "d4dfa5a5-02e6-419d-b674-8704155c02c9",
              "parent_uuid": "c9b82936-ff83-4520-b73c-32e21a1c1d8d",
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
              "uuid": "eeeabefe-f5c2-4156-8005-1d841165963a",
              "parent_uuid": "c9b82936-ff83-4520-b73c-32e21a1c1d8d",
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
              "uuid": "b179e9f3-6c4a-43be-aca9-fd4af0ac54fa",
              "parent_uuid": "c9b82936-ff83-4520-b73c-32e21a1c1d8d",
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
              "uuid": "b7acc1a0-6eed-41b3-bcf8-0d86383c51fe",
              "parent_uuid": "c9b82936-ff83-4520-b73c-32e21a1c1d8d",
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
          "uuid": "81229f09-20c9-4580-ad0e-e6e257d52e42",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c80b2db6-56f8-41d6-b3af-24dd965c6275",
              "parent_uuid": "81229f09-20c9-4580-ad0e-e6e257d52e42",
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
          "uuid": "f9fcc33a-e269-4467-a3a7-d7421435c688",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b631c0d-4b8f-4999-bf7a-5072326dcde6",
              "parent_uuid": "f9fcc33a-e269-4467-a3a7-d7421435c688",
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
              "uuid": "a2004015-f011-494a-8240-3593a11af039",
              "parent_uuid": "f9fcc33a-e269-4467-a3a7-d7421435c688",
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
              "uuid": "22598d48-251e-45e8-b9de-14c7704f4f6e",
              "parent_uuid": "f9fcc33a-e269-4467-a3a7-d7421435c688",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8f1e7ac8-5c75-4220-a4b5-64cc3e0f608f",
                  "parent_uuid": "22598d48-251e-45e8-b9de-14c7704f4f6e",
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
              "uuid": "55189530-abe6-4350-828f-68e172f904d7",
              "parent_uuid": "f9fcc33a-e269-4467-a3a7-d7421435c688",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2e63b487-b372-4bae-ad40-3f05d243437c",
                  "parent_uuid": "55189530-abe6-4350-828f-68e172f904d7",
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
              "uuid": "e421255b-61a6-4d4e-98ff-ceef0fba72bc",
              "parent_uuid": "f9fcc33a-e269-4467-a3a7-d7421435c688",
              "tagName": "td",
              "properties": [
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
                  "uuid": "afd9ad4e-b195-40f0-b5b5-62d2fedf7973",
                  "parent_uuid": "e421255b-61a6-4d4e-98ff-ceef0fba72bc",
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
              "uuid": "1b0f51a5-bf06-46db-9e35-6677ff3bdb0f",
              "parent_uuid": "f9fcc33a-e269-4467-a3a7-d7421435c688",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7e97a031-9fc0-4383-9cda-58b138a9ed4e",
                  "parent_uuid": "1b0f51a5-bf06-46db-9e35-6677ff3bdb0f",
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "3f59d348-cbe9-49d3-9cdc-bdcf79bd3578",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7beb9864-993f-4a42-96c1-07613052e983",
              "parent_uuid": "3f59d348-cbe9-49d3-9cdc-bdcf79bd3578",
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
              "uuid": "6acb6cb1-5786-48ed-be3b-747175a39253",
              "parent_uuid": "3f59d348-cbe9-49d3-9cdc-bdcf79bd3578",
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
              "uuid": "b35c9267-5a8d-4386-9c36-1751318a51df",
              "parent_uuid": "3f59d348-cbe9-49d3-9cdc-bdcf79bd3578",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2691eca2-13d7-4726-9625-f3ae3fa88f0b",
                  "parent_uuid": "b35c9267-5a8d-4386-9c36-1751318a51df",
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
              "uuid": "7d75790c-5e1a-4a6a-8020-cf62a247ca25",
              "parent_uuid": "3f59d348-cbe9-49d3-9cdc-bdcf79bd3578",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eb38726b-9350-4bdb-8af9-67b7c11a6a45",
                  "parent_uuid": "7d75790c-5e1a-4a6a-8020-cf62a247ca25",
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
              "uuid": "8505d44e-8317-4210-a9d8-c12d0a4200e7",
              "parent_uuid": "3f59d348-cbe9-49d3-9cdc-bdcf79bd3578",
              "tagName": "td",
              "properties": [
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
                  "uuid": "379cdcc6-4660-4c94-b26e-1e6cedcd856b",
                  "parent_uuid": "8505d44e-8317-4210-a9d8-c12d0a4200e7",
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
              "uuid": "67ed38a9-675a-4bb2-b2e5-9b544da61cfa",
              "parent_uuid": "3f59d348-cbe9-49d3-9cdc-bdcf79bd3578",
              "tagName": "td",
              "properties": [
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
                  "uuid": "af6fc344-3a06-445d-a7a7-ee65024e807a",
                  "parent_uuid": "67ed38a9-675a-4bb2-b2e5-9b544da61cfa",
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
          "uuid": "cf7f6177-10a2-4f3e-bfae-6786efa065e6",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d6659f9c-ff25-4fdd-ab98-c78de9c90a71",
              "parent_uuid": "cf7f6177-10a2-4f3e-bfae-6786efa065e6",
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
              "uuid": "8d7af2a6-a4cb-4496-b8a4-fd89beb27b98",
              "parent_uuid": "cf7f6177-10a2-4f3e-bfae-6786efa065e6",
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
              "uuid": "f1171704-687c-40a6-852d-685d8bc60707",
              "parent_uuid": "cf7f6177-10a2-4f3e-bfae-6786efa065e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "28ea2033-38e3-4ac3-a803-78413cff5c3f",
                  "parent_uuid": "f1171704-687c-40a6-852d-685d8bc60707",
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
              "uuid": "709b2aaa-bbf9-4c11-b24b-97bce1345d08",
              "parent_uuid": "cf7f6177-10a2-4f3e-bfae-6786efa065e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a80d6b2b-3354-446e-a596-3bee4fa13d6e",
                  "parent_uuid": "709b2aaa-bbf9-4c11-b24b-97bce1345d08",
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
              "uuid": "07e38614-2fce-46ec-9748-0fa7fb623981",
              "parent_uuid": "cf7f6177-10a2-4f3e-bfae-6786efa065e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "81e88a9c-d870-481d-8fb0-92d3eeab93e7",
                  "parent_uuid": "07e38614-2fce-46ec-9748-0fa7fb623981",
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
              "uuid": "480d1024-b955-4374-be7c-00418166599b",
              "parent_uuid": "cf7f6177-10a2-4f3e-bfae-6786efa065e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c5a16003-3ac3-43a3-8b40-8cfa5c8dddf4",
                  "parent_uuid": "480d1024-b955-4374-be7c-00418166599b",
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
          "uuid": "992cec0b-344d-4cef-b862-6e2658907adf",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aab4aa88-6c76-44b3-bdfd-8d4009643791",
              "parent_uuid": "992cec0b-344d-4cef-b862-6e2658907adf",
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
              "uuid": "ee9ca8d3-5715-4753-88da-f3ecccf52e7a",
              "parent_uuid": "992cec0b-344d-4cef-b862-6e2658907adf",
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
              "uuid": "99ec275e-20b4-4d88-a758-7dfdaeb9a021",
              "parent_uuid": "992cec0b-344d-4cef-b862-6e2658907adf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d6912046-11f1-440f-b38c-95717336fcf0",
                  "parent_uuid": "99ec275e-20b4-4d88-a758-7dfdaeb9a021",
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
              "uuid": "9df84639-f4dd-4d79-a544-67d28e92fda1",
              "parent_uuid": "992cec0b-344d-4cef-b862-6e2658907adf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "193d4901-1156-45a4-9d54-d0e6f98ec524",
                  "parent_uuid": "9df84639-f4dd-4d79-a544-67d28e92fda1",
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
              "uuid": "393bef08-1d19-45a4-b9b9-396e12f300d8",
              "parent_uuid": "992cec0b-344d-4cef-b862-6e2658907adf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b4238622-5c56-410e-9d68-3ed5bacaca85",
                  "parent_uuid": "393bef08-1d19-45a4-b9b9-396e12f300d8",
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
              "uuid": "cb6d92fc-2e39-43e1-b1c8-95bf7c1037f5",
              "parent_uuid": "992cec0b-344d-4cef-b862-6e2658907adf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a9b2bfc0-8c5f-4ad9-85fe-56cda488ee82",
                  "parent_uuid": "cb6d92fc-2e39-43e1-b1c8-95bf7c1037f5",
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
          "uuid": "46b7ef6e-e69b-4e03-b6a4-b6917fd46430",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "124d9f14-9cd8-4810-b9d4-c647f29468e6",
              "parent_uuid": "46b7ef6e-e69b-4e03-b6a4-b6917fd46430",
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
              "uuid": "97b2fdd2-54d7-483a-a242-c3f77e7d5c0a",
              "parent_uuid": "46b7ef6e-e69b-4e03-b6a4-b6917fd46430",
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
              "uuid": "fb534d49-7881-40aa-89bc-f8e60c502775",
              "parent_uuid": "46b7ef6e-e69b-4e03-b6a4-b6917fd46430",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b62fba48-a457-4f7e-9a14-247789596a40",
                  "parent_uuid": "fb534d49-7881-40aa-89bc-f8e60c502775",
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
              "uuid": "931ebfee-206e-46e7-a195-604c078fcec8",
              "parent_uuid": "46b7ef6e-e69b-4e03-b6a4-b6917fd46430",
              "tagName": "td",
              "properties": [
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
                  "uuid": "034820ae-f133-4e3d-8af2-6970ec91a444",
                  "parent_uuid": "931ebfee-206e-46e7-a195-604c078fcec8",
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
              "uuid": "71357ba0-e0fa-4327-b748-20080f3ed402",
              "parent_uuid": "46b7ef6e-e69b-4e03-b6a4-b6917fd46430",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ff4462f5-2a9d-48c1-89b8-f8d036e5e044",
                  "parent_uuid": "71357ba0-e0fa-4327-b748-20080f3ed402",
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
              "uuid": "93223282-7a28-46e2-b16c-a84fa0c04477",
              "parent_uuid": "46b7ef6e-e69b-4e03-b6a4-b6917fd46430",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6b28a577-7aa4-4497-9e02-502511e54bd8",
                  "parent_uuid": "93223282-7a28-46e2-b16c-a84fa0c04477",
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
          "uuid": "33e6467b-a92c-477b-829a-747d067f8369",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e745ef9e-dee2-43f4-8d72-9fd9c16a0232",
              "parent_uuid": "33e6467b-a92c-477b-829a-747d067f8369",
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
              "uuid": "5ab14244-81f6-49c7-9cbc-e8e76984834f",
              "parent_uuid": "33e6467b-a92c-477b-829a-747d067f8369",
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
              "uuid": "deb89920-1dd2-4b85-ad35-c65d49eb1232",
              "parent_uuid": "33e6467b-a92c-477b-829a-747d067f8369",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7e77c79e-b72a-44dc-bb2c-2bfd67d86684",
                  "parent_uuid": "deb89920-1dd2-4b85-ad35-c65d49eb1232",
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
              "uuid": "a4e2ead5-4510-4176-82bd-065b85d3872f",
              "parent_uuid": "33e6467b-a92c-477b-829a-747d067f8369",
              "tagName": "td",
              "properties": [
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
                  "uuid": "51d4292c-33b6-449f-993d-1f453a2b411c",
                  "parent_uuid": "a4e2ead5-4510-4176-82bd-065b85d3872f",
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
              "uuid": "14be1e9b-744d-4da8-87bc-b16b6c971e2e",
              "parent_uuid": "33e6467b-a92c-477b-829a-747d067f8369",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b82a7396-9c10-4773-9832-4591d2d5d4fa",
                  "parent_uuid": "14be1e9b-744d-4da8-87bc-b16b6c971e2e",
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
              "uuid": "66499c0b-d2ce-49d9-94f8-b01fbd718cb1",
              "parent_uuid": "33e6467b-a92c-477b-829a-747d067f8369",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6bbceca5-b54c-4d30-b460-f1a55d0bd2d5",
                  "parent_uuid": "66499c0b-d2ce-49d9-94f8-b01fbd718cb1",
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
          "uuid": "15ab154e-a99f-4327-b5a4-af0a0798d195",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "837c7a6c-b171-4923-ad5e-64e723bf7345",
              "parent_uuid": "15ab154e-a99f-4327-b5a4-af0a0798d195",
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
              "uuid": "76af1e4a-ea23-4094-aae8-ffd56c19d963",
              "parent_uuid": "15ab154e-a99f-4327-b5a4-af0a0798d195",
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
              "uuid": "4fbcce57-c798-4b31-9643-6c7c98402d0e",
              "parent_uuid": "15ab154e-a99f-4327-b5a4-af0a0798d195",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5e80f5a9-79c9-46b5-80fe-6901dc1a1e70",
                  "parent_uuid": "4fbcce57-c798-4b31-9643-6c7c98402d0e",
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
              "uuid": "fe82ae33-5fff-4b56-9036-1412c0ada152",
              "parent_uuid": "15ab154e-a99f-4327-b5a4-af0a0798d195",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f1ebc077-0962-4948-b76c-77025d4c31b1",
                  "parent_uuid": "fe82ae33-5fff-4b56-9036-1412c0ada152",
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
              "uuid": "f6cd55ac-052a-40f1-a865-30f6ac149613",
              "parent_uuid": "15ab154e-a99f-4327-b5a4-af0a0798d195",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3bb86aa1-83e2-4700-9f6b-e3706623c190",
                  "parent_uuid": "f6cd55ac-052a-40f1-a865-30f6ac149613",
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
              "uuid": "f86ca45c-5057-4c8c-bf23-ad55972821f0",
              "parent_uuid": "15ab154e-a99f-4327-b5a4-af0a0798d195",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fdc64cbe-0c00-48d0-8db3-40e678140328",
                  "parent_uuid": "f86ca45c-5057-4c8c-bf23-ad55972821f0",
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
          "uuid": "c500ca64-ed93-4965-a5ea-7d9cd717d0f0",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3dc08217-9446-4cbe-b5c2-7418a6e52e6e",
              "parent_uuid": "c500ca64-ed93-4965-a5ea-7d9cd717d0f0",
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
              "uuid": "182e6ad8-298b-444e-9d52-5ec35b61a5c9",
              "parent_uuid": "c500ca64-ed93-4965-a5ea-7d9cd717d0f0",
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
              "uuid": "30fe64f8-3b9c-497d-994e-c46b6b3e9fa3",
              "parent_uuid": "c500ca64-ed93-4965-a5ea-7d9cd717d0f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4e0b9ee0-6cb6-4160-98f3-c0b31cfb38d8",
                  "parent_uuid": "30fe64f8-3b9c-497d-994e-c46b6b3e9fa3",
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
              "uuid": "b8e99cd8-7f0d-4885-b017-3b847b24f054",
              "parent_uuid": "c500ca64-ed93-4965-a5ea-7d9cd717d0f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f4446836-1ea8-4b8c-835a-9372b10fb4f2",
                  "parent_uuid": "b8e99cd8-7f0d-4885-b017-3b847b24f054",
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
              "uuid": "be35c483-98e6-438b-bb0a-fc630a1bc84b",
              "parent_uuid": "c500ca64-ed93-4965-a5ea-7d9cd717d0f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "17f05a3b-b5d9-46f1-a01b-87abd61ded43",
                  "parent_uuid": "be35c483-98e6-438b-bb0a-fc630a1bc84b",
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
              "uuid": "f3f8bce9-34c9-4e4e-b3a2-8610d771a6e0",
              "parent_uuid": "c500ca64-ed93-4965-a5ea-7d9cd717d0f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3581acbd-3628-4cc7-b514-a0bc5681ce39",
                  "parent_uuid": "f3f8bce9-34c9-4e4e-b3a2-8610d771a6e0",
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
          "uuid": "ae7d6adf-acf6-4a0e-bed6-371ae31a4169",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d5695eb-216b-4a28-911b-c8cda0efc242",
              "parent_uuid": "ae7d6adf-acf6-4a0e-bed6-371ae31a4169",
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
              "uuid": "4402f8db-92b5-481f-a4bd-d094c17ae7dc",
              "parent_uuid": "ae7d6adf-acf6-4a0e-bed6-371ae31a4169",
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
              "uuid": "2d1d1c18-6f9d-492c-b921-6dcdba30eb9c",
              "parent_uuid": "ae7d6adf-acf6-4a0e-bed6-371ae31a4169",
              "tagName": "td",
              "properties": [
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
                  "uuid": "293fc4a0-bc9d-4410-aa63-f410d71e5306",
                  "parent_uuid": "2d1d1c18-6f9d-492c-b921-6dcdba30eb9c",
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
              "uuid": "54da26c6-282a-4988-a764-d8b3770fdfa5",
              "parent_uuid": "ae7d6adf-acf6-4a0e-bed6-371ae31a4169",
              "tagName": "td",
              "properties": [
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
                  "uuid": "77ecef41-eb9a-4507-a519-900ed63339f2",
                  "parent_uuid": "54da26c6-282a-4988-a764-d8b3770fdfa5",
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
              "uuid": "e189a0f4-5669-494a-9ca1-d9a33e4ff39b",
              "parent_uuid": "ae7d6adf-acf6-4a0e-bed6-371ae31a4169",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f164758e-c0ed-4608-ae46-9198b7593382",
                  "parent_uuid": "e189a0f4-5669-494a-9ca1-d9a33e4ff39b",
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
              "uuid": "166a54bb-f39b-4285-8e6b-293eaaea19d2",
              "parent_uuid": "ae7d6adf-acf6-4a0e-bed6-371ae31a4169",
              "tagName": "td",
              "properties": [
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
                  "uuid": "63896c34-5f2c-4730-8ff3-98855a4a771e",
                  "parent_uuid": "166a54bb-f39b-4285-8e6b-293eaaea19d2",
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
          "uuid": "7f6369b5-43bf-43d5-8a0b-cd6c5288743c",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9aa8829f-22aa-423e-9afb-48531ccfdbc0",
              "parent_uuid": "7f6369b5-43bf-43d5-8a0b-cd6c5288743c",
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
              "uuid": "c234ddc8-f11d-4c9b-ba68-ac4ebb6d9052",
              "parent_uuid": "7f6369b5-43bf-43d5-8a0b-cd6c5288743c",
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
              "uuid": "23ca6687-45a1-4baf-8829-33ce6b51b6f5",
              "parent_uuid": "7f6369b5-43bf-43d5-8a0b-cd6c5288743c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "28aae360-2ee6-451a-b907-c89b00ae2ff4",
                  "parent_uuid": "23ca6687-45a1-4baf-8829-33ce6b51b6f5",
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
              "uuid": "76bfcf83-f3dd-45d1-97df-3b28ccfdf2d6",
              "parent_uuid": "7f6369b5-43bf-43d5-8a0b-cd6c5288743c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2941151c-76f6-4634-9f87-3307a2790728",
                  "parent_uuid": "76bfcf83-f3dd-45d1-97df-3b28ccfdf2d6",
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
              "uuid": "a3dd3396-895f-4c14-9623-f07b82b08621",
              "parent_uuid": "7f6369b5-43bf-43d5-8a0b-cd6c5288743c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "632f5e00-7346-4637-a825-0a08f90b8459",
                  "parent_uuid": "a3dd3396-895f-4c14-9623-f07b82b08621",
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
              "uuid": "dc7653d1-5757-43d0-beef-d7ad296aff4e",
              "parent_uuid": "7f6369b5-43bf-43d5-8a0b-cd6c5288743c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c2435100-e659-4cfd-8601-97c3ec0d0fb3",
                  "parent_uuid": "dc7653d1-5757-43d0-beef-d7ad296aff4e",
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
          "uuid": "76ca5467-319c-43a5-abb3-40b76d0e3d40",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01969a40-aaa5-4280-8f9f-7fdc6484bf68",
              "parent_uuid": "76ca5467-319c-43a5-abb3-40b76d0e3d40",
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
              "uuid": "eae64b6e-947b-47fe-9558-ebb5e9c40e83",
              "parent_uuid": "76ca5467-319c-43a5-abb3-40b76d0e3d40",
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
              "uuid": "6e703491-f336-4163-8dde-7d113614a96f",
              "parent_uuid": "76ca5467-319c-43a5-abb3-40b76d0e3d40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3f4bb29e-8923-4b98-8c6d-fb50ad18c008",
                  "parent_uuid": "6e703491-f336-4163-8dde-7d113614a96f",
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
              "uuid": "40518d53-ee6a-43dc-b040-76cf269eae20",
              "parent_uuid": "76ca5467-319c-43a5-abb3-40b76d0e3d40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "44bc2887-a7ae-4055-9d2b-ae2859876a6b",
                  "parent_uuid": "40518d53-ee6a-43dc-b040-76cf269eae20",
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
              "uuid": "50cef3c2-c149-40e3-9a9e-c5d4d74c0cfe",
              "parent_uuid": "76ca5467-319c-43a5-abb3-40b76d0e3d40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b06db77f-bccb-48ee-abc5-b9bb47fcd2bb",
                  "parent_uuid": "50cef3c2-c149-40e3-9a9e-c5d4d74c0cfe",
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
              "uuid": "891b89e2-0f20-47ba-8290-4fa08c40adc1",
              "parent_uuid": "76ca5467-319c-43a5-abb3-40b76d0e3d40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "73da9125-3361-4a1f-8f00-87efb6d60304",
                  "parent_uuid": "891b89e2-0f20-47ba-8290-4fa08c40adc1",
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
          "uuid": "b45968c6-9973-48af-8d85-ecc8f861bc2c",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0673b5a8-0b4a-4f90-a476-f8f504c67c13",
              "parent_uuid": "b45968c6-9973-48af-8d85-ecc8f861bc2c",
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
              "uuid": "43fe3b96-4e80-4ed1-af5b-2dc0b6ce7d93",
              "parent_uuid": "b45968c6-9973-48af-8d85-ecc8f861bc2c",
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
              "uuid": "77211871-ac45-45a2-a594-da1eea83b176",
              "parent_uuid": "b45968c6-9973-48af-8d85-ecc8f861bc2c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "84f24de3-a90c-4e2e-9257-61be8303921d",
                  "parent_uuid": "77211871-ac45-45a2-a594-da1eea83b176",
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
              "uuid": "7d759669-8d66-4af5-991b-8d49555051ac",
              "parent_uuid": "b45968c6-9973-48af-8d85-ecc8f861bc2c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4c6a0302-f376-4006-a2ed-2913c3c3b671",
                  "parent_uuid": "7d759669-8d66-4af5-991b-8d49555051ac",
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
              "uuid": "96ea4e15-be58-4bbb-884b-106833f94e76",
              "parent_uuid": "b45968c6-9973-48af-8d85-ecc8f861bc2c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b4763e86-4bb6-4fee-8ec2-90061bd93336",
                  "parent_uuid": "96ea4e15-be58-4bbb-884b-106833f94e76",
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
              "uuid": "26af0488-9256-4074-905c-1a9d2163acec",
              "parent_uuid": "b45968c6-9973-48af-8d85-ecc8f861bc2c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8f970740-c892-4a0f-b3d8-a30c9cffb293",
                  "parent_uuid": "26af0488-9256-4074-905c-1a9d2163acec",
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
          "uuid": "9b4235c6-238d-48e6-ac0f-461f665aa27d",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42ed35c0-e53a-4a03-af66-50be36dfda49",
              "parent_uuid": "9b4235c6-238d-48e6-ac0f-461f665aa27d",
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
              "uuid": "19f5473c-bfbc-44be-9ece-c1f47429c9dc",
              "parent_uuid": "9b4235c6-238d-48e6-ac0f-461f665aa27d",
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
              "uuid": "f9224f4f-3835-4a32-bc4e-f6cc918181cb",
              "parent_uuid": "9b4235c6-238d-48e6-ac0f-461f665aa27d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "faf8a0f9-fc9f-44aa-942c-6a3b6a47a425",
                  "parent_uuid": "f9224f4f-3835-4a32-bc4e-f6cc918181cb",
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
              "uuid": "ee879b34-efc5-4dda-87f2-72537fff2094",
              "parent_uuid": "9b4235c6-238d-48e6-ac0f-461f665aa27d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b8f6cd12-a6dd-4748-9251-d090e9f75f84",
                  "parent_uuid": "ee879b34-efc5-4dda-87f2-72537fff2094",
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
              "uuid": "9f1796a3-ea85-4d17-bdfc-70ed3dba95be",
              "parent_uuid": "9b4235c6-238d-48e6-ac0f-461f665aa27d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "df323da2-a7c7-49a9-b5a6-569d9b0a2cb1",
                  "parent_uuid": "9f1796a3-ea85-4d17-bdfc-70ed3dba95be",
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
              "uuid": "30c6d822-7cee-496f-b571-65caf9d31b35",
              "parent_uuid": "9b4235c6-238d-48e6-ac0f-461f665aa27d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7b2edaa5-f115-4da8-8e1c-c595696c67f1",
                  "parent_uuid": "30c6d822-7cee-496f-b571-65caf9d31b35",
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
          "uuid": "c5de6e22-4f8c-465a-b5de-d86a6b59542e",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5d6d4f4-7d36-4eae-a8e5-f2087b5b953b",
              "parent_uuid": "c5de6e22-4f8c-465a-b5de-d86a6b59542e",
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
              "uuid": "d608d407-7ab7-4626-ac2b-0435c0f28252",
              "parent_uuid": "c5de6e22-4f8c-465a-b5de-d86a6b59542e",
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
              "uuid": "59f61f96-1427-4b25-9f69-bf95fd490beb",
              "parent_uuid": "c5de6e22-4f8c-465a-b5de-d86a6b59542e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "68913e0e-44ce-4710-b606-47efa5139fe7",
                  "parent_uuid": "59f61f96-1427-4b25-9f69-bf95fd490beb",
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
              "uuid": "18726f1d-c6fd-4e28-88bb-a43f3c50e980",
              "parent_uuid": "c5de6e22-4f8c-465a-b5de-d86a6b59542e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9c6e537a-4072-4706-94ed-9a590057686d",
                  "parent_uuid": "18726f1d-c6fd-4e28-88bb-a43f3c50e980",
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
              "uuid": "4e7a4fc7-ada7-49dd-8969-a65c732caf80",
              "parent_uuid": "c5de6e22-4f8c-465a-b5de-d86a6b59542e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "66d59a9c-fca5-446a-9d71-ca6d9f0a5099",
                  "parent_uuid": "4e7a4fc7-ada7-49dd-8969-a65c732caf80",
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
              "uuid": "3ee32a93-417c-4d93-937a-97adc94556a6",
              "parent_uuid": "c5de6e22-4f8c-465a-b5de-d86a6b59542e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "db074355-3aef-41e5-ade5-4eea26b87263",
                  "parent_uuid": "3ee32a93-417c-4d93-937a-97adc94556a6",
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "326749e4-5e12-4fb0-841f-ee52aff17a79",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6530dada-e202-4a03-85bf-17684b29083b",
              "parent_uuid": "326749e4-5e12-4fb0-841f-ee52aff17a79",
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
              "uuid": "74d7da51-6d6f-4dbf-b495-63c5688cf257",
              "parent_uuid": "326749e4-5e12-4fb0-841f-ee52aff17a79",
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
              "uuid": "0074167a-e549-4f13-a378-69792531d8ab",
              "parent_uuid": "326749e4-5e12-4fb0-841f-ee52aff17a79",
              "tagName": "td",
              "properties": [
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
                  "uuid": "77f166d2-0041-4825-b960-fa8e997cdf44",
                  "parent_uuid": "0074167a-e549-4f13-a378-69792531d8ab",
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
              "uuid": "6217d580-aeb2-4948-8756-4c72c072bd02",
              "parent_uuid": "326749e4-5e12-4fb0-841f-ee52aff17a79",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c63e059d-68c0-4a09-8cff-9c4d46e3cab3",
                  "parent_uuid": "6217d580-aeb2-4948-8756-4c72c072bd02",
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
              "uuid": "f0b3da6f-4b4b-43ad-8dec-456cab620822",
              "parent_uuid": "326749e4-5e12-4fb0-841f-ee52aff17a79",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8ce73046-881c-4da3-bde5-c04d3fa97df7",
                  "parent_uuid": "f0b3da6f-4b4b-43ad-8dec-456cab620822",
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
              "uuid": "5df65c43-9785-4c19-84eb-fa261d8693ba",
              "parent_uuid": "326749e4-5e12-4fb0-841f-ee52aff17a79",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ed44d2ce-1f03-4a81-8765-0124ee6724c2",
                  "parent_uuid": "5df65c43-9785-4c19-84eb-fa261d8693ba",
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "b417b02d-8602-4e05-a49a-3ade481d1de5",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c2b6136-3c04-4121-b41f-a7a30a542a99",
              "parent_uuid": "b417b02d-8602-4e05-a49a-3ade481d1de5",
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
              "uuid": "9bf7770e-cdad-452d-8ac7-a933d4a2f2f5",
              "parent_uuid": "b417b02d-8602-4e05-a49a-3ade481d1de5",
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
              "uuid": "bc60ffb8-ab32-4115-b6cd-c0baf31e04f9",
              "parent_uuid": "b417b02d-8602-4e05-a49a-3ade481d1de5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d687b8ba-a993-42ce-8444-e4e2072b88dc",
                  "parent_uuid": "bc60ffb8-ab32-4115-b6cd-c0baf31e04f9",
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
              "uuid": "ba9385f7-99a9-4296-b857-3bd3d94ca281",
              "parent_uuid": "b417b02d-8602-4e05-a49a-3ade481d1de5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b4ea0f05-3754-4e50-bb3a-dae25b90f082",
                  "parent_uuid": "ba9385f7-99a9-4296-b857-3bd3d94ca281",
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
              "uuid": "56396946-ca3e-4c5c-bdac-6a008d8a432e",
              "parent_uuid": "b417b02d-8602-4e05-a49a-3ade481d1de5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e4a5bf43-dcc1-4421-af75-36517e597421",
                  "parent_uuid": "56396946-ca3e-4c5c-bdac-6a008d8a432e",
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
              "uuid": "4147b311-693f-4cde-a6e8-e239866bebcd",
              "parent_uuid": "b417b02d-8602-4e05-a49a-3ade481d1de5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "83ef3d40-d5a0-4403-9192-da1b19461dd7",
                  "parent_uuid": "4147b311-693f-4cde-a6e8-e239866bebcd",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "5ac69656-6532-4978-9764-32af26139033",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "154bdb16-ee1f-4954-b97f-eb2e811efa6a",
              "parent_uuid": "5ac69656-6532-4978-9764-32af26139033",
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
          "uuid": "80292839-de9f-41eb-8e15-1ca33219282a",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e3ed05a-ba21-4ef4-8041-d35e1d02cd32",
              "parent_uuid": "80292839-de9f-41eb-8e15-1ca33219282a",
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
          "uuid": "334608f6-3cd3-4476-9f02-de381bdcbf18",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "56352fad-6125-46ea-8268-5aaa697e18f7",
              "parent_uuid": "334608f6-3cd3-4476-9f02-de381bdcbf18",
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
                  "uuid": "40c2e461-5742-47c7-88a4-e7cf3d60c688",
                  "parent_uuid": "56352fad-6125-46ea-8268-5aaa697e18f7",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "d3385a3f-6059-47e1-981a-e317d515bfad",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "38ef5bc9-29ea-48eb-92f5-e44c8cd8d7e4",
              "parent_uuid": "d3385a3f-6059-47e1-981a-e317d515bfad",
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
          "uuid": "d82629e0-0993-4444-b0f6-dceb317f53a7",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b289327a-75aa-4c40-a416-fb4bbe706912",
              "parent_uuid": "d82629e0-0993-4444-b0f6-dceb317f53a7",
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
          "uuid": "129b425e-31a4-4657-bec7-5e8bff01c8c7",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d8c97ff-5f52-4253-8790-414ac2921781",
              "parent_uuid": "129b425e-31a4-4657-bec7-5e8bff01c8c7",
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
              "uuid": "81c25019-9a35-4378-bc93-4da81fd12e5b",
              "parent_uuid": "129b425e-31a4-4657-bec7-5e8bff01c8c7",
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
              "uuid": "d8bd35ad-f043-46f8-899e-b4079f62eca5",
              "parent_uuid": "129b425e-31a4-4657-bec7-5e8bff01c8c7",
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
              "uuid": "4d6718d3-3831-46b7-9003-3915e842b14a",
              "parent_uuid": "129b425e-31a4-4657-bec7-5e8bff01c8c7",
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
              "uuid": "d9446d6c-ca32-4c28-95b7-68ead2401ec3",
              "parent_uuid": "129b425e-31a4-4657-bec7-5e8bff01c8c7",
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
              "uuid": "af623610-b21c-4be1-a054-8a11bc95e994",
              "parent_uuid": "129b425e-31a4-4657-bec7-5e8bff01c8c7",
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
          "uuid": "9c7d1aec-777a-4c16-9cc7-c49a9b580f05",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "63bff14c-2ecf-467e-b9c9-4e69b3e69041",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "56d26463-6acf-4f18-9421-4f5e92c0bd95",
              "parent_uuid": "63bff14c-2ecf-467e-b9c9-4e69b3e69041",
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
              "uuid": "1e33c9f2-fadc-4137-9803-e896fd6e53d9",
              "parent_uuid": "63bff14c-2ecf-467e-b9c9-4e69b3e69041",
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
              "uuid": "765c1638-5817-4c44-b68b-e909ac85929b",
              "parent_uuid": "63bff14c-2ecf-467e-b9c9-4e69b3e69041",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d6da172-55aa-4e7b-956d-e144ca043a80",
                  "parent_uuid": "765c1638-5817-4c44-b68b-e909ac85929b",
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
              "uuid": "94b9b232-c128-4dc1-a4a0-ceea76e298ee",
              "parent_uuid": "63bff14c-2ecf-467e-b9c9-4e69b3e69041",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a4e8a8fa-5867-4b48-991d-b1260a9026cc",
                  "parent_uuid": "94b9b232-c128-4dc1-a4a0-ceea76e298ee",
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
              "uuid": "b0e4e307-428a-4ac9-9160-92c92541cb98",
              "parent_uuid": "63bff14c-2ecf-467e-b9c9-4e69b3e69041",
              "tagName": "td",
              "properties": [
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
                  "uuid": "11b94928-80d0-47b5-9ce5-521002702b3a",
                  "parent_uuid": "b0e4e307-428a-4ac9-9160-92c92541cb98",
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
              "uuid": "c02bcaba-0f82-4fa0-b3f4-95f5166090eb",
              "parent_uuid": "63bff14c-2ecf-467e-b9c9-4e69b3e69041",
              "tagName": "td",
              "properties": [
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
                  "uuid": "634f3596-ccbe-4ac9-8696-eb84158cae51",
                  "parent_uuid": "c02bcaba-0f82-4fa0-b3f4-95f5166090eb",
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "adff1405-cc5f-498c-a41e-c3714313eedb",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f35847c6-ede3-4332-804f-3934ef6add29",
              "parent_uuid": "adff1405-cc5f-498c-a41e-c3714313eedb",
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
              "uuid": "a9bdc4a3-dbb0-482a-90cc-7c0b2fc90d8c",
              "parent_uuid": "adff1405-cc5f-498c-a41e-c3714313eedb",
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
              "uuid": "459e2db8-b019-4f67-82a3-865cac1009dd",
              "parent_uuid": "adff1405-cc5f-498c-a41e-c3714313eedb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1e202359-561c-467d-b99f-38b179c66cae",
                  "parent_uuid": "459e2db8-b019-4f67-82a3-865cac1009dd",
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
              "uuid": "e18bdf20-d1fc-49b5-be6e-30130cd9d600",
              "parent_uuid": "adff1405-cc5f-498c-a41e-c3714313eedb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "993b92ce-7206-4269-bf98-4f51326e6bcc",
                  "parent_uuid": "e18bdf20-d1fc-49b5-be6e-30130cd9d600",
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
              "uuid": "ae62f648-8f37-4f32-953d-3cffd4757486",
              "parent_uuid": "adff1405-cc5f-498c-a41e-c3714313eedb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ac6049cd-d1d7-45ed-a4c4-0482c1f63b4f",
                  "parent_uuid": "ae62f648-8f37-4f32-953d-3cffd4757486",
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
              "uuid": "6808ca46-19fd-4172-b134-6fb1289f17bb",
              "parent_uuid": "adff1405-cc5f-498c-a41e-c3714313eedb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ace7c2cb-da45-4ff7-a699-7f5720bc3e67",
                  "parent_uuid": "6808ca46-19fd-4172-b134-6fb1289f17bb",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "fa9cf566-558d-4235-ab6d-d6bf9f418614",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b0f7b21e-3ced-4e81-8532-061db5d96e18",
              "parent_uuid": "fa9cf566-558d-4235-ab6d-d6bf9f418614",
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
              "uuid": "57e6ced2-75a9-4170-b5e7-6b3ecaa40354",
              "parent_uuid": "fa9cf566-558d-4235-ab6d-d6bf9f418614",
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
              "uuid": "da297246-d850-4837-8750-0d81a19cf060",
              "parent_uuid": "fa9cf566-558d-4235-ab6d-d6bf9f418614",
              "tagName": "td",
              "properties": [
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
                  "uuid": "55da45b5-941d-43fd-b0fc-f358088f57ab",
                  "parent_uuid": "da297246-d850-4837-8750-0d81a19cf060",
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
              "uuid": "b1200f92-e61c-4e34-a0fa-8a1eb7a29a53",
              "parent_uuid": "fa9cf566-558d-4235-ab6d-d6bf9f418614",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fe313772-3029-40fc-8f0b-2778065e60b4",
                  "parent_uuid": "b1200f92-e61c-4e34-a0fa-8a1eb7a29a53",
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
              "uuid": "8692828a-c6a9-4b6d-a845-680316233b92",
              "parent_uuid": "fa9cf566-558d-4235-ab6d-d6bf9f418614",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fb13cf0c-b089-4cb9-93fc-24858171d6ca",
                  "parent_uuid": "8692828a-c6a9-4b6d-a845-680316233b92",
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
              "uuid": "30fdd83c-f021-42c2-81d9-d7e543b71c39",
              "parent_uuid": "fa9cf566-558d-4235-ab6d-d6bf9f418614",
              "tagName": "td",
              "properties": [
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
                  "uuid": "559dc396-2a5b-4206-a0a9-20ecf99f9862",
                  "parent_uuid": "30fdd83c-f021-42c2-81d9-d7e543b71c39",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "d2f0ee7b-10c4-44ad-a189-65132c0a281e",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97692479-19bc-4a81-b5e8-ea5f83196988",
              "parent_uuid": "d2f0ee7b-10c4-44ad-a189-65132c0a281e",
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
              "uuid": "4d83544a-0c98-4de8-8abf-f90794b7fdfb",
              "parent_uuid": "d2f0ee7b-10c4-44ad-a189-65132c0a281e",
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
              "uuid": "fd88582b-2b80-41dd-abf2-c0c23f2eebf8",
              "parent_uuid": "d2f0ee7b-10c4-44ad-a189-65132c0a281e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d76c873f-1d7a-495a-8b15-34e2bf9dab1a",
                  "parent_uuid": "fd88582b-2b80-41dd-abf2-c0c23f2eebf8",
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
              "uuid": "05e1ae41-5e53-464c-847d-f6c5c0dab3ae",
              "parent_uuid": "d2f0ee7b-10c4-44ad-a189-65132c0a281e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "18d6ac90-059c-495f-a375-7026741f6fcb",
                  "parent_uuid": "05e1ae41-5e53-464c-847d-f6c5c0dab3ae",
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
              "uuid": "4dfa35a5-cabf-4e0e-b0a4-213684279a9a",
              "parent_uuid": "d2f0ee7b-10c4-44ad-a189-65132c0a281e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c0122187-c967-48f0-947f-6f66ccc3d900",
                  "parent_uuid": "4dfa35a5-cabf-4e0e-b0a4-213684279a9a",
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
              "uuid": "9a0bfa36-8764-41d7-a991-fd0a2f203f72",
              "parent_uuid": "d2f0ee7b-10c4-44ad-a189-65132c0a281e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9061d262-e911-46ca-95d9-619bdc2b621d",
                  "parent_uuid": "9a0bfa36-8764-41d7-a991-fd0a2f203f72",
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "f0c11859-2dc1-4219-9cdd-0e71aafa2414",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f3ad203-7058-4e48-a2e3-c9965debffe8",
              "parent_uuid": "f0c11859-2dc1-4219-9cdd-0e71aafa2414",
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
          "uuid": "12f2ad3e-6189-4390-81a5-76caafbe594d",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97794620-665b-4545-b279-ff8e0a3fa7d9",
              "parent_uuid": "12f2ad3e-6189-4390-81a5-76caafbe594d",
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
          "uuid": "8394f70d-1b39-4e78-84d2-a484977cf1f2",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "258077dc-de1f-4379-91e5-178889f733b2",
              "parent_uuid": "8394f70d-1b39-4e78-84d2-a484977cf1f2",
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
                  "uuid": "dde860fc-7d15-4db8-894f-290290589b31",
                  "parent_uuid": "258077dc-de1f-4379-91e5-178889f733b2",
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
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "81bc3404-ee02-4a80-ba01-10ac3087a2a2",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "e5814048-534f-4eff-a906-b099c8923180",
              "parent_uuid": "81bc3404-ee02-4a80-ba01-10ac3087a2a2",
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
          "uuid": "c61c12da-3f6c-405d-8869-df3cdb20e521",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1b7b31b2-2a1f-48c6-96aa-b447b4e46e69",
              "parent_uuid": "c61c12da-3f6c-405d-8869-df3cdb20e521",
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
          "uuid": "1ec25acb-90d4-496e-b5b5-b0340f675301",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1255fa63-c40b-4577-afa9-b1d53f5a0389",
              "parent_uuid": "1ec25acb-90d4-496e-b5b5-b0340f675301",
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
              "uuid": "2e3312bf-3960-48b9-8b10-3b1c9ccec1fc",
              "parent_uuid": "1ec25acb-90d4-496e-b5b5-b0340f675301",
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
              "uuid": "68c5c747-08df-4a3e-bbae-2dac5d7c4402",
              "parent_uuid": "1ec25acb-90d4-496e-b5b5-b0340f675301",
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
              "uuid": "33b47133-22f4-4828-9031-d1808e1e9203",
              "parent_uuid": "1ec25acb-90d4-496e-b5b5-b0340f675301",
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
              "uuid": "71aae245-94ff-4afa-a58b-216c808b9de4",
              "parent_uuid": "1ec25acb-90d4-496e-b5b5-b0340f675301",
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
              "uuid": "af9380f7-cf3d-4bdb-83bb-38ba7b4d5d67",
              "parent_uuid": "1ec25acb-90d4-496e-b5b5-b0340f675301",
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
          "uuid": "6873351e-564e-4316-a4db-c527f9aa3035",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d99a5067-71fa-4a61-9f3d-b4f027fde760",
              "parent_uuid": "6873351e-564e-4316-a4db-c527f9aa3035",
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
              "uuid": "e616c1cb-948f-49f3-8bb2-def4cdd051be",
              "parent_uuid": "6873351e-564e-4316-a4db-c527f9aa3035",
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
              "uuid": "0d722afb-0030-4f4c-b9f5-0cde3bad6d1c",
              "parent_uuid": "6873351e-564e-4316-a4db-c527f9aa3035",
              "tagName": "td",
              "properties": [
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
                  "uuid": "df480e6a-362c-4d01-adf2-9e0bdf66cfc8",
                  "parent_uuid": "0d722afb-0030-4f4c-b9f5-0cde3bad6d1c",
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
              "uuid": "5c15c50c-58ff-4009-a61e-31f591aa8593",
              "parent_uuid": "6873351e-564e-4316-a4db-c527f9aa3035",
              "tagName": "td",
              "properties": [
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
                  "uuid": "98ac3ffa-135a-4648-9a4c-16dc9541efba",
                  "parent_uuid": "5c15c50c-58ff-4009-a61e-31f591aa8593",
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
              "uuid": "c577d997-6394-4386-9a7c-385886dbd9c5",
              "parent_uuid": "6873351e-564e-4316-a4db-c527f9aa3035",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7a7f3fae-ab79-4b7f-9da6-d33704d1f89b",
                  "parent_uuid": "c577d997-6394-4386-9a7c-385886dbd9c5",
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
              "uuid": "d3b58395-d0e3-4358-bc12-caefff061132",
              "parent_uuid": "6873351e-564e-4316-a4db-c527f9aa3035",
              "tagName": "td",
              "properties": [
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
                  "uuid": "efdb3e7c-65aa-4460-8349-8aba14568c58",
                  "parent_uuid": "d3b58395-d0e3-4358-bc12-caefff061132",
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
          "uuid": "4f399e23-7451-4d05-a14c-5bdafeceef27",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a22cbd74-dc09-4a96-a5ce-9f83f163e529",
              "parent_uuid": "4f399e23-7451-4d05-a14c-5bdafeceef27",
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
              "uuid": "3acbfe9f-75a1-4bd5-9bb0-042dcf6f6652",
              "parent_uuid": "4f399e23-7451-4d05-a14c-5bdafeceef27",
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
              "uuid": "8ead9c96-e554-4eab-bde9-d48a1f9e6098",
              "parent_uuid": "4f399e23-7451-4d05-a14c-5bdafeceef27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "046a1e58-8079-4671-9ea2-ad2cac2f3abb",
                  "parent_uuid": "8ead9c96-e554-4eab-bde9-d48a1f9e6098",
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
              "uuid": "4c039f53-acc5-46d9-8774-e1eb2695bdb0",
              "parent_uuid": "4f399e23-7451-4d05-a14c-5bdafeceef27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cf0af107-5ac0-4c94-a830-e1ead8d77c27",
                  "parent_uuid": "4c039f53-acc5-46d9-8774-e1eb2695bdb0",
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
              "uuid": "e9436cd4-c04d-465f-96f4-91b1ad3bfdd5",
              "parent_uuid": "4f399e23-7451-4d05-a14c-5bdafeceef27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "09349344-30b4-45aa-811b-541719b6b501",
                  "parent_uuid": "e9436cd4-c04d-465f-96f4-91b1ad3bfdd5",
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
              "uuid": "7ce4152c-2880-4ef2-b6e8-6010109d0d38",
              "parent_uuid": "4f399e23-7451-4d05-a14c-5bdafeceef27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "53cf7c59-d58a-46bf-8900-f0dea2311cdb",
                  "parent_uuid": "7ce4152c-2880-4ef2-b6e8-6010109d0d38",
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
          "uuid": "14287e3c-3da4-4d37-b302-2006688a57cb",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e82f0ec6-dd05-4462-b498-e46dca73e73a",
              "parent_uuid": "14287e3c-3da4-4d37-b302-2006688a57cb",
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
              "uuid": "72fd7670-7fbd-40fa-b101-db4c6409512d",
              "parent_uuid": "14287e3c-3da4-4d37-b302-2006688a57cb",
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
              "uuid": "e4c9168d-00cb-4b1b-bee6-ec6b8c2abfc0",
              "parent_uuid": "14287e3c-3da4-4d37-b302-2006688a57cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "52da9c8a-19f2-4733-921e-0506f3c5fcf1",
                  "parent_uuid": "e4c9168d-00cb-4b1b-bee6-ec6b8c2abfc0",
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
              "uuid": "1771b7c9-66c9-475b-b2ab-93b3157d9813",
              "parent_uuid": "14287e3c-3da4-4d37-b302-2006688a57cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "127532de-2adc-4fd8-844d-d94ee47c0acb",
                  "parent_uuid": "1771b7c9-66c9-475b-b2ab-93b3157d9813",
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
              "uuid": "ade1af1f-cefd-482c-aa7d-4ff33da06a04",
              "parent_uuid": "14287e3c-3da4-4d37-b302-2006688a57cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b6a7285f-a60c-4c3a-af79-66d96ce36fec",
                  "parent_uuid": "ade1af1f-cefd-482c-aa7d-4ff33da06a04",
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
              "uuid": "4885bb3b-b416-4355-a80f-558a23d954f7",
              "parent_uuid": "14287e3c-3da4-4d37-b302-2006688a57cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3fcd537a-d6df-4ea3-b113-ab4429ecb899",
                  "parent_uuid": "4885bb3b-b416-4355-a80f-558a23d954f7",
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
          "uuid": "a663334a-9b5e-485e-a64b-d91007bcb619",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0110104-eb48-4318-93b8-16becf15b18b",
              "parent_uuid": "a663334a-9b5e-485e-a64b-d91007bcb619",
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
              "uuid": "01d2b0fc-56e3-49cc-bc40-77d38043ad3f",
              "parent_uuid": "a663334a-9b5e-485e-a64b-d91007bcb619",
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
              "uuid": "74d0a8ce-e0ef-4574-8915-ccdbe77c4ff6",
              "parent_uuid": "a663334a-9b5e-485e-a64b-d91007bcb619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d9a40caf-240b-41cc-ab68-2c4f58f47791",
                  "parent_uuid": "74d0a8ce-e0ef-4574-8915-ccdbe77c4ff6",
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
              "uuid": "8aa0b4a3-eb90-4645-bcd4-2aa882a1a81e",
              "parent_uuid": "a663334a-9b5e-485e-a64b-d91007bcb619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fe516a43-22ea-4ef0-bc22-11f9901f2d6d",
                  "parent_uuid": "8aa0b4a3-eb90-4645-bcd4-2aa882a1a81e",
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
              "uuid": "35ed680a-8f54-4e20-9e17-5688ffc76943",
              "parent_uuid": "a663334a-9b5e-485e-a64b-d91007bcb619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aa82e6df-b591-4d8d-a2dc-27e7c1043ef1",
                  "parent_uuid": "35ed680a-8f54-4e20-9e17-5688ffc76943",
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
              "uuid": "6de68ab3-ceb8-4757-86f5-d3fd7e881e00",
              "parent_uuid": "a663334a-9b5e-485e-a64b-d91007bcb619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8d190531-10e9-4522-8185-f43f4ae129e6",
                  "parent_uuid": "6de68ab3-ceb8-4757-86f5-d3fd7e881e00",
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "252fc37f-947b-4749-9b46-2bcb2a500cac",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d4ac601-19a7-4164-ab2c-8dc8211222c4",
              "parent_uuid": "252fc37f-947b-4749-9b46-2bcb2a500cac",
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
              "uuid": "2c15564c-4f97-43aa-8cdc-3db90e811562",
              "parent_uuid": "252fc37f-947b-4749-9b46-2bcb2a500cac",
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
              "uuid": "d7a175f0-c76d-4ff3-8779-4d9ab16000aa",
              "parent_uuid": "252fc37f-947b-4749-9b46-2bcb2a500cac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7ac20050-8abb-462d-ab30-c92a42c45a03",
                  "parent_uuid": "d7a175f0-c76d-4ff3-8779-4d9ab16000aa",
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
              "uuid": "39fedef1-7775-439c-b6da-a1489662fab3",
              "parent_uuid": "252fc37f-947b-4749-9b46-2bcb2a500cac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "24cdf3aa-a51f-4e67-bf3a-6efae59d77ac",
                  "parent_uuid": "39fedef1-7775-439c-b6da-a1489662fab3",
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
              "uuid": "13cafac3-3ce3-4245-ab33-1f7555dacc41",
              "parent_uuid": "252fc37f-947b-4749-9b46-2bcb2a500cac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "17be2fe4-a4d7-447b-8ba8-85d4aa9b4a7e",
                  "parent_uuid": "13cafac3-3ce3-4245-ab33-1f7555dacc41",
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
              "uuid": "667f940e-f0aa-4afa-b463-24dfc629b7ba",
              "parent_uuid": "252fc37f-947b-4749-9b46-2bcb2a500cac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c54709db-150c-4e7d-a6d3-4e94988dc46f",
                  "parent_uuid": "667f940e-f0aa-4afa-b463-24dfc629b7ba",
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "e31cd7fd-facd-45ba-ab87-2e0c67d42e35",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "83428a96-1d61-49a8-86c0-29dd1ec1c814",
              "parent_uuid": "e31cd7fd-facd-45ba-ab87-2e0c67d42e35",
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
              "uuid": "207f27a8-ca3c-4d58-bfd2-a015181eb112",
              "parent_uuid": "e31cd7fd-facd-45ba-ab87-2e0c67d42e35",
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
              "uuid": "302f9ec0-c496-4344-b9d7-c4bc5cce746d",
              "parent_uuid": "e31cd7fd-facd-45ba-ab87-2e0c67d42e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "69e3fd6b-b3d3-4843-99e3-d6bf72893726",
                  "parent_uuid": "302f9ec0-c496-4344-b9d7-c4bc5cce746d",
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
              "uuid": "0b57e0e3-41b2-42e2-ae02-3b1c68a542c2",
              "parent_uuid": "e31cd7fd-facd-45ba-ab87-2e0c67d42e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "71379480-cc99-403b-829f-d05f1433275e",
                  "parent_uuid": "0b57e0e3-41b2-42e2-ae02-3b1c68a542c2",
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
              "uuid": "eb660964-dde6-46c2-87ef-d7963ba71258",
              "parent_uuid": "e31cd7fd-facd-45ba-ab87-2e0c67d42e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c3f3f924-9186-4162-811c-e73feda207e8",
                  "parent_uuid": "eb660964-dde6-46c2-87ef-d7963ba71258",
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
              "uuid": "2e8c97eb-e0a2-4457-87bc-a0f372192153",
              "parent_uuid": "e31cd7fd-facd-45ba-ab87-2e0c67d42e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c22a3cc-3833-4174-b91b-02c2e211abe6",
                  "parent_uuid": "2e8c97eb-e0a2-4457-87bc-a0f372192153",
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "35c83943-ade7-4d0a-b768-14da7f4a628f",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4e51013-21f4-4c5b-a4c3-3b33b445c75a",
              "parent_uuid": "35c83943-ade7-4d0a-b768-14da7f4a628f",
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
          "uuid": "5e3de00f-a5cd-4c8b-92c5-5483a788cfac",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e34a686e-3372-45e2-a262-be6f6db24639",
              "parent_uuid": "5e3de00f-a5cd-4c8b-92c5-5483a788cfac",
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
          "uuid": "c77cc2e0-f538-4695-823d-00512916056d",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3c08034-63e2-4e32-9bf8-78d25e6cf005",
              "parent_uuid": "c77cc2e0-f538-4695-823d-00512916056d",
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
                  "uuid": "476abafd-59ca-4e13-8e75-196978d41d91",
                  "parent_uuid": "b3c08034-63e2-4e32-9bf8-78d25e6cf005",
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
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "f0e25586-fb29-4b70-a62d-1411fe832885",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d915e4e6-57e8-4449-aba1-ce809f4c8fae",
              "parent_uuid": "f0e25586-fb29-4b70-a62d-1411fe832885",
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
          "uuid": "33c8298e-bcab-4d58-868d-492bc40bd18a",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a1a99f30-aecf-4c12-9dca-4f66c8562dcf",
              "parent_uuid": "33c8298e-bcab-4d58-868d-492bc40bd18a",
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
          "uuid": "002d32b6-04fc-4370-904e-bd02631d6bad",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "684c68ae-1dbb-408f-927c-cbd6690056c1",
              "parent_uuid": "002d32b6-04fc-4370-904e-bd02631d6bad",
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
              "uuid": "2e055276-fc55-4d04-b89c-fbb532d22179",
              "parent_uuid": "002d32b6-04fc-4370-904e-bd02631d6bad",
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
              "uuid": "94446045-3fcb-4df0-98cd-050cae8669f6",
              "parent_uuid": "002d32b6-04fc-4370-904e-bd02631d6bad",
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
              "uuid": "bb62fdac-8f5e-4212-bceb-e92187422a47",
              "parent_uuid": "002d32b6-04fc-4370-904e-bd02631d6bad",
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
              "uuid": "236838ab-edaa-445e-87c1-e858ecd9b0aa",
              "parent_uuid": "002d32b6-04fc-4370-904e-bd02631d6bad",
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
          "uuid": "201c59c4-e227-494f-b950-e3852e1d324a",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a9c35d9-4840-4476-92f3-82a16eed2dbc",
              "parent_uuid": "201c59c4-e227-494f-b950-e3852e1d324a",
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
              "uuid": "1e3c9b64-d03d-4e69-b220-87857ed442b1",
              "parent_uuid": "201c59c4-e227-494f-b950-e3852e1d324a",
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
              "uuid": "dd2453ba-9c1f-4a63-98b7-63c632f3dd33",
              "parent_uuid": "201c59c4-e227-494f-b950-e3852e1d324a",
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
              "uuid": "0c93b61f-d6ce-4a9c-88ae-fc44dc0e73fd",
              "parent_uuid": "201c59c4-e227-494f-b950-e3852e1d324a",
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
              "uuid": "181548fa-172a-4601-81cb-abb5aa910efe",
              "parent_uuid": "201c59c4-e227-494f-b950-e3852e1d324a",
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
          "uuid": "e058f3cd-58ee-44c6-8061-8e36b9a33922",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27629ca7-0d87-4a07-a845-b769c33c178e",
              "parent_uuid": "e058f3cd-58ee-44c6-8061-8e36b9a33922",
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
              "uuid": "b31eda8c-dd64-4b74-a981-aaee2ef187de",
              "parent_uuid": "e058f3cd-58ee-44c6-8061-8e36b9a33922",
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
              "uuid": "2327b9ed-0a91-4b0a-ac6a-18c28e3adbcc",
              "parent_uuid": "e058f3cd-58ee-44c6-8061-8e36b9a33922",
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
              "uuid": "fe74680b-eb11-4470-a4a4-07ef4bb83eab",
              "parent_uuid": "e058f3cd-58ee-44c6-8061-8e36b9a33922",
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
              "uuid": "98e0420c-1ab4-458a-abac-d55e460311ae",
              "parent_uuid": "e058f3cd-58ee-44c6-8061-8e36b9a33922",
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
          "uuid": "8b6bcef0-edc0-44a5-8df1-243e7b250fa1",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bdb63b00-eee1-464d-abc2-35266056ed57",
              "parent_uuid": "8b6bcef0-edc0-44a5-8df1-243e7b250fa1",
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
              "uuid": "3899685c-cf5d-47d2-8638-84d1ef760cec",
              "parent_uuid": "8b6bcef0-edc0-44a5-8df1-243e7b250fa1",
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
              "uuid": "e47a1758-9f41-45bb-9edc-f538b3052e9e",
              "parent_uuid": "8b6bcef0-edc0-44a5-8df1-243e7b250fa1",
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
              "uuid": "ab92640a-d63c-469c-bd9f-f463feef4232",
              "parent_uuid": "8b6bcef0-edc0-44a5-8df1-243e7b250fa1",
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
              "uuid": "d53eade9-16db-4f9c-a541-ae2b444dc5a1",
              "parent_uuid": "8b6bcef0-edc0-44a5-8df1-243e7b250fa1",
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
          "uuid": "ddcceaa1-f52b-47e3-8b1a-a22fc37ef97e",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "333fb5d8-c6f9-46f1-85be-03760178f8f1",
              "parent_uuid": "ddcceaa1-f52b-47e3-8b1a-a22fc37ef97e",
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
              "uuid": "ae47c073-72f1-4b3e-a953-bd1a4062c68b",
              "parent_uuid": "ddcceaa1-f52b-47e3-8b1a-a22fc37ef97e",
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
              "uuid": "db43221a-0955-445d-8c47-d49232d037a4",
              "parent_uuid": "ddcceaa1-f52b-47e3-8b1a-a22fc37ef97e",
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
              "uuid": "28859cd3-521e-4c5e-824e-c7c5f0260bc3",
              "parent_uuid": "ddcceaa1-f52b-47e3-8b1a-a22fc37ef97e",
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
              "uuid": "50c48abd-d638-4f3e-9450-38021f9ed6c4",
              "parent_uuid": "ddcceaa1-f52b-47e3-8b1a-a22fc37ef97e",
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
          "uuid": "7feee325-6727-4c3e-9b6c-fc9f69c71bf6",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8e693d6e-fd72-4c8c-a1ff-4e45d4fa8b5b",
              "parent_uuid": "7feee325-6727-4c3e-9b6c-fc9f69c71bf6",
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
              "uuid": "8d6ed40e-2928-4665-a42e-efab4eee690d",
              "parent_uuid": "7feee325-6727-4c3e-9b6c-fc9f69c71bf6",
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
              "uuid": "f7033cfe-299b-49a3-9648-f78ba1aba5a1",
              "parent_uuid": "7feee325-6727-4c3e-9b6c-fc9f69c71bf6",
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
              "uuid": "e4cd4e90-0691-4729-97cd-025434d6866a",
              "parent_uuid": "7feee325-6727-4c3e-9b6c-fc9f69c71bf6",
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
              "uuid": "a9293ae3-7e0c-4245-8c07-448c48824601",
              "parent_uuid": "7feee325-6727-4c3e-9b6c-fc9f69c71bf6",
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
          "uuid": "21c83fc5-a6a3-4f69-a851-2aa21a4d7878",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75c5fe7e-e243-404d-9b60-6d355336b710",
              "parent_uuid": "21c83fc5-a6a3-4f69-a851-2aa21a4d7878",
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
              "uuid": "4fbcadb8-6c27-4d96-82ab-a8a4710a4909",
              "parent_uuid": "21c83fc5-a6a3-4f69-a851-2aa21a4d7878",
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
              "uuid": "ab8328f7-7e4d-4509-bc14-183d8e360ca2",
              "parent_uuid": "21c83fc5-a6a3-4f69-a851-2aa21a4d7878",
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
              "uuid": "2e260edc-f712-49a9-8a89-0d19ca9a554e",
              "parent_uuid": "21c83fc5-a6a3-4f69-a851-2aa21a4d7878",
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
              "uuid": "453b9bb1-a69d-4695-ace7-941f0a0d558e",
              "parent_uuid": "21c83fc5-a6a3-4f69-a851-2aa21a4d7878",
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
          "uuid": "9b1bd6c0-49d4-42bf-bcc2-0a46023a0b96",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aefb4cb6-05d8-40ca-ba93-e25d6ec471e4",
              "parent_uuid": "9b1bd6c0-49d4-42bf-bcc2-0a46023a0b96",
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
              "uuid": "45424b51-654a-4ff9-a74f-b876aa43a314",
              "parent_uuid": "9b1bd6c0-49d4-42bf-bcc2-0a46023a0b96",
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
              "uuid": "4a680e59-b591-4384-b944-c5e849ec7451",
              "parent_uuid": "9b1bd6c0-49d4-42bf-bcc2-0a46023a0b96",
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
              "uuid": "b7cb99b5-59e8-4dbc-93a3-f15516c746e0",
              "parent_uuid": "9b1bd6c0-49d4-42bf-bcc2-0a46023a0b96",
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
              "uuid": "c5e91806-df8a-48cd-9f85-67174ffb4ac4",
              "parent_uuid": "9b1bd6c0-49d4-42bf-bcc2-0a46023a0b96",
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
          "uuid": "e4737a86-676d-4dd6-b542-c7a65055255c",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53734318-7ce1-4515-9503-1d7d719b8343",
              "parent_uuid": "e4737a86-676d-4dd6-b542-c7a65055255c",
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
              "uuid": "3276318f-e5c7-40bb-9dbf-d43ce7efb837",
              "parent_uuid": "e4737a86-676d-4dd6-b542-c7a65055255c",
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
              "uuid": "2e7421f1-4d55-4d35-9f2f-2e15a4c3ae3f",
              "parent_uuid": "e4737a86-676d-4dd6-b542-c7a65055255c",
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
              "uuid": "3daffdc9-1d84-4696-93e6-e07c8413f805",
              "parent_uuid": "e4737a86-676d-4dd6-b542-c7a65055255c",
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
              "uuid": "6ad938a9-73a2-400c-bbcb-fee2b4cd507c",
              "parent_uuid": "e4737a86-676d-4dd6-b542-c7a65055255c",
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
          "uuid": "607a547f-cd5e-4641-bbe1-ee516aefe0fb",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a57f2a8c-7189-49c1-91fe-396497f0fbf1",
              "parent_uuid": "607a547f-cd5e-4641-bbe1-ee516aefe0fb",
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
              "uuid": "6f142375-d348-49a5-b371-ce7d0117edef",
              "parent_uuid": "607a547f-cd5e-4641-bbe1-ee516aefe0fb",
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
              "uuid": "511b3791-d6b6-44b6-a150-f24dacd81714",
              "parent_uuid": "607a547f-cd5e-4641-bbe1-ee516aefe0fb",
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
              "uuid": "a9760cb5-1412-475b-aaa0-54e37817e1c7",
              "parent_uuid": "607a547f-cd5e-4641-bbe1-ee516aefe0fb",
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
              "uuid": "bf7fe56f-2ddc-4950-9d3c-ca3cb561a443",
              "parent_uuid": "607a547f-cd5e-4641-bbe1-ee516aefe0fb",
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
          "uuid": "351074a3-3cb7-4836-9408-2e36d3312004",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51edbe52-4524-4f35-830d-f27c43df9f1b",
              "parent_uuid": "351074a3-3cb7-4836-9408-2e36d3312004",
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
              "uuid": "3d64396b-08ea-4ffc-9221-a5fba9c20adc",
              "parent_uuid": "351074a3-3cb7-4836-9408-2e36d3312004",
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
              "uuid": "ff65ca01-4f74-4a8f-8703-0e8132f23134",
              "parent_uuid": "351074a3-3cb7-4836-9408-2e36d3312004",
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
              "uuid": "11c3765f-8016-4405-ab6f-00c0cc506f1e",
              "parent_uuid": "351074a3-3cb7-4836-9408-2e36d3312004",
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
              "uuid": "1f2352d1-020d-4ce7-a7a1-b602899506c6",
              "parent_uuid": "351074a3-3cb7-4836-9408-2e36d3312004",
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
          "uuid": "464675b1-bfa3-4fbd-ae05-8fafc4e2d7b6",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0fd03d9-345f-4af8-93d6-576eeb4db5a7",
              "parent_uuid": "464675b1-bfa3-4fbd-ae05-8fafc4e2d7b6",
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
              "uuid": "89d2fa2d-f577-43f1-a58e-1aada65eea19",
              "parent_uuid": "464675b1-bfa3-4fbd-ae05-8fafc4e2d7b6",
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
              "uuid": "c4b1bd6d-7e27-4d39-973d-fa6ab51df32e",
              "parent_uuid": "464675b1-bfa3-4fbd-ae05-8fafc4e2d7b6",
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
              "uuid": "5326fdbe-7d66-4bf5-81ac-9b1328d06b2a",
              "parent_uuid": "464675b1-bfa3-4fbd-ae05-8fafc4e2d7b6",
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
              "uuid": "318f575d-6bea-4af3-a187-c24a9fb2f2f7",
              "parent_uuid": "464675b1-bfa3-4fbd-ae05-8fafc4e2d7b6",
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
          "uuid": "2b2d0edb-0e3b-4bf6-bcf8-873b0d629f82",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "25d503d4-b85d-4800-8b7c-4310075e46a8",
              "parent_uuid": "2b2d0edb-0e3b-4bf6-bcf8-873b0d629f82",
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
              "uuid": "df8b99e1-8b35-4c54-9dce-41d91d4e5a7d",
              "parent_uuid": "2b2d0edb-0e3b-4bf6-bcf8-873b0d629f82",
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
              "uuid": "4a5fa6f4-f947-4af3-9785-561e107bd989",
              "parent_uuid": "2b2d0edb-0e3b-4bf6-bcf8-873b0d629f82",
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
              "uuid": "c560e748-1ed7-4b0e-aa7e-38b4fc9550c3",
              "parent_uuid": "2b2d0edb-0e3b-4bf6-bcf8-873b0d629f82",
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
              "uuid": "718d42e4-2dd0-4400-ad9f-48d4560b7947",
              "parent_uuid": "2b2d0edb-0e3b-4bf6-bcf8-873b0d629f82",
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
          "uuid": "3b9e9e5c-5d71-4207-8422-2b3a557bad6f",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dfdfe94c-fd16-4ea8-8bdb-f2622e848158",
              "parent_uuid": "3b9e9e5c-5d71-4207-8422-2b3a557bad6f",
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
          "uuid": "a6f97997-f748-4c92-913d-35ec92655a8f",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f5894aee-119a-482b-90d3-2887a8f4d222",
              "parent_uuid": "a6f97997-f748-4c92-913d-35ec92655a8f",
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
          "uuid": "0f1f29c2-6b0c-4cf2-aac3-d576af3ce8ac",
          "parent_uuid": "2a7c1a1e-7af1-4c9b-b0b6-38c7069b8ade",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "875a4ab2-4afa-4fab-951f-f4af3c2e2712",
              "parent_uuid": "0f1f29c2-6b0c-4cf2-aac3-d576af3ce8ac",
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
                  "uuid": "a362826a-c567-4b6b-84a6-c5a9195c8fa1",
                  "parent_uuid": "875a4ab2-4afa-4fab-951f-f4af3c2e2712",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS cl_uid 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 



DECLARE @allChecklists TABLE (CL_UID uniqueidentifier NOT NULL PRIMARY KEY, CL_Name nvarchar(256) NULL, CL_Sort int NULL) 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Sort) 
          SELECT 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID, N'Schüttgutcontainer' AS CL_Name, 1 AS CL_Sort 
UNION ALL SELECT '1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS CL_UID, N'EVA' AS CL_Name, 2 AS CL_Sort 
UNION ALL SELECT '58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS CL_UID, N'CIS' AS CL_Name, 3 AS CL_Sort 
UNION ALL SELECT 'DA19D272-9439-47A7-9749-153DAFAB2B69' AS CL_UID, N'VHP' AS CL_Name, 4 AS CL_Sort 
UNION ALL SELECT '698EA23D-485A-4CEE-9B06-2E130A3A5626' AS CL_UID, N'NPL' AS CL_Name, 5 AS CL_Sort 
UNION ALL SELECT 'F1A2DD8A-2D11-496E-9B14-13559405089F' AS CL_UID, N'BPS_M7' AS CL_Name, 6 AS CL_Sort 
UNION ALL SELECT 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS CL_UID, N'BPS_1020' AS CL_Name, 7 AS CL_Sort 
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
		,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'F1A2DD8A-2D11-496E-9B14-13559405089F'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

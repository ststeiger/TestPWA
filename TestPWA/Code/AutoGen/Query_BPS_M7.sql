
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
  "uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "eac847a1-a0d3-43d8-92c1-2e970842e688",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "b9ea6e7d-1b8f-4dd6-bfd9-47e8e39dbc8f",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "377fa90f-bd15-4d17-ab95-ea2c95bfe294",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "94caf9c0-819f-4be0-a3fa-31e71c06064f",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "a1f29324-599a-41c2-a151-20b9fd701467",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "9c00fb6b-d9a0-4f02-b70c-21ebf5d88c1b",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "679567c5-dcc6-43b4-a0f0-716a68387784",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
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
      "uuid": "50e3261c-3304-4290-bb70-d0692b620694",
      "parent_uuid": "5750b490-1912-4390-8904-fe4c8a39908b",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "287c2310-0bc4-4816-8b21-1352461210e0",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "4bba4899-fd58-4629-8a67-c1773fb06ad7",
              "parent_uuid": "287c2310-0bc4-4816-8b21-1352461210e0",
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
              "uuid": "244045e6-c154-472c-ae1b-0e0c5ccdfd0b",
              "parent_uuid": "287c2310-0bc4-4816-8b21-1352461210e0",
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
              "uuid": "da4aef22-78d1-4ec3-a895-2e5ac78a3029",
              "parent_uuid": "287c2310-0bc4-4816-8b21-1352461210e0",
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
              "uuid": "e8bb54b7-b676-42ad-a95b-6d5a41e71f1f",
              "parent_uuid": "287c2310-0bc4-4816-8b21-1352461210e0",
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
          "uuid": "e2b34e60-51ab-452e-9834-7cc57a4e1bb3",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "bd8833bf-1d29-4119-bcb6-7e309a36f76a",
              "parent_uuid": "e2b34e60-51ab-452e-9834-7cc57a4e1bb3",
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
              "uuid": "f389ff26-0fc3-472b-9536-f39bfb2c2b4b",
              "parent_uuid": "e2b34e60-51ab-452e-9834-7cc57a4e1bb3",
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
              "uuid": "e91ec284-9981-43eb-a3dc-159f8ebf5c71",
              "parent_uuid": "e2b34e60-51ab-452e-9834-7cc57a4e1bb3",
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
              "uuid": "07233401-1d5e-4fa8-84b8-c6b9ce50dd24",
              "parent_uuid": "e2b34e60-51ab-452e-9834-7cc57a4e1bb3",
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
          "uuid": "1328c6d5-8b5b-4f96-9eff-a30581c67bda",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d47a3b0d-2b01-466c-9d67-de4c0816114d",
              "parent_uuid": "1328c6d5-8b5b-4f96-9eff-a30581c67bda",
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
              "uuid": "a053b065-ad51-4458-a0b6-20124ab786a7",
              "parent_uuid": "1328c6d5-8b5b-4f96-9eff-a30581c67bda",
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
              "uuid": "6141b74c-fd45-453e-8f55-5fa7574b242f",
              "parent_uuid": "1328c6d5-8b5b-4f96-9eff-a30581c67bda",
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
              "uuid": "bf9d1101-2949-46d2-b0d9-5ee24357c807",
              "parent_uuid": "1328c6d5-8b5b-4f96-9eff-a30581c67bda",
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
              "uuid": "3d51b080-f8ff-4f21-9bba-28b37bb8797d",
              "parent_uuid": "1328c6d5-8b5b-4f96-9eff-a30581c67bda",
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
              "uuid": "459d915b-7c35-433a-8c2b-8c2cc37ee75a",
              "parent_uuid": "1328c6d5-8b5b-4f96-9eff-a30581c67bda",
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
          "uuid": "386b46d0-4fb9-4e06-8f5e-b8bcf18f4cf3",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "51f098f1-effe-411f-9faa-8797798ad048",
              "parent_uuid": "386b46d0-4fb9-4e06-8f5e-b8bcf18f4cf3",
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
          "uuid": "28731df0-3b3f-4de5-8f1c-f1fbf5809098",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc7bf45e-4ab2-403e-a4f1-84cc7d4dc9dc",
              "parent_uuid": "28731df0-3b3f-4de5-8f1c-f1fbf5809098",
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
              "uuid": "955c940d-07c2-433e-b3c8-5e85b0722237",
              "parent_uuid": "28731df0-3b3f-4de5-8f1c-f1fbf5809098",
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
              "uuid": "4992f263-bc24-44de-86c3-0b28522ee4c2",
              "parent_uuid": "28731df0-3b3f-4de5-8f1c-f1fbf5809098",
              "tagName": "td",
              "properties": [
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
                  "uuid": "81f9f880-706f-4e28-a490-72155d2872e3",
                  "parent_uuid": "4992f263-bc24-44de-86c3-0b28522ee4c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb0a7450-54cb-4d45-b1b1-fdcb9fa15f12",
              "parent_uuid": "28731df0-3b3f-4de5-8f1c-f1fbf5809098",
              "tagName": "td",
              "properties": [
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
                  "uuid": "65552d07-ecca-4705-91a3-70d8ba57c9df",
                  "parent_uuid": "eb0a7450-54cb-4d45-b1b1-fdcb9fa15f12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aee1f945-9db8-4090-a371-25be4a8af241",
              "parent_uuid": "28731df0-3b3f-4de5-8f1c-f1fbf5809098",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7166df96-a536-481e-bf6a-306a88c48cce",
                  "parent_uuid": "aee1f945-9db8-4090-a371-25be4a8af241",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3215885-4e03-45c9-ad68-385ee278178c",
              "parent_uuid": "28731df0-3b3f-4de5-8f1c-f1fbf5809098",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a3af7c2e-4440-4512-8668-6a3f7d01cc28",
                  "parent_uuid": "e3215885-4e03-45c9-ad68-385ee278178c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "39a26994-05aa-43f4-ab9f-bc9851db290f",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae14ce72-ea75-47ae-a2ee-5410ba4c23e4",
              "parent_uuid": "39a26994-05aa-43f4-ab9f-bc9851db290f",
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
              "uuid": "ac0dd782-1be8-46fc-bd85-a1fce216acdb",
              "parent_uuid": "39a26994-05aa-43f4-ab9f-bc9851db290f",
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
              "uuid": "8ab02753-95c5-4851-8227-a6db1ffb9ceb",
              "parent_uuid": "39a26994-05aa-43f4-ab9f-bc9851db290f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "914b6340-3ba6-486b-b642-a2ea346c95b9",
                  "parent_uuid": "8ab02753-95c5-4851-8227-a6db1ffb9ceb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4dbbf7cb-d0ac-4688-85ac-ff79acfe05d6",
              "parent_uuid": "39a26994-05aa-43f4-ab9f-bc9851db290f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1114ef38-bda4-49a9-98d7-f902f90bf5f3",
                  "parent_uuid": "4dbbf7cb-d0ac-4688-85ac-ff79acfe05d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9ca603a-e3b3-43fd-bd4e-c83e93e4316d",
              "parent_uuid": "39a26994-05aa-43f4-ab9f-bc9851db290f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "671d4703-cffe-4b68-88c3-a9ffad4c3aab",
                  "parent_uuid": "e9ca603a-e3b3-43fd-bd4e-c83e93e4316d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b470d4c9-5db8-484d-938c-fb4f9fcea493",
              "parent_uuid": "39a26994-05aa-43f4-ab9f-bc9851db290f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e53066c9-d3d7-4aba-bc39-368ec11ecac1",
                  "parent_uuid": "b470d4c9-5db8-484d-938c-fb4f9fcea493",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "21f9bc0d-0203-4728-bf97-35a4dafbfd1d",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2e209f8-fd2a-4cad-967c-ed9729646686",
              "parent_uuid": "21f9bc0d-0203-4728-bf97-35a4dafbfd1d",
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
              "uuid": "95c2119f-3768-44e1-b73c-81b097a2985d",
              "parent_uuid": "21f9bc0d-0203-4728-bf97-35a4dafbfd1d",
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
              "uuid": "969d182b-6af3-4d9a-83c0-3319fb3d142f",
              "parent_uuid": "21f9bc0d-0203-4728-bf97-35a4dafbfd1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "23e8f7f3-69fb-4f55-ae24-ccb7e6688585",
                  "parent_uuid": "969d182b-6af3-4d9a-83c0-3319fb3d142f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81738696-380e-48fb-a6b1-c934088ae456",
              "parent_uuid": "21f9bc0d-0203-4728-bf97-35a4dafbfd1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "32e1a3c6-0375-470d-a88d-af1d2d7ab106",
                  "parent_uuid": "81738696-380e-48fb-a6b1-c934088ae456",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1560d539-b233-4598-9a8f-1d11913c00c5",
              "parent_uuid": "21f9bc0d-0203-4728-bf97-35a4dafbfd1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "63be34d8-38ed-4f6d-ad4b-e36db5af3072",
                  "parent_uuid": "1560d539-b233-4598-9a8f-1d11913c00c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03c522b0-7465-40fd-be61-ac4c576ef0d8",
              "parent_uuid": "21f9bc0d-0203-4728-bf97-35a4dafbfd1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "70c61758-00eb-4f46-97ca-d48ecb09ec68",
                  "parent_uuid": "03c522b0-7465-40fd-be61-ac4c576ef0d8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d4864ca-b794-430d-915d-5c241c31755e",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "baad6812-3e92-4b92-84a3-8425db4662f7",
              "parent_uuid": "6d4864ca-b794-430d-915d-5c241c31755e",
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
              "uuid": "dd747c96-88cc-4157-8f52-d9483961cf53",
              "parent_uuid": "6d4864ca-b794-430d-915d-5c241c31755e",
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
              "uuid": "1f457410-e3ff-42f7-945b-898df5c378af",
              "parent_uuid": "6d4864ca-b794-430d-915d-5c241c31755e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "b447a72d-bc25-473c-9544-acff51221ec2",
                  "parent_uuid": "1f457410-e3ff-42f7-945b-898df5c378af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8269901-d12e-461c-9ca9-a22ebc0e55a0",
              "parent_uuid": "6d4864ca-b794-430d-915d-5c241c31755e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "83483fba-1f64-45a6-8c25-65db6e66fb1e",
                  "parent_uuid": "d8269901-d12e-461c-9ca9-a22ebc0e55a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77d493d1-21a7-4778-91c5-2b13f10e0b4e",
              "parent_uuid": "6d4864ca-b794-430d-915d-5c241c31755e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "3804de5d-5c14-4cd6-94d6-94620e684b8f",
                  "parent_uuid": "77d493d1-21a7-4778-91c5-2b13f10e0b4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "098430a9-2ae4-41e2-b61a-78452f2ae1dc",
              "parent_uuid": "6d4864ca-b794-430d-915d-5c241c31755e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "20d4128e-05b0-4607-aaf8-0a9cb3fbc4cf",
                  "parent_uuid": "098430a9-2ae4-41e2-b61a-78452f2ae1dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b121d2e-6702-4a41-b2fb-097e1e546293",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb8dc8a2-e51c-4c33-9621-7355f31372e3",
              "parent_uuid": "8b121d2e-6702-4a41-b2fb-097e1e546293",
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
              "uuid": "6f62cdb6-e4eb-42fe-896b-b600db20180e",
              "parent_uuid": "8b121d2e-6702-4a41-b2fb-097e1e546293",
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
              "uuid": "5a7ace4b-bf50-493a-8960-1b6fb3026b9e",
              "parent_uuid": "8b121d2e-6702-4a41-b2fb-097e1e546293",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "8098910a-7a1d-4736-babe-b8de3c6113fb",
                  "parent_uuid": "5a7ace4b-bf50-493a-8960-1b6fb3026b9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60fc4a55-68e6-4a7a-8a34-7679bede4e5c",
              "parent_uuid": "8b121d2e-6702-4a41-b2fb-097e1e546293",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "a8245298-e4c9-432b-b2ea-12b302169e52",
                  "parent_uuid": "60fc4a55-68e6-4a7a-8a34-7679bede4e5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7142a31d-2005-432d-824c-48777e25dea5",
              "parent_uuid": "8b121d2e-6702-4a41-b2fb-097e1e546293",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "efe7cb62-9dbe-4a1d-972f-fddaa812b8ed",
                  "parent_uuid": "7142a31d-2005-432d-824c-48777e25dea5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebebaf88-f94c-40f1-aed4-2b139cb49d6d",
              "parent_uuid": "8b121d2e-6702-4a41-b2fb-097e1e546293",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "c5aa0af0-1fcd-41a4-ba32-ea0805bb34dd",
                  "parent_uuid": "ebebaf88-f94c-40f1-aed4-2b139cb49d6d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "da00b3ed-7a25-40b5-9f72-d36b6ab15266",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97c9db58-a9a6-4e73-8b05-f64794b7bccf",
              "parent_uuid": "da00b3ed-7a25-40b5-9f72-d36b6ab15266",
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
              "uuid": "a583e87f-b6ec-4e20-bb6f-5c0b9ae2cd8f",
              "parent_uuid": "da00b3ed-7a25-40b5-9f72-d36b6ab15266",
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
              "uuid": "2bb23b16-7073-4701-9925-fcfc959d794f",
              "parent_uuid": "da00b3ed-7a25-40b5-9f72-d36b6ab15266",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "8b6fbc4c-3976-42e0-bf73-35dc5202e5fa",
                  "parent_uuid": "2bb23b16-7073-4701-9925-fcfc959d794f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bdbfaa0-0579-4dcb-9826-29be7e6530d0",
              "parent_uuid": "da00b3ed-7a25-40b5-9f72-d36b6ab15266",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "9645e4b1-2c5b-42a9-80fe-ab571550d0f8",
                  "parent_uuid": "4bdbfaa0-0579-4dcb-9826-29be7e6530d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "251b635b-f794-4002-b2b7-298c5b96bff5",
              "parent_uuid": "da00b3ed-7a25-40b5-9f72-d36b6ab15266",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "84046a0f-002c-481f-8d4e-396c28e8765e",
                  "parent_uuid": "251b635b-f794-4002-b2b7-298c5b96bff5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97a484ef-bc3e-48dd-a216-31d47ac0e6ba",
              "parent_uuid": "da00b3ed-7a25-40b5-9f72-d36b6ab15266",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "68449c38-a222-4372-aef5-3180e5cd9f80",
                  "parent_uuid": "97a484ef-bc3e-48dd-a216-31d47ac0e6ba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4fb77953-8bfe-4e1f-9548-4d8b312ff2eb",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4308669b-9016-443d-932f-da7b50d08674",
              "parent_uuid": "4fb77953-8bfe-4e1f-9548-4d8b312ff2eb",
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
              "uuid": "9cb78c76-455f-43a8-aa6c-28456f762cde",
              "parent_uuid": "4fb77953-8bfe-4e1f-9548-4d8b312ff2eb",
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
              "uuid": "eb64f711-5a98-492a-adf1-cfa1d4ca5598",
              "parent_uuid": "4fb77953-8bfe-4e1f-9548-4d8b312ff2eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "029016e3-ad03-449c-899f-59f5ea2b3b2d",
                  "parent_uuid": "eb64f711-5a98-492a-adf1-cfa1d4ca5598",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a53796ae-f3c0-4a71-ae2d-35f7594e5c5b",
              "parent_uuid": "4fb77953-8bfe-4e1f-9548-4d8b312ff2eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "34291738-703c-4b4a-a05e-9a83bd8b5bfb",
                  "parent_uuid": "a53796ae-f3c0-4a71-ae2d-35f7594e5c5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b9addad-593b-4749-a706-c91914d29eb4",
              "parent_uuid": "4fb77953-8bfe-4e1f-9548-4d8b312ff2eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "e5d78f6a-de99-4285-8bba-2a6c8006aeb6",
                  "parent_uuid": "4b9addad-593b-4749-a706-c91914d29eb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3af2934-70f0-4832-86e3-9ce4e12f5c97",
              "parent_uuid": "4fb77953-8bfe-4e1f-9548-4d8b312ff2eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "81d835f8-8883-4464-a775-f761da1caf88",
                  "parent_uuid": "c3af2934-70f0-4832-86e3-9ce4e12f5c97",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f8dae915-a499-4995-bb55-cff068c1058a",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9460a693-c765-437a-9fb1-44bcb369b63e",
              "parent_uuid": "f8dae915-a499-4995-bb55-cff068c1058a",
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
              "uuid": "550e086f-e97e-4b56-8769-24147055e376",
              "parent_uuid": "f8dae915-a499-4995-bb55-cff068c1058a",
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
              "uuid": "49eb57f6-cb30-45b0-bd1e-57380b083e2b",
              "parent_uuid": "f8dae915-a499-4995-bb55-cff068c1058a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "ce55cc7d-2bcc-49e8-acfb-0bba87e11472",
                  "parent_uuid": "49eb57f6-cb30-45b0-bd1e-57380b083e2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75e6c5de-9568-4225-a082-ecd39049ca08",
              "parent_uuid": "f8dae915-a499-4995-bb55-cff068c1058a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "9f9ce4bf-e55b-43f1-b3b9-196ce99956fc",
                  "parent_uuid": "75e6c5de-9568-4225-a082-ecd39049ca08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b8af798-fba7-450e-8720-c4114951e70a",
              "parent_uuid": "f8dae915-a499-4995-bb55-cff068c1058a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "ff8a7d97-ce0e-41b6-823e-14c3558a23ec",
                  "parent_uuid": "5b8af798-fba7-450e-8720-c4114951e70a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a7dec98-8111-47c0-98f7-6ce20fd99cc6",
              "parent_uuid": "f8dae915-a499-4995-bb55-cff068c1058a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "96318301-3c92-45c7-81fa-7c9504d41ae6",
                  "parent_uuid": "4a7dec98-8111-47c0-98f7-6ce20fd99cc6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e52dfce0-8018-4416-b28b-d8fe8e5fb312",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2878820d-764a-4fb1-a9dd-0fc2d6d52b66",
              "parent_uuid": "e52dfce0-8018-4416-b28b-d8fe8e5fb312",
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
              "uuid": "739c21ad-2985-4c3d-ae24-307b59942cd3",
              "parent_uuid": "e52dfce0-8018-4416-b28b-d8fe8e5fb312",
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
              "uuid": "c3f2f4e3-adac-4b3d-8797-cdb1ecba5d69",
              "parent_uuid": "e52dfce0-8018-4416-b28b-d8fe8e5fb312",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "c600b35a-d016-4d47-991d-59c5a51f8f8c",
                  "parent_uuid": "c3f2f4e3-adac-4b3d-8797-cdb1ecba5d69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "050244a4-e4fd-41e1-a300-41a278978feb",
              "parent_uuid": "e52dfce0-8018-4416-b28b-d8fe8e5fb312",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "56df9ab6-880a-4f27-af2f-bd9dd7466dbe",
                  "parent_uuid": "050244a4-e4fd-41e1-a300-41a278978feb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "863a9411-a083-4402-aa11-7fc5838ca15d",
              "parent_uuid": "e52dfce0-8018-4416-b28b-d8fe8e5fb312",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "aaf8343a-49fc-449b-aec9-f219d7235307",
                  "parent_uuid": "863a9411-a083-4402-aa11-7fc5838ca15d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cbef947a-83cc-49f2-a849-ad0aa97ddd20",
              "parent_uuid": "e52dfce0-8018-4416-b28b-d8fe8e5fb312",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "14ea374e-87e7-4243-9270-fa992cb84fb2",
                  "parent_uuid": "cbef947a-83cc-49f2-a849-ad0aa97ddd20",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "708c3da4-757f-40d5-a0fc-6d8ee7ed2f68",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88411f64-b78c-4142-8f55-c092fb3f5c32",
              "parent_uuid": "708c3da4-757f-40d5-a0fc-6d8ee7ed2f68",
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
              "uuid": "79151f73-b892-409e-a230-cd2cd1e72c98",
              "parent_uuid": "708c3da4-757f-40d5-a0fc-6d8ee7ed2f68",
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
              "uuid": "1d073243-fcdd-4f1b-9bac-da0c9e09c3e9",
              "parent_uuid": "708c3da4-757f-40d5-a0fc-6d8ee7ed2f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "f703dd99-658d-4015-937f-e7b71156882d",
                  "parent_uuid": "1d073243-fcdd-4f1b-9bac-da0c9e09c3e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5bc1720-65a9-47df-9da6-c7f6ee32e0d1",
              "parent_uuid": "708c3da4-757f-40d5-a0fc-6d8ee7ed2f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "98e7367f-b265-4c19-89a2-04da5b1f91a6",
                  "parent_uuid": "f5bc1720-65a9-47df-9da6-c7f6ee32e0d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fec4343b-cee8-4f0d-b2e7-44f42d7c8a1e",
              "parent_uuid": "708c3da4-757f-40d5-a0fc-6d8ee7ed2f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "6be2362b-690a-483b-adc5-2e2c3308fc57",
                  "parent_uuid": "fec4343b-cee8-4f0d-b2e7-44f42d7c8a1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58549541-b3e4-462f-b7d9-31cc628e4f15",
              "parent_uuid": "708c3da4-757f-40d5-a0fc-6d8ee7ed2f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "1cbde794-3770-413e-8e18-b379fa53f068",
                  "parent_uuid": "58549541-b3e4-462f-b7d9-31cc628e4f15",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "20b257bb-48ee-49cc-9a0d-2372be0a8042",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ebd582c-3b13-430a-b450-4783fd6dd75d",
              "parent_uuid": "20b257bb-48ee-49cc-9a0d-2372be0a8042",
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
              "uuid": "dcaf32cc-5351-436f-8cf3-2d5b62645ac0",
              "parent_uuid": "20b257bb-48ee-49cc-9a0d-2372be0a8042",
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
              "uuid": "745e83b2-e807-4c82-bdc8-bf2ea62e4e13",
              "parent_uuid": "20b257bb-48ee-49cc-9a0d-2372be0a8042",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "b4bf4522-c90d-4bad-81b7-3442854ccec6",
                  "parent_uuid": "745e83b2-e807-4c82-bdc8-bf2ea62e4e13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56c9765f-eda7-45a7-93f8-dca6e3bce2f2",
              "parent_uuid": "20b257bb-48ee-49cc-9a0d-2372be0a8042",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "9093940b-a739-4702-a744-f8483634d935",
                  "parent_uuid": "56c9765f-eda7-45a7-93f8-dca6e3bce2f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b28297a4-4872-4f5b-90bb-b4a6e9a51cb9",
              "parent_uuid": "20b257bb-48ee-49cc-9a0d-2372be0a8042",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "617dd830-31c1-4926-ae61-e6d9c432c282",
                  "parent_uuid": "b28297a4-4872-4f5b-90bb-b4a6e9a51cb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63e9ae2c-e565-4b61-893e-d5374546f518",
              "parent_uuid": "20b257bb-48ee-49cc-9a0d-2372be0a8042",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "0538601b-a3eb-4f04-9d02-66d59f3889cc",
                  "parent_uuid": "63e9ae2c-e565-4b61-893e-d5374546f518",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2471b896-1d3b-4c5e-8da2-03fa8dd5c7a6",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0520bfa1-7463-48cb-b291-73ec6936456b",
              "parent_uuid": "2471b896-1d3b-4c5e-8da2-03fa8dd5c7a6",
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
              "uuid": "871aa275-673d-4945-a280-7ddddb53338c",
              "parent_uuid": "2471b896-1d3b-4c5e-8da2-03fa8dd5c7a6",
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
              "uuid": "f328c05a-05cd-45d5-9200-f2b1488b677e",
              "parent_uuid": "2471b896-1d3b-4c5e-8da2-03fa8dd5c7a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "4b532043-4118-4cad-ac38-2609b6666885",
                  "parent_uuid": "f328c05a-05cd-45d5-9200-f2b1488b677e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "885f6581-9798-48d5-8b7d-edf83c3e762c",
              "parent_uuid": "2471b896-1d3b-4c5e-8da2-03fa8dd5c7a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "ff9cbfaf-dc3c-456a-934e-992c2353113f",
                  "parent_uuid": "885f6581-9798-48d5-8b7d-edf83c3e762c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "507f9bc8-3fc5-4a09-975c-fae1ace9f686",
              "parent_uuid": "2471b896-1d3b-4c5e-8da2-03fa8dd5c7a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "e9e95c7f-5e1f-4eb3-9eb8-e8e8dd0523b0",
                  "parent_uuid": "507f9bc8-3fc5-4a09-975c-fae1ace9f686",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf5b89e8-0c91-4ecc-8df8-faddc5bd4666",
              "parent_uuid": "2471b896-1d3b-4c5e-8da2-03fa8dd5c7a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "ad360bd2-871b-410d-8490-5b6074c0d561",
                  "parent_uuid": "cf5b89e8-0c91-4ecc-8df8-faddc5bd4666",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a30cc1f4-6b20-4e14-918b-5b4e42a04afc",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d698b5df-d0d2-4d1c-b67f-d222ba7dfa79",
              "parent_uuid": "a30cc1f4-6b20-4e14-918b-5b4e42a04afc",
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
              "uuid": "0ccdbcd9-4690-4795-b606-e70af76ef645",
              "parent_uuid": "a30cc1f4-6b20-4e14-918b-5b4e42a04afc",
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
              "uuid": "dff1b691-2d1e-4355-8ef6-c614a21b3563",
              "parent_uuid": "a30cc1f4-6b20-4e14-918b-5b4e42a04afc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "8d38babf-cf21-435c-960b-0b1d2b2c2a9b",
                  "parent_uuid": "dff1b691-2d1e-4355-8ef6-c614a21b3563",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45d5fca4-e4c7-4da5-ad65-3df84c3bc69b",
              "parent_uuid": "a30cc1f4-6b20-4e14-918b-5b4e42a04afc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "8b90c3ea-30d6-49a6-ba47-8e62798bd09a",
                  "parent_uuid": "45d5fca4-e4c7-4da5-ad65-3df84c3bc69b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35aa229c-4971-4b5c-8db3-3d9dfc0c6c87",
              "parent_uuid": "a30cc1f4-6b20-4e14-918b-5b4e42a04afc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "33c91326-8a3f-4064-b51b-db6bb9d2c584",
                  "parent_uuid": "35aa229c-4971-4b5c-8db3-3d9dfc0c6c87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70dee3b1-feb6-4da0-84e4-e7eb969283db",
              "parent_uuid": "a30cc1f4-6b20-4e14-918b-5b4e42a04afc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "6fd8b464-a5a3-4576-9ce4-88a8beecf098",
                  "parent_uuid": "70dee3b1-feb6-4da0-84e4-e7eb969283db",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4445552c-750b-455b-b960-5cebaa0651fa",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c9ceb49-4709-4c23-84be-fd5b65768278",
              "parent_uuid": "4445552c-750b-455b-b960-5cebaa0651fa",
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
              "uuid": "5bc40c3d-e5e3-4d32-bf22-6e092fecc20e",
              "parent_uuid": "4445552c-750b-455b-b960-5cebaa0651fa",
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
              "uuid": "2bd43dbd-bebc-45e8-83ed-5119847f415e",
              "parent_uuid": "4445552c-750b-455b-b960-5cebaa0651fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "dfcc0b0c-8e27-43f5-96d2-f7785db76db8",
                  "parent_uuid": "2bd43dbd-bebc-45e8-83ed-5119847f415e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe1c91ed-e2ed-4eff-93fe-c9aac869c52c",
              "parent_uuid": "4445552c-750b-455b-b960-5cebaa0651fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "280cbe44-d0d0-4140-b996-4d094ffd3f40",
                  "parent_uuid": "fe1c91ed-e2ed-4eff-93fe-c9aac869c52c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0d6c728-d527-49aa-a163-162b8b9d1cdd",
              "parent_uuid": "4445552c-750b-455b-b960-5cebaa0651fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "6fc26dc8-a1ea-462d-94b6-45e99d697a60",
                  "parent_uuid": "f0d6c728-d527-49aa-a163-162b8b9d1cdd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49fb5185-6ae1-46f0-b2fb-2316f64b3e7f",
              "parent_uuid": "4445552c-750b-455b-b960-5cebaa0651fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "f62d5be8-85ec-4389-a5e4-90b21f7a82c3",
                  "parent_uuid": "49fb5185-6ae1-46f0-b2fb-2316f64b3e7f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d2b808b7-a826-4277-b7f2-084a0905f453",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d8d6151-1fa9-43ef-b5a0-a6e05d547f7e",
              "parent_uuid": "d2b808b7-a826-4277-b7f2-084a0905f453",
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
              "uuid": "2f52b694-2fec-45bd-8ad0-8446e99b2487",
              "parent_uuid": "d2b808b7-a826-4277-b7f2-084a0905f453",
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
              "uuid": "47e806c3-f765-45ec-97d8-ab32b13ae3da",
              "parent_uuid": "d2b808b7-a826-4277-b7f2-084a0905f453",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "0d4d3bc6-dc17-4dce-b3d8-ce470090ec1e",
                  "parent_uuid": "47e806c3-f765-45ec-97d8-ab32b13ae3da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff67cca5-3c9e-4b4f-8ab2-0c13c7954836",
              "parent_uuid": "d2b808b7-a826-4277-b7f2-084a0905f453",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "65ac3ada-2a37-477e-83de-bffa5675b739",
                  "parent_uuid": "ff67cca5-3c9e-4b4f-8ab2-0c13c7954836",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ba97d24-0933-49e9-adc0-6c8c912959e2",
              "parent_uuid": "d2b808b7-a826-4277-b7f2-084a0905f453",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "1d9fdfdd-c04f-47d2-b4f0-148257e22a93",
                  "parent_uuid": "4ba97d24-0933-49e9-adc0-6c8c912959e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8beba41-80e3-4556-a819-44f349380651",
              "parent_uuid": "d2b808b7-a826-4277-b7f2-084a0905f453",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "0d00f0f3-9f23-4dc7-9ec1-7a6fe68c0248",
                  "parent_uuid": "f8beba41-80e3-4556-a819-44f349380651",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "46fdd5e9-e033-450e-b987-1128c274ee92",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d735e361-0023-4d5a-b452-5c1459834f44",
              "parent_uuid": "46fdd5e9-e033-450e-b987-1128c274ee92",
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
              "uuid": "f0811ab1-6f34-4e8a-88b2-2bc47bf09d01",
              "parent_uuid": "46fdd5e9-e033-450e-b987-1128c274ee92",
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
              "uuid": "9673f749-5eca-467e-a9f7-a16a34c91bbb",
              "parent_uuid": "46fdd5e9-e033-450e-b987-1128c274ee92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "1ba1370e-3dc5-4898-8d70-8a90559033e7",
                  "parent_uuid": "9673f749-5eca-467e-a9f7-a16a34c91bbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f012127c-8368-4501-b350-7d4c6de7e61f",
              "parent_uuid": "46fdd5e9-e033-450e-b987-1128c274ee92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "a7d193dc-1c72-448a-9a8a-9e971dfe2ed5",
                  "parent_uuid": "f012127c-8368-4501-b350-7d4c6de7e61f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bccc09dd-fedf-473d-b964-8fea4daa1943",
              "parent_uuid": "46fdd5e9-e033-450e-b987-1128c274ee92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "82ae9067-d47a-41a3-91bf-796202f3e40b",
                  "parent_uuid": "bccc09dd-fedf-473d-b964-8fea4daa1943",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d404dd9-cf81-448e-9d4f-47413d6fa95c",
              "parent_uuid": "46fdd5e9-e033-450e-b987-1128c274ee92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "df42fddd-6103-47e0-a95a-3ba6fcd5b906",
                  "parent_uuid": "1d404dd9-cf81-448e-9d4f-47413d6fa95c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "300c30c6-842e-4690-8ece-d18e6f47bd56",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef85356f-1624-415f-9da8-a81deba9aa70",
              "parent_uuid": "300c30c6-842e-4690-8ece-d18e6f47bd56",
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
          "uuid": "b8a7dc46-e356-410d-8933-7782d0597851",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f89b4e50-ba04-43a3-b9ff-a0e9b440bac9",
              "parent_uuid": "b8a7dc46-e356-410d-8933-7782d0597851",
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
          "uuid": "01b39b60-54dc-43b9-b956-a44f37c9d58b",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f44ea146-0798-4624-87c9-5fb083c82ec3",
              "parent_uuid": "01b39b60-54dc-43b9-b956-a44f37c9d58b",
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
                  "uuid": "8897e5ad-f8c9-4cd7-bf1a-bdc20ada6204",
                  "parent_uuid": "f44ea146-0798-4624-87c9-5fb083c82ec3",
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
          "uuid": "50945cd6-b55f-46c6-801d-09415214a867",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "display: block; page-break-after: always; break-after: always;"
            ]
          ],
          "children": [
            {
              "uuid": "f9ba6cf4-4152-4d5d-a535-f1081d95873d",
              "parent_uuid": "50945cd6-b55f-46c6-801d-09415214a867",
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
          "uuid": "10c9b027-33df-4e0e-98a2-6d8e85be237a",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6ec2a46b-70c8-4437-9e0b-9013201063e2",
              "parent_uuid": "10c9b027-33df-4e0e-98a2-6d8e85be237a",
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
          "uuid": "e4b18280-91eb-4283-95ed-556cbed17ad5",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3ca2e20-1990-459b-bf43-8dc641d4f07f",
              "parent_uuid": "e4b18280-91eb-4283-95ed-556cbed17ad5",
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
              "uuid": "9ff9b800-dc3e-4f4b-8615-b11c52343693",
              "parent_uuid": "e4b18280-91eb-4283-95ed-556cbed17ad5",
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
              "uuid": "33cc6d6e-123a-4d4c-bbae-6e32ea15a38f",
              "parent_uuid": "e4b18280-91eb-4283-95ed-556cbed17ad5",
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
              "uuid": "b49e6e05-ebd0-4928-929a-e876cc6de4f7",
              "parent_uuid": "e4b18280-91eb-4283-95ed-556cbed17ad5",
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
              "uuid": "d105d0d3-c20b-4713-8463-9c2fd59ee62b",
              "parent_uuid": "e4b18280-91eb-4283-95ed-556cbed17ad5",
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
              "uuid": "81de7cb1-266d-49e3-849b-2340514cf115",
              "parent_uuid": "e4b18280-91eb-4283-95ed-556cbed17ad5",
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
          "uuid": "3c9b9cd4-691a-4bc6-b024-9bc7da7eda3e",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "a1b05af2-896c-4aa8-9ff2-c1da0db9f562",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72e83903-4f02-44d7-be0a-b8aed4c76f9f",
              "parent_uuid": "a1b05af2-896c-4aa8-9ff2-c1da0db9f562",
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
              "uuid": "41759b08-6dd6-4483-8602-f33224848a42",
              "parent_uuid": "a1b05af2-896c-4aa8-9ff2-c1da0db9f562",
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
              "uuid": "2a0436a8-ae7d-4a90-80cf-9b02421fcbb3",
              "parent_uuid": "a1b05af2-896c-4aa8-9ff2-c1da0db9f562",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "eb942e0c-0ced-4b39-930e-c24f7abe7ee6",
                  "parent_uuid": "2a0436a8-ae7d-4a90-80cf-9b02421fcbb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a770312-7e2b-4632-8351-5c188fb98743",
              "parent_uuid": "a1b05af2-896c-4aa8-9ff2-c1da0db9f562",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "d7c984ef-e2d0-4075-920b-c7095bfe1576",
                  "parent_uuid": "5a770312-7e2b-4632-8351-5c188fb98743",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37f75204-4821-465d-8103-39eeb358791b",
              "parent_uuid": "a1b05af2-896c-4aa8-9ff2-c1da0db9f562",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "cb8a05d1-7d26-4dd1-92c9-2e016a3ce006",
                  "parent_uuid": "37f75204-4821-465d-8103-39eeb358791b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59b66302-f590-4ab7-884e-6d641c5ca75d",
              "parent_uuid": "a1b05af2-896c-4aa8-9ff2-c1da0db9f562",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "a08ef008-30da-425e-bc4e-a6f2b75f90b5",
                  "parent_uuid": "59b66302-f590-4ab7-884e-6d641c5ca75d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0cefb057-3888-4350-b1cf-acd1f352cbf3",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a1af865-bf74-4283-a5e2-83ecb1106161",
              "parent_uuid": "0cefb057-3888-4350-b1cf-acd1f352cbf3",
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
              "uuid": "553b284b-824f-4d94-a729-4952e844d03f",
              "parent_uuid": "0cefb057-3888-4350-b1cf-acd1f352cbf3",
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
              "uuid": "04887a97-019e-4bc9-9b9a-10badffeae23",
              "parent_uuid": "0cefb057-3888-4350-b1cf-acd1f352cbf3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "ec1677ee-de61-4e66-a10e-d5406f24211d",
                  "parent_uuid": "04887a97-019e-4bc9-9b9a-10badffeae23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7a68944-72d5-4888-aacc-2d925214d7c2",
              "parent_uuid": "0cefb057-3888-4350-b1cf-acd1f352cbf3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "11743e39-84c3-46ad-9ad7-f705b201c82e",
                  "parent_uuid": "d7a68944-72d5-4888-aacc-2d925214d7c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b03dfb21-531d-4fbd-8a2a-a64492d466ed",
              "parent_uuid": "0cefb057-3888-4350-b1cf-acd1f352cbf3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "d9508482-2b5f-43bf-8076-b8b18a5b7345",
                  "parent_uuid": "b03dfb21-531d-4fbd-8a2a-a64492d466ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c9953d0-a7bf-4ec5-9769-31d32183a42e",
              "parent_uuid": "0cefb057-3888-4350-b1cf-acd1f352cbf3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "4e4262d7-abe1-4696-acdf-30d89cb006ce",
                  "parent_uuid": "2c9953d0-a7bf-4ec5-9769-31d32183a42e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d161864a-60e1-48a1-8ca7-fb9880d33069",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d337436-9926-4f4b-9585-ca16b962703c",
              "parent_uuid": "d161864a-60e1-48a1-8ca7-fb9880d33069",
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
              "uuid": "a0030859-41c1-4762-ae0e-dd7e0d6e9362",
              "parent_uuid": "d161864a-60e1-48a1-8ca7-fb9880d33069",
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
              "uuid": "1aa40f4f-72c5-4a74-850c-7c1105a7fc28",
              "parent_uuid": "d161864a-60e1-48a1-8ca7-fb9880d33069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "7cd4ab43-9bad-4603-bd8a-d86a717a7a6d",
                  "parent_uuid": "1aa40f4f-72c5-4a74-850c-7c1105a7fc28",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd91f421-ab2d-4d42-894e-470d23cf0dd4",
              "parent_uuid": "d161864a-60e1-48a1-8ca7-fb9880d33069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "d6abacc3-1ed1-46a9-a497-2e346719ccca",
                  "parent_uuid": "fd91f421-ab2d-4d42-894e-470d23cf0dd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c4586c1-1444-4f93-b9ab-5c87d22c0bd4",
              "parent_uuid": "d161864a-60e1-48a1-8ca7-fb9880d33069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "1506f1af-3cd5-4e66-85c6-56a66ade5224",
                  "parent_uuid": "0c4586c1-1444-4f93-b9ab-5c87d22c0bd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1add9042-2ffe-47dd-bc81-62398057f948",
              "parent_uuid": "d161864a-60e1-48a1-8ca7-fb9880d33069",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "a9c06504-d29a-447e-98ef-233ca2af1a46",
                  "parent_uuid": "1add9042-2ffe-47dd-bc81-62398057f948",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4fccb60e-177d-4d9d-b8fd-4933a294476c",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cee4ea51-ae52-4f9c-b1a9-0981931f899c",
              "parent_uuid": "4fccb60e-177d-4d9d-b8fd-4933a294476c",
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
              "uuid": "56e64b77-15a6-4dcd-8802-f8002839ec47",
              "parent_uuid": "4fccb60e-177d-4d9d-b8fd-4933a294476c",
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
              "uuid": "775d2132-4a63-44f5-bdce-074fa282a03e",
              "parent_uuid": "4fccb60e-177d-4d9d-b8fd-4933a294476c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "c23c3feb-3674-4f4f-97a1-8db453f9761b",
                  "parent_uuid": "775d2132-4a63-44f5-bdce-074fa282a03e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e5352c0-111d-44fd-8825-1b7f1a8f41f8",
              "parent_uuid": "4fccb60e-177d-4d9d-b8fd-4933a294476c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "b7c40e94-1350-4dc8-bbcc-3e17b94e78e6",
                  "parent_uuid": "2e5352c0-111d-44fd-8825-1b7f1a8f41f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e577f9d-77e9-4235-94dd-50e522a07ef1",
              "parent_uuid": "4fccb60e-177d-4d9d-b8fd-4933a294476c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "ff8eaec2-742c-47c9-97df-7e0e3866f43a",
                  "parent_uuid": "5e577f9d-77e9-4235-94dd-50e522a07ef1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db39ff97-bee5-497b-8ebc-d6dfb8cee226",
              "parent_uuid": "4fccb60e-177d-4d9d-b8fd-4933a294476c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "037ee121-25eb-451d-a201-23169b09d8f1",
                  "parent_uuid": "db39ff97-bee5-497b-8ebc-d6dfb8cee226",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c7bfcad-9dbd-40dc-83c0-c83635f411af",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91fe092d-9f7a-463d-95d8-f4bf2d381f32",
              "parent_uuid": "6c7bfcad-9dbd-40dc-83c0-c83635f411af",
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
          "uuid": "7fb873e3-dec9-4c97-acfc-e422b1991995",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b3a95aa-1660-4b0a-a2a1-c08c0038a441",
              "parent_uuid": "7fb873e3-dec9-4c97-acfc-e422b1991995",
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
          "uuid": "28beaa85-1ba3-444b-b88c-1f05b355bbb3",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a8d0764-64d0-4332-9dcb-6026557fe3ed",
              "parent_uuid": "28beaa85-1ba3-444b-b88c-1f05b355bbb3",
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
                  "uuid": "64f0e16f-b281-4c99-95d2-aaebb64dc9f3",
                  "parent_uuid": "6a8d0764-64d0-4332-9dcb-6026557fe3ed",
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
          "uuid": "eb67eebb-ef1b-42c9-bff1-359a88523160",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c05a28c-c872-47a8-8e7b-4716c118db56",
              "parent_uuid": "eb67eebb-ef1b-42c9-bff1-359a88523160",
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
          "uuid": "4a6db02d-685a-4c18-8e33-8ddf71fa0ce3",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1a73ce4a-244e-4f28-892c-ce6056f86a2d",
              "parent_uuid": "4a6db02d-685a-4c18-8e33-8ddf71fa0ce3",
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
          "uuid": "22c1de33-c67b-4342-925d-d03c3d74b018",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05569318-4767-4dd3-8322-b79b3f8f977a",
              "parent_uuid": "22c1de33-c67b-4342-925d-d03c3d74b018",
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
              "uuid": "60142336-58bf-4a1c-a119-5b27d4b73793",
              "parent_uuid": "22c1de33-c67b-4342-925d-d03c3d74b018",
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
              "uuid": "6b603459-e743-40c4-accf-984055e929d9",
              "parent_uuid": "22c1de33-c67b-4342-925d-d03c3d74b018",
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
              "uuid": "98b80b4e-c32d-45bc-8fa1-cb20e1909269",
              "parent_uuid": "22c1de33-c67b-4342-925d-d03c3d74b018",
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
              "uuid": "97ed3c11-0383-4302-a85f-e3b95b310384",
              "parent_uuid": "22c1de33-c67b-4342-925d-d03c3d74b018",
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
              "uuid": "78f04cad-977d-49e9-8737-5998cbeb7f3d",
              "parent_uuid": "22c1de33-c67b-4342-925d-d03c3d74b018",
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
          "uuid": "d1629405-cc8c-4917-bfc5-502d1f9aacdb",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab90e471-9fac-4c75-9cd4-a81aefd29cde",
              "parent_uuid": "d1629405-cc8c-4917-bfc5-502d1f9aacdb",
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
              "uuid": "9ed418c4-481c-4788-a35f-679f5c22a371",
              "parent_uuid": "d1629405-cc8c-4917-bfc5-502d1f9aacdb",
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
              "uuid": "2dbf4f1b-443c-4d6a-b358-5597180391f5",
              "parent_uuid": "d1629405-cc8c-4917-bfc5-502d1f9aacdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "fa8f0b2e-d137-4326-bc06-29cb37daf090",
                  "parent_uuid": "2dbf4f1b-443c-4d6a-b358-5597180391f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89b8b8ed-f84d-4cf6-b304-7285dc0c9785",
              "parent_uuid": "d1629405-cc8c-4917-bfc5-502d1f9aacdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "9852b8ce-400c-4082-b930-6fbc1b35eef3",
                  "parent_uuid": "89b8b8ed-f84d-4cf6-b304-7285dc0c9785",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "385fca37-f0a2-481b-8dc8-1cac78ee1d8a",
              "parent_uuid": "d1629405-cc8c-4917-bfc5-502d1f9aacdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "639b2726-14d8-47bd-b4d2-ffd944d96a93",
                  "parent_uuid": "385fca37-f0a2-481b-8dc8-1cac78ee1d8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b7de7a8-6f95-4f3a-91ef-a6b6b8421683",
              "parent_uuid": "d1629405-cc8c-4917-bfc5-502d1f9aacdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "ab64f252-52b7-480d-a5e5-29a9d1b559a3",
                  "parent_uuid": "3b7de7a8-6f95-4f3a-91ef-a6b6b8421683",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "293e3ec2-30c4-4798-8983-72f4f451f6ad",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c89adfe5-8cbd-4b2d-a1d7-f3ba6bd7ec67",
              "parent_uuid": "293e3ec2-30c4-4798-8983-72f4f451f6ad",
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
              "uuid": "cfc33c59-33dd-4850-beb9-98759659fec4",
              "parent_uuid": "293e3ec2-30c4-4798-8983-72f4f451f6ad",
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
              "uuid": "0cb9617e-ebaf-4891-9e7a-3efd5f5535f3",
              "parent_uuid": "293e3ec2-30c4-4798-8983-72f4f451f6ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "b81a43f8-806f-4dec-8856-a22b60136810",
                  "parent_uuid": "0cb9617e-ebaf-4891-9e7a-3efd5f5535f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2779089-4388-4a0e-9106-632c44fe1f5d",
              "parent_uuid": "293e3ec2-30c4-4798-8983-72f4f451f6ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "bf94e467-b332-4439-ae0a-5dbd52921606",
                  "parent_uuid": "a2779089-4388-4a0e-9106-632c44fe1f5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6faa027c-d848-4fed-b606-06a028c30e82",
              "parent_uuid": "293e3ec2-30c4-4798-8983-72f4f451f6ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "c188f09f-8526-464c-b97f-c9da4966def5",
                  "parent_uuid": "6faa027c-d848-4fed-b606-06a028c30e82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fba12a81-d345-469b-976d-e789dc1b5b85",
              "parent_uuid": "293e3ec2-30c4-4798-8983-72f4f451f6ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "25228fe7-e7a7-4203-a310-919503b40ff8",
                  "parent_uuid": "fba12a81-d345-469b-976d-e789dc1b5b85",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e2187329-8352-455c-b315-33fed30c48f2",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5173c2cd-ee47-469e-a99c-bca3567295a5",
              "parent_uuid": "e2187329-8352-455c-b315-33fed30c48f2",
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
              "uuid": "777bfca6-7e0b-45ce-a29e-928d80d89ed7",
              "parent_uuid": "e2187329-8352-455c-b315-33fed30c48f2",
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
              "uuid": "7288e744-f9fa-49c4-8f51-560d4794d195",
              "parent_uuid": "e2187329-8352-455c-b315-33fed30c48f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "fa38288c-ba2e-4cae-8226-ad234effcf07",
                  "parent_uuid": "7288e744-f9fa-49c4-8f51-560d4794d195",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95416787-1e3d-474c-927a-039ccefa04bf",
              "parent_uuid": "e2187329-8352-455c-b315-33fed30c48f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "1ce764f4-8924-48fa-b647-19fd6b04a438",
                  "parent_uuid": "95416787-1e3d-474c-927a-039ccefa04bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c64d3706-5946-49cf-8189-31cbb8429068",
              "parent_uuid": "e2187329-8352-455c-b315-33fed30c48f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "cfea7753-0764-4178-ab66-c0d2fd748669",
                  "parent_uuid": "c64d3706-5946-49cf-8189-31cbb8429068",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de298181-9feb-451a-a4ed-6dfb26ac835f",
              "parent_uuid": "e2187329-8352-455c-b315-33fed30c48f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "19c00117-7b57-4333-962d-79a192599f5f",
                  "parent_uuid": "de298181-9feb-451a-a4ed-6dfb26ac835f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c9ebe1fd-0e98-4a95-8afd-6b3c901aa3b5",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "562f8293-70ba-44e7-9bdd-c39e1012745f",
              "parent_uuid": "c9ebe1fd-0e98-4a95-8afd-6b3c901aa3b5",
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
              "uuid": "19288d44-60b7-4da3-b0c4-cd6a9d490629",
              "parent_uuid": "c9ebe1fd-0e98-4a95-8afd-6b3c901aa3b5",
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
              "uuid": "dd406ede-e5fd-4e0e-b46f-681b4dbed80f",
              "parent_uuid": "c9ebe1fd-0e98-4a95-8afd-6b3c901aa3b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "418bea25-59ff-4e16-9be8-06bd742cef68",
                  "parent_uuid": "dd406ede-e5fd-4e0e-b46f-681b4dbed80f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72bfacd4-18b9-4a24-aab0-d293af952222",
              "parent_uuid": "c9ebe1fd-0e98-4a95-8afd-6b3c901aa3b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "b717560c-0f55-46fb-bddb-758ee3399afa",
                  "parent_uuid": "72bfacd4-18b9-4a24-aab0-d293af952222",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d06cfc49-81ab-49da-875f-bbd4d9f133db",
              "parent_uuid": "c9ebe1fd-0e98-4a95-8afd-6b3c901aa3b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "7658c037-cf62-4d6f-8a48-0a564af543d7",
                  "parent_uuid": "d06cfc49-81ab-49da-875f-bbd4d9f133db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77cffdc3-fcbb-4f09-b7ab-27cb2a74e501",
              "parent_uuid": "c9ebe1fd-0e98-4a95-8afd-6b3c901aa3b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "78da90f3-2d12-4796-a454-7ab12d69d25f",
                  "parent_uuid": "77cffdc3-fcbb-4f09-b7ab-27cb2a74e501",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bbd34e9d-eec8-4a94-a71c-2ad8f6ff16fd",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "830c0691-fa3f-40f8-afd7-1977105ddab5",
              "parent_uuid": "bbd34e9d-eec8-4a94-a71c-2ad8f6ff16fd",
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
              "uuid": "971ca24e-5cf2-4375-997b-263f361caa96",
              "parent_uuid": "bbd34e9d-eec8-4a94-a71c-2ad8f6ff16fd",
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
              "uuid": "7acbc578-2a66-403c-bf95-3cdc324f8bc6",
              "parent_uuid": "bbd34e9d-eec8-4a94-a71c-2ad8f6ff16fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "605c90ff-fc15-4c2b-8818-5086e1ca4035",
                  "parent_uuid": "7acbc578-2a66-403c-bf95-3cdc324f8bc6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bfc0843-2110-4af3-bc18-11a23e09a040",
              "parent_uuid": "bbd34e9d-eec8-4a94-a71c-2ad8f6ff16fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "fb49b062-e8b2-4d03-ab92-46c9a3459d5c",
                  "parent_uuid": "2bfc0843-2110-4af3-bc18-11a23e09a040",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53b8d959-e071-47c7-8f9a-382b643987ce",
              "parent_uuid": "bbd34e9d-eec8-4a94-a71c-2ad8f6ff16fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "03c98d57-c5e1-4d19-8be2-bc8f259c11b2",
                  "parent_uuid": "53b8d959-e071-47c7-8f9a-382b643987ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d008a56e-fe85-40d1-b0c8-9cc59f84fce6",
              "parent_uuid": "bbd34e9d-eec8-4a94-a71c-2ad8f6ff16fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "b88b65d6-f560-4a81-8fe2-2bc4e56be936",
                  "parent_uuid": "d008a56e-fe85-40d1-b0c8-9cc59f84fce6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "20eb2292-8b5b-485f-8b37-778c5c1d3ed4",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38eb828b-d4f6-465c-8bf2-719ad0420214",
              "parent_uuid": "20eb2292-8b5b-485f-8b37-778c5c1d3ed4",
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
              "uuid": "2dce61bf-53d8-4006-906e-96c78091fe08",
              "parent_uuid": "20eb2292-8b5b-485f-8b37-778c5c1d3ed4",
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
              "uuid": "8ebc696b-f049-40ba-a465-982470750e9a",
              "parent_uuid": "20eb2292-8b5b-485f-8b37-778c5c1d3ed4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "48028beb-7b2f-46c0-92e1-afb6ec1a107e",
                  "parent_uuid": "8ebc696b-f049-40ba-a465-982470750e9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7ab290c-63c0-4f94-baec-e0d41cbf6b82",
              "parent_uuid": "20eb2292-8b5b-485f-8b37-778c5c1d3ed4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "077039a2-99dd-46e4-8c14-87995d307c30",
                  "parent_uuid": "d7ab290c-63c0-4f94-baec-e0d41cbf6b82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da9e9f6f-c895-4a5e-8866-c27692792a84",
              "parent_uuid": "20eb2292-8b5b-485f-8b37-778c5c1d3ed4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "c8de9938-fb0f-4c1e-b4d3-de0650d1e61e",
                  "parent_uuid": "da9e9f6f-c895-4a5e-8866-c27692792a84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea88bc39-64c7-4b8a-9850-3e7032a9219e",
              "parent_uuid": "20eb2292-8b5b-485f-8b37-778c5c1d3ed4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
                  "uuid": "4a7c72d5-2668-4f12-8736-e834275f066e",
                  "parent_uuid": "ea88bc39-64c7-4b8a-9850-3e7032a9219e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "892634ed-d57d-4694-a925-460eb285004b",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e13b710-e57f-4a5f-949f-b439fd73697f",
              "parent_uuid": "892634ed-d57d-4694-a925-460eb285004b",
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
          "uuid": "3c9a8e3b-d2c0-4a9a-a891-2f540950ed71",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d120c6e-ad21-47a6-9d5b-73a305c8ee59",
              "parent_uuid": "3c9a8e3b-d2c0-4a9a-a891-2f540950ed71",
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
          "uuid": "d82b1e9b-7154-4cab-bc07-7e022b174a12",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3a3ee83c-eced-47d8-8fbc-80a82333d819",
              "parent_uuid": "d82b1e9b-7154-4cab-bc07-7e022b174a12",
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
                  "uuid": "e7b385c5-878b-41b1-b222-07bd2cb78af6",
                  "parent_uuid": "3a3ee83c-eced-47d8-8fbc-80a82333d819",
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
          "uuid": "927f60d4-7416-4046-ab7c-692c957a4618",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52c1bb4d-b880-4f9a-a559-c783175973c8",
              "parent_uuid": "927f60d4-7416-4046-ab7c-692c957a4618",
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
          "uuid": "f38804e1-e9e8-43e8-bf0e-fd2ccc7185fd",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "7aab44c1-c42e-4602-a7c4-244386bbcf5b",
              "parent_uuid": "f38804e1-e9e8-43e8-bf0e-fd2ccc7185fd",
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
          "uuid": "c828b46e-2d39-49f6-8461-d4d47d1ad3a4",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66ffa4a9-a232-4132-8f9c-5c9cd40dfac4",
              "parent_uuid": "c828b46e-2d39-49f6-8461-d4d47d1ad3a4",
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
              "uuid": "ecc8bd52-cee4-4354-805b-554dd160870d",
              "parent_uuid": "c828b46e-2d39-49f6-8461-d4d47d1ad3a4",
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
              "uuid": "ec093edb-f4db-49c9-ad3c-fa1ee39dd91b",
              "parent_uuid": "c828b46e-2d39-49f6-8461-d4d47d1ad3a4",
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
              "uuid": "70978bb5-8de9-427e-981c-f0be8d066f9f",
              "parent_uuid": "c828b46e-2d39-49f6-8461-d4d47d1ad3a4",
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
              "uuid": "6363a141-29ef-4fbc-b8da-4d9ada7c8a23",
              "parent_uuid": "c828b46e-2d39-49f6-8461-d4d47d1ad3a4",
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
          "uuid": "f5698e52-50d0-406d-91b5-6d0668bc863d",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d36960c2-9501-46bf-902a-43d87df515d8",
              "parent_uuid": "f5698e52-50d0-406d-91b5-6d0668bc863d",
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
              "uuid": "120b1a5c-5977-4827-aae2-ff268e9c2611",
              "parent_uuid": "f5698e52-50d0-406d-91b5-6d0668bc863d",
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
              "uuid": "d947601d-9c36-4a21-81b7-17a04ac57f61",
              "parent_uuid": "f5698e52-50d0-406d-91b5-6d0668bc863d",
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
              "uuid": "43787161-02d5-4ddd-a0db-c1dd2db1d524",
              "parent_uuid": "f5698e52-50d0-406d-91b5-6d0668bc863d",
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
              "uuid": "b38f552f-7df9-43af-bba7-a71fca3d4c79",
              "parent_uuid": "f5698e52-50d0-406d-91b5-6d0668bc863d",
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
          "uuid": "cb18eaf4-106c-4ee4-b190-5fe589960a93",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad212dfd-0e61-4f09-b71d-41da30840bf0",
              "parent_uuid": "cb18eaf4-106c-4ee4-b190-5fe589960a93",
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
              "uuid": "5fa4c164-9cc5-4a36-aaa1-befa83feb61d",
              "parent_uuid": "cb18eaf4-106c-4ee4-b190-5fe589960a93",
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
              "uuid": "c6fca34e-955d-4b9e-89fe-132cb1204678",
              "parent_uuid": "cb18eaf4-106c-4ee4-b190-5fe589960a93",
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
              "uuid": "03395f3f-db49-459e-9dc6-ea2adfd1628d",
              "parent_uuid": "cb18eaf4-106c-4ee4-b190-5fe589960a93",
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
              "uuid": "6cbe88a5-dabc-4a47-ad24-6f832f92d475",
              "parent_uuid": "cb18eaf4-106c-4ee4-b190-5fe589960a93",
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
          "uuid": "4164b93b-503a-4ed2-b634-14ea51f6a6bb",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb374a3f-f36b-4f62-8820-871b77c1b907",
              "parent_uuid": "4164b93b-503a-4ed2-b634-14ea51f6a6bb",
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
              "uuid": "2d36641c-f9a4-41e2-81a3-72097bd496e9",
              "parent_uuid": "4164b93b-503a-4ed2-b634-14ea51f6a6bb",
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
              "uuid": "75d815b7-6ee7-4910-8bef-012514c9cd9d",
              "parent_uuid": "4164b93b-503a-4ed2-b634-14ea51f6a6bb",
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
              "uuid": "416d7697-74d3-4b6a-95a5-953596fe64d7",
              "parent_uuid": "4164b93b-503a-4ed2-b634-14ea51f6a6bb",
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
              "uuid": "0b7b8483-c15c-45ce-8074-36e877733820",
              "parent_uuid": "4164b93b-503a-4ed2-b634-14ea51f6a6bb",
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
          "uuid": "819927cb-05ef-44c6-82f5-dde6a3e00b1a",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2699264b-78cf-400b-8870-d542b6c92fc4",
              "parent_uuid": "819927cb-05ef-44c6-82f5-dde6a3e00b1a",
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
              "uuid": "bb0d8aa1-5e59-43b5-8e75-15a2980f1f0e",
              "parent_uuid": "819927cb-05ef-44c6-82f5-dde6a3e00b1a",
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
              "uuid": "a6f730e1-5be2-40b6-9ec8-0c835822a16c",
              "parent_uuid": "819927cb-05ef-44c6-82f5-dde6a3e00b1a",
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
              "uuid": "f5da4260-65c4-44c1-a2d7-e8af751fa098",
              "parent_uuid": "819927cb-05ef-44c6-82f5-dde6a3e00b1a",
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
              "uuid": "a8cc79bc-422b-41fe-a946-888554a2078f",
              "parent_uuid": "819927cb-05ef-44c6-82f5-dde6a3e00b1a",
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
          "uuid": "51708807-f73a-4c01-a4ef-c0ae66b142ed",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5cff5f4-c396-47e4-9a52-3bb492c7a20d",
              "parent_uuid": "51708807-f73a-4c01-a4ef-c0ae66b142ed",
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
              "uuid": "e0eda27e-ab5e-4794-b72a-63ef1978a239",
              "parent_uuid": "51708807-f73a-4c01-a4ef-c0ae66b142ed",
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
              "uuid": "5cc763fe-5600-4885-a00b-8ba41ccd8a9d",
              "parent_uuid": "51708807-f73a-4c01-a4ef-c0ae66b142ed",
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
              "uuid": "a7cfb30d-c50f-4561-a235-5722605c4b95",
              "parent_uuid": "51708807-f73a-4c01-a4ef-c0ae66b142ed",
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
              "uuid": "2abe055e-2933-4fc1-b997-8aadfbdc64e9",
              "parent_uuid": "51708807-f73a-4c01-a4ef-c0ae66b142ed",
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
          "uuid": "80913822-412e-4567-9ba9-98f8b2cf7697",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec3c6f31-46dd-4fc2-99ef-b33a5a22d76d",
              "parent_uuid": "80913822-412e-4567-9ba9-98f8b2cf7697",
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
              "uuid": "7f6b90a8-d84c-4afe-8412-3fd55bd49c4f",
              "parent_uuid": "80913822-412e-4567-9ba9-98f8b2cf7697",
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
              "uuid": "7b6ecfef-9fe3-46ba-8480-e65db21bbbe1",
              "parent_uuid": "80913822-412e-4567-9ba9-98f8b2cf7697",
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
              "uuid": "e43f48b6-d50b-4813-8919-473a259c3fc1",
              "parent_uuid": "80913822-412e-4567-9ba9-98f8b2cf7697",
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
              "uuid": "cc6403f3-614d-419f-840d-14174d3aa5a1",
              "parent_uuid": "80913822-412e-4567-9ba9-98f8b2cf7697",
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
          "uuid": "eebd2575-1a0b-4d59-b5e5-369326d058f6",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46dab37e-49a5-441e-bbd7-b05ce52c6eba",
              "parent_uuid": "eebd2575-1a0b-4d59-b5e5-369326d058f6",
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
              "uuid": "944fb991-247c-43b6-a72d-61d50d6a2e5a",
              "parent_uuid": "eebd2575-1a0b-4d59-b5e5-369326d058f6",
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
              "uuid": "461f5e3f-4a62-4117-8f42-3ea795530b51",
              "parent_uuid": "eebd2575-1a0b-4d59-b5e5-369326d058f6",
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
              "uuid": "286be022-bd24-4cc9-a064-eda63de88678",
              "parent_uuid": "eebd2575-1a0b-4d59-b5e5-369326d058f6",
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
              "uuid": "9adc905a-5fad-499f-8c18-4bb77f67001e",
              "parent_uuid": "eebd2575-1a0b-4d59-b5e5-369326d058f6",
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
          "uuid": "152a04f0-4ae4-4d03-877e-b1cf665552d7",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5313a5d5-dc02-4ea5-9ef4-832c710abe41",
              "parent_uuid": "152a04f0-4ae4-4d03-877e-b1cf665552d7",
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
              "uuid": "c31f6612-efcb-4b80-9570-d96a36249505",
              "parent_uuid": "152a04f0-4ae4-4d03-877e-b1cf665552d7",
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
              "uuid": "32ced7cd-bc49-4ce3-a033-09cc2df57fd9",
              "parent_uuid": "152a04f0-4ae4-4d03-877e-b1cf665552d7",
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
              "uuid": "ae652511-4efe-47a7-9481-445f551babf1",
              "parent_uuid": "152a04f0-4ae4-4d03-877e-b1cf665552d7",
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
              "uuid": "5a0ad277-fa69-4cf7-95b6-89a65d52d79e",
              "parent_uuid": "152a04f0-4ae4-4d03-877e-b1cf665552d7",
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
          "uuid": "342bc223-4450-4145-bb2c-a3cc004b8533",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8ce0a98c-8a86-48bb-ae00-5d48793b0104",
              "parent_uuid": "342bc223-4450-4145-bb2c-a3cc004b8533",
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
              "uuid": "10d7c7b7-454e-42cb-bb5e-b057964ffba4",
              "parent_uuid": "342bc223-4450-4145-bb2c-a3cc004b8533",
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
              "uuid": "a633bdb6-9d72-4bea-8e8a-2cbf3f14ff2c",
              "parent_uuid": "342bc223-4450-4145-bb2c-a3cc004b8533",
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
              "uuid": "85e11c60-b61e-453e-b004-877c9dfec2aa",
              "parent_uuid": "342bc223-4450-4145-bb2c-a3cc004b8533",
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
              "uuid": "809bf9d1-b9eb-4367-b9ef-5a133d8c7433",
              "parent_uuid": "342bc223-4450-4145-bb2c-a3cc004b8533",
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
          "uuid": "92e9159a-e058-4b5d-bda9-8fd22c21014e",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b4af965-ce26-471a-b4ae-818e43bbbae6",
              "parent_uuid": "92e9159a-e058-4b5d-bda9-8fd22c21014e",
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
              "uuid": "b2833b0d-6f92-4b86-ad3a-44d6d8812f31",
              "parent_uuid": "92e9159a-e058-4b5d-bda9-8fd22c21014e",
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
              "uuid": "4621b1dc-1b19-43ed-b224-e5d7033b784b",
              "parent_uuid": "92e9159a-e058-4b5d-bda9-8fd22c21014e",
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
              "uuid": "b7245749-2778-4075-b2b5-1d42e3c767a8",
              "parent_uuid": "92e9159a-e058-4b5d-bda9-8fd22c21014e",
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
              "uuid": "add3a8d5-1e84-4679-ae49-ca2706cec0c6",
              "parent_uuid": "92e9159a-e058-4b5d-bda9-8fd22c21014e",
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
          "uuid": "8f29dd85-60b1-4739-947f-9920ef35dfcc",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ffa16fed-fcb7-4056-b1ff-dc81a05d9a09",
              "parent_uuid": "8f29dd85-60b1-4739-947f-9920ef35dfcc",
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
              "uuid": "a6b33127-1574-4d0b-bccb-2ef93acc275b",
              "parent_uuid": "8f29dd85-60b1-4739-947f-9920ef35dfcc",
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
              "uuid": "104ee00d-f263-48e5-8d96-4010c99ba424",
              "parent_uuid": "8f29dd85-60b1-4739-947f-9920ef35dfcc",
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
              "uuid": "1dc3a2f5-15e5-4950-89f0-3e13952a2fb3",
              "parent_uuid": "8f29dd85-60b1-4739-947f-9920ef35dfcc",
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
              "uuid": "3289144a-fadb-4476-a198-05f8e6c079a4",
              "parent_uuid": "8f29dd85-60b1-4739-947f-9920ef35dfcc",
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
          "uuid": "508252b5-57c6-4e08-bfa8-eacfb4f29550",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a220d027-7412-4589-b808-a9d4a19e7df2",
              "parent_uuid": "508252b5-57c6-4e08-bfa8-eacfb4f29550",
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
              "uuid": "5bf9235b-54fa-4778-a618-28c44b175714",
              "parent_uuid": "508252b5-57c6-4e08-bfa8-eacfb4f29550",
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
              "uuid": "48fb9962-e362-4fad-a986-98e8c607e96f",
              "parent_uuid": "508252b5-57c6-4e08-bfa8-eacfb4f29550",
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
              "uuid": "46a04342-174d-4569-9d6f-a71c34906756",
              "parent_uuid": "508252b5-57c6-4e08-bfa8-eacfb4f29550",
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
              "uuid": "75d56c74-604a-4880-bee0-f748896ead66",
              "parent_uuid": "508252b5-57c6-4e08-bfa8-eacfb4f29550",
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
          "uuid": "77bc5e5c-3bce-40d4-918a-15d58bfc59c5",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f3e806e-59ba-459c-b132-329e02d3b763",
              "parent_uuid": "77bc5e5c-3bce-40d4-918a-15d58bfc59c5",
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
          "uuid": "cf753574-2238-4013-ac47-01e37f0bc730",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9354ed0e-1e93-4a3d-8b3a-95f3c1a65cab",
              "parent_uuid": "cf753574-2238-4013-ac47-01e37f0bc730",
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
          "uuid": "9c47ab65-958a-449f-bb71-38d64fcfa870",
          "parent_uuid": "50e3261c-3304-4290-bb70-d0692b620694",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d262631-df2a-4849-8029-fa152664c490",
              "parent_uuid": "9c47ab65-958a-449f-bb71-38d64fcfa870",
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
                  "uuid": "5fa8cb57-5186-4db4-9db9-a2bff72f2e5b",
                  "parent_uuid": "2d262631-df2a-4849-8029-fa152664c490",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 


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
  "uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "61970728-1ceb-4cb0-8565-07805ef78749",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "213c0dd2-bd1e-47be-921e-73491c527740",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "d16b3462-7729-43c2-9c59-cc3f9c1bc6fd",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "fc761fdd-a429-4092-93ef-a7e1e6c33699",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "98064861-a856-4703-9340-afd09682cf2b",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "1904a664-5672-4156-aa97-59bcfcdb8a31",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "09442387-3e14-4eab-b627-8b9ce22a8309",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
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
      "uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
      "parent_uuid": "77afaf49-b86b-4613-bb49-43e5004b9a97",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "32790162-1404-475d-bbb7-0f63ed11a93f",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "d7170ba1-f431-49a0-8ed7-b919e4f990ab",
              "parent_uuid": "32790162-1404-475d-bbb7-0f63ed11a93f",
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
              "uuid": "ec368652-4ecc-4544-9736-d541b0861343",
              "parent_uuid": "32790162-1404-475d-bbb7-0f63ed11a93f",
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
              "uuid": "90ecc39c-0471-4a73-a1df-a0d4172e7e7c",
              "parent_uuid": "32790162-1404-475d-bbb7-0f63ed11a93f",
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
              "uuid": "cd85400e-a0e3-4f25-8e45-b300e5e82baa",
              "parent_uuid": "32790162-1404-475d-bbb7-0f63ed11a93f",
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
          "uuid": "f85d58eb-f6ec-40f6-8666-dfa71987aea6",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "c342c3c3-31e1-4e89-b701-37e294389c0e",
              "parent_uuid": "f85d58eb-f6ec-40f6-8666-dfa71987aea6",
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
              "uuid": "03a75862-974b-48b5-bb3d-e6ee1fa60697",
              "parent_uuid": "f85d58eb-f6ec-40f6-8666-dfa71987aea6",
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
              "uuid": "4297a089-e02f-41e1-9f9e-28d76a8dc6b6",
              "parent_uuid": "f85d58eb-f6ec-40f6-8666-dfa71987aea6",
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
              "uuid": "bd60adb4-d7b8-4ba5-a079-a8f753f3b871",
              "parent_uuid": "f85d58eb-f6ec-40f6-8666-dfa71987aea6",
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
          "uuid": "38ea3ec5-6e55-4344-94c8-7183b62ca2ad",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "8db08704-c25e-4545-8a93-d5698155bff1",
              "parent_uuid": "38ea3ec5-6e55-4344-94c8-7183b62ca2ad",
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
              "uuid": "1dfc8a8d-5659-4ae6-99a2-6035bdb8615f",
              "parent_uuid": "38ea3ec5-6e55-4344-94c8-7183b62ca2ad",
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
              "uuid": "952494f1-96f8-474c-b84d-6ce9c212bbd4",
              "parent_uuid": "38ea3ec5-6e55-4344-94c8-7183b62ca2ad",
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
              "uuid": "bd371a9e-d0c8-44a2-9475-b4849c57cf7a",
              "parent_uuid": "38ea3ec5-6e55-4344-94c8-7183b62ca2ad",
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
          "uuid": "f036c6eb-faba-43f0-9798-51e4ee654fa6",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "609f0b11-f7f2-47fd-bd9a-ffa14b80c20a",
              "parent_uuid": "f036c6eb-faba-43f0-9798-51e4ee654fa6",
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
              "uuid": "1051417d-c2f8-453a-84d3-9c1899ad33e9",
              "parent_uuid": "f036c6eb-faba-43f0-9798-51e4ee654fa6",
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
              "uuid": "a9f3137e-8668-4c78-97ad-82df5d21033e",
              "parent_uuid": "f036c6eb-faba-43f0-9798-51e4ee654fa6",
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
              "uuid": "02195cf6-c2f3-4fe9-b7c2-ce6cfc27c611",
              "parent_uuid": "f036c6eb-faba-43f0-9798-51e4ee654fa6",
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
              "uuid": "d3fba336-9e3f-4ddf-89c7-0cf621764331",
              "parent_uuid": "f036c6eb-faba-43f0-9798-51e4ee654fa6",
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
              "uuid": "4f4dbee3-6f65-4c65-a349-b68f4d65eb8d",
              "parent_uuid": "f036c6eb-faba-43f0-9798-51e4ee654fa6",
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
          "uuid": "96fc6403-3e09-4c96-a9f7-adaaa3b0e437",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d225c3df-f94e-4c63-9f9c-082d7b5a0b15",
              "parent_uuid": "96fc6403-3e09-4c96-a9f7-adaaa3b0e437",
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
          "uuid": "51863122-a78b-46bf-af28-2768c82ae593",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24209491-bce2-4b56-837b-c91265efecc5",
              "parent_uuid": "51863122-a78b-46bf-af28-2768c82ae593",
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
              "uuid": "b5c29789-6a29-4c47-aa18-f1be6e99a149",
              "parent_uuid": "51863122-a78b-46bf-af28-2768c82ae593",
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
              "uuid": "fb716d7b-555c-49c6-90d2-db26ff52da6d",
              "parent_uuid": "51863122-a78b-46bf-af28-2768c82ae593",
              "tagName": "td",
              "properties": [
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
                  "uuid": "860ba4b9-5972-4bf7-b150-1cda721c3561",
                  "parent_uuid": "fb716d7b-555c-49c6-90d2-db26ff52da6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29fcf4fc-9818-49a8-b22a-c02890907e05",
              "parent_uuid": "51863122-a78b-46bf-af28-2768c82ae593",
              "tagName": "td",
              "properties": [
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
                  "uuid": "722b6010-fc55-4632-93f0-844dae7cba6b",
                  "parent_uuid": "29fcf4fc-9818-49a8-b22a-c02890907e05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c89bb30-7a05-4409-9762-c6da0da3762c",
              "parent_uuid": "51863122-a78b-46bf-af28-2768c82ae593",
              "tagName": "td",
              "properties": [
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
                  "uuid": "61d90e11-75a4-4f77-8c19-d741c9f7e621",
                  "parent_uuid": "8c89bb30-7a05-4409-9762-c6da0da3762c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc5309a2-229a-4f7f-853e-2fb7d198f1f5",
              "parent_uuid": "51863122-a78b-46bf-af28-2768c82ae593",
              "tagName": "td",
              "properties": [
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
                  "uuid": "09025deb-3a67-4c06-a53d-8c30a50739a1",
                  "parent_uuid": "fc5309a2-229a-4f7f-853e-2fb7d198f1f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18a507f7-9509-4e29-bc1b-dea7e015ca8b",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3cf72f24-167b-4be7-b1ea-b155662e3b6d",
              "parent_uuid": "18a507f7-9509-4e29-bc1b-dea7e015ca8b",
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
              "uuid": "ac4a2f8c-07dd-46a0-a09a-e925a927aeb3",
              "parent_uuid": "18a507f7-9509-4e29-bc1b-dea7e015ca8b",
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
              "uuid": "6aa886ea-970c-4dca-9b84-04148bd2cfc4",
              "parent_uuid": "18a507f7-9509-4e29-bc1b-dea7e015ca8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1cdc6a8e-38f2-4033-8f1c-4e1f28f03c76",
                  "parent_uuid": "6aa886ea-970c-4dca-9b84-04148bd2cfc4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8023f3a0-350b-4633-9e22-cb5efb181dc1",
              "parent_uuid": "18a507f7-9509-4e29-bc1b-dea7e015ca8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9adbe5e8-098a-4dd7-9013-89b833593344",
                  "parent_uuid": "8023f3a0-350b-4633-9e22-cb5efb181dc1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a44cd21b-5e9e-403f-ba12-acae83efa8f3",
              "parent_uuid": "18a507f7-9509-4e29-bc1b-dea7e015ca8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04be62b2-b8f5-4981-8704-6ff162ce6af0",
                  "parent_uuid": "a44cd21b-5e9e-403f-ba12-acae83efa8f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7badfb1-8378-4c2f-b4da-ac786442e545",
              "parent_uuid": "18a507f7-9509-4e29-bc1b-dea7e015ca8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fa2fbd1d-e171-488a-bc81-aba804885672",
                  "parent_uuid": "b7badfb1-8378-4c2f-b4da-ac786442e545",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18470428-ae1f-4458-8540-a154b27f4e46",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca3f9775-a316-429a-bea4-0c159033f1ab",
              "parent_uuid": "18470428-ae1f-4458-8540-a154b27f4e46",
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
              "uuid": "1fd84963-e77a-44bf-927a-278ad58c2025",
              "parent_uuid": "18470428-ae1f-4458-8540-a154b27f4e46",
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
              "uuid": "1fe33bfc-cc21-416a-b160-4960019a608a",
              "parent_uuid": "18470428-ae1f-4458-8540-a154b27f4e46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11e0c60c-7f9e-45aa-ad37-50d529baf0b1",
                  "parent_uuid": "1fe33bfc-cc21-416a-b160-4960019a608a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d2603d9-5174-496e-9fed-6e2ccd7721fb",
              "parent_uuid": "18470428-ae1f-4458-8540-a154b27f4e46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30a0a038-3696-4030-b27f-ee906ad16ac3",
                  "parent_uuid": "6d2603d9-5174-496e-9fed-6e2ccd7721fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3312283c-c8ff-495e-ae1f-c5e0aa59a3eb",
              "parent_uuid": "18470428-ae1f-4458-8540-a154b27f4e46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c77f28e-5267-4f81-b25f-0a5f61461bcc",
                  "parent_uuid": "3312283c-c8ff-495e-ae1f-c5e0aa59a3eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94c46c04-8615-41e3-8b99-b9ebdd4f17bb",
              "parent_uuid": "18470428-ae1f-4458-8540-a154b27f4e46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d90dcd33-a4c0-4a2c-b359-957ff0235e7b",
                  "parent_uuid": "94c46c04-8615-41e3-8b99-b9ebdd4f17bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86fd9c79-c0e7-4eae-a4ad-2901dd3c8bb9",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c8145b8-8558-4f17-8897-c111e0d8b480",
              "parent_uuid": "86fd9c79-c0e7-4eae-a4ad-2901dd3c8bb9",
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
              "uuid": "41872518-1186-4ba8-833e-5615a21527cb",
              "parent_uuid": "86fd9c79-c0e7-4eae-a4ad-2901dd3c8bb9",
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
              "uuid": "a6b7ee31-a88a-4146-b6ad-b0688afbf11c",
              "parent_uuid": "86fd9c79-c0e7-4eae-a4ad-2901dd3c8bb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6afbdee3-b1b3-45af-93f0-703cb59d2561",
                  "parent_uuid": "a6b7ee31-a88a-4146-b6ad-b0688afbf11c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33b56f9c-e274-4648-9182-0d839d86917a",
              "parent_uuid": "86fd9c79-c0e7-4eae-a4ad-2901dd3c8bb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5fbb98c-3c02-41c5-9281-e4380519543f",
                  "parent_uuid": "33b56f9c-e274-4648-9182-0d839d86917a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd24871d-b6a7-4bf4-be9a-461f7be0ea2e",
              "parent_uuid": "86fd9c79-c0e7-4eae-a4ad-2901dd3c8bb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74f05ddd-7daf-43ef-b60d-ddf395910d1f",
                  "parent_uuid": "cd24871d-b6a7-4bf4-be9a-461f7be0ea2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7235fcfd-f91d-4c00-bdd8-4c3eb749d528",
              "parent_uuid": "86fd9c79-c0e7-4eae-a4ad-2901dd3c8bb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "facc7618-3139-43ba-8c17-c4cf034dd61e",
                  "parent_uuid": "7235fcfd-f91d-4c00-bdd8-4c3eb749d528",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d362daf1-ff00-4136-a0c4-d7eaf630f604",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad3929c9-a067-4f64-afc8-d9873f584144",
              "parent_uuid": "d362daf1-ff00-4136-a0c4-d7eaf630f604",
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
              "uuid": "456d31cb-0315-4f87-be8f-c71fb6e203c5",
              "parent_uuid": "d362daf1-ff00-4136-a0c4-d7eaf630f604",
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
              "uuid": "bf8e0093-f9a5-4515-8ded-da24d91cd119",
              "parent_uuid": "d362daf1-ff00-4136-a0c4-d7eaf630f604",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e474d5c8-2665-4b4a-8069-7cde483a2e0a",
                  "parent_uuid": "bf8e0093-f9a5-4515-8ded-da24d91cd119",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6c28eea-8d0c-4db8-8c3a-284f369b2edf",
              "parent_uuid": "d362daf1-ff00-4136-a0c4-d7eaf630f604",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a95aed8f-9fb4-4b2e-8756-a6d2b2bb73e4",
                  "parent_uuid": "e6c28eea-8d0c-4db8-8c3a-284f369b2edf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd73ce66-45c1-4530-848c-5e884afe238c",
              "parent_uuid": "d362daf1-ff00-4136-a0c4-d7eaf630f604",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3f77755-2822-4c09-b343-75871ed3e526",
                  "parent_uuid": "dd73ce66-45c1-4530-848c-5e884afe238c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14da1c96-27a6-4e81-adf4-0f11bb0d768b",
              "parent_uuid": "d362daf1-ff00-4136-a0c4-d7eaf630f604",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0e83f7d-ceda-43f1-9947-c174728ee7f5",
                  "parent_uuid": "14da1c96-27a6-4e81-adf4-0f11bb0d768b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6e123cae-b8ab-47bb-9607-8c3ca7cf5ed7",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4eb1cd8-bf28-43b6-9248-386a2b899d97",
              "parent_uuid": "6e123cae-b8ab-47bb-9607-8c3ca7cf5ed7",
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
              "uuid": "ac89a200-03cb-49d0-a676-95d836a0daa1",
              "parent_uuid": "6e123cae-b8ab-47bb-9607-8c3ca7cf5ed7",
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
              "uuid": "4ebd8f05-fdcd-4a4c-8389-ff65d408744e",
              "parent_uuid": "6e123cae-b8ab-47bb-9607-8c3ca7cf5ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "785fccaa-bbab-4997-be17-2f096539e19c",
                  "parent_uuid": "4ebd8f05-fdcd-4a4c-8389-ff65d408744e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25a36951-f6cd-408d-ae5b-d1e1cabd6097",
              "parent_uuid": "6e123cae-b8ab-47bb-9607-8c3ca7cf5ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8add63ba-701f-402f-a593-9697edf01180",
                  "parent_uuid": "25a36951-f6cd-408d-ae5b-d1e1cabd6097",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2dcf75e-809e-480f-b581-aa9d3a2eed6f",
              "parent_uuid": "6e123cae-b8ab-47bb-9607-8c3ca7cf5ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67625769-fb57-4fa8-97db-c7c9687c9bde",
                  "parent_uuid": "f2dcf75e-809e-480f-b581-aa9d3a2eed6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f9e55fb-4e1f-47d2-b1c4-2a96e75f32fb",
              "parent_uuid": "6e123cae-b8ab-47bb-9607-8c3ca7cf5ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62ff67f4-cc9e-4be1-add7-34b1a8aed856",
                  "parent_uuid": "7f9e55fb-4e1f-47d2-b1c4-2a96e75f32fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3ea6d096-2855-40cd-9317-51cb11200e83",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1780706f-fd89-4d0d-99a8-d5c2d5cb1f05",
              "parent_uuid": "3ea6d096-2855-40cd-9317-51cb11200e83",
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
              "uuid": "9d4350a9-02b4-4024-95c0-b236d0ec1450",
              "parent_uuid": "3ea6d096-2855-40cd-9317-51cb11200e83",
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
              "uuid": "3858cc49-16d6-46c8-9425-868964d9288b",
              "parent_uuid": "3ea6d096-2855-40cd-9317-51cb11200e83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f60486d-2cbb-4e27-b184-b12844480811",
                  "parent_uuid": "3858cc49-16d6-46c8-9425-868964d9288b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "878e054b-215c-482a-8861-11eeaded087c",
              "parent_uuid": "3ea6d096-2855-40cd-9317-51cb11200e83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab32180d-c7fc-4f97-bbec-8a026c173600",
                  "parent_uuid": "878e054b-215c-482a-8861-11eeaded087c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1e41426-028d-44a5-bb11-b842ae233c19",
              "parent_uuid": "3ea6d096-2855-40cd-9317-51cb11200e83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae9e99e3-3e60-4e33-a6d7-e9e2bdb41363",
                  "parent_uuid": "e1e41426-028d-44a5-bb11-b842ae233c19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "969f1f1d-6225-4a32-9d4e-2b865cd010d9",
              "parent_uuid": "3ea6d096-2855-40cd-9317-51cb11200e83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d436f035-34b9-479b-b343-b41d8388ab1c",
                  "parent_uuid": "969f1f1d-6225-4a32-9d4e-2b865cd010d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e4ecf6b9-f911-459c-ab48-5a2b853758ae",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f053e02-42d2-4d14-b95c-304087edf1f3",
              "parent_uuid": "e4ecf6b9-f911-459c-ab48-5a2b853758ae",
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
              "uuid": "3198374b-956f-49ea-83da-520bcbd99b57",
              "parent_uuid": "e4ecf6b9-f911-459c-ab48-5a2b853758ae",
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
              "uuid": "42077f10-f067-42f8-a4a8-3487aa333a4c",
              "parent_uuid": "e4ecf6b9-f911-459c-ab48-5a2b853758ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a16291ef-8475-48fb-9082-ceb509858ecf",
                  "parent_uuid": "42077f10-f067-42f8-a4a8-3487aa333a4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ccc9632-4586-4e68-b957-67b29de25702",
              "parent_uuid": "e4ecf6b9-f911-459c-ab48-5a2b853758ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e13af93b-1eff-4298-903a-5e61fce3d462",
                  "parent_uuid": "3ccc9632-4586-4e68-b957-67b29de25702",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2e12f82-74a6-41f8-b83e-eb834ce2ebfd",
              "parent_uuid": "e4ecf6b9-f911-459c-ab48-5a2b853758ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bc08eeb-fad5-4a51-9900-54d3b5ea4c0d",
                  "parent_uuid": "a2e12f82-74a6-41f8-b83e-eb834ce2ebfd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51bef0fb-1dc2-450e-b884-0608757796c4",
              "parent_uuid": "e4ecf6b9-f911-459c-ab48-5a2b853758ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c562c7a3-6844-4f32-b17b-7d8baf7f0d10",
                  "parent_uuid": "51bef0fb-1dc2-450e-b884-0608757796c4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8067c350-461b-443e-9881-0639ccfd8d33",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "670b8ae0-304d-40d3-97d8-afb6f281ad03",
              "parent_uuid": "8067c350-461b-443e-9881-0639ccfd8d33",
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
              "uuid": "2855dfa5-e82e-44cf-8bc1-4e437ccea7d0",
              "parent_uuid": "8067c350-461b-443e-9881-0639ccfd8d33",
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
              "uuid": "b7f3a5f7-d4ac-48ec-92b0-cdaa4ff4c954",
              "parent_uuid": "8067c350-461b-443e-9881-0639ccfd8d33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbc642ed-a18c-4800-aac8-10233647bbfa",
                  "parent_uuid": "b7f3a5f7-d4ac-48ec-92b0-cdaa4ff4c954",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3d36920-8a70-431e-abd3-2bc72abea989",
              "parent_uuid": "8067c350-461b-443e-9881-0639ccfd8d33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "577ce735-1cb3-4b3b-bbf2-2988c82231e8",
                  "parent_uuid": "d3d36920-8a70-431e-abd3-2bc72abea989",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c9719ab-c7cb-4b4a-a68c-e7f350bb8968",
              "parent_uuid": "8067c350-461b-443e-9881-0639ccfd8d33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af08a361-83cb-49f4-9e07-c3e9367275e3",
                  "parent_uuid": "8c9719ab-c7cb-4b4a-a68c-e7f350bb8968",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28580147-fe3a-4529-9cf0-3abe0c61590c",
              "parent_uuid": "8067c350-461b-443e-9881-0639ccfd8d33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aeae2e73-3f02-4573-8238-147977ec50ad",
                  "parent_uuid": "28580147-fe3a-4529-9cf0-3abe0c61590c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fb857ebf-790a-43d6-8402-995f1d186ae3",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b18cbff-2290-4bc5-ac2a-70099802b0ec",
              "parent_uuid": "fb857ebf-790a-43d6-8402-995f1d186ae3",
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
              "uuid": "c72afad7-a2e0-4b4b-a3b6-418630081858",
              "parent_uuid": "fb857ebf-790a-43d6-8402-995f1d186ae3",
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
              "uuid": "8042db90-5d9c-4c54-ab6c-6f1fc374be9f",
              "parent_uuid": "fb857ebf-790a-43d6-8402-995f1d186ae3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c91ab14d-ca43-402f-ac3f-55dcac54e65c",
                  "parent_uuid": "8042db90-5d9c-4c54-ab6c-6f1fc374be9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ca92e9e-cc76-4056-a5bc-e11306f28ffc",
              "parent_uuid": "fb857ebf-790a-43d6-8402-995f1d186ae3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4271ec9e-1668-41fc-9acf-23af1651abf9",
                  "parent_uuid": "2ca92e9e-cc76-4056-a5bc-e11306f28ffc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad9b8839-9218-4a23-bc5e-038e522937d7",
              "parent_uuid": "fb857ebf-790a-43d6-8402-995f1d186ae3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a46a10ec-4233-46aa-9f10-74c7c081cb09",
                  "parent_uuid": "ad9b8839-9218-4a23-bc5e-038e522937d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9aedf9fa-9bc8-4b0d-b3c6-961271a8d937",
              "parent_uuid": "fb857ebf-790a-43d6-8402-995f1d186ae3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a779f3a8-26f4-4ca5-b572-ee541eb355b9",
                  "parent_uuid": "9aedf9fa-9bc8-4b0d-b3c6-961271a8d937",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6395aeb5-a696-47b9-ae24-e3576cf19f42",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af59a76c-4812-43aa-a486-1944aa3b4da1",
              "parent_uuid": "6395aeb5-a696-47b9-ae24-e3576cf19f42",
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
              "uuid": "a420fcc4-f508-4899-91ce-0046a63cbe83",
              "parent_uuid": "6395aeb5-a696-47b9-ae24-e3576cf19f42",
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
              "uuid": "cbf93135-0db5-4f5a-9632-16003de18468",
              "parent_uuid": "6395aeb5-a696-47b9-ae24-e3576cf19f42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "028358e7-1579-4131-bb77-11e454519bb8",
                  "parent_uuid": "cbf93135-0db5-4f5a-9632-16003de18468",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3dcd56a0-485e-4452-8321-16d0bf0ff1ac",
              "parent_uuid": "6395aeb5-a696-47b9-ae24-e3576cf19f42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "722422de-6fa2-4cfa-8b34-0c1dd3d44d68",
                  "parent_uuid": "3dcd56a0-485e-4452-8321-16d0bf0ff1ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34b27426-8f66-431d-a45c-f807f16f8a36",
              "parent_uuid": "6395aeb5-a696-47b9-ae24-e3576cf19f42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b580061-0050-4729-ae71-b730224e20cc",
                  "parent_uuid": "34b27426-8f66-431d-a45c-f807f16f8a36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d104cbaa-59c2-405e-a926-452f4c5b8237",
              "parent_uuid": "6395aeb5-a696-47b9-ae24-e3576cf19f42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "214a77af-e381-4a55-a073-f32090619432",
                  "parent_uuid": "d104cbaa-59c2-405e-a926-452f4c5b8237",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "67ac9a67-38fd-4668-83bb-feb9a1fa0881",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "245cda89-128b-476f-9a26-412c45be9bb7",
              "parent_uuid": "67ac9a67-38fd-4668-83bb-feb9a1fa0881",
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
              "uuid": "27fd377b-a9d1-4476-9cef-2b5909d9f2e9",
              "parent_uuid": "67ac9a67-38fd-4668-83bb-feb9a1fa0881",
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
              "uuid": "eef91e03-e173-4928-aaa8-74a6325b6e9d",
              "parent_uuid": "67ac9a67-38fd-4668-83bb-feb9a1fa0881",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d298aab-6a4e-4ecb-b7f9-5abc991a0947",
                  "parent_uuid": "eef91e03-e173-4928-aaa8-74a6325b6e9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b79b8ac0-5072-4dce-83c9-5ccba9f691da",
              "parent_uuid": "67ac9a67-38fd-4668-83bb-feb9a1fa0881",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38f9a560-9731-4b53-aa8c-27926c8b6b03",
                  "parent_uuid": "b79b8ac0-5072-4dce-83c9-5ccba9f691da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de7c1833-6cf4-4a53-830d-b71408ba9f92",
              "parent_uuid": "67ac9a67-38fd-4668-83bb-feb9a1fa0881",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fab5860-e516-4e87-b40c-089ba65fd7f7",
                  "parent_uuid": "de7c1833-6cf4-4a53-830d-b71408ba9f92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95e2b3b2-8e3e-4d62-94a0-572f119005aa",
              "parent_uuid": "67ac9a67-38fd-4668-83bb-feb9a1fa0881",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bbbcee1-6499-4985-8869-0df167c53df5",
                  "parent_uuid": "95e2b3b2-8e3e-4d62-94a0-572f119005aa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8d97e90f-bdbb-45fc-9441-76e9285ae7a0",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dbccddc4-17c1-4c20-bd2a-afdc5d295951",
              "parent_uuid": "8d97e90f-bdbb-45fc-9441-76e9285ae7a0",
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
          "uuid": "7011dac3-b183-4cca-bcc4-2dc049c8e0cc",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5edb4ddf-361c-49da-92a8-d767fe19ce59",
              "parent_uuid": "7011dac3-b183-4cca-bcc4-2dc049c8e0cc",
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
          "uuid": "e3712ff6-124b-4131-8a45-e4ab392e9680",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6f963ec-bbd6-49d2-8b5d-bac52faa0363",
              "parent_uuid": "e3712ff6-124b-4131-8a45-e4ab392e9680",
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
                  "uuid": "6023f05f-7b02-42f9-b50d-a49f17a0a045",
                  "parent_uuid": "f6f963ec-bbd6-49d2-8b5d-bac52faa0363",
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
          "uuid": "23496436-8d3a-4e4f-b55c-add07941b4e3",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7051213-6287-42fb-ad5e-76afd9ced676",
              "parent_uuid": "23496436-8d3a-4e4f-b55c-add07941b4e3",
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
          "uuid": "44322247-0b9c-4249-9abd-759d4840c01b",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "6b85780f-6af7-47c0-b882-692fdbbff45c",
              "parent_uuid": "44322247-0b9c-4249-9abd-759d4840c01b",
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
          "uuid": "c6f39e87-7984-4879-848b-fa044ba027e1",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a5f5ed2-c070-4d19-94b2-00bda48d1841",
              "parent_uuid": "c6f39e87-7984-4879-848b-fa044ba027e1",
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
              "uuid": "fcf9be7b-fb72-4de6-8dc5-fcdfafcb6446",
              "parent_uuid": "c6f39e87-7984-4879-848b-fa044ba027e1",
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
              "uuid": "a8e37eaa-7ce9-4eeb-97ae-b40b1c20628b",
              "parent_uuid": "c6f39e87-7984-4879-848b-fa044ba027e1",
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
              "uuid": "49c06919-41ed-4fcd-9f6f-f96587fdc625",
              "parent_uuid": "c6f39e87-7984-4879-848b-fa044ba027e1",
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
              "uuid": "14782aa2-ae17-402f-81cf-bc097648c5aa",
              "parent_uuid": "c6f39e87-7984-4879-848b-fa044ba027e1",
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
              "uuid": "684223d2-414d-4372-9acb-db2d2c4c54df",
              "parent_uuid": "c6f39e87-7984-4879-848b-fa044ba027e1",
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
          "uuid": "a99385a5-32e8-4138-878f-9e6369a7dd4a",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91dda45d-7043-4e47-b95e-a8176fdf0d52",
              "parent_uuid": "a99385a5-32e8-4138-878f-9e6369a7dd4a",
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
              "uuid": "0260ec9e-85d6-4460-ae98-f6bf05fb87b4",
              "parent_uuid": "a99385a5-32e8-4138-878f-9e6369a7dd4a",
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
              "uuid": "2e53679d-bb59-462e-a49d-11f9015a211b",
              "parent_uuid": "a99385a5-32e8-4138-878f-9e6369a7dd4a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed04a706-edab-4893-bec1-18965c64f84f",
                  "parent_uuid": "2e53679d-bb59-462e-a49d-11f9015a211b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30e9e778-3d07-484c-9b0b-2ae962e3f915",
              "parent_uuid": "a99385a5-32e8-4138-878f-9e6369a7dd4a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17a0b549-149d-4683-96af-7301d09a9230",
                  "parent_uuid": "30e9e778-3d07-484c-9b0b-2ae962e3f915",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9fcf53cd-6e44-41ee-b84e-4d470ae4f6a4",
              "parent_uuid": "a99385a5-32e8-4138-878f-9e6369a7dd4a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af93912c-b7a6-43ee-b0ea-f0f74438e125",
                  "parent_uuid": "9fcf53cd-6e44-41ee-b84e-4d470ae4f6a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "901f8e5c-4adb-43e8-8957-c6e753104404",
              "parent_uuid": "a99385a5-32e8-4138-878f-9e6369a7dd4a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7fbea04-5ef1-40e4-bed2-8536db36dabb",
                  "parent_uuid": "901f8e5c-4adb-43e8-8957-c6e753104404",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc256a15-abbc-496e-8940-c63aa64ae936",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7fd7bf6c-055c-4ab9-a91d-acf5066a983b",
              "parent_uuid": "bc256a15-abbc-496e-8940-c63aa64ae936",
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
              "uuid": "0aaad1fc-4da7-4083-9a3a-b9066fc2a3e7",
              "parent_uuid": "bc256a15-abbc-496e-8940-c63aa64ae936",
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
              "uuid": "b64333c2-33ef-4955-8b3f-448ff395cc52",
              "parent_uuid": "bc256a15-abbc-496e-8940-c63aa64ae936",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fbfa753-e74d-4787-8e1d-fef922eea4d5",
                  "parent_uuid": "b64333c2-33ef-4955-8b3f-448ff395cc52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "393822dd-6851-4c87-b19b-840f95876942",
              "parent_uuid": "bc256a15-abbc-496e-8940-c63aa64ae936",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da6eae7d-3764-44e2-90bc-b83a269eb3d0",
                  "parent_uuid": "393822dd-6851-4c87-b19b-840f95876942",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46430828-d24a-44fa-b3ea-e5743735c9b7",
              "parent_uuid": "bc256a15-abbc-496e-8940-c63aa64ae936",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb3fbbeb-cf43-4ad2-b504-0b8b931ea305",
                  "parent_uuid": "46430828-d24a-44fa-b3ea-e5743735c9b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3027450-d795-42a3-b257-f1d2ff8cd1f6",
              "parent_uuid": "bc256a15-abbc-496e-8940-c63aa64ae936",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b934568-916f-46cc-9f75-cf03cb648223",
                  "parent_uuid": "a3027450-d795-42a3-b257-f1d2ff8cd1f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "20d22252-4a52-4ec8-81eb-84ffcf067108",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "14358408-3242-4d23-8977-8879e30108c2",
              "parent_uuid": "20d22252-4a52-4ec8-81eb-84ffcf067108",
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
              "uuid": "9bbf586a-648e-46c5-a0e8-01c887551c90",
              "parent_uuid": "20d22252-4a52-4ec8-81eb-84ffcf067108",
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
              "uuid": "ca7083e5-7452-4d20-ba74-34cb94356744",
              "parent_uuid": "20d22252-4a52-4ec8-81eb-84ffcf067108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2893f3a9-f566-42b5-93a5-316e2dc096ec",
                  "parent_uuid": "ca7083e5-7452-4d20-ba74-34cb94356744",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "630eacdd-e656-497d-acc0-c9dd28a42e1b",
              "parent_uuid": "20d22252-4a52-4ec8-81eb-84ffcf067108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "109b1f4e-bc34-4f4f-8207-c1c9609c7e12",
                  "parent_uuid": "630eacdd-e656-497d-acc0-c9dd28a42e1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9499e5c4-0bfd-47ab-8580-60c28bffb2ed",
              "parent_uuid": "20d22252-4a52-4ec8-81eb-84ffcf067108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d542e99-3655-4dea-b02d-a74a51f2a341",
                  "parent_uuid": "9499e5c4-0bfd-47ab-8580-60c28bffb2ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b2ed5cc-8f6a-4296-b9c9-47bdb28a130f",
              "parent_uuid": "20d22252-4a52-4ec8-81eb-84ffcf067108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7350517a-d462-4a8f-9275-0b7281070f80",
                  "parent_uuid": "8b2ed5cc-8f6a-4296-b9c9-47bdb28a130f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e1ce303e-b159-498c-9f5f-c409766afeb9",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee4f8d6d-ff9d-492e-b619-31f12e58e7c8",
              "parent_uuid": "e1ce303e-b159-498c-9f5f-c409766afeb9",
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
              "uuid": "b18c2531-77d3-4427-8684-6628c0639e4b",
              "parent_uuid": "e1ce303e-b159-498c-9f5f-c409766afeb9",
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
              "uuid": "a2637068-01b9-4da0-941c-cb25ffb7c47a",
              "parent_uuid": "e1ce303e-b159-498c-9f5f-c409766afeb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "378aa2e4-06d4-461d-bbc2-4e6d4e9b7db2",
                  "parent_uuid": "a2637068-01b9-4da0-941c-cb25ffb7c47a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af58ba3a-2009-46a4-b8c5-a9b6d3873251",
              "parent_uuid": "e1ce303e-b159-498c-9f5f-c409766afeb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc569369-fd92-425d-91e0-b71f4b6c126b",
                  "parent_uuid": "af58ba3a-2009-46a4-b8c5-a9b6d3873251",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0bb6fdb-57ad-49ba-9c95-de7b53411617",
              "parent_uuid": "e1ce303e-b159-498c-9f5f-c409766afeb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0755865-4723-45de-ae59-8672f0c8598e",
                  "parent_uuid": "c0bb6fdb-57ad-49ba-9c95-de7b53411617",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5c15e2f-65ed-4405-bd26-d10c2f468349",
              "parent_uuid": "e1ce303e-b159-498c-9f5f-c409766afeb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f5a21df-a9a9-4130-b54f-ec28822a2831",
                  "parent_uuid": "f5c15e2f-65ed-4405-bd26-d10c2f468349",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f7c6e829-d93a-44db-9bc1-00f9a2577d40",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3db495d-bd99-441d-9c56-3e7205e4b565",
              "parent_uuid": "f7c6e829-d93a-44db-9bc1-00f9a2577d40",
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
          "uuid": "4ca8a24b-85f4-4929-bba5-2aacbe50336e",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "518a1d34-197c-49f0-942e-dbdda4137b82",
              "parent_uuid": "4ca8a24b-85f4-4929-bba5-2aacbe50336e",
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
          "uuid": "88de62ad-9709-4334-89b3-a4f1feb7565b",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41bac115-12a1-45cb-af0e-4e2c6df8ef9e",
              "parent_uuid": "88de62ad-9709-4334-89b3-a4f1feb7565b",
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
                  "uuid": "dfdaeb4b-9956-4d1f-adfb-588b9c668cbf",
                  "parent_uuid": "41bac115-12a1-45cb-af0e-4e2c6df8ef9e",
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
          "uuid": "32ab3869-a0a7-4a99-8e03-0d812b746204",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcc6d6c0-4df1-444b-91b3-c3f4ca1e88e1",
              "parent_uuid": "32ab3869-a0a7-4a99-8e03-0d812b746204",
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
          "uuid": "cf6bc18b-6062-4b16-9444-94428cf133ff",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "efbefce4-1005-4d3e-a94e-9254a161a8b7",
              "parent_uuid": "cf6bc18b-6062-4b16-9444-94428cf133ff",
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
          "uuid": "d39f17c1-9ba4-4bdd-9d14-e8ae2b11d844",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5bfbb3f-acc7-414c-a311-ee23fc2901c3",
              "parent_uuid": "d39f17c1-9ba4-4bdd-9d14-e8ae2b11d844",
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
              "uuid": "ff844ab4-d72a-4289-b37e-3c36f79b00fa",
              "parent_uuid": "d39f17c1-9ba4-4bdd-9d14-e8ae2b11d844",
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
              "uuid": "c6d79c6c-ab38-41e3-bbf0-e8ccf3889019",
              "parent_uuid": "d39f17c1-9ba4-4bdd-9d14-e8ae2b11d844",
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
              "uuid": "f8942e59-1f0b-4137-8fbf-7971abc3c08a",
              "parent_uuid": "d39f17c1-9ba4-4bdd-9d14-e8ae2b11d844",
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
              "uuid": "622993c7-8bd9-4ceb-bb2a-33c526882774",
              "parent_uuid": "d39f17c1-9ba4-4bdd-9d14-e8ae2b11d844",
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
              "uuid": "89db25cb-afbc-417a-9354-cc3a404a1e4b",
              "parent_uuid": "d39f17c1-9ba4-4bdd-9d14-e8ae2b11d844",
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
          "uuid": "d641c2b5-e3c9-4867-9175-02ea95246f48",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "3d936c4d-d9b7-4a96-a8e8-1c9fb05e2790",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52e922fb-fa15-4b4a-8390-af071e212840",
              "parent_uuid": "3d936c4d-d9b7-4a96-a8e8-1c9fb05e2790",
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
              "uuid": "60c6fec3-b6ae-4dcb-86b5-92cbd5d4e932",
              "parent_uuid": "3d936c4d-d9b7-4a96-a8e8-1c9fb05e2790",
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
              "uuid": "21051595-3568-4ea5-bec2-4a89eaf3166f",
              "parent_uuid": "3d936c4d-d9b7-4a96-a8e8-1c9fb05e2790",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9cbfd499-06be-4344-9cd1-3f9091ac8064",
                  "parent_uuid": "21051595-3568-4ea5-bec2-4a89eaf3166f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6adb5e12-b6c1-4971-92d7-ce495de77697",
              "parent_uuid": "3d936c4d-d9b7-4a96-a8e8-1c9fb05e2790",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80a2889e-85c4-415d-9d27-7ecbc3bbc0a4",
                  "parent_uuid": "6adb5e12-b6c1-4971-92d7-ce495de77697",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31621bf2-3813-43a7-a45d-cd87cc6ef539",
              "parent_uuid": "3d936c4d-d9b7-4a96-a8e8-1c9fb05e2790",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "928751fe-6263-44f4-9812-284a0c790dbb",
                  "parent_uuid": "31621bf2-3813-43a7-a45d-cd87cc6ef539",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4e51830-2770-4bb7-aeb2-c9c194dde504",
              "parent_uuid": "3d936c4d-d9b7-4a96-a8e8-1c9fb05e2790",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82e6f704-be76-4c95-b074-48c31de82390",
                  "parent_uuid": "c4e51830-2770-4bb7-aeb2-c9c194dde504",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "081fd212-8df3-4142-81ab-a623372db31d",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66bec44a-a04e-4aee-96b6-75a2544e6bc8",
              "parent_uuid": "081fd212-8df3-4142-81ab-a623372db31d",
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
              "uuid": "ef835604-5025-4704-ba64-8dd171ec84af",
              "parent_uuid": "081fd212-8df3-4142-81ab-a623372db31d",
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
              "uuid": "c0c5d530-b150-46f4-8d9e-52fa76d4fd2f",
              "parent_uuid": "081fd212-8df3-4142-81ab-a623372db31d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1020941b-4df4-4a1f-9e51-2516aac706b6",
                  "parent_uuid": "c0c5d530-b150-46f4-8d9e-52fa76d4fd2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "497b0e67-e88f-41c5-932f-adc43431d045",
              "parent_uuid": "081fd212-8df3-4142-81ab-a623372db31d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91182d04-866d-4f97-8242-3e8127984d10",
                  "parent_uuid": "497b0e67-e88f-41c5-932f-adc43431d045",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "589f955d-a8a8-4567-b0d6-a0e645194de6",
              "parent_uuid": "081fd212-8df3-4142-81ab-a623372db31d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c33dad7-426d-4040-b30f-2e5f84f63130",
                  "parent_uuid": "589f955d-a8a8-4567-b0d6-a0e645194de6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b95175e-b914-45b8-a00b-4fd7eb3f0c51",
              "parent_uuid": "081fd212-8df3-4142-81ab-a623372db31d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5323d2eb-c224-4fe5-b2e2-3f8221f3827e",
                  "parent_uuid": "0b95175e-b914-45b8-a00b-4fd7eb3f0c51",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f569d328-7596-46e8-85b7-d2acc43e052a",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7564049-8ecf-4efd-a097-fc49ff09e9d9",
              "parent_uuid": "f569d328-7596-46e8-85b7-d2acc43e052a",
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
              "uuid": "50c39806-0972-497d-9f67-2df99493750f",
              "parent_uuid": "f569d328-7596-46e8-85b7-d2acc43e052a",
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
              "uuid": "38a1c7c0-6d08-44f0-a5ce-27c16aba44e4",
              "parent_uuid": "f569d328-7596-46e8-85b7-d2acc43e052a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c61311a1-33af-4451-8ac0-a43dc96da3dd",
                  "parent_uuid": "38a1c7c0-6d08-44f0-a5ce-27c16aba44e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9e4463f-4f67-42d9-ab51-35dd1dfd4735",
              "parent_uuid": "f569d328-7596-46e8-85b7-d2acc43e052a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5204c9b7-7118-4010-9d99-fc13fca5d59b",
                  "parent_uuid": "f9e4463f-4f67-42d9-ab51-35dd1dfd4735",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52827417-39a8-49b5-9e37-f6faf7268b05",
              "parent_uuid": "f569d328-7596-46e8-85b7-d2acc43e052a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ceb42761-6999-4035-b134-82fcd269e82c",
                  "parent_uuid": "52827417-39a8-49b5-9e37-f6faf7268b05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "caefc25d-b366-4295-b64d-1b687525ba60",
              "parent_uuid": "f569d328-7596-46e8-85b7-d2acc43e052a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b82b86c5-6d89-47c9-951a-9dfe37c531f1",
                  "parent_uuid": "caefc25d-b366-4295-b64d-1b687525ba60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "78291243-305a-4b07-9999-5b88613e2474",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "99e07cab-722e-417d-ad91-70f3b9def061",
              "parent_uuid": "78291243-305a-4b07-9999-5b88613e2474",
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
              "uuid": "dac247b6-0a09-4d4e-a9f1-e52877131294",
              "parent_uuid": "78291243-305a-4b07-9999-5b88613e2474",
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
              "uuid": "e29cd728-ffb1-4f64-baeb-dfd54a26dae9",
              "parent_uuid": "78291243-305a-4b07-9999-5b88613e2474",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e06dfe7-c199-44b1-8da3-0481c92f5a1c",
                  "parent_uuid": "e29cd728-ffb1-4f64-baeb-dfd54a26dae9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32b410d2-5ddf-416c-bcb5-aa945de8410e",
              "parent_uuid": "78291243-305a-4b07-9999-5b88613e2474",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3faf13fd-e98f-4b8c-a042-4e3dbfd1d2f0",
                  "parent_uuid": "32b410d2-5ddf-416c-bcb5-aa945de8410e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e992fc9-a61b-4dd5-80f8-bb8ade67cb8f",
              "parent_uuid": "78291243-305a-4b07-9999-5b88613e2474",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e601161c-9ab3-440c-8209-c1542a737d7a",
                  "parent_uuid": "5e992fc9-a61b-4dd5-80f8-bb8ade67cb8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0123ef9-4136-4c6f-8b0a-7a850befc6b8",
              "parent_uuid": "78291243-305a-4b07-9999-5b88613e2474",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37bd267f-e5cc-49d9-9aed-be1f6eb42403",
                  "parent_uuid": "e0123ef9-4136-4c6f-8b0a-7a850befc6b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c4cd49f6-1f7c-486a-bfc2-dd755642471d",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50384f58-e82a-4475-b58a-6a3c7d484f2e",
              "parent_uuid": "c4cd49f6-1f7c-486a-bfc2-dd755642471d",
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
              "uuid": "d3e368e6-5c93-4156-844b-1f4b6e666f30",
              "parent_uuid": "c4cd49f6-1f7c-486a-bfc2-dd755642471d",
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
              "uuid": "57f6066c-95ff-4f20-b9de-3bbb4e84be70",
              "parent_uuid": "c4cd49f6-1f7c-486a-bfc2-dd755642471d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4194b430-e0c8-43a8-a0ad-e04972fe0b76",
                  "parent_uuid": "57f6066c-95ff-4f20-b9de-3bbb4e84be70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "feb201c8-f518-47f3-b265-bca7e7d54051",
              "parent_uuid": "c4cd49f6-1f7c-486a-bfc2-dd755642471d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "239283c5-6422-46f3-8314-c2ce3616eb50",
                  "parent_uuid": "feb201c8-f518-47f3-b265-bca7e7d54051",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01c46f3d-9355-4ffd-969d-a8c386f16922",
              "parent_uuid": "c4cd49f6-1f7c-486a-bfc2-dd755642471d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8861a1a5-fa1e-4770-97d4-e6e6622c358c",
                  "parent_uuid": "01c46f3d-9355-4ffd-969d-a8c386f16922",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba893494-ec7c-4882-bdb4-4c1d69bcd148",
              "parent_uuid": "c4cd49f6-1f7c-486a-bfc2-dd755642471d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db0fbced-1d5c-48b0-9a67-5e27950fe0e2",
                  "parent_uuid": "ba893494-ec7c-4882-bdb4-4c1d69bcd148",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e1f921d8-3d66-4b7c-9d9e-c0cd36c2fa70",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58fe4f2e-5f53-41ae-adb7-182cdd671471",
              "parent_uuid": "e1f921d8-3d66-4b7c-9d9e-c0cd36c2fa70",
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
              "uuid": "39dbd525-f4f6-41a8-b2eb-55b502b1d35c",
              "parent_uuid": "e1f921d8-3d66-4b7c-9d9e-c0cd36c2fa70",
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
              "uuid": "d6e6d256-d44f-4c43-9dcd-44992f7d7c41",
              "parent_uuid": "e1f921d8-3d66-4b7c-9d9e-c0cd36c2fa70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "997bc5d5-5217-42b5-a8d6-4798c5cdc4a0",
                  "parent_uuid": "d6e6d256-d44f-4c43-9dcd-44992f7d7c41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01ba169c-0918-4715-9890-de82a3c2af5f",
              "parent_uuid": "e1f921d8-3d66-4b7c-9d9e-c0cd36c2fa70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "981acad6-208d-4b21-afc2-10ddf2c8b8ea",
                  "parent_uuid": "01ba169c-0918-4715-9890-de82a3c2af5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d47d585c-2374-4450-9ab7-cfa825b721ae",
              "parent_uuid": "e1f921d8-3d66-4b7c-9d9e-c0cd36c2fa70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a438bb2-09e2-4eee-90ef-d768229b5b6d",
                  "parent_uuid": "d47d585c-2374-4450-9ab7-cfa825b721ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf6c97f9-6910-4ba1-85ff-424facf36c62",
              "parent_uuid": "e1f921d8-3d66-4b7c-9d9e-c0cd36c2fa70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a6b0777-7091-4206-a721-b247e41cfe05",
                  "parent_uuid": "bf6c97f9-6910-4ba1-85ff-424facf36c62",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "19111127-a06b-44da-b886-ccca00c19aed",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9fa74d4-084f-4f16-b6c1-8f63fa750560",
              "parent_uuid": "19111127-a06b-44da-b886-ccca00c19aed",
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
          "uuid": "b916c6c7-efd6-4e64-9536-c14538ff9b1f",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b688b1bf-b160-41b8-950f-c5e9f1083f2e",
              "parent_uuid": "b916c6c7-efd6-4e64-9536-c14538ff9b1f",
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
          "uuid": "c40fd0eb-cc5f-4c2b-8f0e-6baf4c7c9b80",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91f7834d-4c5e-41e6-99ef-92bfac9da901",
              "parent_uuid": "c40fd0eb-cc5f-4c2b-8f0e-6baf4c7c9b80",
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
                  "uuid": "88b87c0a-d68c-4c61-b5c0-8d5c0e8d5e46",
                  "parent_uuid": "91f7834d-4c5e-41e6-99ef-92bfac9da901",
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
          "uuid": "533ce1dc-9f03-4c4a-ab43-c407d2dfc976",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e854496-d568-4ad0-a6df-0174e7304388",
              "parent_uuid": "533ce1dc-9f03-4c4a-ab43-c407d2dfc976",
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
          "uuid": "706d327c-e297-471f-887c-bb6c7154f213",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c5d5f4df-3114-4cc1-9146-db3dfb243024",
              "parent_uuid": "706d327c-e297-471f-887c-bb6c7154f213",
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
          "uuid": "0bcf7162-399a-43e3-9f56-1717be2864a2",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df7fc7c1-114d-4377-a3b7-894fd33d7420",
              "parent_uuid": "0bcf7162-399a-43e3-9f56-1717be2864a2",
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
              "uuid": "6dbcbe13-a419-44ca-826e-12c2ade7e77e",
              "parent_uuid": "0bcf7162-399a-43e3-9f56-1717be2864a2",
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
              "uuid": "a712b78e-9dd2-4bc5-9b6e-c2215e844f3b",
              "parent_uuid": "0bcf7162-399a-43e3-9f56-1717be2864a2",
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
              "uuid": "9eee0ea2-ef40-42a2-b75f-d3619c37c61f",
              "parent_uuid": "0bcf7162-399a-43e3-9f56-1717be2864a2",
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
              "uuid": "c7ffaaab-e430-45fc-9999-2548f38a4aa7",
              "parent_uuid": "0bcf7162-399a-43e3-9f56-1717be2864a2",
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
          "uuid": "b385398c-e0bd-4dbb-857e-ec8bf3a67ac1",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5a84312a-e3ad-4623-9f5e-5f3a65bab7a5",
              "parent_uuid": "b385398c-e0bd-4dbb-857e-ec8bf3a67ac1",
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
              "uuid": "a2683e26-a397-490b-bd34-07339f0391e7",
              "parent_uuid": "b385398c-e0bd-4dbb-857e-ec8bf3a67ac1",
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
              "uuid": "85df53e9-4518-45ba-a583-eb9e16f34b32",
              "parent_uuid": "b385398c-e0bd-4dbb-857e-ec8bf3a67ac1",
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
              "uuid": "55d32556-9448-43c1-b992-6e7c6b044c87",
              "parent_uuid": "b385398c-e0bd-4dbb-857e-ec8bf3a67ac1",
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
              "uuid": "dd853f49-301c-4543-9068-1145cfa22ae8",
              "parent_uuid": "b385398c-e0bd-4dbb-857e-ec8bf3a67ac1",
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
          "uuid": "cf0969e6-9436-4b94-8781-a6ca9f68fcaf",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb499e8e-06f8-4ad7-bb79-994bc52ecdf9",
              "parent_uuid": "cf0969e6-9436-4b94-8781-a6ca9f68fcaf",
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
              "uuid": "e979f081-be83-42ec-a868-fc42c35e698e",
              "parent_uuid": "cf0969e6-9436-4b94-8781-a6ca9f68fcaf",
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
              "uuid": "46f637db-7ad4-4c61-a728-f63d15ea6a40",
              "parent_uuid": "cf0969e6-9436-4b94-8781-a6ca9f68fcaf",
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
              "uuid": "ee042324-e864-4b71-b5f0-68099f83369c",
              "parent_uuid": "cf0969e6-9436-4b94-8781-a6ca9f68fcaf",
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
              "uuid": "f57c907f-f7d5-4f19-9d25-27425b854378",
              "parent_uuid": "cf0969e6-9436-4b94-8781-a6ca9f68fcaf",
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
          "uuid": "1d7516fa-6292-4023-af7e-9e42620f6bb5",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "806b64f6-ed50-4917-8376-b0d8968a9e37",
              "parent_uuid": "1d7516fa-6292-4023-af7e-9e42620f6bb5",
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
              "uuid": "112f2c60-1665-4b68-a62a-23a8f1c3e83f",
              "parent_uuid": "1d7516fa-6292-4023-af7e-9e42620f6bb5",
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
              "uuid": "7f51a3a1-7e33-4112-a850-ab323b40a1e9",
              "parent_uuid": "1d7516fa-6292-4023-af7e-9e42620f6bb5",
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
              "uuid": "f5398058-fd9d-4799-b1ff-d8e7a586afd2",
              "parent_uuid": "1d7516fa-6292-4023-af7e-9e42620f6bb5",
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
              "uuid": "e5c39bbb-f0e8-43c6-9af1-2e40df5972a0",
              "parent_uuid": "1d7516fa-6292-4023-af7e-9e42620f6bb5",
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
          "uuid": "c9b51fb6-7fbc-4e97-9313-0ba43d8b1d6c",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ad716f2-98a5-4861-aad1-bf49a43021ee",
              "parent_uuid": "c9b51fb6-7fbc-4e97-9313-0ba43d8b1d6c",
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
              "uuid": "2b5410da-366a-49c9-9235-15a05649f920",
              "parent_uuid": "c9b51fb6-7fbc-4e97-9313-0ba43d8b1d6c",
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
              "uuid": "34d3aa68-8f9f-4ebe-9df6-ec2c4ef5da54",
              "parent_uuid": "c9b51fb6-7fbc-4e97-9313-0ba43d8b1d6c",
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
              "uuid": "1d89518a-3c08-4ee8-9cd7-ae772b13679c",
              "parent_uuid": "c9b51fb6-7fbc-4e97-9313-0ba43d8b1d6c",
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
              "uuid": "745bc584-82d3-4fb5-a934-ee8739abc355",
              "parent_uuid": "c9b51fb6-7fbc-4e97-9313-0ba43d8b1d6c",
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
          "uuid": "712ed266-3f5f-42b6-a372-a38bd790b067",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24cc0ce8-3814-4178-b481-1dc595b444d5",
              "parent_uuid": "712ed266-3f5f-42b6-a372-a38bd790b067",
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
              "uuid": "a230e7b0-dd06-4179-8d6a-1d3c1e2f29a1",
              "parent_uuid": "712ed266-3f5f-42b6-a372-a38bd790b067",
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
              "uuid": "4d647265-88ca-4fad-9395-7b1ddbe1e607",
              "parent_uuid": "712ed266-3f5f-42b6-a372-a38bd790b067",
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
              "uuid": "1b377769-ef52-46cd-88ee-f637fd1f58a5",
              "parent_uuid": "712ed266-3f5f-42b6-a372-a38bd790b067",
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
              "uuid": "91459a7c-4882-4582-8e1d-cb041d2edcf4",
              "parent_uuid": "712ed266-3f5f-42b6-a372-a38bd790b067",
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
          "uuid": "831eac27-bd2e-4b47-a564-228cc3ec66e0",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82fed772-e255-483b-8526-33cdacbe7415",
              "parent_uuid": "831eac27-bd2e-4b47-a564-228cc3ec66e0",
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
              "uuid": "4afa836d-1a23-4ad9-9e8b-301f43ed8d53",
              "parent_uuid": "831eac27-bd2e-4b47-a564-228cc3ec66e0",
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
              "uuid": "32af6864-86bb-4367-b153-8b05c60b9d75",
              "parent_uuid": "831eac27-bd2e-4b47-a564-228cc3ec66e0",
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
              "uuid": "16c9623c-1014-4f8c-babd-d35c5d27c7f0",
              "parent_uuid": "831eac27-bd2e-4b47-a564-228cc3ec66e0",
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
              "uuid": "abe513f4-bbdb-4dc7-829e-61d7c00252aa",
              "parent_uuid": "831eac27-bd2e-4b47-a564-228cc3ec66e0",
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
          "uuid": "a778eab6-7cda-4b33-84c6-fdb6e748029e",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6632356b-518b-4caf-be3e-80d29480819c",
              "parent_uuid": "a778eab6-7cda-4b33-84c6-fdb6e748029e",
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
              "uuid": "f626149e-43c7-4af2-b399-8e1396eda48b",
              "parent_uuid": "a778eab6-7cda-4b33-84c6-fdb6e748029e",
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
              "uuid": "3dea0fea-de2a-455d-a0c7-3e0c98da495e",
              "parent_uuid": "a778eab6-7cda-4b33-84c6-fdb6e748029e",
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
              "uuid": "54420d6d-f5d9-47c2-b53f-95878bd497f0",
              "parent_uuid": "a778eab6-7cda-4b33-84c6-fdb6e748029e",
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
              "uuid": "2c70cb9f-a477-4043-8ae2-cb2caa9e6995",
              "parent_uuid": "a778eab6-7cda-4b33-84c6-fdb6e748029e",
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
          "uuid": "66e47b34-97eb-4433-b699-68e2ccbe0229",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fac11452-a596-4e78-a0fc-103a0280dff8",
              "parent_uuid": "66e47b34-97eb-4433-b699-68e2ccbe0229",
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
              "uuid": "b876fae6-ab02-4153-a2ac-d56d2ef538f6",
              "parent_uuid": "66e47b34-97eb-4433-b699-68e2ccbe0229",
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
              "uuid": "c370e221-02f6-407f-ab2c-e596a28a8420",
              "parent_uuid": "66e47b34-97eb-4433-b699-68e2ccbe0229",
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
              "uuid": "bfefe973-f732-4920-aae0-192711d980fc",
              "parent_uuid": "66e47b34-97eb-4433-b699-68e2ccbe0229",
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
              "uuid": "d718052f-deec-4b1b-9f92-c8394a570343",
              "parent_uuid": "66e47b34-97eb-4433-b699-68e2ccbe0229",
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
          "uuid": "03dc0bc0-fd6e-4d13-8f8f-c32f7bebe9ca",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c068b0f-74d7-4d84-bba2-7907cc33c246",
              "parent_uuid": "03dc0bc0-fd6e-4d13-8f8f-c32f7bebe9ca",
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
          "uuid": "1da7ef6d-f5d7-4d34-8ed9-9f16c912359f",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1530d6a-f22f-4b1b-bac0-c69ba5beeb2f",
              "parent_uuid": "1da7ef6d-f5d7-4d34-8ed9-9f16c912359f",
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
          "uuid": "6b4417e0-3a26-45a6-a206-0f9f373afe50",
          "parent_uuid": "c60e6d59-9842-40f0-9498-e5cbfe41889b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a08a538-4d42-4bdf-83f3-7b55f11cac7d",
              "parent_uuid": "6b4417e0-3a26-45a6-a206-0f9f373afe50",
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
                  "uuid": "a2653928-b6ce-4b6f-b774-0c37776d97b9",
                  "parent_uuid": "8a08a538-4d42-4bdf-83f3-7b55f11cac7d",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

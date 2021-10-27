
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
  "uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "a88a47f0-8f52-4f07-b8fe-e1ec8a984a06",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "5a8729bf-431d-4fa0-bcb6-fd0dcec97712",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "5451d74e-bf2e-4694-8510-dba5e91c9f7f",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "e5c69bc8-4620-4461-97de-239f35b0548a",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "57ae7790-3c34-4386-834c-7e194f7bb887",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "4192e83d-13e2-4509-a2c9-f86f6cdc2e22",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "2f4c5d6a-e6c2-40c6-9a20-c2db927ac2f9",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
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
      "uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
      "parent_uuid": "a9d689d1-6fce-4963-9f84-8a9c2b959109",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "bb34ed2d-cc6f-4381-b8fc-9212128f1127",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "576b1260-53b6-4d67-8f57-6cf74ea70094",
              "parent_uuid": "bb34ed2d-cc6f-4381-b8fc-9212128f1127",
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
              "uuid": "5daf79bc-13ed-4d57-b395-13cb0e7736dc",
              "parent_uuid": "bb34ed2d-cc6f-4381-b8fc-9212128f1127",
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
              "uuid": "966d2ad4-75b8-4b19-8332-1b2639e64289",
              "parent_uuid": "bb34ed2d-cc6f-4381-b8fc-9212128f1127",
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
              "uuid": "f81e221a-70d4-49d7-890a-06033ba42a22",
              "parent_uuid": "bb34ed2d-cc6f-4381-b8fc-9212128f1127",
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
          "uuid": "563f3da7-25f8-4613-bde0-84ed24b4f4fa",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "1d0a6202-00fb-47cf-a111-ce485f67234e",
              "parent_uuid": "563f3da7-25f8-4613-bde0-84ed24b4f4fa",
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
              "uuid": "cddd2ce7-ce2b-4346-bd27-480bdb9af0b4",
              "parent_uuid": "563f3da7-25f8-4613-bde0-84ed24b4f4fa",
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
              "uuid": "29c2e058-e80e-4f30-9ec2-028346e9b990",
              "parent_uuid": "563f3da7-25f8-4613-bde0-84ed24b4f4fa",
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
              "uuid": "0a6139fa-5112-4714-8279-4ed8abc43262",
              "parent_uuid": "563f3da7-25f8-4613-bde0-84ed24b4f4fa",
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
          "uuid": "01152ec9-ae0b-483e-bcb2-c54bef9b4c37",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "b4bf15c5-a9c5-4b09-8a2b-bca804ce670d",
              "parent_uuid": "01152ec9-ae0b-483e-bcb2-c54bef9b4c37",
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
              "uuid": "6a3198e7-c3a0-49ff-8521-b28b38b57323",
              "parent_uuid": "01152ec9-ae0b-483e-bcb2-c54bef9b4c37",
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
              "uuid": "2562bee6-5bf4-4f6d-ba32-2627c69c5d4e",
              "parent_uuid": "01152ec9-ae0b-483e-bcb2-c54bef9b4c37",
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
              "uuid": "c42f8b8e-1cf1-416d-a63e-a7b9ede0a897",
              "parent_uuid": "01152ec9-ae0b-483e-bcb2-c54bef9b4c37",
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
          "uuid": "7cfc97ca-c1a6-47c1-b741-ff10c7f60816",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5065cbed-1a5e-4500-ae94-0fb54c975c57",
              "parent_uuid": "7cfc97ca-c1a6-47c1-b741-ff10c7f60816",
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
              "uuid": "27cce69d-e6ea-4219-a60c-18ec45c717bb",
              "parent_uuid": "7cfc97ca-c1a6-47c1-b741-ff10c7f60816",
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
              "uuid": "9e413e60-b755-4363-91eb-2331dd482d52",
              "parent_uuid": "7cfc97ca-c1a6-47c1-b741-ff10c7f60816",
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
              "uuid": "b29e12fa-a287-4509-a834-adda8a668cf9",
              "parent_uuid": "7cfc97ca-c1a6-47c1-b741-ff10c7f60816",
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
              "uuid": "213165f6-ccdf-4790-909e-6aebd0dc4b5b",
              "parent_uuid": "7cfc97ca-c1a6-47c1-b741-ff10c7f60816",
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
              "uuid": "d98d10b6-27ba-46a9-a5ef-949f3a060d45",
              "parent_uuid": "7cfc97ca-c1a6-47c1-b741-ff10c7f60816",
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
          "uuid": "9f2a333b-8adc-4025-929b-b63c1e93d7e1",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "15e91bb6-361c-4707-8d5e-ef0300e369ba",
              "parent_uuid": "9f2a333b-8adc-4025-929b-b63c1e93d7e1",
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
          "uuid": "cd9df85e-8a39-4c1b-9145-ef3600d74992",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8ddbd60e-942f-4cf2-bad1-ba4d96568912",
              "parent_uuid": "cd9df85e-8a39-4c1b-9145-ef3600d74992",
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
              "uuid": "3530227b-361a-4ba0-b89f-12820221747b",
              "parent_uuid": "cd9df85e-8a39-4c1b-9145-ef3600d74992",
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
              "uuid": "41dced6e-dce9-4d26-bbc3-3557b8d258ee",
              "parent_uuid": "cd9df85e-8a39-4c1b-9145-ef3600d74992",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e5b7ef4d-5266-44db-a676-48a07dd2788a",
                  "parent_uuid": "41dced6e-dce9-4d26-bbc3-3557b8d258ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e47eed5-4ec5-4ff0-b7a8-2da725215f69",
              "parent_uuid": "cd9df85e-8a39-4c1b-9145-ef3600d74992",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a3b6aa08-a352-4c0a-83dd-06242fbd7b2e",
                  "parent_uuid": "6e47eed5-4ec5-4ff0-b7a8-2da725215f69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3747680-da0c-44db-8ee0-f980621a9b5e",
              "parent_uuid": "cd9df85e-8a39-4c1b-9145-ef3600d74992",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d5dd2038-dcdf-4eb4-9a4c-f228ba026baa",
                  "parent_uuid": "a3747680-da0c-44db-8ee0-f980621a9b5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89e99ffc-8169-4cd1-9f5d-dfae8511770d",
              "parent_uuid": "cd9df85e-8a39-4c1b-9145-ef3600d74992",
              "tagName": "td",
              "properties": [
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
                  "uuid": "99c518e3-35ed-4369-9bab-ad4af25d5fd1",
                  "parent_uuid": "89e99ffc-8169-4cd1-9f5d-dfae8511770d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b02ce396-17fa-4051-9fb5-0c66567122ac",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0af21ef2-65b2-4fd4-8e8d-3ce8b96eb146",
              "parent_uuid": "b02ce396-17fa-4051-9fb5-0c66567122ac",
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
              "uuid": "8569a5ee-ddc0-4e9c-bda9-0ac760f79066",
              "parent_uuid": "b02ce396-17fa-4051-9fb5-0c66567122ac",
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
              "uuid": "f399efad-99ec-44c6-bdcf-3790056eeb8a",
              "parent_uuid": "b02ce396-17fa-4051-9fb5-0c66567122ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "055c7337-0ee1-4de7-be1e-be8d86911bdf",
                  "parent_uuid": "f399efad-99ec-44c6-bdcf-3790056eeb8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ed40094-4023-4f16-a66e-e6f9e518783e",
              "parent_uuid": "b02ce396-17fa-4051-9fb5-0c66567122ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "290dbeeb-1caa-4049-a009-21daaf451001",
                  "parent_uuid": "7ed40094-4023-4f16-a66e-e6f9e518783e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4b8aa53-55d9-41f3-bad9-ed094382a057",
              "parent_uuid": "b02ce396-17fa-4051-9fb5-0c66567122ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "19ddb89a-c61e-446c-908b-2092f9b48d8a",
                  "parent_uuid": "e4b8aa53-55d9-41f3-bad9-ed094382a057",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3add79d3-e641-4e52-8f0e-b29926cc38d5",
              "parent_uuid": "b02ce396-17fa-4051-9fb5-0c66567122ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1c650d54-a8e5-4e67-a9c6-96de2f88bd44",
                  "parent_uuid": "3add79d3-e641-4e52-8f0e-b29926cc38d5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6022198a-be14-424c-b8ae-5e256a1ad0c9",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea554278-d83d-4762-947b-b52148eb4e91",
              "parent_uuid": "6022198a-be14-424c-b8ae-5e256a1ad0c9",
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
              "uuid": "6cfe8273-2a8c-4c2e-8d34-47888c25e740",
              "parent_uuid": "6022198a-be14-424c-b8ae-5e256a1ad0c9",
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
              "uuid": "76d2db1c-d152-4465-bb13-403a58bf0769",
              "parent_uuid": "6022198a-be14-424c-b8ae-5e256a1ad0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66538195-8a3a-4b3f-9370-a32c702060f1",
                  "parent_uuid": "76d2db1c-d152-4465-bb13-403a58bf0769",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "582119f8-8aeb-447a-87ad-c079efa984cd",
              "parent_uuid": "6022198a-be14-424c-b8ae-5e256a1ad0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccf6138a-6a40-4c5a-a268-efbbcc6f1f7b",
                  "parent_uuid": "582119f8-8aeb-447a-87ad-c079efa984cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "330f7085-8231-4c3b-ac8a-b27e5f437540",
              "parent_uuid": "6022198a-be14-424c-b8ae-5e256a1ad0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30111474-c9b3-4774-a606-f9cc78a5e2bb",
                  "parent_uuid": "330f7085-8231-4c3b-ac8a-b27e5f437540",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1902635-ebcf-4a39-8294-df1b4f91d4b2",
              "parent_uuid": "6022198a-be14-424c-b8ae-5e256a1ad0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bef9b7e7-9cfd-4e40-a4c9-767d6bf5c591",
                  "parent_uuid": "e1902635-ebcf-4a39-8294-df1b4f91d4b2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "806d252f-3c7b-482d-8c68-5c7c4710f348",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a7c524c2-0230-480b-823c-e3de569e98fb",
              "parent_uuid": "806d252f-3c7b-482d-8c68-5c7c4710f348",
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
              "uuid": "58526ddb-1a55-49c1-b5a5-5577d0631c8a",
              "parent_uuid": "806d252f-3c7b-482d-8c68-5c7c4710f348",
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
              "uuid": "76c93465-841f-460b-aa10-ffd868bd9280",
              "parent_uuid": "806d252f-3c7b-482d-8c68-5c7c4710f348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b900c1a-e161-45a1-96d3-35a08e0c4c09",
                  "parent_uuid": "76c93465-841f-460b-aa10-ffd868bd9280",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff01ad22-ae8a-44a5-b7c7-7c19b23b4652",
              "parent_uuid": "806d252f-3c7b-482d-8c68-5c7c4710f348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "002b3bfc-057f-4499-89dd-4847fec23380",
                  "parent_uuid": "ff01ad22-ae8a-44a5-b7c7-7c19b23b4652",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5bb6d2f-3da6-4422-ad10-a176847478ea",
              "parent_uuid": "806d252f-3c7b-482d-8c68-5c7c4710f348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2be55f38-9a84-4493-848e-1868ea923b6a",
                  "parent_uuid": "f5bb6d2f-3da6-4422-ad10-a176847478ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a26e2e9-dcdd-41d9-800f-5b8e2fea15d5",
              "parent_uuid": "806d252f-3c7b-482d-8c68-5c7c4710f348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d18bc91d-ed20-4ac2-abef-5f938410af7a",
                  "parent_uuid": "5a26e2e9-dcdd-41d9-800f-5b8e2fea15d5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "146b578e-c96d-49db-bed6-5c9428279589",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07e7aae1-ed64-459b-b65c-514334fc51d2",
              "parent_uuid": "146b578e-c96d-49db-bed6-5c9428279589",
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
              "uuid": "6c654de2-e278-43ed-bf5c-c10f5fe8bd7d",
              "parent_uuid": "146b578e-c96d-49db-bed6-5c9428279589",
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
              "uuid": "659289fc-a48a-4fd1-920d-57ba90e335b6",
              "parent_uuid": "146b578e-c96d-49db-bed6-5c9428279589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38a6c9fb-f5f7-44d2-8bf0-a8054eb92757",
                  "parent_uuid": "659289fc-a48a-4fd1-920d-57ba90e335b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "006f419b-36c9-4c92-aabb-c617e67e6030",
              "parent_uuid": "146b578e-c96d-49db-bed6-5c9428279589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2938e93f-551e-48b6-b792-b9ac11882edb",
                  "parent_uuid": "006f419b-36c9-4c92-aabb-c617e67e6030",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f09e46d-0334-4877-b4fa-d35a0acd3f5f",
              "parent_uuid": "146b578e-c96d-49db-bed6-5c9428279589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a3bd797-9822-4614-b7e7-5f792214817d",
                  "parent_uuid": "3f09e46d-0334-4877-b4fa-d35a0acd3f5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e953af0c-24c7-4ba8-bb57-07615315cbe1",
              "parent_uuid": "146b578e-c96d-49db-bed6-5c9428279589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20230cc7-e684-4008-ae61-04afab8bcd6c",
                  "parent_uuid": "e953af0c-24c7-4ba8-bb57-07615315cbe1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9c1694e-4773-4eed-b0fd-71c3f82096ca",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85420fb8-00d5-4894-a941-bc4f7c6405a3",
              "parent_uuid": "b9c1694e-4773-4eed-b0fd-71c3f82096ca",
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
              "uuid": "de95c28d-1ad7-43e7-9188-1adee55aaddc",
              "parent_uuid": "b9c1694e-4773-4eed-b0fd-71c3f82096ca",
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
              "uuid": "24bbf83c-cd66-4895-bd4c-6c10bc39f4e2",
              "parent_uuid": "b9c1694e-4773-4eed-b0fd-71c3f82096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d4f2ca0-bbac-48b4-946a-3d3862a76052",
                  "parent_uuid": "24bbf83c-cd66-4895-bd4c-6c10bc39f4e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ce6ff4a-0be0-485b-9478-c647c5e06756",
              "parent_uuid": "b9c1694e-4773-4eed-b0fd-71c3f82096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "816e08e8-8021-4a3b-8052-c4d3f880101f",
                  "parent_uuid": "8ce6ff4a-0be0-485b-9478-c647c5e06756",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "141f4085-9b91-4ca1-a40d-5601876c126f",
              "parent_uuid": "b9c1694e-4773-4eed-b0fd-71c3f82096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a51ec0fa-796c-4774-84cc-37aa44296eca",
                  "parent_uuid": "141f4085-9b91-4ca1-a40d-5601876c126f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a5efc29-7e77-43ad-9a8c-b06c5a5484e1",
              "parent_uuid": "b9c1694e-4773-4eed-b0fd-71c3f82096ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9173da1-0539-46de-9249-8acb96e7e328",
                  "parent_uuid": "1a5efc29-7e77-43ad-9a8c-b06c5a5484e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "94bb2b30-8e7f-4699-a2b0-86c2364fbe91",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4552946-1822-4152-b643-68c4015bbf9c",
              "parent_uuid": "94bb2b30-8e7f-4699-a2b0-86c2364fbe91",
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
              "uuid": "c950df17-9257-44c4-b7cb-6644923d784d",
              "parent_uuid": "94bb2b30-8e7f-4699-a2b0-86c2364fbe91",
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
              "uuid": "96bcaa13-ca49-495e-99dc-73e6c907cb5f",
              "parent_uuid": "94bb2b30-8e7f-4699-a2b0-86c2364fbe91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04affce9-2a19-47e1-bc62-6566a87cd1c0",
                  "parent_uuid": "96bcaa13-ca49-495e-99dc-73e6c907cb5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0dc9989-cd1d-4b75-ac95-d4e3a5935b92",
              "parent_uuid": "94bb2b30-8e7f-4699-a2b0-86c2364fbe91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a35169be-faf4-4df3-abd9-dde9a6f76dca",
                  "parent_uuid": "b0dc9989-cd1d-4b75-ac95-d4e3a5935b92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "921c735f-7a94-4c3b-9e61-c21a91cbd109",
              "parent_uuid": "94bb2b30-8e7f-4699-a2b0-86c2364fbe91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bb55b86-bd0f-450f-b34f-0e102f801248",
                  "parent_uuid": "921c735f-7a94-4c3b-9e61-c21a91cbd109",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bac7e2bd-4f74-494f-bced-0bfe10b0b713",
              "parent_uuid": "94bb2b30-8e7f-4699-a2b0-86c2364fbe91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff623dba-87a5-4c7b-ba15-bf147227a2bb",
                  "parent_uuid": "bac7e2bd-4f74-494f-bced-0bfe10b0b713",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d7be3900-2c49-423c-95dc-2aff7c28c8b0",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34b113b2-ba5e-4c42-ac6a-f823f1539ab1",
              "parent_uuid": "d7be3900-2c49-423c-95dc-2aff7c28c8b0",
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
              "uuid": "ea4ffdd9-6b3f-4772-855e-46d0ed10d96c",
              "parent_uuid": "d7be3900-2c49-423c-95dc-2aff7c28c8b0",
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
              "uuid": "b7ce4130-7213-479b-9f0f-16235af8938a",
              "parent_uuid": "d7be3900-2c49-423c-95dc-2aff7c28c8b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "492357d8-cb78-4f89-8b90-fa12760678b3",
                  "parent_uuid": "b7ce4130-7213-479b-9f0f-16235af8938a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a9cb469-9180-448e-9680-cc8655ca648b",
              "parent_uuid": "d7be3900-2c49-423c-95dc-2aff7c28c8b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0719212-0cf3-499a-b711-9ad120a968cb",
                  "parent_uuid": "1a9cb469-9180-448e-9680-cc8655ca648b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "426fb228-e19c-45ec-b964-93b0515252bc",
              "parent_uuid": "d7be3900-2c49-423c-95dc-2aff7c28c8b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d32cc0ce-8bd9-4687-894a-4647211e58ff",
                  "parent_uuid": "426fb228-e19c-45ec-b964-93b0515252bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ed42fce-18af-4970-883b-9d8519d0e501",
              "parent_uuid": "d7be3900-2c49-423c-95dc-2aff7c28c8b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8bf46761-e7e3-486a-b147-be8ddca04a87",
                  "parent_uuid": "2ed42fce-18af-4970-883b-9d8519d0e501",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "372cbab1-188e-4beb-8d4e-e2341c2d11af",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c98c8176-00f1-4e94-9c0a-2912acf16e76",
              "parent_uuid": "372cbab1-188e-4beb-8d4e-e2341c2d11af",
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
              "uuid": "9e3e6c09-4af9-419b-b5d8-0787f98b1c81",
              "parent_uuid": "372cbab1-188e-4beb-8d4e-e2341c2d11af",
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
              "uuid": "4f0a673f-de7a-40c9-97f6-80c33b95f3a1",
              "parent_uuid": "372cbab1-188e-4beb-8d4e-e2341c2d11af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da7b754d-4676-4929-857f-d3d168947f09",
                  "parent_uuid": "4f0a673f-de7a-40c9-97f6-80c33b95f3a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c1799ce-d47d-44e1-8fae-d699708aec0e",
              "parent_uuid": "372cbab1-188e-4beb-8d4e-e2341c2d11af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0da6f23-8d01-4759-bd14-843ec6bbc808",
                  "parent_uuid": "2c1799ce-d47d-44e1-8fae-d699708aec0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c95c808-4c8a-4039-baff-c7ec1f0a2bf6",
              "parent_uuid": "372cbab1-188e-4beb-8d4e-e2341c2d11af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9730398e-4777-49cd-b24f-27a6e783d637",
                  "parent_uuid": "5c95c808-4c8a-4039-baff-c7ec1f0a2bf6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96fdaf3c-541f-41a7-bc9a-eaf6d71867e6",
              "parent_uuid": "372cbab1-188e-4beb-8d4e-e2341c2d11af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "928f3f2c-371d-421f-9dc8-6289edb975ee",
                  "parent_uuid": "96fdaf3c-541f-41a7-bc9a-eaf6d71867e6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8ff1ffbd-e477-4a32-8940-08083eccf090",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2565d32-46bd-40c9-93e3-4b671f7f5cf3",
              "parent_uuid": "8ff1ffbd-e477-4a32-8940-08083eccf090",
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
              "uuid": "ece9073d-b329-42a9-9266-7f4635214e0a",
              "parent_uuid": "8ff1ffbd-e477-4a32-8940-08083eccf090",
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
              "uuid": "14e6f631-eb53-4673-a0ce-3036bde5f861",
              "parent_uuid": "8ff1ffbd-e477-4a32-8940-08083eccf090",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb0cbd5e-7e8a-42b0-a727-b664b9a55a85",
                  "parent_uuid": "14e6f631-eb53-4673-a0ce-3036bde5f861",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c3d4a97-112c-483e-aace-4e40ac920b31",
              "parent_uuid": "8ff1ffbd-e477-4a32-8940-08083eccf090",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "610ed53c-8d6b-4a06-9589-865e84733143",
                  "parent_uuid": "5c3d4a97-112c-483e-aace-4e40ac920b31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e73fd54e-8d4b-4777-910c-93412605de77",
              "parent_uuid": "8ff1ffbd-e477-4a32-8940-08083eccf090",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1dd1fcf5-59e6-4f2e-a960-c3680c8b1746",
                  "parent_uuid": "e73fd54e-8d4b-4777-910c-93412605de77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fae7d38e-acf9-4dfd-8d99-b775a817ae58",
              "parent_uuid": "8ff1ffbd-e477-4a32-8940-08083eccf090",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b71ca41b-c1ea-4b91-a3fd-dedee9536565",
                  "parent_uuid": "fae7d38e-acf9-4dfd-8d99-b775a817ae58",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2ebe3aa5-a9f3-4cd3-8c6a-a253b02eef5a",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aae6088f-56ac-45f4-a0b2-852b0c5c6541",
              "parent_uuid": "2ebe3aa5-a9f3-4cd3-8c6a-a253b02eef5a",
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
              "uuid": "5ac87afb-7e22-4622-95b7-b01c716e7dfd",
              "parent_uuid": "2ebe3aa5-a9f3-4cd3-8c6a-a253b02eef5a",
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
              "uuid": "217a0c27-06b5-450a-8ccb-a43b0c8f0b12",
              "parent_uuid": "2ebe3aa5-a9f3-4cd3-8c6a-a253b02eef5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53f8a5de-68c3-4a5c-aefc-d22e5948befe",
                  "parent_uuid": "217a0c27-06b5-450a-8ccb-a43b0c8f0b12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "716e1f64-4266-4e60-9c50-146013a4c935",
              "parent_uuid": "2ebe3aa5-a9f3-4cd3-8c6a-a253b02eef5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e73e7f5-a551-4835-864a-714d8384a3a9",
                  "parent_uuid": "716e1f64-4266-4e60-9c50-146013a4c935",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c995f7d8-33ff-4370-86e5-49ebb16dfa6e",
              "parent_uuid": "2ebe3aa5-a9f3-4cd3-8c6a-a253b02eef5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7f5be4e-ad52-4f7c-ba8f-c895d41b4608",
                  "parent_uuid": "c995f7d8-33ff-4370-86e5-49ebb16dfa6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b0bc136-2768-44eb-baad-a0cc66a2a852",
              "parent_uuid": "2ebe3aa5-a9f3-4cd3-8c6a-a253b02eef5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c9f5998-fb2e-4a97-b867-bdd9043cafb6",
                  "parent_uuid": "3b0bc136-2768-44eb-baad-a0cc66a2a852",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c2bf803-41a0-49b3-afa8-f33d2892d55e",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "afedc8b9-c35d-4852-b430-32e239c2c107",
              "parent_uuid": "4c2bf803-41a0-49b3-afa8-f33d2892d55e",
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
              "uuid": "1299df84-bcab-4629-a600-b5e584e166ce",
              "parent_uuid": "4c2bf803-41a0-49b3-afa8-f33d2892d55e",
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
              "uuid": "00c13ea7-551d-4d99-a83a-e4bd6c0e9ccb",
              "parent_uuid": "4c2bf803-41a0-49b3-afa8-f33d2892d55e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "758f0e95-382a-46f3-9b7c-610eb9058fea",
                  "parent_uuid": "00c13ea7-551d-4d99-a83a-e4bd6c0e9ccb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d26e5c0d-ec85-4f1a-a791-265f10d45f88",
              "parent_uuid": "4c2bf803-41a0-49b3-afa8-f33d2892d55e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3cbe464-da94-4101-b03f-a123ce60ee81",
                  "parent_uuid": "d26e5c0d-ec85-4f1a-a791-265f10d45f88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f86dc52-af77-49ad-a7d2-c6fc3b89b835",
              "parent_uuid": "4c2bf803-41a0-49b3-afa8-f33d2892d55e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76db0bd8-8345-4530-97d7-647e8fae0e76",
                  "parent_uuid": "4f86dc52-af77-49ad-a7d2-c6fc3b89b835",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48f32400-8c04-4547-af16-a30f13a99a27",
              "parent_uuid": "4c2bf803-41a0-49b3-afa8-f33d2892d55e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6705fbe5-fad8-460c-a970-98b40261d31d",
                  "parent_uuid": "48f32400-8c04-4547-af16-a30f13a99a27",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76f1cc57-8678-4a4d-87f8-1d34c71c03c0",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "737ee8fb-2571-4c07-a0fb-b099a0339018",
              "parent_uuid": "76f1cc57-8678-4a4d-87f8-1d34c71c03c0",
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
          "uuid": "f0dc5c1f-bb89-4fe7-84da-dc39340586ee",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96c02a24-5ae6-4b0b-bc3a-f8abc5b05d29",
              "parent_uuid": "f0dc5c1f-bb89-4fe7-84da-dc39340586ee",
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
          "uuid": "3198737c-a242-44ea-809d-629fd82d1c65",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3352a6ab-fab4-4541-8d9e-943e4830ca17",
              "parent_uuid": "3198737c-a242-44ea-809d-629fd82d1c65",
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
                  "uuid": "6a869421-7208-4920-906d-60f9dbe5306d",
                  "parent_uuid": "3352a6ab-fab4-4541-8d9e-943e4830ca17",
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
          "uuid": "1b79e279-5790-418d-9380-34d04fb1db1c",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d58b596-d0a0-4d4d-bffb-98e649056bd4",
              "parent_uuid": "1b79e279-5790-418d-9380-34d04fb1db1c",
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
          "uuid": "b7942867-c194-45e5-95ca-eca392ea2b1b",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "b70149ae-89ca-44dc-b433-3178f3d3582e",
              "parent_uuid": "b7942867-c194-45e5-95ca-eca392ea2b1b",
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
          "uuid": "f4c750a2-f7b3-4e82-a492-d0e07f746f34",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24811ee9-5e44-4905-98df-94247ad9d9fc",
              "parent_uuid": "f4c750a2-f7b3-4e82-a492-d0e07f746f34",
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
              "uuid": "853e2572-3e7b-4e05-a743-d2852382b243",
              "parent_uuid": "f4c750a2-f7b3-4e82-a492-d0e07f746f34",
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
              "uuid": "ac8ff6fe-bda0-4ba1-9d92-86aa495c98cf",
              "parent_uuid": "f4c750a2-f7b3-4e82-a492-d0e07f746f34",
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
              "uuid": "fb5b68f7-4285-4885-8883-dbd5e3a64259",
              "parent_uuid": "f4c750a2-f7b3-4e82-a492-d0e07f746f34",
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
              "uuid": "15e7f4ea-9bc5-477c-b57f-26b491070d04",
              "parent_uuid": "f4c750a2-f7b3-4e82-a492-d0e07f746f34",
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
              "uuid": "d7dcbce5-7c2e-48e2-8ae0-ffd8954105d1",
              "parent_uuid": "f4c750a2-f7b3-4e82-a492-d0e07f746f34",
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
          "uuid": "fad60b50-1989-40b1-89f7-c83c60354ac4",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d31e8cd7-c66f-4097-b3ae-4dca38a42375",
              "parent_uuid": "fad60b50-1989-40b1-89f7-c83c60354ac4",
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
              "uuid": "f3cd07be-cd12-49da-944f-18c3f65ddaa0",
              "parent_uuid": "fad60b50-1989-40b1-89f7-c83c60354ac4",
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
              "uuid": "90c61954-e256-43da-ad29-9d9b4abc4568",
              "parent_uuid": "fad60b50-1989-40b1-89f7-c83c60354ac4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70e9965d-6723-4218-89f3-910c0e2cde36",
                  "parent_uuid": "90c61954-e256-43da-ad29-9d9b4abc4568",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be0e75dc-ddc8-48f4-9107-006d16bda037",
              "parent_uuid": "fad60b50-1989-40b1-89f7-c83c60354ac4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c06e703-915a-487f-8ce8-8889ea0ec747",
                  "parent_uuid": "be0e75dc-ddc8-48f4-9107-006d16bda037",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afd0ba04-3c69-4cfe-87ff-b63b36f08873",
              "parent_uuid": "fad60b50-1989-40b1-89f7-c83c60354ac4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f65d9d8-97cb-4b18-bb72-6557b8e5d30b",
                  "parent_uuid": "afd0ba04-3c69-4cfe-87ff-b63b36f08873",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "592d22bf-a9ec-4bd2-8947-0e2bc04c05f9",
              "parent_uuid": "fad60b50-1989-40b1-89f7-c83c60354ac4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfa6df0a-166e-4791-98d9-cfae7fb6e6c0",
                  "parent_uuid": "592d22bf-a9ec-4bd2-8947-0e2bc04c05f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f38e190e-d558-4ee2-a3f3-274b1110f1af",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e3eeb59e-1ed8-4210-b2d4-617c720e5bc4",
              "parent_uuid": "f38e190e-d558-4ee2-a3f3-274b1110f1af",
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
              "uuid": "55640899-b1ae-4721-8d19-9a17640481fb",
              "parent_uuid": "f38e190e-d558-4ee2-a3f3-274b1110f1af",
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
              "uuid": "6e261ea5-f5fc-40fc-a4f6-0fea783cfdda",
              "parent_uuid": "f38e190e-d558-4ee2-a3f3-274b1110f1af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d7938a9-2a07-4364-8f02-383bcb68d506",
                  "parent_uuid": "6e261ea5-f5fc-40fc-a4f6-0fea783cfdda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce8bb4db-4d64-435d-9a7d-c39f63377a3a",
              "parent_uuid": "f38e190e-d558-4ee2-a3f3-274b1110f1af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "126207fc-da8f-449e-866e-59b6278c86f9",
                  "parent_uuid": "ce8bb4db-4d64-435d-9a7d-c39f63377a3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a55c4b29-a267-4900-b247-a6d0d4e539f5",
              "parent_uuid": "f38e190e-d558-4ee2-a3f3-274b1110f1af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "710a23bc-ff02-4d98-a84b-205058eff615",
                  "parent_uuid": "a55c4b29-a267-4900-b247-a6d0d4e539f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69bede95-d91f-47fc-95fd-28310b449ad8",
              "parent_uuid": "f38e190e-d558-4ee2-a3f3-274b1110f1af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0814a71d-12cb-4472-b76a-5f4a9ca9f61e",
                  "parent_uuid": "69bede95-d91f-47fc-95fd-28310b449ad8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "08a6f87f-cd77-40d7-b0cc-f4aed5cced12",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "592f8e32-8308-43ee-8053-045136689bda",
              "parent_uuid": "08a6f87f-cd77-40d7-b0cc-f4aed5cced12",
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
              "uuid": "2a93e402-2eab-41c7-a568-7c6c05047c9f",
              "parent_uuid": "08a6f87f-cd77-40d7-b0cc-f4aed5cced12",
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
              "uuid": "7cf2c676-97f5-462b-b851-98f499b19d50",
              "parent_uuid": "08a6f87f-cd77-40d7-b0cc-f4aed5cced12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13310192-bba1-49e9-955b-1eca074f6a86",
                  "parent_uuid": "7cf2c676-97f5-462b-b851-98f499b19d50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e12d49ee-243b-4c0b-a926-3a1dfaeb28f8",
              "parent_uuid": "08a6f87f-cd77-40d7-b0cc-f4aed5cced12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17e44f73-4d81-4ced-9197-0261efe03fe0",
                  "parent_uuid": "e12d49ee-243b-4c0b-a926-3a1dfaeb28f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6ebeeb7-006c-48d8-ac8c-a76974cbdbb5",
              "parent_uuid": "08a6f87f-cd77-40d7-b0cc-f4aed5cced12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d38485e9-52f5-4f4f-9090-27c0a250f17b",
                  "parent_uuid": "b6ebeeb7-006c-48d8-ac8c-a76974cbdbb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "831b0d2f-4ea9-4121-992c-aad7d686697f",
              "parent_uuid": "08a6f87f-cd77-40d7-b0cc-f4aed5cced12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef11fe60-456c-4d11-8cf0-f97f05dcb593",
                  "parent_uuid": "831b0d2f-4ea9-4121-992c-aad7d686697f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0d7b3357-bcb8-44e6-aaaf-d6c1e6c9fcb9",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "805dcc06-2f4c-4601-934b-b4b6c7db706f",
              "parent_uuid": "0d7b3357-bcb8-44e6-aaaf-d6c1e6c9fcb9",
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
              "uuid": "224a1450-5a95-4aa3-9409-e43d349e03b6",
              "parent_uuid": "0d7b3357-bcb8-44e6-aaaf-d6c1e6c9fcb9",
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
              "uuid": "2715c94e-5c35-4db1-9fbe-de1606755e57",
              "parent_uuid": "0d7b3357-bcb8-44e6-aaaf-d6c1e6c9fcb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e5bdb97-1a4d-404f-b608-e5f94c2547a1",
                  "parent_uuid": "2715c94e-5c35-4db1-9fbe-de1606755e57",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24b4a449-48f7-420a-b16d-5e6c3d3d7751",
              "parent_uuid": "0d7b3357-bcb8-44e6-aaaf-d6c1e6c9fcb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd56e064-1ec9-4177-b032-92eeafaec52a",
                  "parent_uuid": "24b4a449-48f7-420a-b16d-5e6c3d3d7751",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c83c4f8-4743-4254-a154-43be1eca6095",
              "parent_uuid": "0d7b3357-bcb8-44e6-aaaf-d6c1e6c9fcb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8242bac9-4831-429e-a3a4-82f3ada96a09",
                  "parent_uuid": "5c83c4f8-4743-4254-a154-43be1eca6095",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d260044-3636-4a0b-b513-e7616aac254c",
              "parent_uuid": "0d7b3357-bcb8-44e6-aaaf-d6c1e6c9fcb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5aca89da-e826-4b4c-8ea5-91281ad7f434",
                  "parent_uuid": "6d260044-3636-4a0b-b513-e7616aac254c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "48562e54-037a-406c-bf26-265582b11f13",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ad6f729-a34f-4983-9933-f31ac3d69aec",
              "parent_uuid": "48562e54-037a-406c-bf26-265582b11f13",
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
          "uuid": "db370e99-ed2f-4dfa-a89a-29b62dab6253",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b172ccf0-037d-4e3b-8794-cdc65a80c87c",
              "parent_uuid": "db370e99-ed2f-4dfa-a89a-29b62dab6253",
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
          "uuid": "eb056309-a687-4246-8780-bd5351e60f46",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fe81eea6-8e79-4634-a2eb-b7afc1c0ded9",
              "parent_uuid": "eb056309-a687-4246-8780-bd5351e60f46",
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
                  "uuid": "dc2f31cb-110d-4372-82a6-05640b41ea49",
                  "parent_uuid": "fe81eea6-8e79-4634-a2eb-b7afc1c0ded9",
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
          "uuid": "17e81dd0-8908-41b8-b62f-6d201209e36c",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df4b506e-88c6-4fb9-95b7-bb4093e5a30d",
              "parent_uuid": "17e81dd0-8908-41b8-b62f-6d201209e36c",
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
          "uuid": "5bdb16c4-bb14-4c5d-92b6-d0be6a3410be",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d7a36a38-f5b1-46b3-b25b-d811a50368ed",
              "parent_uuid": "5bdb16c4-bb14-4c5d-92b6-d0be6a3410be",
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
          "uuid": "3531eff9-c87e-4d1e-bbc4-08463711c2a6",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e3997c4-18ca-4767-bf10-cb394792284c",
              "parent_uuid": "3531eff9-c87e-4d1e-bbc4-08463711c2a6",
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
              "uuid": "0d4c097f-4149-430c-82ad-f19805dad22d",
              "parent_uuid": "3531eff9-c87e-4d1e-bbc4-08463711c2a6",
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
              "uuid": "758eabb5-bcbe-46eb-8096-53d7e5f84cda",
              "parent_uuid": "3531eff9-c87e-4d1e-bbc4-08463711c2a6",
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
              "uuid": "a186e9e8-ea01-4884-9520-b8a98ec4345c",
              "parent_uuid": "3531eff9-c87e-4d1e-bbc4-08463711c2a6",
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
              "uuid": "702516b0-fb72-4b0a-9586-64a8618c86dc",
              "parent_uuid": "3531eff9-c87e-4d1e-bbc4-08463711c2a6",
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
              "uuid": "c3bc1424-4ea9-4d7d-905d-20cb08180533",
              "parent_uuid": "3531eff9-c87e-4d1e-bbc4-08463711c2a6",
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
          "uuid": "59439985-14ef-4404-a393-434a7febbe29",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "14aaa558-955e-45a3-9b2e-ce6a6982be83",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e52788d2-d817-4052-bf34-9e76b665dcba",
              "parent_uuid": "14aaa558-955e-45a3-9b2e-ce6a6982be83",
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
              "uuid": "4b378890-6b71-4272-9ff9-cf1fb37bea2c",
              "parent_uuid": "14aaa558-955e-45a3-9b2e-ce6a6982be83",
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
              "uuid": "1f2760f1-248e-405b-a1d4-dc96281d8af9",
              "parent_uuid": "14aaa558-955e-45a3-9b2e-ce6a6982be83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e568ecc4-abc9-4593-9b90-741ecfb51d11",
                  "parent_uuid": "1f2760f1-248e-405b-a1d4-dc96281d8af9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45266482-6f86-446d-b513-32e4315e1111",
              "parent_uuid": "14aaa558-955e-45a3-9b2e-ce6a6982be83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c28a0d3-85cf-4dab-8a65-072f2bfbc105",
                  "parent_uuid": "45266482-6f86-446d-b513-32e4315e1111",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5fdd10d-ae16-41e6-bfc0-9462ed5a08fa",
              "parent_uuid": "14aaa558-955e-45a3-9b2e-ce6a6982be83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3e1e626-6b13-4a97-ac6b-098cb8698642",
                  "parent_uuid": "f5fdd10d-ae16-41e6-bfc0-9462ed5a08fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d164e1e-a739-44b2-9cd4-91ef3a8672a5",
              "parent_uuid": "14aaa558-955e-45a3-9b2e-ce6a6982be83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eca70a63-23ee-4299-81f5-b1f042ae277b",
                  "parent_uuid": "0d164e1e-a739-44b2-9cd4-91ef3a8672a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8ac9848e-d562-4dd9-b2f1-d24ca5c3da44",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52edfcfa-3ae8-4387-8291-a5aeea886f24",
              "parent_uuid": "8ac9848e-d562-4dd9-b2f1-d24ca5c3da44",
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
              "uuid": "db8f138f-ac91-4e66-a930-37a4da5cf8bc",
              "parent_uuid": "8ac9848e-d562-4dd9-b2f1-d24ca5c3da44",
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
              "uuid": "123c43ca-6b3b-440d-a6c5-42a3bbd19e4b",
              "parent_uuid": "8ac9848e-d562-4dd9-b2f1-d24ca5c3da44",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76296dd3-65ca-4699-9351-e767a0ab5e4b",
                  "parent_uuid": "123c43ca-6b3b-440d-a6c5-42a3bbd19e4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f3886ac-65ca-45c7-bd0b-80b59ef8e403",
              "parent_uuid": "8ac9848e-d562-4dd9-b2f1-d24ca5c3da44",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ad69192-3e43-43f4-b867-7619a37d99c6",
                  "parent_uuid": "6f3886ac-65ca-45c7-bd0b-80b59ef8e403",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "663aa1b6-0a46-4447-9a5e-0072002e5b66",
              "parent_uuid": "8ac9848e-d562-4dd9-b2f1-d24ca5c3da44",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77a6e76b-c61c-4061-b61e-f0b17e001f9f",
                  "parent_uuid": "663aa1b6-0a46-4447-9a5e-0072002e5b66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "098b6ee7-5bcc-49e9-87ec-7d49ec4e36de",
              "parent_uuid": "8ac9848e-d562-4dd9-b2f1-d24ca5c3da44",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5bf0c07-102c-4564-b326-0bdae988cba6",
                  "parent_uuid": "098b6ee7-5bcc-49e9-87ec-7d49ec4e36de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "60c103bf-1b03-4952-83c7-4930fa39b1ab",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6055d876-7f8f-451a-b6b8-34f189c0ec1d",
              "parent_uuid": "60c103bf-1b03-4952-83c7-4930fa39b1ab",
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
              "uuid": "4e041393-65db-4e29-bd00-b621560808f9",
              "parent_uuid": "60c103bf-1b03-4952-83c7-4930fa39b1ab",
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
              "uuid": "c0c1c031-3db0-4809-824e-a7857dbdb1ff",
              "parent_uuid": "60c103bf-1b03-4952-83c7-4930fa39b1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6c1d3f8-6948-4b01-8359-b2c94cda5780",
                  "parent_uuid": "c0c1c031-3db0-4809-824e-a7857dbdb1ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c169f92-cb58-4bb7-bde8-75374e7dcf82",
              "parent_uuid": "60c103bf-1b03-4952-83c7-4930fa39b1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97976a62-217b-46b2-b837-8402840b4799",
                  "parent_uuid": "5c169f92-cb58-4bb7-bde8-75374e7dcf82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ecfbbf3-9f87-4e64-8bf0-eafbb3c55940",
              "parent_uuid": "60c103bf-1b03-4952-83c7-4930fa39b1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae986f8f-4fd9-46d6-a294-b7ccb15a5375",
                  "parent_uuid": "4ecfbbf3-9f87-4e64-8bf0-eafbb3c55940",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0d3370d-d1db-4c52-a3d3-927907c7085a",
              "parent_uuid": "60c103bf-1b03-4952-83c7-4930fa39b1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a96fdc33-639e-4fcb-8048-5cf1f5721f6b",
                  "parent_uuid": "e0d3370d-d1db-4c52-a3d3-927907c7085a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4adf6ce9-b4ed-40c7-b2f2-473702ef6d94",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fadb6adb-97b6-41e8-bfb5-b47545dee21f",
              "parent_uuid": "4adf6ce9-b4ed-40c7-b2f2-473702ef6d94",
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
              "uuid": "3d7270f6-602b-4457-bf57-516e8a6a1d45",
              "parent_uuid": "4adf6ce9-b4ed-40c7-b2f2-473702ef6d94",
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
              "uuid": "75e9a7b5-e1ef-4551-9917-b3b0b0dedb1b",
              "parent_uuid": "4adf6ce9-b4ed-40c7-b2f2-473702ef6d94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac37d1d1-6bc8-40d1-b150-13c9655eaa32",
                  "parent_uuid": "75e9a7b5-e1ef-4551-9917-b3b0b0dedb1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a9d9f88-3c59-4253-ab94-39048226d423",
              "parent_uuid": "4adf6ce9-b4ed-40c7-b2f2-473702ef6d94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "633fd832-bbac-4dbb-8e79-9c3f4ebdd06f",
                  "parent_uuid": "5a9d9f88-3c59-4253-ab94-39048226d423",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7545dc04-3185-4b0f-9da5-9a33babe05d6",
              "parent_uuid": "4adf6ce9-b4ed-40c7-b2f2-473702ef6d94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84af81d4-4a14-45cb-8cb5-b47614803c1e",
                  "parent_uuid": "7545dc04-3185-4b0f-9da5-9a33babe05d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1dcdfc6-2fdc-4f1c-9ceb-b932a71a57b7",
              "parent_uuid": "4adf6ce9-b4ed-40c7-b2f2-473702ef6d94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22e38761-c1b2-4848-b159-208099a69817",
                  "parent_uuid": "e1dcdfc6-2fdc-4f1c-9ceb-b932a71a57b7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3f2ee324-a9cb-47db-82dc-9fafa95b14df",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab549803-fc65-4667-8209-8c027f6cd36a",
              "parent_uuid": "3f2ee324-a9cb-47db-82dc-9fafa95b14df",
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
              "uuid": "43fba927-b9d9-44b9-8b0a-4944f34c081e",
              "parent_uuid": "3f2ee324-a9cb-47db-82dc-9fafa95b14df",
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
              "uuid": "3489696a-b276-43ca-8458-47b18a8d4457",
              "parent_uuid": "3f2ee324-a9cb-47db-82dc-9fafa95b14df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48cd3495-4234-45a4-9280-bd6dd07bd72f",
                  "parent_uuid": "3489696a-b276-43ca-8458-47b18a8d4457",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d944d0e-a4e7-48e9-b9cc-d7d895b400f5",
              "parent_uuid": "3f2ee324-a9cb-47db-82dc-9fafa95b14df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d48c05fe-65ff-402c-b091-0983bed53ad7",
                  "parent_uuid": "7d944d0e-a4e7-48e9-b9cc-d7d895b400f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4905c63-f734-4a5a-a382-9ff4b2030c1e",
              "parent_uuid": "3f2ee324-a9cb-47db-82dc-9fafa95b14df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7dba1021-66f8-4183-976a-16890aa75f40",
                  "parent_uuid": "c4905c63-f734-4a5a-a382-9ff4b2030c1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ded26a5-2a2b-4a80-ad78-55884cca4c8e",
              "parent_uuid": "3f2ee324-a9cb-47db-82dc-9fafa95b14df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "277135d0-6fed-46bf-8c7c-8829b46d62f2",
                  "parent_uuid": "3ded26a5-2a2b-4a80-ad78-55884cca4c8e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dd9fa121-64eb-4ebf-92bb-cf19b68c3055",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bdd99454-618e-429a-b5e4-6e6ba03b803e",
              "parent_uuid": "dd9fa121-64eb-4ebf-92bb-cf19b68c3055",
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
              "uuid": "955c6e03-77b2-41eb-be97-82af93449d13",
              "parent_uuid": "dd9fa121-64eb-4ebf-92bb-cf19b68c3055",
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
              "uuid": "05929e91-6d74-4326-9abf-30484182bb0d",
              "parent_uuid": "dd9fa121-64eb-4ebf-92bb-cf19b68c3055",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e08e59b8-6216-4dd4-b86f-fe1244c2b450",
                  "parent_uuid": "05929e91-6d74-4326-9abf-30484182bb0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28bea503-fced-4a62-83c4-adccdebbe052",
              "parent_uuid": "dd9fa121-64eb-4ebf-92bb-cf19b68c3055",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0867ca09-15b1-498b-a4f7-c665357bb60c",
                  "parent_uuid": "28bea503-fced-4a62-83c4-adccdebbe052",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "278d01f6-34e3-4867-9746-51b64b9f8b5b",
              "parent_uuid": "dd9fa121-64eb-4ebf-92bb-cf19b68c3055",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1dd66f68-8985-4916-b376-90293f54caed",
                  "parent_uuid": "278d01f6-34e3-4867-9746-51b64b9f8b5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "defc4f57-4248-498d-852b-6ca5787874d1",
              "parent_uuid": "dd9fa121-64eb-4ebf-92bb-cf19b68c3055",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb6a184f-6d2c-4eeb-8f94-0e41f0bd8df8",
                  "parent_uuid": "defc4f57-4248-498d-852b-6ca5787874d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "65d114cc-d7e8-43f4-82ec-1d7204e3bd72",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f202063-5ce0-473c-802e-fe889f31127d",
              "parent_uuid": "65d114cc-d7e8-43f4-82ec-1d7204e3bd72",
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
          "uuid": "c6c7a1da-f32a-448e-93a4-6bb96d68d481",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bddf979d-2904-4e84-a012-8df9f1179eee",
              "parent_uuid": "c6c7a1da-f32a-448e-93a4-6bb96d68d481",
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
          "uuid": "abd193ec-e36a-4ff8-a516-dc8d953bf141",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8719a1da-a9af-4a3e-83c6-20b71c9d4a5d",
              "parent_uuid": "abd193ec-e36a-4ff8-a516-dc8d953bf141",
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
                  "uuid": "c19cfcf4-1cdd-42fb-ab95-313abc1349d2",
                  "parent_uuid": "8719a1da-a9af-4a3e-83c6-20b71c9d4a5d",
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
          "uuid": "1ddf58e4-1a1c-4dbd-9f97-dc0685b293ae",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1f945ba2-1ba8-49da-9f5b-0c35331e52fb",
              "parent_uuid": "1ddf58e4-1a1c-4dbd-9f97-dc0685b293ae",
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
          "uuid": "7b5a9208-cd79-4aa5-80a3-0a3539b2dd0f",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "76a41967-b585-401c-8f0f-393d4ebe1b7c",
              "parent_uuid": "7b5a9208-cd79-4aa5-80a3-0a3539b2dd0f",
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
          "uuid": "8190321c-2502-4b8b-aae6-e074412e6638",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d7555b9-5745-4665-940a-7476ba4156c7",
              "parent_uuid": "8190321c-2502-4b8b-aae6-e074412e6638",
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
              "uuid": "6008f02c-c034-43a5-95d0-a0237b9ef00a",
              "parent_uuid": "8190321c-2502-4b8b-aae6-e074412e6638",
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
              "uuid": "336c1a12-6329-4484-9a2b-d627c18a7d83",
              "parent_uuid": "8190321c-2502-4b8b-aae6-e074412e6638",
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
              "uuid": "62041493-d199-42f0-9e6c-54e33d496393",
              "parent_uuid": "8190321c-2502-4b8b-aae6-e074412e6638",
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
              "uuid": "5ec9ed78-218b-460f-95b1-0eae10346162",
              "parent_uuid": "8190321c-2502-4b8b-aae6-e074412e6638",
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
          "uuid": "c3fb2af1-da6d-418e-aee4-81c4feb9be22",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e96ac0af-ad21-46da-8988-0553f743dd9d",
              "parent_uuid": "c3fb2af1-da6d-418e-aee4-81c4feb9be22",
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
              "uuid": "4cefba1b-4178-4e1f-8510-92a48cc2ea34",
              "parent_uuid": "c3fb2af1-da6d-418e-aee4-81c4feb9be22",
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
              "uuid": "509c9d26-ef2a-4dd5-ba06-a3b2b3220ef2",
              "parent_uuid": "c3fb2af1-da6d-418e-aee4-81c4feb9be22",
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
              "uuid": "5078fe90-72a4-443c-9da0-c93efe9d303a",
              "parent_uuid": "c3fb2af1-da6d-418e-aee4-81c4feb9be22",
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
              "uuid": "ccc091ca-5057-4b64-9a5e-f908a650c350",
              "parent_uuid": "c3fb2af1-da6d-418e-aee4-81c4feb9be22",
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
          "uuid": "e47e2382-be72-4661-a3fa-13bdb7ff80ac",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba25f764-279d-47b0-84b9-001b26d90f3a",
              "parent_uuid": "e47e2382-be72-4661-a3fa-13bdb7ff80ac",
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
              "uuid": "11e714a4-efd5-42e8-8cb4-fd1e6f098b50",
              "parent_uuid": "e47e2382-be72-4661-a3fa-13bdb7ff80ac",
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
              "uuid": "e352c6af-5a3b-49ab-827c-bfb79a4ecbfc",
              "parent_uuid": "e47e2382-be72-4661-a3fa-13bdb7ff80ac",
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
              "uuid": "58502cce-f5f8-4240-9417-f2af713b6464",
              "parent_uuid": "e47e2382-be72-4661-a3fa-13bdb7ff80ac",
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
              "uuid": "1c626987-507d-4d94-bd16-c7d381cc2837",
              "parent_uuid": "e47e2382-be72-4661-a3fa-13bdb7ff80ac",
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
          "uuid": "83150327-f808-42fa-af74-6acf0560bda7",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3157e6d3-b399-4095-9d39-d056824865fe",
              "parent_uuid": "83150327-f808-42fa-af74-6acf0560bda7",
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
              "uuid": "c9e9610b-102c-4a33-adfb-5036b06ac81b",
              "parent_uuid": "83150327-f808-42fa-af74-6acf0560bda7",
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
              "uuid": "5555ee27-753e-4139-9da8-e03ca98ac500",
              "parent_uuid": "83150327-f808-42fa-af74-6acf0560bda7",
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
              "uuid": "236615dd-46c8-4226-9875-1b5eded4918f",
              "parent_uuid": "83150327-f808-42fa-af74-6acf0560bda7",
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
              "uuid": "148cea7e-202e-4bc6-b65c-1651c34071b7",
              "parent_uuid": "83150327-f808-42fa-af74-6acf0560bda7",
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
          "uuid": "7bf0c24c-e027-46ed-a03e-a58a76596d55",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "652bb48a-684c-49b3-8e2f-245029506ac0",
              "parent_uuid": "7bf0c24c-e027-46ed-a03e-a58a76596d55",
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
              "uuid": "52b461c1-d75c-48cc-b325-0e56049c2e6d",
              "parent_uuid": "7bf0c24c-e027-46ed-a03e-a58a76596d55",
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
              "uuid": "dc4a25f9-5025-488f-98ce-33cb40e2e14a",
              "parent_uuid": "7bf0c24c-e027-46ed-a03e-a58a76596d55",
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
              "uuid": "05a10b83-d49f-4a8e-88f2-87ba1fc9946c",
              "parent_uuid": "7bf0c24c-e027-46ed-a03e-a58a76596d55",
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
              "uuid": "d492aa1f-0d5c-4607-bff5-e3da743cebb3",
              "parent_uuid": "7bf0c24c-e027-46ed-a03e-a58a76596d55",
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
          "uuid": "0efe2ffd-3205-4836-a8d8-431119e7a900",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1628bc8-0102-4258-9f73-b5969ce59ac9",
              "parent_uuid": "0efe2ffd-3205-4836-a8d8-431119e7a900",
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
              "uuid": "e98626c2-c5d9-4a42-81cd-5c90ccf25f79",
              "parent_uuid": "0efe2ffd-3205-4836-a8d8-431119e7a900",
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
              "uuid": "cd7c192d-50d2-4f2b-967c-ce3bebc074e2",
              "parent_uuid": "0efe2ffd-3205-4836-a8d8-431119e7a900",
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
              "uuid": "fe31babb-6b78-4542-804b-61ab34727a44",
              "parent_uuid": "0efe2ffd-3205-4836-a8d8-431119e7a900",
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
              "uuid": "0be7da30-2d01-4e93-afe7-81e3c60c2ff6",
              "parent_uuid": "0efe2ffd-3205-4836-a8d8-431119e7a900",
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
          "uuid": "81812638-0d48-4b0a-bc3a-8866374735f8",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f0e0e95-93a3-42d8-a49c-bfebf8a9ded8",
              "parent_uuid": "81812638-0d48-4b0a-bc3a-8866374735f8",
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
              "uuid": "b045021c-aca9-4f3a-a91b-b19d85116ddc",
              "parent_uuid": "81812638-0d48-4b0a-bc3a-8866374735f8",
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
              "uuid": "8b8ac44d-3a8a-4c0e-b32a-290871ffc16f",
              "parent_uuid": "81812638-0d48-4b0a-bc3a-8866374735f8",
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
              "uuid": "8cc2c76e-8ffd-4bc8-bc2b-22d382047150",
              "parent_uuid": "81812638-0d48-4b0a-bc3a-8866374735f8",
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
              "uuid": "a50930b5-6c49-4a54-82c3-c4bd860c2d97",
              "parent_uuid": "81812638-0d48-4b0a-bc3a-8866374735f8",
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
          "uuid": "98343fcc-a1e3-41fe-a939-87a965041b26",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2dc0e1d6-1011-4e20-ab21-5331beb8000c",
              "parent_uuid": "98343fcc-a1e3-41fe-a939-87a965041b26",
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
              "uuid": "89e69355-df35-447d-86e2-d37640406a96",
              "parent_uuid": "98343fcc-a1e3-41fe-a939-87a965041b26",
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
              "uuid": "6334fd63-66c4-4248-bbd2-1da99751f05e",
              "parent_uuid": "98343fcc-a1e3-41fe-a939-87a965041b26",
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
              "uuid": "ccd24fb3-7193-4420-9f93-d08f27516110",
              "parent_uuid": "98343fcc-a1e3-41fe-a939-87a965041b26",
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
              "uuid": "d4749c92-91c8-49af-9bfb-c612bb60c6a8",
              "parent_uuid": "98343fcc-a1e3-41fe-a939-87a965041b26",
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
          "uuid": "35235ce8-60b7-4b66-ac7d-51895e71bfe2",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "297b7c5c-7c1e-4407-b263-6a1070267246",
              "parent_uuid": "35235ce8-60b7-4b66-ac7d-51895e71bfe2",
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
              "uuid": "796f01e5-1f42-44ba-b947-a96b1352f66d",
              "parent_uuid": "35235ce8-60b7-4b66-ac7d-51895e71bfe2",
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
              "uuid": "5c7f3e1e-1dcf-4526-9539-426efae44612",
              "parent_uuid": "35235ce8-60b7-4b66-ac7d-51895e71bfe2",
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
              "uuid": "fea8e27b-2556-4dbd-8d43-68808ce9294d",
              "parent_uuid": "35235ce8-60b7-4b66-ac7d-51895e71bfe2",
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
              "uuid": "17146511-e0f9-4ac6-99f8-9ed7ee85514c",
              "parent_uuid": "35235ce8-60b7-4b66-ac7d-51895e71bfe2",
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
          "uuid": "3a39decc-8b4a-44c5-b4dc-9801cdde1423",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41db3421-a197-4e41-8f4e-595f00ed622e",
              "parent_uuid": "3a39decc-8b4a-44c5-b4dc-9801cdde1423",
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
          "uuid": "4104c7a6-673a-4726-84f8-f9f286e72016",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9716bfa9-d939-46a3-a04c-8acb592dce27",
              "parent_uuid": "4104c7a6-673a-4726-84f8-f9f286e72016",
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
          "uuid": "2da3b432-b0e0-4da9-ab46-409d1bad868b",
          "parent_uuid": "0d1c77ba-a55c-4b63-ad33-bc2bc5a546a0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fea5c6b5-eafe-4de6-995a-80d5a9c1cdb4",
              "parent_uuid": "2da3b432-b0e0-4da9-ab46-409d1bad868b",
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
                  "uuid": "e110a6f3-1cb7-4486-be51-c263140c7824",
                  "parent_uuid": "fea5c6b5-eafe-4de6-995a-80d5a9c1cdb4",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

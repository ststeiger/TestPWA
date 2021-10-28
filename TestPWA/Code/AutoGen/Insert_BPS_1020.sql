
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
  "uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "3eee852e-2d27-4b28-bbe2-3cdd9690e37f",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "e6c33e3a-5fa4-494d-af52-860f13589f6b",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "5190193c-aebe-4dbf-aefc-5a9a17303a41",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "828d2064-8a8b-4b89-b7e8-742e5eb2325e",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "11d46506-9a2b-48a0-9f14-b154f3ceb77b",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "70c5c388-bc99-4c6e-8b2e-9ba9afd00bb7",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "197df146-387d-4c71-ab9e-dfdcb013218c",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
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
      "uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
      "parent_uuid": "166ba094-8ab7-44fc-8de4-f88f0988c978",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "dbe67cb0-1884-4ca0-b14f-0755b9c0236d",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "2317ea5b-f4d4-4432-9827-8c9acee1fed5",
              "parent_uuid": "dbe67cb0-1884-4ca0-b14f-0755b9c0236d",
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
              "uuid": "7b611553-c9bf-4980-ade9-7c52281b0b20",
              "parent_uuid": "dbe67cb0-1884-4ca0-b14f-0755b9c0236d",
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
              "uuid": "8ca33976-f1c2-4515-ade1-526bcd92b633",
              "parent_uuid": "dbe67cb0-1884-4ca0-b14f-0755b9c0236d",
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
              "uuid": "a06f6243-4065-42ab-95a2-1f0dea0c72c4",
              "parent_uuid": "dbe67cb0-1884-4ca0-b14f-0755b9c0236d",
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
          "uuid": "1a7bb49b-d8a6-47d4-a084-2003a35a297d",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "70287c2a-61d4-4cb2-9808-668479522537",
              "parent_uuid": "1a7bb49b-d8a6-47d4-a084-2003a35a297d",
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
              "uuid": "54d3917f-1e15-48ae-95a2-7466a1d22424",
              "parent_uuid": "1a7bb49b-d8a6-47d4-a084-2003a35a297d",
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
              "uuid": "659e7ddb-e494-43d8-9615-7ef2068ef56b",
              "parent_uuid": "1a7bb49b-d8a6-47d4-a084-2003a35a297d",
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
              "uuid": "8886fd63-c1ca-47f8-a50b-fb33a8ccabdb",
              "parent_uuid": "1a7bb49b-d8a6-47d4-a084-2003a35a297d",
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
          "uuid": "1934ce9b-fbe0-4973-a7d8-e0d61712b164",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "3862f51a-6f9c-4661-adde-4fd2e716492e",
              "parent_uuid": "1934ce9b-fbe0-4973-a7d8-e0d61712b164",
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
              "uuid": "9513c3d3-d24c-46f7-98bc-c2e766ac2e94",
              "parent_uuid": "1934ce9b-fbe0-4973-a7d8-e0d61712b164",
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
              "uuid": "9647ad86-bc84-41fa-9efb-bb8713f2e612",
              "parent_uuid": "1934ce9b-fbe0-4973-a7d8-e0d61712b164",
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
              "uuid": "b189b9ea-ea82-4199-b110-fcc0d82930c3",
              "parent_uuid": "1934ce9b-fbe0-4973-a7d8-e0d61712b164",
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
          "uuid": "e1085d98-59f9-4c1f-98f6-a7809b723479",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3cacae5-0425-4534-9155-08577817622f",
              "parent_uuid": "e1085d98-59f9-4c1f-98f6-a7809b723479",
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
              "uuid": "0d7199fa-2f2a-4c54-bc6e-a0f53646d0c8",
              "parent_uuid": "e1085d98-59f9-4c1f-98f6-a7809b723479",
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
              "uuid": "884be190-594e-4dfa-9559-965c56d799f2",
              "parent_uuid": "e1085d98-59f9-4c1f-98f6-a7809b723479",
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
              "uuid": "745e4152-dfa2-416c-b64d-7a9a2722f152",
              "parent_uuid": "e1085d98-59f9-4c1f-98f6-a7809b723479",
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
              "uuid": "15cababe-90e0-4230-a1d4-9a2a029bfe12",
              "parent_uuid": "e1085d98-59f9-4c1f-98f6-a7809b723479",
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
              "uuid": "891ab210-7fe9-4f19-87eb-9693c773d2aa",
              "parent_uuid": "e1085d98-59f9-4c1f-98f6-a7809b723479",
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
          "uuid": "f19ac167-6179-4438-925f-33391e9191fa",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b0a9708d-fc49-4ea7-b73b-d35710d93c8b",
              "parent_uuid": "f19ac167-6179-4438-925f-33391e9191fa",
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
          "uuid": "faf08395-3c7b-4333-b231-daf472d82078",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b99ca29-90ce-4099-b48a-b612cab7b3cf",
              "parent_uuid": "faf08395-3c7b-4333-b231-daf472d82078",
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
              "uuid": "56f3d3d8-30d5-4edb-8174-b4c53a0702ee",
              "parent_uuid": "faf08395-3c7b-4333-b231-daf472d82078",
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
              "uuid": "ab938317-8e83-44d7-a356-d91370c3800d",
              "parent_uuid": "faf08395-3c7b-4333-b231-daf472d82078",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d2867a2a-491a-4f11-a359-4b8ea7a313d1",
                  "parent_uuid": "ab938317-8e83-44d7-a356-d91370c3800d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f834e72-934c-47c5-9381-6a432a76cc67",
              "parent_uuid": "faf08395-3c7b-4333-b231-daf472d82078",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cd85c3a7-ee84-49b0-82be-f9866c586f06",
                  "parent_uuid": "4f834e72-934c-47c5-9381-6a432a76cc67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b17c1309-4bab-46b4-a675-f850efebe72b",
              "parent_uuid": "faf08395-3c7b-4333-b231-daf472d82078",
              "tagName": "td",
              "properties": [
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
                  "uuid": "90f2a527-d027-4c20-970d-39ff163c14c6",
                  "parent_uuid": "b17c1309-4bab-46b4-a675-f850efebe72b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe0a4e3a-60de-4f77-9350-73264eb80249",
              "parent_uuid": "faf08395-3c7b-4333-b231-daf472d82078",
              "tagName": "td",
              "properties": [
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
                  "uuid": "233a7c7d-37f0-48f2-95af-74eaa0b73961",
                  "parent_uuid": "fe0a4e3a-60de-4f77-9350-73264eb80249",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "97a5bd81-5956-4e1f-8c3f-7cb852511386",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3a7a046-30d0-445b-9b8c-f46834b39999",
              "parent_uuid": "97a5bd81-5956-4e1f-8c3f-7cb852511386",
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
              "uuid": "fb6f78d2-a0bd-467b-970a-93b0fa8f84f5",
              "parent_uuid": "97a5bd81-5956-4e1f-8c3f-7cb852511386",
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
              "uuid": "a16ca360-f31e-4b05-a47f-546cd1b4cee1",
              "parent_uuid": "97a5bd81-5956-4e1f-8c3f-7cb852511386",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c43f568c-c827-456a-8e30-b39002b5443e",
                  "parent_uuid": "a16ca360-f31e-4b05-a47f-546cd1b4cee1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8681027-b00d-4681-a0ff-c24212a43ed6",
              "parent_uuid": "97a5bd81-5956-4e1f-8c3f-7cb852511386",
              "tagName": "td",
              "properties": [
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
                  "uuid": "28e41442-ba84-4944-8d9d-d70b32b0f574",
                  "parent_uuid": "d8681027-b00d-4681-a0ff-c24212a43ed6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c01d06d-36c3-4de2-9a5f-b7594268b37f",
              "parent_uuid": "97a5bd81-5956-4e1f-8c3f-7cb852511386",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d742cf39-fae8-49de-a082-e9af819b9fe1",
                  "parent_uuid": "5c01d06d-36c3-4de2-9a5f-b7594268b37f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37adf906-cebf-4e39-b41b-bf8be544f2ee",
              "parent_uuid": "97a5bd81-5956-4e1f-8c3f-7cb852511386",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ec980c6b-8089-4177-8b18-cb3ea66cb379",
                  "parent_uuid": "37adf906-cebf-4e39-b41b-bf8be544f2ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6bffdb8a-8fc0-49a4-8310-62b874e27215",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9f7b0a7-a87b-4167-9960-0ba47aeee587",
              "parent_uuid": "6bffdb8a-8fc0-49a4-8310-62b874e27215",
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
              "uuid": "a7679645-68b6-4486-8f7d-a78ba0e26c4e",
              "parent_uuid": "6bffdb8a-8fc0-49a4-8310-62b874e27215",
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
              "uuid": "dee08d94-e7db-4c98-9acc-275fc45055c9",
              "parent_uuid": "6bffdb8a-8fc0-49a4-8310-62b874e27215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc7b4357-24e2-46a1-922c-55a3ba235249",
                  "parent_uuid": "dee08d94-e7db-4c98-9acc-275fc45055c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5e15a94-306e-4a57-b28b-84b143c661b1",
              "parent_uuid": "6bffdb8a-8fc0-49a4-8310-62b874e27215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1a55a9a-0d28-4afc-8625-d814284b0bb7",
                  "parent_uuid": "a5e15a94-306e-4a57-b28b-84b143c661b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dcb886c3-eabe-4b83-9e27-085cdf6fa79a",
              "parent_uuid": "6bffdb8a-8fc0-49a4-8310-62b874e27215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e56d436b-dab5-42b5-b523-b3a39b48f0e9",
                  "parent_uuid": "dcb886c3-eabe-4b83-9e27-085cdf6fa79a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "361ad95d-1991-4ad9-a0f6-d6f4df8aa35a",
              "parent_uuid": "6bffdb8a-8fc0-49a4-8310-62b874e27215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a978d306-d2a4-488f-b3a7-b7ed6e355fa6",
                  "parent_uuid": "361ad95d-1991-4ad9-a0f6-d6f4df8aa35a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "348748e3-5032-4d8c-8153-22d95c1356f2",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d42f645-199d-4be6-a02b-28cb0a2ddeaf",
              "parent_uuid": "348748e3-5032-4d8c-8153-22d95c1356f2",
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
              "uuid": "ce9a0590-ff65-4409-8714-de1574d4351b",
              "parent_uuid": "348748e3-5032-4d8c-8153-22d95c1356f2",
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
              "uuid": "b69bc0ef-f2ec-4a92-87c1-24a020b93f07",
              "parent_uuid": "348748e3-5032-4d8c-8153-22d95c1356f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "925dd3ee-7305-4ef1-ad67-8780a998db62",
                  "parent_uuid": "b69bc0ef-f2ec-4a92-87c1-24a020b93f07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25b97ca6-ce8d-4241-8068-8e9ea0806bf5",
              "parent_uuid": "348748e3-5032-4d8c-8153-22d95c1356f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11f73e43-3675-4e48-bac2-5a45d6e774f5",
                  "parent_uuid": "25b97ca6-ce8d-4241-8068-8e9ea0806bf5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe73644d-7bfe-4ef0-8c8e-71fe37203043",
              "parent_uuid": "348748e3-5032-4d8c-8153-22d95c1356f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1164e1f-7bd2-41b9-b1eb-937efa7841fe",
                  "parent_uuid": "fe73644d-7bfe-4ef0-8c8e-71fe37203043",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d2d2b1f-7e4c-4e10-ba17-4159dde527b9",
              "parent_uuid": "348748e3-5032-4d8c-8153-22d95c1356f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1c30758-a7ee-4373-ae4a-cd6da60d9299",
                  "parent_uuid": "2d2d2b1f-7e4c-4e10-ba17-4159dde527b9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ca9b87d3-e57c-44ee-9c42-da9a8262f1ec",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5651d9a-995f-4b75-90e3-2fb5f8e4ab47",
              "parent_uuid": "ca9b87d3-e57c-44ee-9c42-da9a8262f1ec",
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
              "uuid": "269a1113-6288-49c0-b03a-65261d449048",
              "parent_uuid": "ca9b87d3-e57c-44ee-9c42-da9a8262f1ec",
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
              "uuid": "4e46ae2e-6c15-4adc-8d3b-fe675184a1de",
              "parent_uuid": "ca9b87d3-e57c-44ee-9c42-da9a8262f1ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0959f106-b8b6-440b-b95b-e9e97cf97945",
                  "parent_uuid": "4e46ae2e-6c15-4adc-8d3b-fe675184a1de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7ea5169-cdec-4b79-af7e-0c1c74382368",
              "parent_uuid": "ca9b87d3-e57c-44ee-9c42-da9a8262f1ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e82affc-5234-4197-8f5e-82fab087302f",
                  "parent_uuid": "f7ea5169-cdec-4b79-af7e-0c1c74382368",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76baee38-55f2-47e7-ab2b-73ce777987a8",
              "parent_uuid": "ca9b87d3-e57c-44ee-9c42-da9a8262f1ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "828ef8c6-5d0e-4000-b429-2f29073322bc",
                  "parent_uuid": "76baee38-55f2-47e7-ab2b-73ce777987a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26284493-6edc-4b68-923c-b317f39d165e",
              "parent_uuid": "ca9b87d3-e57c-44ee-9c42-da9a8262f1ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff68d435-86d6-453a-9990-8ccd13b29edf",
                  "parent_uuid": "26284493-6edc-4b68-923c-b317f39d165e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "28f84904-00e5-456b-ace5-004d5e77d149",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32de7f99-1dc4-40c6-ace2-ece3b0bc9339",
              "parent_uuid": "28f84904-00e5-456b-ace5-004d5e77d149",
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
              "uuid": "137706b8-37f4-420c-bf5d-32fb29eba0a9",
              "parent_uuid": "28f84904-00e5-456b-ace5-004d5e77d149",
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
              "uuid": "c686d4c4-c2e3-4bc8-9845-4039b5e7be7b",
              "parent_uuid": "28f84904-00e5-456b-ace5-004d5e77d149",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be55a30c-6d95-43fc-bc05-39ac316192c5",
                  "parent_uuid": "c686d4c4-c2e3-4bc8-9845-4039b5e7be7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8348766-d88e-46ac-b983-0a98980fbf9c",
              "parent_uuid": "28f84904-00e5-456b-ace5-004d5e77d149",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1343f0a-7f2d-4c2f-9c4d-b578c9978cd2",
                  "parent_uuid": "c8348766-d88e-46ac-b983-0a98980fbf9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e153e24-6712-4865-9220-50be9a6eaf10",
              "parent_uuid": "28f84904-00e5-456b-ace5-004d5e77d149",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffa9b76d-3e71-4484-ba42-caefd7ce5e73",
                  "parent_uuid": "9e153e24-6712-4865-9220-50be9a6eaf10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3890fc0e-3457-47cb-8be0-c7ea0c14dd32",
              "parent_uuid": "28f84904-00e5-456b-ace5-004d5e77d149",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee67a86b-7ff7-4d8d-8a8e-07db25449990",
                  "parent_uuid": "3890fc0e-3457-47cb-8be0-c7ea0c14dd32",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b2bd9e7-fd86-4d26-870a-20c6ebf1d661",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa072284-4830-4ea3-a709-7c35883affb4",
              "parent_uuid": "8b2bd9e7-fd86-4d26-870a-20c6ebf1d661",
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
              "uuid": "fcd7cd8e-d956-4a03-a77a-f277f350a2cd",
              "parent_uuid": "8b2bd9e7-fd86-4d26-870a-20c6ebf1d661",
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
              "uuid": "e7c605e1-6fe3-4be9-a464-a3d5001f625d",
              "parent_uuid": "8b2bd9e7-fd86-4d26-870a-20c6ebf1d661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe7222af-97f7-4308-aeda-7e3cb3fa181b",
                  "parent_uuid": "e7c605e1-6fe3-4be9-a464-a3d5001f625d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5986deda-b5e1-4343-82f5-b39d74cd63db",
              "parent_uuid": "8b2bd9e7-fd86-4d26-870a-20c6ebf1d661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "071c6a5a-9386-4022-bf11-63c26edf0bc7",
                  "parent_uuid": "5986deda-b5e1-4343-82f5-b39d74cd63db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc62309f-c2cb-4dde-8156-221056b79b05",
              "parent_uuid": "8b2bd9e7-fd86-4d26-870a-20c6ebf1d661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "337b4100-5e0f-4797-b4b0-100daac91d6d",
                  "parent_uuid": "cc62309f-c2cb-4dde-8156-221056b79b05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbc1a3e7-21c0-4a23-b561-c8394d266256",
              "parent_uuid": "8b2bd9e7-fd86-4d26-870a-20c6ebf1d661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71b01438-3790-41ba-ac5a-1db31fdd381e",
                  "parent_uuid": "fbc1a3e7-21c0-4a23-b561-c8394d266256",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a858c7f8-3216-458e-8a20-f7cdbe465645",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69042784-7a5d-4bc5-9d0f-65859b8ddd3c",
              "parent_uuid": "a858c7f8-3216-458e-8a20-f7cdbe465645",
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
              "uuid": "081a7617-97de-4352-b570-60aeb1cacf0c",
              "parent_uuid": "a858c7f8-3216-458e-8a20-f7cdbe465645",
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
              "uuid": "7e6a4fd6-4eb9-48d5-b118-214b0231035f",
              "parent_uuid": "a858c7f8-3216-458e-8a20-f7cdbe465645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90f7326d-af13-4e78-b880-d4e169c122bb",
                  "parent_uuid": "7e6a4fd6-4eb9-48d5-b118-214b0231035f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d66c968-1208-477c-83eb-fd405ff80a3f",
              "parent_uuid": "a858c7f8-3216-458e-8a20-f7cdbe465645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c195e5e5-88aa-46be-95f9-b2dcf2210376",
                  "parent_uuid": "7d66c968-1208-477c-83eb-fd405ff80a3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7a7157d-c795-4b81-afda-a48b316b615f",
              "parent_uuid": "a858c7f8-3216-458e-8a20-f7cdbe465645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83de83ae-165b-48ab-83b8-1548f8c1f2d8",
                  "parent_uuid": "e7a7157d-c795-4b81-afda-a48b316b615f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afbb80e5-4bcd-4efb-b056-07f6b6d484fd",
              "parent_uuid": "a858c7f8-3216-458e-8a20-f7cdbe465645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d87a913-946d-4fc3-9692-148c63595906",
                  "parent_uuid": "afbb80e5-4bcd-4efb-b056-07f6b6d484fd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3399e2a8-7f26-4b8f-bd77-40cb1a5d90c5",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "098c0321-272f-42c1-b448-af5c00ede53c",
              "parent_uuid": "3399e2a8-7f26-4b8f-bd77-40cb1a5d90c5",
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
              "uuid": "e3682744-7de0-4154-8f42-439d6f5c9008",
              "parent_uuid": "3399e2a8-7f26-4b8f-bd77-40cb1a5d90c5",
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
              "uuid": "27d2dc01-02ab-4cef-8c77-1881cd24dea4",
              "parent_uuid": "3399e2a8-7f26-4b8f-bd77-40cb1a5d90c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0669849e-e70f-4710-add6-6a0422453031",
                  "parent_uuid": "27d2dc01-02ab-4cef-8c77-1881cd24dea4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "767d91ce-b7d6-4edd-b089-2a831549258e",
              "parent_uuid": "3399e2a8-7f26-4b8f-bd77-40cb1a5d90c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6807fbe6-378e-467b-b614-540cd220eefc",
                  "parent_uuid": "767d91ce-b7d6-4edd-b089-2a831549258e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd6564c0-fe71-4193-b1a3-882fbbf100f1",
              "parent_uuid": "3399e2a8-7f26-4b8f-bd77-40cb1a5d90c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7af71818-35a1-4105-993b-e7bfd078dfa2",
                  "parent_uuid": "dd6564c0-fe71-4193-b1a3-882fbbf100f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "196623cc-21c3-40fa-a0f0-a7f93414915e",
              "parent_uuid": "3399e2a8-7f26-4b8f-bd77-40cb1a5d90c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab826e34-d8e4-49aa-881f-703122f94869",
                  "parent_uuid": "196623cc-21c3-40fa-a0f0-a7f93414915e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3ae20e55-adbf-4aa6-a232-72e42ec59afa",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a6a82413-85ae-4107-96e6-2ca557fc11a6",
              "parent_uuid": "3ae20e55-adbf-4aa6-a232-72e42ec59afa",
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
              "uuid": "e68cc21b-b62e-409d-9326-e57635eac245",
              "parent_uuid": "3ae20e55-adbf-4aa6-a232-72e42ec59afa",
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
              "uuid": "aefc8c1e-3351-46f8-9639-ffdbce80721f",
              "parent_uuid": "3ae20e55-adbf-4aa6-a232-72e42ec59afa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd20f025-7331-489c-9641-b491899e244e",
                  "parent_uuid": "aefc8c1e-3351-46f8-9639-ffdbce80721f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5437bf9-cbbf-4953-8d50-a2c010bf9ea1",
              "parent_uuid": "3ae20e55-adbf-4aa6-a232-72e42ec59afa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c66ea7b-6937-4356-b7cc-c04290513c3a",
                  "parent_uuid": "a5437bf9-cbbf-4953-8d50-a2c010bf9ea1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a04c7502-98a0-40dd-b849-d9fdce0506ee",
              "parent_uuid": "3ae20e55-adbf-4aa6-a232-72e42ec59afa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c091aff0-de37-4d91-93b2-79f2d918b2c6",
                  "parent_uuid": "a04c7502-98a0-40dd-b849-d9fdce0506ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a06763d-df7c-4db2-ad87-7174be7bf240",
              "parent_uuid": "3ae20e55-adbf-4aa6-a232-72e42ec59afa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78b8c8c3-5854-4763-8a76-29314e56cdfa",
                  "parent_uuid": "7a06763d-df7c-4db2-ad87-7174be7bf240",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ff05724b-163e-47ca-997f-9c5756511643",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bdc44b80-35b5-4d4b-95f5-c31a3bc9252e",
              "parent_uuid": "ff05724b-163e-47ca-997f-9c5756511643",
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
              "uuid": "531cb37f-e899-4f7a-8af2-c463638d3613",
              "parent_uuid": "ff05724b-163e-47ca-997f-9c5756511643",
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
              "uuid": "2c56c021-6f32-41f6-a6f8-67745237f865",
              "parent_uuid": "ff05724b-163e-47ca-997f-9c5756511643",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "612ed971-5fb6-4114-b93a-6860b5741099",
                  "parent_uuid": "2c56c021-6f32-41f6-a6f8-67745237f865",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f767f6d6-346f-40b7-b9e0-80194765ceda",
              "parent_uuid": "ff05724b-163e-47ca-997f-9c5756511643",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a458e0e-ac32-4725-8f97-352acf6ef928",
                  "parent_uuid": "f767f6d6-346f-40b7-b9e0-80194765ceda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9c2d823-e29a-487e-97b8-287cc50dc0af",
              "parent_uuid": "ff05724b-163e-47ca-997f-9c5756511643",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96849032-64c5-427f-9920-30885f2541ca",
                  "parent_uuid": "f9c2d823-e29a-487e-97b8-287cc50dc0af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abacacdd-ac77-4c2e-9caa-e3cf04221ae3",
              "parent_uuid": "ff05724b-163e-47ca-997f-9c5756511643",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "599370fd-31c1-477c-811a-290b9fc16dc7",
                  "parent_uuid": "abacacdd-ac77-4c2e-9caa-e3cf04221ae3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8bf306fa-3fd9-4e16-a741-e48b75e45ce5",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5512487-1aca-4566-9a26-d9aa3ca036d5",
              "parent_uuid": "8bf306fa-3fd9-4e16-a741-e48b75e45ce5",
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
              "uuid": "72d9358a-e084-4440-865a-e45d5a8672be",
              "parent_uuid": "8bf306fa-3fd9-4e16-a741-e48b75e45ce5",
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
              "uuid": "423bfafa-8a9e-4580-aa24-6931c449d5cd",
              "parent_uuid": "8bf306fa-3fd9-4e16-a741-e48b75e45ce5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac0088ac-51f2-42c8-8210-3869c2b9c04a",
                  "parent_uuid": "423bfafa-8a9e-4580-aa24-6931c449d5cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c956eef7-7aed-4850-8afa-0cc35883d14e",
              "parent_uuid": "8bf306fa-3fd9-4e16-a741-e48b75e45ce5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4999c7f7-87c4-4a6f-a1ed-073842f940de",
                  "parent_uuid": "c956eef7-7aed-4850-8afa-0cc35883d14e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c83e09d-08bc-42f3-b24d-3a319f29b82b",
              "parent_uuid": "8bf306fa-3fd9-4e16-a741-e48b75e45ce5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e59d230-44b2-45b8-ab3e-e2630faeda8c",
                  "parent_uuid": "6c83e09d-08bc-42f3-b24d-3a319f29b82b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b202f425-819d-49f5-b43d-7b2c50dd94bc",
              "parent_uuid": "8bf306fa-3fd9-4e16-a741-e48b75e45ce5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0a79380-c30c-4727-8d68-ea3c1905bb47",
                  "parent_uuid": "b202f425-819d-49f5-b43d-7b2c50dd94bc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "175f99f8-e791-4093-b55f-52350a1ac7a7",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2186f0d4-5331-4f1d-a1fb-5532c3d8c5ed",
              "parent_uuid": "175f99f8-e791-4093-b55f-52350a1ac7a7",
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
          "uuid": "61937d56-855f-4c99-b833-54622f82a40c",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10ac4dcd-454f-4245-b2c7-03d8ae39cb9a",
              "parent_uuid": "61937d56-855f-4c99-b833-54622f82a40c",
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
          "uuid": "b52ea81c-c1c7-4810-971c-bb0d1911be85",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cbbb631-a8be-42a8-94d8-8f5514af0541",
              "parent_uuid": "b52ea81c-c1c7-4810-971c-bb0d1911be85",
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
                  "uuid": "89981170-d19b-45a4-8c01-e857731d9a6b",
                  "parent_uuid": "4cbbb631-a8be-42a8-94d8-8f5514af0541",
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
          "uuid": "a244ab59-4a0c-4952-8b93-c200d2b3c4d6",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8eec066-7f5d-403c-aea9-f5faa7e77c9b",
              "parent_uuid": "a244ab59-4a0c-4952-8b93-c200d2b3c4d6",
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
          "uuid": "83fcbcb1-eba5-4f02-9862-dfa1098413f3",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "07b2b138-136e-4edd-8150-9f6f3a6fe729",
              "parent_uuid": "83fcbcb1-eba5-4f02-9862-dfa1098413f3",
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
          "uuid": "e6dc4cce-bf81-4247-b2ac-7ce4dd6d3691",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06795c38-2bca-4a4b-a84f-8e737437f608",
              "parent_uuid": "e6dc4cce-bf81-4247-b2ac-7ce4dd6d3691",
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
              "uuid": "626c7326-50c1-413b-8594-456c00610d59",
              "parent_uuid": "e6dc4cce-bf81-4247-b2ac-7ce4dd6d3691",
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
              "uuid": "924971bb-e4b2-4ca2-99a1-743e109037d5",
              "parent_uuid": "e6dc4cce-bf81-4247-b2ac-7ce4dd6d3691",
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
              "uuid": "0ae2dde3-12fd-444d-b4da-a047bf4081f9",
              "parent_uuid": "e6dc4cce-bf81-4247-b2ac-7ce4dd6d3691",
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
              "uuid": "e5b5c0fb-9443-47e7-ba4e-b34b46ee59d1",
              "parent_uuid": "e6dc4cce-bf81-4247-b2ac-7ce4dd6d3691",
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
              "uuid": "495471c6-3dad-415c-8963-3a9cbf336b5c",
              "parent_uuid": "e6dc4cce-bf81-4247-b2ac-7ce4dd6d3691",
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
          "uuid": "5b9cc3cd-cdce-4bc5-a88d-e9d781f56523",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b82de82-af9c-4210-b125-9d8bd1ac39d7",
              "parent_uuid": "5b9cc3cd-cdce-4bc5-a88d-e9d781f56523",
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
              "uuid": "a4c1e1fc-213b-43f8-9193-1818978f8e20",
              "parent_uuid": "5b9cc3cd-cdce-4bc5-a88d-e9d781f56523",
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
              "uuid": "2bdc42d3-2a23-4cb9-94b4-cc3cdc0b1726",
              "parent_uuid": "5b9cc3cd-cdce-4bc5-a88d-e9d781f56523",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35b288cc-3e1d-4875-9bc7-12a0d9b890a6",
                  "parent_uuid": "2bdc42d3-2a23-4cb9-94b4-cc3cdc0b1726",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96e2834a-1654-403a-ac42-27d2678c6743",
              "parent_uuid": "5b9cc3cd-cdce-4bc5-a88d-e9d781f56523",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3585a5bf-39be-425c-9ead-19982d9e31fe",
                  "parent_uuid": "96e2834a-1654-403a-ac42-27d2678c6743",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b5d2ff8-efc9-4f17-be05-01c9099500e0",
              "parent_uuid": "5b9cc3cd-cdce-4bc5-a88d-e9d781f56523",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "020bf1c9-06d1-41ee-bf4d-9cd81dbe00f6",
                  "parent_uuid": "1b5d2ff8-efc9-4f17-be05-01c9099500e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae40f1c1-0a99-46ad-bf18-85fd1e39faff",
              "parent_uuid": "5b9cc3cd-cdce-4bc5-a88d-e9d781f56523",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bab45a4-1254-423e-9ead-d717a2740f0f",
                  "parent_uuid": "ae40f1c1-0a99-46ad-bf18-85fd1e39faff",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e57a03dd-2af2-4500-a83d-71b3cdf0c7a3",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf6ef815-d65d-4493-a1ec-30b28e8a20b6",
              "parent_uuid": "e57a03dd-2af2-4500-a83d-71b3cdf0c7a3",
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
              "uuid": "b868d8ae-1fd0-45b2-9f07-6ef93ed9b6f9",
              "parent_uuid": "e57a03dd-2af2-4500-a83d-71b3cdf0c7a3",
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
              "uuid": "45c810db-e902-4049-9ca2-3cf1cec0eddc",
              "parent_uuid": "e57a03dd-2af2-4500-a83d-71b3cdf0c7a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d2f2d67-0c82-48d6-a3c1-156f36a8f2fb",
                  "parent_uuid": "45c810db-e902-4049-9ca2-3cf1cec0eddc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bcdc200-1e11-4674-be63-07aea9d050af",
              "parent_uuid": "e57a03dd-2af2-4500-a83d-71b3cdf0c7a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c0467bd-df48-41e2-870f-481ac8e5e32c",
                  "parent_uuid": "0bcdc200-1e11-4674-be63-07aea9d050af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2aa36fdc-e84f-4743-94bd-b8e50d2689e8",
              "parent_uuid": "e57a03dd-2af2-4500-a83d-71b3cdf0c7a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36b25a8c-3905-432e-8414-3c3d9909ffb7",
                  "parent_uuid": "2aa36fdc-e84f-4743-94bd-b8e50d2689e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b1cb8cc-406e-41fd-8856-0d616320b2bf",
              "parent_uuid": "e57a03dd-2af2-4500-a83d-71b3cdf0c7a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20fa0fa8-b25d-43a0-93e3-8cc80f25ea17",
                  "parent_uuid": "4b1cb8cc-406e-41fd-8856-0d616320b2bf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f0b5140e-17bb-41e0-9dc5-0b2bc756ff7a",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82f2fcc4-3cbb-4f03-8969-c52299bc070c",
              "parent_uuid": "f0b5140e-17bb-41e0-9dc5-0b2bc756ff7a",
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
              "uuid": "c7ac7a6e-d160-448c-8922-5c20330c760d",
              "parent_uuid": "f0b5140e-17bb-41e0-9dc5-0b2bc756ff7a",
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
              "uuid": "918a390b-4515-4282-8ff6-aa93558b3e6f",
              "parent_uuid": "f0b5140e-17bb-41e0-9dc5-0b2bc756ff7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44e3b026-9f3c-4998-b588-0bd56cf0e132",
                  "parent_uuid": "918a390b-4515-4282-8ff6-aa93558b3e6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b197fa96-e82c-4722-bb66-a354cfbc2345",
              "parent_uuid": "f0b5140e-17bb-41e0-9dc5-0b2bc756ff7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1db1fa61-329a-48ab-8a09-4458c9cbdf17",
                  "parent_uuid": "b197fa96-e82c-4722-bb66-a354cfbc2345",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1121785-44b3-48cb-b68b-75e5f720f039",
              "parent_uuid": "f0b5140e-17bb-41e0-9dc5-0b2bc756ff7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddc47837-80ea-44d0-b4d4-c25d7fe7a352",
                  "parent_uuid": "d1121785-44b3-48cb-b68b-75e5f720f039",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2ef93d6-6784-4529-9018-57633d38f9a8",
              "parent_uuid": "f0b5140e-17bb-41e0-9dc5-0b2bc756ff7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cf7dc2b-1047-4065-93f0-8fe090e70ca9",
                  "parent_uuid": "c2ef93d6-6784-4529-9018-57633d38f9a8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a5dd1485-ddc7-4e53-b684-1a890c49a2a9",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1598870-01e6-4d5d-9943-9e87508bd7f1",
              "parent_uuid": "a5dd1485-ddc7-4e53-b684-1a890c49a2a9",
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
              "uuid": "fa077e1d-6e86-4a34-b268-7630a529d2c3",
              "parent_uuid": "a5dd1485-ddc7-4e53-b684-1a890c49a2a9",
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
              "uuid": "62a1ba71-00a0-4549-9e91-464253ceab8d",
              "parent_uuid": "a5dd1485-ddc7-4e53-b684-1a890c49a2a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8963df45-ccd8-4b72-93dc-c4a5de0be6c9",
                  "parent_uuid": "62a1ba71-00a0-4549-9e91-464253ceab8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc660dd5-9249-4b23-9fb6-e426fa3a5946",
              "parent_uuid": "a5dd1485-ddc7-4e53-b684-1a890c49a2a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30dc0906-a7ad-4e69-9c51-af6a7f7a538d",
                  "parent_uuid": "dc660dd5-9249-4b23-9fb6-e426fa3a5946",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3950b04e-134a-4b74-9439-6fad04234cd3",
              "parent_uuid": "a5dd1485-ddc7-4e53-b684-1a890c49a2a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58d7f43c-c5a1-435b-bfab-2a5a1b705fa5",
                  "parent_uuid": "3950b04e-134a-4b74-9439-6fad04234cd3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c74f9b06-ede8-4bc9-9122-c3df5fac4762",
              "parent_uuid": "a5dd1485-ddc7-4e53-b684-1a890c49a2a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acda22d3-0ca3-4d56-b74f-59a2371aa22f",
                  "parent_uuid": "c74f9b06-ede8-4bc9-9122-c3df5fac4762",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bd7941bd-9731-44dc-828e-04478381cdba",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32baf1c2-499b-4a6f-bd09-7c253368748a",
              "parent_uuid": "bd7941bd-9731-44dc-828e-04478381cdba",
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
          "uuid": "77194567-15df-4a2c-a10c-2db18a6fdd48",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8156e6ab-a589-4dfc-be4b-0383ef6368b8",
              "parent_uuid": "77194567-15df-4a2c-a10c-2db18a6fdd48",
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
          "uuid": "74a2d7bf-57ca-400a-b9a8-d8a9df3289d1",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39f73edd-3e91-4436-9619-711adc8a69b1",
              "parent_uuid": "74a2d7bf-57ca-400a-b9a8-d8a9df3289d1",
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
                  "uuid": "0228dc55-00dc-4fc2-ad8b-bd94fcf42e77",
                  "parent_uuid": "39f73edd-3e91-4436-9619-711adc8a69b1",
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
          "uuid": "6ed671b0-db88-4273-bd96-12508076a9ab",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "168979f2-6085-4c9e-b3a0-0a5c402111bb",
              "parent_uuid": "6ed671b0-db88-4273-bd96-12508076a9ab",
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
          "uuid": "b40a8e7f-6bd5-4fc7-805f-e96be41e4c62",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4b730706-995e-4d93-9d66-15e367e91d0e",
              "parent_uuid": "b40a8e7f-6bd5-4fc7-805f-e96be41e4c62",
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
          "uuid": "f440b117-6948-40d5-b160-508979165fdd",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcdb38e9-2407-4235-b9ec-57825bc1321c",
              "parent_uuid": "f440b117-6948-40d5-b160-508979165fdd",
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
              "uuid": "8f0e97d5-f4a2-45d0-aba9-1173ed7f1832",
              "parent_uuid": "f440b117-6948-40d5-b160-508979165fdd",
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
              "uuid": "4e6ed37a-dad6-4a9d-b461-83b96075ee00",
              "parent_uuid": "f440b117-6948-40d5-b160-508979165fdd",
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
              "uuid": "e0491db8-2c1b-4614-ba61-d60e59bb65ac",
              "parent_uuid": "f440b117-6948-40d5-b160-508979165fdd",
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
              "uuid": "4d8e8b0c-c39e-43a6-ad73-a9d3b3b12dcc",
              "parent_uuid": "f440b117-6948-40d5-b160-508979165fdd",
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
              "uuid": "73a3b195-7b1d-409c-beb9-edf5c25553e5",
              "parent_uuid": "f440b117-6948-40d5-b160-508979165fdd",
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
          "uuid": "98e275bd-d4b1-477d-bb2d-fa007acc564b",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "3400fa93-46a4-411e-81e9-6d3d87bd1dc6",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95796786-9a10-49db-97da-93f6dcc30cb9",
              "parent_uuid": "3400fa93-46a4-411e-81e9-6d3d87bd1dc6",
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
              "uuid": "77980686-4e4d-4054-bfb0-f390930dcbb2",
              "parent_uuid": "3400fa93-46a4-411e-81e9-6d3d87bd1dc6",
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
              "uuid": "a64d6491-f41e-461c-a4c9-059f9f203812",
              "parent_uuid": "3400fa93-46a4-411e-81e9-6d3d87bd1dc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7bf5cba5-e4f1-44a6-b59e-53d9914be838",
                  "parent_uuid": "a64d6491-f41e-461c-a4c9-059f9f203812",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43b7c35c-5389-4c2a-82f5-28a5f79d5680",
              "parent_uuid": "3400fa93-46a4-411e-81e9-6d3d87bd1dc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc824df4-ebc6-48d8-8a3d-8f1d8fd91779",
                  "parent_uuid": "43b7c35c-5389-4c2a-82f5-28a5f79d5680",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea52e9e6-1b66-4218-ae5a-d27c058e01a2",
              "parent_uuid": "3400fa93-46a4-411e-81e9-6d3d87bd1dc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "548d9c0f-c987-4d7b-bd34-2ead3fc7666c",
                  "parent_uuid": "ea52e9e6-1b66-4218-ae5a-d27c058e01a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ee64f6d-cbe3-4dda-8284-4ebccd22784c",
              "parent_uuid": "3400fa93-46a4-411e-81e9-6d3d87bd1dc6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6dc5f70c-4038-4891-b990-80fec91cbbe9",
                  "parent_uuid": "2ee64f6d-cbe3-4dda-8284-4ebccd22784c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b410182d-5dc4-44bc-9d3d-f5ed2ae18920",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11f757a5-c222-4f37-adfc-bdc4dfcf5aca",
              "parent_uuid": "b410182d-5dc4-44bc-9d3d-f5ed2ae18920",
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
              "uuid": "680bdb8e-20de-4c79-836d-b78b9ce3352e",
              "parent_uuid": "b410182d-5dc4-44bc-9d3d-f5ed2ae18920",
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
              "uuid": "6f2ac809-a0c1-4b4d-9d54-ebf9f428b043",
              "parent_uuid": "b410182d-5dc4-44bc-9d3d-f5ed2ae18920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0edf4e7a-f751-4bfd-a6fa-dafbcad3a376",
                  "parent_uuid": "6f2ac809-a0c1-4b4d-9d54-ebf9f428b043",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c028b7ae-5b14-4fd4-be01-7a6469de9628",
              "parent_uuid": "b410182d-5dc4-44bc-9d3d-f5ed2ae18920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac40bc93-131e-4afc-8f11-f2565f3114d7",
                  "parent_uuid": "c028b7ae-5b14-4fd4-be01-7a6469de9628",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abaf164f-bb3e-4228-8e29-0a146f6d8870",
              "parent_uuid": "b410182d-5dc4-44bc-9d3d-f5ed2ae18920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bac48d26-3510-42b9-8676-a38d8e061114",
                  "parent_uuid": "abaf164f-bb3e-4228-8e29-0a146f6d8870",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c691781a-ae42-40f1-8072-769dacc2abf0",
              "parent_uuid": "b410182d-5dc4-44bc-9d3d-f5ed2ae18920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fde76713-6bba-49c6-a99f-ee0e1043218b",
                  "parent_uuid": "c691781a-ae42-40f1-8072-769dacc2abf0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "102f055c-02b1-4a0f-8265-17229310f138",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d40e7cd5-502d-4ffc-98d5-eefc8d0c2143",
              "parent_uuid": "102f055c-02b1-4a0f-8265-17229310f138",
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
              "uuid": "4e2a5b52-09e9-4fae-9a2e-569f65523608",
              "parent_uuid": "102f055c-02b1-4a0f-8265-17229310f138",
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
              "uuid": "162dbaed-c514-410f-9210-78f8009b0875",
              "parent_uuid": "102f055c-02b1-4a0f-8265-17229310f138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cd2cbc8-81cc-4418-aff7-108eeea547cc",
                  "parent_uuid": "162dbaed-c514-410f-9210-78f8009b0875",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6e5e867-6ba6-45bc-a5db-9f65d91606f7",
              "parent_uuid": "102f055c-02b1-4a0f-8265-17229310f138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0b74168-f046-47c9-9488-2662db2b16be",
                  "parent_uuid": "f6e5e867-6ba6-45bc-a5db-9f65d91606f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e3aec31-16a2-4bb0-b758-88138bb1f748",
              "parent_uuid": "102f055c-02b1-4a0f-8265-17229310f138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94ecb80f-61bf-47a7-b0e3-583f8dbd1f74",
                  "parent_uuid": "2e3aec31-16a2-4bb0-b758-88138bb1f748",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02607426-37f1-45c5-934d-7ab6f7e294cc",
              "parent_uuid": "102f055c-02b1-4a0f-8265-17229310f138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12aa8154-29fb-466d-a8f6-c00db4eb5dd7",
                  "parent_uuid": "02607426-37f1-45c5-934d-7ab6f7e294cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fef0809a-66d8-4f21-a379-85f47d1303de",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec1485f9-3f84-4df0-807a-6dd8161bd1e6",
              "parent_uuid": "fef0809a-66d8-4f21-a379-85f47d1303de",
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
              "uuid": "b09798cd-8fc1-4dd0-8a28-dac2378c2578",
              "parent_uuid": "fef0809a-66d8-4f21-a379-85f47d1303de",
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
              "uuid": "85dd2a47-36db-4970-926e-56991ba55124",
              "parent_uuid": "fef0809a-66d8-4f21-a379-85f47d1303de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31a98892-f689-4ba7-9775-9ba67e87aaea",
                  "parent_uuid": "85dd2a47-36db-4970-926e-56991ba55124",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51d4fd5c-fbd8-4d34-a48a-6c29ee6006a3",
              "parent_uuid": "fef0809a-66d8-4f21-a379-85f47d1303de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13b7964c-8579-4b74-8b2c-dcf3c655ecca",
                  "parent_uuid": "51d4fd5c-fbd8-4d34-a48a-6c29ee6006a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9367ffe7-01e8-417e-9c9b-712fcf3f24b7",
              "parent_uuid": "fef0809a-66d8-4f21-a379-85f47d1303de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acf1aaba-b190-461f-94d4-63229b4f4093",
                  "parent_uuid": "9367ffe7-01e8-417e-9c9b-712fcf3f24b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f92c8b3-7a05-4287-849d-9ea6563fcda5",
              "parent_uuid": "fef0809a-66d8-4f21-a379-85f47d1303de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc5f0d95-ad88-4b80-87e0-fc1497fefca0",
                  "parent_uuid": "0f92c8b3-7a05-4287-849d-9ea6563fcda5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "49d8646e-8164-403d-bebe-de5e67962f1e",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1f85820-c0d1-459c-8be0-832a34a58e28",
              "parent_uuid": "49d8646e-8164-403d-bebe-de5e67962f1e",
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
              "uuid": "2f079ed5-c081-4080-9d49-8b9f43fc3a4e",
              "parent_uuid": "49d8646e-8164-403d-bebe-de5e67962f1e",
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
              "uuid": "98056dbb-b782-4bce-a941-cee268f97f0d",
              "parent_uuid": "49d8646e-8164-403d-bebe-de5e67962f1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81128896-c5e6-4fc7-8ca4-aabfc29dcab6",
                  "parent_uuid": "98056dbb-b782-4bce-a941-cee268f97f0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f73ee0e1-8a4d-411b-82fc-322922e5b3d8",
              "parent_uuid": "49d8646e-8164-403d-bebe-de5e67962f1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9878e7fb-abea-46f8-9ff1-ce5d3c3299da",
                  "parent_uuid": "f73ee0e1-8a4d-411b-82fc-322922e5b3d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "319d0a70-4d18-456d-9282-3fdb8f1f5cf8",
              "parent_uuid": "49d8646e-8164-403d-bebe-de5e67962f1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4959381-8797-4768-a48d-e1d83baac965",
                  "parent_uuid": "319d0a70-4d18-456d-9282-3fdb8f1f5cf8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d24def44-4148-4b56-9fd8-d55f4cd57294",
              "parent_uuid": "49d8646e-8164-403d-bebe-de5e67962f1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1afb417-4e87-4f3a-a3f9-8d136d6b9ad6",
                  "parent_uuid": "d24def44-4148-4b56-9fd8-d55f4cd57294",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "549a011f-6b78-4963-83bf-1de8c8e4ff2f",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11053212-b77a-41ae-a233-ef6a9d0d6122",
              "parent_uuid": "549a011f-6b78-4963-83bf-1de8c8e4ff2f",
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
              "uuid": "0b8bf720-ff90-4a1f-a83d-a2fedf0c282c",
              "parent_uuid": "549a011f-6b78-4963-83bf-1de8c8e4ff2f",
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
              "uuid": "66fef362-790c-4900-aaa4-3fbe4324d6c7",
              "parent_uuid": "549a011f-6b78-4963-83bf-1de8c8e4ff2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45418fe5-f5f6-4d65-a62f-0b634d36927d",
                  "parent_uuid": "66fef362-790c-4900-aaa4-3fbe4324d6c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c6fece3-ecd0-4f02-9fec-2a5d8b5902d9",
              "parent_uuid": "549a011f-6b78-4963-83bf-1de8c8e4ff2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "707f28ff-18c1-43b9-81b2-cf54efb40457",
                  "parent_uuid": "1c6fece3-ecd0-4f02-9fec-2a5d8b5902d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcdd4579-518d-4945-99c7-ecb7b1da18af",
              "parent_uuid": "549a011f-6b78-4963-83bf-1de8c8e4ff2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d72540d3-27c0-459a-9c82-ab0f82ea3770",
                  "parent_uuid": "fcdd4579-518d-4945-99c7-ecb7b1da18af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c834a5f-61c6-4759-a983-c66ccb82564d",
              "parent_uuid": "549a011f-6b78-4963-83bf-1de8c8e4ff2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92ca2e52-34cb-4769-8bac-c799c84777e3",
                  "parent_uuid": "1c834a5f-61c6-4759-a983-c66ccb82564d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ac69086-0fe7-4be9-9c4b-fc532e7aa43e",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf119951-7048-4aac-bfa9-7cf8ba8683c5",
              "parent_uuid": "4ac69086-0fe7-4be9-9c4b-fc532e7aa43e",
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
          "uuid": "df7d7dbe-2e85-470d-9335-c3832e824d07",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a827ae7-a998-4ba7-b6df-18a5e6fb414f",
              "parent_uuid": "df7d7dbe-2e85-470d-9335-c3832e824d07",
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
          "uuid": "a134d361-765b-4ca3-9e79-faf0ac21ab31",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1882cc4-98ca-49b6-bbef-e98b72d642d0",
              "parent_uuid": "a134d361-765b-4ca3-9e79-faf0ac21ab31",
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
                  "uuid": "7b3226cd-6fce-48b8-8a4d-8b6e644cdac4",
                  "parent_uuid": "e1882cc4-98ca-49b6-bbef-e98b72d642d0",
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
          "uuid": "e0333976-46d4-4637-89a9-0e2d6665e13a",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6a78e58-9991-4dea-9b4c-a9637611db66",
              "parent_uuid": "e0333976-46d4-4637-89a9-0e2d6665e13a",
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
          "uuid": "4a563cec-529f-45c5-9703-df80514e45af",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "383bf88d-ed4e-40ab-999a-8f9ffdbcd867",
              "parent_uuid": "4a563cec-529f-45c5-9703-df80514e45af",
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
          "uuid": "55c80101-f53e-4daf-84b2-7e599200302c",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b48910e2-dcb2-4352-9505-7b52aea904a1",
              "parent_uuid": "55c80101-f53e-4daf-84b2-7e599200302c",
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
              "uuid": "07f40391-7de9-4a59-969a-c486285f237f",
              "parent_uuid": "55c80101-f53e-4daf-84b2-7e599200302c",
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
              "uuid": "a64e41f0-3d5e-47d3-997f-3977af8cc5a5",
              "parent_uuid": "55c80101-f53e-4daf-84b2-7e599200302c",
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
              "uuid": "1facfa9d-9917-4695-8514-3d39afb975d5",
              "parent_uuid": "55c80101-f53e-4daf-84b2-7e599200302c",
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
              "uuid": "9a358c68-f815-492d-b515-b6b15da911ca",
              "parent_uuid": "55c80101-f53e-4daf-84b2-7e599200302c",
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
          "uuid": "4b70ba3c-d444-4468-9e79-3b374d742350",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e53a8ce2-714f-40af-a634-5436f2193a54",
              "parent_uuid": "4b70ba3c-d444-4468-9e79-3b374d742350",
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
              "uuid": "8e493935-a9c6-4b22-b44c-ecdda94bf632",
              "parent_uuid": "4b70ba3c-d444-4468-9e79-3b374d742350",
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
              "uuid": "64415648-c3f6-4852-9402-cba5996f6d8e",
              "parent_uuid": "4b70ba3c-d444-4468-9e79-3b374d742350",
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
              "uuid": "b38e8e8f-013a-4802-81c5-21f8e1d7ece0",
              "parent_uuid": "4b70ba3c-d444-4468-9e79-3b374d742350",
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
              "uuid": "0f76fc45-b12c-4a63-9df2-c1f4b2b25f2f",
              "parent_uuid": "4b70ba3c-d444-4468-9e79-3b374d742350",
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
          "uuid": "b5f32e92-5298-4c56-9070-4749ce15fb2c",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8510e82-3d23-40b4-a3bd-0031b557d0b9",
              "parent_uuid": "b5f32e92-5298-4c56-9070-4749ce15fb2c",
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
              "uuid": "7185f6b6-20b6-4e27-834b-6b115b42ce53",
              "parent_uuid": "b5f32e92-5298-4c56-9070-4749ce15fb2c",
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
              "uuid": "b2f33d15-9d27-4a37-b16f-7f67380edfaf",
              "parent_uuid": "b5f32e92-5298-4c56-9070-4749ce15fb2c",
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
              "uuid": "ce8f2a65-c384-4481-83f7-b009d17b5480",
              "parent_uuid": "b5f32e92-5298-4c56-9070-4749ce15fb2c",
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
              "uuid": "5421c2ed-4c1d-4afa-9012-ee78d323fa88",
              "parent_uuid": "b5f32e92-5298-4c56-9070-4749ce15fb2c",
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
          "uuid": "f5b05564-26eb-499a-97de-6d6a3e4f66da",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2acb6ca3-5b9b-4ab1-8bd6-41183005df5f",
              "parent_uuid": "f5b05564-26eb-499a-97de-6d6a3e4f66da",
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
              "uuid": "6cb4fe2f-9877-44c3-a817-371452694f98",
              "parent_uuid": "f5b05564-26eb-499a-97de-6d6a3e4f66da",
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
              "uuid": "949579c4-0f9e-46cb-8f33-7755146b53b9",
              "parent_uuid": "f5b05564-26eb-499a-97de-6d6a3e4f66da",
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
              "uuid": "079f6ed8-55c0-4a8a-8652-100980bc4039",
              "parent_uuid": "f5b05564-26eb-499a-97de-6d6a3e4f66da",
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
              "uuid": "09319861-2bef-4d11-9659-e3435583eb74",
              "parent_uuid": "f5b05564-26eb-499a-97de-6d6a3e4f66da",
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
          "uuid": "3de65bc7-cbd1-442e-a681-00dcb4244d09",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "080817bb-5249-4639-95c5-b73f8d54a132",
              "parent_uuid": "3de65bc7-cbd1-442e-a681-00dcb4244d09",
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
              "uuid": "d37ae242-d108-4279-a783-55df43266949",
              "parent_uuid": "3de65bc7-cbd1-442e-a681-00dcb4244d09",
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
              "uuid": "9a96ee2c-0ce3-4cd8-941b-85d32de1b22e",
              "parent_uuid": "3de65bc7-cbd1-442e-a681-00dcb4244d09",
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
              "uuid": "894b7c96-5f99-497c-9309-66c89a845f97",
              "parent_uuid": "3de65bc7-cbd1-442e-a681-00dcb4244d09",
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
              "uuid": "d10f6de4-ac2f-4bbc-98e5-c1560121549a",
              "parent_uuid": "3de65bc7-cbd1-442e-a681-00dcb4244d09",
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
          "uuid": "f1230557-c4f6-42e5-85ea-8d9e9ba0de8f",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46525313-f000-4836-9eca-aa52d1d320f3",
              "parent_uuid": "f1230557-c4f6-42e5-85ea-8d9e9ba0de8f",
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
              "uuid": "d0cb7ef1-15a4-4f8b-806c-b57f443e8c3e",
              "parent_uuid": "f1230557-c4f6-42e5-85ea-8d9e9ba0de8f",
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
              "uuid": "08e08df9-1ce8-4669-bf65-767ca9db69cb",
              "parent_uuid": "f1230557-c4f6-42e5-85ea-8d9e9ba0de8f",
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
              "uuid": "9de9f741-55e1-4a81-8f23-91ff8142ae89",
              "parent_uuid": "f1230557-c4f6-42e5-85ea-8d9e9ba0de8f",
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
              "uuid": "535cf572-fed5-44bc-b7cb-a5ee52e6448d",
              "parent_uuid": "f1230557-c4f6-42e5-85ea-8d9e9ba0de8f",
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
          "uuid": "fa961111-3460-4e49-94e3-ef88977bc293",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb1bd585-b0aa-48ef-b6f6-46778eca133e",
              "parent_uuid": "fa961111-3460-4e49-94e3-ef88977bc293",
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
              "uuid": "4217ed3f-a18a-4731-b1df-4a0bfb72229f",
              "parent_uuid": "fa961111-3460-4e49-94e3-ef88977bc293",
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
              "uuid": "951a3149-1342-421f-a9d2-66229cca852c",
              "parent_uuid": "fa961111-3460-4e49-94e3-ef88977bc293",
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
              "uuid": "6028c33b-df23-4667-ae92-65a6aca22bd5",
              "parent_uuid": "fa961111-3460-4e49-94e3-ef88977bc293",
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
              "uuid": "ab08b4a2-11ac-474e-a57e-442c67344f6b",
              "parent_uuid": "fa961111-3460-4e49-94e3-ef88977bc293",
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
          "uuid": "0ad9b4f1-3fd0-43cf-bb7a-e27e00f7866c",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be066bb6-3d1f-4ae1-8ecc-e6309c8ffbe2",
              "parent_uuid": "0ad9b4f1-3fd0-43cf-bb7a-e27e00f7866c",
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
              "uuid": "24f144da-5d4c-453b-a5a8-a61657e4cb36",
              "parent_uuid": "0ad9b4f1-3fd0-43cf-bb7a-e27e00f7866c",
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
              "uuid": "63be7873-764c-4601-89f6-7a02deb84197",
              "parent_uuid": "0ad9b4f1-3fd0-43cf-bb7a-e27e00f7866c",
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
              "uuid": "f623c836-fd21-4602-8792-a462ac91ac54",
              "parent_uuid": "0ad9b4f1-3fd0-43cf-bb7a-e27e00f7866c",
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
              "uuid": "d881bde1-2b2c-444f-8faa-c5a90c2f1384",
              "parent_uuid": "0ad9b4f1-3fd0-43cf-bb7a-e27e00f7866c",
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
          "uuid": "659a07ab-9eeb-4a7d-b615-8528fe3661f5",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9d37d15-3df0-443e-9520-3f164b46338f",
              "parent_uuid": "659a07ab-9eeb-4a7d-b615-8528fe3661f5",
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
              "uuid": "1fab53d4-e685-49c6-921c-2d050a12306b",
              "parent_uuid": "659a07ab-9eeb-4a7d-b615-8528fe3661f5",
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
              "uuid": "b5016c21-6ca6-458f-8f05-97d03ce54d4a",
              "parent_uuid": "659a07ab-9eeb-4a7d-b615-8528fe3661f5",
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
              "uuid": "f4225e05-0518-45d7-bc41-760adb058ace",
              "parent_uuid": "659a07ab-9eeb-4a7d-b615-8528fe3661f5",
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
              "uuid": "5b6145ad-2864-4f6d-a174-fa036e3fa21a",
              "parent_uuid": "659a07ab-9eeb-4a7d-b615-8528fe3661f5",
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
          "uuid": "371b2e7c-6718-40d2-9bb8-90be5abdacba",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e93ef18-700b-4156-baa4-618a49630af3",
              "parent_uuid": "371b2e7c-6718-40d2-9bb8-90be5abdacba",
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
          "uuid": "71b9d73c-b717-415d-b985-913a3b579fe8",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e52e948-7656-4567-ade1-38fc411a9669",
              "parent_uuid": "71b9d73c-b717-415d-b985-913a3b579fe8",
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
          "uuid": "e97ac0f8-421c-4fff-9bbe-20bfb9d290f3",
          "parent_uuid": "7e2e9250-6dc9-4a0f-b338-c03b68d7c22f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aeb473f9-6d62-4fe7-86bd-41a652a15ee6",
              "parent_uuid": "e97ac0f8-421c-4fff-9bbe-20bfb9d290f3",
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
                  "uuid": "0ac73b95-60d7-446e-b0c6-3806a9e2d99c",
                  "parent_uuid": "aeb473f9-6d62-4fe7-86bd-41a652a15ee6",
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

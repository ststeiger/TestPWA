
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
  "uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "073b41d4-9de8-441f-9bbd-fea402e1779c",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "49482421-5062-4869-86fa-b809cb5e7109",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "9033d311-f31e-4e41-a70a-42cd5026d8b6",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "6ed28c76-a746-4236-b364-da141605d542",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "3de99271-2a2c-4087-9ea6-4544289ef233",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "74117fa3-935a-44a6-b4ce-fe9c4d48ee4e",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "c7849d78-893a-4bbe-94f4-b01f18061751",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
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
      "uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
      "parent_uuid": "c00c5faa-96b2-4f95-805b-251642e76a65",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6dbe1493-a150-4007-ab75-e596164e95b6",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "eaf2d2df-b021-4ecb-a5ac-37e0bc7047c6",
              "parent_uuid": "6dbe1493-a150-4007-ab75-e596164e95b6",
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
              "uuid": "5e271ba2-6f43-4762-9b37-64c3ce9789f4",
              "parent_uuid": "6dbe1493-a150-4007-ab75-e596164e95b6",
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
              "uuid": "cc94dd94-9aa4-41b7-b05b-44d87570672c",
              "parent_uuid": "6dbe1493-a150-4007-ab75-e596164e95b6",
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
              "uuid": "3a50b27b-d2fe-4068-8584-3b3019c6c5f0",
              "parent_uuid": "6dbe1493-a150-4007-ab75-e596164e95b6",
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
          "uuid": "0cd1a700-8045-4a93-bc9c-2d767ed1ed2e",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "9ad9d7ae-27c7-4ee4-bbdc-528d91bf43e2",
              "parent_uuid": "0cd1a700-8045-4a93-bc9c-2d767ed1ed2e",
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
              "uuid": "f75821fb-250d-4382-88a7-d04d00c05fea",
              "parent_uuid": "0cd1a700-8045-4a93-bc9c-2d767ed1ed2e",
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
              "uuid": "acc3771b-4b93-482d-9ffb-c4af1a7a9ce9",
              "parent_uuid": "0cd1a700-8045-4a93-bc9c-2d767ed1ed2e",
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
              "uuid": "8179f0bc-6a98-480c-be91-a1f64cfff4d0",
              "parent_uuid": "0cd1a700-8045-4a93-bc9c-2d767ed1ed2e",
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
          "uuid": "79f2d768-b4e9-40f0-b889-62d216d4bd75",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fc28849e-76cd-45a3-8c0c-61948457cd8e",
              "parent_uuid": "79f2d768-b4e9-40f0-b889-62d216d4bd75",
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
              "uuid": "c7b0bf64-c605-44b9-989c-aaedd954a814",
              "parent_uuid": "79f2d768-b4e9-40f0-b889-62d216d4bd75",
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
              "uuid": "e3305d46-17fc-4c14-8310-550bdaf1d36e",
              "parent_uuid": "79f2d768-b4e9-40f0-b889-62d216d4bd75",
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
              "uuid": "fcd0ce95-30b3-4c70-bfd8-0ec8805c130e",
              "parent_uuid": "79f2d768-b4e9-40f0-b889-62d216d4bd75",
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
              "uuid": "a480e22a-9448-41a8-93c0-6a0fae89f7d6",
              "parent_uuid": "79f2d768-b4e9-40f0-b889-62d216d4bd75",
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
              "uuid": "15781839-c0e1-4786-9da9-91674d0f3359",
              "parent_uuid": "79f2d768-b4e9-40f0-b889-62d216d4bd75",
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
          "uuid": "8b812cae-a7d2-4b24-9e88-12b3e16bbdd4",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "005101b4-3ef6-4ec8-bc5a-54ab2ea3ea53",
              "parent_uuid": "8b812cae-a7d2-4b24-9e88-12b3e16bbdd4",
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
          "uuid": "ee18885b-7966-4c03-9451-c31fd8f2dc14",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "261c3261-f943-43f7-b8a3-75783f5a3e25",
              "parent_uuid": "ee18885b-7966-4c03-9451-c31fd8f2dc14",
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
              "uuid": "e3f90c49-d2bf-41d2-b693-0d1f78cc4d47",
              "parent_uuid": "ee18885b-7966-4c03-9451-c31fd8f2dc14",
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
              "uuid": "977fa930-4e5b-41a5-afd3-761250040275",
              "parent_uuid": "ee18885b-7966-4c03-9451-c31fd8f2dc14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d259fe56-13a5-4c13-809d-8bec5ae44adb",
                  "parent_uuid": "977fa930-4e5b-41a5-afd3-761250040275",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1fa384e-4132-42dd-b313-c0105cf5ba6c",
              "parent_uuid": "ee18885b-7966-4c03-9451-c31fd8f2dc14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "517e8db0-b1b5-43b8-8a19-0f00de7923a0",
                  "parent_uuid": "b1fa384e-4132-42dd-b313-c0105cf5ba6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "624085c4-d83d-4dd6-a5a1-a1b130df7044",
              "parent_uuid": "ee18885b-7966-4c03-9451-c31fd8f2dc14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b97b4903-e88a-4fc0-bed8-d76fdedd4e52",
                  "parent_uuid": "624085c4-d83d-4dd6-a5a1-a1b130df7044",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37ca916e-60b6-45d5-8397-942df9c67abd",
              "parent_uuid": "ee18885b-7966-4c03-9451-c31fd8f2dc14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5d7d068f-3983-4a02-828f-2e4536715fd2",
                  "parent_uuid": "37ca916e-60b6-45d5-8397-942df9c67abd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6bcbeb4f-d953-44ae-ab61-3004cb197bee",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0caf374-18c3-463a-a4b2-e72d85d69f74",
              "parent_uuid": "6bcbeb4f-d953-44ae-ab61-3004cb197bee",
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
              "uuid": "7f9a72de-712a-48d5-8646-7948ae2f84b0",
              "parent_uuid": "6bcbeb4f-d953-44ae-ab61-3004cb197bee",
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
              "uuid": "e0e2754e-eb14-4995-ad65-5c7253adf594",
              "parent_uuid": "6bcbeb4f-d953-44ae-ab61-3004cb197bee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bfff2f2b-a606-41ed-a91a-de02692c33c2",
                  "parent_uuid": "e0e2754e-eb14-4995-ad65-5c7253adf594",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0331ece1-d5d5-4148-ab2d-9dcbc7d49578",
              "parent_uuid": "6bcbeb4f-d953-44ae-ab61-3004cb197bee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7fd16d78-d79d-48b0-bac8-a79a1ad6b33d",
                  "parent_uuid": "0331ece1-d5d5-4148-ab2d-9dcbc7d49578",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2a429ce-a75b-4a23-adda-14d854c37f9e",
              "parent_uuid": "6bcbeb4f-d953-44ae-ab61-3004cb197bee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d00fe305-87fe-44c6-b1f1-64be85c7923f",
                  "parent_uuid": "b2a429ce-a75b-4a23-adda-14d854c37f9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7864f71-1490-4c3e-8cc1-c2d50ef81ea5",
              "parent_uuid": "6bcbeb4f-d953-44ae-ab61-3004cb197bee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7c5cd4d7-b316-43b1-be30-44671f1b29e7",
                  "parent_uuid": "c7864f71-1490-4c3e-8cc1-c2d50ef81ea5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f856f7ba-47c4-45fc-a58b-933b775f6252",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ca7a2e3-47af-468e-a824-293ab3325f01",
              "parent_uuid": "f856f7ba-47c4-45fc-a58b-933b775f6252",
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
              "uuid": "16d8872f-95a7-4e70-aa1c-d17a63d92e31",
              "parent_uuid": "f856f7ba-47c4-45fc-a58b-933b775f6252",
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
              "uuid": "771e2fa3-69f0-4c87-a56a-b33bd4be004d",
              "parent_uuid": "f856f7ba-47c4-45fc-a58b-933b775f6252",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "caac7e23-3a86-4e5a-b823-4ac3a683c4d3",
                  "parent_uuid": "771e2fa3-69f0-4c87-a56a-b33bd4be004d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b04db12-c303-4f1c-a800-0adfe25f3afa",
              "parent_uuid": "f856f7ba-47c4-45fc-a58b-933b775f6252",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7952106f-6f82-4032-a2cc-fc81d56f73be",
                  "parent_uuid": "8b04db12-c303-4f1c-a800-0adfe25f3afa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4328443-8764-48a6-b888-7d71bd0f3d16",
              "parent_uuid": "f856f7ba-47c4-45fc-a58b-933b775f6252",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88d05d13-ee51-4a7e-a1d6-03c67ff308ea",
                  "parent_uuid": "d4328443-8764-48a6-b888-7d71bd0f3d16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b83d3061-93e4-4c4c-aac0-8158a22ca05e",
              "parent_uuid": "f856f7ba-47c4-45fc-a58b-933b775f6252",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78e3e60f-db09-4230-a404-5fd750509142",
                  "parent_uuid": "b83d3061-93e4-4c4c-aac0-8158a22ca05e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5facd9ff-77e1-4c08-b01d-5ffa982a31e9",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0322a213-01dd-46db-a043-cfbeb0ff3396",
              "parent_uuid": "5facd9ff-77e1-4c08-b01d-5ffa982a31e9",
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
              "uuid": "fe6da6b0-774a-40d7-853b-7baabf2576f6",
              "parent_uuid": "5facd9ff-77e1-4c08-b01d-5ffa982a31e9",
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
              "uuid": "c191e5aa-d9b2-42d1-814c-c62a62a9418e",
              "parent_uuid": "5facd9ff-77e1-4c08-b01d-5ffa982a31e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee6c720d-3daa-45e0-9a67-c7798e8afc6e",
                  "parent_uuid": "c191e5aa-d9b2-42d1-814c-c62a62a9418e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "087dd6e3-cc80-4eae-9adf-08e14f5cfee6",
              "parent_uuid": "5facd9ff-77e1-4c08-b01d-5ffa982a31e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7013e34b-1482-4d1b-9c36-74d3fd4f0553",
                  "parent_uuid": "087dd6e3-cc80-4eae-9adf-08e14f5cfee6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7dfbc78d-a65e-42c9-8170-040c9c515f54",
              "parent_uuid": "5facd9ff-77e1-4c08-b01d-5ffa982a31e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af0aa6d7-674a-4038-a08d-2a2c44a35a83",
                  "parent_uuid": "7dfbc78d-a65e-42c9-8170-040c9c515f54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e485c4d0-a02b-4144-9383-cc5b48da0a22",
              "parent_uuid": "5facd9ff-77e1-4c08-b01d-5ffa982a31e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64328b26-54e2-4cb4-ac48-373a6cd861fa",
                  "parent_uuid": "e485c4d0-a02b-4144-9383-cc5b48da0a22",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "afd840ec-0c93-481c-b7ad-784e86e1856f",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32f76664-d61a-4312-a647-98dad4d60a04",
              "parent_uuid": "afd840ec-0c93-481c-b7ad-784e86e1856f",
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
              "uuid": "bf9919ba-a9f9-42d7-be49-257bdc9d5cb3",
              "parent_uuid": "afd840ec-0c93-481c-b7ad-784e86e1856f",
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
              "uuid": "70e8d4cd-1a7e-4015-b4cf-756946daf795",
              "parent_uuid": "afd840ec-0c93-481c-b7ad-784e86e1856f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c0d728d-102e-4003-8605-18fe050fd2c1",
                  "parent_uuid": "70e8d4cd-1a7e-4015-b4cf-756946daf795",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d455fe2b-05be-493c-87c1-6546403f5826",
              "parent_uuid": "afd840ec-0c93-481c-b7ad-784e86e1856f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa6ba324-5666-4f35-8a0b-adf7fac59ad2",
                  "parent_uuid": "d455fe2b-05be-493c-87c1-6546403f5826",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4439bb32-3c7c-4ae8-ae0a-7ee4c0e5f18e",
              "parent_uuid": "afd840ec-0c93-481c-b7ad-784e86e1856f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab4e19f9-51f0-4722-a656-6fcf0ec91cff",
                  "parent_uuid": "4439bb32-3c7c-4ae8-ae0a-7ee4c0e5f18e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0292b782-2ffe-4edb-b457-fcbca79c2479",
              "parent_uuid": "afd840ec-0c93-481c-b7ad-784e86e1856f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcce84f0-ba5f-4702-8c94-53d1781001b8",
                  "parent_uuid": "0292b782-2ffe-4edb-b457-fcbca79c2479",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8c8a725c-3c03-44e2-be63-cb97bbff6d1a",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9e04f88-76d6-40a7-900b-f63b13d893e8",
              "parent_uuid": "8c8a725c-3c03-44e2-be63-cb97bbff6d1a",
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
              "uuid": "e3a9046d-3d96-4a97-92c5-b2f5bb717f08",
              "parent_uuid": "8c8a725c-3c03-44e2-be63-cb97bbff6d1a",
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
              "uuid": "685b8047-21a9-44fc-bfee-ba826dd34d47",
              "parent_uuid": "8c8a725c-3c03-44e2-be63-cb97bbff6d1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edf36ba5-d9e4-42aa-9b15-c2a1c82ccb90",
                  "parent_uuid": "685b8047-21a9-44fc-bfee-ba826dd34d47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72357249-703a-4a09-bd49-b2aa6448c80f",
              "parent_uuid": "8c8a725c-3c03-44e2-be63-cb97bbff6d1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e53717b-b4ed-4fc0-a67b-f7eaf247e0e0",
                  "parent_uuid": "72357249-703a-4a09-bd49-b2aa6448c80f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7335b9ed-5391-4a59-a1a5-6e59ecb1eef4",
              "parent_uuid": "8c8a725c-3c03-44e2-be63-cb97bbff6d1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fdeeed2-6f09-4e9d-84a9-01b91b66f56d",
                  "parent_uuid": "7335b9ed-5391-4a59-a1a5-6e59ecb1eef4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39dac005-b513-4713-89db-86857127f088",
              "parent_uuid": "8c8a725c-3c03-44e2-be63-cb97bbff6d1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10e80dd8-1a90-4698-ba3e-0b1cc83cb1f8",
                  "parent_uuid": "39dac005-b513-4713-89db-86857127f088",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "81091d2b-dc2c-4948-9954-5d9b8c336aea",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7c10e3d-e131-498b-8949-0eb550bd3c09",
              "parent_uuid": "81091d2b-dc2c-4948-9954-5d9b8c336aea",
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
              "uuid": "4935410c-8fe0-4714-a889-1c2b6548e683",
              "parent_uuid": "81091d2b-dc2c-4948-9954-5d9b8c336aea",
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
              "uuid": "1f849af2-3b92-4ccb-9ddf-6b694efc61bf",
              "parent_uuid": "81091d2b-dc2c-4948-9954-5d9b8c336aea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37497b88-3d02-4869-b95d-458e6217fbbd",
                  "parent_uuid": "1f849af2-3b92-4ccb-9ddf-6b694efc61bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a11efe8-02b8-4ab6-868e-e6ea4b953d9d",
              "parent_uuid": "81091d2b-dc2c-4948-9954-5d9b8c336aea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba3ba067-fa0d-4293-b7e6-f7fa3e51de8d",
                  "parent_uuid": "5a11efe8-02b8-4ab6-868e-e6ea4b953d9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57eeded9-df39-4c8c-9496-26c2b11e4f3e",
              "parent_uuid": "81091d2b-dc2c-4948-9954-5d9b8c336aea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69b0d24c-5fd9-4051-a821-a2f7e1d45a1c",
                  "parent_uuid": "57eeded9-df39-4c8c-9496-26c2b11e4f3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "957e7296-30f5-47ad-8ea6-ce7b31c93828",
              "parent_uuid": "81091d2b-dc2c-4948-9954-5d9b8c336aea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1bf071a-d6d5-4eb3-84cb-e04b1f1d0670",
                  "parent_uuid": "957e7296-30f5-47ad-8ea6-ce7b31c93828",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9dcbe9dd-a931-423a-a35d-33dc97b1218b",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06cc3e54-2dd6-4516-8a6f-83b58cec7176",
              "parent_uuid": "9dcbe9dd-a931-423a-a35d-33dc97b1218b",
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
              "uuid": "0331ba95-4348-47d4-8c8c-5110f22a9c50",
              "parent_uuid": "9dcbe9dd-a931-423a-a35d-33dc97b1218b",
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
              "uuid": "20d7abc1-2865-4998-be08-25682ce4dcb8",
              "parent_uuid": "9dcbe9dd-a931-423a-a35d-33dc97b1218b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fda6c574-e99d-4d23-a0f7-d6632981229f",
                  "parent_uuid": "20d7abc1-2865-4998-be08-25682ce4dcb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4796cce8-4407-4dbb-92d2-27429fbc9664",
              "parent_uuid": "9dcbe9dd-a931-423a-a35d-33dc97b1218b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "539c9a05-85da-460a-93d6-b77b4e3dbbed",
                  "parent_uuid": "4796cce8-4407-4dbb-92d2-27429fbc9664",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee48c934-1b72-44c4-bfd8-a35f3cff53cc",
              "parent_uuid": "9dcbe9dd-a931-423a-a35d-33dc97b1218b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0ece63d-7415-4b70-aa9b-a7db59f6a940",
                  "parent_uuid": "ee48c934-1b72-44c4-bfd8-a35f3cff53cc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d55b5727-8d15-4082-b469-3f806dc3eced",
              "parent_uuid": "9dcbe9dd-a931-423a-a35d-33dc97b1218b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99372d4b-107d-4fda-a905-bc3bd1e5ad06",
                  "parent_uuid": "d55b5727-8d15-4082-b469-3f806dc3eced",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2cf3c585-5887-46c1-9618-b825dc242735",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "93159382-9bba-432a-b1ad-c19d45bb4515",
              "parent_uuid": "2cf3c585-5887-46c1-9618-b825dc242735",
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
              "uuid": "246a2eaa-0e37-4a49-a4be-154cf2274ed4",
              "parent_uuid": "2cf3c585-5887-46c1-9618-b825dc242735",
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
              "uuid": "91b49679-d980-42b7-bfd9-205d4b9115d5",
              "parent_uuid": "2cf3c585-5887-46c1-9618-b825dc242735",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04975e16-2df6-4525-b71b-d7c850d08d27",
                  "parent_uuid": "91b49679-d980-42b7-bfd9-205d4b9115d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "010257d2-06e9-409d-890f-6273a0f09dc3",
              "parent_uuid": "2cf3c585-5887-46c1-9618-b825dc242735",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b40feebb-4ae8-44af-9604-ad0e5e6f0629",
                  "parent_uuid": "010257d2-06e9-409d-890f-6273a0f09dc3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f96a044-e78b-4192-85ba-4f71f1dc7742",
              "parent_uuid": "2cf3c585-5887-46c1-9618-b825dc242735",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed0d0f3b-1e65-48e8-883e-c8e45477a65b",
                  "parent_uuid": "5f96a044-e78b-4192-85ba-4f71f1dc7742",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5420b6e-2f3a-408e-8ae1-61bc1f2a24b5",
              "parent_uuid": "2cf3c585-5887-46c1-9618-b825dc242735",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "870a4f79-43ad-45ec-8b9e-cecd787cc845",
                  "parent_uuid": "f5420b6e-2f3a-408e-8ae1-61bc1f2a24b5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d058a82e-4202-49ed-853b-017642a1bae2",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8bb67137-8fbe-4683-8ed8-b2f605322bde",
              "parent_uuid": "d058a82e-4202-49ed-853b-017642a1bae2",
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
              "uuid": "c1b4ad78-1013-4be4-b102-76a5d51d4ba4",
              "parent_uuid": "d058a82e-4202-49ed-853b-017642a1bae2",
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
              "uuid": "8a0b0fc7-804b-4c81-891a-4bf0cfc3f3e9",
              "parent_uuid": "d058a82e-4202-49ed-853b-017642a1bae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b8560f8-0980-4777-a020-f9a10bb9f500",
                  "parent_uuid": "8a0b0fc7-804b-4c81-891a-4bf0cfc3f3e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15112391-6a4a-411f-a95a-46ca701a2473",
              "parent_uuid": "d058a82e-4202-49ed-853b-017642a1bae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a128d91c-9e48-47a2-b0d7-f68daa2464b7",
                  "parent_uuid": "15112391-6a4a-411f-a95a-46ca701a2473",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8288709e-d25d-4949-9376-8f45f4f58768",
              "parent_uuid": "d058a82e-4202-49ed-853b-017642a1bae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c01f1ecd-024c-49a9-8d0c-0446e7ef17c2",
                  "parent_uuid": "8288709e-d25d-4949-9376-8f45f4f58768",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a95eaea-0d07-4cd5-b1a7-a58df9134855",
              "parent_uuid": "d058a82e-4202-49ed-853b-017642a1bae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e86e7b0-e2db-41f0-8369-045aac3a711b",
                  "parent_uuid": "1a95eaea-0d07-4cd5-b1a7-a58df9134855",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9eba78a7-8ce6-49ee-90c4-0d6de98aa2b5",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "520306b2-0485-4198-89e0-e13d326ddf24",
              "parent_uuid": "9eba78a7-8ce6-49ee-90c4-0d6de98aa2b5",
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
              "uuid": "64873082-b8c5-4f3a-89bf-4216e87bdbeb",
              "parent_uuid": "9eba78a7-8ce6-49ee-90c4-0d6de98aa2b5",
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
              "uuid": "c69439e4-66ac-4ac8-a0fe-56e74c28ef97",
              "parent_uuid": "9eba78a7-8ce6-49ee-90c4-0d6de98aa2b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf97d2eb-a053-4607-a099-3e9c828a9681",
                  "parent_uuid": "c69439e4-66ac-4ac8-a0fe-56e74c28ef97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d055f9b-a447-4726-974f-adb10263dd04",
              "parent_uuid": "9eba78a7-8ce6-49ee-90c4-0d6de98aa2b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ffa00b4-2ec0-4422-870f-ce5b3e070c39",
                  "parent_uuid": "3d055f9b-a447-4726-974f-adb10263dd04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0334ced-c5f6-437e-92c3-391242a419d9",
              "parent_uuid": "9eba78a7-8ce6-49ee-90c4-0d6de98aa2b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfe5795d-a245-4aa5-8a8b-cf2beea6cb58",
                  "parent_uuid": "c0334ced-c5f6-437e-92c3-391242a419d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ed07a41-bd41-4ce1-afa2-a988fcea6798",
              "parent_uuid": "9eba78a7-8ce6-49ee-90c4-0d6de98aa2b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b50496ce-84c8-4d42-93c1-c1e5d132f001",
                  "parent_uuid": "8ed07a41-bd41-4ce1-afa2-a988fcea6798",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3930a7c9-c345-4bd5-96b1-9df535afc855",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98459b15-1620-45a0-9ca5-bb85a66eb2ee",
              "parent_uuid": "3930a7c9-c345-4bd5-96b1-9df535afc855",
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
              "uuid": "647edc86-9a54-46ec-b23d-3c7971f93a03",
              "parent_uuid": "3930a7c9-c345-4bd5-96b1-9df535afc855",
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
              "uuid": "e70d95f3-1fa4-4259-a281-e7e0c4cb500d",
              "parent_uuid": "3930a7c9-c345-4bd5-96b1-9df535afc855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "140b37db-1a53-4351-9686-8aaf6e27e1d3",
                  "parent_uuid": "e70d95f3-1fa4-4259-a281-e7e0c4cb500d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2177f3e6-dbc0-4c70-9a1c-c34e05431c23",
              "parent_uuid": "3930a7c9-c345-4bd5-96b1-9df535afc855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad7f60f2-5dbd-4a8f-afdb-1830bc5c13f9",
                  "parent_uuid": "2177f3e6-dbc0-4c70-9a1c-c34e05431c23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a9f4f93-5f92-40b2-8a6a-a98aba6daefc",
              "parent_uuid": "3930a7c9-c345-4bd5-96b1-9df535afc855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e21d980-059a-48ee-8918-db04768839e9",
                  "parent_uuid": "8a9f4f93-5f92-40b2-8a6a-a98aba6daefc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a377180-f296-4818-8c19-ce94358d9023",
              "parent_uuid": "3930a7c9-c345-4bd5-96b1-9df535afc855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19562063-4b11-4b69-8394-f3fd4a9c8d70",
                  "parent_uuid": "0a377180-f296-4818-8c19-ce94358d9023",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d7c2994-ccc6-43e8-a519-2133a6335d56",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30b9bdb1-0f98-437c-9e00-cc7a24d78791",
              "parent_uuid": "2d7c2994-ccc6-43e8-a519-2133a6335d56",
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
              "uuid": "45b18c1a-1bc0-4d67-b696-3e77eec33228",
              "parent_uuid": "2d7c2994-ccc6-43e8-a519-2133a6335d56",
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
              "uuid": "fe04f409-be8f-470d-b91b-ad254b278868",
              "parent_uuid": "2d7c2994-ccc6-43e8-a519-2133a6335d56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d76ced4e-afb9-4380-a402-d909101fc8ed",
                  "parent_uuid": "fe04f409-be8f-470d-b91b-ad254b278868",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb3d2e06-4788-4aed-aad3-fb6a15ad708d",
              "parent_uuid": "2d7c2994-ccc6-43e8-a519-2133a6335d56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aeba6a2f-81da-43e2-9c85-81715b854e32",
                  "parent_uuid": "bb3d2e06-4788-4aed-aad3-fb6a15ad708d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9037e31c-f843-4cfe-856f-3eff3d13da7a",
              "parent_uuid": "2d7c2994-ccc6-43e8-a519-2133a6335d56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82d9379b-8dd1-4a05-9cfc-50c2ffac5ba5",
                  "parent_uuid": "9037e31c-f843-4cfe-856f-3eff3d13da7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2996f9b-86dd-45e6-8378-ed31800afff7",
              "parent_uuid": "2d7c2994-ccc6-43e8-a519-2133a6335d56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5465c4d4-821e-4a32-9fbf-018bf08ac062",
                  "parent_uuid": "d2996f9b-86dd-45e6-8378-ed31800afff7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a97ac4b-98db-4c2f-9823-f68900d5ef32",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f685747-9675-4a6c-8805-47ea4c964dc7",
              "parent_uuid": "9a97ac4b-98db-4c2f-9823-f68900d5ef32",
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
              "uuid": "4d9db7e3-8a72-4121-bbb1-51ccbaac50c5",
              "parent_uuid": "9a97ac4b-98db-4c2f-9823-f68900d5ef32",
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
              "uuid": "e8e5f258-31c9-4f70-a024-26456e937e4f",
              "parent_uuid": "9a97ac4b-98db-4c2f-9823-f68900d5ef32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4edf13ef-beee-4da9-9398-89bdaefcb502",
                  "parent_uuid": "e8e5f258-31c9-4f70-a024-26456e937e4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c462d345-a0fe-4193-8e6a-99828cae5aa9",
              "parent_uuid": "9a97ac4b-98db-4c2f-9823-f68900d5ef32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d390a69d-a6f9-4ecf-aee5-c4a876341eb1",
                  "parent_uuid": "c462d345-a0fe-4193-8e6a-99828cae5aa9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dbfb91b-78ec-4dae-a6f0-d15cf18b14c8",
              "parent_uuid": "9a97ac4b-98db-4c2f-9823-f68900d5ef32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a479c88d-1dd4-4a1c-b28d-1611d881860b",
                  "parent_uuid": "6dbfb91b-78ec-4dae-a6f0-d15cf18b14c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa07addf-0a99-4cbb-97e2-ef1e4c500831",
              "parent_uuid": "9a97ac4b-98db-4c2f-9823-f68900d5ef32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e7e856f-9709-4c0f-afdc-68e2b79565b1",
                  "parent_uuid": "fa07addf-0a99-4cbb-97e2-ef1e4c500831",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "347a2900-009b-4d92-a756-f0c5a87d7ad5",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ceefbdb5-b52c-4afa-bb91-56d98ffacc92",
              "parent_uuid": "347a2900-009b-4d92-a756-f0c5a87d7ad5",
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
              "uuid": "a1adff1f-a4c1-4a74-835a-2b34552c6f9a",
              "parent_uuid": "347a2900-009b-4d92-a756-f0c5a87d7ad5",
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
              "uuid": "448da9e4-d53f-491a-9a7b-7b68333e87d2",
              "parent_uuid": "347a2900-009b-4d92-a756-f0c5a87d7ad5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40d84c86-9d86-4708-982c-4a3d899e3dbf",
                  "parent_uuid": "448da9e4-d53f-491a-9a7b-7b68333e87d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d9945b6-328e-4a9f-9a89-e3206b5494b2",
              "parent_uuid": "347a2900-009b-4d92-a756-f0c5a87d7ad5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c797854-07b7-4d66-a296-ef97731a6fea",
                  "parent_uuid": "9d9945b6-328e-4a9f-9a89-e3206b5494b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "110e95d6-3463-464f-b754-96700c1f652e",
              "parent_uuid": "347a2900-009b-4d92-a756-f0c5a87d7ad5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e14e9afc-6f76-4957-944c-c0be345b55f9",
                  "parent_uuid": "110e95d6-3463-464f-b754-96700c1f652e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08f89430-a05f-48a0-a466-86ad4ab1a03f",
              "parent_uuid": "347a2900-009b-4d92-a756-f0c5a87d7ad5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b3546ab-4b94-4bad-9f99-45f8114d3bd8",
                  "parent_uuid": "08f89430-a05f-48a0-a466-86ad4ab1a03f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "476312c3-0caa-4898-9ba2-5232001692ca",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d97ad15-f748-4aef-b891-88cd46b61671",
              "parent_uuid": "476312c3-0caa-4898-9ba2-5232001692ca",
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
              "uuid": "7ac87172-06ab-4bb0-a290-f0ee41a8c773",
              "parent_uuid": "476312c3-0caa-4898-9ba2-5232001692ca",
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
              "uuid": "f01f4e1f-2863-441d-836f-67f685d9b15e",
              "parent_uuid": "476312c3-0caa-4898-9ba2-5232001692ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80400f66-8bcd-488f-acc8-4aa4f1185fc5",
                  "parent_uuid": "f01f4e1f-2863-441d-836f-67f685d9b15e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47f7afc6-5f40-49c2-9015-79c4a429bd7d",
              "parent_uuid": "476312c3-0caa-4898-9ba2-5232001692ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "915c8e20-49a9-4110-a069-cb1c8133dae7",
                  "parent_uuid": "47f7afc6-5f40-49c2-9015-79c4a429bd7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fd72c08-b5ce-431e-8691-7681f66f70ad",
              "parent_uuid": "476312c3-0caa-4898-9ba2-5232001692ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cf6d6c0-55b8-4b3d-9d13-4d497b08579a",
                  "parent_uuid": "0fd72c08-b5ce-431e-8691-7681f66f70ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76148024-7888-4f0f-b485-28bc074773f4",
              "parent_uuid": "476312c3-0caa-4898-9ba2-5232001692ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08d3260a-70db-469d-ac55-5e1a02a356f2",
                  "parent_uuid": "76148024-7888-4f0f-b485-28bc074773f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5610342a-7d77-4bdd-b35e-c33c56205f7a",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c00ba85-3043-41c6-9dc4-286f7e10e03f",
              "parent_uuid": "5610342a-7d77-4bdd-b35e-c33c56205f7a",
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
          "uuid": "69d7ad41-96d7-4404-b2e7-25f390daac47",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "482dba19-7136-40d5-b3a8-48eba51225e8",
              "parent_uuid": "69d7ad41-96d7-4404-b2e7-25f390daac47",
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
          "uuid": "23130106-a6a7-450e-bee8-cb7d31dc232f",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40ed2f70-7e8a-48cc-83e6-d4c537f9ea5d",
              "parent_uuid": "23130106-a6a7-450e-bee8-cb7d31dc232f",
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
                  "uuid": "5b6e758a-88c2-4b62-9be0-5a2c745fe6d6",
                  "parent_uuid": "40ed2f70-7e8a-48cc-83e6-d4c537f9ea5d",
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
          "uuid": "fae5306b-b206-47e5-bcb9-a3d3e9cafee0",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "68d4d4bc-8c74-4801-a6b1-f572a2afd7db",
              "parent_uuid": "fae5306b-b206-47e5-bcb9-a3d3e9cafee0",
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
          "uuid": "6d0387f4-036e-472e-a59b-bc57e77cdfb8",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b79d5f07-4007-47d0-8d0d-5a6841b633d9",
              "parent_uuid": "6d0387f4-036e-472e-a59b-bc57e77cdfb8",
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
          "uuid": "0096c844-bdc7-4984-b66a-3d726f1c419a",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "edbe794f-0740-498f-80ae-772550aece60",
              "parent_uuid": "0096c844-bdc7-4984-b66a-3d726f1c419a",
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
              "uuid": "9870daef-0fda-46df-80f5-4d958e544135",
              "parent_uuid": "0096c844-bdc7-4984-b66a-3d726f1c419a",
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
              "uuid": "2bddb219-0aba-43b4-b5eb-44eb364d94f1",
              "parent_uuid": "0096c844-bdc7-4984-b66a-3d726f1c419a",
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
              "uuid": "47e91a3f-6d93-4e33-bf3c-550b8ce8afca",
              "parent_uuid": "0096c844-bdc7-4984-b66a-3d726f1c419a",
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
              "uuid": "4f3be3b3-5cc2-4b88-8d09-3ac868e3cf3b",
              "parent_uuid": "0096c844-bdc7-4984-b66a-3d726f1c419a",
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
              "uuid": "1edbdebc-04d3-4966-96a0-69d121ef56d4",
              "parent_uuid": "0096c844-bdc7-4984-b66a-3d726f1c419a",
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
          "uuid": "0bbe2b3d-9b28-4fc6-9931-4138033cf264",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "ae9b1d22-5e70-4179-8983-f2ca20841ee3",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8157bf14-86ef-4d3b-b77d-f5865e71fc03",
              "parent_uuid": "ae9b1d22-5e70-4179-8983-f2ca20841ee3",
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
              "uuid": "0759221f-3e6d-4aa7-8d11-143c4a531d54",
              "parent_uuid": "ae9b1d22-5e70-4179-8983-f2ca20841ee3",
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
              "uuid": "b831f79a-a55d-4d3e-a26b-540ca4d1bc9b",
              "parent_uuid": "ae9b1d22-5e70-4179-8983-f2ca20841ee3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ee98449-a834-43f0-ad35-e4c233885fcc",
                  "parent_uuid": "b831f79a-a55d-4d3e-a26b-540ca4d1bc9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1137d295-44da-4644-8c79-95dbb021b8a0",
              "parent_uuid": "ae9b1d22-5e70-4179-8983-f2ca20841ee3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fb4bc99-a026-4814-b598-ba4a762d8fa6",
                  "parent_uuid": "1137d295-44da-4644-8c79-95dbb021b8a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40c0cf27-c895-459a-a9d1-92e9d88727fd",
              "parent_uuid": "ae9b1d22-5e70-4179-8983-f2ca20841ee3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd782b0f-e72e-4b3d-bf6c-562146a17a00",
                  "parent_uuid": "40c0cf27-c895-459a-a9d1-92e9d88727fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "429053e2-caad-4d48-a38a-b318968d84d8",
              "parent_uuid": "ae9b1d22-5e70-4179-8983-f2ca20841ee3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2669d58f-48fa-4810-a5cb-c0b93e899c8e",
                  "parent_uuid": "429053e2-caad-4d48-a38a-b318968d84d8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7fc67361-870c-4a65-a910-f0e5c44e1e49",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b49c362-c615-443e-999c-d4f2b5409e1f",
              "parent_uuid": "7fc67361-870c-4a65-a910-f0e5c44e1e49",
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
              "uuid": "fc149093-00c8-4840-b1c7-c01399234a6f",
              "parent_uuid": "7fc67361-870c-4a65-a910-f0e5c44e1e49",
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
              "uuid": "f073898c-4663-46e3-9398-b0ec01a41af6",
              "parent_uuid": "7fc67361-870c-4a65-a910-f0e5c44e1e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c780e28e-0cdb-4016-a7b7-659afe939959",
                  "parent_uuid": "f073898c-4663-46e3-9398-b0ec01a41af6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "028bdde4-313b-4584-93a2-7866eda0eeb7",
              "parent_uuid": "7fc67361-870c-4a65-a910-f0e5c44e1e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ca46218-f372-4aca-b2da-64682e732bd3",
                  "parent_uuid": "028bdde4-313b-4584-93a2-7866eda0eeb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4fda2ac6-44da-4d60-983e-1fda54d31f0e",
              "parent_uuid": "7fc67361-870c-4a65-a910-f0e5c44e1e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b4d286a-1bac-4924-9515-2336a60edba6",
                  "parent_uuid": "4fda2ac6-44da-4d60-983e-1fda54d31f0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "492ac1ff-5752-46ef-a779-f974f9daf6a6",
              "parent_uuid": "7fc67361-870c-4a65-a910-f0e5c44e1e49",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c9733f8-9ea3-4ffd-ae55-ee81d0e4e063",
                  "parent_uuid": "492ac1ff-5752-46ef-a779-f974f9daf6a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f8d782b3-a9ab-4572-b986-46a0a435df17",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0916fcbe-3ed2-40f9-a5da-2e2a19a4c7dd",
              "parent_uuid": "f8d782b3-a9ab-4572-b986-46a0a435df17",
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
              "uuid": "257ef1d2-718e-4774-bf11-91036eff8fd5",
              "parent_uuid": "f8d782b3-a9ab-4572-b986-46a0a435df17",
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
              "uuid": "103cb69b-9957-4dc6-b6d8-35740e617729",
              "parent_uuid": "f8d782b3-a9ab-4572-b986-46a0a435df17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c26b6fd8-3918-4f45-bb40-c63d5c0e7aa3",
                  "parent_uuid": "103cb69b-9957-4dc6-b6d8-35740e617729",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50981a61-bde2-4505-928f-3add6e114099",
              "parent_uuid": "f8d782b3-a9ab-4572-b986-46a0a435df17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42aa15e0-ebdf-4875-80ee-b10ad262d1b7",
                  "parent_uuid": "50981a61-bde2-4505-928f-3add6e114099",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a4aeabd-eeb0-4df5-affb-395e91d34576",
              "parent_uuid": "f8d782b3-a9ab-4572-b986-46a0a435df17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c85c1738-3125-4e6a-a20e-c6c21ceae922",
                  "parent_uuid": "5a4aeabd-eeb0-4df5-affb-395e91d34576",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c592a74-55f9-4a1d-8b82-ea00947dea0e",
              "parent_uuid": "f8d782b3-a9ab-4572-b986-46a0a435df17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67c9c980-cd52-429e-8c74-727d53c1e05f",
                  "parent_uuid": "9c592a74-55f9-4a1d-8b82-ea00947dea0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9dd2817a-e505-4928-a1b8-74695aea18ca",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dab90d90-c909-436e-b217-ed63877c66e5",
              "parent_uuid": "9dd2817a-e505-4928-a1b8-74695aea18ca",
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
              "uuid": "d339b2f0-0925-4e5c-bc72-7a02a004a2df",
              "parent_uuid": "9dd2817a-e505-4928-a1b8-74695aea18ca",
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
              "uuid": "1ce456be-a9aa-4618-ae5e-d271884800e6",
              "parent_uuid": "9dd2817a-e505-4928-a1b8-74695aea18ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "715e82e6-afc0-49b5-bfb2-98c92870fd62",
                  "parent_uuid": "1ce456be-a9aa-4618-ae5e-d271884800e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b470c2e3-daf4-43b2-9e33-869856e12737",
              "parent_uuid": "9dd2817a-e505-4928-a1b8-74695aea18ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "122db936-6d40-4d93-b9c6-cb64911b5289",
                  "parent_uuid": "b470c2e3-daf4-43b2-9e33-869856e12737",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff034f50-5420-4015-9ab6-c192965b25ca",
              "parent_uuid": "9dd2817a-e505-4928-a1b8-74695aea18ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcfe1699-a9e1-447a-bce0-58a5fe0d2758",
                  "parent_uuid": "ff034f50-5420-4015-9ab6-c192965b25ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8745ab9-e6b9-4994-959a-9df4fba1d833",
              "parent_uuid": "9dd2817a-e505-4928-a1b8-74695aea18ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e19b719-784d-4a68-a1de-3b812e011d21",
                  "parent_uuid": "c8745ab9-e6b9-4994-959a-9df4fba1d833",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cba5d444-1881-47d3-8908-ee426a9011fb",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c31a97c4-1b1e-4be3-a645-4e8e5324709b",
              "parent_uuid": "cba5d444-1881-47d3-8908-ee426a9011fb",
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
          "uuid": "67e67d7e-16c6-4472-a248-653bb9c9186c",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b83eb172-e23e-4ef4-935e-b967976a482b",
              "parent_uuid": "67e67d7e-16c6-4472-a248-653bb9c9186c",
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
          "uuid": "46833e9c-3e69-416e-a721-8d2f95735c62",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c60ca39-e197-418d-9d58-d08d8f80779e",
              "parent_uuid": "46833e9c-3e69-416e-a721-8d2f95735c62",
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
                  "uuid": "faa3f4b9-b99e-4a12-8bc5-e6a9e34ec479",
                  "parent_uuid": "8c60ca39-e197-418d-9d58-d08d8f80779e",
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
          "uuid": "c7b56a37-feb7-4a84-a4e4-cb42550ac457",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "55e14013-4ab8-4039-a86f-ed7b42bf9c9a",
              "parent_uuid": "c7b56a37-feb7-4a84-a4e4-cb42550ac457",
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
          "uuid": "e8eef50b-bb81-4663-95cb-a685a5c2cab1",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6323651c-1d12-4226-9006-1fddf63c47bb",
              "parent_uuid": "e8eef50b-bb81-4663-95cb-a685a5c2cab1",
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
          "uuid": "ac35839d-4a18-4d75-b6fe-bcc1940c83ee",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c00def10-1cce-4add-a452-f36f4c470168",
              "parent_uuid": "ac35839d-4a18-4d75-b6fe-bcc1940c83ee",
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
              "uuid": "0017f710-570f-443c-b3ed-48543fddb423",
              "parent_uuid": "ac35839d-4a18-4d75-b6fe-bcc1940c83ee",
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
              "uuid": "61872f22-f263-4ace-997f-01894b271cd1",
              "parent_uuid": "ac35839d-4a18-4d75-b6fe-bcc1940c83ee",
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
              "uuid": "8af7ac5b-9349-444e-8713-c6e070946650",
              "parent_uuid": "ac35839d-4a18-4d75-b6fe-bcc1940c83ee",
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
              "uuid": "4c1dc9b2-73e1-4400-93fb-c1fa3eba26cd",
              "parent_uuid": "ac35839d-4a18-4d75-b6fe-bcc1940c83ee",
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
              "uuid": "5eb09a64-f567-4d69-a337-ac4803577e03",
              "parent_uuid": "ac35839d-4a18-4d75-b6fe-bcc1940c83ee",
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
          "uuid": "bff0bab8-3d73-4c2a-b0be-9d407ce5ac34",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fed7007e-6a08-4cd5-af45-0014465b1194",
              "parent_uuid": "bff0bab8-3d73-4c2a-b0be-9d407ce5ac34",
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
              "uuid": "a8801863-1d90-4033-8c16-cc5eb6947b07",
              "parent_uuid": "bff0bab8-3d73-4c2a-b0be-9d407ce5ac34",
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
              "uuid": "9501689c-882a-4092-8870-4c05582f5af1",
              "parent_uuid": "bff0bab8-3d73-4c2a-b0be-9d407ce5ac34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "946804bf-d91a-4412-bc3a-624b38d678d1",
                  "parent_uuid": "9501689c-882a-4092-8870-4c05582f5af1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47bccd6c-d20e-44fe-9e62-26ea282507c5",
              "parent_uuid": "bff0bab8-3d73-4c2a-b0be-9d407ce5ac34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "960b10c6-6fc8-4620-8ff7-2e20864ff264",
                  "parent_uuid": "47bccd6c-d20e-44fe-9e62-26ea282507c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0436c269-71a9-4dcc-b7bd-a659fc1e8bf9",
              "parent_uuid": "bff0bab8-3d73-4c2a-b0be-9d407ce5ac34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16fb730e-16fa-4d2e-b6c5-a557e1d026c3",
                  "parent_uuid": "0436c269-71a9-4dcc-b7bd-a659fc1e8bf9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ed0cad7-7ed4-4504-a8df-e647c5b1dfd6",
              "parent_uuid": "bff0bab8-3d73-4c2a-b0be-9d407ce5ac34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7e9e18f-b55c-4f14-b0c9-f328892a3b97",
                  "parent_uuid": "8ed0cad7-7ed4-4504-a8df-e647c5b1dfd6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ba8b309-dbd0-4cff-88f0-67984ad54ef6",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ac1b2f3-511e-4903-b84d-8c338e41903e",
              "parent_uuid": "4ba8b309-dbd0-4cff-88f0-67984ad54ef6",
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
              "uuid": "458ec1c3-e7a6-4a67-95b6-3b1f6a06d29f",
              "parent_uuid": "4ba8b309-dbd0-4cff-88f0-67984ad54ef6",
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
              "uuid": "cfd41ea9-ce93-4177-baf2-82fdbaa1930e",
              "parent_uuid": "4ba8b309-dbd0-4cff-88f0-67984ad54ef6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4a0bb49-60ef-41ea-a30d-c2042245edaf",
                  "parent_uuid": "cfd41ea9-ce93-4177-baf2-82fdbaa1930e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90952dbb-6adc-46c1-b27c-9121202b349e",
              "parent_uuid": "4ba8b309-dbd0-4cff-88f0-67984ad54ef6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "937b76f7-1072-4454-8df4-ff7001ce9ef6",
                  "parent_uuid": "90952dbb-6adc-46c1-b27c-9121202b349e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "501695d4-ad8b-479a-935d-597a3af44466",
              "parent_uuid": "4ba8b309-dbd0-4cff-88f0-67984ad54ef6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fd920ad-aa39-4246-bf87-c6f3b3630967",
                  "parent_uuid": "501695d4-ad8b-479a-935d-597a3af44466",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97647699-dbff-4886-be92-86f63e886684",
              "parent_uuid": "4ba8b309-dbd0-4cff-88f0-67984ad54ef6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "090a6ee8-ff42-4a52-8693-717a1cc15245",
                  "parent_uuid": "97647699-dbff-4886-be92-86f63e886684",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f0922f78-47d2-49d6-aed5-9486b865297c",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab1a6fa5-f98b-471e-8f67-c1e5a4ea9a75",
              "parent_uuid": "f0922f78-47d2-49d6-aed5-9486b865297c",
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
              "uuid": "94658b96-a30d-4356-8dd7-aff2060b377f",
              "parent_uuid": "f0922f78-47d2-49d6-aed5-9486b865297c",
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
              "uuid": "0a23eb36-e597-4cc5-aaf0-ec2b6bbd10c2",
              "parent_uuid": "f0922f78-47d2-49d6-aed5-9486b865297c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "753f3394-5ce4-4e7e-95cb-4066f13ec6c8",
                  "parent_uuid": "0a23eb36-e597-4cc5-aaf0-ec2b6bbd10c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd6f1ca8-a0e7-45fc-930d-6706f05bf0d0",
              "parent_uuid": "f0922f78-47d2-49d6-aed5-9486b865297c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "406c5a76-b1d7-4a05-b50d-ce0e92096f23",
                  "parent_uuid": "bd6f1ca8-a0e7-45fc-930d-6706f05bf0d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80aaecd5-fd96-45c4-a15f-381f78123288",
              "parent_uuid": "f0922f78-47d2-49d6-aed5-9486b865297c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78e4b783-0211-482f-9264-ecb7d0d57225",
                  "parent_uuid": "80aaecd5-fd96-45c4-a15f-381f78123288",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "835da4a2-6486-4896-986d-8abac2541792",
              "parent_uuid": "f0922f78-47d2-49d6-aed5-9486b865297c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5df3e26d-d25a-498c-8023-7e0eeee24c2e",
                  "parent_uuid": "835da4a2-6486-4896-986d-8abac2541792",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c741e1d3-7b19-4ba7-a161-9d555c17ca91",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc82031d-b781-44aa-a920-3ad4d67ab168",
              "parent_uuid": "c741e1d3-7b19-4ba7-a161-9d555c17ca91",
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
              "uuid": "bf2e7ab2-5f69-4db5-9cb8-4eb13f90416b",
              "parent_uuid": "c741e1d3-7b19-4ba7-a161-9d555c17ca91",
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
              "uuid": "d8a29308-af41-4dd7-87a0-3781a757453d",
              "parent_uuid": "c741e1d3-7b19-4ba7-a161-9d555c17ca91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec188ded-84ad-470b-b63c-66cf34843568",
                  "parent_uuid": "d8a29308-af41-4dd7-87a0-3781a757453d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f35cdad-315a-41a5-b4bc-4ead59e10ff1",
              "parent_uuid": "c741e1d3-7b19-4ba7-a161-9d555c17ca91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed5324c5-7905-4344-b940-63886e6fbdfa",
                  "parent_uuid": "9f35cdad-315a-41a5-b4bc-4ead59e10ff1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03d91137-c965-4cf3-be8c-9aee36c582b4",
              "parent_uuid": "c741e1d3-7b19-4ba7-a161-9d555c17ca91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d4d0911-44db-47ca-af6a-9f14a1efcda1",
                  "parent_uuid": "03d91137-c965-4cf3-be8c-9aee36c582b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4761f217-4e97-42a2-a1af-c86d6e53a2ee",
              "parent_uuid": "c741e1d3-7b19-4ba7-a161-9d555c17ca91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb76cba8-42fc-443f-86cd-1f2d85255946",
                  "parent_uuid": "4761f217-4e97-42a2-a1af-c86d6e53a2ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b1bbf064-130a-45f0-a829-d3c9b5cb236b",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d92b6f3-cb12-42ca-830b-1a775e2f7248",
              "parent_uuid": "b1bbf064-130a-45f0-a829-d3c9b5cb236b",
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
              "uuid": "f2b356aa-22f9-4d64-9033-32e8c4621abb",
              "parent_uuid": "b1bbf064-130a-45f0-a829-d3c9b5cb236b",
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
              "uuid": "3c90694a-7866-443b-ac2e-9efc99c53056",
              "parent_uuid": "b1bbf064-130a-45f0-a829-d3c9b5cb236b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ed39d4d-2146-487b-9cb0-93e43cfbe8c2",
                  "parent_uuid": "3c90694a-7866-443b-ac2e-9efc99c53056",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e69303a-8ce3-44ba-a561-4b0284da2d46",
              "parent_uuid": "b1bbf064-130a-45f0-a829-d3c9b5cb236b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68b53ce6-2c54-4fb1-a741-db5061dc31de",
                  "parent_uuid": "7e69303a-8ce3-44ba-a561-4b0284da2d46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9d03dc8-99e7-450e-a7d2-84de6f9cc5e7",
              "parent_uuid": "b1bbf064-130a-45f0-a829-d3c9b5cb236b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "314bd519-69fe-4109-82fc-21de699101ff",
                  "parent_uuid": "a9d03dc8-99e7-450e-a7d2-84de6f9cc5e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc8ba587-91f1-43a8-9efc-f21d39aa27e5",
              "parent_uuid": "b1bbf064-130a-45f0-a829-d3c9b5cb236b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18f0d7fb-c6c1-41fd-81fb-ddb542acef43",
                  "parent_uuid": "dc8ba587-91f1-43a8-9efc-f21d39aa27e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4f4e6701-02d6-4137-8a72-778597cae2f7",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8e88726f-54e6-4cd4-b3a9-7700304a2791",
              "parent_uuid": "4f4e6701-02d6-4137-8a72-778597cae2f7",
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
              "uuid": "4505ca51-1aee-4115-9aa1-0199de005a04",
              "parent_uuid": "4f4e6701-02d6-4137-8a72-778597cae2f7",
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
              "uuid": "e35b3351-018e-436c-8fb9-fe23a7ac3cc2",
              "parent_uuid": "4f4e6701-02d6-4137-8a72-778597cae2f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f65c16c4-2ad1-45ec-b5b9-0b0516628635",
                  "parent_uuid": "e35b3351-018e-436c-8fb9-fe23a7ac3cc2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14d41ede-048e-4f6d-845f-27f0d5d95c8b",
              "parent_uuid": "4f4e6701-02d6-4137-8a72-778597cae2f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "324c7ce6-7cbe-4020-bf5b-cfb52c76fd94",
                  "parent_uuid": "14d41ede-048e-4f6d-845f-27f0d5d95c8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af074075-a079-4d33-b6b3-0a71a8cba98b",
              "parent_uuid": "4f4e6701-02d6-4137-8a72-778597cae2f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "548796f6-c69f-48e3-bb60-78229744d8b4",
                  "parent_uuid": "af074075-a079-4d33-b6b3-0a71a8cba98b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78e6e814-746d-45b6-bee3-f3d7922e078b",
              "parent_uuid": "4f4e6701-02d6-4137-8a72-778597cae2f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e203610e-4884-4e88-9d37-3099ef3ef03a",
                  "parent_uuid": "78e6e814-746d-45b6-bee3-f3d7922e078b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8ccb9bc9-df36-4a52-9f73-f4bff0b7d74b",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59e349d8-aeeb-4745-b36d-c250a11a73da",
              "parent_uuid": "8ccb9bc9-df36-4a52-9f73-f4bff0b7d74b",
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
          "uuid": "f0b67ae0-8787-4731-b344-523e3d6fc461",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "880e0358-8546-4827-b98a-e59df0f0834b",
              "parent_uuid": "f0b67ae0-8787-4731-b344-523e3d6fc461",
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
          "uuid": "0f380e85-7cfa-4559-9ce8-eda7a7e15452",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07d77a9b-96dd-4fa6-affe-1fa769f4327f",
              "parent_uuid": "0f380e85-7cfa-4559-9ce8-eda7a7e15452",
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
                  "uuid": "bcd09327-ac1a-458b-97b4-18b374077eec",
                  "parent_uuid": "07d77a9b-96dd-4fa6-affe-1fa769f4327f",
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
          "uuid": "919bee81-fad6-4b38-9f94-e26316bf94d7",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82dd98cc-2f34-46b8-b16d-577aea27b238",
              "parent_uuid": "919bee81-fad6-4b38-9f94-e26316bf94d7",
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
          "uuid": "e778d4ca-4d10-4430-8292-83c2eb7c76e4",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d03b4594-4355-4cd0-9f5e-bdb37ef81dd3",
              "parent_uuid": "e778d4ca-4d10-4430-8292-83c2eb7c76e4",
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
          "uuid": "f94a035a-15b5-41f3-8d83-fc093488dad8",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "168af678-cc95-4d0e-af2b-f99cfb5bb2ff",
              "parent_uuid": "f94a035a-15b5-41f3-8d83-fc093488dad8",
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
              "uuid": "3dbe9552-365b-4576-ae1f-6b6aef9f25a3",
              "parent_uuid": "f94a035a-15b5-41f3-8d83-fc093488dad8",
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
              "uuid": "f4acbefb-2b6b-4092-9470-a70104df4e2e",
              "parent_uuid": "f94a035a-15b5-41f3-8d83-fc093488dad8",
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
              "uuid": "0a6a72db-752a-4e7b-9043-80d304bb9964",
              "parent_uuid": "f94a035a-15b5-41f3-8d83-fc093488dad8",
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
              "uuid": "4708c8d9-4d83-4561-b587-cba64627e23a",
              "parent_uuid": "f94a035a-15b5-41f3-8d83-fc093488dad8",
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
          "uuid": "5573096f-c8c9-4c0b-9b0a-556e35883851",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "44c0454c-105f-4d05-9410-2f2c730dddf0",
              "parent_uuid": "5573096f-c8c9-4c0b-9b0a-556e35883851",
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
              "uuid": "8f4d33c0-e6f3-4095-a2ef-89cb3fca494e",
              "parent_uuid": "5573096f-c8c9-4c0b-9b0a-556e35883851",
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
              "uuid": "0287565b-4f3d-4470-a76a-8ede24d3a878",
              "parent_uuid": "5573096f-c8c9-4c0b-9b0a-556e35883851",
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
              "uuid": "3c891c8e-dfb6-431b-bb6b-95f03cb63d05",
              "parent_uuid": "5573096f-c8c9-4c0b-9b0a-556e35883851",
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
              "uuid": "10d5b7df-5b00-4ee1-aecf-9a2c510a218a",
              "parent_uuid": "5573096f-c8c9-4c0b-9b0a-556e35883851",
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
          "uuid": "6f4e7d52-778b-4586-847d-86cd9f42f8b1",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2861857d-6f0b-4cef-ad23-ac62d20d1582",
              "parent_uuid": "6f4e7d52-778b-4586-847d-86cd9f42f8b1",
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
              "uuid": "ac6cb8f8-dedc-417e-aeec-9be40029d0eb",
              "parent_uuid": "6f4e7d52-778b-4586-847d-86cd9f42f8b1",
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
              "uuid": "45054ffc-032e-4a2c-97cc-5b6473f8bf09",
              "parent_uuid": "6f4e7d52-778b-4586-847d-86cd9f42f8b1",
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
              "uuid": "b0b2a209-a8b5-4d10-9d09-bb30248b2a7f",
              "parent_uuid": "6f4e7d52-778b-4586-847d-86cd9f42f8b1",
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
              "uuid": "904be816-aeb3-4005-b1d5-89000dd5f133",
              "parent_uuid": "6f4e7d52-778b-4586-847d-86cd9f42f8b1",
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
          "uuid": "dff4e4bc-084a-4e70-81b0-9ebe8e3f7e1b",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "67d682a1-5a16-4c0a-84a9-537740e77b53",
              "parent_uuid": "dff4e4bc-084a-4e70-81b0-9ebe8e3f7e1b",
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
              "uuid": "c3a44ead-1be5-47a6-98a0-9d05f3a0fba1",
              "parent_uuid": "dff4e4bc-084a-4e70-81b0-9ebe8e3f7e1b",
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
              "uuid": "629b3ddd-92d7-4cee-9753-00217ef7a581",
              "parent_uuid": "dff4e4bc-084a-4e70-81b0-9ebe8e3f7e1b",
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
              "uuid": "0977cded-417e-4093-80ef-1e88a5d2a4b1",
              "parent_uuid": "dff4e4bc-084a-4e70-81b0-9ebe8e3f7e1b",
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
              "uuid": "21d56b3e-84a8-4588-879c-b6e3aee479f4",
              "parent_uuid": "dff4e4bc-084a-4e70-81b0-9ebe8e3f7e1b",
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
          "uuid": "02b0fd44-108b-49b8-9b2a-ab34976ad7ea",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84412550-fdd5-4acf-a16f-4b49b257c245",
              "parent_uuid": "02b0fd44-108b-49b8-9b2a-ab34976ad7ea",
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
              "uuid": "aaa87caa-dee4-465e-b5f3-e9b89abd2189",
              "parent_uuid": "02b0fd44-108b-49b8-9b2a-ab34976ad7ea",
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
              "uuid": "0071429d-378a-4dda-9672-10bc72d15d37",
              "parent_uuid": "02b0fd44-108b-49b8-9b2a-ab34976ad7ea",
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
              "uuid": "6a882533-f248-44b5-aed3-5ddd440bfa70",
              "parent_uuid": "02b0fd44-108b-49b8-9b2a-ab34976ad7ea",
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
              "uuid": "6d6062b3-3c79-4b8c-a50f-7f77b3a2ab62",
              "parent_uuid": "02b0fd44-108b-49b8-9b2a-ab34976ad7ea",
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
          "uuid": "01810332-304f-430c-8926-a8a241fc5f41",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31895dd9-175f-4657-b21d-fba2fd32b412",
              "parent_uuid": "01810332-304f-430c-8926-a8a241fc5f41",
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
              "uuid": "f8d60160-d6ba-446e-8cdb-17c11cc68844",
              "parent_uuid": "01810332-304f-430c-8926-a8a241fc5f41",
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
              "uuid": "53c54ecc-cb41-434e-8a1b-0307e1bcd3fe",
              "parent_uuid": "01810332-304f-430c-8926-a8a241fc5f41",
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
              "uuid": "482aac92-b5c2-485b-8f4e-08ac84bdd02c",
              "parent_uuid": "01810332-304f-430c-8926-a8a241fc5f41",
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
              "uuid": "9ed8e7b5-ec28-4559-b6da-40ea242a7457",
              "parent_uuid": "01810332-304f-430c-8926-a8a241fc5f41",
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
          "uuid": "dd9f8be7-5547-49f5-ab35-c1724e557f20",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "506d68ed-b2f1-48b0-ae90-aeca46e30988",
              "parent_uuid": "dd9f8be7-5547-49f5-ab35-c1724e557f20",
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
              "uuid": "1f088b01-ad60-4be5-b4bb-d0d5dc264d9e",
              "parent_uuid": "dd9f8be7-5547-49f5-ab35-c1724e557f20",
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
              "uuid": "a2d966a3-57b7-4e89-8524-1721ffa2c88c",
              "parent_uuid": "dd9f8be7-5547-49f5-ab35-c1724e557f20",
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
              "uuid": "fbfd3271-c365-4edc-bf41-95d63d74b4af",
              "parent_uuid": "dd9f8be7-5547-49f5-ab35-c1724e557f20",
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
              "uuid": "9ec0d0e1-2fcb-474f-9533-8ca0ddbeb1df",
              "parent_uuid": "dd9f8be7-5547-49f5-ab35-c1724e557f20",
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
          "uuid": "0943f95b-344f-4923-8f2b-3c25c18a7f60",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ad3fb1a-bf78-45d4-a406-692f00c3662b",
              "parent_uuid": "0943f95b-344f-4923-8f2b-3c25c18a7f60",
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
              "uuid": "c8e627c2-4ae3-46e9-82c0-377d998c3d89",
              "parent_uuid": "0943f95b-344f-4923-8f2b-3c25c18a7f60",
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
              "uuid": "946ed99a-f07c-4547-a8be-70d4514f485b",
              "parent_uuid": "0943f95b-344f-4923-8f2b-3c25c18a7f60",
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
              "uuid": "c1f91e1b-5f17-4853-a1a1-d38d2f935a7d",
              "parent_uuid": "0943f95b-344f-4923-8f2b-3c25c18a7f60",
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
              "uuid": "c331723b-7ab2-4bc4-b02b-4591e67a6adb",
              "parent_uuid": "0943f95b-344f-4923-8f2b-3c25c18a7f60",
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
          "uuid": "d1f62411-5f61-4b42-a6f6-df04a1000f0a",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8f26f56-2cc2-428e-92c6-7f55b96d74d6",
              "parent_uuid": "d1f62411-5f61-4b42-a6f6-df04a1000f0a",
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
              "uuid": "e5224e57-de90-402d-a7e3-00b9d247ccf4",
              "parent_uuid": "d1f62411-5f61-4b42-a6f6-df04a1000f0a",
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
              "uuid": "e5d3fc4a-aead-4251-a297-9e98ce082b6c",
              "parent_uuid": "d1f62411-5f61-4b42-a6f6-df04a1000f0a",
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
              "uuid": "2e73b7df-943a-40fd-ad70-5c2fd9c06daa",
              "parent_uuid": "d1f62411-5f61-4b42-a6f6-df04a1000f0a",
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
              "uuid": "e74aca6d-21fd-4c9f-84be-547d1604e3b0",
              "parent_uuid": "d1f62411-5f61-4b42-a6f6-df04a1000f0a",
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
          "uuid": "5459761c-44cc-4a2c-a9bb-a602915dad22",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53c91690-abb9-4217-b725-e082208cf29c",
              "parent_uuid": "5459761c-44cc-4a2c-a9bb-a602915dad22",
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
              "uuid": "26558f78-5961-423a-a39b-3c0557955101",
              "parent_uuid": "5459761c-44cc-4a2c-a9bb-a602915dad22",
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
              "uuid": "37e91861-016c-4442-87c6-cd64d41f4604",
              "parent_uuid": "5459761c-44cc-4a2c-a9bb-a602915dad22",
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
              "uuid": "ac2b0eb9-7023-45ad-985d-da1cf8fa32fd",
              "parent_uuid": "5459761c-44cc-4a2c-a9bb-a602915dad22",
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
              "uuid": "e9258276-a9b5-4666-bfd5-2d240e99bf48",
              "parent_uuid": "5459761c-44cc-4a2c-a9bb-a602915dad22",
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
          "uuid": "a0a2faac-fc06-4c64-9d3c-08e8c54cb726",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c332f7be-f908-4cd0-8b64-04cd47f1713f",
              "parent_uuid": "a0a2faac-fc06-4c64-9d3c-08e8c54cb726",
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
              "uuid": "80183abb-231b-48fe-b95d-c3dca654ea7f",
              "parent_uuid": "a0a2faac-fc06-4c64-9d3c-08e8c54cb726",
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
              "uuid": "2ddc7562-4654-42be-8626-24a431bde842",
              "parent_uuid": "a0a2faac-fc06-4c64-9d3c-08e8c54cb726",
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
              "uuid": "af7da756-10cd-447e-ae87-9dfef949d0a4",
              "parent_uuid": "a0a2faac-fc06-4c64-9d3c-08e8c54cb726",
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
              "uuid": "871e59e8-9488-4c76-98f7-ef91692c0be1",
              "parent_uuid": "a0a2faac-fc06-4c64-9d3c-08e8c54cb726",
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
          "uuid": "7af8d271-f292-4a52-a5a3-9e404644836b",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27559155-f09f-426b-87b4-4029e8744fec",
              "parent_uuid": "7af8d271-f292-4a52-a5a3-9e404644836b",
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
              "uuid": "b8b36bb7-5551-4352-b079-f466d44a6bd8",
              "parent_uuid": "7af8d271-f292-4a52-a5a3-9e404644836b",
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
              "uuid": "f741d144-5c26-480e-8f60-c018eaa563c9",
              "parent_uuid": "7af8d271-f292-4a52-a5a3-9e404644836b",
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
              "uuid": "33c269da-e406-415b-b3f5-2bf3a7e4b73a",
              "parent_uuid": "7af8d271-f292-4a52-a5a3-9e404644836b",
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
              "uuid": "588896bc-be31-4d8a-a837-d70937acad73",
              "parent_uuid": "7af8d271-f292-4a52-a5a3-9e404644836b",
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
          "uuid": "35747d7a-3b5e-4cb5-a49d-dca127f53d73",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e8f84ed-6fb2-469b-a25e-fb8daf48ba6e",
              "parent_uuid": "35747d7a-3b5e-4cb5-a49d-dca127f53d73",
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
              "uuid": "999412c3-0b1e-4362-ae37-88028c8d06fd",
              "parent_uuid": "35747d7a-3b5e-4cb5-a49d-dca127f53d73",
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
              "uuid": "ecb989fa-c7f9-4e6f-8285-47b44d23f37c",
              "parent_uuid": "35747d7a-3b5e-4cb5-a49d-dca127f53d73",
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
              "uuid": "8bb2d089-6cc6-4a95-8c2a-bc3cd9bd2119",
              "parent_uuid": "35747d7a-3b5e-4cb5-a49d-dca127f53d73",
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
              "uuid": "95c49ee1-5044-4331-8b90-9bc60f56f88e",
              "parent_uuid": "35747d7a-3b5e-4cb5-a49d-dca127f53d73",
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
          "uuid": "892e2acd-6559-496d-a8d9-3bea7c477650",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dda495b5-60ec-4b6c-b659-ba773be20803",
              "parent_uuid": "892e2acd-6559-496d-a8d9-3bea7c477650",
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
          "uuid": "9e1bc530-8d9c-449f-94ef-effbccd75407",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b33e3e0a-d640-45bb-ba02-aa64680248fe",
              "parent_uuid": "9e1bc530-8d9c-449f-94ef-effbccd75407",
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
          "uuid": "bb6f2fdb-813a-402f-82ed-288496ec700e",
          "parent_uuid": "6d26a3cd-1765-408a-866e-fc725efc4b86",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61f72c4f-0645-4b2d-a23c-cc5cb3c4865f",
              "parent_uuid": "bb6f2fdb-813a-402f-82ed-288496ec700e",
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
                  "uuid": "8bcf81b3-13b3-44f5-b0f5-c83d87935c6b",
                  "parent_uuid": "61f72c4f-0645-4b2d-a23c-cc5cb3c4865f",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

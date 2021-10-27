
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
  "uuid": "d4e53f56-704e-4638-b826-640f48c98572",
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
      "uuid": "0e493ebd-5895-4ab3-bee1-3fb8dab3770a",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
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
      "uuid": "0719864a-9280-4a8b-be9f-ac0d7c05b2d4",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
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
      "uuid": "474a7161-2022-40c7-a504-97ce47fd05e2",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
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
      "uuid": "0c1bd799-6482-401b-8141-2612d15ea1cf",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "69"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "f253172f-2713-488d-8c1d-325f3786995b",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "8f6c5d53-3011-4690-8f08-2b2559e2ce9f",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
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
      "uuid": "469e06c3-7ad6-4793-aa7f-ff0cf05e87f5",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
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
      "uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
      "parent_uuid": "d4e53f56-704e-4638-b826-640f48c98572",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b1f0061d-2663-4c17-b1a0-058463bb620a",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "86d07c05-c61e-4c5e-b49d-8038075363d8",
              "parent_uuid": "b1f0061d-2663-4c17-b1a0-058463bb620a",
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3bbb1d42-17fa-48f9-ba44-b4a6b10fadf6",
              "parent_uuid": "b1f0061d-2663-4c17-b1a0-058463bb620a",
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
              "uuid": "6b10c28e-3bc5-45b0-8b2d-d8caf778c23f",
              "parent_uuid": "b1f0061d-2663-4c17-b1a0-058463bb620a",
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
              "uuid": "334c7479-af8e-4713-9c6a-bd76011d0e63",
              "parent_uuid": "b1f0061d-2663-4c17-b1a0-058463bb620a",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "<span>Bargeldgewerk: Münzinspektions- und Sortieranlage</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "70350dbb-fdb1-4dc8-8349-2c5bacee6dcb",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e5bd2482-f9e0-400c-87d4-886ad7fc9323",
              "parent_uuid": "70350dbb-fdb1-4dc8-8349-2c5bacee6dcb",
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
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ce6bc9c1-b60b-43ff-a6be-80701dab9d31",
              "parent_uuid": "70350dbb-fdb1-4dc8-8349-2c5bacee6dcb",
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
              "uuid": "a441bc88-697e-4838-84aa-afc9cc3e33f4",
              "parent_uuid": "70350dbb-fdb1-4dc8-8349-2c5bacee6dcb",
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
              "uuid": "8d5db6e0-7575-4aac-9c11-51994f282681",
              "parent_uuid": "70350dbb-fdb1-4dc8-8349-2c5bacee6dcb",
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
          "uuid": "de81c8fe-2a40-42b4-a67c-94d9793c5e2e",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3f750b5-d5f1-41dc-9257-e8bd491cc581",
              "parent_uuid": "de81c8fe-2a40-42b4-a67c-94d9793c5e2e",
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
                  "left"
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
              "uuid": "199a1f80-484c-4423-b560-9921b8fac149",
              "parent_uuid": "de81c8fe-2a40-42b4-a67c-94d9793c5e2e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dcaa4a43-de21-47af-98d9-11735cf17635",
              "parent_uuid": "de81c8fe-2a40-42b4-a67c-94d9793c5e2e",
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
              "uuid": "f552720f-506e-4ab6-941f-f56883afc491",
              "parent_uuid": "de81c8fe-2a40-42b4-a67c-94d9793c5e2e",
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
              "uuid": "5d47203d-7691-4b2c-9008-307f21444f1d",
              "parent_uuid": "de81c8fe-2a40-42b4-a67c-94d9793c5e2e",
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
              "uuid": "1c09e3ae-6bf4-4bd4-8a75-48d0d5376829",
              "parent_uuid": "de81c8fe-2a40-42b4-a67c-94d9793c5e2e",
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
          "uuid": "9fc53004-2c3a-4afb-9df7-885ceab6b853",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4daf3ce2-6e86-46c3-a739-5e7bb83823b1",
              "parent_uuid": "9fc53004-2c3a-4afb-9df7-885ceab6b853",
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
          "uuid": "f70028f1-6ca6-416c-a7e9-3ffad3976bba",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5468500f-3d04-4e89-b552-b7f2c8618330",
              "parent_uuid": "f70028f1-6ca6-416c-a7e9-3ffad3976bba",
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
              "uuid": "64859529-ac48-4514-b718-d9a79e35bceb",
              "parent_uuid": "f70028f1-6ca6-416c-a7e9-3ffad3976bba",
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
              "uuid": "28fe6a81-95af-4b53-b6e3-3ca44f0d6b1a",
              "parent_uuid": "f70028f1-6ca6-416c-a7e9-3ffad3976bba",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f0211e4e-f133-48b6-a956-cc8e381b50c2",
                  "parent_uuid": "28fe6a81-95af-4b53-b6e3-3ca44f0d6b1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b82542f8-ff33-46e4-97b4-e3501d110419",
              "parent_uuid": "f70028f1-6ca6-416c-a7e9-3ffad3976bba",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7911e809-292a-4cab-9a7a-584beb81d301",
                  "parent_uuid": "b82542f8-ff33-46e4-97b4-e3501d110419",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8ea9d4d-cea8-43ad-b1c4-168b4ec91a54",
              "parent_uuid": "f70028f1-6ca6-416c-a7e9-3ffad3976bba",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9125e67a-82a9-49d5-9130-9df42cf8d3c7",
                  "parent_uuid": "e8ea9d4d-cea8-43ad-b1c4-168b4ec91a54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4aac0c21-369d-472e-b3b1-9efbb6a2c173",
              "parent_uuid": "f70028f1-6ca6-416c-a7e9-3ffad3976bba",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1b7b5032-7c4b-47f2-a829-4298f02830e8",
                  "parent_uuid": "4aac0c21-369d-472e-b3b1-9efbb6a2c173",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7be34a89-020d-4358-8110-e192726f45aa",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ac18eb4-02bd-4472-af34-508056f4ccc2",
              "parent_uuid": "7be34a89-020d-4358-8110-e192726f45aa",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Transportbänder auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e1073051-4814-49be-9a88-2c1c1b28154b",
              "parent_uuid": "7be34a89-020d-4358-8110-e192726f45aa",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a597435d-3346-49b8-a16e-427591783c30",
              "parent_uuid": "7be34a89-020d-4358-8110-e192726f45aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7f79e731-89ee-4f37-a496-a5f14df3bf57",
                  "parent_uuid": "a597435d-3346-49b8-a16e-427591783c30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2fb6643a-aa19-4217-b0ac-4d7fbed41e38",
              "parent_uuid": "7be34a89-020d-4358-8110-e192726f45aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a2d9fecb-bec8-46df-ac38-b082a958311f",
                  "parent_uuid": "2fb6643a-aa19-4217-b0ac-4d7fbed41e38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc7b4cfd-7943-4aa9-9592-8a73c83b4567",
              "parent_uuid": "7be34a89-020d-4358-8110-e192726f45aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "793a24c2-5fd0-43f1-bd7e-463a77930ce2",
                  "parent_uuid": "fc7b4cfd-7943-4aa9-9592-8a73c83b4567",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01ff84ad-ee8f-427c-8fbb-7d7f4206faa2",
              "parent_uuid": "7be34a89-020d-4358-8110-e192726f45aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "45c2a289-5d2d-47e3-a1f3-64a90ba6bb2b",
                  "parent_uuid": "01ff84ad-ee8f-427c-8fbb-7d7f4206faa2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e8b36074-18dc-4eee-b4b8-ddc470488be2",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "761f9216-34a9-4773-89d3-158f1d3fcfd8",
              "parent_uuid": "e8b36074-18dc-4eee-b4b8-ddc470488be2",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen Sie alle bewegliche und schwingende Teile auf lose oder fehlende Schrauben.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "eeeef6d3-2899-4964-b4cd-9d86d7a449b4",
              "parent_uuid": "e8b36074-18dc-4eee-b4b8-ddc470488be2",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "cfec45b4-5d91-4b5e-8063-c2f5205b3158",
              "parent_uuid": "e8b36074-18dc-4eee-b4b8-ddc470488be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "93fafc2c-0a40-4bdd-b09d-fee128c342c1",
                  "parent_uuid": "cfec45b4-5d91-4b5e-8063-c2f5205b3158",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4174dc49-458d-422b-9b47-0db28bb91315",
              "parent_uuid": "e8b36074-18dc-4eee-b4b8-ddc470488be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "75c8a7a6-468d-43e2-9f0c-05eb62a26e71",
                  "parent_uuid": "4174dc49-458d-422b-9b47-0db28bb91315",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "252818d9-7d0d-4793-89c6-b497c52437be",
              "parent_uuid": "e8b36074-18dc-4eee-b4b8-ddc470488be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "60657e0f-d42c-4b90-a38a-cf6eb53ddea2",
                  "parent_uuid": "252818d9-7d0d-4793-89c6-b497c52437be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25b4244c-5783-4a69-9021-7d3214feb104",
              "parent_uuid": "e8b36074-18dc-4eee-b4b8-ddc470488be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4163c739-fd66-4453-930b-2c66340d68dd",
                  "parent_uuid": "25b4244c-5783-4a69-9021-7d3214feb104",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "abe25f11-80f9-4a4f-a4c3-7801ce2d5229",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1e57ee7-ef77-44d9-8fb3-77a252a127e9",
              "parent_uuid": "abe25f11-80f9-4a4f-a4c3-7801ce2d5229",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "09bd36db-f81d-43b3-a668-00710fe58fb5",
              "parent_uuid": "abe25f11-80f9-4a4f-a4c3-7801ce2d5229",
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
              "uuid": "8e06d9e9-22a6-4a28-ae1f-771fcaec8999",
              "parent_uuid": "abe25f11-80f9-4a4f-a4c3-7801ce2d5229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "74cbec89-9619-442a-8e27-e0f26f4ae5b6",
                  "parent_uuid": "8e06d9e9-22a6-4a28-ae1f-771fcaec8999",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41127ba1-00e0-402c-9a28-91c440391f8a",
              "parent_uuid": "abe25f11-80f9-4a4f-a4c3-7801ce2d5229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "de985dcd-7f06-4c14-ad43-2a374b369d14",
                  "parent_uuid": "41127ba1-00e0-402c-9a28-91c440391f8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccd05729-50ae-4b83-87ad-60ba10fe0d24",
              "parent_uuid": "abe25f11-80f9-4a4f-a4c3-7801ce2d5229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0427e5d3-a446-4bdd-b328-2e315e2b60aa",
                  "parent_uuid": "ccd05729-50ae-4b83-87ad-60ba10fe0d24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02d56f34-d7ed-4f7f-be92-0fa77aefc7f9",
              "parent_uuid": "abe25f11-80f9-4a4f-a4c3-7801ce2d5229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bf6a9853-97b1-4733-ae10-714f3811d29f",
                  "parent_uuid": "02d56f34-d7ed-4f7f-be92-0fa77aefc7f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c29d46e-30f5-42c9-8714-9879477e5a72",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e406d193-d641-4368-9dee-b0d96aec8d67",
              "parent_uuid": "6c29d46e-30f5-42c9-8714-9879477e5a72",
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "b066e04d-1eb7-4912-bb8f-788afb844bef",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0bf14a27-c87d-42c4-8544-6dda3fbae2cb",
              "parent_uuid": "b066e04d-1eb7-4912-bb8f-788afb844bef",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Gesamte Anlage reinigen:<br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2d506c0d-7c37-4bf3-8fd0-2250d69a8eaf",
              "parent_uuid": "b066e04d-1eb7-4912-bb8f-788afb844bef",
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
              "innerHtml": "\r\n                    <span>W</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8ccecc39-d96a-44b8-a139-2c2b7515d92e",
              "parent_uuid": "b066e04d-1eb7-4912-bb8f-788afb844bef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c82fbfb5-70cb-4b41-8884-a3e6abcca184",
                  "parent_uuid": "8ccecc39-d96a-44b8-a139-2c2b7515d92e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3df4d628-f92c-40c9-9b4e-d06380814456",
              "parent_uuid": "b066e04d-1eb7-4912-bb8f-788afb844bef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "76c7e1ba-d5ab-49eb-a04c-a5be44109a97",
                  "parent_uuid": "3df4d628-f92c-40c9-9b4e-d06380814456",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5f3a5e0-204c-44ec-aa1b-41d5d8ed06cc",
              "parent_uuid": "b066e04d-1eb7-4912-bb8f-788afb844bef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "249d2c8e-3f04-4c6d-92e4-f462fd406bd4",
                  "parent_uuid": "e5f3a5e0-204c-44ec-aa1b-41d5d8ed06cc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ec5ba6e-d0d4-4751-a0a0-5313127b6ce9",
              "parent_uuid": "b066e04d-1eb7-4912-bb8f-788afb844bef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "40a660cd-dec7-4fd4-bf3c-6ec19a89b8e6",
                  "parent_uuid": "0ec5ba6e-d0d4-4751-a0a0-5313127b6ce9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "be12bbc2-5548-4d1b-8633-65d5f3ce90af",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4208d282-b508-46dc-98f4-6d21f6129af2",
              "parent_uuid": "be12bbc2-5548-4d1b-8633-65d5f3ce90af",
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
              "innerHtml": "\r\n                    <span>Festsitzende Münzen in der Maschine überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "aec812c3-022c-4268-8ab8-3c167ca84f93",
              "parent_uuid": "be12bbc2-5548-4d1b-8633-65d5f3ce90af",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fc22d7b0-7375-4cde-bdff-df2804492e8e",
              "parent_uuid": "be12bbc2-5548-4d1b-8633-65d5f3ce90af",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b00fd537-2855-452d-afa6-7f4bbcb8b3eb",
                  "parent_uuid": "fc22d7b0-7375-4cde-bdff-df2804492e8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53ba2d52-d239-4644-a67c-1eeb45f87bca",
              "parent_uuid": "be12bbc2-5548-4d1b-8633-65d5f3ce90af",
              "tagName": "td",
              "properties": [
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
                  "uuid": "412c71e8-d2c8-4fb6-b273-e8659cdac624",
                  "parent_uuid": "53ba2d52-d239-4644-a67c-1eeb45f87bca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8650a24-25a7-40f8-bb94-cd9430ec2ddf",
              "parent_uuid": "be12bbc2-5548-4d1b-8633-65d5f3ce90af",
              "tagName": "td",
              "properties": [
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
                  "uuid": "170f7832-5411-4edb-9745-9f97205b86dd",
                  "parent_uuid": "e8650a24-25a7-40f8-bb94-cd9430ec2ddf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "415f2287-3281-4a01-88b6-a06effabc01a",
              "parent_uuid": "be12bbc2-5548-4d1b-8633-65d5f3ce90af",
              "tagName": "td",
              "properties": [
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
                  "uuid": "63465ad6-17e2-48eb-b823-a05039c8ea95",
                  "parent_uuid": "415f2287-3281-4a01-88b6-a06effabc01a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "51818d3a-14f1-4d02-8c2f-ad7deb798962",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "127a634e-ccdf-42c7-87d8-34a8fd69196c",
              "parent_uuid": "51818d3a-14f1-4d02-8c2f-ad7deb798962",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Sichtfenster reinigen mit lauwarmes Wasser sowie ein wenig Spülmittel aus. <br>Verwenden dabei ein Mikrofasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4286c837-bbc4-46e3-9581-4edef1df7791",
              "parent_uuid": "51818d3a-14f1-4d02-8c2f-ad7deb798962",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b8770142-8a40-4b51-ac3f-54751dae1fd4",
              "parent_uuid": "51818d3a-14f1-4d02-8c2f-ad7deb798962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "43ed7d5b-6f1d-4b15-9b2e-3718984cece1",
                  "parent_uuid": "b8770142-8a40-4b51-ac3f-54751dae1fd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d24629c4-6834-4a44-9339-64cee14a82c1",
              "parent_uuid": "51818d3a-14f1-4d02-8c2f-ad7deb798962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e34c13e9-66e2-4071-83ba-6a14319a69b9",
                  "parent_uuid": "d24629c4-6834-4a44-9339-64cee14a82c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "656353ba-852a-439c-ada3-57f4a868e66a",
              "parent_uuid": "51818d3a-14f1-4d02-8c2f-ad7deb798962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5ce3a59e-3984-406b-822a-08d8f80b29a6",
                  "parent_uuid": "656353ba-852a-439c-ada3-57f4a868e66a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1650ac71-c993-45db-aff2-6ac54a31e732",
              "parent_uuid": "51818d3a-14f1-4d02-8c2f-ad7deb798962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "81a793fb-a7a7-4686-9c17-97a843223b13",
                  "parent_uuid": "1650ac71-c993-45db-aff2-6ac54a31e732",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "149203d3-f237-43a6-9178-e4e2f5b45a51",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c25ae37-0c9a-4e72-8eef-766d24a7427e",
              "parent_uuid": "149203d3-f237-43a6-9178-e4e2f5b45a51",
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
              "innerHtml": "\r\n                    <span>Not-Aus-Taster, Kontrolllampen und Anzeigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1d07777d-a0a3-413d-b95d-94922ff1b336",
              "parent_uuid": "149203d3-f237-43a6-9178-e4e2f5b45a51",
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
              "uuid": "4c66aaf7-18ac-4423-9ded-f43825c82eb7",
              "parent_uuid": "149203d3-f237-43a6-9178-e4e2f5b45a51",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6fd9b321-47d1-4fcc-a837-84fbd3498587",
                  "parent_uuid": "4c66aaf7-18ac-4423-9ded-f43825c82eb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b82151ef-9cb5-489f-80de-373910819012",
              "parent_uuid": "149203d3-f237-43a6-9178-e4e2f5b45a51",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cec3d38c-f6d1-42ff-bade-212b8277de01",
                  "parent_uuid": "b82151ef-9cb5-489f-80de-373910819012",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc831120-7d7d-410d-b120-9673c60e6cdf",
              "parent_uuid": "149203d3-f237-43a6-9178-e4e2f5b45a51",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8af16083-6ccf-4073-817a-175d83138440",
                  "parent_uuid": "cc831120-7d7d-410d-b120-9673c60e6cdf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5033c521-9a25-47c0-ae13-d40feb82d97b",
              "parent_uuid": "149203d3-f237-43a6-9178-e4e2f5b45a51",
              "tagName": "td",
              "properties": [
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
                  "uuid": "12ee605c-68ee-46a5-8590-0d74564dc30b",
                  "parent_uuid": "5033c521-9a25-47c0-ae13-d40feb82d97b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a3a37a30-df7c-4967-b8ea-1bdf44e71df2",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e9d4c8c-fdf6-42e3-8f88-95da6b7ba32e",
              "parent_uuid": "a3a37a30-df7c-4967-b8ea-1bdf44e71df2",
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
                  "105"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Transportriemen gross reinigen:<br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "51a02891-5f55-4783-8662-c7f70b6d40c7",
              "parent_uuid": "a3a37a30-df7c-4967-b8ea-1bdf44e71df2",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "641560f9-dfeb-4257-bf46-e9b96ede77c4",
              "parent_uuid": "a3a37a30-df7c-4967-b8ea-1bdf44e71df2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e5da836a-1c0c-422e-9c06-7362e45455c5",
                  "parent_uuid": "641560f9-dfeb-4257-bf46-e9b96ede77c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "798ed8a2-c2ef-453f-a972-93ab5d621e69",
              "parent_uuid": "a3a37a30-df7c-4967-b8ea-1bdf44e71df2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "87095e9e-20d2-422d-a8b7-b389c7c1ff5e",
                  "parent_uuid": "798ed8a2-c2ef-453f-a972-93ab5d621e69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79d38ad0-ada0-49dc-8010-162f4e4935ca",
              "parent_uuid": "a3a37a30-df7c-4967-b8ea-1bdf44e71df2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "533136ea-4bc0-4bc9-97f4-b10268df7ad9",
                  "parent_uuid": "79d38ad0-ada0-49dc-8010-162f4e4935ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1ce6cae-1f1b-412a-afa5-1945a18cc5fa",
              "parent_uuid": "a3a37a30-df7c-4967-b8ea-1bdf44e71df2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a39c27f3-61ab-415d-8ecd-7f6b4b29c28d",
                  "parent_uuid": "a1ce6cae-1f1b-412a-afa5-1945a18cc5fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "49527608-904d-4a1b-87cb-35dd32e54fb6",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfd53891-f583-41b1-a3e5-4328133d1746",
              "parent_uuid": "49527608-904d-4a1b-87cb-35dd32e54fb6",
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
                  "121"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Transportriemen klein reinigen:<br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9a72e0e3-9093-42e8-bcaf-58257b67f3ae",
              "parent_uuid": "49527608-904d-4a1b-87cb-35dd32e54fb6",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "de176724-5911-44c9-80d8-9c8554f3eb8a",
              "parent_uuid": "49527608-904d-4a1b-87cb-35dd32e54fb6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5c0d1d07-c681-433b-9048-0686e1adb063",
                  "parent_uuid": "de176724-5911-44c9-80d8-9c8554f3eb8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d48dff7b-4aa1-4d03-9d58-e14e83f26fab",
              "parent_uuid": "49527608-904d-4a1b-87cb-35dd32e54fb6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2de3b1b0-8633-42da-bc53-95b49a654789",
                  "parent_uuid": "d48dff7b-4aa1-4d03-9d58-e14e83f26fab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c01e4c6-a606-4030-976b-715221f8785d",
              "parent_uuid": "49527608-904d-4a1b-87cb-35dd32e54fb6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1cd23bba-348e-4622-befb-75da8cc39dcc",
                  "parent_uuid": "8c01e4c6-a606-4030-976b-715221f8785d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37028ab6-37e2-476b-af48-05efe304f6aa",
              "parent_uuid": "49527608-904d-4a1b-87cb-35dd32e54fb6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "49ca0538-f5e9-4957-80d1-cdf53cac0653",
                  "parent_uuid": "37028ab6-37e2-476b-af48-05efe304f6aa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1fb0cf8c-7ee1-4116-8004-4d8a19b00ccd",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "73eef563-ae94-405b-a06f-a331cc13e4bf",
              "parent_uuid": "1fb0cf8c-7ee1-4116-8004-4d8a19b00ccd",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Spannung Transporriemen gross überprüfen:<br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "77db6ef5-35b2-4011-be76-da6905e07e39",
              "parent_uuid": "1fb0cf8c-7ee1-4116-8004-4d8a19b00ccd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "rowspan",
                  "3"
                ],
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
              "uuid": "977b14ce-fa6c-46a2-be25-732b2b22570a",
              "parent_uuid": "1fb0cf8c-7ee1-4116-8004-4d8a19b00ccd",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "66ec4f82-d8d0-497e-9a4f-aaabd9e18990",
                  "parent_uuid": "977b14ce-fa6c-46a2-be25-732b2b22570a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e130b3f1-2b93-4504-bb0b-207b2831ffdc",
              "parent_uuid": "1fb0cf8c-7ee1-4116-8004-4d8a19b00ccd",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "19afdc5f-9a1b-49dd-b08e-a86aeae2bbbd",
                  "parent_uuid": "e130b3f1-2b93-4504-bb0b-207b2831ffdc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25a571ce-1805-42ba-abac-a568848c9215",
              "parent_uuid": "1fb0cf8c-7ee1-4116-8004-4d8a19b00ccd",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "2cb12bf0-a04d-4dad-b9b8-fea13f9b58d8",
                  "parent_uuid": "25a571ce-1805-42ba-abac-a568848c9215",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6245530d-5911-45d6-a916-ad5bccd61117",
              "parent_uuid": "1fb0cf8c-7ee1-4116-8004-4d8a19b00ccd",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "375096aa-af67-4f59-9604-1c62b41d9ee0",
                  "parent_uuid": "6245530d-5911-45d6-a916-ad5bccd61117",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8791a68a-5e1c-43e1-9cd8-cb971ca4f7af",
              "parent_uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "18"
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7f2ffe9e-214d-4e12-ac32-9709e5be457d",
              "parent_uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2703306c-e7fe-4f6d-8398-f5be0ce66c3f",
              "parent_uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "73bd6fb2-923e-4686-a606-eb8ca385f00a",
              "parent_uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "2b198d3b-c767-400d-bba5-5ead197c4220",
                  "parent_uuid": "73bd6fb2-923e-4686-a606-eb8ca385f00a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5053153c-4350-4af5-8a61-6934a311e298",
              "parent_uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "8447b229-088c-4155-a717-99f56b6741e5",
                  "parent_uuid": "5053153c-4350-4af5-8a61-6934a311e298",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c07bafb9-67cc-4fe6-ad03-525c73a02d50",
              "parent_uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "35dbb600-3da0-4b70-9543-223d2fd7a33e",
                  "parent_uuid": "c07bafb9-67cc-4fe6-ad03-525c73a02d50",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "26c0e05d-c781-428e-860e-8725b7472d5d",
              "parent_uuid": "7327ba52-73d4-4520-98ab-18eef2884779",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "c70a3151-67ba-4c71-b5ca-aa2b5dd05771",
                  "parent_uuid": "26c0e05d-c781-428e-860e-8725b7472d5d",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf28e7c3-ff78-4bf5-8f08-6d4d10d45902",
              "parent_uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "21"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>-Die Distanz von Punkt zu Punkt sollte 102cm betragen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "917c5cbd-77cf-48f0-873a-eb402832354f",
              "parent_uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "innerHtml": "\r\n                    <span>&lt;102cm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d29f2c98-6ce3-42da-82ca-e5715178e464",
              "parent_uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000"
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
                  "uuid": "ebac26d3-3a0b-4f28-b90f-a8c9c10ee1ad",
                  "parent_uuid": "d29f2c98-6ce3-42da-82ca-e5715178e464",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "width: 100%; display: block; box-sizing: border-box;"
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
              "uuid": "cc6307be-4eb1-4d65-b1fe-367e1b3440f8",
              "parent_uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "c6021157-8fae-4640-9135-cab42b0cca62",
                  "parent_uuid": "cc6307be-4eb1-4d65-b1fe-367e1b3440f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a973f8f-8a74-4eec-8ac0-007dd903d282",
              "parent_uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "6cb34b9b-04dd-4d96-9a49-3c44d69a44e5",
                  "parent_uuid": "4a973f8f-8a74-4eec-8ac0-007dd903d282",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13982030-5b49-44ff-9578-945236a8b2ed",
              "parent_uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "98a7fd99-4b1d-4401-bb29-94211d41ec5d",
                  "parent_uuid": "13982030-5b49-44ff-9578-945236a8b2ed",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "38083cad-1fb4-4453-bb20-487f3f46b4a7",
              "parent_uuid": "f4627bb5-fa04-47a9-bd7b-ec6b06e957c8",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "uuid": "29b0e1b4-a614-47ea-a421-e77c7e7b19ef",
                  "parent_uuid": "38083cad-1fb4-4453-bb20-487f3f46b4a7",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "b40d80b1-6b23-4d82-b884-6d1820229066",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df3e2a6f-80d9-40e6-a485-de40e8df8b0a",
              "parent_uuid": "b40d80b1-6b23-4d82-b884-6d1820229066",
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
                  "36"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8f211999-fca8-41ae-9e12-6637c3a7cdcf",
              "parent_uuid": "b40d80b1-6b23-4d82-b884-6d1820229066",
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
              "uuid": "c56a7b82-6682-4592-bb5a-e60e3da43d0c",
              "parent_uuid": "b40d80b1-6b23-4d82-b884-6d1820229066",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9d55374-5339-41f4-a24a-60849b2ea121",
                  "parent_uuid": "c56a7b82-6682-4592-bb5a-e60e3da43d0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec858311-da0a-4587-8272-a862028831f7",
              "parent_uuid": "b40d80b1-6b23-4d82-b884-6d1820229066",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c3c5e818-d5cf-4e81-8186-72d9069cb956",
                  "parent_uuid": "ec858311-da0a-4587-8272-a862028831f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff30ccc4-0be9-4de3-8090-123d2dd8a206",
              "parent_uuid": "b40d80b1-6b23-4d82-b884-6d1820229066",
              "tagName": "td",
              "properties": [
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
                  "uuid": "57ba0f21-8138-4d04-a6b8-8988f8ad2d55",
                  "parent_uuid": "ff30ccc4-0be9-4de3-8090-123d2dd8a206",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46f30322-8eb4-4990-90ae-80e46908d984",
              "parent_uuid": "b40d80b1-6b23-4d82-b884-6d1820229066",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e2b31cbc-0462-439d-b38d-311991c067e7",
                  "parent_uuid": "46f30322-8eb4-4990-90ae-80e46908d984",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6fb9dbb0-7d6d-4d09-8631-b3e3e12b4ff4",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74c8c067-1d06-4486-a635-0d053f985fca",
              "parent_uuid": "6fb9dbb0-7d6d-4d09-8631-b3e3e12b4ff4",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Lichtschranken und Sensoren mit einem weichen Reinigungstuch.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9a24260f-a17e-466f-a805-4589c5e56a01",
              "parent_uuid": "6fb9dbb0-7d6d-4d09-8631-b3e3e12b4ff4",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b922eea7-e5e4-41d7-93ff-b9ac1c21888e",
              "parent_uuid": "6fb9dbb0-7d6d-4d09-8631-b3e3e12b4ff4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5e2dbd3d-e965-426d-899a-7ce6b25a005a",
                  "parent_uuid": "b922eea7-e5e4-41d7-93ff-b9ac1c21888e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb5d50f9-d166-4c63-b576-c9303f611a9e",
              "parent_uuid": "6fb9dbb0-7d6d-4d09-8631-b3e3e12b4ff4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "97f6d77f-4f14-413b-bfd0-35d1bc90809e",
                  "parent_uuid": "bb5d50f9-d166-4c63-b576-c9303f611a9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51c05d58-daa4-4510-8176-b1c0e64ff023",
              "parent_uuid": "6fb9dbb0-7d6d-4d09-8631-b3e3e12b4ff4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "79dcc46f-a742-41c7-9c8d-1f35bd5f5537",
                  "parent_uuid": "51c05d58-daa4-4510-8176-b1c0e64ff023",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f4fc7e9-ad43-4ca8-a50a-96c76f8b6a06",
              "parent_uuid": "6fb9dbb0-7d6d-4d09-8631-b3e3e12b4ff4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "78d77a6b-0889-4c0b-b534-50834ba578e2",
                  "parent_uuid": "1f4fc7e9-ad43-4ca8-a50a-96c76f8b6a06",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ddf9d665-148b-4e51-9660-d2051e01bc8b",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e31b756-edce-4ecf-9a9a-9ae5729b99f4",
              "parent_uuid": "ddf9d665-148b-4e51-9660-d2051e01bc8b",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Beide Server PC-Filter überprüfen und reinigen oder austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "66de3cec-2d84-4fcd-b86c-77a085149428",
              "parent_uuid": "ddf9d665-148b-4e51-9660-d2051e01bc8b",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4b6a5752-379d-4ac1-b53c-8ec6880ed8b2",
              "parent_uuid": "ddf9d665-148b-4e51-9660-d2051e01bc8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c0c5c93c-7051-43fa-bc9a-0775a8347b6a",
                  "parent_uuid": "4b6a5752-379d-4ac1-b53c-8ec6880ed8b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c79507c-ce5b-44e9-81ad-4fc0b74ee0bf",
              "parent_uuid": "ddf9d665-148b-4e51-9660-d2051e01bc8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c21f17d3-9253-483e-86fe-282151444362",
                  "parent_uuid": "1c79507c-ce5b-44e9-81ad-4fc0b74ee0bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2c3f553-cb41-456b-82c5-1af398930e26",
              "parent_uuid": "ddf9d665-148b-4e51-9660-d2051e01bc8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a79d8c52-f2b0-429d-a6e3-676cc6c37921",
                  "parent_uuid": "c2c3f553-cb41-456b-82c5-1af398930e26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cfaba0c-925f-46f7-988c-fec8c5ada248",
              "parent_uuid": "ddf9d665-148b-4e51-9660-d2051e01bc8b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7b850889-2c41-4778-90c0-ed4457ee3702",
                  "parent_uuid": "6cfaba0c-925f-46f7-988c-fec8c5ada248",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "ea40a192-3dd4-4d79-908d-790c9060eaea",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a30a63b8-74e5-48e3-9e12-b99ef470342c",
              "parent_uuid": "ea40a192-3dd4-4d79-908d-790c9060eaea",
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
                  "52"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kühlaggregat reinigen<br>  -Nehmen Sie vorsichtig die Abdeckung des Kühlaggregats ab.<br>  -Reinigen Sie die Lamellen vorsichtig mit einem Staubsauger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "80c638c7-e0ec-42dd-ae97-d18adccfde36",
              "parent_uuid": "ea40a192-3dd4-4d79-908d-790c9060eaea",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "40070d1a-74fb-4d5f-8f2f-ea70d7c21b6f",
              "parent_uuid": "ea40a192-3dd4-4d79-908d-790c9060eaea",
              "tagName": "td",
              "properties": [
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
                  "uuid": "93773dd4-4124-4e82-80b4-2bcfdfbf513c",
                  "parent_uuid": "40070d1a-74fb-4d5f-8f2f-ea70d7c21b6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bedb1a62-674d-455f-8f44-c778cb533228",
              "parent_uuid": "ea40a192-3dd4-4d79-908d-790c9060eaea",
              "tagName": "td",
              "properties": [
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
                  "uuid": "308682fa-fa4e-4714-bdc4-1434ea02aea2",
                  "parent_uuid": "bedb1a62-674d-455f-8f44-c778cb533228",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf1952c7-26a8-4206-b694-8a944ffa4dba",
              "parent_uuid": "ea40a192-3dd4-4d79-908d-790c9060eaea",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2bdf1e66-4fa1-4ec2-bf5b-885482f6c619",
                  "parent_uuid": "bf1952c7-26a8-4206-b694-8a944ffa4dba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bce2299e-d105-4289-b2bb-2dd7e6f3653d",
              "parent_uuid": "ea40a192-3dd4-4d79-908d-790c9060eaea",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3e1bb109-886c-4adb-a4d8-06cea6ca32c1",
                  "parent_uuid": "bce2299e-d105-4289-b2bb-2dd7e6f3653d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "79474025-05c9-4efb-8bfe-800a852670fa",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1cc53335-abf4-4bb0-b8b9-7f3262d82052",
              "parent_uuid": "79474025-05c9-4efb-8bfe-800a852670fa",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "2f639b32-216b-46fe-a370-059732fd6619",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d457bf1d-120c-497b-9593-a03ea6261715",
              "parent_uuid": "2f639b32-216b-46fe-a370-059732fd6619",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Schwingplatte<br>  -Der Talkbelag der Schwingplatte wird mit einem Spachtel gelöst.<br>  -Anschliessend kann mit einem Reinigungstuch und Bremsreiniger der übrige Schmutz entfernt werden</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d6155467-dc02-4c90-8b95-183092c0d8a2",
              "parent_uuid": "2f639b32-216b-46fe-a370-059732fd6619",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "eacd2b7d-7f27-460f-96f9-1df3a95abc69",
              "parent_uuid": "2f639b32-216b-46fe-a370-059732fd6619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5a4cb45e-6252-4173-9591-3833559da2a3",
                  "parent_uuid": "eacd2b7d-7f27-460f-96f9-1df3a95abc69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc9b8515-9ead-4a08-b50b-1aad96385bd7",
              "parent_uuid": "2f639b32-216b-46fe-a370-059732fd6619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "961d016a-0860-40d9-ab38-4d285861a3bc",
                  "parent_uuid": "cc9b8515-9ead-4a08-b50b-1aad96385bd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "869bcf30-b7ac-49bd-a225-74aec38c22c0",
              "parent_uuid": "2f639b32-216b-46fe-a370-059732fd6619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2ae85112-549f-4edf-91f6-984acd22d21c",
                  "parent_uuid": "869bcf30-b7ac-49bd-a225-74aec38c22c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c798b592-de29-4148-ac13-6da2e65574aa",
              "parent_uuid": "2f639b32-216b-46fe-a370-059732fd6619",
              "tagName": "td",
              "properties": [
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
                  "uuid": "153753e8-cbfc-4844-b5aa-5b2c462c8255",
                  "parent_uuid": "c798b592-de29-4148-ac13-6da2e65574aa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cca9f3f1-d18c-447d-9d7c-2bae15cb01bb",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bea4fae5-b6e7-4986-a1e9-43daf76b99fe",
              "parent_uuid": "cca9f3f1-d18c-447d-9d7c-2bae15cb01bb",
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
                  "21"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Prüfen Sie die Abscheider und Bürsten auf Verschleiß.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "417aa376-4b96-4e93-a6b7-5e917ab6a82c",
              "parent_uuid": "cca9f3f1-d18c-447d-9d7c-2bae15cb01bb",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6c183863-239d-4742-8e7e-37cfbace6c66",
              "parent_uuid": "cca9f3f1-d18c-447d-9d7c-2bae15cb01bb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "64ac7cd1-539b-4024-8e95-d00e4dbe56cf",
                  "parent_uuid": "6c183863-239d-4742-8e7e-37cfbace6c66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e710be7f-774b-45b0-93d7-fcd7d6d52890",
              "parent_uuid": "cca9f3f1-d18c-447d-9d7c-2bae15cb01bb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5234b6c4-a7ec-40d9-9794-2b5e77e6402b",
                  "parent_uuid": "e710be7f-774b-45b0-93d7-fcd7d6d52890",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54315ac2-4c0f-4b43-8a9a-c72885ec2f9a",
              "parent_uuid": "cca9f3f1-d18c-447d-9d7c-2bae15cb01bb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "166c238e-c8a4-4c85-8eba-327c1fbfda5a",
                  "parent_uuid": "54315ac2-4c0f-4b43-8a9a-c72885ec2f9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78cbd8f7-c2aa-4fa9-ae99-e77c0b21d19e",
              "parent_uuid": "cca9f3f1-d18c-447d-9d7c-2bae15cb01bb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1c62b9a2-5ee3-4ac2-8802-d42941785226",
                  "parent_uuid": "78cbd8f7-c2aa-4fa9-ae99-e77c0b21d19e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5fc3f39-8185-454e-a78a-b62e39245f6b",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e162eae-ae30-44ed-9e9f-ef5409f4e306",
              "parent_uuid": "c5fc3f39-8185-454e-a78a-b62e39245f6b",
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
                  "51"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Vision-Einheiten<br>  -Reinigen Sie die Oberfläche der Abdeckung vorsichtig mit dem Staubsauger und  mit einem Microphasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "019c9133-c44a-4898-b5e0-f2f092111ed8",
              "parent_uuid": "c5fc3f39-8185-454e-a78a-b62e39245f6b",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5398ff84-dd2c-4ef6-bd50-a031db97e4b7",
              "parent_uuid": "c5fc3f39-8185-454e-a78a-b62e39245f6b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04ab827b-d13c-4dc2-bf96-4264c2364051",
                  "parent_uuid": "5398ff84-dd2c-4ef6-bd50-a031db97e4b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79cc3faa-4b50-44ab-9608-82129f5f8662",
              "parent_uuid": "c5fc3f39-8185-454e-a78a-b62e39245f6b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04b2a2ad-a666-47ce-ae81-51b4330df68c",
                  "parent_uuid": "79cc3faa-4b50-44ab-9608-82129f5f8662",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d6f16b3-73e4-44c3-95d8-b0b1dd1316ed",
              "parent_uuid": "c5fc3f39-8185-454e-a78a-b62e39245f6b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "469ca76b-26a1-45b9-ae40-a18e7b245c65",
                  "parent_uuid": "4d6f16b3-73e4-44c3-95d8-b0b1dd1316ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87f7a453-2f61-46cc-9a6c-25cff468a3e6",
              "parent_uuid": "c5fc3f39-8185-454e-a78a-b62e39245f6b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "37e6f56a-10b4-484b-8f7d-43901b647252",
                  "parent_uuid": "87f7a453-2f61-46cc-9a6c-25cff468a3e6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c6be279c-5de6-43a2-a495-d4b2834c9692",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "002a071a-359a-4d4e-9e99-8bb8e1f7db1e",
              "parent_uuid": "c6be279c-5de6-43a2-a495-d4b2834c9692",
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
                  "86"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Vision-Linsen<br>  -Reinige die Oberfläche der Linse vorsichtig mit dem Staubsauger/Druckluftpistole und mit einem Microphasertuch.<br>  -Bei Flecken auf der Linse, muss ein Microphasertuch mit wenig Senorreiniger angewendet werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6f9c377d-80ab-4767-8253-1c82b416a0b0",
              "parent_uuid": "c6be279c-5de6-43a2-a495-d4b2834c9692",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "637e8148-d2a3-48a0-b3e1-7c2edfe6284e",
              "parent_uuid": "c6be279c-5de6-43a2-a495-d4b2834c9692",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b0212715-ea09-4cc1-b276-8635e08f49aa",
                  "parent_uuid": "637e8148-d2a3-48a0-b3e1-7c2edfe6284e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4db1c60-b9f5-4a3f-924f-7b1cb014f471",
              "parent_uuid": "c6be279c-5de6-43a2-a495-d4b2834c9692",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9066f283-e997-45d3-b9ee-1302830ec4bd",
                  "parent_uuid": "e4db1c60-b9f5-4a3f-924f-7b1cb014f471",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a947b161-c6e7-4a9e-9d8e-c1a7e81f86b1",
              "parent_uuid": "c6be279c-5de6-43a2-a495-d4b2834c9692",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ed8aa62d-930f-4b30-8841-9c571ba71e5c",
                  "parent_uuid": "a947b161-c6e7-4a9e-9d8e-c1a7e81f86b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8bb5c8a-c6ec-4242-889c-0cae98dac62a",
              "parent_uuid": "c6be279c-5de6-43a2-a495-d4b2834c9692",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7e281780-48ef-42f0-8fe4-780b07e75acb",
                  "parent_uuid": "d8bb5c8a-c6ec-4242-889c-0cae98dac62a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c40a922f-e497-433f-8437-cf8e3a767a31",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74495661-29b5-41d3-959c-9822ad6e27d9",
              "parent_uuid": "c40a922f-e497-433f-8437-cf8e3a767a31",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Speicherplatz<br>  -Überprüfe den Speicherplatz auf dem NAS, falls dieser überläuft können alte Daten gelöscht werden.<br>  -Überprüfen den Speicherplatz auf dem Lokalen Laufwerken, falls der überläuft können Logdateien gelöscht werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0e71153d-bad4-4a32-8006-08d8e1bb8927",
              "parent_uuid": "c40a922f-e497-433f-8437-cf8e3a767a31",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4c71d002-eb0d-4f41-abef-8c84194c0657",
              "parent_uuid": "c40a922f-e497-433f-8437-cf8e3a767a31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d80178af-92fd-4dfd-bd2c-459ac4ffd6c3",
                  "parent_uuid": "4c71d002-eb0d-4f41-abef-8c84194c0657",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3382afe2-6a15-4cc6-9b73-0093e951708e",
              "parent_uuid": "c40a922f-e497-433f-8437-cf8e3a767a31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f8b4d92b-63ca-495e-beb6-c566ebc53450",
                  "parent_uuid": "3382afe2-6a15-4cc6-9b73-0093e951708e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ce3a2f1-b8f1-40b2-b84a-6d0572a0a748",
              "parent_uuid": "c40a922f-e497-433f-8437-cf8e3a767a31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "afb24f1e-1ad7-4890-a99f-d087a051088b",
                  "parent_uuid": "1ce3a2f1-b8f1-40b2-b84a-6d0572a0a748",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5badbf45-11f3-4ae0-ae1f-a929bd12e08d",
              "parent_uuid": "c40a922f-e497-433f-8437-cf8e3a767a31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "edf3f552-c852-496a-b5cf-9081e733ffb2",
                  "parent_uuid": "5badbf45-11f3-4ae0-ae1f-a929bd12e08d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b71a8ff2-692c-43af-b15e-78e1f3661419",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0281f2e-9c47-47ab-b57f-50f4889809b2",
              "parent_uuid": "b71a8ff2-692c-43af-b15e-78e1f3661419",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "f523cea0-2356-4828-9af5-aecc7a895023",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed0d8a7d-375d-46f1-ab98-c1e896351a91",
              "parent_uuid": "f523cea0-2356-4828-9af5-aecc7a895023",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "14fd0eef-0521-4579-a02b-c510515b94b4",
          "parent_uuid": "3100de8a-12ed-4739-a3aa-cb0e720ebd19",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc415b89-47ea-4bed-a1fc-3c1c4c3bddbf",
              "parent_uuid": "14fd0eef-0521-4579-a02b-c510515b94b4",
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
                  "uuid": "d307fed3-4c33-4600-b61d-a73e343d1b9a",
                  "parent_uuid": "fc415b89-47ea-4bed-a1fc-3c1c4c3bddbf",
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
          "sort": 30,
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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
		,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '58A6D34C-2D4B-4F8A-B831-60488591AEDC'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

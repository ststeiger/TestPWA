
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
  "uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "5014ea89-75bd-49d6-baaa-1b8bb35dac85",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "ac607a00-6d01-4a62-accf-4f1c21410342",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "da6a1274-7b30-49f4-83b7-98d18bcefbd2",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "b1cd70e0-37e6-4b6a-ac3a-f234dbe29c32",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "63bbc3a0-2415-46e7-9c34-d223949f5e9e",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "a62e4c90-9a3c-4682-8d38-869c04c9a427",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "f3d2db98-bb60-4b3d-8459-7b0f9509638f",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
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
      "uuid": "b20032ff-c964-4749-9621-f410877fab66",
      "parent_uuid": "9ec3a655-05e7-4e4d-885a-462fac91683d",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "cbca4081-8e85-4d03-add5-5c5f04a8b6db",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "3855d1b4-6013-4e9d-b41e-196890a13f24",
              "parent_uuid": "cbca4081-8e85-4d03-add5-5c5f04a8b6db",
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
              "uuid": "a86239c5-274b-4c08-a3e2-279e7f70ffaa",
              "parent_uuid": "cbca4081-8e85-4d03-add5-5c5f04a8b6db",
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
              "uuid": "47e20853-d964-442e-b114-1978a70e029f",
              "parent_uuid": "cbca4081-8e85-4d03-add5-5c5f04a8b6db",
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
              "uuid": "7f89d861-e6ee-4f61-a2aa-cfb6b1f775ad",
              "parent_uuid": "cbca4081-8e85-4d03-add5-5c5f04a8b6db",
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
          "uuid": "2111086e-cd0a-46bc-80cc-b5762353232d",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "1c8fa1f9-2bf3-4576-9199-af3f00f1d4e1",
              "parent_uuid": "2111086e-cd0a-46bc-80cc-b5762353232d",
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
              "uuid": "640f3851-bd67-450f-bd07-03c938590991",
              "parent_uuid": "2111086e-cd0a-46bc-80cc-b5762353232d",
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
              "uuid": "c7fa0c11-ec3b-4959-9e37-54c8b9b08695",
              "parent_uuid": "2111086e-cd0a-46bc-80cc-b5762353232d",
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
              "uuid": "d3c11f1a-1624-4dfe-a3e3-59fa660379f0",
              "parent_uuid": "2111086e-cd0a-46bc-80cc-b5762353232d",
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
          "uuid": "73b10691-3707-47e9-ab10-995078c68f99",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "606c16a3-bb46-4c35-94c4-cc98c9379af0",
              "parent_uuid": "73b10691-3707-47e9-ab10-995078c68f99",
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
              "uuid": "701d4fad-794c-480f-854c-a5e471b70a92",
              "parent_uuid": "73b10691-3707-47e9-ab10-995078c68f99",
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
              "uuid": "83906ad5-8a8d-4fca-b4c9-8c1381b3a86f",
              "parent_uuid": "73b10691-3707-47e9-ab10-995078c68f99",
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
              "uuid": "35c3bc53-7bf8-4238-9f78-f23e831e059b",
              "parent_uuid": "73b10691-3707-47e9-ab10-995078c68f99",
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
              "uuid": "f33b1750-c546-4c99-9bd6-8d1ee1c9f15a",
              "parent_uuid": "73b10691-3707-47e9-ab10-995078c68f99",
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
              "uuid": "3a462bc8-4cb8-45c1-a00b-410c833f6bfa",
              "parent_uuid": "73b10691-3707-47e9-ab10-995078c68f99",
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
          "uuid": "b7cb92ad-ca8a-45bb-a372-3e57474646af",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "67adc321-3a85-464e-be1d-4322358c0bd4",
              "parent_uuid": "b7cb92ad-ca8a-45bb-a372-3e57474646af",
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
          "uuid": "b38f699c-9e54-4acb-97a4-8c7df3904783",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5e124f6-9345-43a3-ba51-5d23a577ec80",
              "parent_uuid": "b38f699c-9e54-4acb-97a4-8c7df3904783",
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
              "uuid": "11d7957e-e84c-4dcd-a6e8-46217ffa0628",
              "parent_uuid": "b38f699c-9e54-4acb-97a4-8c7df3904783",
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
              "uuid": "e768291e-f627-4634-a877-9318b33b10ed",
              "parent_uuid": "b38f699c-9e54-4acb-97a4-8c7df3904783",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6a33c73e-1dfc-42bd-9d8a-cf4a70e7bbbf",
                  "parent_uuid": "e768291e-f627-4634-a877-9318b33b10ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74e24d64-660f-4045-aabf-10cad0aba159",
              "parent_uuid": "b38f699c-9e54-4acb-97a4-8c7df3904783",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e930f1b4-5274-4f69-8d72-3d18bf345b8a",
                  "parent_uuid": "74e24d64-660f-4045-aabf-10cad0aba159",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ba37c4a-3747-41a1-90c3-dcb97e2af9cb",
              "parent_uuid": "b38f699c-9e54-4acb-97a4-8c7df3904783",
              "tagName": "td",
              "properties": [
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
                  "uuid": "965e6347-5a2e-4194-b683-01e1735baaec",
                  "parent_uuid": "8ba37c4a-3747-41a1-90c3-dcb97e2af9cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f8e3dc8-3409-47ba-ab01-71ec8b32b166",
              "parent_uuid": "b38f699c-9e54-4acb-97a4-8c7df3904783",
              "tagName": "td",
              "properties": [
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
                  "uuid": "33456d05-430f-4189-9425-bcc82f4729a8",
                  "parent_uuid": "6f8e3dc8-3409-47ba-ab01-71ec8b32b166",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3ef08d1d-90a8-40fc-89c4-a9b852bf06c5",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6dfba184-b342-4651-a357-85f3b40692b6",
              "parent_uuid": "3ef08d1d-90a8-40fc-89c4-a9b852bf06c5",
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
              "uuid": "5356c9ab-5ce4-4a14-9994-5d4bd47d2ef9",
              "parent_uuid": "3ef08d1d-90a8-40fc-89c4-a9b852bf06c5",
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
              "uuid": "1903e324-03d9-426d-af4f-b7ceb1d3b576",
              "parent_uuid": "3ef08d1d-90a8-40fc-89c4-a9b852bf06c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c3f1ed3-16e4-4173-9f10-be154fbba56f",
                  "parent_uuid": "1903e324-03d9-426d-af4f-b7ceb1d3b576",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3f30612-1aac-41a7-bf3f-5cb0a1f45618",
              "parent_uuid": "3ef08d1d-90a8-40fc-89c4-a9b852bf06c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bc3d766e-801d-448d-a186-6b2b4c05f160",
                  "parent_uuid": "a3f30612-1aac-41a7-bf3f-5cb0a1f45618",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e6bf09d-ce58-45b8-b06a-5f07248ba0a0",
              "parent_uuid": "3ef08d1d-90a8-40fc-89c4-a9b852bf06c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "96cecdb7-7742-4fa1-aa72-dd47a74dbd53",
                  "parent_uuid": "2e6bf09d-ce58-45b8-b06a-5f07248ba0a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2f6adde-4cb5-434c-aa35-78cae738b763",
              "parent_uuid": "3ef08d1d-90a8-40fc-89c4-a9b852bf06c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c4e1acc2-95b0-4f61-8752-778e957303bf",
                  "parent_uuid": "f2f6adde-4cb5-434c-aa35-78cae738b763",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "96557ee1-4ca0-4155-8a2e-34b43a92ad75",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "567a1217-b94b-4401-b645-7556b0d6cc06",
              "parent_uuid": "96557ee1-4ca0-4155-8a2e-34b43a92ad75",
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
              "uuid": "1c27479d-c946-45c2-8b38-72b02c865ece",
              "parent_uuid": "96557ee1-4ca0-4155-8a2e-34b43a92ad75",
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
              "uuid": "af174613-27f1-4995-8ae3-57dcc28738f1",
              "parent_uuid": "96557ee1-4ca0-4155-8a2e-34b43a92ad75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e634d25c-d1f9-4460-b9e1-295b4f1e2565",
                  "parent_uuid": "af174613-27f1-4995-8ae3-57dcc28738f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7dac1a5-b6ac-46f7-bc4c-6db14e9a8df1",
              "parent_uuid": "96557ee1-4ca0-4155-8a2e-34b43a92ad75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7326d33e-1c73-4d91-b5a0-748397bf6e0d",
                  "parent_uuid": "a7dac1a5-b6ac-46f7-bc4c-6db14e9a8df1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bc47ad6-af92-4bf9-a103-8bba3389bf87",
              "parent_uuid": "96557ee1-4ca0-4155-8a2e-34b43a92ad75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a74fa7b2-2498-4b5d-a720-861f6029bf5d",
                  "parent_uuid": "7bc47ad6-af92-4bf9-a103-8bba3389bf87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75a1db50-b258-4a4f-a65f-75a1eb4fceba",
              "parent_uuid": "96557ee1-4ca0-4155-8a2e-34b43a92ad75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "164d9a13-2300-48ae-bff7-052e9c864f62",
                  "parent_uuid": "75a1db50-b258-4a4f-a65f-75a1eb4fceba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "682bcc7e-c4d0-476c-9e57-66d594c5218a",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5234c938-a2b7-45d2-a33f-f0eb916ce576",
              "parent_uuid": "682bcc7e-c4d0-476c-9e57-66d594c5218a",
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
              "uuid": "0b89788c-f97a-4fa2-841e-0d9195cb3ddf",
              "parent_uuid": "682bcc7e-c4d0-476c-9e57-66d594c5218a",
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
              "uuid": "653270b0-680d-4839-a04c-b76826a50191",
              "parent_uuid": "682bcc7e-c4d0-476c-9e57-66d594c5218a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a430e3d0-0586-4b50-bced-5c4ed0bd66c8",
                  "parent_uuid": "653270b0-680d-4839-a04c-b76826a50191",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec381839-a18c-4de7-b4a6-21ca0d34a98c",
              "parent_uuid": "682bcc7e-c4d0-476c-9e57-66d594c5218a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94111809-50ed-49d4-9f96-a47ca831ebdc",
                  "parent_uuid": "ec381839-a18c-4de7-b4a6-21ca0d34a98c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efebdcf7-7725-42ff-a143-02964d6dbfb5",
              "parent_uuid": "682bcc7e-c4d0-476c-9e57-66d594c5218a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "786fd903-a74c-40ff-831b-b31e02e77b32",
                  "parent_uuid": "efebdcf7-7725-42ff-a143-02964d6dbfb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a19b5205-1834-4874-b65f-bdb4cbcc73d9",
              "parent_uuid": "682bcc7e-c4d0-476c-9e57-66d594c5218a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d7cd186-c3fd-4641-8b76-a07d3edfeeb3",
                  "parent_uuid": "a19b5205-1834-4874-b65f-bdb4cbcc73d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ab0ff4cf-b054-4140-a93c-f2ac8e233917",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbba4fea-99db-44e8-aa69-7196f857832b",
              "parent_uuid": "ab0ff4cf-b054-4140-a93c-f2ac8e233917",
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
              "uuid": "8efb9159-6cb3-46a9-99d2-53d42f8d6fdd",
              "parent_uuid": "ab0ff4cf-b054-4140-a93c-f2ac8e233917",
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
              "uuid": "a871c0c7-9dd6-465a-8ca2-bb58a3ad8680",
              "parent_uuid": "ab0ff4cf-b054-4140-a93c-f2ac8e233917",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "623387c5-da12-4cba-a5ad-2a79bd4bb7c8",
                  "parent_uuid": "a871c0c7-9dd6-465a-8ca2-bb58a3ad8680",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f34673f2-a708-459e-9f89-558e7d6510d8",
              "parent_uuid": "ab0ff4cf-b054-4140-a93c-f2ac8e233917",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83946bde-947b-455b-aaaa-82d02f549a46",
                  "parent_uuid": "f34673f2-a708-459e-9f89-558e7d6510d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "531bf6f6-a2eb-497a-9158-166396706b53",
              "parent_uuid": "ab0ff4cf-b054-4140-a93c-f2ac8e233917",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "906d0b28-f7de-470d-9c13-6ef6f52e5d25",
                  "parent_uuid": "531bf6f6-a2eb-497a-9158-166396706b53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76ce7292-9fea-4b96-939d-5c7bf0c9aaa7",
              "parent_uuid": "ab0ff4cf-b054-4140-a93c-f2ac8e233917",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f6ceb40-fab4-47cb-98aa-a8e48f121601",
                  "parent_uuid": "76ce7292-9fea-4b96-939d-5c7bf0c9aaa7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9da1f6f-e964-47c5-8a3f-7699aaf07258",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fddb17ff-d306-447d-b9f3-ca2befab3f09",
              "parent_uuid": "b9da1f6f-e964-47c5-8a3f-7699aaf07258",
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
              "uuid": "1c7be0f8-c652-4f6f-9a5d-2a883fd25069",
              "parent_uuid": "b9da1f6f-e964-47c5-8a3f-7699aaf07258",
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
              "uuid": "c0e2e134-cebf-4851-8662-b9288a7a4e2b",
              "parent_uuid": "b9da1f6f-e964-47c5-8a3f-7699aaf07258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ecc50b9-b6d7-4f28-b863-9e6615abdc9a",
                  "parent_uuid": "c0e2e134-cebf-4851-8662-b9288a7a4e2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76510e2d-a2f4-4b45-aad9-ff376dd6da28",
              "parent_uuid": "b9da1f6f-e964-47c5-8a3f-7699aaf07258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31a38be6-ee17-41d0-a3eb-8225ccd3562e",
                  "parent_uuid": "76510e2d-a2f4-4b45-aad9-ff376dd6da28",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a74b7b14-e9cf-4195-b3e6-984ff3716c7f",
              "parent_uuid": "b9da1f6f-e964-47c5-8a3f-7699aaf07258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e17677ab-6d79-4003-bef9-b699f043c806",
                  "parent_uuid": "a74b7b14-e9cf-4195-b3e6-984ff3716c7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2acef7cd-50ed-41c8-ae8e-ab142e881c60",
              "parent_uuid": "b9da1f6f-e964-47c5-8a3f-7699aaf07258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "945fef2c-6056-480b-87be-4f73a6530fc7",
                  "parent_uuid": "2acef7cd-50ed-41c8-ae8e-ab142e881c60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8115553f-ba52-43f6-837c-ead39eb77755",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c33cd0dd-a861-47d3-b8a7-749a382e2d1a",
              "parent_uuid": "8115553f-ba52-43f6-837c-ead39eb77755",
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
              "uuid": "5f3eee68-b022-435c-858e-42962a020e4d",
              "parent_uuid": "8115553f-ba52-43f6-837c-ead39eb77755",
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
              "uuid": "53f1e36a-ec36-4ac3-ae91-02d34d484e51",
              "parent_uuid": "8115553f-ba52-43f6-837c-ead39eb77755",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5190413a-12d6-40dd-a994-5b10309524d5",
                  "parent_uuid": "53f1e36a-ec36-4ac3-ae91-02d34d484e51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4a5b034-5d4f-4265-85ce-283c882ba73a",
              "parent_uuid": "8115553f-ba52-43f6-837c-ead39eb77755",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2009db8c-bb17-4701-ae81-cf3ce38f2e7b",
                  "parent_uuid": "a4a5b034-5d4f-4265-85ce-283c882ba73a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0c9578e-a2ea-40e2-8037-cf3fc95c6ee6",
              "parent_uuid": "8115553f-ba52-43f6-837c-ead39eb77755",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06e80f97-4788-4878-901e-ddbd36257281",
                  "parent_uuid": "a0c9578e-a2ea-40e2-8037-cf3fc95c6ee6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a922f9b-f16c-47c6-88b4-9cae4fce47a0",
              "parent_uuid": "8115553f-ba52-43f6-837c-ead39eb77755",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4704645-ed49-4057-8581-0c5652c0e27d",
                  "parent_uuid": "9a922f9b-f16c-47c6-88b4-9cae4fce47a0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9129a039-410e-47e2-8742-9c79529b9218",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c128d00f-b9a2-4de2-9b4a-4ce802225f79",
              "parent_uuid": "9129a039-410e-47e2-8742-9c79529b9218",
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
              "uuid": "55ac1277-87e6-48a1-8ac1-130718dee245",
              "parent_uuid": "9129a039-410e-47e2-8742-9c79529b9218",
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
              "uuid": "62c57fa2-6ae0-4b5c-9068-dca275434f5a",
              "parent_uuid": "9129a039-410e-47e2-8742-9c79529b9218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fa21b04-2ef5-423d-ae60-847c0a72410c",
                  "parent_uuid": "62c57fa2-6ae0-4b5c-9068-dca275434f5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6eb5ea04-9f0c-4b02-82a6-e498f8fc985f",
              "parent_uuid": "9129a039-410e-47e2-8742-9c79529b9218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e70a54d8-871f-4b44-aece-47f57ab3f1f9",
                  "parent_uuid": "6eb5ea04-9f0c-4b02-82a6-e498f8fc985f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c2c4698-f635-4e74-a276-5893a475b6b9",
              "parent_uuid": "9129a039-410e-47e2-8742-9c79529b9218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc317597-445e-4d0d-be91-75aa64004ed9",
                  "parent_uuid": "0c2c4698-f635-4e74-a276-5893a475b6b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "585bf718-f78b-4021-ae78-c4bd8feff7b9",
              "parent_uuid": "9129a039-410e-47e2-8742-9c79529b9218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24170afe-f6cc-4ed0-8d6d-0ece8887b5d8",
                  "parent_uuid": "585bf718-f78b-4021-ae78-c4bd8feff7b9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1eb5939f-5346-4269-97ff-1f0fedf2526b",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58c75776-827e-41ee-9448-1e451e9d17cb",
              "parent_uuid": "1eb5939f-5346-4269-97ff-1f0fedf2526b",
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
              "uuid": "8c86576e-19a0-4ba2-9ff1-2cd70aad569d",
              "parent_uuid": "1eb5939f-5346-4269-97ff-1f0fedf2526b",
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
              "uuid": "92586c44-aba0-4f7b-8874-5df56d8e7979",
              "parent_uuid": "1eb5939f-5346-4269-97ff-1f0fedf2526b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76ddff7f-378e-4415-ba85-bdd3494d1234",
                  "parent_uuid": "92586c44-aba0-4f7b-8874-5df56d8e7979",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "124e76ba-dba9-4546-bb69-4b116e2abd09",
              "parent_uuid": "1eb5939f-5346-4269-97ff-1f0fedf2526b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a089f7aa-b47f-4065-8888-3a31abdafd8d",
                  "parent_uuid": "124e76ba-dba9-4546-bb69-4b116e2abd09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecdb9217-d4c6-4198-97d7-3394e30f04e2",
              "parent_uuid": "1eb5939f-5346-4269-97ff-1f0fedf2526b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b170ed1f-5cf2-4499-83a0-aee4262ee8b4",
                  "parent_uuid": "ecdb9217-d4c6-4198-97d7-3394e30f04e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87b7f6a0-1812-4462-9276-03e2b0e1a9d6",
              "parent_uuid": "1eb5939f-5346-4269-97ff-1f0fedf2526b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "675b0d40-3df2-4aa4-b4af-848c3adb7d1c",
                  "parent_uuid": "87b7f6a0-1812-4462-9276-03e2b0e1a9d6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d3e0a9c3-f260-4abd-aaa9-ef6299e81ee8",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "044def45-97ac-4e0f-89ef-492030e1a778",
              "parent_uuid": "d3e0a9c3-f260-4abd-aaa9-ef6299e81ee8",
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
              "uuid": "59e20b78-a955-4322-9c49-5770cb96b89e",
              "parent_uuid": "d3e0a9c3-f260-4abd-aaa9-ef6299e81ee8",
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
              "uuid": "e3e3dc5c-5385-41f7-8977-6de5d407a8ce",
              "parent_uuid": "d3e0a9c3-f260-4abd-aaa9-ef6299e81ee8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c880586-b9ac-4ac8-bf54-2ee005a4a0ad",
                  "parent_uuid": "e3e3dc5c-5385-41f7-8977-6de5d407a8ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b46933f-c126-43f2-af11-60a1627da871",
              "parent_uuid": "d3e0a9c3-f260-4abd-aaa9-ef6299e81ee8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d115196-2494-499e-b6aa-9e0684d2dd58",
                  "parent_uuid": "9b46933f-c126-43f2-af11-60a1627da871",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b89595e0-692e-43e9-985d-f0b789d37874",
              "parent_uuid": "d3e0a9c3-f260-4abd-aaa9-ef6299e81ee8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d187cd79-a832-4ed3-b64d-4068aa04a25e",
                  "parent_uuid": "b89595e0-692e-43e9-985d-f0b789d37874",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08152768-2c5c-4feb-802a-6b10c49c4757",
              "parent_uuid": "d3e0a9c3-f260-4abd-aaa9-ef6299e81ee8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ae501f3-da89-43fe-8ae9-939c29133b4d",
                  "parent_uuid": "08152768-2c5c-4feb-802a-6b10c49c4757",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d59f5ec-4992-4284-bd10-9b494731493e",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01d7a003-0dc0-4b53-b1d4-32406c710489",
              "parent_uuid": "9d59f5ec-4992-4284-bd10-9b494731493e",
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
              "uuid": "fd48ade7-56b4-4734-9851-8e94e2490c8e",
              "parent_uuid": "9d59f5ec-4992-4284-bd10-9b494731493e",
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
              "uuid": "ab76c389-1cf5-462a-9d45-beceb330e586",
              "parent_uuid": "9d59f5ec-4992-4284-bd10-9b494731493e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34785911-906b-4385-933f-b115008e92d1",
                  "parent_uuid": "ab76c389-1cf5-462a-9d45-beceb330e586",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dcf2ebbb-9e1b-4479-839d-d742584df0c0",
              "parent_uuid": "9d59f5ec-4992-4284-bd10-9b494731493e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c31bcf9-97c1-4efc-a082-e27a1e2d9670",
                  "parent_uuid": "dcf2ebbb-9e1b-4479-839d-d742584df0c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2a7a0e1-6f55-4302-a8da-ec5c9943eefe",
              "parent_uuid": "9d59f5ec-4992-4284-bd10-9b494731493e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe63a7b4-d62b-4474-b04b-3c67c3681efd",
                  "parent_uuid": "b2a7a0e1-6f55-4302-a8da-ec5c9943eefe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e16c54b4-823c-47c1-a3a4-3aec174840d6",
              "parent_uuid": "9d59f5ec-4992-4284-bd10-9b494731493e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57f80449-8dcc-408d-b00e-04105623c6be",
                  "parent_uuid": "e16c54b4-823c-47c1-a3a4-3aec174840d6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "560e34f8-bcdb-4452-bb32-3fd9563cd910",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "974951d6-e1e3-43f6-a142-3aa0fcc6ad0a",
              "parent_uuid": "560e34f8-bcdb-4452-bb32-3fd9563cd910",
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
              "uuid": "3ca8cca8-ebf2-496b-95a4-138e5febcb7e",
              "parent_uuid": "560e34f8-bcdb-4452-bb32-3fd9563cd910",
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
              "uuid": "3e17cf29-e8cb-4abc-a5a9-578f2787d7dd",
              "parent_uuid": "560e34f8-bcdb-4452-bb32-3fd9563cd910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8028c642-fe41-41fd-ae8a-e1d01050c399",
                  "parent_uuid": "3e17cf29-e8cb-4abc-a5a9-578f2787d7dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5d6821f-f87b-464d-acd7-ce07d1f0ee4d",
              "parent_uuid": "560e34f8-bcdb-4452-bb32-3fd9563cd910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf441ef3-5852-4669-928b-1ffaa04c8591",
                  "parent_uuid": "a5d6821f-f87b-464d-acd7-ce07d1f0ee4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7734298-738c-45c6-8512-d2a962c4bcad",
              "parent_uuid": "560e34f8-bcdb-4452-bb32-3fd9563cd910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77ba306b-8d57-4205-b237-6306397556b4",
                  "parent_uuid": "d7734298-738c-45c6-8512-d2a962c4bcad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f50158b6-b5d1-4e9e-9e83-80ae32187ce1",
              "parent_uuid": "560e34f8-bcdb-4452-bb32-3fd9563cd910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0eadaee-4be1-4fb3-8bd9-d39853873f8e",
                  "parent_uuid": "f50158b6-b5d1-4e9e-9e83-80ae32187ce1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "477f4b91-800a-4d7a-9462-8ad43459666f",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7ed2da7-ba22-4c19-bbba-27a5ce85739c",
              "parent_uuid": "477f4b91-800a-4d7a-9462-8ad43459666f",
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
              "uuid": "567e8016-c352-468b-b556-2bba87866728",
              "parent_uuid": "477f4b91-800a-4d7a-9462-8ad43459666f",
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
              "uuid": "8ff00f30-d5aa-455b-a496-4797432259ec",
              "parent_uuid": "477f4b91-800a-4d7a-9462-8ad43459666f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f3cf9dd-994b-4e29-a323-fa083ca8484b",
                  "parent_uuid": "8ff00f30-d5aa-455b-a496-4797432259ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "428e846c-8d39-4507-ba4f-4e5b03cbd1e2",
              "parent_uuid": "477f4b91-800a-4d7a-9462-8ad43459666f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a7d2b51-a11c-4eab-820c-45768467f63a",
                  "parent_uuid": "428e846c-8d39-4507-ba4f-4e5b03cbd1e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b0225eb-2af6-413c-9bca-bf14307c69e1",
              "parent_uuid": "477f4b91-800a-4d7a-9462-8ad43459666f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92e25dd1-edf6-478a-83f0-f0d2b4017632",
                  "parent_uuid": "3b0225eb-2af6-413c-9bca-bf14307c69e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f16ecadd-5460-4d97-8424-5f1068889a8f",
              "parent_uuid": "477f4b91-800a-4d7a-9462-8ad43459666f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "617dc098-fd07-4630-9175-ac92523d01fc",
                  "parent_uuid": "f16ecadd-5460-4d97-8424-5f1068889a8f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b39b66ea-3987-4337-bed4-a7c3e70570fe",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf9c7eac-d909-401a-9667-1785d98f012e",
              "parent_uuid": "b39b66ea-3987-4337-bed4-a7c3e70570fe",
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
              "uuid": "3250f181-cfb5-4bb9-9383-48dcc4ef1596",
              "parent_uuid": "b39b66ea-3987-4337-bed4-a7c3e70570fe",
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
              "uuid": "e7e72efc-8756-4166-90c8-7fc2b21308a0",
              "parent_uuid": "b39b66ea-3987-4337-bed4-a7c3e70570fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce8e40bd-aed1-4951-b680-a67e0ba12874",
                  "parent_uuid": "e7e72efc-8756-4166-90c8-7fc2b21308a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bff33aae-1c8c-4a91-8e62-86fb0da26f00",
              "parent_uuid": "b39b66ea-3987-4337-bed4-a7c3e70570fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "584b3db4-3d9e-42c3-ab4a-7620adc081ea",
                  "parent_uuid": "bff33aae-1c8c-4a91-8e62-86fb0da26f00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e325736-f2a1-4b1c-a034-5e3f23b4548f",
              "parent_uuid": "b39b66ea-3987-4337-bed4-a7c3e70570fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb700109-da5f-4113-8c89-29d6eac97ae7",
                  "parent_uuid": "1e325736-f2a1-4b1c-a034-5e3f23b4548f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d882ed8-1798-4d2b-8352-4774aa904443",
              "parent_uuid": "b39b66ea-3987-4337-bed4-a7c3e70570fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84a33259-149f-4109-a910-80d155c03f95",
                  "parent_uuid": "1d882ed8-1798-4d2b-8352-4774aa904443",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "43936cab-2b2e-40b3-a98f-cd2a6de57316",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f981ddd7-f0d1-4a67-a468-e291eab3fb6a",
              "parent_uuid": "43936cab-2b2e-40b3-a98f-cd2a6de57316",
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
              "uuid": "65b5b11e-2a78-42f2-aee3-645eac22a00e",
              "parent_uuid": "43936cab-2b2e-40b3-a98f-cd2a6de57316",
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
              "uuid": "84c2bfc7-03fe-4f78-ad71-b60268a8f3e5",
              "parent_uuid": "43936cab-2b2e-40b3-a98f-cd2a6de57316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23adf4e8-5ae4-441b-9ba6-72fc75f5d4c9",
                  "parent_uuid": "84c2bfc7-03fe-4f78-ad71-b60268a8f3e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39cd3699-4a62-40b3-ab12-b88cfcc2c58d",
              "parent_uuid": "43936cab-2b2e-40b3-a98f-cd2a6de57316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f25165ce-c6b8-4041-88e5-18041143cde4",
                  "parent_uuid": "39cd3699-4a62-40b3-ab12-b88cfcc2c58d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c9de9ca-8a17-4088-b262-885612af3a80",
              "parent_uuid": "43936cab-2b2e-40b3-a98f-cd2a6de57316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9963d418-134e-434d-beac-f4b1484841f9",
                  "parent_uuid": "2c9de9ca-8a17-4088-b262-885612af3a80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8815b19-2eac-4ab0-a54f-1e3737893cab",
              "parent_uuid": "43936cab-2b2e-40b3-a98f-cd2a6de57316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1bb7068-0e9e-4c3d-b481-36c7fa2430ea",
                  "parent_uuid": "a8815b19-2eac-4ab0-a54f-1e3737893cab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c304e1e-66bf-4197-aa52-d2767250f850",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2dee47e-9db4-4b31-8ed0-c6fa6896629a",
              "parent_uuid": "6c304e1e-66bf-4197-aa52-d2767250f850",
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
              "uuid": "5e0077a6-69ef-4ceb-afc6-d6dab2009602",
              "parent_uuid": "6c304e1e-66bf-4197-aa52-d2767250f850",
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
              "uuid": "ac1b0c18-fa66-4a41-95e6-32a718bd998f",
              "parent_uuid": "6c304e1e-66bf-4197-aa52-d2767250f850",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "598fa012-5e20-4a5b-8cbc-a82167d23cc8",
                  "parent_uuid": "ac1b0c18-fa66-4a41-95e6-32a718bd998f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4337383-87c4-449b-ab8d-49ac9b4160ee",
              "parent_uuid": "6c304e1e-66bf-4197-aa52-d2767250f850",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31b0c590-9717-4537-9d1e-42ea7b340f9d",
                  "parent_uuid": "b4337383-87c4-449b-ab8d-49ac9b4160ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d30672e4-fbe5-49ae-b18c-cdb687be1344",
              "parent_uuid": "6c304e1e-66bf-4197-aa52-d2767250f850",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5948ab39-5c7f-4b87-96b7-bea9675c7576",
                  "parent_uuid": "d30672e4-fbe5-49ae-b18c-cdb687be1344",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eca31d12-9c06-4e55-b61f-ca9c7b592a1c",
              "parent_uuid": "6c304e1e-66bf-4197-aa52-d2767250f850",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d06d4f1-d563-4774-9ae4-7b309f7bc3ae",
                  "parent_uuid": "eca31d12-9c06-4e55-b61f-ca9c7b592a1c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ad9c46a-aa6b-4c11-b6d9-b7048dd7a2bd",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0274602-ea67-45ea-81a6-4b819e864923",
              "parent_uuid": "1ad9c46a-aa6b-4c11-b6d9-b7048dd7a2bd",
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
          "uuid": "9b54ded8-b171-4255-a20d-c02159930275",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c10e99e4-fa2d-4fe1-8169-e1da6e91c6dc",
              "parent_uuid": "9b54ded8-b171-4255-a20d-c02159930275",
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
          "uuid": "e7c0c4ba-ef87-42e8-ba93-4657de50b7a6",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea8752f4-ee10-4b35-8b96-e8b037f5bdf7",
              "parent_uuid": "e7c0c4ba-ef87-42e8-ba93-4657de50b7a6",
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
                  "uuid": "7c91e212-80f5-411d-9793-db69dd8a5042",
                  "parent_uuid": "ea8752f4-ee10-4b35-8b96-e8b037f5bdf7",
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
          "uuid": "af85c7be-4a84-4667-89ee-342864fc9efa",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "073352ba-81fa-44b1-8aee-b8580fe4a466",
              "parent_uuid": "af85c7be-4a84-4667-89ee-342864fc9efa",
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
          "uuid": "da1807bd-1a92-4d0d-b964-804de70783a4",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b79233c1-9f7e-42f1-bd10-2b1b04ddb921",
              "parent_uuid": "da1807bd-1a92-4d0d-b964-804de70783a4",
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
          "uuid": "21a77ea5-8091-4197-af77-a5cfba071f65",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f09b04e7-d206-4e69-aa70-a1186b9c05d9",
              "parent_uuid": "21a77ea5-8091-4197-af77-a5cfba071f65",
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
              "uuid": "1cb62367-3323-4dc9-9c31-ea529907dcd7",
              "parent_uuid": "21a77ea5-8091-4197-af77-a5cfba071f65",
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
              "uuid": "d42d29e6-54f4-4432-b600-ac339b049d14",
              "parent_uuid": "21a77ea5-8091-4197-af77-a5cfba071f65",
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
              "uuid": "bbd4542f-de9e-4f12-af92-6f3e0cf88f53",
              "parent_uuid": "21a77ea5-8091-4197-af77-a5cfba071f65",
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
              "uuid": "4aeb7baa-99b6-4c36-b623-74f99221ce9f",
              "parent_uuid": "21a77ea5-8091-4197-af77-a5cfba071f65",
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
              "uuid": "176b0200-e54a-42f0-b962-52397c694c5e",
              "parent_uuid": "21a77ea5-8091-4197-af77-a5cfba071f65",
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
          "uuid": "2396d308-8212-40e2-8040-5c27bf4f940c",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "857fb092-8db0-433a-9084-c9fffee1f02d",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b4e63fc-b1e4-4404-a6f5-ffb16fac5a69",
              "parent_uuid": "857fb092-8db0-433a-9084-c9fffee1f02d",
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
              "uuid": "5f55b639-b928-4737-8dbf-8282c19a575c",
              "parent_uuid": "857fb092-8db0-433a-9084-c9fffee1f02d",
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
              "uuid": "3cef2419-b7af-4742-8f26-f37b56db8619",
              "parent_uuid": "857fb092-8db0-433a-9084-c9fffee1f02d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a118ae82-d8db-4a06-8533-29329520b331",
                  "parent_uuid": "3cef2419-b7af-4742-8f26-f37b56db8619",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1db6c62c-b952-4809-8a8a-3b71536147db",
              "parent_uuid": "857fb092-8db0-433a-9084-c9fffee1f02d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd604dbc-e298-4a12-9d59-50231d4badd6",
                  "parent_uuid": "1db6c62c-b952-4809-8a8a-3b71536147db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "105caf43-5027-47b1-9997-baa15adce097",
              "parent_uuid": "857fb092-8db0-433a-9084-c9fffee1f02d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9794711e-a151-4b5d-9a3d-80981bc4e37c",
                  "parent_uuid": "105caf43-5027-47b1-9997-baa15adce097",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad7add22-8d1e-4b7b-9436-fae0aefe9dcf",
              "parent_uuid": "857fb092-8db0-433a-9084-c9fffee1f02d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63397934-af92-487f-8a1b-63f64d042e8b",
                  "parent_uuid": "ad7add22-8d1e-4b7b-9436-fae0aefe9dcf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0965505e-56cf-4009-89a1-a019d4890485",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7bf6bd69-5f77-44f6-a5e3-5205922d4c04",
              "parent_uuid": "0965505e-56cf-4009-89a1-a019d4890485",
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
              "uuid": "44049471-fd9f-4310-ad2b-5f76d4aa454a",
              "parent_uuid": "0965505e-56cf-4009-89a1-a019d4890485",
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
              "uuid": "65133c1d-e58e-4474-af52-a49c911c702e",
              "parent_uuid": "0965505e-56cf-4009-89a1-a019d4890485",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b927120-e3d8-44b3-8c5c-f55351f2a6a9",
                  "parent_uuid": "65133c1d-e58e-4474-af52-a49c911c702e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a80fac87-0e20-4663-8b1f-e31bd7c1eac3",
              "parent_uuid": "0965505e-56cf-4009-89a1-a019d4890485",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ec7d2f3-d3b6-403f-8ca4-98631cb7ab34",
                  "parent_uuid": "a80fac87-0e20-4663-8b1f-e31bd7c1eac3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a1dffc3-d8df-4b4a-bd14-13f12b61a3a6",
              "parent_uuid": "0965505e-56cf-4009-89a1-a019d4890485",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e17b35b-3697-4b17-b083-a0f941a14b4b",
                  "parent_uuid": "3a1dffc3-d8df-4b4a-bd14-13f12b61a3a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45748e10-43d7-4c99-b151-d63cd153d2b7",
              "parent_uuid": "0965505e-56cf-4009-89a1-a019d4890485",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6cf0f56b-993d-41dc-983f-2df05799b3d7",
                  "parent_uuid": "45748e10-43d7-4c99-b151-d63cd153d2b7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0ae541b0-2176-474b-9985-8cf7fd31c847",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6835fe9c-9a02-44d5-9bc8-7e9a90d66735",
              "parent_uuid": "0ae541b0-2176-474b-9985-8cf7fd31c847",
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
              "uuid": "f2b33925-02b9-4fe3-b7c0-5dddd46c513c",
              "parent_uuid": "0ae541b0-2176-474b-9985-8cf7fd31c847",
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
              "uuid": "8d3e567c-f5cc-4a8f-aebb-701113a0d8f5",
              "parent_uuid": "0ae541b0-2176-474b-9985-8cf7fd31c847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5567e89-b7e9-4f40-8091-ed5cbc9dd071",
                  "parent_uuid": "8d3e567c-f5cc-4a8f-aebb-701113a0d8f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30479d6c-8aa0-4dc5-8271-abd2197c8a7d",
              "parent_uuid": "0ae541b0-2176-474b-9985-8cf7fd31c847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03ad4311-8a64-4578-8781-6d6b8ac5222b",
                  "parent_uuid": "30479d6c-8aa0-4dc5-8271-abd2197c8a7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1b35de0-13fd-437a-8e9a-d5bd26bc2d14",
              "parent_uuid": "0ae541b0-2176-474b-9985-8cf7fd31c847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "815d8723-27f1-4ae0-810e-5a78170d5629",
                  "parent_uuid": "b1b35de0-13fd-437a-8e9a-d5bd26bc2d14",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52830eea-09a3-468b-941d-e186ef18ab45",
              "parent_uuid": "0ae541b0-2176-474b-9985-8cf7fd31c847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1e5d01c-8ea0-4c70-a771-51772c2e2ec1",
                  "parent_uuid": "52830eea-09a3-468b-941d-e186ef18ab45",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0da04320-03c8-4b7e-8cb5-96fd908b0e56",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04eaca17-dc0a-45c8-be77-398fbfd11706",
              "parent_uuid": "0da04320-03c8-4b7e-8cb5-96fd908b0e56",
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
              "uuid": "65ca0268-7d9e-49ca-b9f9-5ef484c93301",
              "parent_uuid": "0da04320-03c8-4b7e-8cb5-96fd908b0e56",
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
              "uuid": "8d6617dc-1920-4bff-b91e-418d8ea37b43",
              "parent_uuid": "0da04320-03c8-4b7e-8cb5-96fd908b0e56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7374588f-0d9f-431d-b02b-1ee4e4444b9c",
                  "parent_uuid": "8d6617dc-1920-4bff-b91e-418d8ea37b43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7da8ffb8-e127-44f1-a270-cbec1db573c1",
              "parent_uuid": "0da04320-03c8-4b7e-8cb5-96fd908b0e56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2923e6d-a7fa-49d0-84f9-a0ea4c741cc2",
                  "parent_uuid": "7da8ffb8-e127-44f1-a270-cbec1db573c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a9a67ff-22e4-4e78-a735-895bebc78dc9",
              "parent_uuid": "0da04320-03c8-4b7e-8cb5-96fd908b0e56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9420366-6b98-4c45-9bf5-f46c07ae374d",
                  "parent_uuid": "8a9a67ff-22e4-4e78-a735-895bebc78dc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bdd75f49-5698-4310-aafc-8efc84d4811d",
              "parent_uuid": "0da04320-03c8-4b7e-8cb5-96fd908b0e56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7e28237-fe19-46b3-ad41-da0363f67ecf",
                  "parent_uuid": "bdd75f49-5698-4310-aafc-8efc84d4811d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b3cdb7d-d018-4bb7-af44-8aa30239bfc8",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ca0da97-e6d7-419a-a510-bf895db502e0",
              "parent_uuid": "7b3cdb7d-d018-4bb7-af44-8aa30239bfc8",
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
          "uuid": "ddf8aa58-8e9a-4bd6-a66f-92a1e5064f60",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26d5cf58-2a12-4478-906c-6bf7f71ef080",
              "parent_uuid": "ddf8aa58-8e9a-4bd6-a66f-92a1e5064f60",
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
          "uuid": "f13622de-65b3-44cb-941c-3569d3acba7b",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6484b98-dd53-4852-ae11-745a62c5ad42",
              "parent_uuid": "f13622de-65b3-44cb-941c-3569d3acba7b",
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
                  "uuid": "1c8d25ce-086d-4db0-99bf-bd36948a40e3",
                  "parent_uuid": "c6484b98-dd53-4852-ae11-745a62c5ad42",
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
          "uuid": "1242fbdd-1a46-4367-9359-120a9dab4184",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "c26b042d-c299-42a0-bd3a-7ccce8160e47",
              "parent_uuid": "1242fbdd-1a46-4367-9359-120a9dab4184",
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
          "uuid": "b907d844-a7c5-4c3e-8ce8-484bb0f03168",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e1a24c2e-94b3-44c9-a503-094e2beebf12",
              "parent_uuid": "b907d844-a7c5-4c3e-8ce8-484bb0f03168",
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
          "uuid": "c6b95b06-c819-494c-840e-aff6ef8033fd",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b7cb696-e245-44bb-ba45-86ca16378430",
              "parent_uuid": "c6b95b06-c819-494c-840e-aff6ef8033fd",
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
              "uuid": "76527712-d390-41de-b3ae-1ccd576eb859",
              "parent_uuid": "c6b95b06-c819-494c-840e-aff6ef8033fd",
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
              "uuid": "d13b2a31-5b15-495c-8f99-203a0396451e",
              "parent_uuid": "c6b95b06-c819-494c-840e-aff6ef8033fd",
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
              "uuid": "ef5b771a-0cc5-4b5d-b7de-6bd28b21bf8f",
              "parent_uuid": "c6b95b06-c819-494c-840e-aff6ef8033fd",
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
              "uuid": "72eb64ea-551d-4f4f-abf7-4c64e91c250a",
              "parent_uuid": "c6b95b06-c819-494c-840e-aff6ef8033fd",
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
              "uuid": "3fbb2137-dc8f-454a-9d17-1d9e831781c9",
              "parent_uuid": "c6b95b06-c819-494c-840e-aff6ef8033fd",
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
          "uuid": "b7e0425a-8880-4148-a9d8-a706b85a2c2a",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0db07bcb-771c-4291-9f32-4eea5aabe138",
              "parent_uuid": "b7e0425a-8880-4148-a9d8-a706b85a2c2a",
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
              "uuid": "898709f3-6a1e-4bca-819f-98b51b971f59",
              "parent_uuid": "b7e0425a-8880-4148-a9d8-a706b85a2c2a",
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
              "uuid": "2f5212e0-f6a1-4d28-9ff7-5bb79c387d8d",
              "parent_uuid": "b7e0425a-8880-4148-a9d8-a706b85a2c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b87845da-5191-4d7e-9a25-f94a68974425",
                  "parent_uuid": "2f5212e0-f6a1-4d28-9ff7-5bb79c387d8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f47c9f21-578b-4a50-b097-0b621f737adb",
              "parent_uuid": "b7e0425a-8880-4148-a9d8-a706b85a2c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e0b9733-975c-457f-951e-3ee8ace129ca",
                  "parent_uuid": "f47c9f21-578b-4a50-b097-0b621f737adb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d66ac75e-cb2c-49be-8194-adf5f0afd206",
              "parent_uuid": "b7e0425a-8880-4148-a9d8-a706b85a2c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48f811d4-c02d-4818-bc9c-dd25d63b8025",
                  "parent_uuid": "d66ac75e-cb2c-49be-8194-adf5f0afd206",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a933638a-8bc8-4611-8784-48adffe7131d",
              "parent_uuid": "b7e0425a-8880-4148-a9d8-a706b85a2c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0961ceb1-f4fc-4831-b0c6-aac50bab1814",
                  "parent_uuid": "a933638a-8bc8-4611-8784-48adffe7131d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5c936b6-30dc-4e1c-bee9-7df4ec26f8fa",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "652f43f2-d69f-4d0e-ad8f-f0e315c31107",
              "parent_uuid": "c5c936b6-30dc-4e1c-bee9-7df4ec26f8fa",
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
              "uuid": "eedf5382-9544-4486-a33d-066cb073bd00",
              "parent_uuid": "c5c936b6-30dc-4e1c-bee9-7df4ec26f8fa",
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
              "uuid": "3605a0a4-5cbc-4540-8da0-874a53e29946",
              "parent_uuid": "c5c936b6-30dc-4e1c-bee9-7df4ec26f8fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bf6589b-3f52-412b-805b-2ec248769a68",
                  "parent_uuid": "3605a0a4-5cbc-4540-8da0-874a53e29946",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02f8d9b6-97b3-4b4b-af6f-d62f0722147c",
              "parent_uuid": "c5c936b6-30dc-4e1c-bee9-7df4ec26f8fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf34a044-dac4-4ae8-8af0-6a175e2bc5b1",
                  "parent_uuid": "02f8d9b6-97b3-4b4b-af6f-d62f0722147c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "950e5591-2960-43fc-9f15-10b9948f3f62",
              "parent_uuid": "c5c936b6-30dc-4e1c-bee9-7df4ec26f8fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00aba094-5542-407a-8c8d-ea91b5583214",
                  "parent_uuid": "950e5591-2960-43fc-9f15-10b9948f3f62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f864f662-0ed2-4645-93b2-34284f46b9d7",
              "parent_uuid": "c5c936b6-30dc-4e1c-bee9-7df4ec26f8fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "badba0d2-c83d-4f1e-83c2-349a1739c630",
                  "parent_uuid": "f864f662-0ed2-4645-93b2-34284f46b9d7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9ec56e4a-02b9-47fb-a7b3-ca1d0e0c97d4",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bedfe82b-d690-4de0-b50c-eb7f52b2ebd4",
              "parent_uuid": "9ec56e4a-02b9-47fb-a7b3-ca1d0e0c97d4",
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
              "uuid": "e121b82a-a89a-44c6-9c96-3f66252a56a2",
              "parent_uuid": "9ec56e4a-02b9-47fb-a7b3-ca1d0e0c97d4",
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
              "uuid": "0ab9b380-3404-46d9-a471-02fdbec78c1e",
              "parent_uuid": "9ec56e4a-02b9-47fb-a7b3-ca1d0e0c97d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe16710a-7c55-402d-bf27-b523ed789faf",
                  "parent_uuid": "0ab9b380-3404-46d9-a471-02fdbec78c1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31283cfd-f95d-4df1-bd1a-e1d9ca08e67a",
              "parent_uuid": "9ec56e4a-02b9-47fb-a7b3-ca1d0e0c97d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fa76db2-4533-4be6-a525-c9c59d91c5c9",
                  "parent_uuid": "31283cfd-f95d-4df1-bd1a-e1d9ca08e67a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b995dbc7-d6ab-46b8-a890-0c608c19c651",
              "parent_uuid": "9ec56e4a-02b9-47fb-a7b3-ca1d0e0c97d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "113be508-e89a-45d1-a02f-9684ab6e2841",
                  "parent_uuid": "b995dbc7-d6ab-46b8-a890-0c608c19c651",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af02e600-3dca-47bd-a3a9-4550f7062460",
              "parent_uuid": "9ec56e4a-02b9-47fb-a7b3-ca1d0e0c97d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55e9ccb2-e2f8-4872-8724-df0d4dce918b",
                  "parent_uuid": "af02e600-3dca-47bd-a3a9-4550f7062460",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "573bba6d-7207-4684-9699-f8817873371a",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09d6c435-2584-4bba-85ce-91cb4fe65b2f",
              "parent_uuid": "573bba6d-7207-4684-9699-f8817873371a",
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
              "uuid": "cbf368dd-e482-45a3-988d-ba48e0470048",
              "parent_uuid": "573bba6d-7207-4684-9699-f8817873371a",
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
              "uuid": "8cb7ae3a-90b6-404c-b395-94014e1646f3",
              "parent_uuid": "573bba6d-7207-4684-9699-f8817873371a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79e3706f-f557-44ee-b43c-06d619485c8f",
                  "parent_uuid": "8cb7ae3a-90b6-404c-b395-94014e1646f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6198acc5-2f42-475b-8850-c31abc305d59",
              "parent_uuid": "573bba6d-7207-4684-9699-f8817873371a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3461becc-fbf6-45df-bd4b-b53866e3525d",
                  "parent_uuid": "6198acc5-2f42-475b-8850-c31abc305d59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a78c779-04be-4c72-93cb-fab73962fe65",
              "parent_uuid": "573bba6d-7207-4684-9699-f8817873371a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f048186f-cd04-4508-82d8-662348ea2863",
                  "parent_uuid": "9a78c779-04be-4c72-93cb-fab73962fe65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c389b47a-82cf-484c-92eb-677f7151e151",
              "parent_uuid": "573bba6d-7207-4684-9699-f8817873371a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b9c0312-bc20-4246-8bf9-c5d2467501de",
                  "parent_uuid": "c389b47a-82cf-484c-92eb-677f7151e151",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9b1a00a9-5409-480c-a236-4838ce0370ce",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "815e8f69-0d5a-4718-abbb-9742d850ab49",
              "parent_uuid": "9b1a00a9-5409-480c-a236-4838ce0370ce",
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
              "uuid": "f10011b2-2f08-4639-8711-75e165430ae0",
              "parent_uuid": "9b1a00a9-5409-480c-a236-4838ce0370ce",
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
              "uuid": "68115f94-421c-4f6c-b66d-1fdbb654048b",
              "parent_uuid": "9b1a00a9-5409-480c-a236-4838ce0370ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a59b36b4-ea8c-453e-a940-840684a33ac8",
                  "parent_uuid": "68115f94-421c-4f6c-b66d-1fdbb654048b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02fbdcfb-7092-4cc2-8262-ebde8b79a5f0",
              "parent_uuid": "9b1a00a9-5409-480c-a236-4838ce0370ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f537227e-2332-4fce-8dce-524269382a33",
                  "parent_uuid": "02fbdcfb-7092-4cc2-8262-ebde8b79a5f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2f13759-ebc1-4793-b38c-b5a19ba3a332",
              "parent_uuid": "9b1a00a9-5409-480c-a236-4838ce0370ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ceb31a4-3b7a-4061-a79a-42523afbac71",
                  "parent_uuid": "e2f13759-ebc1-4793-b38c-b5a19ba3a332",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5e50cb7-f2b2-48eb-b7b1-1120a9630450",
              "parent_uuid": "9b1a00a9-5409-480c-a236-4838ce0370ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47b67446-14e3-4ea7-8261-745c976b3924",
                  "parent_uuid": "c5e50cb7-f2b2-48eb-b7b1-1120a9630450",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "42339768-e529-43d0-b1ff-4c5c9f3cdc2b",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbc215d5-71e9-4b39-8f64-be91bfb88a34",
              "parent_uuid": "42339768-e529-43d0-b1ff-4c5c9f3cdc2b",
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
              "uuid": "68e991d8-2c8b-43e0-a6d3-536af59a80bb",
              "parent_uuid": "42339768-e529-43d0-b1ff-4c5c9f3cdc2b",
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
              "uuid": "477d1ecc-a7ce-4b61-a723-ba9241f9f6c5",
              "parent_uuid": "42339768-e529-43d0-b1ff-4c5c9f3cdc2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "770bb588-ca39-433a-a9d0-8343e21c9944",
                  "parent_uuid": "477d1ecc-a7ce-4b61-a723-ba9241f9f6c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "688e9513-7b7d-4f79-aae2-d44366f8140d",
              "parent_uuid": "42339768-e529-43d0-b1ff-4c5c9f3cdc2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51f75615-fd25-4210-8048-d9ec97583dec",
                  "parent_uuid": "688e9513-7b7d-4f79-aae2-d44366f8140d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ba66989-c237-4d9c-9ed1-a84307b13750",
              "parent_uuid": "42339768-e529-43d0-b1ff-4c5c9f3cdc2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7887fa8a-8a23-48b7-89fc-941e5dad0f1e",
                  "parent_uuid": "5ba66989-c237-4d9c-9ed1-a84307b13750",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0591a025-1e9e-41d8-841f-1cb83e6e0a54",
              "parent_uuid": "42339768-e529-43d0-b1ff-4c5c9f3cdc2b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58619014-1dc0-42ac-9614-565645b74cd5",
                  "parent_uuid": "0591a025-1e9e-41d8-841f-1cb83e6e0a54",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aa03c869-eb49-4b3a-be02-0f9628e50e5e",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb579474-479e-4f25-a2d8-1978d416c095",
              "parent_uuid": "aa03c869-eb49-4b3a-be02-0f9628e50e5e",
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
          "uuid": "d148b4d6-40a2-4c0f-b93e-65d5c0e90a25",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c4018218-0e66-4bb0-9482-cc8ac3c0e1a8",
              "parent_uuid": "d148b4d6-40a2-4c0f-b93e-65d5c0e90a25",
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
          "uuid": "10dee487-6263-4223-a138-25d9be31a830",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33ca01a3-a379-4586-a3ea-eecffadaa6a5",
              "parent_uuid": "10dee487-6263-4223-a138-25d9be31a830",
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
                  "uuid": "3ec1c612-35ae-4bde-9f47-86f618d253bc",
                  "parent_uuid": "33ca01a3-a379-4586-a3ea-eecffadaa6a5",
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
          "uuid": "c2b84926-4193-4b8b-b0bd-7dac1e6a54ff",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63371f6b-f863-40c1-8620-edde213c5155",
              "parent_uuid": "c2b84926-4193-4b8b-b0bd-7dac1e6a54ff",
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
          "uuid": "0719157c-335f-487b-b303-4d4f571f9603",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4acb53d6-8063-47b9-99fc-48088dda0caa",
              "parent_uuid": "0719157c-335f-487b-b303-4d4f571f9603",
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
          "uuid": "feed726f-9d5b-4ad3-874d-7a27200ae4ea",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62c3da62-e892-4086-a62c-343b593f7b35",
              "parent_uuid": "feed726f-9d5b-4ad3-874d-7a27200ae4ea",
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
              "uuid": "7c80439c-a27e-4a1f-9815-a27d89d43fe1",
              "parent_uuid": "feed726f-9d5b-4ad3-874d-7a27200ae4ea",
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
              "uuid": "300ded18-dc97-4e29-afe1-18ae61d32cdf",
              "parent_uuid": "feed726f-9d5b-4ad3-874d-7a27200ae4ea",
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
              "uuid": "2842f98e-7e14-43ee-9da6-e86eaeedbbf7",
              "parent_uuid": "feed726f-9d5b-4ad3-874d-7a27200ae4ea",
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
              "uuid": "14423698-876f-42ed-9cee-f0dc03b75953",
              "parent_uuid": "feed726f-9d5b-4ad3-874d-7a27200ae4ea",
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
          "uuid": "41b27daf-ba79-4c94-ad3e-cf2d5cf08a68",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "129d3060-16fe-4b76-b689-21bee4be4a8d",
              "parent_uuid": "41b27daf-ba79-4c94-ad3e-cf2d5cf08a68",
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
              "uuid": "6b32dc62-ab01-455d-a71f-d900670f3da6",
              "parent_uuid": "41b27daf-ba79-4c94-ad3e-cf2d5cf08a68",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5bb5175e-879a-4137-b456-9cc089096b5b",
              "parent_uuid": "41b27daf-ba79-4c94-ad3e-cf2d5cf08a68",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "44d81854-7384-40e9-8353-6f619e6049b1",
              "parent_uuid": "41b27daf-ba79-4c94-ad3e-cf2d5cf08a68",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5dadc052-6a4a-4d01-af88-ffce475dabf8",
              "parent_uuid": "41b27daf-ba79-4c94-ad3e-cf2d5cf08a68",
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
          "uuid": "ae0e650d-fa7e-423f-a18a-4c9302fda826",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "065c21ed-83f2-4210-8fe9-ded6d4f5da1c",
              "parent_uuid": "ae0e650d-fa7e-423f-a18a-4c9302fda826",
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
              "uuid": "f727e0bf-77bc-4863-b68e-0f7bcd783058",
              "parent_uuid": "ae0e650d-fa7e-423f-a18a-4c9302fda826",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "075910ba-5316-4d8b-8f01-5e9446848bb7",
              "parent_uuid": "ae0e650d-fa7e-423f-a18a-4c9302fda826",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "06f3629d-e8c4-42b2-ae8b-8f33c2a41af4",
              "parent_uuid": "ae0e650d-fa7e-423f-a18a-4c9302fda826",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "93baeb19-ee2c-4d70-9e20-71d3456870e6",
              "parent_uuid": "ae0e650d-fa7e-423f-a18a-4c9302fda826",
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
          "uuid": "56ba1c7c-b0e2-4eda-b90f-3ebfb5148e8a",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66dde82b-8c2e-4ac4-8d1e-b730ad000323",
              "parent_uuid": "56ba1c7c-b0e2-4eda-b90f-3ebfb5148e8a",
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
              "uuid": "7281f804-bb7a-44fb-a6cc-e91b5cbbc4b2",
              "parent_uuid": "56ba1c7c-b0e2-4eda-b90f-3ebfb5148e8a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ed86d2c6-3873-44a8-8608-5d8ea77be98a",
              "parent_uuid": "56ba1c7c-b0e2-4eda-b90f-3ebfb5148e8a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "80c3acdf-c84f-48be-bafa-818373afff1e",
              "parent_uuid": "56ba1c7c-b0e2-4eda-b90f-3ebfb5148e8a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c1da2fbb-0fcb-48ee-9b30-75a5b49ccb38",
              "parent_uuid": "56ba1c7c-b0e2-4eda-b90f-3ebfb5148e8a",
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
          "uuid": "87721b33-abf4-433f-ab2f-b895efbf975d",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51f0080a-e270-4644-adfb-f082a638c24b",
              "parent_uuid": "87721b33-abf4-433f-ab2f-b895efbf975d",
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
              "uuid": "e0ea3ec1-7bff-4e6d-b26b-daf5f0e0cdc3",
              "parent_uuid": "87721b33-abf4-433f-ab2f-b895efbf975d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1efe6698-4463-4079-ab0a-83bbf66a89c5",
              "parent_uuid": "87721b33-abf4-433f-ab2f-b895efbf975d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d81a1dc2-0383-4fc5-bbc9-e2226acc0be1",
              "parent_uuid": "87721b33-abf4-433f-ab2f-b895efbf975d",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5e40e308-ee8e-4b27-8e7c-1af093f458a0",
              "parent_uuid": "87721b33-abf4-433f-ab2f-b895efbf975d",
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
          "uuid": "69b63b32-4323-462c-afa4-f5651c4c8e73",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c67bf6c8-6a76-4087-af8b-27fe83dc76ef",
              "parent_uuid": "69b63b32-4323-462c-afa4-f5651c4c8e73",
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
              "uuid": "1495abfb-f5af-47e0-9643-39af72b3bd69",
              "parent_uuid": "69b63b32-4323-462c-afa4-f5651c4c8e73",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8dccf7ed-5ab1-48cb-a7f3-ff6c74b77eeb",
              "parent_uuid": "69b63b32-4323-462c-afa4-f5651c4c8e73",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "cf901ab9-bada-4d60-aa3a-b126413bf7e1",
              "parent_uuid": "69b63b32-4323-462c-afa4-f5651c4c8e73",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6d87d880-097b-4203-be3c-5e6455490fc6",
              "parent_uuid": "69b63b32-4323-462c-afa4-f5651c4c8e73",
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
          "uuid": "1c4d939d-030f-4e26-8f8a-ec2512454da8",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79bc44fd-eb1a-4bf2-99fa-44a2647c7430",
              "parent_uuid": "1c4d939d-030f-4e26-8f8a-ec2512454da8",
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
              "uuid": "15bfaa6a-7565-4c5c-be40-3871ec9d4d9e",
              "parent_uuid": "1c4d939d-030f-4e26-8f8a-ec2512454da8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fa2b1154-d051-4921-ad10-8f0b9ed9f75f",
              "parent_uuid": "1c4d939d-030f-4e26-8f8a-ec2512454da8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c0393f5f-4371-48fa-8196-f669efa951f4",
              "parent_uuid": "1c4d939d-030f-4e26-8f8a-ec2512454da8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1ee03261-2717-4b2d-abc8-c5597e618cb5",
              "parent_uuid": "1c4d939d-030f-4e26-8f8a-ec2512454da8",
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
          "uuid": "7c9cbde2-6540-4a3a-b875-1b82d5518b4a",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "033d62dc-941b-4a9f-ac0b-d4b1dd1a3dfa",
              "parent_uuid": "7c9cbde2-6540-4a3a-b875-1b82d5518b4a",
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
              "uuid": "4f3493c9-7247-423a-821c-630a69f06c6a",
              "parent_uuid": "7c9cbde2-6540-4a3a-b875-1b82d5518b4a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1f4821af-05d5-445b-b22b-fe5650099883",
              "parent_uuid": "7c9cbde2-6540-4a3a-b875-1b82d5518b4a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "09676335-f74d-4178-94d7-931d9a50aed7",
              "parent_uuid": "7c9cbde2-6540-4a3a-b875-1b82d5518b4a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9c209b98-8da4-4921-8a94-80d78d8d09b3",
              "parent_uuid": "7c9cbde2-6540-4a3a-b875-1b82d5518b4a",
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
          "uuid": "9c86c447-855c-496a-9419-3fc8bb7c0dcb",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c2452f8-9283-400a-989a-699495858eca",
              "parent_uuid": "9c86c447-855c-496a-9419-3fc8bb7c0dcb",
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
              "uuid": "67ecd5f5-c312-4429-b5d9-c47f24c3c04f",
              "parent_uuid": "9c86c447-855c-496a-9419-3fc8bb7c0dcb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8c70c1ea-dff7-4a7c-9d80-055589a23e89",
              "parent_uuid": "9c86c447-855c-496a-9419-3fc8bb7c0dcb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c2550347-d3bc-4ccd-9de6-f7d2ebb0ce2f",
              "parent_uuid": "9c86c447-855c-496a-9419-3fc8bb7c0dcb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d6ab71f0-5ac5-4b57-9d56-d8ee9123e4d6",
              "parent_uuid": "9c86c447-855c-496a-9419-3fc8bb7c0dcb",
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
          "uuid": "2235b656-0bfb-453f-aa9b-1387aebf744f",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "024ffcd6-5e2c-401d-824c-5c34751be01e",
              "parent_uuid": "2235b656-0bfb-453f-aa9b-1387aebf744f",
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
              "uuid": "f638450b-b616-4604-b42f-de739bb6208e",
              "parent_uuid": "2235b656-0bfb-453f-aa9b-1387aebf744f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "76b04b40-e77f-42d6-920d-8bd877fbd804",
              "parent_uuid": "2235b656-0bfb-453f-aa9b-1387aebf744f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fb9fd9f4-05fc-4c2a-92fd-b11ca6f932c8",
              "parent_uuid": "2235b656-0bfb-453f-aa9b-1387aebf744f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "44f32ae7-4f1d-4e89-ba43-29d1c4f2780b",
              "parent_uuid": "2235b656-0bfb-453f-aa9b-1387aebf744f",
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
          "uuid": "6686a151-ab34-4344-b6b8-ea0af05deee8",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ec90812-a3b9-4a98-b82e-ed9f4b4210f9",
              "parent_uuid": "6686a151-ab34-4344-b6b8-ea0af05deee8",
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
              "uuid": "6eb0f8c7-bb8a-4445-9fe9-94207d54cca7",
              "parent_uuid": "6686a151-ab34-4344-b6b8-ea0af05deee8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f44fda57-ff96-48b5-9514-f45268b879da",
              "parent_uuid": "6686a151-ab34-4344-b6b8-ea0af05deee8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0d5a1dcf-4208-4d95-80cc-bad3b47514c2",
              "parent_uuid": "6686a151-ab34-4344-b6b8-ea0af05deee8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8363bbd0-3439-428d-9c67-603b858ea4c3",
              "parent_uuid": "6686a151-ab34-4344-b6b8-ea0af05deee8",
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
          "uuid": "34f54d80-5064-4e2b-b17e-45b8a5bb3905",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f104dde-853d-4ed1-89bd-1b249d73f7ad",
              "parent_uuid": "34f54d80-5064-4e2b-b17e-45b8a5bb3905",
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
              "uuid": "f2091137-81e3-4730-947a-e443d6b321d0",
              "parent_uuid": "34f54d80-5064-4e2b-b17e-45b8a5bb3905",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b492316f-f18a-4db0-8856-93d9951e546c",
              "parent_uuid": "34f54d80-5064-4e2b-b17e-45b8a5bb3905",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a994c168-094f-43ca-ab56-1b90148c7634",
              "parent_uuid": "34f54d80-5064-4e2b-b17e-45b8a5bb3905",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7790d5a4-1ca7-42e9-994a-f3b1a1cff402",
              "parent_uuid": "34f54d80-5064-4e2b-b17e-45b8a5bb3905",
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
          "uuid": "e6c9b053-547b-478d-8bb1-e5166a5cd67e",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff8f8f74-a2f3-4bbe-b586-7d91a0263869",
              "parent_uuid": "e6c9b053-547b-478d-8bb1-e5166a5cd67e",
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
              "uuid": "6fc14413-27db-45c9-8748-9ed83c53ea5f",
              "parent_uuid": "e6c9b053-547b-478d-8bb1-e5166a5cd67e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "21483ac9-e91a-40b4-8cd9-cbcfcb6b95ba",
              "parent_uuid": "e6c9b053-547b-478d-8bb1-e5166a5cd67e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "164b401d-fce7-4554-b088-eebc4c09426b",
              "parent_uuid": "e6c9b053-547b-478d-8bb1-e5166a5cd67e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7dd75907-9989-4b0e-bfc3-0d614ab60235",
              "parent_uuid": "e6c9b053-547b-478d-8bb1-e5166a5cd67e",
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
          "uuid": "fc628f6e-f4e5-4154-b576-aa2fcf5b31fa",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c957663b-20ac-4802-8638-5cb063bf2169",
              "parent_uuid": "fc628f6e-f4e5-4154-b576-aa2fcf5b31fa",
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
          "uuid": "d5d9ccee-b11f-43f3-99ab-3fd7b1dc8bcb",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce9f144b-efcf-4ee4-b5ac-87eb4970a345",
              "parent_uuid": "d5d9ccee-b11f-43f3-99ab-3fd7b1dc8bcb",
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
          "uuid": "2deb0313-a780-4b45-ae4f-b5bd90d8b9ba",
          "parent_uuid": "b20032ff-c964-4749-9621-f410877fab66",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "617dad13-bf68-4362-9bba-178affcc32dc",
              "parent_uuid": "2deb0313-a780-4b45-ae4f-b5bd90d8b9ba",
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
                  "uuid": "a7920954-ef4e-487d-a66b-cdae429a517d",
                  "parent_uuid": "617dad13-bf68-4362-9bba-178affcc32dc",
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

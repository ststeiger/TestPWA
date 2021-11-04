
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
  "uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "fbafd731-4fb7-4e48-93c2-41a9d8cf8ffd",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "127f06c5-566d-48fd-a0f3-4b8cb60b97d1",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "c441fa73-1806-4cac-bd62-162a8cbb5a00",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "c5c17e00-df3e-457d-8321-e60aaff78d73",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "667d18b9-6180-42d9-a94d-fd76a843fc92",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "f8de803b-617a-4197-ab5a-c59c7de5d059",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "ed605411-4319-4a43-b0c2-f57da22535c9",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
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
      "uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
      "parent_uuid": "5d57b940-fafd-4702-ac85-de3e13454869",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "d220a579-3015-47c7-9f9c-70f09bfe4e86",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "9850fc0f-a2dc-482f-aeee-4cd06bdc4f8e",
              "parent_uuid": "d220a579-3015-47c7-9f9c-70f09bfe4e86",
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
              "uuid": "e31a5a7b-968d-4ab7-8719-804d8695c05d",
              "parent_uuid": "d220a579-3015-47c7-9f9c-70f09bfe4e86",
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
              "uuid": "63317d40-5bcc-41d0-90f6-144a7f744f65",
              "parent_uuid": "d220a579-3015-47c7-9f9c-70f09bfe4e86",
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
              "uuid": "cb3d6749-1863-4b74-a5d5-6db15540d488",
              "parent_uuid": "d220a579-3015-47c7-9f9c-70f09bfe4e86",
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
          "uuid": "e6e54f9d-fce6-4b16-9e9f-5e4e79d2dd16",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "d25968e5-4be6-48f0-8d7b-97ac9a5da44f",
              "parent_uuid": "e6e54f9d-fce6-4b16-9e9f-5e4e79d2dd16",
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
              "uuid": "9939d14a-d0b6-41f5-8c8b-77fe8b5ff6e7",
              "parent_uuid": "e6e54f9d-fce6-4b16-9e9f-5e4e79d2dd16",
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
              "uuid": "01c26c86-067a-4269-a455-054500dfd16f",
              "parent_uuid": "e6e54f9d-fce6-4b16-9e9f-5e4e79d2dd16",
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
              "uuid": "c0e7c9be-ed50-4c95-b928-e4cb494e1811",
              "parent_uuid": "e6e54f9d-fce6-4b16-9e9f-5e4e79d2dd16",
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
          "uuid": "c0cf0e33-4ef1-4060-9638-61e5c6077e0b",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "9442f150-61e4-4ea1-a8c7-1daf0fcf1fbc",
              "parent_uuid": "c0cf0e33-4ef1-4060-9638-61e5c6077e0b",
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
              "uuid": "5ba43383-724b-4d69-a717-871ef15f2a98",
              "parent_uuid": "c0cf0e33-4ef1-4060-9638-61e5c6077e0b",
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
              "uuid": "a2e10af4-d156-4590-b299-fa99450070ec",
              "parent_uuid": "c0cf0e33-4ef1-4060-9638-61e5c6077e0b",
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
              "uuid": "a2cbda8d-cb25-450e-84f1-8f045f3b7c3e",
              "parent_uuid": "c0cf0e33-4ef1-4060-9638-61e5c6077e0b",
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
          "uuid": "0d56e60e-7b04-4bb2-93a9-228bcca45369",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e377c078-7a24-4ed4-afd4-ad31620dc0ac",
              "parent_uuid": "0d56e60e-7b04-4bb2-93a9-228bcca45369",
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
              "uuid": "02a77608-50cd-4805-a70d-f35cf4e65967",
              "parent_uuid": "0d56e60e-7b04-4bb2-93a9-228bcca45369",
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
              "uuid": "6b88bed6-2895-4fac-8524-9a0a295f3dda",
              "parent_uuid": "0d56e60e-7b04-4bb2-93a9-228bcca45369",
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
              "uuid": "29405482-bfc9-4e36-9bb3-c152c49c0e08",
              "parent_uuid": "0d56e60e-7b04-4bb2-93a9-228bcca45369",
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
              "uuid": "3d1632a9-9e9d-487e-b9fd-691b74df08e2",
              "parent_uuid": "0d56e60e-7b04-4bb2-93a9-228bcca45369",
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
              "uuid": "3d3bb59f-b81d-48a5-9450-632b2fd105bf",
              "parent_uuid": "0d56e60e-7b04-4bb2-93a9-228bcca45369",
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
          "uuid": "d0a3424b-1b71-4a85-970b-b081a458fe50",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fb44f891-7b60-417c-84b9-4fe32f0622df",
              "parent_uuid": "d0a3424b-1b71-4a85-970b-b081a458fe50",
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
          "uuid": "ba49d09e-afdc-4d16-bd1b-f3ebfa514b13",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "983c36a7-d0be-4f85-8cc4-03320d08e2a6",
              "parent_uuid": "ba49d09e-afdc-4d16-bd1b-f3ebfa514b13",
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
              "uuid": "27136072-2920-4a34-9248-0245ff6b4268",
              "parent_uuid": "ba49d09e-afdc-4d16-bd1b-f3ebfa514b13",
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
              "uuid": "a036f770-4644-4fa6-9604-b52f301763fc",
              "parent_uuid": "ba49d09e-afdc-4d16-bd1b-f3ebfa514b13",
              "tagName": "td",
              "properties": [
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
                  "uuid": "29342b12-2511-42e4-b366-705fa1478080",
                  "parent_uuid": "a036f770-4644-4fa6-9604-b52f301763fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "654e7793-40f3-4722-9645-41c9489eeed7",
              "parent_uuid": "ba49d09e-afdc-4d16-bd1b-f3ebfa514b13",
              "tagName": "td",
              "properties": [
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
                  "uuid": "baf9ca4b-ed8c-4690-9cbf-b01a5a18d1ac",
                  "parent_uuid": "654e7793-40f3-4722-9645-41c9489eeed7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cad14a11-39e8-4a61-bd9a-9f2e27918ed1",
              "parent_uuid": "ba49d09e-afdc-4d16-bd1b-f3ebfa514b13",
              "tagName": "td",
              "properties": [
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
                  "uuid": "825caaf0-4cb7-4b1a-9470-bbb42447bd9f",
                  "parent_uuid": "cad14a11-39e8-4a61-bd9a-9f2e27918ed1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0127517c-db2f-4e7a-8b37-98fd9061424b",
              "parent_uuid": "ba49d09e-afdc-4d16-bd1b-f3ebfa514b13",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fab90fcb-3a2d-46b8-9b05-adf80efae389",
                  "parent_uuid": "0127517c-db2f-4e7a-8b37-98fd9061424b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84c7316a-0260-490b-a256-a0142c67376c",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa28e768-cc8e-40b0-9e62-ab3aa607ae70",
              "parent_uuid": "84c7316a-0260-490b-a256-a0142c67376c",
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
              "uuid": "e7169351-13bc-4e2b-bb66-1c860d0cdb59",
              "parent_uuid": "84c7316a-0260-490b-a256-a0142c67376c",
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
              "uuid": "7c8b5f97-e2c6-420a-b49b-9a3873f66c37",
              "parent_uuid": "84c7316a-0260-490b-a256-a0142c67376c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a390bea6-121f-4db1-98a9-03e5c770cc4b",
                  "parent_uuid": "7c8b5f97-e2c6-420a-b49b-9a3873f66c37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5c902b4-450c-4462-9758-4a9a76bc4277",
              "parent_uuid": "84c7316a-0260-490b-a256-a0142c67376c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f6de65ba-36a3-4f87-903a-a9500ea75131",
                  "parent_uuid": "c5c902b4-450c-4462-9758-4a9a76bc4277",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52c773be-e2b2-46ea-bbb0-1e7389b5f8db",
              "parent_uuid": "84c7316a-0260-490b-a256-a0142c67376c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "189b0586-2520-4017-9e93-36a8cb83724d",
                  "parent_uuid": "52c773be-e2b2-46ea-bbb0-1e7389b5f8db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9a23141-e9f9-4083-a8ac-866001b3a989",
              "parent_uuid": "84c7316a-0260-490b-a256-a0142c67376c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d59bfb89-6960-4b43-871a-252e399d0ddf",
                  "parent_uuid": "e9a23141-e9f9-4083-a8ac-866001b3a989",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0fea96f1-8269-4148-9e06-0a8c39e8efb7",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11870486-e373-411d-a38d-a39826b0f0c7",
              "parent_uuid": "0fea96f1-8269-4148-9e06-0a8c39e8efb7",
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
              "uuid": "ccf0fe7b-2469-45c2-b4cb-da29faa708a9",
              "parent_uuid": "0fea96f1-8269-4148-9e06-0a8c39e8efb7",
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
              "uuid": "ad929428-9cea-43de-bd7a-532c08cab2e7",
              "parent_uuid": "0fea96f1-8269-4148-9e06-0a8c39e8efb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d761ec86-9b79-46e3-934c-33adecf9c8b2",
                  "parent_uuid": "ad929428-9cea-43de-bd7a-532c08cab2e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7389adb6-6550-4a6b-b24e-bfcb616f4d9d",
              "parent_uuid": "0fea96f1-8269-4148-9e06-0a8c39e8efb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69cc2208-e046-4fec-9cce-77e9962af8a4",
                  "parent_uuid": "7389adb6-6550-4a6b-b24e-bfcb616f4d9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b863d65-14d3-4e95-a35a-6085008baf26",
              "parent_uuid": "0fea96f1-8269-4148-9e06-0a8c39e8efb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89603a36-ef55-4e17-8bd6-ff6cc73eec0d",
                  "parent_uuid": "6b863d65-14d3-4e95-a35a-6085008baf26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f1044b0-109d-4a58-82bf-53e60c1f8a1b",
              "parent_uuid": "0fea96f1-8269-4148-9e06-0a8c39e8efb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7970463-e02b-471d-9dc5-3bfe9ba4ca23",
                  "parent_uuid": "8f1044b0-109d-4a58-82bf-53e60c1f8a1b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e024f40d-c46d-4255-b130-0ca9ea423224",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4ef42aa-b741-4cb6-9a64-b284f6106f2b",
              "parent_uuid": "e024f40d-c46d-4255-b130-0ca9ea423224",
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
              "uuid": "e0a722db-f747-4f0b-a8d4-5641bf39f176",
              "parent_uuid": "e024f40d-c46d-4255-b130-0ca9ea423224",
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
              "uuid": "426ecd6c-95f9-4a2e-9711-f788209d1bd7",
              "parent_uuid": "e024f40d-c46d-4255-b130-0ca9ea423224",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d06026df-83ad-44c3-8523-f7cffe166e24",
                  "parent_uuid": "426ecd6c-95f9-4a2e-9711-f788209d1bd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05a32a53-94f1-4d56-836d-0e5dc92a7fba",
              "parent_uuid": "e024f40d-c46d-4255-b130-0ca9ea423224",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa691c0f-3fba-440d-baf2-25f4173862da",
                  "parent_uuid": "05a32a53-94f1-4d56-836d-0e5dc92a7fba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48550b74-30c4-49f3-a64c-4fefe4ec2f48",
              "parent_uuid": "e024f40d-c46d-4255-b130-0ca9ea423224",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d595875-cfde-4f86-85eb-4ee59750df00",
                  "parent_uuid": "48550b74-30c4-49f3-a64c-4fefe4ec2f48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7c35a1c-7343-492b-9ac5-f994397cca83",
              "parent_uuid": "e024f40d-c46d-4255-b130-0ca9ea423224",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f635ad78-7533-4619-85da-2ac7faf57427",
                  "parent_uuid": "e7c35a1c-7343-492b-9ac5-f994397cca83",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cb9ddd45-c791-4fad-8bae-d245a1466e53",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e240ce5f-860a-4052-86be-3b0f9be630ea",
              "parent_uuid": "cb9ddd45-c791-4fad-8bae-d245a1466e53",
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
              "uuid": "e89a7459-0752-4de4-8210-3c857e94d22d",
              "parent_uuid": "cb9ddd45-c791-4fad-8bae-d245a1466e53",
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
              "uuid": "787c5768-c6c7-45c0-a86c-61f7c68bcf11",
              "parent_uuid": "cb9ddd45-c791-4fad-8bae-d245a1466e53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "555db696-1ec9-4244-83ef-11d777b4692d",
                  "parent_uuid": "787c5768-c6c7-45c0-a86c-61f7c68bcf11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91341820-a2b6-4609-ab21-fe583b2a4f2d",
              "parent_uuid": "cb9ddd45-c791-4fad-8bae-d245a1466e53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "711926b8-d852-4e93-9d9e-c6a3a7e79f16",
                  "parent_uuid": "91341820-a2b6-4609-ab21-fe583b2a4f2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fef3f59b-908a-4826-8701-8b7c83862683",
              "parent_uuid": "cb9ddd45-c791-4fad-8bae-d245a1466e53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bef3a07-219a-4ed1-9f53-953ffd354e5f",
                  "parent_uuid": "fef3f59b-908a-4826-8701-8b7c83862683",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ac73436-3f2e-40de-a75a-8f3acfe684c5",
              "parent_uuid": "cb9ddd45-c791-4fad-8bae-d245a1466e53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c974c14a-ed18-406f-8c0d-320c10a7800e",
                  "parent_uuid": "2ac73436-3f2e-40de-a75a-8f3acfe684c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "78a60b74-fdd9-42df-a6c6-788cd1d3802d",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "489cad26-70f0-4faf-b9f7-238c564ece2e",
              "parent_uuid": "78a60b74-fdd9-42df-a6c6-788cd1d3802d",
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
              "uuid": "700fc691-d2b6-4a86-981f-38da62b50254",
              "parent_uuid": "78a60b74-fdd9-42df-a6c6-788cd1d3802d",
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
              "uuid": "a66e22a6-8818-460c-b887-62b033052358",
              "parent_uuid": "78a60b74-fdd9-42df-a6c6-788cd1d3802d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac00c6a3-ee0f-45d9-ba55-7f916e9e538c",
                  "parent_uuid": "a66e22a6-8818-460c-b887-62b033052358",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f5164d9-99b4-4c79-9d16-3bd50fa7726b",
              "parent_uuid": "78a60b74-fdd9-42df-a6c6-788cd1d3802d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dde76487-bc71-48a2-a3d6-c0e59a17d019",
                  "parent_uuid": "0f5164d9-99b4-4c79-9d16-3bd50fa7726b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd6b9b8d-f2cc-4db5-b689-b1c0e797100b",
              "parent_uuid": "78a60b74-fdd9-42df-a6c6-788cd1d3802d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea325bb0-7868-438b-b2c4-579b79086f3a",
                  "parent_uuid": "fd6b9b8d-f2cc-4db5-b689-b1c0e797100b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a87d840f-9fee-4d94-9862-fb404836b221",
              "parent_uuid": "78a60b74-fdd9-42df-a6c6-788cd1d3802d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b8ba239-dbfd-49ff-875f-5a4c87f91b4d",
                  "parent_uuid": "a87d840f-9fee-4d94-9862-fb404836b221",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4fc7fdfc-45a4-4206-b148-942ffbf8960d",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e1ba137-3f35-4548-8e57-937c46628e01",
              "parent_uuid": "4fc7fdfc-45a4-4206-b148-942ffbf8960d",
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
              "uuid": "6848d256-75df-44d1-bcb8-20d43d55e6c1",
              "parent_uuid": "4fc7fdfc-45a4-4206-b148-942ffbf8960d",
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
              "uuid": "0ad5f367-80c5-4dec-8fe3-8ee7051bbfd9",
              "parent_uuid": "4fc7fdfc-45a4-4206-b148-942ffbf8960d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0706b43-0354-4de6-bae4-2162c3045238",
                  "parent_uuid": "0ad5f367-80c5-4dec-8fe3-8ee7051bbfd9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4780c4cf-e04b-4cdf-be19-2bd5db9db702",
              "parent_uuid": "4fc7fdfc-45a4-4206-b148-942ffbf8960d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebf1dad1-a445-4755-ab83-a35aaba90e20",
                  "parent_uuid": "4780c4cf-e04b-4cdf-be19-2bd5db9db702",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "547869c6-6bab-438d-933a-b140f62a7dc8",
              "parent_uuid": "4fc7fdfc-45a4-4206-b148-942ffbf8960d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65fac90d-269c-42d3-b80d-cf5594c74dbd",
                  "parent_uuid": "547869c6-6bab-438d-933a-b140f62a7dc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d85d7ea9-7d33-4d96-97fa-566fee9aff0b",
              "parent_uuid": "4fc7fdfc-45a4-4206-b148-942ffbf8960d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32257fbf-4466-4507-991c-d620618a1cb5",
                  "parent_uuid": "d85d7ea9-7d33-4d96-97fa-566fee9aff0b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "58e87ab9-9178-4a2d-b603-1fa12be542e8",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2faca21b-043f-4a5d-b01d-70b1fdcc82bb",
              "parent_uuid": "58e87ab9-9178-4a2d-b603-1fa12be542e8",
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
              "uuid": "2d5a82a8-4a43-413f-bd15-ecec59af1165",
              "parent_uuid": "58e87ab9-9178-4a2d-b603-1fa12be542e8",
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
              "uuid": "3d6a7348-bd1a-4860-b5b5-4f5170f6b3f4",
              "parent_uuid": "58e87ab9-9178-4a2d-b603-1fa12be542e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68e078ab-4b0f-4a44-96cb-f1b1f757c77e",
                  "parent_uuid": "3d6a7348-bd1a-4860-b5b5-4f5170f6b3f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30a635d0-6662-4df3-aeb3-a37d6df731e6",
              "parent_uuid": "58e87ab9-9178-4a2d-b603-1fa12be542e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b8d021f-27ad-4e1e-8824-c92129d05bba",
                  "parent_uuid": "30a635d0-6662-4df3-aeb3-a37d6df731e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9df3b11-7101-4ab8-bd10-604bf467b07d",
              "parent_uuid": "58e87ab9-9178-4a2d-b603-1fa12be542e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17e7c4f5-1d27-4844-bab9-caa3461fdfb7",
                  "parent_uuid": "e9df3b11-7101-4ab8-bd10-604bf467b07d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44298704-b740-4cb0-a11e-834506daff13",
              "parent_uuid": "58e87ab9-9178-4a2d-b603-1fa12be542e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c5d87be-d43e-4ce0-b4cc-f412c8b97fcd",
                  "parent_uuid": "44298704-b740-4cb0-a11e-834506daff13",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "075b3d75-9c1d-413a-830d-7eab24de4ce7",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35cb030a-074b-4c9d-9147-e952b905db10",
              "parent_uuid": "075b3d75-9c1d-413a-830d-7eab24de4ce7",
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
              "uuid": "4e8ddbe7-6231-408e-8036-2587ba2f0d72",
              "parent_uuid": "075b3d75-9c1d-413a-830d-7eab24de4ce7",
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
              "uuid": "f75640db-e820-47d1-be1b-ee384d584321",
              "parent_uuid": "075b3d75-9c1d-413a-830d-7eab24de4ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48303b6a-3be2-4697-a44a-fd0e6245003d",
                  "parent_uuid": "f75640db-e820-47d1-be1b-ee384d584321",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ae9d818-1a30-4e17-ba64-23f21da8539d",
              "parent_uuid": "075b3d75-9c1d-413a-830d-7eab24de4ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "104f5f14-a0c6-4b50-af5c-05257d087a34",
                  "parent_uuid": "8ae9d818-1a30-4e17-ba64-23f21da8539d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8cbe5ea6-483c-4221-a756-d87f983f922b",
              "parent_uuid": "075b3d75-9c1d-413a-830d-7eab24de4ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "773531e2-eddd-48c8-a763-329ef57347d5",
                  "parent_uuid": "8cbe5ea6-483c-4221-a756-d87f983f922b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84b03acf-de80-4b38-bb64-40b282659e8c",
              "parent_uuid": "075b3d75-9c1d-413a-830d-7eab24de4ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b541128-4af0-4584-b3f8-3f9358192aa0",
                  "parent_uuid": "84b03acf-de80-4b38-bb64-40b282659e8c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "13898424-8d46-491c-924d-77ae531b19c0",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c314bacf-b72e-44cf-8693-76b2f2a61c74",
              "parent_uuid": "13898424-8d46-491c-924d-77ae531b19c0",
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
              "uuid": "ef61c4f1-a520-446a-9705-cfa30f08ca8c",
              "parent_uuid": "13898424-8d46-491c-924d-77ae531b19c0",
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
              "uuid": "ca91299a-b60b-49ec-b6d6-1f6627fbed0a",
              "parent_uuid": "13898424-8d46-491c-924d-77ae531b19c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbbf7121-ce4a-4f70-81fd-960facf30e1b",
                  "parent_uuid": "ca91299a-b60b-49ec-b6d6-1f6627fbed0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbe594a5-7b5f-441c-bf29-e87c5ef2bf3f",
              "parent_uuid": "13898424-8d46-491c-924d-77ae531b19c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5766ca2-0ec6-4a83-a9e5-ed2f00a0420e",
                  "parent_uuid": "bbe594a5-7b5f-441c-bf29-e87c5ef2bf3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddcb62ed-5aab-4373-b7c4-56c940cecaa0",
              "parent_uuid": "13898424-8d46-491c-924d-77ae531b19c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb53d4d9-71b5-4d21-ba08-47762c63ee64",
                  "parent_uuid": "ddcb62ed-5aab-4373-b7c4-56c940cecaa0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "494cccea-e547-453d-9a7e-bafcd15ec8f1",
              "parent_uuid": "13898424-8d46-491c-924d-77ae531b19c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e209fe7-ce87-4f7d-9438-b91800385ec2",
                  "parent_uuid": "494cccea-e547-453d-9a7e-bafcd15ec8f1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "970e3abc-35af-4193-b807-a3865dcc8cc4",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e991e48-cd0a-42eb-a73b-cc366db5ff62",
              "parent_uuid": "970e3abc-35af-4193-b807-a3865dcc8cc4",
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
              "uuid": "3c9e7249-468f-4139-b83a-49d1f86202b9",
              "parent_uuid": "970e3abc-35af-4193-b807-a3865dcc8cc4",
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
              "uuid": "94439f93-3bb2-4e8a-a8af-b0ccf709eaa2",
              "parent_uuid": "970e3abc-35af-4193-b807-a3865dcc8cc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2ff62de-223d-46db-a3e0-3bf9010a1d48",
                  "parent_uuid": "94439f93-3bb2-4e8a-a8af-b0ccf709eaa2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c226e19-3eb9-4342-adac-b17f1f05113e",
              "parent_uuid": "970e3abc-35af-4193-b807-a3865dcc8cc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb241da7-9c96-4299-9983-3b36f86106e7",
                  "parent_uuid": "6c226e19-3eb9-4342-adac-b17f1f05113e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52f7e6e6-e7bd-4744-ac4f-04ba0d84fee9",
              "parent_uuid": "970e3abc-35af-4193-b807-a3865dcc8cc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1231ef51-ab84-49d2-824f-a8ab17643221",
                  "parent_uuid": "52f7e6e6-e7bd-4744-ac4f-04ba0d84fee9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4745488-8fd3-42de-9808-b330586347d1",
              "parent_uuid": "970e3abc-35af-4193-b807-a3865dcc8cc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e05222c-aad2-490c-b1d8-97855bf84ed0",
                  "parent_uuid": "e4745488-8fd3-42de-9808-b330586347d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b68d883c-39e3-4681-a8b2-b84f35b92a43",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec025b4c-c513-425f-92fa-4e8b7abd5bb6",
              "parent_uuid": "b68d883c-39e3-4681-a8b2-b84f35b92a43",
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
              "uuid": "06b27fa6-fa6e-42db-acde-bca86b07cfca",
              "parent_uuid": "b68d883c-39e3-4681-a8b2-b84f35b92a43",
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
              "uuid": "873d0ced-282a-4a2c-90fb-d999e2b69c17",
              "parent_uuid": "b68d883c-39e3-4681-a8b2-b84f35b92a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91a1224e-a292-4486-88cc-2da46e13293c",
                  "parent_uuid": "873d0ced-282a-4a2c-90fb-d999e2b69c17",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00827c15-967a-4046-9914-7f28466a9224",
              "parent_uuid": "b68d883c-39e3-4681-a8b2-b84f35b92a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2df2677-ada3-4e37-8077-3d154bea2d64",
                  "parent_uuid": "00827c15-967a-4046-9914-7f28466a9224",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa2597ee-c82a-4532-a94a-4c35a41b6f47",
              "parent_uuid": "b68d883c-39e3-4681-a8b2-b84f35b92a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7ab8f37-5d94-4ff0-a82e-4a2665c610ca",
                  "parent_uuid": "aa2597ee-c82a-4532-a94a-4c35a41b6f47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03a0eadc-4716-4dbf-9209-61e39d3e33df",
              "parent_uuid": "b68d883c-39e3-4681-a8b2-b84f35b92a43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "faba3b7e-6d90-45c9-b789-4a3d9c927f75",
                  "parent_uuid": "03a0eadc-4716-4dbf-9209-61e39d3e33df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "215a6aed-f8e6-4273-817c-4de4dc1cfcb8",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64b33118-c727-4e36-af4d-800cf2156311",
              "parent_uuid": "215a6aed-f8e6-4273-817c-4de4dc1cfcb8",
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
          "uuid": "74dabc5e-610f-41cf-8236-be95ad5f8647",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "249a25b2-0568-41aa-9c83-e0cac2038684",
              "parent_uuid": "74dabc5e-610f-41cf-8236-be95ad5f8647",
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
          "uuid": "7425b6e0-61ee-41d4-af1d-cf87473d5e42",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51eb0dfe-5b21-4ad3-82b5-dfaeb7eab023",
              "parent_uuid": "7425b6e0-61ee-41d4-af1d-cf87473d5e42",
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
                  "uuid": "71c78dd0-72c2-4889-a12c-ee9e91b6ec3f",
                  "parent_uuid": "51eb0dfe-5b21-4ad3-82b5-dfaeb7eab023",
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
          "uuid": "620260b6-a851-4a17-93fd-a09828b16663",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8678ecf3-e632-4f04-b122-39669686b259",
              "parent_uuid": "620260b6-a851-4a17-93fd-a09828b16663",
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
          "uuid": "92e6a5e6-61d6-426b-a49d-58bb9d7c0ff8",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "25246bba-cc1a-494a-a278-aed9a8a9ba47",
              "parent_uuid": "92e6a5e6-61d6-426b-a49d-58bb9d7c0ff8",
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
          "uuid": "84674e37-4c3c-4517-8da7-baedbcca8634",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf648a65-788e-4e01-a5e7-16c3a2f98ca6",
              "parent_uuid": "84674e37-4c3c-4517-8da7-baedbcca8634",
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
              "uuid": "7167813d-1b2f-4707-bcb4-fc184090873d",
              "parent_uuid": "84674e37-4c3c-4517-8da7-baedbcca8634",
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
              "uuid": "330a84c9-e3aa-41a0-ac0f-48b9dd2b7a5c",
              "parent_uuid": "84674e37-4c3c-4517-8da7-baedbcca8634",
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
              "uuid": "eca7986d-b65b-4075-abe8-1db9af1de4bf",
              "parent_uuid": "84674e37-4c3c-4517-8da7-baedbcca8634",
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
              "uuid": "62937582-e2ac-4843-88ad-6f53d8f97a4d",
              "parent_uuid": "84674e37-4c3c-4517-8da7-baedbcca8634",
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
              "uuid": "2cda810d-686f-4de3-8bd3-f75ab53d2550",
              "parent_uuid": "84674e37-4c3c-4517-8da7-baedbcca8634",
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
          "uuid": "981b232b-a102-4aa7-9014-f6cf40f1e0c9",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d944bc22-7223-448f-96fc-ec6b8c8df026",
              "parent_uuid": "981b232b-a102-4aa7-9014-f6cf40f1e0c9",
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
              "uuid": "08cce75e-8538-43c9-8606-2ca7f485f9e1",
              "parent_uuid": "981b232b-a102-4aa7-9014-f6cf40f1e0c9",
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
              "uuid": "308d125f-f59a-4a34-8a06-7c7f8d386202",
              "parent_uuid": "981b232b-a102-4aa7-9014-f6cf40f1e0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "076db0d5-739f-451a-9afd-e39a646ceb67",
                  "parent_uuid": "308d125f-f59a-4a34-8a06-7c7f8d386202",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "078cae1f-ab28-42f6-801a-e93d62f48ef4",
              "parent_uuid": "981b232b-a102-4aa7-9014-f6cf40f1e0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb925818-faa1-465a-94c3-58ed7a03204b",
                  "parent_uuid": "078cae1f-ab28-42f6-801a-e93d62f48ef4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2309476d-9baf-446f-a6ce-420574076800",
              "parent_uuid": "981b232b-a102-4aa7-9014-f6cf40f1e0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93a054e6-df68-47ad-811b-b820ad284e25",
                  "parent_uuid": "2309476d-9baf-446f-a6ce-420574076800",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d1b2423-4f78-4e49-9691-d53de096deed",
              "parent_uuid": "981b232b-a102-4aa7-9014-f6cf40f1e0c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6637ff5e-aead-4da0-8c76-95eaa3b0860e",
                  "parent_uuid": "9d1b2423-4f78-4e49-9691-d53de096deed",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4f4b9037-8732-47e5-b161-068706527878",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f91a0035-f495-483c-9769-c369c6c2443d",
              "parent_uuid": "4f4b9037-8732-47e5-b161-068706527878",
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
              "uuid": "1d4ad098-7899-4860-8420-c51c77139727",
              "parent_uuid": "4f4b9037-8732-47e5-b161-068706527878",
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
              "uuid": "3b5cbd50-c975-4dc7-9283-b5591d545180",
              "parent_uuid": "4f4b9037-8732-47e5-b161-068706527878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20c37d34-d46e-494e-808d-8d275028bcfc",
                  "parent_uuid": "3b5cbd50-c975-4dc7-9283-b5591d545180",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe7d72f7-c090-445a-a26b-7e2562424c07",
              "parent_uuid": "4f4b9037-8732-47e5-b161-068706527878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f639265a-da6a-43e7-8d7b-899f2154f165",
                  "parent_uuid": "fe7d72f7-c090-445a-a26b-7e2562424c07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fd477c5-ec02-4d9f-85fe-87256088ef7f",
              "parent_uuid": "4f4b9037-8732-47e5-b161-068706527878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67b9c1ba-0bec-4441-98ea-2aeb50ad419c",
                  "parent_uuid": "0fd477c5-ec02-4d9f-85fe-87256088ef7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d93e4b1c-7fdf-48e1-91fc-34bc09421f70",
              "parent_uuid": "4f4b9037-8732-47e5-b161-068706527878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d86b9d0f-5c7b-4c6f-9acc-1533e7f68643",
                  "parent_uuid": "d93e4b1c-7fdf-48e1-91fc-34bc09421f70",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "353c7afb-dabb-4bfe-a794-f842e2218145",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30ccf467-c3f1-4c0d-a5a7-a4f37e8309e1",
              "parent_uuid": "353c7afb-dabb-4bfe-a794-f842e2218145",
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
              "uuid": "e0eb881a-3842-4c3b-8684-bc4457769c04",
              "parent_uuid": "353c7afb-dabb-4bfe-a794-f842e2218145",
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
              "uuid": "b97cdf87-ce5e-4a4b-aecb-4527f1915962",
              "parent_uuid": "353c7afb-dabb-4bfe-a794-f842e2218145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "634d9831-b52f-43e8-a807-9b1d033d31ca",
                  "parent_uuid": "b97cdf87-ce5e-4a4b-aecb-4527f1915962",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bc109bb-6dc0-4939-9f2d-6c037e6cc8f3",
              "parent_uuid": "353c7afb-dabb-4bfe-a794-f842e2218145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4202c5d1-5b66-4cc2-9316-58c54adb52c2",
                  "parent_uuid": "5bc109bb-6dc0-4939-9f2d-6c037e6cc8f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3b6d802-0ecf-45af-b856-05b1e204d0fd",
              "parent_uuid": "353c7afb-dabb-4bfe-a794-f842e2218145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a70f8910-4d06-40ad-9456-74e2e31caf22",
                  "parent_uuid": "e3b6d802-0ecf-45af-b856-05b1e204d0fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6456d829-36ed-4fae-82d6-b9c036285e70",
              "parent_uuid": "353c7afb-dabb-4bfe-a794-f842e2218145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76563dc8-4c04-46eb-b19b-f5df1b2f659d",
                  "parent_uuid": "6456d829-36ed-4fae-82d6-b9c036285e70",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "51a00e97-2e21-4686-9587-567347674749",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "afcd8879-a8fe-4abe-81b8-6567430ef904",
              "parent_uuid": "51a00e97-2e21-4686-9587-567347674749",
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
              "uuid": "f4f4847c-38c2-496b-9d62-b76526f6b8b6",
              "parent_uuid": "51a00e97-2e21-4686-9587-567347674749",
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
              "uuid": "7031c6a8-24bc-429c-92d0-5b3a333928db",
              "parent_uuid": "51a00e97-2e21-4686-9587-567347674749",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7156f7bd-7e4f-403b-a63f-9625cf12f5e4",
                  "parent_uuid": "7031c6a8-24bc-429c-92d0-5b3a333928db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f93cde6a-6d9b-489a-938a-7824efd39fba",
              "parent_uuid": "51a00e97-2e21-4686-9587-567347674749",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8da6940-705e-4a99-b773-4bd7d7764d73",
                  "parent_uuid": "f93cde6a-6d9b-489a-938a-7824efd39fba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1892ce2-652c-4fa8-84f0-7aeb68b76536",
              "parent_uuid": "51a00e97-2e21-4686-9587-567347674749",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1141219-d6f7-4517-b885-490e18f46d13",
                  "parent_uuid": "a1892ce2-652c-4fa8-84f0-7aeb68b76536",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c9ca39a-21bd-41d1-8216-1d764ca2bc3b",
              "parent_uuid": "51a00e97-2e21-4686-9587-567347674749",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93bbedc3-48a5-421d-a517-54ac351b273e",
                  "parent_uuid": "9c9ca39a-21bd-41d1-8216-1d764ca2bc3b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5dcaef17-8f36-40dc-9edd-c6d59d7524ce",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "257e7266-f6a7-4d74-b444-d31cb686d892",
              "parent_uuid": "5dcaef17-8f36-40dc-9edd-c6d59d7524ce",
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
          "uuid": "a6d0a9ba-e94e-4c43-a174-5788dfee211d",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b9c4031-80bf-4624-8001-10ffc239df1d",
              "parent_uuid": "a6d0a9ba-e94e-4c43-a174-5788dfee211d",
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
          "uuid": "a4ff97db-9b2a-495a-96a2-fa2cf908a7ed",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2dece20-5624-4532-89e6-6ee17464d262",
              "parent_uuid": "a4ff97db-9b2a-495a-96a2-fa2cf908a7ed",
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
                  "uuid": "f9317548-ad12-44ca-a852-dce818000ec5",
                  "parent_uuid": "d2dece20-5624-4532-89e6-6ee17464d262",
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
          "uuid": "dbba343c-6759-476a-8968-dabaa6fe1431",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ac6e839-afd0-4189-9d78-c65441b950ee",
              "parent_uuid": "dbba343c-6759-476a-8968-dabaa6fe1431",
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
          "uuid": "c3c38531-d52a-444a-b7ce-a5fbe39c21ec",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "15ca6fbe-8c32-440f-ba4b-f30538caadf7",
              "parent_uuid": "c3c38531-d52a-444a-b7ce-a5fbe39c21ec",
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
          "uuid": "b1d2b9ca-0d22-4324-8987-006632c451da",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8436198d-332b-456e-ac7d-daa9cfdb2846",
              "parent_uuid": "b1d2b9ca-0d22-4324-8987-006632c451da",
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
              "uuid": "8552b48e-a6b6-454c-b35f-e05f763a18fd",
              "parent_uuid": "b1d2b9ca-0d22-4324-8987-006632c451da",
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
              "uuid": "52552db5-e10f-4365-bf40-da99167a04e3",
              "parent_uuid": "b1d2b9ca-0d22-4324-8987-006632c451da",
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
              "uuid": "cd979a0d-6bb5-42f0-b194-5098431827d6",
              "parent_uuid": "b1d2b9ca-0d22-4324-8987-006632c451da",
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
              "uuid": "9327ed23-a76d-4601-ba82-781e913e0692",
              "parent_uuid": "b1d2b9ca-0d22-4324-8987-006632c451da",
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
              "uuid": "0e4824b3-8d7f-41f2-9dbb-dfa66bd82c37",
              "parent_uuid": "b1d2b9ca-0d22-4324-8987-006632c451da",
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
          "uuid": "f9deb218-f3cb-4e31-af87-ffd6ba071f89",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "678acdec-b512-425c-bf99-3816e7efcbc4",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f47e630-7107-4cf9-a106-6ece3c2924b8",
              "parent_uuid": "678acdec-b512-425c-bf99-3816e7efcbc4",
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
              "uuid": "bb5cd014-c7f0-468a-9080-d9067fa328b4",
              "parent_uuid": "678acdec-b512-425c-bf99-3816e7efcbc4",
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
              "uuid": "18714d91-5532-4e63-b67d-58b36dc19e5b",
              "parent_uuid": "678acdec-b512-425c-bf99-3816e7efcbc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30f6a991-fb1b-4b46-83bd-03f87851f3c3",
                  "parent_uuid": "18714d91-5532-4e63-b67d-58b36dc19e5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e4f3aaa-ef30-4194-8b4f-698ea0f0d2fb",
              "parent_uuid": "678acdec-b512-425c-bf99-3816e7efcbc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e899b80-7356-4a14-8dcb-a390430763bd",
                  "parent_uuid": "2e4f3aaa-ef30-4194-8b4f-698ea0f0d2fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23cf0fa5-3fc5-4c8a-9735-61cd21115835",
              "parent_uuid": "678acdec-b512-425c-bf99-3816e7efcbc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b2582c6-3bfd-492d-a66b-078eedfabeaa",
                  "parent_uuid": "23cf0fa5-3fc5-4c8a-9735-61cd21115835",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f66636aa-2f87-4dc4-b330-b583d489472a",
              "parent_uuid": "678acdec-b512-425c-bf99-3816e7efcbc4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b545d7c-9e3b-466f-9151-34f7f1d15cc1",
                  "parent_uuid": "f66636aa-2f87-4dc4-b330-b583d489472a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fea7ed0c-ede0-4a22-9e26-8c71e8b06855",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "646e552f-8cef-4452-ae8b-cfd3c704629c",
              "parent_uuid": "fea7ed0c-ede0-4a22-9e26-8c71e8b06855",
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
              "uuid": "9bc5c3a8-5bf0-40e5-9e99-51c23c4eb622",
              "parent_uuid": "fea7ed0c-ede0-4a22-9e26-8c71e8b06855",
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
              "uuid": "c23c709b-6f6b-4c8f-bf0a-0b4c16ee09fa",
              "parent_uuid": "fea7ed0c-ede0-4a22-9e26-8c71e8b06855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "409233be-3d10-4745-b8c7-1757c3ff033b",
                  "parent_uuid": "c23c709b-6f6b-4c8f-bf0a-0b4c16ee09fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5b5ce72-4517-41c2-8f13-07279298fe52",
              "parent_uuid": "fea7ed0c-ede0-4a22-9e26-8c71e8b06855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cab58ae-34c1-41cf-bff2-800be1843454",
                  "parent_uuid": "f5b5ce72-4517-41c2-8f13-07279298fe52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36287701-34c6-456b-91fe-ce0d575e99a0",
              "parent_uuid": "fea7ed0c-ede0-4a22-9e26-8c71e8b06855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01be03a5-4b64-49a7-9eae-8b7320169249",
                  "parent_uuid": "36287701-34c6-456b-91fe-ce0d575e99a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fa815b6-3939-47a4-a902-2cd093892bf2",
              "parent_uuid": "fea7ed0c-ede0-4a22-9e26-8c71e8b06855",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5fe93df-f0c1-4399-87c6-d39d2b567a17",
                  "parent_uuid": "6fa815b6-3939-47a4-a902-2cd093892bf2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "559f7913-7fb7-4f51-9a31-675743a008f6",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cc23bd3-154c-4725-a578-51246a94a4db",
              "parent_uuid": "559f7913-7fb7-4f51-9a31-675743a008f6",
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
              "uuid": "36629993-6348-4cd1-a942-672984b17113",
              "parent_uuid": "559f7913-7fb7-4f51-9a31-675743a008f6",
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
              "uuid": "45c8dbfc-534d-4f30-8f31-f6f649f963d7",
              "parent_uuid": "559f7913-7fb7-4f51-9a31-675743a008f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c122bb07-27e3-4c9f-a6b9-0325698178b8",
                  "parent_uuid": "45c8dbfc-534d-4f30-8f31-f6f649f963d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1aae9440-56ad-4401-9c4b-f6f3b2021da9",
              "parent_uuid": "559f7913-7fb7-4f51-9a31-675743a008f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a66bcbe8-762a-4629-8f61-666a241ff291",
                  "parent_uuid": "1aae9440-56ad-4401-9c4b-f6f3b2021da9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4da614ed-6eab-4be0-ad25-6619f70cc573",
              "parent_uuid": "559f7913-7fb7-4f51-9a31-675743a008f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4da6a65-ac57-4b08-95d8-31116fcd4897",
                  "parent_uuid": "4da614ed-6eab-4be0-ad25-6619f70cc573",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb11ac03-93d2-4253-b659-33ee84c50022",
              "parent_uuid": "559f7913-7fb7-4f51-9a31-675743a008f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b19f61ce-2157-493a-9e72-6331c8fd1a13",
                  "parent_uuid": "fb11ac03-93d2-4253-b659-33ee84c50022",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "391cdf7d-2fbd-47f5-b81d-cfa62e247016",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5a729c11-416b-4289-adc6-3ca5ab4ef6ad",
              "parent_uuid": "391cdf7d-2fbd-47f5-b81d-cfa62e247016",
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
              "uuid": "20335a2c-2e42-4b83-9958-09f0213bfb7c",
              "parent_uuid": "391cdf7d-2fbd-47f5-b81d-cfa62e247016",
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
              "uuid": "9c01b93a-241a-4395-9c6d-edeefc6f0f90",
              "parent_uuid": "391cdf7d-2fbd-47f5-b81d-cfa62e247016",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37e7509f-4412-4234-a1d5-def176961a5d",
                  "parent_uuid": "9c01b93a-241a-4395-9c6d-edeefc6f0f90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae969f78-9480-4c27-b435-2ccff442aaf2",
              "parent_uuid": "391cdf7d-2fbd-47f5-b81d-cfa62e247016",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "542ecde1-2ca9-4e25-abf4-7b5f9a4b09b2",
                  "parent_uuid": "ae969f78-9480-4c27-b435-2ccff442aaf2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb2ea0bb-f656-4990-a303-9566b7210003",
              "parent_uuid": "391cdf7d-2fbd-47f5-b81d-cfa62e247016",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6943ea4a-80b4-4b42-94d6-10503bbb26df",
                  "parent_uuid": "bb2ea0bb-f656-4990-a303-9566b7210003",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d350caa0-a2d1-4aee-9643-ac3d6e544685",
              "parent_uuid": "391cdf7d-2fbd-47f5-b81d-cfa62e247016",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "847029db-3791-4df4-ad46-f04a20566cd4",
                  "parent_uuid": "d350caa0-a2d1-4aee-9643-ac3d6e544685",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73021d78-13b2-4ce9-9a81-472df336b820",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6927e247-bbfe-4352-80e6-b796bab4d592",
              "parent_uuid": "73021d78-13b2-4ce9-9a81-472df336b820",
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
              "uuid": "0fc3b36a-e2ab-4c93-9cf8-302fbc611749",
              "parent_uuid": "73021d78-13b2-4ce9-9a81-472df336b820",
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
              "uuid": "14ca54aa-c441-4a2f-98c2-1aa7393190c2",
              "parent_uuid": "73021d78-13b2-4ce9-9a81-472df336b820",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a4bf822-d0c1-4ab6-840f-4534c85cb4d1",
                  "parent_uuid": "14ca54aa-c441-4a2f-98c2-1aa7393190c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad5ee697-adcf-4a43-8f37-3a193de9295a",
              "parent_uuid": "73021d78-13b2-4ce9-9a81-472df336b820",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94203412-8478-4ee8-9d6f-f2e2c8f1804f",
                  "parent_uuid": "ad5ee697-adcf-4a43-8f37-3a193de9295a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5fe54e5e-c6a8-4b9c-be4c-847667f9ecf8",
              "parent_uuid": "73021d78-13b2-4ce9-9a81-472df336b820",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6932eef8-daa3-41dd-ba03-3af531eb48e5",
                  "parent_uuid": "5fe54e5e-c6a8-4b9c-be4c-847667f9ecf8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6355c8f-1411-4e7b-9bcd-d48da29be42c",
              "parent_uuid": "73021d78-13b2-4ce9-9a81-472df336b820",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "939bc296-1b6e-4e3f-bd30-84f95c4820fb",
                  "parent_uuid": "c6355c8f-1411-4e7b-9bcd-d48da29be42c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "11755d06-edfa-4cd8-867a-26c286da4fef",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba258985-a405-47bd-a7b2-0086d9fe28ea",
              "parent_uuid": "11755d06-edfa-4cd8-867a-26c286da4fef",
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
              "uuid": "22eca14f-272b-42dd-99bc-79371bded0d2",
              "parent_uuid": "11755d06-edfa-4cd8-867a-26c286da4fef",
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
              "uuid": "99b54dfd-baff-4852-a95b-cef17bf93bf2",
              "parent_uuid": "11755d06-edfa-4cd8-867a-26c286da4fef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff6f43ed-c6e9-40e7-bfdd-0c5bb19db492",
                  "parent_uuid": "99b54dfd-baff-4852-a95b-cef17bf93bf2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "422f481b-8daf-4eee-b024-5c8698b57dda",
              "parent_uuid": "11755d06-edfa-4cd8-867a-26c286da4fef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84c8cfd2-2bf8-4774-bae7-776fc75204c1",
                  "parent_uuid": "422f481b-8daf-4eee-b024-5c8698b57dda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6b8fb73-e720-40f7-bbfa-bf31f1532155",
              "parent_uuid": "11755d06-edfa-4cd8-867a-26c286da4fef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05283e8e-060a-4eab-a25d-8017a99ec6e1",
                  "parent_uuid": "b6b8fb73-e720-40f7-bbfa-bf31f1532155",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68658b46-c1ca-4c82-a310-8295b8ba6e5c",
              "parent_uuid": "11755d06-edfa-4cd8-867a-26c286da4fef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24f4697d-e750-48f2-a0d9-652dd2dd806b",
                  "parent_uuid": "68658b46-c1ca-4c82-a310-8295b8ba6e5c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ab5b845-cd00-4977-b04c-ec7e94d7f387",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "501264a8-51b4-4840-a9cd-4eec2d432913",
              "parent_uuid": "1ab5b845-cd00-4977-b04c-ec7e94d7f387",
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
          "uuid": "9bc95765-0105-4bb5-9ed1-be398fa96de6",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b436ca5-c048-4b14-be48-0753fe9c22e1",
              "parent_uuid": "9bc95765-0105-4bb5-9ed1-be398fa96de6",
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
          "uuid": "cae04227-24b6-4a55-83c3-744723abf285",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "94a89a75-89a3-48da-9554-e0305bb322d1",
              "parent_uuid": "cae04227-24b6-4a55-83c3-744723abf285",
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
                  "uuid": "f3db9fab-4b29-4dce-924c-9c61ded0ca6c",
                  "parent_uuid": "94a89a75-89a3-48da-9554-e0305bb322d1",
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
          "uuid": "5be9c7a6-0c00-4b58-ba3f-2bbeea7bea87",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8902366-c00d-4cf7-bfce-3f458729507d",
              "parent_uuid": "5be9c7a6-0c00-4b58-ba3f-2bbeea7bea87",
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
          "uuid": "10cff3d9-109d-4775-85e8-5e4258c75888",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b9f44fc5-d3d5-4ef9-8407-153c254f6d92",
              "parent_uuid": "10cff3d9-109d-4775-85e8-5e4258c75888",
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
          "uuid": "6cb53042-3261-4801-af87-0c34b763d536",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40cadf48-a6c5-49f1-9318-8426562142fd",
              "parent_uuid": "6cb53042-3261-4801-af87-0c34b763d536",
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
              "uuid": "cb4ee39c-b83b-46b8-be8d-acc2a65abbbc",
              "parent_uuid": "6cb53042-3261-4801-af87-0c34b763d536",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "37936c91-6b42-49e5-bedb-3447b08d1328",
              "parent_uuid": "6cb53042-3261-4801-af87-0c34b763d536",
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
              "uuid": "d97be5cd-a3af-4a54-bbca-b53af4345f95",
              "parent_uuid": "6cb53042-3261-4801-af87-0c34b763d536",
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
              "uuid": "fdf180fd-8164-40e8-af30-1831c941203c",
              "parent_uuid": "6cb53042-3261-4801-af87-0c34b763d536",
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
          "uuid": "3bc75806-ed1c-4daa-aab1-1ba15358ad8e",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f0618b9-a7b7-499e-ab10-9f10625dc776",
              "parent_uuid": "3bc75806-ed1c-4daa-aab1-1ba15358ad8e",
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
              "uuid": "4a6c95b0-2b5f-47fa-8099-43352aef970f",
              "parent_uuid": "3bc75806-ed1c-4daa-aab1-1ba15358ad8e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5e79e8da-eb6c-4ab7-90c8-7aa151dbb64c",
              "parent_uuid": "3bc75806-ed1c-4daa-aab1-1ba15358ad8e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2ad1c33a-6fed-4dd3-ada3-8f9e7c2aee97",
              "parent_uuid": "3bc75806-ed1c-4daa-aab1-1ba15358ad8e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "40effa0a-1768-4d13-af2c-de97ee18d0f4",
              "parent_uuid": "3bc75806-ed1c-4daa-aab1-1ba15358ad8e",
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
          "uuid": "25593c75-2100-479c-8b65-21c1a2a2e35e",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13124d5a-2906-4c5a-a2c8-bb86005e2752",
              "parent_uuid": "25593c75-2100-479c-8b65-21c1a2a2e35e",
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
              "uuid": "7a4d20d9-cf9f-4e44-8793-baae62348066",
              "parent_uuid": "25593c75-2100-479c-8b65-21c1a2a2e35e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "98ad1108-8771-427d-b8dc-c81c3e6235ed",
              "parent_uuid": "25593c75-2100-479c-8b65-21c1a2a2e35e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2c6a9133-bbd6-4458-8b2b-8dea7987b830",
              "parent_uuid": "25593c75-2100-479c-8b65-21c1a2a2e35e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dbb7a146-d2df-44cc-bd78-1c9209b0a068",
              "parent_uuid": "25593c75-2100-479c-8b65-21c1a2a2e35e",
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
          "uuid": "129aa058-0d5b-4a6a-b208-b94d52e15593",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b69f6e2-bdfd-44c3-83ee-015e22d657a0",
              "parent_uuid": "129aa058-0d5b-4a6a-b208-b94d52e15593",
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
              "uuid": "3973e778-a9f0-41af-a67d-ef841028a80c",
              "parent_uuid": "129aa058-0d5b-4a6a-b208-b94d52e15593",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "38afd97b-2d0c-41df-8ae4-3e945d60cc63",
              "parent_uuid": "129aa058-0d5b-4a6a-b208-b94d52e15593",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c58f7fad-8ca0-445c-ad75-eeedf40d3296",
              "parent_uuid": "129aa058-0d5b-4a6a-b208-b94d52e15593",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9f984255-7759-44e8-bc0e-bad787442c9b",
              "parent_uuid": "129aa058-0d5b-4a6a-b208-b94d52e15593",
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
          "uuid": "df2cb5a3-cc91-4971-aa72-c68bdbeebf2e",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "377f5d30-fe2e-4e21-89fb-c681f8792b0f",
              "parent_uuid": "df2cb5a3-cc91-4971-aa72-c68bdbeebf2e",
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
              "uuid": "98e6c95d-dd8e-45c3-9072-e5d93e6836b2",
              "parent_uuid": "df2cb5a3-cc91-4971-aa72-c68bdbeebf2e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d0dc6a8d-0c5b-48c6-97d3-a63e63bdb8c6",
              "parent_uuid": "df2cb5a3-cc91-4971-aa72-c68bdbeebf2e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "155d9c55-9a5a-44d1-9fe7-9d2b5521a34e",
              "parent_uuid": "df2cb5a3-cc91-4971-aa72-c68bdbeebf2e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f11a0a8c-d451-4159-a03e-d5dcb6527a7a",
              "parent_uuid": "df2cb5a3-cc91-4971-aa72-c68bdbeebf2e",
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
          "uuid": "15e84285-b9b7-4291-af04-d1996582a6c8",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "25948d1c-a15b-4874-936b-d28467c63ba6",
              "parent_uuid": "15e84285-b9b7-4291-af04-d1996582a6c8",
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
              "uuid": "5199d669-06b7-4a74-a2d9-b838e8fbe4f8",
              "parent_uuid": "15e84285-b9b7-4291-af04-d1996582a6c8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4591806b-717d-43fb-81c3-73f677ec90b9",
              "parent_uuid": "15e84285-b9b7-4291-af04-d1996582a6c8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "17795ffd-07bf-4848-8df8-ec9580dd022c",
              "parent_uuid": "15e84285-b9b7-4291-af04-d1996582a6c8",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4589000e-e4fb-41ab-ab46-3eec722fd5a3",
              "parent_uuid": "15e84285-b9b7-4291-af04-d1996582a6c8",
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
          "uuid": "a6adbb11-4c4a-4b00-a939-5088f78e8494",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d2f6bf3-3c20-4951-bb9f-c5d3ec297f44",
              "parent_uuid": "a6adbb11-4c4a-4b00-a939-5088f78e8494",
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
              "uuid": "9c0e92ea-189c-48d7-87c9-aeab4971c001",
              "parent_uuid": "a6adbb11-4c4a-4b00-a939-5088f78e8494",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "23ecf8b8-0efd-4e6d-af31-46561babe94f",
              "parent_uuid": "a6adbb11-4c4a-4b00-a939-5088f78e8494",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7760f3ef-971a-44b5-92fb-58fa6902c467",
              "parent_uuid": "a6adbb11-4c4a-4b00-a939-5088f78e8494",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d2396619-983d-425a-a2ce-5fad5e4ab507",
              "parent_uuid": "a6adbb11-4c4a-4b00-a939-5088f78e8494",
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
          "uuid": "013f05dd-e00b-4443-b569-38dede3fb0aa",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ca1b81b-0734-484b-98d1-ba77ab74dbd9",
              "parent_uuid": "013f05dd-e00b-4443-b569-38dede3fb0aa",
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
              "uuid": "3f503d6b-9d72-4955-9997-c5570c817d43",
              "parent_uuid": "013f05dd-e00b-4443-b569-38dede3fb0aa",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "45ae27ee-58ec-4fbd-bfe8-7f387c4fb60d",
              "parent_uuid": "013f05dd-e00b-4443-b569-38dede3fb0aa",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ddb46c4b-df08-4561-b748-63c6bff644b4",
              "parent_uuid": "013f05dd-e00b-4443-b569-38dede3fb0aa",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1f5fead2-a4a3-46e3-aa64-b5fdb71cf21e",
              "parent_uuid": "013f05dd-e00b-4443-b569-38dede3fb0aa",
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
          "uuid": "146eb310-47d6-4a85-a13c-2277d07a2e82",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c98de87-e4ae-4594-8a4c-91f649a5e561",
              "parent_uuid": "146eb310-47d6-4a85-a13c-2277d07a2e82",
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
              "uuid": "a140b90f-2d4f-4265-8e6d-8c0515b3f9ac",
              "parent_uuid": "146eb310-47d6-4a85-a13c-2277d07a2e82",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fd914360-af38-428e-99c8-eb2963d0b0d9",
              "parent_uuid": "146eb310-47d6-4a85-a13c-2277d07a2e82",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3ec70fb5-c591-48b6-8482-11640c71a8b5",
              "parent_uuid": "146eb310-47d6-4a85-a13c-2277d07a2e82",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d30afcce-23a7-47eb-9c9d-d6c24b538d6c",
              "parent_uuid": "146eb310-47d6-4a85-a13c-2277d07a2e82",
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
          "uuid": "9c4baf5a-5a79-4b44-999b-190d3a26a990",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d520202d-ec82-4254-a265-7fdbcf341c01",
              "parent_uuid": "9c4baf5a-5a79-4b44-999b-190d3a26a990",
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
          "uuid": "ee426406-259f-424d-bb17-8e8c7a66659c",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9820e081-c37d-49e8-bc3d-efbcda1dff46",
              "parent_uuid": "ee426406-259f-424d-bb17-8e8c7a66659c",
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
          "uuid": "a135adb9-7145-4d1b-96f4-09f36efb647d",
          "parent_uuid": "7d6e99ae-0856-4663-ab00-9e0f356448bd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9141b890-684d-4de1-8080-a95bdeb08a87",
              "parent_uuid": "a135adb9-7145-4d1b-96f4-09f36efb647d",
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
                  "uuid": "59da308f-f41c-4031-97b1-5fd556a74e6c",
                  "parent_uuid": "9141b890-684d-4de1-8080-a95bdeb08a87",
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

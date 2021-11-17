
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
  "uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
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
      "uuid": "bf41e5aa-f70c-41ba-a0be-5ec6002093cb",
      "parent_uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
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
      "uuid": "b34bec8e-1b5e-4080-8453-46d1a5f06d0a",
      "parent_uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
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
      "uuid": "89fbdc72-8c08-46ef-8b82-bd6f66632a1e",
      "parent_uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
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
      "uuid": "2e86cedc-802b-4796-a35b-cfed933205e6",
      "parent_uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
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
      "uuid": "ea0e2454-c65c-4eb3-a7d4-0ac7c6ca8206",
      "parent_uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
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
      "uuid": "2ac2b198-9cff-4f05-8bd3-5bf0ce8329b6",
      "parent_uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
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
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
      "parent_uuid": "642dbb15-f42c-4297-9836-cf2c9ee48875",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "ee6ab3f1-6741-4d99-90d7-e3bec5b5716a",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "5b18eb05-7423-42dd-83f0-a93e65c48f1b",
              "parent_uuid": "ee6ab3f1-6741-4d99-90d7-e3bec5b5716a",
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
              "uuid": "3441ad91-1f4b-4720-a7de-04e781b5f990",
              "parent_uuid": "ee6ab3f1-6741-4d99-90d7-e3bec5b5716a",
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
              "uuid": "3d3d7eeb-7473-42a6-925b-72923c44c3de",
              "parent_uuid": "ee6ab3f1-6741-4d99-90d7-e3bec5b5716a",
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
              "uuid": "5133de7d-6022-4974-be03-c746877fabd6",
              "parent_uuid": "ee6ab3f1-6741-4d99-90d7-e3bec5b5716a",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "7"
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
          "uuid": "d17d9323-509c-415a-8ee8-5d2bc561fb71",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "c348b446-e619-4c17-a046-ed315edd7850",
              "parent_uuid": "d17d9323-509c-415a-8ee8-5d2bc561fb71",
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
              "uuid": "9cf3418d-47a4-410f-aee9-4b8eb24be0c5",
              "parent_uuid": "d17d9323-509c-415a-8ee8-5d2bc561fb71",
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
              "uuid": "dae6db83-b442-4231-b325-f8c981ba09b7",
              "parent_uuid": "d17d9323-509c-415a-8ee8-5d2bc561fb71",
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
              "uuid": "41c54896-9a14-47df-9f3a-bfe7404f91c4",
              "parent_uuid": "d17d9323-509c-415a-8ee8-5d2bc561fb71",
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
                  "7"
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
          "uuid": "f1ebfe88-effe-436a-aeaa-ac550a4de6ae",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "38fadc44-06a5-411b-9082-c1a2652175d3",
              "parent_uuid": "f1ebfe88-effe-436a-aeaa-ac550a4de6ae",
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
              "uuid": "83b211fe-6ae2-4398-8cc9-8dbedfd30831",
              "parent_uuid": "f1ebfe88-effe-436a-aeaa-ac550a4de6ae",
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
              "uuid": "6bd39852-24f8-4a54-a91e-1212bdf5da26",
              "parent_uuid": "f1ebfe88-effe-436a-aeaa-ac550a4de6ae",
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
              "uuid": "c782801d-4282-4c3d-90e5-23e8d41b4f96",
              "parent_uuid": "f1ebfe88-effe-436a-aeaa-ac550a4de6ae",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
                [
                  "colspan",
                  "7"
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
          "uuid": "2c98b0f9-5ee1-40d8-9256-e4811efbd6bc",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88a10401-ec9f-4cc9-b0fa-d69eed126648",
              "parent_uuid": "2c98b0f9-5ee1-40d8-9256-e4811efbd6bc",
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
              "uuid": "07a3f7d3-17ea-427a-a142-0c818dcaed68",
              "parent_uuid": "2c98b0f9-5ee1-40d8-9256-e4811efbd6bc",
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
              "uuid": "25fd6a58-4d9e-47f3-a5c7-1317a1c6edcf",
              "parent_uuid": "2c98b0f9-5ee1-40d8-9256-e4811efbd6bc",
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
              "uuid": "cda05b86-9d1d-442f-ac64-739b9a790dd6",
              "parent_uuid": "2c98b0f9-5ee1-40d8-9256-e4811efbd6bc",
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
              "uuid": "efc76aa2-dfc5-4e2e-b158-72241943b7f0",
              "parent_uuid": "2c98b0f9-5ee1-40d8-9256-e4811efbd6bc",
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
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "7f9ca620-6f65-401d-8254-067149bea086",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2b3db12e-265c-4633-b8c2-a90a668bd757",
              "parent_uuid": "7f9ca620-6f65-401d-8254-067149bea086",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "10"
                ],
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
          "uuid": "49830c52-ed07-4ec3-b974-c74b7cdc4ab6",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e2c9e73-f87a-4195-9c5d-f22afcdf72e6",
              "parent_uuid": "49830c52-ed07-4ec3-b974-c74b7cdc4ab6",
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
              "uuid": "2a8a752c-1e60-487e-a214-de2f842e22ba",
              "parent_uuid": "49830c52-ed07-4ec3-b974-c74b7cdc4ab6",
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
              "uuid": "f91cd24c-440f-4c90-88cb-b5ccc12b204b",
              "parent_uuid": "49830c52-ed07-4ec3-b974-c74b7cdc4ab6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a7c651da-677e-49ac-93ea-0d89487ab76f",
                  "parent_uuid": "f91cd24c-440f-4c90-88cb-b5ccc12b204b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70fd53f9-bb0c-4397-8024-d7c520778cf3",
              "parent_uuid": "49830c52-ed07-4ec3-b974-c74b7cdc4ab6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e709440a-4d9b-4de5-b9ed-2a6158132a33",
                  "parent_uuid": "70fd53f9-bb0c-4397-8024-d7c520778cf3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfde0def-96f7-40e8-b5cf-7e40b55398f2",
              "parent_uuid": "49830c52-ed07-4ec3-b974-c74b7cdc4ab6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b470b463-3feb-4223-abf0-a529aa8279da",
                  "parent_uuid": "cfde0def-96f7-40e8-b5cf-7e40b55398f2",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "c2577397-5740-4119-9c7c-212cf11ccab0",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d166ec13-58d8-43ed-8103-30775ef199bd",
              "parent_uuid": "c2577397-5740-4119-9c7c-212cf11ccab0",
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
              "uuid": "631f50d9-5d46-4ed6-8942-63dc411d59f8",
              "parent_uuid": "c2577397-5740-4119-9c7c-212cf11ccab0",
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
              "uuid": "fbbcb862-05fc-43bd-bd61-f31f3478201d",
              "parent_uuid": "c2577397-5740-4119-9c7c-212cf11ccab0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3251befb-f9eb-4961-8a71-3600f1d4cdac",
                  "parent_uuid": "fbbcb862-05fc-43bd-bd61-f31f3478201d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8523c41d-c20b-43fc-8e42-2802deed641a",
              "parent_uuid": "c2577397-5740-4119-9c7c-212cf11ccab0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4277d963-7b15-4071-8767-f8eee0fc6861",
                  "parent_uuid": "8523c41d-c20b-43fc-8e42-2802deed641a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "705da4ea-be67-4d37-9f88-763647313833",
              "parent_uuid": "c2577397-5740-4119-9c7c-212cf11ccab0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2e0bfff9-3db6-4772-9418-3c923d216c27",
                  "parent_uuid": "705da4ea-be67-4d37-9f88-763647313833",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "af56ae91-49db-4b2b-b6e8-ab6c74d94229",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf7a8c25-b9bb-46ea-8541-4680edb16424",
              "parent_uuid": "af56ae91-49db-4b2b-b6e8-ab6c74d94229",
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
              "uuid": "0a5945e5-9f6a-4791-acf4-8c57995f0270",
              "parent_uuid": "af56ae91-49db-4b2b-b6e8-ab6c74d94229",
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
              "uuid": "e1fc49d7-0a8c-4fc3-8cbe-c0480280a448",
              "parent_uuid": "af56ae91-49db-4b2b-b6e8-ab6c74d94229",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e01e8cb7-4630-43bd-b14e-4ab665f7b0f4",
                  "parent_uuid": "e1fc49d7-0a8c-4fc3-8cbe-c0480280a448",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9719afa6-ed5d-4f62-aadd-15d34bc00931",
              "parent_uuid": "af56ae91-49db-4b2b-b6e8-ab6c74d94229",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bdd6b29a-56d9-4bee-b2a3-0991fbcf369d",
                  "parent_uuid": "9719afa6-ed5d-4f62-aadd-15d34bc00931",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "429012c0-d615-4bae-8f17-a6d10d20d606",
              "parent_uuid": "af56ae91-49db-4b2b-b6e8-ab6c74d94229",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea44e487-0cb2-4917-9399-a3324f58c4a8",
                  "parent_uuid": "429012c0-d615-4bae-8f17-a6d10d20d606",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "67386918-a7bf-4255-a9f7-b69f4d5427fa",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32eb3b51-fbf1-4239-82c1-5edba43d3ca0",
              "parent_uuid": "67386918-a7bf-4255-a9f7-b69f4d5427fa",
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
              "uuid": "20754401-3246-4e7a-9696-c18b2f5246ae",
              "parent_uuid": "67386918-a7bf-4255-a9f7-b69f4d5427fa",
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
              "uuid": "6e800b67-281c-47c4-a603-15eacf2f635b",
              "parent_uuid": "67386918-a7bf-4255-a9f7-b69f4d5427fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22f7fc2b-978b-4f7d-aeb0-211bff35fa52",
                  "parent_uuid": "6e800b67-281c-47c4-a603-15eacf2f635b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c595eb15-996d-4dfe-a651-03316ea16fa5",
              "parent_uuid": "67386918-a7bf-4255-a9f7-b69f4d5427fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e260718d-0b01-45f9-a0ce-72c2ca43e90c",
                  "parent_uuid": "c595eb15-996d-4dfe-a651-03316ea16fa5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f82624c2-f5a7-443e-80fb-2743b32f43f5",
              "parent_uuid": "67386918-a7bf-4255-a9f7-b69f4d5427fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8d79b20-d7ae-4f3d-b586-60290c8f12f9",
                  "parent_uuid": "f82624c2-f5a7-443e-80fb-2743b32f43f5",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "730ba939-303f-445f-9339-bffd3e91c1b7",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ade13e69-8e67-4bdd-8816-47dd804f4d7d",
              "parent_uuid": "730ba939-303f-445f-9339-bffd3e91c1b7",
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
              "uuid": "226de142-eff0-4153-a569-09c17902e151",
              "parent_uuid": "730ba939-303f-445f-9339-bffd3e91c1b7",
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
              "uuid": "cdd383c7-1af5-4bde-9ea9-a52f51cc21ba",
              "parent_uuid": "730ba939-303f-445f-9339-bffd3e91c1b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08602b2d-cdee-43f0-8b88-c0da7121a719",
                  "parent_uuid": "cdd383c7-1af5-4bde-9ea9-a52f51cc21ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6fd2f6a-76e0-48df-bc68-0166625e7774",
              "parent_uuid": "730ba939-303f-445f-9339-bffd3e91c1b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "412fc7c2-008f-4dfd-8a27-95a4c0f04ecf",
                  "parent_uuid": "f6fd2f6a-76e0-48df-bc68-0166625e7774",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1aa67bdd-79c1-4e5a-a045-88d41df8cce8",
              "parent_uuid": "730ba939-303f-445f-9339-bffd3e91c1b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6b2da72-17ab-4f51-a32c-984feddb9d30",
                  "parent_uuid": "1aa67bdd-79c1-4e5a-a045-88d41df8cce8",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "9defbaf0-0dc1-42eb-8b9e-4c1569b6b8d9",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d65cf6aa-e385-4baa-91e7-aaf01959e2f6",
              "parent_uuid": "9defbaf0-0dc1-42eb-8b9e-4c1569b6b8d9",
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
              "uuid": "45bb5b5a-d66c-4e6c-8ca6-369c9b09679d",
              "parent_uuid": "9defbaf0-0dc1-42eb-8b9e-4c1569b6b8d9",
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
              "uuid": "746c5a25-561a-4785-be3e-c900cc0047ee",
              "parent_uuid": "9defbaf0-0dc1-42eb-8b9e-4c1569b6b8d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c91bd34-fb10-4334-b258-211381036284",
                  "parent_uuid": "746c5a25-561a-4785-be3e-c900cc0047ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7453aa83-47f8-4729-8003-5484efd328f6",
              "parent_uuid": "9defbaf0-0dc1-42eb-8b9e-4c1569b6b8d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e508799a-7d95-462a-96af-107229afc35f",
                  "parent_uuid": "7453aa83-47f8-4729-8003-5484efd328f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba7a2378-cb7d-4017-b247-860b47976eaf",
              "parent_uuid": "9defbaf0-0dc1-42eb-8b9e-4c1569b6b8d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54fc6a9e-5047-4a00-8c2d-725933fcf50d",
                  "parent_uuid": "ba7a2378-cb7d-4017-b247-860b47976eaf",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "051ae4bb-315f-4c94-a3d6-1abd1cd98c33",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b3d5e1f-5298-4436-ac6e-aabc2919db0a",
              "parent_uuid": "051ae4bb-315f-4c94-a3d6-1abd1cd98c33",
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
              "uuid": "6407f89f-d2d0-4257-ae28-b111a895d724",
              "parent_uuid": "051ae4bb-315f-4c94-a3d6-1abd1cd98c33",
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
              "uuid": "aa94d91c-0dc3-4a87-adea-965da5d94657",
              "parent_uuid": "051ae4bb-315f-4c94-a3d6-1abd1cd98c33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b81d0b91-2f6c-466c-baa5-6e12f1ad13e5",
                  "parent_uuid": "aa94d91c-0dc3-4a87-adea-965da5d94657",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4ad1887-769b-4f3b-b624-60bac2064102",
              "parent_uuid": "051ae4bb-315f-4c94-a3d6-1abd1cd98c33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74b1bafd-c2b1-4db9-b9bc-49dc030b0085",
                  "parent_uuid": "d4ad1887-769b-4f3b-b624-60bac2064102",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a61b0360-c7ac-47cb-a351-49a62a53fc31",
              "parent_uuid": "051ae4bb-315f-4c94-a3d6-1abd1cd98c33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6695a64-487d-4316-af00-7388f27d58e9",
                  "parent_uuid": "a61b0360-c7ac-47cb-a351-49a62a53fc31",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "2dea668c-b3d0-41bb-ba3c-0d9d827f20e9",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91306669-6478-4ba4-8174-2c856ebda07d",
              "parent_uuid": "2dea668c-b3d0-41bb-ba3c-0d9d827f20e9",
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
              "uuid": "749e91a7-0351-46d3-a01b-9fa009e06002",
              "parent_uuid": "2dea668c-b3d0-41bb-ba3c-0d9d827f20e9",
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
              "uuid": "c082d64b-dd10-407d-8751-371789050f52",
              "parent_uuid": "2dea668c-b3d0-41bb-ba3c-0d9d827f20e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99b10c66-10b0-45a3-8b5f-700b43bdd25d",
                  "parent_uuid": "c082d64b-dd10-407d-8751-371789050f52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67900105-f4d1-4c82-90ea-3d29d9a65755",
              "parent_uuid": "2dea668c-b3d0-41bb-ba3c-0d9d827f20e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c434eb3b-1f4a-4e8d-8bd8-3ab60362db92",
                  "parent_uuid": "67900105-f4d1-4c82-90ea-3d29d9a65755",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95854561-e0cd-4476-8b5c-5f8715161b20",
              "parent_uuid": "2dea668c-b3d0-41bb-ba3c-0d9d827f20e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a7f35fe-6927-4938-9bf2-4584ac5d6221",
                  "parent_uuid": "95854561-e0cd-4476-8b5c-5f8715161b20",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "78cafbaf-3402-4c56-869b-11d0d66c97ab",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c8a1f0f-24ea-4aa5-899f-ee26b1e7ef2b",
              "parent_uuid": "78cafbaf-3402-4c56-869b-11d0d66c97ab",
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
              "uuid": "abc5638c-c082-4cdd-9745-21e617a6c1b4",
              "parent_uuid": "78cafbaf-3402-4c56-869b-11d0d66c97ab",
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
              "uuid": "cd070e6e-8aae-4b45-8643-d3cb72b0dab1",
              "parent_uuid": "78cafbaf-3402-4c56-869b-11d0d66c97ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56a6aa32-721d-47cb-90b8-bb0f0f3af738",
                  "parent_uuid": "cd070e6e-8aae-4b45-8643-d3cb72b0dab1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05edd079-1633-48e8-95d5-263d0890061e",
              "parent_uuid": "78cafbaf-3402-4c56-869b-11d0d66c97ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0edead5c-5b1c-4c97-8578-0924df39bf92",
                  "parent_uuid": "05edd079-1633-48e8-95d5-263d0890061e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "485266b5-8ebe-4cf8-b3ed-a4619b8c653a",
              "parent_uuid": "78cafbaf-3402-4c56-869b-11d0d66c97ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5760c3f-259d-47e6-b51a-05822ea44ede",
                  "parent_uuid": "485266b5-8ebe-4cf8-b3ed-a4619b8c653a",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "2fc13a6f-14bd-4206-bfa6-395cade4caf7",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90529024-a035-4166-872f-ab7f6587f575",
              "parent_uuid": "2fc13a6f-14bd-4206-bfa6-395cade4caf7",
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
              "uuid": "17d80bce-4c1c-4c88-b16f-0a1a68a74d5f",
              "parent_uuid": "2fc13a6f-14bd-4206-bfa6-395cade4caf7",
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
              "uuid": "0c2551a6-beaa-4e65-b22a-383ec27b9b35",
              "parent_uuid": "2fc13a6f-14bd-4206-bfa6-395cade4caf7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7b0d870-6a01-4a40-a02e-525d082d2f59",
                  "parent_uuid": "0c2551a6-beaa-4e65-b22a-383ec27b9b35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80dcae44-a6f9-409c-a27b-f33822bf033c",
              "parent_uuid": "2fc13a6f-14bd-4206-bfa6-395cade4caf7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cba5499e-024a-4d4e-9c2a-31347b390cd8",
                  "parent_uuid": "80dcae44-a6f9-409c-a27b-f33822bf033c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4529f1d1-d768-4496-a2b7-5a332521df17",
              "parent_uuid": "2fc13a6f-14bd-4206-bfa6-395cade4caf7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8808feb-9a31-4e32-a9a9-95b39422ebf5",
                  "parent_uuid": "4529f1d1-d768-4496-a2b7-5a332521df17",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "b39007db-96f6-4c6c-b06e-e0ae74b4e3f1",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d12916ee-871f-49e1-a7db-ddd502b16284",
              "parent_uuid": "b39007db-96f6-4c6c-b06e-e0ae74b4e3f1",
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
              "uuid": "08e24cbe-e448-4847-9701-0979780ab3f8",
              "parent_uuid": "b39007db-96f6-4c6c-b06e-e0ae74b4e3f1",
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
              "uuid": "5bdbcb4a-a8e9-4ab3-9f9d-6f8ca3a42fb4",
              "parent_uuid": "b39007db-96f6-4c6c-b06e-e0ae74b4e3f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8927fb97-2e9c-4113-9485-685fd8b04b38",
                  "parent_uuid": "5bdbcb4a-a8e9-4ab3-9f9d-6f8ca3a42fb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4461b023-efcb-47bc-8906-314566469ed1",
              "parent_uuid": "b39007db-96f6-4c6c-b06e-e0ae74b4e3f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb28ae9d-7984-4d2d-9073-dbecc60a0641",
                  "parent_uuid": "4461b023-efcb-47bc-8906-314566469ed1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b319c1a9-74b8-4606-957c-2c92049ba5f7",
              "parent_uuid": "b39007db-96f6-4c6c-b06e-e0ae74b4e3f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1405ce50-0d5b-4573-8a64-81e9eb907fbc",
                  "parent_uuid": "b319c1a9-74b8-4606-957c-2c92049ba5f7",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "e8663690-985e-42f5-9b76-501df230f2a9",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3bf14fcc-c9a5-427a-928a-360d5a6e956d",
              "parent_uuid": "e8663690-985e-42f5-9b76-501df230f2a9",
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
              "uuid": "b84cbac7-89a0-4d3c-982a-4777a7829864",
              "parent_uuid": "e8663690-985e-42f5-9b76-501df230f2a9",
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
              "uuid": "6ac841c4-a98c-4ab8-ba9c-ad1eddd4a11d",
              "parent_uuid": "e8663690-985e-42f5-9b76-501df230f2a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b7f8d2c-2af2-44b0-9416-2ae23ea6b1aa",
                  "parent_uuid": "6ac841c4-a98c-4ab8-ba9c-ad1eddd4a11d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd1ba0a7-257d-4f60-8a5f-17bad731af32",
              "parent_uuid": "e8663690-985e-42f5-9b76-501df230f2a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4be7bd51-4499-46e4-a1a6-8101d4aa3df1",
                  "parent_uuid": "bd1ba0a7-257d-4f60-8a5f-17bad731af32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d53b1622-dac9-41d0-aa7c-67771c9c6566",
              "parent_uuid": "e8663690-985e-42f5-9b76-501df230f2a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b354bdf2-d60a-445c-9022-ddf50dcb0995",
                  "parent_uuid": "d53b1622-dac9-41d0-aa7c-67771c9c6566",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "8278a308-a91b-4cdf-976d-5c09fc24a139",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b39ded4-68ac-4c84-9bc2-09e58b76b986",
              "parent_uuid": "8278a308-a91b-4cdf-976d-5c09fc24a139",
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
                  "10"
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
          "uuid": "a47c1333-9a2e-479c-a10c-2effba368dda",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16a02229-3aa5-48e1-b9c8-91cde8b0ad39",
              "parent_uuid": "a47c1333-9a2e-479c-a10c-2effba368dda",
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
                  "10"
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
          "uuid": "6e17dea1-8609-48d4-8566-2868937b6711",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9269a7a-e6e3-43bd-afe1-7f3c908c543f",
              "parent_uuid": "6e17dea1-8609-48d4-8566-2868937b6711",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "63076526-0414-4ca9-a476-7fcbb118aba3",
                  "parent_uuid": "b9269a7a-e6e3-43bd-afe1-7f3c908c543f",
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
          "uuid": "3e445e07-047c-48c9-8e6c-dd1ce50c9cae",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e795245a-5bf8-4596-bd32-cf35adeb70f8",
              "parent_uuid": "3e445e07-047c-48c9-8e6c-dd1ce50c9cae",
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
                  "10"
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
          "uuid": "31921a8e-835c-475a-9998-29e9a8236061",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "2eefbbd9-4f26-4470-8ebc-1687368c290a",
              "parent_uuid": "31921a8e-835c-475a-9998-29e9a8236061",
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
                  "10"
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
          "uuid": "2bf4559e-3910-4e5a-8eb0-cbda170554f4",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb17516c-1cf5-4bf6-a1eb-adaff0a6cf87",
              "parent_uuid": "2bf4559e-3910-4e5a-8eb0-cbda170554f4",
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
              "uuid": "aad38f5f-7a0e-44d2-b96c-5502b07d5d83",
              "parent_uuid": "2bf4559e-3910-4e5a-8eb0-cbda170554f4",
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
              "uuid": "433fe67f-72ef-4bbf-bcf2-9458e704f33a",
              "parent_uuid": "2bf4559e-3910-4e5a-8eb0-cbda170554f4",
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
              "uuid": "7e42f55e-c253-43e4-8338-71c3c1bfe4c9",
              "parent_uuid": "2bf4559e-3910-4e5a-8eb0-cbda170554f4",
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
              "uuid": "1cf7f416-32cd-46ad-b428-879b4ac741ff",
              "parent_uuid": "2bf4559e-3910-4e5a-8eb0-cbda170554f4",
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
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "205c3177-ad08-49e7-b51e-0c2d520dc2ec",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb4e1f40-a95b-4425-b259-551d20d3040a",
              "parent_uuid": "205c3177-ad08-49e7-b51e-0c2d520dc2ec",
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
              "uuid": "b3f11903-bb1c-46d2-9d98-1721390e7909",
              "parent_uuid": "205c3177-ad08-49e7-b51e-0c2d520dc2ec",
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
              "uuid": "be505c05-441e-4759-a7c5-cba0a00128f0",
              "parent_uuid": "205c3177-ad08-49e7-b51e-0c2d520dc2ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e862014-7cbc-4e1e-bd5a-11e926c9a7c7",
                  "parent_uuid": "be505c05-441e-4759-a7c5-cba0a00128f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0da12878-043a-422f-9ea9-fbbf87d712d7",
              "parent_uuid": "205c3177-ad08-49e7-b51e-0c2d520dc2ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0b488d9-ad2a-409f-8908-ee09387d618c",
                  "parent_uuid": "0da12878-043a-422f-9ea9-fbbf87d712d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6157c257-aa15-42db-a137-28c64e98abe4",
              "parent_uuid": "205c3177-ad08-49e7-b51e-0c2d520dc2ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c46e015-3755-4dca-bfc7-31868630e478",
                  "parent_uuid": "6157c257-aa15-42db-a137-28c64e98abe4",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "f7f371ae-8863-47fb-b550-6278187df5c6",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13e5e98b-21ad-4372-acc3-cc51b4698a47",
              "parent_uuid": "f7f371ae-8863-47fb-b550-6278187df5c6",
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
              "uuid": "efdea411-43ae-4bc6-8b9b-b1614f463c9c",
              "parent_uuid": "f7f371ae-8863-47fb-b550-6278187df5c6",
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
              "uuid": "6015e1c5-7c35-4db9-9e46-bc0ee21e41bd",
              "parent_uuid": "f7f371ae-8863-47fb-b550-6278187df5c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78b8deb2-0a23-4012-9a00-e62bba55759c",
                  "parent_uuid": "6015e1c5-7c35-4db9-9e46-bc0ee21e41bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3ba4e02-d617-45e9-81e9-3ceb9d3ebd1c",
              "parent_uuid": "f7f371ae-8863-47fb-b550-6278187df5c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0b91343-f8a4-47c8-b2c1-60655695e3b3",
                  "parent_uuid": "c3ba4e02-d617-45e9-81e9-3ceb9d3ebd1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b99949cd-8a31-43e5-b903-67e56a5a23ca",
              "parent_uuid": "f7f371ae-8863-47fb-b550-6278187df5c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5271e448-75bd-43d8-816c-535f621fe1af",
                  "parent_uuid": "b99949cd-8a31-43e5-b903-67e56a5a23ca",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "d87a450f-4c11-4534-b40c-2a975ddf3fce",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2e6520b-ca7f-4a84-92df-202b14cb80c7",
              "parent_uuid": "d87a450f-4c11-4534-b40c-2a975ddf3fce",
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
              "uuid": "41fdb55a-37b6-4436-8917-806e5844b843",
              "parent_uuid": "d87a450f-4c11-4534-b40c-2a975ddf3fce",
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
              "uuid": "2c5724a0-a831-4a45-99f9-e3bd80e37d3e",
              "parent_uuid": "d87a450f-4c11-4534-b40c-2a975ddf3fce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "555e8869-2db0-4841-9863-f2198dcdc77e",
                  "parent_uuid": "2c5724a0-a831-4a45-99f9-e3bd80e37d3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08a21300-a234-4c6d-853d-18a2a972b3ff",
              "parent_uuid": "d87a450f-4c11-4534-b40c-2a975ddf3fce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98fa4de6-03a0-48fa-bb26-90129355d8ff",
                  "parent_uuid": "08a21300-a234-4c6d-853d-18a2a972b3ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "863cb071-f1ee-4200-9c53-5bf994b3861f",
              "parent_uuid": "d87a450f-4c11-4534-b40c-2a975ddf3fce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb0b687c-d884-4d49-8c64-65fe9e248fb6",
                  "parent_uuid": "863cb071-f1ee-4200-9c53-5bf994b3861f",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "b79029da-e177-415e-bbf7-daafec3a881b",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9420ada7-734b-4a7d-aa5a-30da069a747b",
              "parent_uuid": "b79029da-e177-415e-bbf7-daafec3a881b",
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
              "uuid": "8570a3c3-6466-4f56-8e48-881eb10d26c4",
              "parent_uuid": "b79029da-e177-415e-bbf7-daafec3a881b",
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
              "uuid": "e5cbb0d2-2bb6-4ea0-89bc-25424f4bfdb9",
              "parent_uuid": "b79029da-e177-415e-bbf7-daafec3a881b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b5598ea-99df-49c5-a409-27e252641372",
                  "parent_uuid": "e5cbb0d2-2bb6-4ea0-89bc-25424f4bfdb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f4fe9c3-7086-4aba-95f5-504719092d64",
              "parent_uuid": "b79029da-e177-415e-bbf7-daafec3a881b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a607d983-e2ac-4125-b134-cf8129b77375",
                  "parent_uuid": "8f4fe9c3-7086-4aba-95f5-504719092d64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3fef4bc2-c15e-4dd1-b615-5064d52bbfd6",
              "parent_uuid": "b79029da-e177-415e-bbf7-daafec3a881b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ef02fe9-4c71-4f73-a362-016022c91036",
                  "parent_uuid": "3fef4bc2-c15e-4dd1-b615-5064d52bbfd6",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "7696d558-405c-41db-844c-467ba3dff100",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5120f329-86ae-4173-bcf5-a475ad9a5b69",
              "parent_uuid": "7696d558-405c-41db-844c-467ba3dff100",
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
                  "10"
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
          "uuid": "0dc7e33a-be1c-48db-8ae0-2089ecabb4df",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8855ab7f-2c76-4405-909a-1eac4c121989",
              "parent_uuid": "0dc7e33a-be1c-48db-8ae0-2089ecabb4df",
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
                  "10"
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
          "uuid": "25e90954-ba3c-49d4-a636-9ee49e9517c9",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5a345f97-ae44-433e-8c45-accb20356405",
              "parent_uuid": "25e90954-ba3c-49d4-a636-9ee49e9517c9",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "435aa23c-d4c8-46a5-8fe1-e1fca748de82",
                  "parent_uuid": "5a345f97-ae44-433e-8c45-accb20356405",
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
          "uuid": "dbe2c210-3204-4494-b769-d015f81aa8a5",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d253f7dd-6bb3-46cf-a642-c3a19bb33967",
              "parent_uuid": "dbe2c210-3204-4494-b769-d015f81aa8a5",
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
                  "10"
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
          "uuid": "0c9a5b04-019a-4e18-8edf-53fefb84961e",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "2422f9d4-ca3f-496a-b387-a7643805edc6",
              "parent_uuid": "0c9a5b04-019a-4e18-8edf-53fefb84961e",
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
                  "10"
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
          "uuid": "83de9b44-d333-4bf3-ae99-bb35c1fefc50",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2e9573d-fd1e-4f80-83da-dd3c46cf1bb6",
              "parent_uuid": "83de9b44-d333-4bf3-ae99-bb35c1fefc50",
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
              "uuid": "137df6d3-9963-4222-8037-328e0a92165f",
              "parent_uuid": "83de9b44-d333-4bf3-ae99-bb35c1fefc50",
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
              "uuid": "8d95afbc-7bb6-4406-a830-00f3732a203b",
              "parent_uuid": "83de9b44-d333-4bf3-ae99-bb35c1fefc50",
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
              "uuid": "2059d21d-d44e-43cf-adc6-bf7985151519",
              "parent_uuid": "83de9b44-d333-4bf3-ae99-bb35c1fefc50",
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
              "uuid": "dd3e48ee-e128-4e72-9085-57b27eafc8b0",
              "parent_uuid": "83de9b44-d333-4bf3-ae99-bb35c1fefc50",
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
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "e4a2b4e5-12bf-43c5-974b-cd55a11c1fb3",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "3246d06c-46ec-49a8-8f01-f3eb95fb7ed2",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80f3d645-0d22-413b-ba08-a00e83212569",
              "parent_uuid": "3246d06c-46ec-49a8-8f01-f3eb95fb7ed2",
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
              "uuid": "1ae895c2-40ef-495d-8eff-fdffd600611c",
              "parent_uuid": "3246d06c-46ec-49a8-8f01-f3eb95fb7ed2",
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
              "uuid": "f9ecb149-2b6e-413c-a876-b018b83d1bfe",
              "parent_uuid": "3246d06c-46ec-49a8-8f01-f3eb95fb7ed2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f7faca0-e0c5-4abb-97b1-62a27253a692",
                  "parent_uuid": "f9ecb149-2b6e-413c-a876-b018b83d1bfe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4aa93bea-a8db-4d56-ada2-e3d4b0b4a65d",
              "parent_uuid": "3246d06c-46ec-49a8-8f01-f3eb95fb7ed2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b199238-0b9e-4846-bd0f-e61fbf99a91d",
                  "parent_uuid": "4aa93bea-a8db-4d56-ada2-e3d4b0b4a65d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33c998a7-8601-479a-8032-3c4365ef4e92",
              "parent_uuid": "3246d06c-46ec-49a8-8f01-f3eb95fb7ed2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20f4d4cc-438a-4264-a2f7-7da5ea820902",
                  "parent_uuid": "33c998a7-8601-479a-8032-3c4365ef4e92",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "aafc03e8-fb6a-4821-910a-68faf4f1ab60",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "43e2a023-f234-46a5-8420-aba07f26b33e",
              "parent_uuid": "aafc03e8-fb6a-4821-910a-68faf4f1ab60",
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
              "uuid": "3e8da477-93f7-40b0-be38-59345cad3ea2",
              "parent_uuid": "aafc03e8-fb6a-4821-910a-68faf4f1ab60",
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
              "uuid": "ff1c7ab0-49f7-4862-becd-4907d90cf0ae",
              "parent_uuid": "aafc03e8-fb6a-4821-910a-68faf4f1ab60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1bad4c3-eedc-4503-9f7d-d67c8e8ad6b3",
                  "parent_uuid": "ff1c7ab0-49f7-4862-becd-4907d90cf0ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6523d535-acae-4355-9d5d-31bbe1a8e953",
              "parent_uuid": "aafc03e8-fb6a-4821-910a-68faf4f1ab60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "934aeebb-798b-49c8-9319-17b0c63e8efe",
                  "parent_uuid": "6523d535-acae-4355-9d5d-31bbe1a8e953",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c641b26c-4c17-417c-b123-198459dbbb7f",
              "parent_uuid": "aafc03e8-fb6a-4821-910a-68faf4f1ab60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48405afa-1fe6-4e20-9631-2066abfe2606",
                  "parent_uuid": "c641b26c-4c17-417c-b123-198459dbbb7f",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "cdc5815c-1f7a-431c-bfbf-b1ae7fd3564f",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72a1682d-f54b-4661-b915-65e02ece6e1c",
              "parent_uuid": "cdc5815c-1f7a-431c-bfbf-b1ae7fd3564f",
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
              "uuid": "f57d9c48-8009-4c9c-aba4-06ebb1e8e5c7",
              "parent_uuid": "cdc5815c-1f7a-431c-bfbf-b1ae7fd3564f",
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
              "uuid": "c1ab1d1b-5a4f-4f89-87c1-dfe5fd7cea9a",
              "parent_uuid": "cdc5815c-1f7a-431c-bfbf-b1ae7fd3564f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88ca536f-53cd-415f-8f3d-f7e83dbeb140",
                  "parent_uuid": "c1ab1d1b-5a4f-4f89-87c1-dfe5fd7cea9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9e380af-1795-4ffa-bafd-82f025f11d97",
              "parent_uuid": "cdc5815c-1f7a-431c-bfbf-b1ae7fd3564f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df150a54-ab3f-431b-a6e2-6df492c9b1b7",
                  "parent_uuid": "c9e380af-1795-4ffa-bafd-82f025f11d97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d14d2b98-82a4-4d5f-885d-327f91e09e1d",
              "parent_uuid": "cdc5815c-1f7a-431c-bfbf-b1ae7fd3564f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bf81382-d7d9-4b55-a081-4884267e9380",
                  "parent_uuid": "d14d2b98-82a4-4d5f-885d-327f91e09e1d",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "a06a462a-a541-4a81-800f-b48c32b3115c",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7b8acd9-68c5-427a-92d9-a5d020ffe817",
              "parent_uuid": "a06a462a-a541-4a81-800f-b48c32b3115c",
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
              "uuid": "dd2f3615-178c-4568-b7cd-ae5e4d2d7e76",
              "parent_uuid": "a06a462a-a541-4a81-800f-b48c32b3115c",
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
              "uuid": "2998f1dd-6974-4538-a74a-c0d41ad44a08",
              "parent_uuid": "a06a462a-a541-4a81-800f-b48c32b3115c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58671b57-8396-49f9-b6a9-544831a93cab",
                  "parent_uuid": "2998f1dd-6974-4538-a74a-c0d41ad44a08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7428411-9260-4c8e-8291-db420c6874c2",
              "parent_uuid": "a06a462a-a541-4a81-800f-b48c32b3115c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d8d69df-6587-44e5-9e19-217a465502c3",
                  "parent_uuid": "b7428411-9260-4c8e-8291-db420c6874c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c1ca0de-81a5-40ed-8199-5089ae89c3d7",
              "parent_uuid": "a06a462a-a541-4a81-800f-b48c32b3115c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b43eddb6-e8e2-49ba-9d9f-0560ee0414ea",
                  "parent_uuid": "8c1ca0de-81a5-40ed-8199-5089ae89c3d7",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "c013a782-780e-4b4a-a704-82aa69eb1853",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "838dc122-76d2-41c0-acf9-42f11630f816",
              "parent_uuid": "c013a782-780e-4b4a-a704-82aa69eb1853",
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
              "uuid": "913afe11-01db-4352-96e8-74a5aa8b06f1",
              "parent_uuid": "c013a782-780e-4b4a-a704-82aa69eb1853",
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
              "uuid": "cf377525-6c66-445a-9ca0-314363efbdd9",
              "parent_uuid": "c013a782-780e-4b4a-a704-82aa69eb1853",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7ff96a2-3249-4b37-b700-684b02495cd0",
                  "parent_uuid": "cf377525-6c66-445a-9ca0-314363efbdd9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f905752-e2ee-47b1-9b7b-44669760d9ea",
              "parent_uuid": "c013a782-780e-4b4a-a704-82aa69eb1853",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12a91f15-2e31-481f-85cd-207343f82fad",
                  "parent_uuid": "3f905752-e2ee-47b1-9b7b-44669760d9ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "161dd8f9-b489-4b8a-a333-704926af8782",
              "parent_uuid": "c013a782-780e-4b4a-a704-82aa69eb1853",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18e496da-ddf3-4b5f-be8a-1079b8ddb595",
                  "parent_uuid": "161dd8f9-b489-4b8a-a333-704926af8782",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "3f8939ea-3c56-4d4b-a381-a295e8205f0d",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b9dde3d-a76f-4e5f-b648-f6b883f02b9e",
              "parent_uuid": "3f8939ea-3c56-4d4b-a381-a295e8205f0d",
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
              "uuid": "0f63511f-c535-494d-92cb-e1b113ad3eca",
              "parent_uuid": "3f8939ea-3c56-4d4b-a381-a295e8205f0d",
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
              "uuid": "d61eeaf2-91c4-481d-95c5-b17ba94b01b1",
              "parent_uuid": "3f8939ea-3c56-4d4b-a381-a295e8205f0d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "444453ec-63dc-4b0e-b034-3f0fda7600fc",
                  "parent_uuid": "d61eeaf2-91c4-481d-95c5-b17ba94b01b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "528fa79e-3baa-48de-a850-63374f4412d1",
              "parent_uuid": "3f8939ea-3c56-4d4b-a381-a295e8205f0d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9300c49e-9074-4843-bbec-e388b56b10b3",
                  "parent_uuid": "528fa79e-3baa-48de-a850-63374f4412d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e08764a-96e8-4414-89df-361047368e67",
              "parent_uuid": "3f8939ea-3c56-4d4b-a381-a295e8205f0d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36d96efb-57f9-4532-bbeb-76236f08f747",
                  "parent_uuid": "3e08764a-96e8-4414-89df-361047368e67",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "64f8948a-db96-4e87-b848-a604b1978c12",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c752d9e4-785a-44c3-99bc-8399ce8fdef2",
              "parent_uuid": "64f8948a-db96-4e87-b848-a604b1978c12",
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
                  "10"
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
          "uuid": "a7552f5d-f001-4da6-9821-cf8912d86d1e",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c9cb09ea-4ae2-464e-b8fa-666a72b4a26e",
              "parent_uuid": "a7552f5d-f001-4da6-9821-cf8912d86d1e",
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
                  "10"
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
          "uuid": "e14dc368-8584-4c0f-8d40-f63ce96636ce",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e0c070c-b0e5-4ea0-9d01-73c1bd907453",
              "parent_uuid": "e14dc368-8584-4c0f-8d40-f63ce96636ce",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "d8746ef5-81be-43b0-b82a-6453d03ea403",
                  "parent_uuid": "4e0c070c-b0e5-4ea0-9d01-73c1bd907453",
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
          "uuid": "493afbe9-f25f-4e2b-8870-f8a643c7fa85",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a59047b5-8892-4092-bb61-9e0ac5930fb4",
              "parent_uuid": "493afbe9-f25f-4e2b-8870-f8a643c7fa85",
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
                  "10"
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
          "uuid": "3ed30014-8b06-4206-bcec-7eb5c96b625f",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ec0f7deb-0c0a-4356-af90-6d9c0683f6f0",
              "parent_uuid": "3ed30014-8b06-4206-bcec-7eb5c96b625f",
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
                  "10"
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
          "uuid": "b98a6a01-b761-4b77-9d8d-bdae2b84ec0f",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ddedaeb-98d2-47c8-9e47-deb6d9170841",
              "parent_uuid": "b98a6a01-b761-4b77-9d8d-bdae2b84ec0f",
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
              "uuid": "b3d8a6e3-5caf-496b-b725-8aeab6d8f9c2",
              "parent_uuid": "b98a6a01-b761-4b77-9d8d-bdae2b84ec0f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ec31b74a-d68d-4765-94f3-93220aad2ae0",
              "parent_uuid": "b98a6a01-b761-4b77-9d8d-bdae2b84ec0f",
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
              "uuid": "6e4cef8c-1667-4215-922a-fe4aadfb494f",
              "parent_uuid": "b98a6a01-b761-4b77-9d8d-bdae2b84ec0f",
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
            }
          ],
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "a0df3970-c3e1-497f-b9fd-5f8c474680a2",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8dd092b-ee97-4161-b8fa-d23c0aa08e12",
              "parent_uuid": "a0df3970-c3e1-497f-b9fd-5f8c474680a2",
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
              "uuid": "13621db3-cd52-45bd-804a-193bcda67db4",
              "parent_uuid": "a0df3970-c3e1-497f-b9fd-5f8c474680a2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e6170509-676b-4f54-91b0-54604555d7d9",
              "parent_uuid": "a0df3970-c3e1-497f-b9fd-5f8c474680a2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "eb95dd75-d5c2-4d37-8a4f-118d3de203bd",
              "parent_uuid": "a0df3970-c3e1-497f-b9fd-5f8c474680a2",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "d9cc11cf-d1e8-4963-afdd-d2fa0b729c96",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ebe0ea3-0a16-4d15-a11a-91c63f16f612",
              "parent_uuid": "d9cc11cf-d1e8-4963-afdd-d2fa0b729c96",
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
              "uuid": "1e6db7e7-62bf-4f8c-bfc6-ef34836d47a6",
              "parent_uuid": "d9cc11cf-d1e8-4963-afdd-d2fa0b729c96",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fa6c28ad-ed10-43fc-8c3b-5b808809f7d3",
              "parent_uuid": "d9cc11cf-d1e8-4963-afdd-d2fa0b729c96",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "966ea05e-f782-4bbd-a2c5-e8f97ab9e811",
              "parent_uuid": "d9cc11cf-d1e8-4963-afdd-d2fa0b729c96",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "3ba9e0fc-6b94-4dd2-80d0-376b9abc0e47",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a726999-345c-4305-9bb3-2297fdf02632",
              "parent_uuid": "3ba9e0fc-6b94-4dd2-80d0-376b9abc0e47",
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
              "uuid": "79cea767-b18e-4a5a-81d9-c10a86332ee8",
              "parent_uuid": "3ba9e0fc-6b94-4dd2-80d0-376b9abc0e47",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3d81c6c8-5be8-45c2-a373-d02abcfa291c",
              "parent_uuid": "3ba9e0fc-6b94-4dd2-80d0-376b9abc0e47",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9fa6a853-f70c-48fc-8588-6b16b9cf27a6",
              "parent_uuid": "3ba9e0fc-6b94-4dd2-80d0-376b9abc0e47",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "7d5a8e5a-b924-4b67-b019-9e9272c21bbd",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54722589-a815-4f2b-b143-1fa9aca26a06",
              "parent_uuid": "7d5a8e5a-b924-4b67-b019-9e9272c21bbd",
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
              "uuid": "dd6e18ac-4289-44da-83fe-e6f8a3ca21f7",
              "parent_uuid": "7d5a8e5a-b924-4b67-b019-9e9272c21bbd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "82371a20-e7b7-40d0-96e3-0d1fc46be95c",
              "parent_uuid": "7d5a8e5a-b924-4b67-b019-9e9272c21bbd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7900e992-1bcd-4632-b491-974255f3164b",
              "parent_uuid": "7d5a8e5a-b924-4b67-b019-9e9272c21bbd",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "d6cd4046-7ca6-4b35-9256-3c631a56aec9",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "facd9f70-c356-4a16-b7cb-90b828511083",
              "parent_uuid": "d6cd4046-7ca6-4b35-9256-3c631a56aec9",
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
              "uuid": "55788586-c7f8-40f3-ba24-989b19cc285e",
              "parent_uuid": "d6cd4046-7ca6-4b35-9256-3c631a56aec9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b5044cdf-619e-4db3-b76c-ab826155d584",
              "parent_uuid": "d6cd4046-7ca6-4b35-9256-3c631a56aec9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3fab6602-777b-4cae-8dd2-b13f14115081",
              "parent_uuid": "d6cd4046-7ca6-4b35-9256-3c631a56aec9",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "ebc9ee1a-7ee8-4458-874b-e92d0c0ef15a",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c471efde-78f3-4aa5-a7e1-f90c41006df2",
              "parent_uuid": "ebc9ee1a-7ee8-4458-874b-e92d0c0ef15a",
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
              "uuid": "55e1e872-291a-4f3b-9a94-0f01f0b0260b",
              "parent_uuid": "ebc9ee1a-7ee8-4458-874b-e92d0c0ef15a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c4b47bed-201b-42b2-95a6-22fb15e5a133",
              "parent_uuid": "ebc9ee1a-7ee8-4458-874b-e92d0c0ef15a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3277e73f-736e-44e2-a93c-9c0bb447dfa5",
              "parent_uuid": "ebc9ee1a-7ee8-4458-874b-e92d0c0ef15a",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "e58a378f-f24a-491f-94db-182654c5f1d7",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39459e00-e299-4f72-8b43-7c6e2bfe38e6",
              "parent_uuid": "e58a378f-f24a-491f-94db-182654c5f1d7",
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
              "uuid": "9345abcf-99b6-4f6b-a874-74676fb43aed",
              "parent_uuid": "e58a378f-f24a-491f-94db-182654c5f1d7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "02b5df10-e972-47f3-bbc4-a806d412edf8",
              "parent_uuid": "e58a378f-f24a-491f-94db-182654c5f1d7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8cde1824-9311-4822-99b6-f7a5d414adee",
              "parent_uuid": "e58a378f-f24a-491f-94db-182654c5f1d7",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "11a77fb0-fd5c-4241-a790-76acde7026ce",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6823c600-51cb-4f4b-a301-3c02e7809f52",
              "parent_uuid": "11a77fb0-fd5c-4241-a790-76acde7026ce",
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
              "uuid": "fb63d25f-c49c-42be-a9ff-bf186027f6bd",
              "parent_uuid": "11a77fb0-fd5c-4241-a790-76acde7026ce",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "471162a5-5b84-4abf-b300-5e06fc08a7e2",
              "parent_uuid": "11a77fb0-fd5c-4241-a790-76acde7026ce",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f051350e-c155-445c-83c5-e491eb604484",
              "parent_uuid": "11a77fb0-fd5c-4241-a790-76acde7026ce",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "25421f90-e029-4173-8196-9f78ed4af910",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08cf175e-e5c6-4a00-ba89-fac879851c87",
              "parent_uuid": "25421f90-e029-4173-8196-9f78ed4af910",
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
                  "10"
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
          "uuid": "9c84c671-1a38-4d33-9928-8fe3f846bad8",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "147a30ba-0b17-436a-a5fe-e975aacdd8a1",
              "parent_uuid": "9c84c671-1a38-4d33-9928-8fe3f846bad8",
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
                  "10"
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
          "uuid": "8ffffce3-0705-4453-bcb4-5e47bc4042f1",
          "parent_uuid": "c8a20d5e-50e8-4a36-b7b1-3032b1d862cd",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71541d7a-ca62-4b51-a5c7-71eb77750e4e",
              "parent_uuid": "8ffffce3-0705-4453-bcb4-5e47bc4042f1",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "c523ca4b-c458-48b5-bdc3-4024ab1d1dcb",
                  "parent_uuid": "71541d7a-ca62-4b51-a5c7-71eb77750e4e",
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
      "sort": 6,
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

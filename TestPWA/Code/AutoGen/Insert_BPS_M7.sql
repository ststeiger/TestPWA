
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
  "uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
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
      "uuid": "735f1aa7-88dc-4a77-97c0-69cada7efbda",
      "parent_uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
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
      "uuid": "a94b5a71-8e7e-4331-9ebf-a48f14da48c5",
      "parent_uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
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
      "uuid": "02f2ae5e-2c4f-49dd-adc5-758690bb0827",
      "parent_uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
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
      "uuid": "c35485f7-41cb-48a2-a5dc-49e38cb35693",
      "parent_uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
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
      "uuid": "4924f333-d4bc-45e5-b2e5-8df90d1b6f3e",
      "parent_uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
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
      "uuid": "9c0dd18e-d357-4eb0-a5d5-eb0265125941",
      "parent_uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
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
      "uuid": "988b776a-9362-430b-a71c-653ee018b017",
      "parent_uuid": "cbe2b92e-ae08-46af-98eb-cba1558bcc68",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "8c32b121-a2a8-450b-83a9-a6c26e106740",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "6a84fdf1-9839-42e9-a887-b6aaa61e888e",
              "parent_uuid": "8c32b121-a2a8-450b-83a9-a6c26e106740",
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
              "uuid": "4ef8b990-5b05-4d89-aef3-64e3b4890038",
              "parent_uuid": "8c32b121-a2a8-450b-83a9-a6c26e106740",
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
              "uuid": "7ed7efba-73b9-444e-9258-3745d27da5b7",
              "parent_uuid": "8c32b121-a2a8-450b-83a9-a6c26e106740",
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
              "uuid": "49d1eb3e-94b9-4679-8976-46e938148849",
              "parent_uuid": "8c32b121-a2a8-450b-83a9-a6c26e106740",
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
                  "7"
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
          "uuid": "6c551d09-b587-4c4f-9937-9a39b5f6d200",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "90a32dc2-3686-471d-97be-4295134d2b96",
              "parent_uuid": "6c551d09-b587-4c4f-9937-9a39b5f6d200",
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
              "uuid": "f3a05a65-b8f0-4dd7-acc3-e94ccbd4a4d7",
              "parent_uuid": "6c551d09-b587-4c4f-9937-9a39b5f6d200",
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
              "uuid": "5265eea6-b418-49a7-9f72-5cd0069478bf",
              "parent_uuid": "6c551d09-b587-4c4f-9937-9a39b5f6d200",
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
              "uuid": "31b7e985-93d7-4f69-bf53-6a223533925d",
              "parent_uuid": "6c551d09-b587-4c4f-9937-9a39b5f6d200",
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
          "uuid": "014dcc26-0884-46b5-99a2-92954c2aed91",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cf35d003-feda-48ae-a460-0e8218085227",
              "parent_uuid": "014dcc26-0884-46b5-99a2-92954c2aed91",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "92a856ae-4953-41e8-84c3-a7c7f6ecf015",
              "parent_uuid": "014dcc26-0884-46b5-99a2-92954c2aed91",
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
              "uuid": "7d330b57-86c7-4edb-9770-00a24475719d",
              "parent_uuid": "014dcc26-0884-46b5-99a2-92954c2aed91",
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
              "uuid": "84cf5440-68f0-4ff2-9a34-78bca834a50c",
              "parent_uuid": "014dcc26-0884-46b5-99a2-92954c2aed91",
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
              "uuid": "16f17083-d523-4381-9b64-631a7e161c07",
              "parent_uuid": "014dcc26-0884-46b5-99a2-92954c2aed91",
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
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "be89cba8-b908-4725-a2ce-8d1af92eada2",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c36371e2-9259-4292-a1c5-8c8b3115500a",
              "parent_uuid": "be89cba8-b908-4725-a2ce-8d1af92eada2",
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
                  "10"
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
          "uuid": "48e79054-8bb4-4041-9064-44a4a77d82a1",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6266d880-7332-4cd7-8cef-9584dd4f5863",
              "parent_uuid": "48e79054-8bb4-4041-9064-44a4a77d82a1",
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
              "uuid": "2145517f-b8cc-4b17-859c-af76beedde74",
              "parent_uuid": "48e79054-8bb4-4041-9064-44a4a77d82a1",
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
              "uuid": "a893130a-0017-4b78-91b9-6f966fd4c1b2",
              "parent_uuid": "48e79054-8bb4-4041-9064-44a4a77d82a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "61818039-0e8a-4bdb-bf50-5e02f62f6919",
                  "parent_uuid": "a893130a-0017-4b78-91b9-6f966fd4c1b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0aa3b09-514e-4696-ac01-da07110d8a26",
              "parent_uuid": "48e79054-8bb4-4041-9064-44a4a77d82a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d2b280ed-00fd-42bf-b8a3-bb147eb407f9",
                  "parent_uuid": "a0aa3b09-514e-4696-ac01-da07110d8a26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c53a97db-0986-4043-89d4-68cb84d551d3",
              "parent_uuid": "48e79054-8bb4-4041-9064-44a4a77d82a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3d8f70f5-24d2-4781-b736-68416a60fe06",
                  "parent_uuid": "c53a97db-0986-4043-89d4-68cb84d551d3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "316c970e-d64d-45fa-a2cf-4aaa8813bca9",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0657d239-4d73-4255-bf6c-eda7bf3cda4a",
              "parent_uuid": "316c970e-d64d-45fa-a2cf-4aaa8813bca9",
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
              "uuid": "ad897db8-33b0-460d-84df-b48f61d31cd1",
              "parent_uuid": "316c970e-d64d-45fa-a2cf-4aaa8813bca9",
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
              "uuid": "1c5d44a6-fb4a-4297-b0d1-75addcd448ed",
              "parent_uuid": "316c970e-d64d-45fa-a2cf-4aaa8813bca9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8a651939-8276-41fe-83be-c2104ddda0e3",
                  "parent_uuid": "1c5d44a6-fb4a-4297-b0d1-75addcd448ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "531c2cae-268b-437f-a7bb-9f896abf21be",
              "parent_uuid": "316c970e-d64d-45fa-a2cf-4aaa8813bca9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e27cc6b2-534e-4ef6-b61c-d643db9beab6",
                  "parent_uuid": "531c2cae-268b-437f-a7bb-9f896abf21be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0caa13a-dda5-4891-ac50-c56a1613ac10",
              "parent_uuid": "316c970e-d64d-45fa-a2cf-4aaa8813bca9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "160e2fc3-fe19-46dc-83b5-ec84ad2931c5",
                  "parent_uuid": "b0caa13a-dda5-4891-ac50-c56a1613ac10",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b5fdd010-ffd9-4ae5-9f94-58df51e25fa1",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9985ce2-eee2-4a89-a410-bfc6b9ecca2a",
              "parent_uuid": "b5fdd010-ffd9-4ae5-9f94-58df51e25fa1",
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
              "uuid": "5e47e00b-eebd-48d7-92f8-2d8e94b8f184",
              "parent_uuid": "b5fdd010-ffd9-4ae5-9f94-58df51e25fa1",
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
              "uuid": "f0bb70d0-e59a-4acb-9981-78eab73e1249",
              "parent_uuid": "b5fdd010-ffd9-4ae5-9f94-58df51e25fa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd9dd397-621e-46c8-8f1e-01df272e93e0",
                  "parent_uuid": "f0bb70d0-e59a-4acb-9981-78eab73e1249",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63b1c14d-204c-4471-97ca-1e6ac4b7c9a1",
              "parent_uuid": "b5fdd010-ffd9-4ae5-9f94-58df51e25fa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "004a79a4-6b8e-4611-b393-e4ac59c0a010",
                  "parent_uuid": "63b1c14d-204c-4471-97ca-1e6ac4b7c9a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67a66d33-5b5c-4b8d-9571-da26256166dd",
              "parent_uuid": "b5fdd010-ffd9-4ae5-9f94-58df51e25fa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b28882a7-cfa9-448c-9745-57f231b957de",
                  "parent_uuid": "67a66d33-5b5c-4b8d-9571-da26256166dd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "721b6b93-3831-4440-aa2b-9db978b21cc0",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3129c09e-a682-4723-8fc8-f52d823c1a66",
              "parent_uuid": "721b6b93-3831-4440-aa2b-9db978b21cc0",
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
              "uuid": "f9e9d77b-c14b-4da7-959e-64b30ff1623a",
              "parent_uuid": "721b6b93-3831-4440-aa2b-9db978b21cc0",
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
              "uuid": "3b1f56af-c5dc-48b4-9007-664e68775949",
              "parent_uuid": "721b6b93-3831-4440-aa2b-9db978b21cc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df24a0e7-de10-465d-8ee5-1808292d643d",
                  "parent_uuid": "3b1f56af-c5dc-48b4-9007-664e68775949",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ded1950e-59ab-4f32-890a-ae2215e48064",
              "parent_uuid": "721b6b93-3831-4440-aa2b-9db978b21cc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf9c406a-97f4-4f1c-8185-f1ce1652cbfe",
                  "parent_uuid": "ded1950e-59ab-4f32-890a-ae2215e48064",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6841b68-b9a8-42db-890d-312f79caa44d",
              "parent_uuid": "721b6b93-3831-4440-aa2b-9db978b21cc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74d06cfa-8adc-4138-8498-8f6a1e9df48c",
                  "parent_uuid": "c6841b68-b9a8-42db-890d-312f79caa44d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c54637e5-2826-4a6b-801d-61f696c1921c",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f036947c-d1ee-4467-a763-0917587a7ac7",
              "parent_uuid": "c54637e5-2826-4a6b-801d-61f696c1921c",
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
              "uuid": "b8d9384d-218d-4baf-856c-1f26ca79307e",
              "parent_uuid": "c54637e5-2826-4a6b-801d-61f696c1921c",
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
              "uuid": "bd180001-8326-43a2-9de2-0e2453914b5e",
              "parent_uuid": "c54637e5-2826-4a6b-801d-61f696c1921c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12c38e27-beff-4543-bc33-209bf6c8091e",
                  "parent_uuid": "bd180001-8326-43a2-9de2-0e2453914b5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dc8fff5-35fe-44db-8c8f-77d28096d47b",
              "parent_uuid": "c54637e5-2826-4a6b-801d-61f696c1921c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51a2cc50-242a-4643-ad52-811378f0a47f",
                  "parent_uuid": "6dc8fff5-35fe-44db-8c8f-77d28096d47b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac4d4874-14ed-42e4-a9cf-c801f5a418b9",
              "parent_uuid": "c54637e5-2826-4a6b-801d-61f696c1921c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b4c7425-9280-44d3-b6c9-524638fb0503",
                  "parent_uuid": "ac4d4874-14ed-42e4-a9cf-c801f5a418b9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1a8be6c3-b825-4ea9-967e-99d4d3cc6528",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c349abfd-fff9-45f5-ab2d-f827363cb25a",
              "parent_uuid": "1a8be6c3-b825-4ea9-967e-99d4d3cc6528",
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
              "uuid": "79e1fe29-de23-4565-9a34-b5927864172f",
              "parent_uuid": "1a8be6c3-b825-4ea9-967e-99d4d3cc6528",
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
              "uuid": "de5d2488-15a5-4e06-908e-503c57200689",
              "parent_uuid": "1a8be6c3-b825-4ea9-967e-99d4d3cc6528",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6c5b611-e61a-41b7-9c2c-e6d716614e24",
                  "parent_uuid": "de5d2488-15a5-4e06-908e-503c57200689",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bcd2130-29a3-43f3-9396-774c9296b8c4",
              "parent_uuid": "1a8be6c3-b825-4ea9-967e-99d4d3cc6528",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d248c487-5a25-43a1-81ec-14c47a18fc67",
                  "parent_uuid": "4bcd2130-29a3-43f3-9396-774c9296b8c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a57f3b20-916a-4349-a49c-242e9d79e5ed",
              "parent_uuid": "1a8be6c3-b825-4ea9-967e-99d4d3cc6528",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69842045-9e4e-4f03-8ef3-274fe94839e8",
                  "parent_uuid": "a57f3b20-916a-4349-a49c-242e9d79e5ed",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d6a8154-60e5-490d-b2ad-ee73ee2527de",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "991feb3a-1d1d-40a9-957a-4f966c34d5f7",
              "parent_uuid": "6d6a8154-60e5-490d-b2ad-ee73ee2527de",
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
              "uuid": "bcdfe1d2-3186-4d67-a2bb-114a53df2f48",
              "parent_uuid": "6d6a8154-60e5-490d-b2ad-ee73ee2527de",
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
              "uuid": "bdd955f8-fa2c-482b-95a2-bc1cf0bee576",
              "parent_uuid": "6d6a8154-60e5-490d-b2ad-ee73ee2527de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5998a17-8dea-4bcc-bc09-bab8472df5ed",
                  "parent_uuid": "bdd955f8-fa2c-482b-95a2-bc1cf0bee576",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bd652dc-e86e-4d5d-b593-72ad7cc4c206",
              "parent_uuid": "6d6a8154-60e5-490d-b2ad-ee73ee2527de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "924e9105-d579-4ab7-90c2-427f56e53b4a",
                  "parent_uuid": "6bd652dc-e86e-4d5d-b593-72ad7cc4c206",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a98493a6-ae2b-4f3e-b978-963b69a34910",
              "parent_uuid": "6d6a8154-60e5-490d-b2ad-ee73ee2527de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b8d0445-61fc-4417-849b-51c4b1f0b5ab",
                  "parent_uuid": "a98493a6-ae2b-4f3e-b978-963b69a34910",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a8899069-f1a9-4919-99da-ee5d4d4bade8",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "467e4ae3-e902-4aaa-a499-603e905a7c22",
              "parent_uuid": "a8899069-f1a9-4919-99da-ee5d4d4bade8",
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
              "uuid": "96399da8-8d75-4589-8ac4-63a23d53403f",
              "parent_uuid": "a8899069-f1a9-4919-99da-ee5d4d4bade8",
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
              "uuid": "1e77ea32-fd6c-4780-b96b-e91ed910bee9",
              "parent_uuid": "a8899069-f1a9-4919-99da-ee5d4d4bade8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4239c438-9b31-4bc8-aa43-f492196f0561",
                  "parent_uuid": "1e77ea32-fd6c-4780-b96b-e91ed910bee9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5cf0696-5b69-40d7-b33e-a201b43fd820",
              "parent_uuid": "a8899069-f1a9-4919-99da-ee5d4d4bade8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbb0b77f-b969-45b1-936b-16b6f87c61ee",
                  "parent_uuid": "e5cf0696-5b69-40d7-b33e-a201b43fd820",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ca01907-3744-4a6e-9636-4330fa2808eb",
              "parent_uuid": "a8899069-f1a9-4919-99da-ee5d4d4bade8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce5cb326-1ede-496d-b7e8-6dc770ec7240",
                  "parent_uuid": "7ca01907-3744-4a6e-9636-4330fa2808eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "568ad03b-bb43-4a2b-989c-1740c82e0725",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d58d4e6c-8da8-4998-acd3-ed07b7a81bfc",
              "parent_uuid": "568ad03b-bb43-4a2b-989c-1740c82e0725",
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
              "uuid": "76228d19-8737-47e4-a727-f430ff9fb9e5",
              "parent_uuid": "568ad03b-bb43-4a2b-989c-1740c82e0725",
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
              "uuid": "17e83596-c348-4a80-bec1-126797034f44",
              "parent_uuid": "568ad03b-bb43-4a2b-989c-1740c82e0725",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "629b6fce-db99-4b25-82ae-dfcce3a07544",
                  "parent_uuid": "17e83596-c348-4a80-bec1-126797034f44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e5e3218-6b04-49a7-8a88-67469765c8da",
              "parent_uuid": "568ad03b-bb43-4a2b-989c-1740c82e0725",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c546aadf-9738-4e6a-a9cd-15cf98b1cdbf",
                  "parent_uuid": "0e5e3218-6b04-49a7-8a88-67469765c8da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17ee0ab2-f279-45ac-9203-8c6716119fb8",
              "parent_uuid": "568ad03b-bb43-4a2b-989c-1740c82e0725",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d234ec7-e820-495a-a4ba-53a84a218191",
                  "parent_uuid": "17ee0ab2-f279-45ac-9203-8c6716119fb8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c3812388-31de-4116-a0d2-e03765499648",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "791d96be-a3b2-4fa3-908d-8ad281dfda35",
              "parent_uuid": "c3812388-31de-4116-a0d2-e03765499648",
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
              "uuid": "d7c17016-2992-48f1-b66f-ba97834c726b",
              "parent_uuid": "c3812388-31de-4116-a0d2-e03765499648",
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
              "uuid": "8435ab68-8ef4-438b-93b5-175a7e5b80c7",
              "parent_uuid": "c3812388-31de-4116-a0d2-e03765499648",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2464e68-8d2f-486a-9eeb-47ec7c2e8a0d",
                  "parent_uuid": "8435ab68-8ef4-438b-93b5-175a7e5b80c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23f799a5-622d-4934-891f-e6883f8852c9",
              "parent_uuid": "c3812388-31de-4116-a0d2-e03765499648",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12f3d2d3-8848-4516-8322-99603b6dc0eb",
                  "parent_uuid": "23f799a5-622d-4934-891f-e6883f8852c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cdeef40-8cad-47b7-ac79-c3481af7f4fb",
              "parent_uuid": "c3812388-31de-4116-a0d2-e03765499648",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd9859f1-a1c1-4361-9c8d-2a3e884334f3",
                  "parent_uuid": "3cdeef40-8cad-47b7-ac79-c3481af7f4fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fecb0a09-bd87-42dd-9a42-e503b31f4b40",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a686bde6-c066-46a4-bf8e-62ebbf625ff4",
              "parent_uuid": "fecb0a09-bd87-42dd-9a42-e503b31f4b40",
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
              "uuid": "2e0d6d5c-a6c5-4065-b1c8-bb10e36a6781",
              "parent_uuid": "fecb0a09-bd87-42dd-9a42-e503b31f4b40",
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
              "uuid": "30911ae8-c98d-40af-98bc-7f99c1464b79",
              "parent_uuid": "fecb0a09-bd87-42dd-9a42-e503b31f4b40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0284aea5-ab0e-4ba7-8dcd-405875efcc8c",
                  "parent_uuid": "30911ae8-c98d-40af-98bc-7f99c1464b79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2604fa4-80e2-4b41-9467-9b3239c43d03",
              "parent_uuid": "fecb0a09-bd87-42dd-9a42-e503b31f4b40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d758b9cd-0e05-40b1-a957-9709c4b0966e",
                  "parent_uuid": "d2604fa4-80e2-4b41-9467-9b3239c43d03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee55bcdb-bc63-4cdd-8c8e-b68cab04e944",
              "parent_uuid": "fecb0a09-bd87-42dd-9a42-e503b31f4b40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c51314f3-ce93-4ce2-943e-cacf329f4bcb",
                  "parent_uuid": "ee55bcdb-bc63-4cdd-8c8e-b68cab04e944",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "342d6d58-78bb-4dec-b564-b686b70ed568",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de924ea3-ee4c-44ba-8956-1804f8fb4d03",
              "parent_uuid": "342d6d58-78bb-4dec-b564-b686b70ed568",
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
              "uuid": "db8f38fa-4689-499f-b789-3834a929a6c6",
              "parent_uuid": "342d6d58-78bb-4dec-b564-b686b70ed568",
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
              "uuid": "1486bc7c-f547-4528-845b-90ba46af374f",
              "parent_uuid": "342d6d58-78bb-4dec-b564-b686b70ed568",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb643048-6bbb-48a6-ad21-baf17865a115",
                  "parent_uuid": "1486bc7c-f547-4528-845b-90ba46af374f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b664dddc-b7c9-48b5-b09e-c7f69e9bef49",
              "parent_uuid": "342d6d58-78bb-4dec-b564-b686b70ed568",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afe1a18f-1821-4009-8955-10350442e37f",
                  "parent_uuid": "b664dddc-b7c9-48b5-b09e-c7f69e9bef49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0334aa64-908b-4afd-b1da-0eda6a6bccc4",
              "parent_uuid": "342d6d58-78bb-4dec-b564-b686b70ed568",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a966853-a162-4dc0-bfe7-f3dc8cc79206",
                  "parent_uuid": "0334aa64-908b-4afd-b1da-0eda6a6bccc4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a77381a9-65bb-4f8d-8cdb-e0d7c52258a1",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a5f8ddf-c891-47d4-86e8-75a0205ff8a1",
              "parent_uuid": "a77381a9-65bb-4f8d-8cdb-e0d7c52258a1",
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
              "uuid": "6af2c8db-67f8-4574-9d18-19f93cd605ea",
              "parent_uuid": "a77381a9-65bb-4f8d-8cdb-e0d7c52258a1",
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
              "uuid": "26133250-cf1d-4fab-acb3-63c1262b9f7d",
              "parent_uuid": "a77381a9-65bb-4f8d-8cdb-e0d7c52258a1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7cd2df3-e49c-4500-af1b-baf860da66ec",
                  "parent_uuid": "26133250-cf1d-4fab-acb3-63c1262b9f7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "500c25ad-1d3d-49cd-83cb-bc73384d1a98",
              "parent_uuid": "a77381a9-65bb-4f8d-8cdb-e0d7c52258a1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "451dc902-80ec-40ce-aadc-c991080dabcc",
                  "parent_uuid": "500c25ad-1d3d-49cd-83cb-bc73384d1a98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46bc4e01-bec0-4761-b2f4-6613395cb3ff",
              "parent_uuid": "a77381a9-65bb-4f8d-8cdb-e0d7c52258a1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1a50fba-1a1e-450c-81fb-929ee0a55893",
                  "parent_uuid": "46bc4e01-bec0-4761-b2f4-6613395cb3ff",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9ac0516f-8cbf-45b2-abae-f141db8e32b5",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eeb2c12c-2c2d-4b79-ac38-53242fbe2a9f",
              "parent_uuid": "9ac0516f-8cbf-45b2-abae-f141db8e32b5",
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
              "uuid": "85b6b77c-d316-4f62-af69-54c2a47145e6",
              "parent_uuid": "9ac0516f-8cbf-45b2-abae-f141db8e32b5",
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
              "uuid": "864af9ad-fa67-493b-9f4d-ea4e612e643c",
              "parent_uuid": "9ac0516f-8cbf-45b2-abae-f141db8e32b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6f991f4-ddbf-45e3-ab9a-764d536b39d9",
                  "parent_uuid": "864af9ad-fa67-493b-9f4d-ea4e612e643c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2ffdc0e-59d9-4c81-ac35-e2f5571f4d96",
              "parent_uuid": "9ac0516f-8cbf-45b2-abae-f141db8e32b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16f22d01-b018-4fde-b2fa-862039d6a667",
                  "parent_uuid": "a2ffdc0e-59d9-4c81-ac35-e2f5571f4d96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b49eda97-6984-4c04-8dfa-f2d5bd2d5b3a",
              "parent_uuid": "9ac0516f-8cbf-45b2-abae-f141db8e32b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e819134c-ec29-462d-b241-cc41ac3739f3",
                  "parent_uuid": "b49eda97-6984-4c04-8dfa-f2d5bd2d5b3a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "2b1e54a8-801a-4c6a-8f44-5c49870bbb63",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07c352f3-b86f-468b-8952-43f49a3a2e79",
              "parent_uuid": "2b1e54a8-801a-4c6a-8f44-5c49870bbb63",
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
              "uuid": "d7709f8a-1ae1-46f5-afd9-5570569a5a65",
              "parent_uuid": "2b1e54a8-801a-4c6a-8f44-5c49870bbb63",
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
              "uuid": "44861d9e-8ff3-4ac3-ad5f-197d333b2d97",
              "parent_uuid": "2b1e54a8-801a-4c6a-8f44-5c49870bbb63",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef173967-aec5-42dd-a267-d034ecad0319",
                  "parent_uuid": "44861d9e-8ff3-4ac3-ad5f-197d333b2d97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7af596d9-d332-4b9d-929e-d5321e7528ec",
              "parent_uuid": "2b1e54a8-801a-4c6a-8f44-5c49870bbb63",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de188aba-3768-482b-a871-19b8369d3ae6",
                  "parent_uuid": "7af596d9-d332-4b9d-929e-d5321e7528ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3e3a03c-6911-446f-ae9d-aea5602f97fc",
              "parent_uuid": "2b1e54a8-801a-4c6a-8f44-5c49870bbb63",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1151faf0-99df-4fa9-9155-d53c30c0c29e",
                  "parent_uuid": "d3e3a03c-6911-446f-ae9d-aea5602f97fc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "293076ea-f30c-419a-94f4-903a8ad134ef",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eaa9fc21-b0e2-4b82-b9b4-8c448097f54a",
              "parent_uuid": "293076ea-f30c-419a-94f4-903a8ad134ef",
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
              "uuid": "944b9014-87c1-4a1c-82a3-a17f59c899bc",
              "parent_uuid": "293076ea-f30c-419a-94f4-903a8ad134ef",
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
              "uuid": "30a6a784-c39d-4025-888c-b344b1d3577e",
              "parent_uuid": "293076ea-f30c-419a-94f4-903a8ad134ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc6de1cd-ab5a-4eb3-991e-a7996d758baa",
                  "parent_uuid": "30a6a784-c39d-4025-888c-b344b1d3577e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3bfc32a1-30bd-431a-ac69-48e7204af1af",
              "parent_uuid": "293076ea-f30c-419a-94f4-903a8ad134ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e54ced85-8cb6-4f47-aafa-3b56c337dd5f",
                  "parent_uuid": "3bfc32a1-30bd-431a-ac69-48e7204af1af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97f1f48e-281e-46f6-8703-0db51daf0e6b",
              "parent_uuid": "293076ea-f30c-419a-94f4-903a8ad134ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e44c11e4-dc22-4786-baed-5e10aac4a0ac",
                  "parent_uuid": "97f1f48e-281e-46f6-8703-0db51daf0e6b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "22035da4-f1d8-4caa-98b9-847f7e6872e8",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff999f59-8157-437f-afef-8225ad893206",
              "parent_uuid": "22035da4-f1d8-4caa-98b9-847f7e6872e8",
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
          "uuid": "814a64dd-9b0d-4b51-82c8-16a1e7ce3164",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec553a3a-2010-4c38-9034-d6f5376df2f4",
              "parent_uuid": "814a64dd-9b0d-4b51-82c8-16a1e7ce3164",
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "b9387357-33f0-4728-a577-fdfb142a471e",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ddd856f8-be59-42ee-9f5c-d399092a750a",
              "parent_uuid": "b9387357-33f0-4728-a577-fdfb142a471e",
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
                  "uuid": "10a4e7e0-cbfa-47c1-a561-1bc9b6a7a498",
                  "parent_uuid": "ddd856f8-be59-42ee-9f5c-d399092a750a",
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
          "uuid": "8036011d-8c79-4ed3-847a-bad74ceb5ced",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "ecd6cf95-e661-479d-8c50-6b23ed57f7ef",
              "parent_uuid": "8036011d-8c79-4ed3-847a-bad74ceb5ced",
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "8e7b3eca-0713-482e-8274-1dcbd4651725",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4f5e7df8-6bd1-46fe-a6ba-70f1efc8cad5",
              "parent_uuid": "8e7b3eca-0713-482e-8274-1dcbd4651725",
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
                  "10"
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
          "uuid": "5a7b70d9-d307-4f78-9a29-0c6aa7b5dd5f",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae9fe44e-1826-49b5-90b7-4d3e03c41d69",
              "parent_uuid": "5a7b70d9-d307-4f78-9a29-0c6aa7b5dd5f",
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
              "uuid": "9c062c9f-b7f3-485d-8d20-0eb1c60da14d",
              "parent_uuid": "5a7b70d9-d307-4f78-9a29-0c6aa7b5dd5f",
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
              "uuid": "ea491f1f-23f1-42a4-90cc-66df432aac48",
              "parent_uuid": "5a7b70d9-d307-4f78-9a29-0c6aa7b5dd5f",
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
              "uuid": "e725f1b1-d216-4ba8-8ea3-435d9631b9f8",
              "parent_uuid": "5a7b70d9-d307-4f78-9a29-0c6aa7b5dd5f",
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
              "uuid": "a2c2bbb9-6c32-478f-8f57-acd4495a8b08",
              "parent_uuid": "5a7b70d9-d307-4f78-9a29-0c6aa7b5dd5f",
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
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "1bcfa7ad-bf00-4d76-8bac-6e9e77768c80",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "95a38eff-5fd5-4c0a-b433-974aab2d281d",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa30ce2f-77d2-4947-8bbc-4b8b2c07659a",
              "parent_uuid": "95a38eff-5fd5-4c0a-b433-974aab2d281d",
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
              "uuid": "c44ed971-1dd0-4885-877f-9eeb12ad6740",
              "parent_uuid": "95a38eff-5fd5-4c0a-b433-974aab2d281d",
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
              "uuid": "cd6c2a0d-e112-488e-9000-dce73087460d",
              "parent_uuid": "95a38eff-5fd5-4c0a-b433-974aab2d281d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea14cbea-3f67-4062-af9d-11c38123ddcc",
                  "parent_uuid": "cd6c2a0d-e112-488e-9000-dce73087460d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de14abde-2097-448a-aefe-52681136fc06",
              "parent_uuid": "95a38eff-5fd5-4c0a-b433-974aab2d281d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29049130-ecd3-425a-b514-79f111de6bda",
                  "parent_uuid": "de14abde-2097-448a-aefe-52681136fc06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb9e5c7e-b8ae-4417-b018-906daedaa55d",
              "parent_uuid": "95a38eff-5fd5-4c0a-b433-974aab2d281d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97110505-af7e-47bb-98d5-59134ed95f7d",
                  "parent_uuid": "fb9e5c7e-b8ae-4417-b018-906daedaa55d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "32d926b0-4690-4083-aa81-de0dffcd6739",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc2c33b5-ae85-47a0-8f58-cb16af6fc32a",
              "parent_uuid": "32d926b0-4690-4083-aa81-de0dffcd6739",
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
              "uuid": "bef3c43d-5aa2-4795-8af3-12540befbe95",
              "parent_uuid": "32d926b0-4690-4083-aa81-de0dffcd6739",
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
              "uuid": "4c81023d-0f4d-424c-b560-3b7617f75feb",
              "parent_uuid": "32d926b0-4690-4083-aa81-de0dffcd6739",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b4cc8db-f479-4151-a977-de2a2b7bfb2c",
                  "parent_uuid": "4c81023d-0f4d-424c-b560-3b7617f75feb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebf202dd-031c-4859-ac5f-cac8c04ccbbe",
              "parent_uuid": "32d926b0-4690-4083-aa81-de0dffcd6739",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9180a02f-cfd9-4490-9ed2-bf466851a7df",
                  "parent_uuid": "ebf202dd-031c-4859-ac5f-cac8c04ccbbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13751fcd-9239-4540-ae7f-210f546c6fac",
              "parent_uuid": "32d926b0-4690-4083-aa81-de0dffcd6739",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83248670-c579-4690-aeab-69ef3f49b60a",
                  "parent_uuid": "13751fcd-9239-4540-ae7f-210f546c6fac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "356d09cd-bb59-4cc3-8cf9-f2529809b8ee",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ebc3a870-bee5-4f9d-911c-c3aae51356b6",
              "parent_uuid": "356d09cd-bb59-4cc3-8cf9-f2529809b8ee",
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
              "uuid": "e0137236-3f48-43eb-9071-51077e01d435",
              "parent_uuid": "356d09cd-bb59-4cc3-8cf9-f2529809b8ee",
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
              "uuid": "8ac1aef3-ccd2-403f-857e-0ca6b5e8f385",
              "parent_uuid": "356d09cd-bb59-4cc3-8cf9-f2529809b8ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "319645fb-4dd7-491d-9168-1a291c0f8a63",
                  "parent_uuid": "8ac1aef3-ccd2-403f-857e-0ca6b5e8f385",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac769013-f934-46a8-816e-35becc5a9bcf",
              "parent_uuid": "356d09cd-bb59-4cc3-8cf9-f2529809b8ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9330c8c-40c1-465e-a908-e9c0de2015b2",
                  "parent_uuid": "ac769013-f934-46a8-816e-35becc5a9bcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a6f2c4a-a680-416a-9e3e-c1f1703e4590",
              "parent_uuid": "356d09cd-bb59-4cc3-8cf9-f2529809b8ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e674877b-b989-4272-b236-5beaa94a40cf",
                  "parent_uuid": "5a6f2c4a-a680-416a-9e3e-c1f1703e4590",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "cd03e091-3b7d-4874-a865-5c5044b82f16",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "845bcb45-1452-476d-b028-05458d302e90",
              "parent_uuid": "cd03e091-3b7d-4874-a865-5c5044b82f16",
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
              "uuid": "01c56d2e-8f77-43f5-803d-c1e95e212da7",
              "parent_uuid": "cd03e091-3b7d-4874-a865-5c5044b82f16",
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
              "uuid": "8061e088-0384-47c8-9287-5831419e8a65",
              "parent_uuid": "cd03e091-3b7d-4874-a865-5c5044b82f16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21bccf48-f8c9-4e37-aa05-8bc82832acc7",
                  "parent_uuid": "8061e088-0384-47c8-9287-5831419e8a65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "050b8f2d-4c86-451c-b20e-54326111cda4",
              "parent_uuid": "cd03e091-3b7d-4874-a865-5c5044b82f16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9efc5bf7-d954-46dc-8d6a-4d6948b260a9",
                  "parent_uuid": "050b8f2d-4c86-451c-b20e-54326111cda4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdcb8989-c6cb-44e3-a709-2b0dc2372826",
              "parent_uuid": "cd03e091-3b7d-4874-a865-5c5044b82f16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a18973a7-1951-4d40-b16f-97a6c6efe4dc",
                  "parent_uuid": "cdcb8989-c6cb-44e3-a709-2b0dc2372826",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "8aa32e7f-9190-48ca-8024-5e8ef467e70b",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4bf282e7-b777-4eac-9832-b83bfe82dce3",
              "parent_uuid": "8aa32e7f-9190-48ca-8024-5e8ef467e70b",
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
          "uuid": "384e6eeb-bdcf-48a4-88d7-3a0ef59890d3",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd51de74-86ec-4ba1-bf0f-0d2816e7a080",
              "parent_uuid": "384e6eeb-bdcf-48a4-88d7-3a0ef59890d3",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "16ac3f20-a97d-4d3e-abef-17592cde6961",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c25ecb6f-72c0-4723-9a7d-79a326343bcd",
              "parent_uuid": "16ac3f20-a97d-4d3e-abef-17592cde6961",
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
                  "uuid": "5a114376-b637-427f-b570-ad1b7fc9297b",
                  "parent_uuid": "c25ecb6f-72c0-4723-9a7d-79a326343bcd",
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
          "uuid": "9d3bf71f-b964-42cb-93ff-0c24e11afbc6",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "9f943e3e-2a1d-4b48-87c6-0f8d498e4a0c",
              "parent_uuid": "9d3bf71f-b964-42cb-93ff-0c24e11afbc6",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "10"
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
          "uuid": "0bcf702e-ffa4-49dc-bd45-da9a8952ee32",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "7bc915fe-65cc-413f-a8fb-4f32ba6e4bb0",
              "parent_uuid": "0bcf702e-ffa4-49dc-bd45-da9a8952ee32",
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
                  "10"
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
          "uuid": "1320ea55-b78f-4830-838c-788478ca6c71",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07d6c995-dca8-45de-aac4-b6e4d908a4ae",
              "parent_uuid": "1320ea55-b78f-4830-838c-788478ca6c71",
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
              "uuid": "37b19abd-dca0-479f-a925-9301b2c13b7b",
              "parent_uuid": "1320ea55-b78f-4830-838c-788478ca6c71",
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
              "uuid": "ab7eb031-1117-4be5-886c-5d59f80ce0b9",
              "parent_uuid": "1320ea55-b78f-4830-838c-788478ca6c71",
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
              "uuid": "1fde6072-f6b5-4197-954d-79f488a3a1f9",
              "parent_uuid": "1320ea55-b78f-4830-838c-788478ca6c71",
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
              "uuid": "d45ef73a-1c7c-4a0b-9cf5-6996e2c30c75",
              "parent_uuid": "1320ea55-b78f-4830-838c-788478ca6c71",
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "2146edb3-9ced-4569-a5c9-6b2269cc9d68",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8307502e-71c7-4aec-a74a-6c4b3388f1f1",
              "parent_uuid": "2146edb3-9ced-4569-a5c9-6b2269cc9d68",
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
              "uuid": "f66e3096-3da2-42d6-aa69-3bc8941bdf4c",
              "parent_uuid": "2146edb3-9ced-4569-a5c9-6b2269cc9d68",
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
              "uuid": "90563170-e130-4cef-ac89-1ef830412674",
              "parent_uuid": "2146edb3-9ced-4569-a5c9-6b2269cc9d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "584ee1d6-d756-4d34-b29d-36de18b6256d",
                  "parent_uuid": "90563170-e130-4cef-ac89-1ef830412674",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0072b089-bb68-4572-8ece-a132fcd3dd53",
              "parent_uuid": "2146edb3-9ced-4569-a5c9-6b2269cc9d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a6a96c7-1a15-4d3f-b85c-3e4c7ddee320",
                  "parent_uuid": "0072b089-bb68-4572-8ece-a132fcd3dd53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70a8a4cf-7b6e-4f62-868f-900806ffc605",
              "parent_uuid": "2146edb3-9ced-4569-a5c9-6b2269cc9d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d00d4a4-3ad5-44d5-8575-c10389e20fb9",
                  "parent_uuid": "70a8a4cf-7b6e-4f62-868f-900806ffc605",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aee34f26-6356-48af-be4d-62d5d0253dc1",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "952f017a-2ed2-4752-944a-fd61e9677a24",
              "parent_uuid": "aee34f26-6356-48af-be4d-62d5d0253dc1",
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
              "uuid": "8d9400a0-3676-488e-b66c-d53142f39063",
              "parent_uuid": "aee34f26-6356-48af-be4d-62d5d0253dc1",
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
              "uuid": "eec4af8f-b774-4efc-9867-accffd59766c",
              "parent_uuid": "aee34f26-6356-48af-be4d-62d5d0253dc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccaa7d1c-5446-49c9-9211-9066fb5c85d7",
                  "parent_uuid": "eec4af8f-b774-4efc-9867-accffd59766c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27eb8cfb-8395-4e0b-982d-a103dbebe4fb",
              "parent_uuid": "aee34f26-6356-48af-be4d-62d5d0253dc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a39899d-7f44-40cd-ae2b-222f1432e7ab",
                  "parent_uuid": "27eb8cfb-8395-4e0b-982d-a103dbebe4fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "494b45cd-9d46-4e6e-bc8d-d87d01003fcd",
              "parent_uuid": "aee34f26-6356-48af-be4d-62d5d0253dc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb5d01c8-ea63-4bbb-853e-de46ad897436",
                  "parent_uuid": "494b45cd-9d46-4e6e-bc8d-d87d01003fcd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7f480f00-55fd-4834-b132-b866c29a7377",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95b3fecf-bb10-4645-a66c-b6c4d274b701",
              "parent_uuid": "7f480f00-55fd-4834-b132-b866c29a7377",
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
              "uuid": "746dcbd3-bdfa-46fe-b5af-95695366b2d2",
              "parent_uuid": "7f480f00-55fd-4834-b132-b866c29a7377",
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
              "uuid": "5d6f0014-9fa2-4bd2-988f-0f532588a87e",
              "parent_uuid": "7f480f00-55fd-4834-b132-b866c29a7377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a63ce56-e30e-4a2f-b6ea-40e28f4698ce",
                  "parent_uuid": "5d6f0014-9fa2-4bd2-988f-0f532588a87e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecb58376-21b1-4de7-8876-828934fab869",
              "parent_uuid": "7f480f00-55fd-4834-b132-b866c29a7377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c13dfe2-22d6-4bb9-b44b-bb47c6d10aba",
                  "parent_uuid": "ecb58376-21b1-4de7-8876-828934fab869",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab93be74-bb47-47bb-9da5-48eb8e92c22d",
              "parent_uuid": "7f480f00-55fd-4834-b132-b866c29a7377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14c24150-d451-4191-9e35-af414f9e854f",
                  "parent_uuid": "ab93be74-bb47-47bb-9da5-48eb8e92c22d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d37cee66-d89e-4e77-bdac-06b4837d3b28",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "021e38b3-e5cb-41b5-af83-e6ecff2db7d3",
              "parent_uuid": "d37cee66-d89e-4e77-bdac-06b4837d3b28",
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
              "uuid": "ffebfe50-2f91-40e0-b103-95ecefea08a0",
              "parent_uuid": "d37cee66-d89e-4e77-bdac-06b4837d3b28",
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
              "uuid": "e9549d84-9bf2-40ad-bfe6-17f6f2288d5e",
              "parent_uuid": "d37cee66-d89e-4e77-bdac-06b4837d3b28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfbc5d6b-47dd-4222-8759-06b1e7121dbe",
                  "parent_uuid": "e9549d84-9bf2-40ad-bfe6-17f6f2288d5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7528b5ed-0d54-47b3-bd9f-882b0eae605e",
              "parent_uuid": "d37cee66-d89e-4e77-bdac-06b4837d3b28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "135d6f10-95b3-48f8-9c8e-7c322a265bd0",
                  "parent_uuid": "7528b5ed-0d54-47b3-bd9f-882b0eae605e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66e893a3-b9f7-440c-9a6e-990ece8e116a",
              "parent_uuid": "d37cee66-d89e-4e77-bdac-06b4837d3b28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d079762f-a71c-4f93-8144-0848ce318375",
                  "parent_uuid": "66e893a3-b9f7-440c-9a6e-990ece8e116a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "a03d964e-f7a0-44d6-ba42-b15fba22e8c2",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f77d6a7f-38a6-41a7-8223-4d42bf5aebf6",
              "parent_uuid": "a03d964e-f7a0-44d6-ba42-b15fba22e8c2",
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
              "uuid": "ff645c1a-f86f-4fee-852c-3127510810ef",
              "parent_uuid": "a03d964e-f7a0-44d6-ba42-b15fba22e8c2",
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
              "uuid": "b2d2ecbb-aff5-4a5f-9e3c-a0ae0d419616",
              "parent_uuid": "a03d964e-f7a0-44d6-ba42-b15fba22e8c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63c20708-f030-408e-a70c-776fea362f1d",
                  "parent_uuid": "b2d2ecbb-aff5-4a5f-9e3c-a0ae0d419616",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a109e0f-caf0-4153-9e39-8bb4749a028b",
              "parent_uuid": "a03d964e-f7a0-44d6-ba42-b15fba22e8c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a3258fd-5a55-4006-af17-31d64fb00206",
                  "parent_uuid": "7a109e0f-caf0-4153-9e39-8bb4749a028b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b1ec32c-1763-4d48-b127-2a0b90b208b1",
              "parent_uuid": "a03d964e-f7a0-44d6-ba42-b15fba22e8c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87e28db6-63e2-4177-863f-25b2ff01b471",
                  "parent_uuid": "7b1ec32c-1763-4d48-b127-2a0b90b208b1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "2a3dd99c-52ad-4831-95d7-b2e8bf16e0b6",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d61f319-c824-4d30-bcd1-6980f846b08a",
              "parent_uuid": "2a3dd99c-52ad-4831-95d7-b2e8bf16e0b6",
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
              "uuid": "d74bdf7d-6cee-4333-8c3f-226524d1609e",
              "parent_uuid": "2a3dd99c-52ad-4831-95d7-b2e8bf16e0b6",
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
              "uuid": "99d4c31d-8ef8-4c31-bbfb-0e895b981c51",
              "parent_uuid": "2a3dd99c-52ad-4831-95d7-b2e8bf16e0b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c14b9048-7e7b-4c86-a138-0e787c579da7",
                  "parent_uuid": "99d4c31d-8ef8-4c31-bbfb-0e895b981c51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a722a30-9b4a-4431-a077-855b5c400f0b",
              "parent_uuid": "2a3dd99c-52ad-4831-95d7-b2e8bf16e0b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf403b93-db5b-4506-893a-72921e9cb4bf",
                  "parent_uuid": "1a722a30-9b4a-4431-a077-855b5c400f0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c27cb358-2441-4258-be31-07af348db4ed",
              "parent_uuid": "2a3dd99c-52ad-4831-95d7-b2e8bf16e0b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27737b7b-0383-46ce-b810-ecb4a3c00fff",
                  "parent_uuid": "c27cb358-2441-4258-be31-07af348db4ed",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "d6fe17ff-ea87-4ec9-ad24-8768e35adfb2",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9a7a864-a6a7-481f-9fe4-eb4d167f0578",
              "parent_uuid": "d6fe17ff-ea87-4ec9-ad24-8768e35adfb2",
              "tagName": "td",
              "properties": [
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
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "910d1488-1150-46ff-8dfd-38479cf6ca23",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b38c1c5-afc4-4479-9614-715c24529e40",
              "parent_uuid": "910d1488-1150-46ff-8dfd-38479cf6ca23",
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
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "2a2d5850-9c18-4a79-98a2-ba489fa0c434",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "391cd104-3692-4c5c-9157-955ab416091f",
              "parent_uuid": "2a2d5850-9c18-4a79-98a2-ba489fa0c434",
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
                  "uuid": "552ca7f8-0ad5-4eeb-907e-aea33cc22f99",
                  "parent_uuid": "391cd104-3692-4c5c-9157-955ab416091f",
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
          "uuid": "69a1b490-c24f-466d-8485-e4c3800f1d08",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fecc848-1884-4a2e-b713-dca055f91c47",
              "parent_uuid": "69a1b490-c24f-466d-8485-e4c3800f1d08",
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
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "987ae519-0bda-4f93-a6a9-1e2b37f7c013",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "44a600d1-198d-40a8-bf24-6a7d5175b3f8",
              "parent_uuid": "987ae519-0bda-4f93-a6a9-1e2b37f7c013",
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
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "0c296121-0661-49f0-93a0-a7fb5c17b8b1",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8293496-63cf-40a2-8970-8077cd3b8350",
              "parent_uuid": "0c296121-0661-49f0-93a0-a7fb5c17b8b1",
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
              "uuid": "55af75b8-9a81-43dd-bac0-9aa61e4f3ae8",
              "parent_uuid": "0c296121-0661-49f0-93a0-a7fb5c17b8b1",
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
              "uuid": "0c9fd775-462a-4355-9e4b-5827455598c5",
              "parent_uuid": "0c296121-0661-49f0-93a0-a7fb5c17b8b1",
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
              "uuid": "f259a99e-bf35-4dc6-9722-2e5a9f733983",
              "parent_uuid": "0c296121-0661-49f0-93a0-a7fb5c17b8b1",
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
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "6ba941c1-db2c-4f49-bed0-22d057de9534",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95dbf12b-0512-40ba-9917-32e7b9396725",
              "parent_uuid": "6ba941c1-db2c-4f49-bed0-22d057de9534",
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
              "uuid": "911d6b40-5453-429e-98f9-5fadbc6885f5",
              "parent_uuid": "6ba941c1-db2c-4f49-bed0-22d057de9534",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4afa06e3-1310-4c92-a12d-904ab965eae4",
              "parent_uuid": "6ba941c1-db2c-4f49-bed0-22d057de9534",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "72f5cea1-f33c-4aab-844d-0d6990a4924c",
              "parent_uuid": "6ba941c1-db2c-4f49-bed0-22d057de9534",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "3e7a511b-474e-447c-bcac-be1a35188610",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0119c1cd-1637-4f81-a0e8-791700189610",
              "parent_uuid": "3e7a511b-474e-447c-bcac-be1a35188610",
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
              "uuid": "9c1838e6-cccb-41e2-b35a-7c9f1ae3e488",
              "parent_uuid": "3e7a511b-474e-447c-bcac-be1a35188610",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "413f71d5-8821-42b4-9891-f8d2193f198c",
              "parent_uuid": "3e7a511b-474e-447c-bcac-be1a35188610",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e4b7e4c5-0ed7-40c2-81e4-fb31f05423c4",
              "parent_uuid": "3e7a511b-474e-447c-bcac-be1a35188610",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "ce1ee727-706b-4435-9fd7-1882327c5608",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96eaea68-49e8-45ff-8236-aaf56ceaa8d1",
              "parent_uuid": "ce1ee727-706b-4435-9fd7-1882327c5608",
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
              "uuid": "a1a2936b-b504-43d7-8577-ba91d1eaf21e",
              "parent_uuid": "ce1ee727-706b-4435-9fd7-1882327c5608",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9a5d9728-063c-4262-a5a0-0894fefe615e",
              "parent_uuid": "ce1ee727-706b-4435-9fd7-1882327c5608",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1dbdb4d4-0b0b-4af3-a435-d2deace5ba93",
              "parent_uuid": "ce1ee727-706b-4435-9fd7-1882327c5608",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "ae68a325-cb26-4d23-8706-3a8ddaad7e02",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b14c79f9-7223-4557-b4f8-5f93515a9aa7",
              "parent_uuid": "ae68a325-cb26-4d23-8706-3a8ddaad7e02",
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
              "uuid": "9588fd1d-2c06-4990-a1dd-676d83a24f90",
              "parent_uuid": "ae68a325-cb26-4d23-8706-3a8ddaad7e02",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2f5abedc-a1cd-4d10-9534-d1724ce12e02",
              "parent_uuid": "ae68a325-cb26-4d23-8706-3a8ddaad7e02",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ecd28442-f575-448e-b947-69df0df5bbdf",
              "parent_uuid": "ae68a325-cb26-4d23-8706-3a8ddaad7e02",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "1d22620e-3fb9-4078-9086-8deec0af4d26",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33f91791-5c89-4ef5-a87e-73784039311a",
              "parent_uuid": "1d22620e-3fb9-4078-9086-8deec0af4d26",
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
              "uuid": "bb137e45-283e-41d7-a3cf-b065903ff616",
              "parent_uuid": "1d22620e-3fb9-4078-9086-8deec0af4d26",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "782cd23a-7b13-466d-94b1-8262d1ad6e4a",
              "parent_uuid": "1d22620e-3fb9-4078-9086-8deec0af4d26",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bce5c046-edfb-4235-b619-10cde58886dd",
              "parent_uuid": "1d22620e-3fb9-4078-9086-8deec0af4d26",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "5e8039bb-2310-4dfb-a643-b8ff88c296bb",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9de647d7-441f-4a55-9f52-92ed98f45569",
              "parent_uuid": "5e8039bb-2310-4dfb-a643-b8ff88c296bb",
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
              "uuid": "c57e1285-d7b8-485d-8e83-dcde48ade555",
              "parent_uuid": "5e8039bb-2310-4dfb-a643-b8ff88c296bb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6eb66ea3-4b72-45a1-bfcf-4c8a833ac801",
              "parent_uuid": "5e8039bb-2310-4dfb-a643-b8ff88c296bb",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5e36d9bf-0d05-4c45-95b8-facd24c18d4d",
              "parent_uuid": "5e8039bb-2310-4dfb-a643-b8ff88c296bb",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "efb27693-73f4-462c-bf5f-3eed9316ee06",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66d4f4f8-3b53-4f7a-92da-8e1bbd674c6f",
              "parent_uuid": "efb27693-73f4-462c-bf5f-3eed9316ee06",
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
              "uuid": "74439e9e-f6bb-4aa8-aa85-f929f522861c",
              "parent_uuid": "efb27693-73f4-462c-bf5f-3eed9316ee06",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "09a84faf-2b3f-4acf-9e63-ee01005690bc",
              "parent_uuid": "efb27693-73f4-462c-bf5f-3eed9316ee06",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e0d41e73-7acf-4d24-be35-9caec4128ca8",
              "parent_uuid": "efb27693-73f4-462c-bf5f-3eed9316ee06",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "fac17d36-8fcb-474b-b55c-9dd2ff4d6438",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a27a7c07-e898-4d49-ad67-426cb2a9688d",
              "parent_uuid": "fac17d36-8fcb-474b-b55c-9dd2ff4d6438",
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
              "uuid": "aeb5dd4a-9293-4ffa-bb49-c29948ab4217",
              "parent_uuid": "fac17d36-8fcb-474b-b55c-9dd2ff4d6438",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5a9c41e2-66ec-418c-abb1-9fd896c28367",
              "parent_uuid": "fac17d36-8fcb-474b-b55c-9dd2ff4d6438",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "43e1f6cd-e139-4268-bc6a-fed39fd5298b",
              "parent_uuid": "fac17d36-8fcb-474b-b55c-9dd2ff4d6438",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 56,
          "lvl": 0
        },
        {
          "uuid": "f3555522-458d-4591-a4d7-604edbc89f0a",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2ccf56b-45de-4580-bc58-9629af71c66a",
              "parent_uuid": "f3555522-458d-4591-a4d7-604edbc89f0a",
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
              "uuid": "37861079-b7af-4604-be70-cc584942f83d",
              "parent_uuid": "f3555522-458d-4591-a4d7-604edbc89f0a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8cd48159-5f13-4206-a1b3-9a06db1838c2",
              "parent_uuid": "f3555522-458d-4591-a4d7-604edbc89f0a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5986736d-d6c9-402c-ad17-190e2b9e73dc",
              "parent_uuid": "f3555522-458d-4591-a4d7-604edbc89f0a",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 57,
          "lvl": 0
        },
        {
          "uuid": "38f93c78-377c-44c4-8f82-5c335a446e1b",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1be5b044-8c99-4035-aa3b-f6bec61433a2",
              "parent_uuid": "38f93c78-377c-44c4-8f82-5c335a446e1b",
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
              "uuid": "a1ca7c90-1282-4b09-b149-f228466d652b",
              "parent_uuid": "38f93c78-377c-44c4-8f82-5c335a446e1b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "32f69182-e32f-435b-ace3-986b9d3f7006",
              "parent_uuid": "38f93c78-377c-44c4-8f82-5c335a446e1b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dac812ec-f58f-47cf-a199-579da2202ccf",
              "parent_uuid": "38f93c78-377c-44c4-8f82-5c335a446e1b",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 58,
          "lvl": 0
        },
        {
          "uuid": "b80372c4-9315-4e8a-aa01-657990004b18",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9eed3459-a3b7-4188-93fc-fce13d779a2b",
              "parent_uuid": "b80372c4-9315-4e8a-aa01-657990004b18",
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
              "uuid": "a4310275-b424-410f-b2ad-c5433505acda",
              "parent_uuid": "b80372c4-9315-4e8a-aa01-657990004b18",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "706a6e0c-54b1-41d2-b4c5-6fa94a61eb70",
              "parent_uuid": "b80372c4-9315-4e8a-aa01-657990004b18",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "03c52b2d-6d65-44c2-95ea-f38a80cbacb5",
              "parent_uuid": "b80372c4-9315-4e8a-aa01-657990004b18",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 59,
          "lvl": 0
        },
        {
          "uuid": "09f27dbb-08cf-4f9e-bfde-34ca18952bcd",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55da0073-9daa-4124-b1ff-a9b6650ac6d3",
              "parent_uuid": "09f27dbb-08cf-4f9e-bfde-34ca18952bcd",
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
              "uuid": "78c13a84-9e1a-4e6f-ade2-98f85ee2deb0",
              "parent_uuid": "09f27dbb-08cf-4f9e-bfde-34ca18952bcd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3712231b-2e13-4c76-9267-b2b5bd0ebc6c",
              "parent_uuid": "09f27dbb-08cf-4f9e-bfde-34ca18952bcd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dbb17c87-e178-4635-8627-b60ae4fe2a40",
              "parent_uuid": "09f27dbb-08cf-4f9e-bfde-34ca18952bcd",
              "tagName": "td",
              "properties": [
                [
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
            }
          ],
          "sort": 60,
          "lvl": 0
        },
        {
          "uuid": "b76455ab-24f3-46c4-92b3-fd09a5360db3",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f916961e-1693-4b53-af7e-a6e7a949a7eb",
              "parent_uuid": "b76455ab-24f3-46c4-92b3-fd09a5360db3",
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
          "uuid": "4eadf4ad-52ea-457e-a332-3586de1eb218",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b5a3c08-e783-474d-ba53-8da027b99df6",
              "parent_uuid": "4eadf4ad-52ea-457e-a332-3586de1eb218",
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
          "uuid": "31c61b46-4bfe-41a7-ac16-cae71861a43b",
          "parent_uuid": "988b776a-9362-430b-a71c-653ee018b017",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30b9890c-81aa-4fd7-8ae6-a1c79151595d",
              "parent_uuid": "31c61b46-4bfe-41a7-ac16-cae71861a43b",
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
                  "uuid": "4796fe2e-42d8-44ab-b88b-6ebfd2c5cec0",
                  "parent_uuid": "30b9890c-81aa-4fd7-8ae6-a1c79151595d",
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
    ,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS cl_uid 
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

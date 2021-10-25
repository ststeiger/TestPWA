
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
  "uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "1bdfa652-1ee7-452c-a2f0-db9948389c27",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "78379b02-a508-4947-acec-c546790bac49",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "dfa35df6-c615-4461-9e8c-d0bf23d9786d",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "45dffdaf-11c6-498a-b6c1-e28ba8afa913",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "17ac8bf1-19df-45d3-af61-db58c467c364",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "354f9613-8015-4593-9235-11955e67fa57",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "f88a23bf-aece-4f2d-9663-b91aae0701ca",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
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
      "uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
      "parent_uuid": "a58b158d-df92-4991-931c-57d59ad1ca35",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "cd357a7f-7f59-4982-9abf-c2e0c8660a13",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "c898b56c-c24e-456b-9feb-fbf54e73ee41",
              "parent_uuid": "cd357a7f-7f59-4982-9abf-c2e0c8660a13",
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
              "uuid": "eeda587c-1334-487c-bf2c-8e537d2d5fe3",
              "parent_uuid": "cd357a7f-7f59-4982-9abf-c2e0c8660a13",
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
              "uuid": "034d315d-8dc4-4b36-b6b7-d9e19e194250",
              "parent_uuid": "cd357a7f-7f59-4982-9abf-c2e0c8660a13",
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
              "uuid": "5b4afcdb-3eb1-4d69-b550-b28419c6d03f",
              "parent_uuid": "cd357a7f-7f59-4982-9abf-c2e0c8660a13",
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
          "uuid": "3677c3ca-26a8-4c23-bb16-c99bdc0df720",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "dc331c92-bbae-44e3-bdb7-9fd8fd4f3442",
              "parent_uuid": "3677c3ca-26a8-4c23-bb16-c99bdc0df720",
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
              "uuid": "7752c741-16fe-4c67-8adb-8058c374e7e4",
              "parent_uuid": "3677c3ca-26a8-4c23-bb16-c99bdc0df720",
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
              "uuid": "f2e48c18-0e5d-45a7-927d-d2cfd7b4d03c",
              "parent_uuid": "3677c3ca-26a8-4c23-bb16-c99bdc0df720",
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
              "uuid": "85154928-2290-4c21-a810-5838792b47e5",
              "parent_uuid": "3677c3ca-26a8-4c23-bb16-c99bdc0df720",
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
          "uuid": "ab177b99-96ae-4c7c-9c5e-f219be32ab28",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "7d994883-8d49-4c2a-87ff-65ef04070857",
              "parent_uuid": "ab177b99-96ae-4c7c-9c5e-f219be32ab28",
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
              "uuid": "b107fc13-3998-4869-a3d0-838936b23490",
              "parent_uuid": "ab177b99-96ae-4c7c-9c5e-f219be32ab28",
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
              "uuid": "dec31261-3a3d-4208-ab5b-f6ef0f015fce",
              "parent_uuid": "ab177b99-96ae-4c7c-9c5e-f219be32ab28",
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
              "uuid": "9ca9c8aa-7344-4e6f-aaab-fe5ad8398bd0",
              "parent_uuid": "ab177b99-96ae-4c7c-9c5e-f219be32ab28",
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
              "uuid": "6c66d7e8-265d-4137-a7f3-aff156a724e4",
              "parent_uuid": "ab177b99-96ae-4c7c-9c5e-f219be32ab28",
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
              "uuid": "6f8a52d9-5be7-4b74-b64a-0a967359dff4",
              "parent_uuid": "ab177b99-96ae-4c7c-9c5e-f219be32ab28",
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
          "uuid": "8411e4ef-9a43-4d1f-bc52-f11bb6210941",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c8592fbd-c1ab-49d9-b130-ff97b312f042",
              "parent_uuid": "8411e4ef-9a43-4d1f-bc52-f11bb6210941",
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
          "uuid": "84431768-a931-4e9c-befe-78b809a35e25",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "241283e5-c53b-4009-9a5b-137eb624ba51",
              "parent_uuid": "84431768-a931-4e9c-befe-78b809a35e25",
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
              "uuid": "4ae7b977-0413-4d1d-943e-65627c70c8aa",
              "parent_uuid": "84431768-a931-4e9c-befe-78b809a35e25",
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
              "uuid": "71962aa3-b40f-494a-bcc0-5fb8b003b253",
              "parent_uuid": "84431768-a931-4e9c-befe-78b809a35e25",
              "tagName": "td",
              "properties": [
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
                  "uuid": "46842fd6-a7c4-4156-8b54-29265b4e1648",
                  "parent_uuid": "71962aa3-b40f-494a-bcc0-5fb8b003b253",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01279011-f030-425d-a4fe-29b977dcd8ba",
              "parent_uuid": "84431768-a931-4e9c-befe-78b809a35e25",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fa7bfca8-b370-4101-bb48-829c50ba5dea",
                  "parent_uuid": "01279011-f030-425d-a4fe-29b977dcd8ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14163f56-8ef8-4c37-8d13-3bd76109bb55",
              "parent_uuid": "84431768-a931-4e9c-befe-78b809a35e25",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea9536b9-9b9d-4d55-9c06-0827e1a03258",
                  "parent_uuid": "14163f56-8ef8-4c37-8d13-3bd76109bb55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0345c041-0f74-4352-a2e7-42440f3ce1e8",
              "parent_uuid": "84431768-a931-4e9c-befe-78b809a35e25",
              "tagName": "td",
              "properties": [
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
                  "uuid": "735f6743-b766-457f-91e2-b69cca6c3664",
                  "parent_uuid": "0345c041-0f74-4352-a2e7-42440f3ce1e8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4caf233c-2965-4a39-b902-3ba5ff192964",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd43f1ff-c390-4a86-b574-c3b4b04ac0e1",
              "parent_uuid": "4caf233c-2965-4a39-b902-3ba5ff192964",
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
              "uuid": "a2e103f3-94ec-43d0-9e0d-5ef8d47cdd1e",
              "parent_uuid": "4caf233c-2965-4a39-b902-3ba5ff192964",
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
              "uuid": "74454ee3-0328-401c-a15e-4d20069ee0f1",
              "parent_uuid": "4caf233c-2965-4a39-b902-3ba5ff192964",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b27e9aef-194a-4355-bb45-732a4a99e854",
                  "parent_uuid": "74454ee3-0328-401c-a15e-4d20069ee0f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "969f2f7e-f1c3-435c-a9df-d674a652fc06",
              "parent_uuid": "4caf233c-2965-4a39-b902-3ba5ff192964",
              "tagName": "td",
              "properties": [
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
                  "uuid": "92feb4ec-79cb-4aea-a79c-86d292ebf1d6",
                  "parent_uuid": "969f2f7e-f1c3-435c-a9df-d674a652fc06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84df2186-5bf3-48e8-aed8-ea469d81d75d",
              "parent_uuid": "4caf233c-2965-4a39-b902-3ba5ff192964",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d81f6705-42ac-4303-b4fa-55f8abf58aba",
                  "parent_uuid": "84df2186-5bf3-48e8-aed8-ea469d81d75d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e37c955-9c92-42ac-af3e-d41126d1e7d2",
              "parent_uuid": "4caf233c-2965-4a39-b902-3ba5ff192964",
              "tagName": "td",
              "properties": [
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
                  "uuid": "af7025e6-35c0-4312-a1d2-4d2362947443",
                  "parent_uuid": "1e37c955-9c92-42ac-af3e-d41126d1e7d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c37e0283-cb2c-45ae-b4a3-931b0d9b63f4",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "754228b6-01dd-475f-85bb-175d9a9c2243",
              "parent_uuid": "c37e0283-cb2c-45ae-b4a3-931b0d9b63f4",
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
              "uuid": "61361de8-595a-4205-bda2-4185564b164d",
              "parent_uuid": "c37e0283-cb2c-45ae-b4a3-931b0d9b63f4",
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
              "uuid": "5329bdd6-b603-4bcc-b700-7a24eab8076f",
              "parent_uuid": "c37e0283-cb2c-45ae-b4a3-931b0d9b63f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f559b3e0-53ca-4f49-a70f-dc14eef17d24",
                  "parent_uuid": "5329bdd6-b603-4bcc-b700-7a24eab8076f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0b6bd6b-9487-4546-9595-8060deaa1bd1",
              "parent_uuid": "c37e0283-cb2c-45ae-b4a3-931b0d9b63f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "302af6f4-cbcd-42fb-a092-40df9b2fac6a",
                  "parent_uuid": "d0b6bd6b-9487-4546-9595-8060deaa1bd1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a6913b3-78b7-43af-8630-e0e92f54e79c",
              "parent_uuid": "c37e0283-cb2c-45ae-b4a3-931b0d9b63f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f18b769a-926f-467e-a502-ee181dccb699",
                  "parent_uuid": "5a6913b3-78b7-43af-8630-e0e92f54e79c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8996812-00a2-460b-9462-54e50f7fd92e",
              "parent_uuid": "c37e0283-cb2c-45ae-b4a3-931b0d9b63f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0185a4f-c922-4caa-98aa-6b83315ac018",
                  "parent_uuid": "a8996812-00a2-460b-9462-54e50f7fd92e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d41a35ef-b33e-4cce-b1b4-985ba11e3a34",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "76f5504e-d10a-47cc-9412-e9c9260b9594",
              "parent_uuid": "d41a35ef-b33e-4cce-b1b4-985ba11e3a34",
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
              "uuid": "298c7c6a-ff7d-43ad-98c8-1f40e695afcc",
              "parent_uuid": "d41a35ef-b33e-4cce-b1b4-985ba11e3a34",
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
              "uuid": "9621743e-d36e-4c48-8d6a-097671bf134c",
              "parent_uuid": "d41a35ef-b33e-4cce-b1b4-985ba11e3a34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e4061d9-58f5-4ce3-80ae-ff96bb3c459a",
                  "parent_uuid": "9621743e-d36e-4c48-8d6a-097671bf134c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c707339e-6ad0-42c0-8d40-f7892911ba7e",
              "parent_uuid": "d41a35ef-b33e-4cce-b1b4-985ba11e3a34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "463192bf-9fcd-48b7-a40d-7f03aaf05aae",
                  "parent_uuid": "c707339e-6ad0-42c0-8d40-f7892911ba7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6155a27-8264-4995-83fe-095680f5464c",
              "parent_uuid": "d41a35ef-b33e-4cce-b1b4-985ba11e3a34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfd9e49f-125f-4941-b7bf-278bcf950602",
                  "parent_uuid": "f6155a27-8264-4995-83fe-095680f5464c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c23e923-1c2a-4aa5-9fd5-eb9806d90744",
              "parent_uuid": "d41a35ef-b33e-4cce-b1b4-985ba11e3a34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ea19689-8c2e-48e4-a5fe-b76780a8313f",
                  "parent_uuid": "3c23e923-1c2a-4aa5-9fd5-eb9806d90744",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d161dded-330a-490d-b4ff-a1f88c71b533",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b629c84e-40a6-4e87-bf66-28c4f23e87fe",
              "parent_uuid": "d161dded-330a-490d-b4ff-a1f88c71b533",
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
              "uuid": "29cef459-f3ce-4964-be07-22b4b16e0beb",
              "parent_uuid": "d161dded-330a-490d-b4ff-a1f88c71b533",
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
              "uuid": "79e2531b-c13e-4c69-8e8a-b48d67754005",
              "parent_uuid": "d161dded-330a-490d-b4ff-a1f88c71b533",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81d0ad02-58a0-41c9-8006-34a075604522",
                  "parent_uuid": "79e2531b-c13e-4c69-8e8a-b48d67754005",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ab88cc0-2ae6-4abd-b4c8-e7fc0dfbd7a1",
              "parent_uuid": "d161dded-330a-490d-b4ff-a1f88c71b533",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9796247b-8d1b-4fd7-8d03-01d28acc6914",
                  "parent_uuid": "6ab88cc0-2ae6-4abd-b4c8-e7fc0dfbd7a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bdf9ec74-0899-4695-9ed0-0bcbd00df7f8",
              "parent_uuid": "d161dded-330a-490d-b4ff-a1f88c71b533",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f1a5a88-0c55-4ca4-914d-a19dd7713258",
                  "parent_uuid": "bdf9ec74-0899-4695-9ed0-0bcbd00df7f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cc4b3fd-0ed5-4bc5-bdc3-7d9f45588451",
              "parent_uuid": "d161dded-330a-490d-b4ff-a1f88c71b533",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26315101-a715-4570-afe7-1aaa17f24536",
                  "parent_uuid": "3cc4b3fd-0ed5-4bc5-bdc3-7d9f45588451",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4deb062c-e3a2-4ff6-8eb5-fa327399ded7",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59e06969-5dd6-4c97-abc7-1ffae29088d0",
              "parent_uuid": "4deb062c-e3a2-4ff6-8eb5-fa327399ded7",
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
              "uuid": "64b33b0d-25c9-4489-9463-c1a3165b5184",
              "parent_uuid": "4deb062c-e3a2-4ff6-8eb5-fa327399ded7",
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
              "uuid": "2301bef4-3a3d-4b5f-8ca8-8f06080c6142",
              "parent_uuid": "4deb062c-e3a2-4ff6-8eb5-fa327399ded7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e30de727-2b5d-4bc2-9ef2-f310c4359147",
                  "parent_uuid": "2301bef4-3a3d-4b5f-8ca8-8f06080c6142",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1751385-60d7-4a5f-9a7b-aa8aba69e343",
              "parent_uuid": "4deb062c-e3a2-4ff6-8eb5-fa327399ded7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6080732-0262-4e90-ba0d-850505f13068",
                  "parent_uuid": "e1751385-60d7-4a5f-9a7b-aa8aba69e343",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18f7f054-3475-49ac-8100-47a887811e9c",
              "parent_uuid": "4deb062c-e3a2-4ff6-8eb5-fa327399ded7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52f84f30-693c-4f21-9d64-0a913c3ffe24",
                  "parent_uuid": "18f7f054-3475-49ac-8100-47a887811e9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bc8d3bc-9a22-423e-b918-6aa8578599c1",
              "parent_uuid": "4deb062c-e3a2-4ff6-8eb5-fa327399ded7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "627c6ebd-49a6-4fdf-a055-bd55d179d797",
                  "parent_uuid": "1bc8d3bc-9a22-423e-b918-6aa8578599c1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b08b4be2-cd84-41cc-aebb-fdb7ea9901ef",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5bf9d470-597c-4b08-9079-76f1b3a2bef3",
              "parent_uuid": "b08b4be2-cd84-41cc-aebb-fdb7ea9901ef",
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
              "uuid": "77be9055-045a-43dd-b579-24912dd77bc8",
              "parent_uuid": "b08b4be2-cd84-41cc-aebb-fdb7ea9901ef",
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
              "uuid": "5e6dd3bd-db26-49b6-997c-dab2adfa1360",
              "parent_uuid": "b08b4be2-cd84-41cc-aebb-fdb7ea9901ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78a10bd6-c56d-413c-a36a-58bd2bbe51e8",
                  "parent_uuid": "5e6dd3bd-db26-49b6-997c-dab2adfa1360",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8caf29f2-5274-4583-92a3-509f4cb068c4",
              "parent_uuid": "b08b4be2-cd84-41cc-aebb-fdb7ea9901ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5dce10e-b94b-4f5c-b308-90221e7d076b",
                  "parent_uuid": "8caf29f2-5274-4583-92a3-509f4cb068c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b94f2d02-4a40-42f0-8a44-3aefb057abd7",
              "parent_uuid": "b08b4be2-cd84-41cc-aebb-fdb7ea9901ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56a4fe0d-a35e-4837-9eb5-fbb7674250f2",
                  "parent_uuid": "b94f2d02-4a40-42f0-8a44-3aefb057abd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e80e1913-12a5-4c71-8a4e-aa3cc3aa1a87",
              "parent_uuid": "b08b4be2-cd84-41cc-aebb-fdb7ea9901ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5a82fb4-8c0c-4147-a497-82d1f535e0e5",
                  "parent_uuid": "e80e1913-12a5-4c71-8a4e-aa3cc3aa1a87",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3eb71f5b-30d0-4007-90e1-050945e6a6c2",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea9b7eb7-8744-4512-b3b7-3f1ffeb5052a",
              "parent_uuid": "3eb71f5b-30d0-4007-90e1-050945e6a6c2",
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
              "uuid": "c45b17ab-cbba-48db-b8d0-371211b78f72",
              "parent_uuid": "3eb71f5b-30d0-4007-90e1-050945e6a6c2",
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
              "uuid": "d69f78ac-ca13-4806-aa56-a5cd6ac04bb9",
              "parent_uuid": "3eb71f5b-30d0-4007-90e1-050945e6a6c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d6a848a-8835-4000-8a9c-8ec67fcfc566",
                  "parent_uuid": "d69f78ac-ca13-4806-aa56-a5cd6ac04bb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "551afb32-535f-44b7-8274-275f82114159",
              "parent_uuid": "3eb71f5b-30d0-4007-90e1-050945e6a6c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4d149f6-3c2f-48c1-99b1-d1fcb1d3bd4f",
                  "parent_uuid": "551afb32-535f-44b7-8274-275f82114159",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a97cc199-897e-4794-8ba8-6e5bc4966a06",
              "parent_uuid": "3eb71f5b-30d0-4007-90e1-050945e6a6c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "150248e0-0740-4225-bf10-29a3a02d9931",
                  "parent_uuid": "a97cc199-897e-4794-8ba8-6e5bc4966a06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a740bd1-54c4-4ea7-a0ea-261d13dd4111",
              "parent_uuid": "3eb71f5b-30d0-4007-90e1-050945e6a6c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15a864fb-7182-426c-b5bf-f21fc43ea5e2",
                  "parent_uuid": "1a740bd1-54c4-4ea7-a0ea-261d13dd4111",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c02e2d2d-0264-4ffd-b427-a916f905dfe9",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9812689-dcc4-4576-bd50-6e44894e97a5",
              "parent_uuid": "c02e2d2d-0264-4ffd-b427-a916f905dfe9",
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
              "uuid": "087fed5d-c5f5-47e3-ade8-406ee089134c",
              "parent_uuid": "c02e2d2d-0264-4ffd-b427-a916f905dfe9",
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
              "uuid": "95ce2d32-a28d-44a1-818b-d20e781fa501",
              "parent_uuid": "c02e2d2d-0264-4ffd-b427-a916f905dfe9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63967b1f-2d39-4ea4-9bd6-d3d5c43162bb",
                  "parent_uuid": "95ce2d32-a28d-44a1-818b-d20e781fa501",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c905ca5-143c-4565-939e-c9220e164973",
              "parent_uuid": "c02e2d2d-0264-4ffd-b427-a916f905dfe9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d506715-546e-4550-ac93-63a0d98bc4db",
                  "parent_uuid": "1c905ca5-143c-4565-939e-c9220e164973",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c81db816-8455-4bb6-a93a-ab8f56c01888",
              "parent_uuid": "c02e2d2d-0264-4ffd-b427-a916f905dfe9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "334bc0ac-de59-4da2-aa6b-603d5dd604bc",
                  "parent_uuid": "c81db816-8455-4bb6-a93a-ab8f56c01888",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14c50648-36d9-44d1-aaf3-975d13cfee64",
              "parent_uuid": "c02e2d2d-0264-4ffd-b427-a916f905dfe9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75744b14-f4db-4405-aa95-fefaadb76d78",
                  "parent_uuid": "14c50648-36d9-44d1-aaf3-975d13cfee64",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc49f2aa-e672-450d-97b4-0bbd01206469",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "70a4a6a2-baa5-43b0-93f7-6b0f1c4e5001",
              "parent_uuid": "bc49f2aa-e672-450d-97b4-0bbd01206469",
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
              "uuid": "d48d6473-5e38-43c4-9125-acf7990e5499",
              "parent_uuid": "bc49f2aa-e672-450d-97b4-0bbd01206469",
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
              "uuid": "c5021b7c-155e-4ccd-9048-4a17f60371a5",
              "parent_uuid": "bc49f2aa-e672-450d-97b4-0bbd01206469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb68eee4-d0a8-424c-ba75-a2cd86af7e3e",
                  "parent_uuid": "c5021b7c-155e-4ccd-9048-4a17f60371a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9910d7e9-e1ef-4080-85da-41b487c4188a",
              "parent_uuid": "bc49f2aa-e672-450d-97b4-0bbd01206469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e9e74cd-4d51-4e50-8f49-da5829e424c5",
                  "parent_uuid": "9910d7e9-e1ef-4080-85da-41b487c4188a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8bec962a-dbe5-4549-b27b-dd4c53f954a6",
              "parent_uuid": "bc49f2aa-e672-450d-97b4-0bbd01206469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bd9cf7c-d8d4-47f6-b47d-95e4e884b9df",
                  "parent_uuid": "8bec962a-dbe5-4549-b27b-dd4c53f954a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2115f33-8f71-444b-8d6b-6b32715926d0",
              "parent_uuid": "bc49f2aa-e672-450d-97b4-0bbd01206469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ce2ad7e-3325-489e-b7e2-e910398339d1",
                  "parent_uuid": "c2115f33-8f71-444b-8d6b-6b32715926d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ef20a2e7-8dfa-4972-9e92-a6460d98530b",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7fcdf95-b9ee-48e4-b705-bed8d8b8e91b",
              "parent_uuid": "ef20a2e7-8dfa-4972-9e92-a6460d98530b",
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
              "uuid": "7ac8c21d-c59b-4485-ba3a-6a7aa822d2d9",
              "parent_uuid": "ef20a2e7-8dfa-4972-9e92-a6460d98530b",
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
              "uuid": "a0052581-5b93-4807-ac80-4bb1a74d034a",
              "parent_uuid": "ef20a2e7-8dfa-4972-9e92-a6460d98530b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "347db9b9-df7e-4792-942c-a204a2e47913",
                  "parent_uuid": "a0052581-5b93-4807-ac80-4bb1a74d034a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81ca3f89-dfba-4a12-aacf-528ca370006a",
              "parent_uuid": "ef20a2e7-8dfa-4972-9e92-a6460d98530b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9d85299-caac-48cb-a11d-f71c909f5267",
                  "parent_uuid": "81ca3f89-dfba-4a12-aacf-528ca370006a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ef33f99-2106-4192-a171-059655e1a4fd",
              "parent_uuid": "ef20a2e7-8dfa-4972-9e92-a6460d98530b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "438a56fc-c0ff-4c3c-bb28-3f5338fb9712",
                  "parent_uuid": "9ef33f99-2106-4192-a171-059655e1a4fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afb85132-6b1f-4c44-8000-0a1c1a69f49e",
              "parent_uuid": "ef20a2e7-8dfa-4972-9e92-a6460d98530b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89a53c1d-d4d1-435d-8392-350f523ff2df",
                  "parent_uuid": "afb85132-6b1f-4c44-8000-0a1c1a69f49e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "83c5dc5b-251c-4382-9298-bab94e3e4da4",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1120ad19-faa0-467c-8dd4-e906fbae3d0c",
              "parent_uuid": "83c5dc5b-251c-4382-9298-bab94e3e4da4",
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
              "uuid": "bd75db1f-cac8-4ce5-9bd9-7a97d297c588",
              "parent_uuid": "83c5dc5b-251c-4382-9298-bab94e3e4da4",
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
              "uuid": "285848d2-b139-4d4a-9a94-3dac213c9ce7",
              "parent_uuid": "83c5dc5b-251c-4382-9298-bab94e3e4da4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3223c9a4-5046-4f56-87d9-92b3a0785d3d",
                  "parent_uuid": "285848d2-b139-4d4a-9a94-3dac213c9ce7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8541d5db-9ef2-4ddc-8534-e523bb8c3b67",
              "parent_uuid": "83c5dc5b-251c-4382-9298-bab94e3e4da4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da0df0f6-f4af-484d-8d8e-7be4da685fcb",
                  "parent_uuid": "8541d5db-9ef2-4ddc-8534-e523bb8c3b67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f341172e-206b-4fce-9245-711eb3ee86e8",
              "parent_uuid": "83c5dc5b-251c-4382-9298-bab94e3e4da4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "523ec8b7-0472-4e50-b854-d839e16d8ebc",
                  "parent_uuid": "f341172e-206b-4fce-9245-711eb3ee86e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "774ea07a-c0db-4fce-9b47-676c15f691d7",
              "parent_uuid": "83c5dc5b-251c-4382-9298-bab94e3e4da4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2d16972-32d4-4f96-9e83-c342b5e934e2",
                  "parent_uuid": "774ea07a-c0db-4fce-9b47-676c15f691d7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "975375e9-0765-4fc2-80fb-29311ded4c67",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6eadf945-62d4-4bc9-b3d1-63f5a2816176",
              "parent_uuid": "975375e9-0765-4fc2-80fb-29311ded4c67",
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
              "uuid": "8c105372-c187-4e96-9b8b-d219d13ff3e1",
              "parent_uuid": "975375e9-0765-4fc2-80fb-29311ded4c67",
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
              "uuid": "cb9f1d88-4af5-41b0-a393-4d1b823e30f9",
              "parent_uuid": "975375e9-0765-4fc2-80fb-29311ded4c67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0391702-cc14-4739-a569-4497a1188b55",
                  "parent_uuid": "cb9f1d88-4af5-41b0-a393-4d1b823e30f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87a7c7d0-ba8e-4b7a-b857-47ff253d90b7",
              "parent_uuid": "975375e9-0765-4fc2-80fb-29311ded4c67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83cfedd5-15a4-46a7-9710-2b754a337321",
                  "parent_uuid": "87a7c7d0-ba8e-4b7a-b857-47ff253d90b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f2a4a99-344f-4bbe-ba8f-1bca7812e51c",
              "parent_uuid": "975375e9-0765-4fc2-80fb-29311ded4c67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0ecaa53-8f2a-46ae-8da5-c2da197c735d",
                  "parent_uuid": "1f2a4a99-344f-4bbe-ba8f-1bca7812e51c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bb7d3bd-c2b0-4d36-b717-ac2c0df20c09",
              "parent_uuid": "975375e9-0765-4fc2-80fb-29311ded4c67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74e21d5e-cd01-4bcc-bb49-94b3881c0f30",
                  "parent_uuid": "5bb7d3bd-c2b0-4d36-b717-ac2c0df20c09",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31ed773f-6b5c-44f3-bd7f-580d84370171",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b36a9ef1-53b0-4aaa-bf6c-bfbcb2b4dc7e",
              "parent_uuid": "31ed773f-6b5c-44f3-bd7f-580d84370171",
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
              "uuid": "6d3f7b99-2a14-42a5-af2d-28942f5dab51",
              "parent_uuid": "31ed773f-6b5c-44f3-bd7f-580d84370171",
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
              "uuid": "eca4d977-54ec-445d-97fb-d6e8fecf2d16",
              "parent_uuid": "31ed773f-6b5c-44f3-bd7f-580d84370171",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11939415-50a3-4478-a803-7164cdca5f32",
                  "parent_uuid": "eca4d977-54ec-445d-97fb-d6e8fecf2d16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e89d7fdc-bee9-477d-9289-cf3c68cff1e1",
              "parent_uuid": "31ed773f-6b5c-44f3-bd7f-580d84370171",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "446ad846-ba92-4b12-84ea-f44fbab99ac4",
                  "parent_uuid": "e89d7fdc-bee9-477d-9289-cf3c68cff1e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bed651dd-6fd9-4395-9c53-8e7981b0f5ed",
              "parent_uuid": "31ed773f-6b5c-44f3-bd7f-580d84370171",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "087af23d-f6e7-4587-aace-a76b26146da5",
                  "parent_uuid": "bed651dd-6fd9-4395-9c53-8e7981b0f5ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52818419-3f40-4c8f-8cc0-78d3eceb3d04",
              "parent_uuid": "31ed773f-6b5c-44f3-bd7f-580d84370171",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c2b8406-1cf9-4b54-b63a-233e6aeb35be",
                  "parent_uuid": "52818419-3f40-4c8f-8cc0-78d3eceb3d04",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fb1a5e2d-5047-46f1-b807-2457bd4b5829",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00186ee3-0581-4501-bbf5-ae13901170eb",
              "parent_uuid": "fb1a5e2d-5047-46f1-b807-2457bd4b5829",
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
              "uuid": "b8d6b29b-d36e-4a1b-913e-f870ef822bc4",
              "parent_uuid": "fb1a5e2d-5047-46f1-b807-2457bd4b5829",
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
              "uuid": "cc53f39c-639b-4db4-8943-54a466209710",
              "parent_uuid": "fb1a5e2d-5047-46f1-b807-2457bd4b5829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1135f0ff-b02a-402c-91ac-c0c9a9786f71",
                  "parent_uuid": "cc53f39c-639b-4db4-8943-54a466209710",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb6d20b5-eacc-40ec-85e3-8f1b3b157f84",
              "parent_uuid": "fb1a5e2d-5047-46f1-b807-2457bd4b5829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd501b69-9504-458d-9826-be39ca4ab453",
                  "parent_uuid": "eb6d20b5-eacc-40ec-85e3-8f1b3b157f84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bf0122a-7cf1-42c9-a700-e76ddfd305e9",
              "parent_uuid": "fb1a5e2d-5047-46f1-b807-2457bd4b5829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b187d65-bdf0-45d5-b059-8b7448368173",
                  "parent_uuid": "4bf0122a-7cf1-42c9-a700-e76ddfd305e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20ce0a6d-4b7e-44e0-90d7-6da87fc6f496",
              "parent_uuid": "fb1a5e2d-5047-46f1-b807-2457bd4b5829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d5c2865-3778-4bc3-807f-1e41fcc060b3",
                  "parent_uuid": "20ce0a6d-4b7e-44e0-90d7-6da87fc6f496",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fc006c88-2221-4df0-86ff-1b8f2a004bd6",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dcfc8c9e-7938-4618-9584-d8a5fd4e363a",
              "parent_uuid": "fc006c88-2221-4df0-86ff-1b8f2a004bd6",
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
              "uuid": "1367dfbf-a2c2-4c25-b864-151dd0029ca6",
              "parent_uuid": "fc006c88-2221-4df0-86ff-1b8f2a004bd6",
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
              "uuid": "d5641bd0-0ae1-4f68-bcf7-131ce18ebca4",
              "parent_uuid": "fc006c88-2221-4df0-86ff-1b8f2a004bd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ef97e1b-b48d-4a20-8d6e-63da7e23084c",
                  "parent_uuid": "d5641bd0-0ae1-4f68-bcf7-131ce18ebca4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b5c7018-2570-4737-85a3-c9373d9c7747",
              "parent_uuid": "fc006c88-2221-4df0-86ff-1b8f2a004bd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a95a4184-7854-46fd-aed1-6566b4b9e398",
                  "parent_uuid": "0b5c7018-2570-4737-85a3-c9373d9c7747",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "502d5369-c662-4395-96ed-48a95cf02315",
              "parent_uuid": "fc006c88-2221-4df0-86ff-1b8f2a004bd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3474d27-2978-4f81-922e-fdc0095f902d",
                  "parent_uuid": "502d5369-c662-4395-96ed-48a95cf02315",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "934ff1c1-adc4-4e88-96e4-bef142fd07c7",
              "parent_uuid": "fc006c88-2221-4df0-86ff-1b8f2a004bd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8831029-a478-4245-ac91-3a7d824e0a9d",
                  "parent_uuid": "934ff1c1-adc4-4e88-96e4-bef142fd07c7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73b843cb-30b0-44e4-acfb-e1b424b42129",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ce420d5-bd20-47f5-918b-1ee9d7200014",
              "parent_uuid": "73b843cb-30b0-44e4-acfb-e1b424b42129",
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
          "uuid": "d2cd7c80-e496-455f-a7bf-c2af50f38cbe",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86caa50e-b3fc-4346-8d29-6ab543b6895c",
              "parent_uuid": "d2cd7c80-e496-455f-a7bf-c2af50f38cbe",
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
          "uuid": "e07cd190-4eb6-4065-9a68-55e49072c5b2",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c1a15169-580f-4813-88ee-17105ae327ef",
              "parent_uuid": "e07cd190-4eb6-4065-9a68-55e49072c5b2",
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
                  "uuid": "f0b16989-f41a-4629-891d-a29dc32154b1",
                  "parent_uuid": "c1a15169-580f-4813-88ee-17105ae327ef",
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
          "uuid": "c3315130-5456-4b3b-8a99-1eee8775f7e4",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51508f60-78ec-43b2-911f-971c29aa6a10",
              "parent_uuid": "c3315130-5456-4b3b-8a99-1eee8775f7e4",
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
          "uuid": "e4fad568-5dd7-42d7-b212-f44c43d0bdac",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a58392ab-4747-40d1-93f5-1f6ed18a0450",
              "parent_uuid": "e4fad568-5dd7-42d7-b212-f44c43d0bdac",
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
          "uuid": "f344fe3b-0214-435e-b7a9-9697b949b66b",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c56454a-59a0-49d9-b9cb-108141e42ec2",
              "parent_uuid": "f344fe3b-0214-435e-b7a9-9697b949b66b",
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
              "uuid": "d86cdf36-9c35-428e-ac22-c9a66754207c",
              "parent_uuid": "f344fe3b-0214-435e-b7a9-9697b949b66b",
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
              "uuid": "4b5ce45c-0ce3-4c5b-80ed-bc9eee146a12",
              "parent_uuid": "f344fe3b-0214-435e-b7a9-9697b949b66b",
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
              "uuid": "1f5133e2-171f-46c8-838d-ad9f1d123343",
              "parent_uuid": "f344fe3b-0214-435e-b7a9-9697b949b66b",
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
              "uuid": "c68b6051-33da-42b3-b7a8-86e768fe9825",
              "parent_uuid": "f344fe3b-0214-435e-b7a9-9697b949b66b",
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
              "uuid": "bdf08fe9-acdd-44f1-aa6f-641a675bade4",
              "parent_uuid": "f344fe3b-0214-435e-b7a9-9697b949b66b",
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
          "uuid": "05ce1e5c-65d1-42d5-a5b5-d85da0312c6b",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "9bb48300-7416-4993-96e3-321e013350dc",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2fe72e5d-1c90-4706-a4f5-8ccc4bda1ba9",
              "parent_uuid": "9bb48300-7416-4993-96e3-321e013350dc",
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
              "uuid": "2a91f078-77b2-4da1-ba3c-495f7acdea2f",
              "parent_uuid": "9bb48300-7416-4993-96e3-321e013350dc",
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
              "uuid": "620359e3-2448-4455-9998-9fec051afd61",
              "parent_uuid": "9bb48300-7416-4993-96e3-321e013350dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f57cffa4-cefd-47c6-88e6-b2df12513a78",
                  "parent_uuid": "620359e3-2448-4455-9998-9fec051afd61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6408790-e4fa-4785-9d52-fa53ad011b98",
              "parent_uuid": "9bb48300-7416-4993-96e3-321e013350dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06d4b848-9a3b-4789-ac25-7952b80453e7",
                  "parent_uuid": "b6408790-e4fa-4785-9d52-fa53ad011b98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf871866-0805-493e-bbc5-7fced2c6b7a8",
              "parent_uuid": "9bb48300-7416-4993-96e3-321e013350dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4703f48c-4e68-4e52-88a5-e617a6c8f05a",
                  "parent_uuid": "bf871866-0805-493e-bbc5-7fced2c6b7a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b36ddd3b-9b30-4f1a-a995-892b956a9626",
              "parent_uuid": "9bb48300-7416-4993-96e3-321e013350dc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efbfe54b-7747-40d0-a80a-1a2e59dc6673",
                  "parent_uuid": "b36ddd3b-9b30-4f1a-a995-892b956a9626",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "802d002e-162a-4e6b-8bfd-8b56c63e2c00",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0a7f6425-853f-443a-90e9-4479631fdf6c",
              "parent_uuid": "802d002e-162a-4e6b-8bfd-8b56c63e2c00",
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
              "uuid": "eea391d9-44ac-4bca-9555-fa3c0d651863",
              "parent_uuid": "802d002e-162a-4e6b-8bfd-8b56c63e2c00",
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
              "uuid": "a1b44fa0-624f-477d-abb8-0801aeef33fd",
              "parent_uuid": "802d002e-162a-4e6b-8bfd-8b56c63e2c00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81c046d9-2175-4a97-a318-cabf9f7bb68f",
                  "parent_uuid": "a1b44fa0-624f-477d-abb8-0801aeef33fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b0ebda8-440e-4b16-beb2-cf08df7c311f",
              "parent_uuid": "802d002e-162a-4e6b-8bfd-8b56c63e2c00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebf4cf73-5463-4421-b251-ac817328b7e8",
                  "parent_uuid": "2b0ebda8-440e-4b16-beb2-cf08df7c311f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5591f1ae-99d8-4a43-9b18-89fbb4805af6",
              "parent_uuid": "802d002e-162a-4e6b-8bfd-8b56c63e2c00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2de18ad-d62e-4744-946d-b2e483934f40",
                  "parent_uuid": "5591f1ae-99d8-4a43-9b18-89fbb4805af6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab65842e-4d91-4e99-bd26-3e7aaba3d72f",
              "parent_uuid": "802d002e-162a-4e6b-8bfd-8b56c63e2c00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb27c6dc-2a0a-43e2-9d4b-852ce5019afd",
                  "parent_uuid": "ab65842e-4d91-4e99-bd26-3e7aaba3d72f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b56ae29e-4950-486e-b773-737894b0b958",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e9fdcc39-9aff-4b64-979b-2f3cba3d71b3",
              "parent_uuid": "b56ae29e-4950-486e-b773-737894b0b958",
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
              "uuid": "d8613249-0608-4958-b694-cb84b5c6a83a",
              "parent_uuid": "b56ae29e-4950-486e-b773-737894b0b958",
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
              "uuid": "5ed37ce4-48e0-43a2-9c7f-bde81e9db8f8",
              "parent_uuid": "b56ae29e-4950-486e-b773-737894b0b958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e5c70de-db9f-4b98-b2ea-10f87c58c46e",
                  "parent_uuid": "5ed37ce4-48e0-43a2-9c7f-bde81e9db8f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3492e6fd-868a-4484-9295-9d711916348c",
              "parent_uuid": "b56ae29e-4950-486e-b773-737894b0b958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbbb1ffd-2436-4720-af37-759e151dec6e",
                  "parent_uuid": "3492e6fd-868a-4484-9295-9d711916348c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd44723a-81a9-4a7c-9d37-423ee02f0781",
              "parent_uuid": "b56ae29e-4950-486e-b773-737894b0b958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97562f11-b1c0-422d-ac91-e7b6fbba99ca",
                  "parent_uuid": "dd44723a-81a9-4a7c-9d37-423ee02f0781",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd024053-75a4-488d-9b8e-6347b13ad131",
              "parent_uuid": "b56ae29e-4950-486e-b773-737894b0b958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b92a34d3-c628-4bc8-bbba-9dbd0cc97bfa",
                  "parent_uuid": "dd024053-75a4-488d-9b8e-6347b13ad131",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f823907-5a72-43c7-9674-a65853eff3c1",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b550b4f0-d867-45b0-8d3a-1b156c08296c",
              "parent_uuid": "0f823907-5a72-43c7-9674-a65853eff3c1",
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
              "uuid": "32237328-5669-447f-972a-b0ec90ab32ee",
              "parent_uuid": "0f823907-5a72-43c7-9674-a65853eff3c1",
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
              "uuid": "bcaf423a-8dbb-4ceb-953c-a6aef7d02855",
              "parent_uuid": "0f823907-5a72-43c7-9674-a65853eff3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d96dc8f-5fa6-4b64-be13-b5820c3255ed",
                  "parent_uuid": "bcaf423a-8dbb-4ceb-953c-a6aef7d02855",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a23509a6-31cd-49ba-8d99-3e0478fd8b14",
              "parent_uuid": "0f823907-5a72-43c7-9674-a65853eff3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d87660be-c1c3-4b0d-8536-82ebba81b03d",
                  "parent_uuid": "a23509a6-31cd-49ba-8d99-3e0478fd8b14",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "567cdab1-45f4-48aa-9a3a-a4f2d9f6997b",
              "parent_uuid": "0f823907-5a72-43c7-9674-a65853eff3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "237c1f83-3855-4721-ae4a-6ec95e06c406",
                  "parent_uuid": "567cdab1-45f4-48aa-9a3a-a4f2d9f6997b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "354e69b2-9a93-49fc-8a89-499fb47980fe",
              "parent_uuid": "0f823907-5a72-43c7-9674-a65853eff3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a0c3aaf-7824-408b-91dd-a87f9fc8d0e5",
                  "parent_uuid": "354e69b2-9a93-49fc-8a89-499fb47980fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "262728fa-92c4-444b-a7a9-74d0990332a6",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3178a1eb-44a6-41a5-85ff-2df10659c4f2",
              "parent_uuid": "262728fa-92c4-444b-a7a9-74d0990332a6",
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
          "uuid": "0821347a-8c82-495c-ad45-e27841337b33",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aff9fbb8-0100-4dc6-8edc-665d205d98d3",
              "parent_uuid": "0821347a-8c82-495c-ad45-e27841337b33",
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
          "uuid": "e1f3880f-e179-4889-b3b5-121832ab6cf3",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35e7294b-56e1-4f84-8f10-4db9b8229303",
              "parent_uuid": "e1f3880f-e179-4889-b3b5-121832ab6cf3",
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
                  "uuid": "cb96c276-09ad-4bca-ad37-143beaa4d76d",
                  "parent_uuid": "35e7294b-56e1-4f84-8f10-4db9b8229303",
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
          "uuid": "13ae7a66-e11f-4814-ae3d-871167158be4",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3243a49-7296-456f-a038-cc6fdac6ad87",
              "parent_uuid": "13ae7a66-e11f-4814-ae3d-871167158be4",
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
          "uuid": "fc14418c-a9fd-40af-83a8-186f50dd3708",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6c3adca7-1598-49a8-a475-49bed99ae0e1",
              "parent_uuid": "fc14418c-a9fd-40af-83a8-186f50dd3708",
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
          "uuid": "437d5722-032e-4629-ab5a-2a9fd537d2ee",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c3ec91d-5447-4736-9b64-5a9993310c4f",
              "parent_uuid": "437d5722-032e-4629-ab5a-2a9fd537d2ee",
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
              "uuid": "b7a4875c-3933-4e96-89f4-754837223661",
              "parent_uuid": "437d5722-032e-4629-ab5a-2a9fd537d2ee",
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
              "uuid": "749af1ef-e3e6-47d8-9058-a900769895d3",
              "parent_uuid": "437d5722-032e-4629-ab5a-2a9fd537d2ee",
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
              "uuid": "80ac6ccd-2560-49d4-921e-8e14842e8ef3",
              "parent_uuid": "437d5722-032e-4629-ab5a-2a9fd537d2ee",
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
              "uuid": "0f4d7872-e654-4787-a386-d7153e835fdc",
              "parent_uuid": "437d5722-032e-4629-ab5a-2a9fd537d2ee",
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
              "uuid": "0c5685f3-cb4c-4228-a5b9-7886001f8d99",
              "parent_uuid": "437d5722-032e-4629-ab5a-2a9fd537d2ee",
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
          "uuid": "f0bf0973-1e46-46ca-b705-9c45985c1e57",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff37600e-0bf2-4b13-82d2-473495fefe42",
              "parent_uuid": "f0bf0973-1e46-46ca-b705-9c45985c1e57",
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
              "uuid": "974fb4d3-8f03-4bc9-bd9e-9711c70a1a64",
              "parent_uuid": "f0bf0973-1e46-46ca-b705-9c45985c1e57",
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
              "uuid": "92701f16-41e4-496a-a0fa-49a0f4307549",
              "parent_uuid": "f0bf0973-1e46-46ca-b705-9c45985c1e57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40015461-3393-49ef-8790-244dc1a3d674",
                  "parent_uuid": "92701f16-41e4-496a-a0fa-49a0f4307549",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e852f6b-8abe-4c4c-9d43-b6094b440d66",
              "parent_uuid": "f0bf0973-1e46-46ca-b705-9c45985c1e57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9598d07-25ce-4f38-b1a1-29d909c97ee7",
                  "parent_uuid": "0e852f6b-8abe-4c4c-9d43-b6094b440d66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "854be8db-f067-4a9b-b431-66836a6682bc",
              "parent_uuid": "f0bf0973-1e46-46ca-b705-9c45985c1e57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "310d6087-8951-4011-9323-0996e08dfed9",
                  "parent_uuid": "854be8db-f067-4a9b-b431-66836a6682bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9eab6c1a-3a2f-479e-950b-4f43e5f0d94d",
              "parent_uuid": "f0bf0973-1e46-46ca-b705-9c45985c1e57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03f8ae1d-6c85-408a-b7f7-44c16eedcd98",
                  "parent_uuid": "9eab6c1a-3a2f-479e-950b-4f43e5f0d94d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0a989243-1573-41e7-9053-a886c06400de",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "657d64fe-8c5e-4ca2-a581-14c67e085564",
              "parent_uuid": "0a989243-1573-41e7-9053-a886c06400de",
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
              "uuid": "7b13c621-d431-43fa-808e-b2e3c537e8a9",
              "parent_uuid": "0a989243-1573-41e7-9053-a886c06400de",
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
              "uuid": "3467f708-d3b4-42d4-9d5a-6f1276f83fb1",
              "parent_uuid": "0a989243-1573-41e7-9053-a886c06400de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b15ef33f-f6d8-4958-8d01-ca46ca1e4771",
                  "parent_uuid": "3467f708-d3b4-42d4-9d5a-6f1276f83fb1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6c29468-68fb-47dc-bf7d-9b56a9a86f5d",
              "parent_uuid": "0a989243-1573-41e7-9053-a886c06400de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a3022a7-650b-4ab1-858b-399a236ac360",
                  "parent_uuid": "d6c29468-68fb-47dc-bf7d-9b56a9a86f5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa142677-c8c8-462c-bbd0-171a1e9c26f2",
              "parent_uuid": "0a989243-1573-41e7-9053-a886c06400de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8997c181-53c4-42ed-8b28-d332ef826220",
                  "parent_uuid": "fa142677-c8c8-462c-bbd0-171a1e9c26f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ef9fd2d-f9ff-48b4-918c-b710b1ff1e8c",
              "parent_uuid": "0a989243-1573-41e7-9053-a886c06400de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88cf96e8-84ae-4bed-8344-5905178d7e65",
                  "parent_uuid": "2ef9fd2d-f9ff-48b4-918c-b710b1ff1e8c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "93c597a8-aba5-48d2-afc6-11eb6c38a6a3",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b0a364d3-a50e-4b51-878c-4962254efe98",
              "parent_uuid": "93c597a8-aba5-48d2-afc6-11eb6c38a6a3",
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
              "uuid": "1baf55e2-e72d-4b3b-bbe0-9eb59167d428",
              "parent_uuid": "93c597a8-aba5-48d2-afc6-11eb6c38a6a3",
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
              "uuid": "ee806c2e-31a5-4745-986a-079b424dd9f4",
              "parent_uuid": "93c597a8-aba5-48d2-afc6-11eb6c38a6a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09bb4bf7-cba2-44d3-a4a3-12cd98816614",
                  "parent_uuid": "ee806c2e-31a5-4745-986a-079b424dd9f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90ad84af-ec1c-4c34-ac41-2369bfc67d47",
              "parent_uuid": "93c597a8-aba5-48d2-afc6-11eb6c38a6a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b94a7a09-58b3-4cbc-95b1-bdc10dddec7c",
                  "parent_uuid": "90ad84af-ec1c-4c34-ac41-2369bfc67d47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8e89e7f-ccb9-4002-95a8-9dd3f84147ba",
              "parent_uuid": "93c597a8-aba5-48d2-afc6-11eb6c38a6a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ed5c7a3-86b7-4d43-9431-00ec195bb44a",
                  "parent_uuid": "d8e89e7f-ccb9-4002-95a8-9dd3f84147ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6df0fbc9-06bf-4a22-9ced-28cabfe508d1",
              "parent_uuid": "93c597a8-aba5-48d2-afc6-11eb6c38a6a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8c942b7-e922-40b7-a610-5d385f0e285a",
                  "parent_uuid": "6df0fbc9-06bf-4a22-9ced-28cabfe508d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c3205c6c-2c6f-46c5-b9c6-3f66c5c92721",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f587a356-9676-4d83-9700-68f2c31c649d",
              "parent_uuid": "c3205c6c-2c6f-46c5-b9c6-3f66c5c92721",
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
              "uuid": "2f393bc2-acf3-4eeb-9d08-1899a33a3b73",
              "parent_uuid": "c3205c6c-2c6f-46c5-b9c6-3f66c5c92721",
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
              "uuid": "8a5fb2bd-4f8c-408f-8201-ca68569a9727",
              "parent_uuid": "c3205c6c-2c6f-46c5-b9c6-3f66c5c92721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "034a1628-bc90-4d31-8122-226dbeed7f18",
                  "parent_uuid": "8a5fb2bd-4f8c-408f-8201-ca68569a9727",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edcbb9da-fab3-489a-932d-d29c7fa435a9",
              "parent_uuid": "c3205c6c-2c6f-46c5-b9c6-3f66c5c92721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "484b84cc-73af-4541-9644-c4d90a1024e6",
                  "parent_uuid": "edcbb9da-fab3-489a-932d-d29c7fa435a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ef2abb4-b210-48d6-9d51-cb6f1e054f74",
              "parent_uuid": "c3205c6c-2c6f-46c5-b9c6-3f66c5c92721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88dcc8a5-e744-45cd-9bae-5f95b21e2b88",
                  "parent_uuid": "0ef2abb4-b210-48d6-9d51-cb6f1e054f74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "919490f3-ddf1-4e90-b407-8eafa3aeef88",
              "parent_uuid": "c3205c6c-2c6f-46c5-b9c6-3f66c5c92721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e17c95d-3908-48a1-8740-ae15a170d176",
                  "parent_uuid": "919490f3-ddf1-4e90-b407-8eafa3aeef88",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "948624e3-06e3-438e-8921-4a3da7741992",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9088510f-33b2-4382-96ef-2a42b7e2e172",
              "parent_uuid": "948624e3-06e3-438e-8921-4a3da7741992",
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
              "uuid": "1aa28e56-53e1-4fa6-97dd-5dd1b1037ff4",
              "parent_uuid": "948624e3-06e3-438e-8921-4a3da7741992",
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
              "uuid": "63657d67-2c81-42df-8e0e-4329a6a7d0fc",
              "parent_uuid": "948624e3-06e3-438e-8921-4a3da7741992",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "207dbc62-b4d9-413c-a70a-9e00ce63848b",
                  "parent_uuid": "63657d67-2c81-42df-8e0e-4329a6a7d0fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "942c0b36-2c6e-43a1-b2de-c5c6d2b1f6c5",
              "parent_uuid": "948624e3-06e3-438e-8921-4a3da7741992",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39ca42e9-21b6-4a3e-9f36-7df07f91aa04",
                  "parent_uuid": "942c0b36-2c6e-43a1-b2de-c5c6d2b1f6c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db601122-c740-4ad2-b197-93a168ea7349",
              "parent_uuid": "948624e3-06e3-438e-8921-4a3da7741992",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69e89d8d-9e13-44e8-82a5-a2c05c17c32e",
                  "parent_uuid": "db601122-c740-4ad2-b197-93a168ea7349",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55b16576-b84a-42b1-9025-f49892f55f45",
              "parent_uuid": "948624e3-06e3-438e-8921-4a3da7741992",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ef3c886-49b4-483b-aa0b-5d65ebc1f14c",
                  "parent_uuid": "55b16576-b84a-42b1-9025-f49892f55f45",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7f951298-f804-4570-ad08-299a404ed947",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aaa68015-f446-453c-9f8a-d44ceb4b91ec",
              "parent_uuid": "7f951298-f804-4570-ad08-299a404ed947",
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
              "uuid": "32fed9c0-ea32-49e9-92ee-ad584cfd6587",
              "parent_uuid": "7f951298-f804-4570-ad08-299a404ed947",
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
              "uuid": "16cb2882-43ac-497b-affb-97e797f3addd",
              "parent_uuid": "7f951298-f804-4570-ad08-299a404ed947",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2ecb067-03a4-4805-8ce3-1c800c74c9d7",
                  "parent_uuid": "16cb2882-43ac-497b-affb-97e797f3addd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1811d079-7052-4dd1-a6fc-a2e8a13b7362",
              "parent_uuid": "7f951298-f804-4570-ad08-299a404ed947",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d2d7542-6a80-4dec-8ef1-eb5b0959aa3d",
                  "parent_uuid": "1811d079-7052-4dd1-a6fc-a2e8a13b7362",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0de0fca-86fa-41d2-95cf-dcb573abf0a6",
              "parent_uuid": "7f951298-f804-4570-ad08-299a404ed947",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0ca0fa3-0657-4a48-8c11-5d80b2708990",
                  "parent_uuid": "f0de0fca-86fa-41d2-95cf-dcb573abf0a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3f2e57d-1105-4ffc-aec0-32923701917c",
              "parent_uuid": "7f951298-f804-4570-ad08-299a404ed947",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6075575a-5d25-448f-95b0-e815c59fbf3b",
                  "parent_uuid": "d3f2e57d-1105-4ffc-aec0-32923701917c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6e34a00-bdec-4d94-98c8-36f7894cfdff",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e460667f-f677-4a06-8127-b205f98d6bf5",
              "parent_uuid": "e6e34a00-bdec-4d94-98c8-36f7894cfdff",
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
          "uuid": "cd26a879-6089-4207-b041-6e999eb6b3cd",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09ce8b02-4092-4434-a574-60aa502ef406",
              "parent_uuid": "cd26a879-6089-4207-b041-6e999eb6b3cd",
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
          "uuid": "4f881f33-f51f-4563-b3fc-ad6574fe4996",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90e23ae9-eebb-4e64-a228-24b86de6d3ab",
              "parent_uuid": "4f881f33-f51f-4563-b3fc-ad6574fe4996",
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
                  "uuid": "ef6b125d-0c20-4a45-965f-e5cb1bfcc93b",
                  "parent_uuid": "90e23ae9-eebb-4e64-a228-24b86de6d3ab",
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
          "uuid": "1772349b-b96d-422d-ac33-acca45bf9873",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7cac2143-6ed2-4d52-8d41-29b95be1fb8a",
              "parent_uuid": "1772349b-b96d-422d-ac33-acca45bf9873",
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
          "uuid": "489b952b-deb0-4645-a78c-58165a5c3a34",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d6c30a52-9eac-47d4-92dd-6a938013a919",
              "parent_uuid": "489b952b-deb0-4645-a78c-58165a5c3a34",
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
          "uuid": "d7053644-d0eb-4dac-b46a-3fff161ddedd",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "067cc240-fa72-490c-950b-ed0877bf747a",
              "parent_uuid": "d7053644-d0eb-4dac-b46a-3fff161ddedd",
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
              "uuid": "6aa16313-30e1-409c-a581-1564a6b122f8",
              "parent_uuid": "d7053644-d0eb-4dac-b46a-3fff161ddedd",
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
              "uuid": "67bcb6cf-7c9f-465c-8bd1-d561d5cb00e9",
              "parent_uuid": "d7053644-d0eb-4dac-b46a-3fff161ddedd",
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
              "uuid": "f4f9f61c-f091-406c-b8c6-b433ec859b70",
              "parent_uuid": "d7053644-d0eb-4dac-b46a-3fff161ddedd",
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
              "uuid": "a82e0bb9-21c0-44bf-a0cc-9b99949bf5f2",
              "parent_uuid": "d7053644-d0eb-4dac-b46a-3fff161ddedd",
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
          "uuid": "7c32a465-af84-4627-a941-bc1f3a69021e",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a2beb45-1619-42b7-a629-67056449eb46",
              "parent_uuid": "7c32a465-af84-4627-a941-bc1f3a69021e",
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
              "uuid": "aae476ed-6650-41a6-a76e-884a42f89892",
              "parent_uuid": "7c32a465-af84-4627-a941-bc1f3a69021e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6416e99c-170b-4b6f-ab38-53dfd1c8f71f",
              "parent_uuid": "7c32a465-af84-4627-a941-bc1f3a69021e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d68f84e8-f21d-45a4-827e-12559619f939",
              "parent_uuid": "7c32a465-af84-4627-a941-bc1f3a69021e",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b036fc74-7948-4b05-bfc0-cd887bafb76e",
              "parent_uuid": "7c32a465-af84-4627-a941-bc1f3a69021e",
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
          "uuid": "19446f52-7efb-4b94-8602-1f129a20f1ca",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e1c47a0-e9cf-419e-891e-ceb3b0ddf9be",
              "parent_uuid": "19446f52-7efb-4b94-8602-1f129a20f1ca",
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
              "uuid": "ef1e6b58-555f-4323-9a83-fe7d09cbec73",
              "parent_uuid": "19446f52-7efb-4b94-8602-1f129a20f1ca",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e50e49be-3b86-4d53-bcd2-9e48eb3a855d",
              "parent_uuid": "19446f52-7efb-4b94-8602-1f129a20f1ca",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f4349e24-5c81-4c9c-90d9-290219861c75",
              "parent_uuid": "19446f52-7efb-4b94-8602-1f129a20f1ca",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0dc2c701-a176-4222-a70b-cae3dab2c76d",
              "parent_uuid": "19446f52-7efb-4b94-8602-1f129a20f1ca",
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
          "uuid": "ba36ae2a-9138-414e-b19d-d7b2c2d3d101",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab138721-d421-4bad-b040-0df0a70a36bc",
              "parent_uuid": "ba36ae2a-9138-414e-b19d-d7b2c2d3d101",
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
              "uuid": "9143a1e5-33ca-47fe-a2f3-eb6daa0f7c78",
              "parent_uuid": "ba36ae2a-9138-414e-b19d-d7b2c2d3d101",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1a531eb7-d58a-4ac8-838c-86e1e73934bf",
              "parent_uuid": "ba36ae2a-9138-414e-b19d-d7b2c2d3d101",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "94ff966e-efac-466e-bd2a-120b2d1376f9",
              "parent_uuid": "ba36ae2a-9138-414e-b19d-d7b2c2d3d101",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a235cd71-01de-4bac-9505-9f3d7bfbe017",
              "parent_uuid": "ba36ae2a-9138-414e-b19d-d7b2c2d3d101",
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
          "uuid": "623e1f5b-f694-4a3e-a69a-b6b3ca656814",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5af1e44b-9feb-4a56-9e98-e8b35679b776",
              "parent_uuid": "623e1f5b-f694-4a3e-a69a-b6b3ca656814",
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
              "uuid": "e0978bdf-d5c5-44d0-a807-40a0f45508f2",
              "parent_uuid": "623e1f5b-f694-4a3e-a69a-b6b3ca656814",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3990483d-5acb-4092-bbb1-e5ad1e93a55a",
              "parent_uuid": "623e1f5b-f694-4a3e-a69a-b6b3ca656814",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fd3df0a9-47f8-475c-af5c-6b1020a1935f",
              "parent_uuid": "623e1f5b-f694-4a3e-a69a-b6b3ca656814",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7ba4519f-c56b-4c76-abf9-a71da24d519b",
              "parent_uuid": "623e1f5b-f694-4a3e-a69a-b6b3ca656814",
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
          "uuid": "732df2af-3506-416c-961c-15f1cdc57294",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f79f7e8-294c-421b-9d18-e2c5397fca0a",
              "parent_uuid": "732df2af-3506-416c-961c-15f1cdc57294",
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
              "uuid": "664c326f-c7b5-410c-83ff-b7686eaa8ae0",
              "parent_uuid": "732df2af-3506-416c-961c-15f1cdc57294",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "22e7a012-4f79-4194-9ac2-53ab9668b9a5",
              "parent_uuid": "732df2af-3506-416c-961c-15f1cdc57294",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1b4fe83a-670f-41dd-a760-a4993bdb4712",
              "parent_uuid": "732df2af-3506-416c-961c-15f1cdc57294",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a4d8329f-8ab1-4c65-84da-86524946c94c",
              "parent_uuid": "732df2af-3506-416c-961c-15f1cdc57294",
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
          "uuid": "914ea26e-2a24-4530-8696-bbd9d81b9e70",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f16fc51-984f-44e0-b8c5-d4d549e9bb6c",
              "parent_uuid": "914ea26e-2a24-4530-8696-bbd9d81b9e70",
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
              "uuid": "8a338138-7b1f-4bc7-b35d-fa6f97b8bfd5",
              "parent_uuid": "914ea26e-2a24-4530-8696-bbd9d81b9e70",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4eb230db-da6f-4d81-b95f-ece4dc8b020e",
              "parent_uuid": "914ea26e-2a24-4530-8696-bbd9d81b9e70",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "912d9b03-4707-49b5-9370-d3c03f4694e1",
              "parent_uuid": "914ea26e-2a24-4530-8696-bbd9d81b9e70",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c74854e6-9ddf-42c8-9cd4-110867a7b71f",
              "parent_uuid": "914ea26e-2a24-4530-8696-bbd9d81b9e70",
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
          "uuid": "f1c98079-9690-4719-905f-8508896a2058",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ebca79a-5109-4373-b0ab-7714ad95bccb",
              "parent_uuid": "f1c98079-9690-4719-905f-8508896a2058",
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
              "uuid": "55e07e95-6c9b-4973-8626-12b137ed0108",
              "parent_uuid": "f1c98079-9690-4719-905f-8508896a2058",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bee97e73-dbca-4c2c-94e7-6fc0d40a5b65",
              "parent_uuid": "f1c98079-9690-4719-905f-8508896a2058",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "206f9d00-9869-4ae4-90c5-419dffb71dad",
              "parent_uuid": "f1c98079-9690-4719-905f-8508896a2058",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fe3a575d-81cb-46a5-984e-28986655bf49",
              "parent_uuid": "f1c98079-9690-4719-905f-8508896a2058",
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
          "uuid": "3d88f25b-016b-45c5-bb6b-fef49993a579",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97226996-3537-40f7-960f-c409191f10c8",
              "parent_uuid": "3d88f25b-016b-45c5-bb6b-fef49993a579",
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
              "uuid": "49d4bebf-4a58-49f7-aef7-48a5c6e5ad62",
              "parent_uuid": "3d88f25b-016b-45c5-bb6b-fef49993a579",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7c68c23b-b58a-44b2-8b2f-655fd2343493",
              "parent_uuid": "3d88f25b-016b-45c5-bb6b-fef49993a579",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7e1dd6b0-764f-483c-8b0d-ac00ee566195",
              "parent_uuid": "3d88f25b-016b-45c5-bb6b-fef49993a579",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9dd95f46-1e3a-4a12-9a43-e9132af87961",
              "parent_uuid": "3d88f25b-016b-45c5-bb6b-fef49993a579",
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
          "uuid": "dee182b4-fca8-4402-a4de-dcc8e0528b5b",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9805057f-fb4a-4112-8658-23d79de5e125",
              "parent_uuid": "dee182b4-fca8-4402-a4de-dcc8e0528b5b",
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
              "uuid": "69a3fb3b-0146-40c9-b426-9ca246fa755d",
              "parent_uuid": "dee182b4-fca8-4402-a4de-dcc8e0528b5b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ec472e99-37c9-4e79-8548-50790eab824f",
              "parent_uuid": "dee182b4-fca8-4402-a4de-dcc8e0528b5b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bbe9da1d-958d-4090-9b43-3073fc6fbeb7",
              "parent_uuid": "dee182b4-fca8-4402-a4de-dcc8e0528b5b",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dae9367f-cecc-4d16-9f7a-9ae0e2efbe5e",
              "parent_uuid": "dee182b4-fca8-4402-a4de-dcc8e0528b5b",
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
          "uuid": "ab3883cf-4c69-4346-9a06-a0d2a73787dd",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6eab00b9-90f5-466e-b4c7-dce9f05627fe",
              "parent_uuid": "ab3883cf-4c69-4346-9a06-a0d2a73787dd",
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
              "uuid": "69545f4d-14ac-4bf2-90aa-f7d9b4915950",
              "parent_uuid": "ab3883cf-4c69-4346-9a06-a0d2a73787dd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c4953883-934e-4144-9e82-bfd89c337af5",
              "parent_uuid": "ab3883cf-4c69-4346-9a06-a0d2a73787dd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1de74082-ad9e-4c20-a158-64e9310a9da1",
              "parent_uuid": "ab3883cf-4c69-4346-9a06-a0d2a73787dd",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "25df0964-6fb8-4257-8d3c-200bedce419f",
              "parent_uuid": "ab3883cf-4c69-4346-9a06-a0d2a73787dd",
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
          "uuid": "63d94b34-4aec-4e12-b031-eb0832896e5a",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f480350-a168-4902-afb5-5b72a30c776d",
              "parent_uuid": "63d94b34-4aec-4e12-b031-eb0832896e5a",
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
              "uuid": "1ed1f88c-7c00-4f5e-a788-a8e45f2f1722",
              "parent_uuid": "63d94b34-4aec-4e12-b031-eb0832896e5a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "18fdb901-a689-4bc9-9262-8c0317c2bb4b",
              "parent_uuid": "63d94b34-4aec-4e12-b031-eb0832896e5a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "656a5df5-858c-4e01-b975-2408e8f04c39",
              "parent_uuid": "63d94b34-4aec-4e12-b031-eb0832896e5a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6dde873c-519a-4209-908a-811b6333e7c5",
              "parent_uuid": "63d94b34-4aec-4e12-b031-eb0832896e5a",
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
          "uuid": "dc565387-4302-4751-a180-bbf2c13d9b6f",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "655ed373-2718-4eec-a0e7-3bac0e6bc278",
              "parent_uuid": "dc565387-4302-4751-a180-bbf2c13d9b6f",
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
              "uuid": "f52a4dc6-a114-40ca-a06d-10aa01e08a1c",
              "parent_uuid": "dc565387-4302-4751-a180-bbf2c13d9b6f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "43cc14f7-e319-40b3-ac18-cbe7f2210b6a",
              "parent_uuid": "dc565387-4302-4751-a180-bbf2c13d9b6f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "5a952473-d676-4787-b6bc-b7a000cf9d72",
              "parent_uuid": "dc565387-4302-4751-a180-bbf2c13d9b6f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a9bf5e0b-8b48-45e5-b46c-78b7d695c0b1",
              "parent_uuid": "dc565387-4302-4751-a180-bbf2c13d9b6f",
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
          "uuid": "fa7cae1e-22c6-4214-a87f-edeffdec04f5",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c164ec5-1eae-41cd-a49e-f50655b31d4e",
              "parent_uuid": "fa7cae1e-22c6-4214-a87f-edeffdec04f5",
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
          "uuid": "0e2982bf-b78c-45a9-b10e-5ee94e4aca82",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "190b23e1-f1f2-4b1a-926d-37bf20bd2255",
              "parent_uuid": "0e2982bf-b78c-45a9-b10e-5ee94e4aca82",
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
          "uuid": "cc7fc74f-ad06-41f6-935e-c7aed86c85d3",
          "parent_uuid": "2986d934-05e6-4504-9b59-04410e4dd5df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1d4115b-0eec-49d8-be48-e856d2241db0",
              "parent_uuid": "cc7fc74f-ad06-41f6-935e-c7aed86c85d3",
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
                  "uuid": "69111c59-02b3-4add-8d1a-45f85348bf75",
                  "parent_uuid": "b1d4115b-0eec-49d8-be48-e856d2241db0",
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

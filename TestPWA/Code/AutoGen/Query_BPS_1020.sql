
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
  "uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "cd0baf6d-770a-4aae-bca2-5a2c7333f2db",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "bb40eed4-6816-453b-a6e4-77535394f33b",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "1dcf06d5-64ed-4902-9667-e8666c91539d",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "c7d0c1f4-902a-4901-9c8c-afae0d30d262",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "e5223de7-7d22-4d67-adf4-7415c31bbefc",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "a563f667-9779-4043-9ea3-105e2d96c18d",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "950139e4-2d8e-4006-b6e1-9afb60c4a5ef",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
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
      "uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
      "parent_uuid": "8ce2390c-0e5d-4d93-ba05-13e6994a7808",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "4ae73141-33b0-47dc-8b5a-81fb3ae51020",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "bce1025d-1b6d-44a6-a44f-b6783fa33531",
              "parent_uuid": "4ae73141-33b0-47dc-8b5a-81fb3ae51020",
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
              "uuid": "7efa1f26-ba23-4000-9ecd-9f12f7af350b",
              "parent_uuid": "4ae73141-33b0-47dc-8b5a-81fb3ae51020",
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
              "uuid": "0cc43fdf-f3b8-4016-9211-dfac8ae2606b",
              "parent_uuid": "4ae73141-33b0-47dc-8b5a-81fb3ae51020",
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
              "uuid": "0bb6e90a-5c1e-45e7-9539-e1dd4407850d",
              "parent_uuid": "4ae73141-33b0-47dc-8b5a-81fb3ae51020",
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
          "uuid": "a3e1ea3b-2c04-4518-911e-e2f639d1ad18",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "476507c9-96a3-458d-9506-7c898ae8585b",
              "parent_uuid": "a3e1ea3b-2c04-4518-911e-e2f639d1ad18",
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
              "uuid": "74c4cdc5-66a9-4738-b895-5e42108b607e",
              "parent_uuid": "a3e1ea3b-2c04-4518-911e-e2f639d1ad18",
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
              "uuid": "d73ede77-9162-43c3-99fb-fec1e7359200",
              "parent_uuid": "a3e1ea3b-2c04-4518-911e-e2f639d1ad18",
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
              "uuid": "e13ab05f-9682-47e6-9a1e-4f972aa3737d",
              "parent_uuid": "a3e1ea3b-2c04-4518-911e-e2f639d1ad18",
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
          "uuid": "0750ad80-c968-4ad1-9a99-52025b2c01f9",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "70af9619-3909-4b1b-993f-52eb89bbcf15",
              "parent_uuid": "0750ad80-c968-4ad1-9a99-52025b2c01f9",
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
              "uuid": "463169dc-ca70-4573-adba-c897f052bbf7",
              "parent_uuid": "0750ad80-c968-4ad1-9a99-52025b2c01f9",
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
              "uuid": "ac99f932-5776-4506-a15a-13af793f48b2",
              "parent_uuid": "0750ad80-c968-4ad1-9a99-52025b2c01f9",
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
              "uuid": "f2c909d6-4d26-41d8-b6f2-e62dcea73a99",
              "parent_uuid": "0750ad80-c968-4ad1-9a99-52025b2c01f9",
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
          "uuid": "8757043c-ef56-45d6-ae54-7233d34e1a7d",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8833bd4-350b-47ca-991b-b2da3a39701b",
              "parent_uuid": "8757043c-ef56-45d6-ae54-7233d34e1a7d",
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
              "uuid": "c47663f9-1b27-44c9-b081-5c0655f0fc08",
              "parent_uuid": "8757043c-ef56-45d6-ae54-7233d34e1a7d",
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
              "uuid": "7abe9732-aa30-4cb5-955b-42869fa136ee",
              "parent_uuid": "8757043c-ef56-45d6-ae54-7233d34e1a7d",
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
              "uuid": "42b0349d-e0e4-4596-96da-4ffed04736c9",
              "parent_uuid": "8757043c-ef56-45d6-ae54-7233d34e1a7d",
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
              "uuid": "af24182e-0f72-474c-9d85-e927c9e2c360",
              "parent_uuid": "8757043c-ef56-45d6-ae54-7233d34e1a7d",
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
              "uuid": "23f4036c-64ca-4499-8f48-4da6f17f94e0",
              "parent_uuid": "8757043c-ef56-45d6-ae54-7233d34e1a7d",
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
          "uuid": "14896d7d-f511-445b-aedd-d57650438705",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ff1326b1-ffed-48af-ad80-065b35a8aa2d",
              "parent_uuid": "14896d7d-f511-445b-aedd-d57650438705",
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
          "uuid": "b3cedf3b-3d00-4ac6-997c-05cdf945d9a9",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d191fd6-8c6b-4bfd-83d3-cc69fe20c94c",
              "parent_uuid": "b3cedf3b-3d00-4ac6-997c-05cdf945d9a9",
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
              "uuid": "729d15fa-a540-4a5c-ba67-92d86dacff43",
              "parent_uuid": "b3cedf3b-3d00-4ac6-997c-05cdf945d9a9",
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
              "uuid": "dacc3b9c-ef84-4111-b361-5c4199fee5ac",
              "parent_uuid": "b3cedf3b-3d00-4ac6-997c-05cdf945d9a9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e68991d3-6548-4c8a-8685-8312a08eaa2d",
                  "parent_uuid": "dacc3b9c-ef84-4111-b361-5c4199fee5ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2019087a-4afc-4259-adfa-5236ef0d89ec",
              "parent_uuid": "b3cedf3b-3d00-4ac6-997c-05cdf945d9a9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "46ba769c-9774-49df-ab15-256b6cfd9443",
                  "parent_uuid": "2019087a-4afc-4259-adfa-5236ef0d89ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9be1e3e6-93e4-4cab-af05-fe55f5bf4f00",
              "parent_uuid": "b3cedf3b-3d00-4ac6-997c-05cdf945d9a9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fdd85b42-02d2-4c86-becd-23c691423e34",
                  "parent_uuid": "9be1e3e6-93e4-4cab-af05-fe55f5bf4f00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6e95636-986c-4dd5-9ce5-cb6da2185f5a",
              "parent_uuid": "b3cedf3b-3d00-4ac6-997c-05cdf945d9a9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "864caabb-ae20-4f75-9a0b-becf9ba85155",
                  "parent_uuid": "f6e95636-986c-4dd5-9ce5-cb6da2185f5a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "64a690ad-d320-4ca7-b39c-f505fa57b712",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a450de59-ec88-4c50-8c7d-08abd1991deb",
              "parent_uuid": "64a690ad-d320-4ca7-b39c-f505fa57b712",
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
              "uuid": "7019767e-4edd-4d3f-84f9-9b6f5ad317ca",
              "parent_uuid": "64a690ad-d320-4ca7-b39c-f505fa57b712",
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
              "uuid": "f2fd2924-5415-451f-a605-d3b9054deaec",
              "parent_uuid": "64a690ad-d320-4ca7-b39c-f505fa57b712",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d93170e1-0d1a-4ff8-be69-ba308d75f49f",
                  "parent_uuid": "f2fd2924-5415-451f-a605-d3b9054deaec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78a336d0-a156-456c-b342-28e371f16c68",
              "parent_uuid": "64a690ad-d320-4ca7-b39c-f505fa57b712",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9e7fd500-c49c-4968-b9d2-00b1e5c9b2aa",
                  "parent_uuid": "78a336d0-a156-456c-b342-28e371f16c68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f5d1840-0c4d-4484-9732-f4a2244ae2d9",
              "parent_uuid": "64a690ad-d320-4ca7-b39c-f505fa57b712",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ffaa4c91-6d99-4eba-96a2-bc80aa816506",
                  "parent_uuid": "0f5d1840-0c4d-4484-9732-f4a2244ae2d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "deff5009-9e53-4361-9c4d-1c24efce3548",
              "parent_uuid": "64a690ad-d320-4ca7-b39c-f505fa57b712",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5bd602c6-3981-46f7-b2ed-554ea3e5e2d0",
                  "parent_uuid": "deff5009-9e53-4361-9c4d-1c24efce3548",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1c664d1e-3d0f-4fe0-b7ae-808211b3684d",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ae5b2f0-5331-4e5c-9123-ab6c3b2b7727",
              "parent_uuid": "1c664d1e-3d0f-4fe0-b7ae-808211b3684d",
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
              "uuid": "db6aa489-3c4d-46a5-8b64-c7cd5d8a309e",
              "parent_uuid": "1c664d1e-3d0f-4fe0-b7ae-808211b3684d",
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
              "uuid": "3d4b06f9-4dbb-4ff3-87f9-878f23be0d40",
              "parent_uuid": "1c664d1e-3d0f-4fe0-b7ae-808211b3684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d00bd1c5-c912-41b9-b5a0-599b8478e324",
                  "parent_uuid": "3d4b06f9-4dbb-4ff3-87f9-878f23be0d40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60817d03-daec-4a17-9f0b-9bbb02c23936",
              "parent_uuid": "1c664d1e-3d0f-4fe0-b7ae-808211b3684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d78d7d87-d6a7-4e16-a209-2290c40f9141",
                  "parent_uuid": "60817d03-daec-4a17-9f0b-9bbb02c23936",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbd1d206-505c-48e1-b4a0-e571fbc4906c",
              "parent_uuid": "1c664d1e-3d0f-4fe0-b7ae-808211b3684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2685b18-1465-4a4b-bb06-d8fc5c0c9683",
                  "parent_uuid": "fbd1d206-505c-48e1-b4a0-e571fbc4906c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0850753f-08fc-4420-8c42-11098e731db9",
              "parent_uuid": "1c664d1e-3d0f-4fe0-b7ae-808211b3684d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac91da38-4770-403f-8238-5bb625504da6",
                  "parent_uuid": "0850753f-08fc-4420-8c42-11098e731db9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "df23172b-3815-4d0e-bb4c-39dfd12f3310",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4124415-5615-47c9-9ec9-a732b4f2f75b",
              "parent_uuid": "df23172b-3815-4d0e-bb4c-39dfd12f3310",
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
              "uuid": "9fc6dbf9-636d-423e-b6db-67e739dfdc8b",
              "parent_uuid": "df23172b-3815-4d0e-bb4c-39dfd12f3310",
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
              "uuid": "ad87a1cb-3783-464a-8983-fc0403277d93",
              "parent_uuid": "df23172b-3815-4d0e-bb4c-39dfd12f3310",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53aaa6fe-22b4-46be-8b6d-4d6d3f9dd31a",
                  "parent_uuid": "ad87a1cb-3783-464a-8983-fc0403277d93",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e56e3519-f5fc-4677-a86f-6362024bea9a",
              "parent_uuid": "df23172b-3815-4d0e-bb4c-39dfd12f3310",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4714668f-1b36-4c79-8105-5829f3bf237e",
                  "parent_uuid": "e56e3519-f5fc-4677-a86f-6362024bea9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d3367b3-1d58-4e6e-9d58-810e920b10f9",
              "parent_uuid": "df23172b-3815-4d0e-bb4c-39dfd12f3310",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d83d19de-bc68-47c5-a1bc-b0acbd06c92c",
                  "parent_uuid": "5d3367b3-1d58-4e6e-9d58-810e920b10f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed43959b-49f7-4e55-a3ee-aa147207feb3",
              "parent_uuid": "df23172b-3815-4d0e-bb4c-39dfd12f3310",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5985688-af15-4b96-a235-2e1884307e6a",
                  "parent_uuid": "ed43959b-49f7-4e55-a3ee-aa147207feb3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "56e9178d-86ba-42e3-b320-1bd891be5991",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40c13270-35e1-4c62-ae17-1d51e0d6ab7e",
              "parent_uuid": "56e9178d-86ba-42e3-b320-1bd891be5991",
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
              "uuid": "5c73e384-a73a-4081-8683-4062e8859af1",
              "parent_uuid": "56e9178d-86ba-42e3-b320-1bd891be5991",
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
              "uuid": "d4bf9b1c-9109-4389-9d9c-38471729a2aa",
              "parent_uuid": "56e9178d-86ba-42e3-b320-1bd891be5991",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09f308f4-61dd-477a-8346-2e28df3b1c5d",
                  "parent_uuid": "d4bf9b1c-9109-4389-9d9c-38471729a2aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2cc045e-0e2f-4c63-9a50-93b4c8e5e2e7",
              "parent_uuid": "56e9178d-86ba-42e3-b320-1bd891be5991",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72b959c9-2d0f-445c-a7a2-9d67610bf1ec",
                  "parent_uuid": "d2cc045e-0e2f-4c63-9a50-93b4c8e5e2e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4fa4c7f6-2a70-424a-b4f7-262193b7b88c",
              "parent_uuid": "56e9178d-86ba-42e3-b320-1bd891be5991",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "369cc3db-4100-456f-b3bc-69843a85104e",
                  "parent_uuid": "4fa4c7f6-2a70-424a-b4f7-262193b7b88c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2142056-b0cb-415d-86cc-60333344f2a1",
              "parent_uuid": "56e9178d-86ba-42e3-b320-1bd891be5991",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1efcc054-2110-4fc6-a2ff-ac02afde5cf1",
                  "parent_uuid": "b2142056-b0cb-415d-86cc-60333344f2a1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b66b52c3-4521-4b4b-b381-4200582b5bcf",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "963e7d01-8a6b-4a47-b188-60ea2ab784e5",
              "parent_uuid": "b66b52c3-4521-4b4b-b381-4200582b5bcf",
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
              "uuid": "cd43f661-9e01-4cdc-99ca-97434e5adbd7",
              "parent_uuid": "b66b52c3-4521-4b4b-b381-4200582b5bcf",
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
              "uuid": "acf93409-0606-4a6e-a3fc-74ee2c3f0089",
              "parent_uuid": "b66b52c3-4521-4b4b-b381-4200582b5bcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7c4476e-1255-491c-a8a2-88e41db3e5c5",
                  "parent_uuid": "acf93409-0606-4a6e-a3fc-74ee2c3f0089",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be43050a-f74e-46ec-8fe7-d7a307d4565d",
              "parent_uuid": "b66b52c3-4521-4b4b-b381-4200582b5bcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d633d4e-482e-4169-b4b4-463a283b1d10",
                  "parent_uuid": "be43050a-f74e-46ec-8fe7-d7a307d4565d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34862b14-7e5a-41b3-9c07-3cfc83bd5be4",
              "parent_uuid": "b66b52c3-4521-4b4b-b381-4200582b5bcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d4a9984-0062-4dd1-bd77-58e5f224d7b7",
                  "parent_uuid": "34862b14-7e5a-41b3-9c07-3cfc83bd5be4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7a0f211-0565-4ea3-ad9a-4852147f0293",
              "parent_uuid": "b66b52c3-4521-4b4b-b381-4200582b5bcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52679c24-b7d4-4e50-b9f3-dbea41f47d20",
                  "parent_uuid": "d7a0f211-0565-4ea3-ad9a-4852147f0293",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "308cbbf0-dff2-43d3-8276-c462203652e7",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7cd36959-4ceb-4514-bf94-9123f0472e95",
              "parent_uuid": "308cbbf0-dff2-43d3-8276-c462203652e7",
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
              "uuid": "64204731-dd51-423b-9478-735d70c60817",
              "parent_uuid": "308cbbf0-dff2-43d3-8276-c462203652e7",
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
              "uuid": "be4d51be-08a1-4d5e-bca5-9a274518f284",
              "parent_uuid": "308cbbf0-dff2-43d3-8276-c462203652e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d49f26a-d8a9-4f6b-809a-95aa2651eb85",
                  "parent_uuid": "be4d51be-08a1-4d5e-bca5-9a274518f284",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a21c66e8-66aa-47d9-b359-74573d94fe3c",
              "parent_uuid": "308cbbf0-dff2-43d3-8276-c462203652e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d5e588b-3976-472d-b15a-a0a3a2e99b15",
                  "parent_uuid": "a21c66e8-66aa-47d9-b359-74573d94fe3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84e31cfb-9860-42a6-bf8e-227207efcd82",
              "parent_uuid": "308cbbf0-dff2-43d3-8276-c462203652e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b69856c2-a39a-4dda-83e9-531b4ebba8b0",
                  "parent_uuid": "84e31cfb-9860-42a6-bf8e-227207efcd82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3de82d2-7d12-43c4-8003-9710b41f5688",
              "parent_uuid": "308cbbf0-dff2-43d3-8276-c462203652e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7feb5ae4-d8d1-4529-8bf9-299c78085d1b",
                  "parent_uuid": "c3de82d2-7d12-43c4-8003-9710b41f5688",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0d91420b-ca1c-443b-91c6-cc3f490423ea",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fa27c08-82c3-4c65-bd8a-b8574fca41f2",
              "parent_uuid": "0d91420b-ca1c-443b-91c6-cc3f490423ea",
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
              "uuid": "2a5b27f7-322e-4736-bf00-fa4fdd0fb1ed",
              "parent_uuid": "0d91420b-ca1c-443b-91c6-cc3f490423ea",
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
              "uuid": "cf29eb05-384c-4624-b72d-d9084dbda708",
              "parent_uuid": "0d91420b-ca1c-443b-91c6-cc3f490423ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bca9e7b3-409d-4f1b-99b6-a8ee544621ed",
                  "parent_uuid": "cf29eb05-384c-4624-b72d-d9084dbda708",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbce61eb-baf5-4061-aec6-adbc2c585733",
              "parent_uuid": "0d91420b-ca1c-443b-91c6-cc3f490423ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce208b31-d097-4adf-b948-fc6897e4cc45",
                  "parent_uuid": "bbce61eb-baf5-4061-aec6-adbc2c585733",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ace4f657-078f-47c4-9b64-10c57d74ee0f",
              "parent_uuid": "0d91420b-ca1c-443b-91c6-cc3f490423ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4f579bc-c754-445e-96ad-67ef309d1f82",
                  "parent_uuid": "ace4f657-078f-47c4-9b64-10c57d74ee0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63f4705d-9fa9-4147-84c8-0111b00127d0",
              "parent_uuid": "0d91420b-ca1c-443b-91c6-cc3f490423ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d82e7620-1bae-4c7e-b4db-88813adb13d6",
                  "parent_uuid": "63f4705d-9fa9-4147-84c8-0111b00127d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7cabd446-ad5c-4499-bb1a-f9c8eea72685",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3885091f-7be0-41ba-93e2-037783ad7603",
              "parent_uuid": "7cabd446-ad5c-4499-bb1a-f9c8eea72685",
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
              "uuid": "36e73668-c0f1-47b7-9f35-97978fd9d27c",
              "parent_uuid": "7cabd446-ad5c-4499-bb1a-f9c8eea72685",
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
              "uuid": "4052286d-5821-4a98-801f-cbcc36e4899c",
              "parent_uuid": "7cabd446-ad5c-4499-bb1a-f9c8eea72685",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83c82b26-1dc3-4fb4-9672-279a732d3627",
                  "parent_uuid": "4052286d-5821-4a98-801f-cbcc36e4899c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f60c666-a25c-44fa-968e-01852c144963",
              "parent_uuid": "7cabd446-ad5c-4499-bb1a-f9c8eea72685",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fec6eee-8928-4f0a-868d-7c7007c8f35f",
                  "parent_uuid": "6f60c666-a25c-44fa-968e-01852c144963",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9403288-2404-4e43-bc64-f691c6012f52",
              "parent_uuid": "7cabd446-ad5c-4499-bb1a-f9c8eea72685",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acf6b1c1-1472-4712-8689-71b332764421",
                  "parent_uuid": "b9403288-2404-4e43-bc64-f691c6012f52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "587031e8-c439-4461-9784-c080961b423c",
              "parent_uuid": "7cabd446-ad5c-4499-bb1a-f9c8eea72685",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66f5617a-258a-47e7-beae-41eb65fbbbf4",
                  "parent_uuid": "587031e8-c439-4461-9784-c080961b423c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "06fa57fb-1fb5-4af2-a3b8-9710df666e43",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4dd9e4c-958b-43f9-a9e2-c9cb95f5e7cf",
              "parent_uuid": "06fa57fb-1fb5-4af2-a3b8-9710df666e43",
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
              "uuid": "3dbc9968-a6a1-4071-9c79-2e5c5d61e688",
              "parent_uuid": "06fa57fb-1fb5-4af2-a3b8-9710df666e43",
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
              "uuid": "0ce8e952-ceb5-4c2a-817c-075fbbcfe701",
              "parent_uuid": "06fa57fb-1fb5-4af2-a3b8-9710df666e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91afab0a-9b17-4ea6-b89e-c8e3a2522375",
                  "parent_uuid": "0ce8e952-ceb5-4c2a-817c-075fbbcfe701",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a835d6b-219d-432d-9035-10c1cb206415",
              "parent_uuid": "06fa57fb-1fb5-4af2-a3b8-9710df666e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1aa78b7a-182c-4283-be2c-26cc225ea76b",
                  "parent_uuid": "1a835d6b-219d-432d-9035-10c1cb206415",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d648791-948b-43d6-88d0-736c6e858f69",
              "parent_uuid": "06fa57fb-1fb5-4af2-a3b8-9710df666e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea16a828-0417-4d65-bcf6-f1a4a1fe7960",
                  "parent_uuid": "8d648791-948b-43d6-88d0-736c6e858f69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70b04e1b-a56f-47ff-b178-204354b44226",
              "parent_uuid": "06fa57fb-1fb5-4af2-a3b8-9710df666e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de9d6234-093e-4ead-8295-031d7601a4a3",
                  "parent_uuid": "70b04e1b-a56f-47ff-b178-204354b44226",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a317a591-8ed3-4c76-afa0-7861fcf98afb",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df26462a-9ac2-47cd-9d59-621b36f1795a",
              "parent_uuid": "a317a591-8ed3-4c76-afa0-7861fcf98afb",
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
              "uuid": "e3befc95-1466-4389-984e-68c81468bc2f",
              "parent_uuid": "a317a591-8ed3-4c76-afa0-7861fcf98afb",
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
              "uuid": "e41502b8-f5db-4fc8-b66a-8a66e8fd871b",
              "parent_uuid": "a317a591-8ed3-4c76-afa0-7861fcf98afb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc97393b-563b-4fc4-96ff-39b152de1d78",
                  "parent_uuid": "e41502b8-f5db-4fc8-b66a-8a66e8fd871b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12dcb570-c3cf-4739-b2e3-53aa9a53c432",
              "parent_uuid": "a317a591-8ed3-4c76-afa0-7861fcf98afb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e75807b-5d62-473b-880d-f7680c18281b",
                  "parent_uuid": "12dcb570-c3cf-4739-b2e3-53aa9a53c432",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ba2c994-57b7-44f5-ab98-27e35874732b",
              "parent_uuid": "a317a591-8ed3-4c76-afa0-7861fcf98afb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01461d3d-f6b0-412f-9787-e92db81b0d60",
                  "parent_uuid": "7ba2c994-57b7-44f5-ab98-27e35874732b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "587eecec-53c4-4e04-b425-0c2a9790f3e2",
              "parent_uuid": "a317a591-8ed3-4c76-afa0-7861fcf98afb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2712ecd6-22c4-4d38-b3b7-ffc138fa5000",
                  "parent_uuid": "587eecec-53c4-4e04-b425-0c2a9790f3e2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7f076a85-a682-42a5-b5b4-f711804a822f",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f50f7fcc-2955-48bf-a069-9e06765b191d",
              "parent_uuid": "7f076a85-a682-42a5-b5b4-f711804a822f",
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
              "uuid": "af2a4ef7-1a6f-44c8-8d17-30070f16293f",
              "parent_uuid": "7f076a85-a682-42a5-b5b4-f711804a822f",
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
              "uuid": "71d8a75f-2601-4775-956c-cca63ce1e447",
              "parent_uuid": "7f076a85-a682-42a5-b5b4-f711804a822f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99e130fa-a8fd-456f-bf58-c58f22a1d278",
                  "parent_uuid": "71d8a75f-2601-4775-956c-cca63ce1e447",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69d68eb8-1182-490a-95d6-f062fe5b654d",
              "parent_uuid": "7f076a85-a682-42a5-b5b4-f711804a822f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23002618-58b3-4e77-a28c-98cdfad3a3b3",
                  "parent_uuid": "69d68eb8-1182-490a-95d6-f062fe5b654d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a76c3fd-8949-4836-8979-05a2075784c4",
              "parent_uuid": "7f076a85-a682-42a5-b5b4-f711804a822f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c744e1c5-6ab1-4512-98d5-4925c8a07fa0",
                  "parent_uuid": "4a76c3fd-8949-4836-8979-05a2075784c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "200b5c32-6dec-4062-8886-cef151686a51",
              "parent_uuid": "7f076a85-a682-42a5-b5b4-f711804a822f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ff5bddb-735e-4cae-a359-1970825cd896",
                  "parent_uuid": "200b5c32-6dec-4062-8886-cef151686a51",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a05a6e1a-b8b7-4727-aaed-2dde64f7c694",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db191bf4-0c15-474d-a45c-d40ca58f77ec",
              "parent_uuid": "a05a6e1a-b8b7-4727-aaed-2dde64f7c694",
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
          "uuid": "1ef2924a-d12a-40ba-a896-df90cc173ca2",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d4e00dd-19ca-4724-9bbe-148cc7253de8",
              "parent_uuid": "1ef2924a-d12a-40ba-a896-df90cc173ca2",
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
          "uuid": "def10edc-8c92-4a74-abdc-7f1cbcea3820",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de9c22da-ece4-455f-8964-a9383f84993b",
              "parent_uuid": "def10edc-8c92-4a74-abdc-7f1cbcea3820",
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
                  "uuid": "f68c14db-dd81-4ddc-8c70-e8703a570edd",
                  "parent_uuid": "de9c22da-ece4-455f-8964-a9383f84993b",
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
          "uuid": "52199814-9d29-46ee-b433-bd3faf6b8713",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c046e72-d271-4e3e-8440-34e1dbe89e73",
              "parent_uuid": "52199814-9d29-46ee-b433-bd3faf6b8713",
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
          "uuid": "5b0be86d-6042-4f73-87ba-d170be724675",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "3434f499-50e8-4623-b152-98e68cfca1f2",
              "parent_uuid": "5b0be86d-6042-4f73-87ba-d170be724675",
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
          "uuid": "d1e714b2-799d-4f60-a46d-0d37ea24a5cd",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84918219-7e53-4d56-b4e5-8b4b15d861ff",
              "parent_uuid": "d1e714b2-799d-4f60-a46d-0d37ea24a5cd",
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
              "uuid": "0bd2d128-ce98-47dc-8bb1-6861ab9f09f2",
              "parent_uuid": "d1e714b2-799d-4f60-a46d-0d37ea24a5cd",
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
              "uuid": "fded7ae7-5d65-450c-ae5e-98b6650fa5df",
              "parent_uuid": "d1e714b2-799d-4f60-a46d-0d37ea24a5cd",
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
              "uuid": "7073c137-fcbc-4305-af50-0c7b5bd7f1a1",
              "parent_uuid": "d1e714b2-799d-4f60-a46d-0d37ea24a5cd",
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
              "uuid": "1f9b8b05-6b43-4ec3-9297-74a36ab3808a",
              "parent_uuid": "d1e714b2-799d-4f60-a46d-0d37ea24a5cd",
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
              "uuid": "0ab1aa47-cb0c-4978-8256-e32ec8a24aa4",
              "parent_uuid": "d1e714b2-799d-4f60-a46d-0d37ea24a5cd",
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
          "uuid": "5df4b598-03ca-4a93-a2fd-36259394fd98",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7873fa62-dab8-416e-9df3-f39cba80a9c2",
              "parent_uuid": "5df4b598-03ca-4a93-a2fd-36259394fd98",
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
              "uuid": "3f94bc31-acf5-40d4-9773-7402b923e4d5",
              "parent_uuid": "5df4b598-03ca-4a93-a2fd-36259394fd98",
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
              "uuid": "48340198-f3e3-4368-ad8e-9cd67324be46",
              "parent_uuid": "5df4b598-03ca-4a93-a2fd-36259394fd98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c26c148c-49a1-4c9b-b3b7-c1c24ddc7598",
                  "parent_uuid": "48340198-f3e3-4368-ad8e-9cd67324be46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a382affb-c987-4ad4-8161-0f5dd729fb60",
              "parent_uuid": "5df4b598-03ca-4a93-a2fd-36259394fd98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9a90584-8fa9-43e7-8fdc-ae9a1ec8dbcd",
                  "parent_uuid": "a382affb-c987-4ad4-8161-0f5dd729fb60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32d7f839-7191-4d83-8da0-641d99469ea5",
              "parent_uuid": "5df4b598-03ca-4a93-a2fd-36259394fd98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ceafcf7-5c38-4b95-9c87-e5a8bdd4e124",
                  "parent_uuid": "32d7f839-7191-4d83-8da0-641d99469ea5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b4298dc-da29-47ba-b9f0-caecbd78b872",
              "parent_uuid": "5df4b598-03ca-4a93-a2fd-36259394fd98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c7cbb0e-7ff3-4ade-96b9-ccc4033ddc75",
                  "parent_uuid": "2b4298dc-da29-47ba-b9f0-caecbd78b872",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ffe8989b-4791-426b-a730-e1137b7ad4c7",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87ba8a2c-2de6-4dce-8033-1f31dc0e1c89",
              "parent_uuid": "ffe8989b-4791-426b-a730-e1137b7ad4c7",
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
              "uuid": "60702969-2f2d-4f3d-9436-7ce0ab534e05",
              "parent_uuid": "ffe8989b-4791-426b-a730-e1137b7ad4c7",
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
              "uuid": "c956b3f3-eb3f-461c-9712-e110776c494b",
              "parent_uuid": "ffe8989b-4791-426b-a730-e1137b7ad4c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24d04333-3b5b-4050-a2b6-8bb648deb42b",
                  "parent_uuid": "c956b3f3-eb3f-461c-9712-e110776c494b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08ffcace-c943-4cbc-98fd-156f770bb5c4",
              "parent_uuid": "ffe8989b-4791-426b-a730-e1137b7ad4c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9090fc0-d45f-497d-a4bc-622869741c1c",
                  "parent_uuid": "08ffcace-c943-4cbc-98fd-156f770bb5c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb148488-c681-416b-8bcd-29cdb478f161",
              "parent_uuid": "ffe8989b-4791-426b-a730-e1137b7ad4c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50985d2e-9fa0-4417-a1d0-e077617171cc",
                  "parent_uuid": "cb148488-c681-416b-8bcd-29cdb478f161",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d8fbb40-62ea-4ff2-9749-a75d3e6ef672",
              "parent_uuid": "ffe8989b-4791-426b-a730-e1137b7ad4c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7fdf230-5ef6-449d-8035-1cb5227d029c",
                  "parent_uuid": "7d8fbb40-62ea-4ff2-9749-a75d3e6ef672",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e17b6147-bd67-4ad0-8b60-4a4bbdbcc4db",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82b74d8f-cc0e-4cbc-893c-d03b2b5da68d",
              "parent_uuid": "e17b6147-bd67-4ad0-8b60-4a4bbdbcc4db",
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
              "uuid": "9b057fc1-6ab1-4295-92fd-59ee8eb5af5b",
              "parent_uuid": "e17b6147-bd67-4ad0-8b60-4a4bbdbcc4db",
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
              "uuid": "22a1a5a4-99df-459a-a49a-1fa81e7a0b40",
              "parent_uuid": "e17b6147-bd67-4ad0-8b60-4a4bbdbcc4db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fab25524-817f-4b95-96aa-2f2621720fb8",
                  "parent_uuid": "22a1a5a4-99df-459a-a49a-1fa81e7a0b40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6f849cf-e026-469a-ad3d-e59d414f24d1",
              "parent_uuid": "e17b6147-bd67-4ad0-8b60-4a4bbdbcc4db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0210fd02-9a7d-47c5-9342-097095dd0714",
                  "parent_uuid": "d6f849cf-e026-469a-ad3d-e59d414f24d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7d4dd23-c097-4f0a-bd92-b19a02df2d43",
              "parent_uuid": "e17b6147-bd67-4ad0-8b60-4a4bbdbcc4db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfb8fc1a-6694-4137-a78b-8adc8b36bdb1",
                  "parent_uuid": "b7d4dd23-c097-4f0a-bd92-b19a02df2d43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7019cf68-eb16-4679-adf1-00584a8423bc",
              "parent_uuid": "e17b6147-bd67-4ad0-8b60-4a4bbdbcc4db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb64eff4-effe-4bb2-9939-f24ba0a6c2dd",
                  "parent_uuid": "7019cf68-eb16-4679-adf1-00584a8423bc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9eb9ddab-39f5-4ecf-b099-f4c417f115b5",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f914bc4a-86f7-408c-b30f-97c2563601b1",
              "parent_uuid": "9eb9ddab-39f5-4ecf-b099-f4c417f115b5",
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
              "uuid": "97f2cfae-c10d-4f87-bfd8-19f2388fdda3",
              "parent_uuid": "9eb9ddab-39f5-4ecf-b099-f4c417f115b5",
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
              "uuid": "8352cf1f-cfc4-4609-816d-d0224823c44c",
              "parent_uuid": "9eb9ddab-39f5-4ecf-b099-f4c417f115b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5e15c3d-a09f-4ffd-95e1-48ce69fde83c",
                  "parent_uuid": "8352cf1f-cfc4-4609-816d-d0224823c44c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dd68e51-108d-4c15-82ce-fd7419722415",
              "parent_uuid": "9eb9ddab-39f5-4ecf-b099-f4c417f115b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72990075-5680-45b1-9b9f-104a5d431936",
                  "parent_uuid": "6dd68e51-108d-4c15-82ce-fd7419722415",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "896493c9-79ee-457b-a7f2-deb1a99440b6",
              "parent_uuid": "9eb9ddab-39f5-4ecf-b099-f4c417f115b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bdd64c2e-ea60-4042-b030-d569c7775cb5",
                  "parent_uuid": "896493c9-79ee-457b-a7f2-deb1a99440b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47b32d98-7087-4806-b2e5-2eebb25b15ea",
              "parent_uuid": "9eb9ddab-39f5-4ecf-b099-f4c417f115b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62b3abc6-4a92-4194-8930-2594f623eb64",
                  "parent_uuid": "47b32d98-7087-4806-b2e5-2eebb25b15ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "94dca688-e3e1-4df5-8edb-718465d3f5a1",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1cb0ed9a-5061-4d09-b9b3-fb18d8ae7a24",
              "parent_uuid": "94dca688-e3e1-4df5-8edb-718465d3f5a1",
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
          "uuid": "b6e3748d-59ff-4556-ae68-20e4b4f61c88",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ad83c09-3c55-428a-bd7e-4c6f1d0598dd",
              "parent_uuid": "b6e3748d-59ff-4556-ae68-20e4b4f61c88",
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
          "uuid": "26a830ab-3b35-4f62-a677-852668ac6b18",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37331466-002d-4b67-b3c0-14170a8837ac",
              "parent_uuid": "26a830ab-3b35-4f62-a677-852668ac6b18",
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
                  "uuid": "4b8e3f58-c30d-4fb4-97ba-60e841a3dcbf",
                  "parent_uuid": "37331466-002d-4b67-b3c0-14170a8837ac",
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
          "uuid": "a9ffb2fa-d23e-4f74-b1be-3ecd9a6a4a5c",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b5c3dc32-5e2b-4de1-9feb-35730e87cab6",
              "parent_uuid": "a9ffb2fa-d23e-4f74-b1be-3ecd9a6a4a5c",
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
          "uuid": "3db3a1a7-224e-480b-aad0-ada45c01bd91",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "08b88e5a-d89d-4c74-9421-79231542c840",
              "parent_uuid": "3db3a1a7-224e-480b-aad0-ada45c01bd91",
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
          "uuid": "32c0dca6-141f-472f-bc52-6f5c2e6200ad",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "99ecff87-bd2f-4da0-bac2-619ae260ce87",
              "parent_uuid": "32c0dca6-141f-472f-bc52-6f5c2e6200ad",
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
              "uuid": "15cf299b-cc10-4ee9-b64a-51c1a871061d",
              "parent_uuid": "32c0dca6-141f-472f-bc52-6f5c2e6200ad",
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
              "uuid": "6e6c9d7c-2b55-409b-a993-8281d1743945",
              "parent_uuid": "32c0dca6-141f-472f-bc52-6f5c2e6200ad",
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
              "uuid": "ee83d930-6b8c-44a3-97fd-00bf74b77e73",
              "parent_uuid": "32c0dca6-141f-472f-bc52-6f5c2e6200ad",
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
              "uuid": "fa111f2c-beb5-4fac-bfc9-68c21f4de596",
              "parent_uuid": "32c0dca6-141f-472f-bc52-6f5c2e6200ad",
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
              "uuid": "e2f781f8-22da-4487-a561-b932c9ec358e",
              "parent_uuid": "32c0dca6-141f-472f-bc52-6f5c2e6200ad",
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
          "uuid": "fbfe14f4-577f-402f-ae31-2a55b3cc513f",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "85534f3d-f350-4cf7-bd3f-e9eeb3d4abff",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00f61dcb-2d4a-46db-a33f-f0b353b9d20b",
              "parent_uuid": "85534f3d-f350-4cf7-bd3f-e9eeb3d4abff",
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
              "uuid": "d1ab1893-859e-4087-8691-a5ab2f778686",
              "parent_uuid": "85534f3d-f350-4cf7-bd3f-e9eeb3d4abff",
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
              "uuid": "a575a9a0-3ae0-4f46-aaf8-8fa3623346d1",
              "parent_uuid": "85534f3d-f350-4cf7-bd3f-e9eeb3d4abff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f164a99-d434-4534-992f-c819dad90f57",
                  "parent_uuid": "a575a9a0-3ae0-4f46-aaf8-8fa3623346d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57de7a2a-116b-42d8-bc32-e8863d7d552f",
              "parent_uuid": "85534f3d-f350-4cf7-bd3f-e9eeb3d4abff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd311c23-b56d-4e86-bbf4-1dac4b00a32c",
                  "parent_uuid": "57de7a2a-116b-42d8-bc32-e8863d7d552f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43ed81ff-d765-4bdc-898a-6448958f945a",
              "parent_uuid": "85534f3d-f350-4cf7-bd3f-e9eeb3d4abff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12ac938c-bbba-4b24-93fb-13e34653600e",
                  "parent_uuid": "43ed81ff-d765-4bdc-898a-6448958f945a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f9752b6-25de-4bc3-b5ea-2ab1a75bebfd",
              "parent_uuid": "85534f3d-f350-4cf7-bd3f-e9eeb3d4abff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "031c58a7-e6b0-4ed7-92d7-ee51cf068045",
                  "parent_uuid": "4f9752b6-25de-4bc3-b5ea-2ab1a75bebfd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d2b0d75-7100-4161-8589-c66dc484f9a2",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e006a5ee-d9b1-411e-bfc1-d050dccee2b4",
              "parent_uuid": "9d2b0d75-7100-4161-8589-c66dc484f9a2",
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
              "uuid": "8432f108-48d8-4930-a0c0-d0fe66d406cc",
              "parent_uuid": "9d2b0d75-7100-4161-8589-c66dc484f9a2",
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
              "uuid": "6bc69f8f-271b-45d4-a0f6-ee2ef1145077",
              "parent_uuid": "9d2b0d75-7100-4161-8589-c66dc484f9a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24c7641e-82d9-4a7a-8a28-660be6333581",
                  "parent_uuid": "6bc69f8f-271b-45d4-a0f6-ee2ef1145077",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af1a5c0e-aad2-4680-a4d0-8103d194c113",
              "parent_uuid": "9d2b0d75-7100-4161-8589-c66dc484f9a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63dd78ff-2040-44db-a779-77ed5397deb8",
                  "parent_uuid": "af1a5c0e-aad2-4680-a4d0-8103d194c113",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d477cde5-a905-4c5b-80ad-27b41cd78103",
              "parent_uuid": "9d2b0d75-7100-4161-8589-c66dc484f9a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f74f0b76-d07a-4982-800f-1abbf0a5851f",
                  "parent_uuid": "d477cde5-a905-4c5b-80ad-27b41cd78103",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ddd203e-09c2-41cc-9461-4937dafcee91",
              "parent_uuid": "9d2b0d75-7100-4161-8589-c66dc484f9a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ff1c16c-e120-439b-9138-e246d4b28234",
                  "parent_uuid": "8ddd203e-09c2-41cc-9461-4937dafcee91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5ebe0de8-b2ad-4881-952f-eb6ddd2502b6",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a499e98b-ad45-4467-b848-43ade27a3f2c",
              "parent_uuid": "5ebe0de8-b2ad-4881-952f-eb6ddd2502b6",
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
              "uuid": "c5dc2b46-16fa-41b8-a650-87626f64cdd2",
              "parent_uuid": "5ebe0de8-b2ad-4881-952f-eb6ddd2502b6",
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
              "uuid": "ec20751b-a969-4408-b0c9-0dcb24319d76",
              "parent_uuid": "5ebe0de8-b2ad-4881-952f-eb6ddd2502b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58061b8f-2c73-4f14-b60b-b2af53acfd80",
                  "parent_uuid": "ec20751b-a969-4408-b0c9-0dcb24319d76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f48ca1e-21c9-49fd-8cdc-c36ede953eb2",
              "parent_uuid": "5ebe0de8-b2ad-4881-952f-eb6ddd2502b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e421e348-992d-45d7-b48b-1b53aa26ce5a",
                  "parent_uuid": "2f48ca1e-21c9-49fd-8cdc-c36ede953eb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f14801b-d4e3-488c-8b6c-17e61445a643",
              "parent_uuid": "5ebe0de8-b2ad-4881-952f-eb6ddd2502b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42e54372-55d6-4e04-acb2-69f25a61d9e5",
                  "parent_uuid": "2f14801b-d4e3-488c-8b6c-17e61445a643",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5ca27f8-89c2-4670-8969-e315e71e645a",
              "parent_uuid": "5ebe0de8-b2ad-4881-952f-eb6ddd2502b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7b7cf0c-7845-4613-8ffb-7a5c7ad92514",
                  "parent_uuid": "a5ca27f8-89c2-4670-8969-e315e71e645a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d37faf7f-84a8-41bb-ad7b-2a148caaff67",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "195d0bf3-5d52-4ffa-9071-b08b5deb5048",
              "parent_uuid": "d37faf7f-84a8-41bb-ad7b-2a148caaff67",
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
              "uuid": "d73095aa-048e-465f-ad67-3a45910d0462",
              "parent_uuid": "d37faf7f-84a8-41bb-ad7b-2a148caaff67",
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
              "uuid": "7f50c65e-56a3-46fa-8ffd-50863b0a0268",
              "parent_uuid": "d37faf7f-84a8-41bb-ad7b-2a148caaff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "724b0ec6-86cb-4f5a-be9b-ef70f51e842b",
                  "parent_uuid": "7f50c65e-56a3-46fa-8ffd-50863b0a0268",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16c80055-789f-4887-9e75-9f3968508e71",
              "parent_uuid": "d37faf7f-84a8-41bb-ad7b-2a148caaff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99faf9f8-07de-48e9-bea4-b0cdfcb12127",
                  "parent_uuid": "16c80055-789f-4887-9e75-9f3968508e71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdf32d41-8963-45ab-8ad2-0692b9b4581a",
              "parent_uuid": "d37faf7f-84a8-41bb-ad7b-2a148caaff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "256a5d7f-98e7-454f-8291-9961ce4e4b61",
                  "parent_uuid": "fdf32d41-8963-45ab-8ad2-0692b9b4581a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0e0ff5d-707c-49f2-bee7-fb3225a86133",
              "parent_uuid": "d37faf7f-84a8-41bb-ad7b-2a148caaff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bf95556-b53b-4a3b-a757-9be9755c81ce",
                  "parent_uuid": "c0e0ff5d-707c-49f2-bee7-fb3225a86133",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2b398a3f-a6a8-4fc6-b2e9-785b6ac9e2b6",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57727baf-61e5-46da-b409-bdd11ba7f3f1",
              "parent_uuid": "2b398a3f-a6a8-4fc6-b2e9-785b6ac9e2b6",
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
              "uuid": "64710f4f-a4c9-4881-b872-4e64ba3c9897",
              "parent_uuid": "2b398a3f-a6a8-4fc6-b2e9-785b6ac9e2b6",
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
              "uuid": "5a1ccc68-101c-4abb-bf94-628b4a48d629",
              "parent_uuid": "2b398a3f-a6a8-4fc6-b2e9-785b6ac9e2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0ee33ca-be86-4a4c-8467-ceed596b2d31",
                  "parent_uuid": "5a1ccc68-101c-4abb-bf94-628b4a48d629",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "206dffc2-6bc3-45aa-a3e0-c68e5e65b7c5",
              "parent_uuid": "2b398a3f-a6a8-4fc6-b2e9-785b6ac9e2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61db653e-71fb-4958-90f4-8bcf4d604ac3",
                  "parent_uuid": "206dffc2-6bc3-45aa-a3e0-c68e5e65b7c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79fe1e67-6c02-4957-9893-284a41166775",
              "parent_uuid": "2b398a3f-a6a8-4fc6-b2e9-785b6ac9e2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48836f8a-3aba-459e-b720-99c051edaaae",
                  "parent_uuid": "79fe1e67-6c02-4957-9893-284a41166775",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3df04f7-1e16-49f5-8615-98e701e44763",
              "parent_uuid": "2b398a3f-a6a8-4fc6-b2e9-785b6ac9e2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9afd763-424a-4239-b0a0-740db79f27c6",
                  "parent_uuid": "e3df04f7-1e16-49f5-8615-98e701e44763",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "15c80850-9fbd-4566-a93b-d18c03bd5079",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3486f1f0-d021-472c-a085-07bd91b3c83c",
              "parent_uuid": "15c80850-9fbd-4566-a93b-d18c03bd5079",
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
              "uuid": "4dce591d-d460-400d-9990-a1bb749b2958",
              "parent_uuid": "15c80850-9fbd-4566-a93b-d18c03bd5079",
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
              "uuid": "5216026c-14b7-40a8-b6fa-fc91395a5866",
              "parent_uuid": "15c80850-9fbd-4566-a93b-d18c03bd5079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "309183f0-9d46-4ba3-875d-54140accd615",
                  "parent_uuid": "5216026c-14b7-40a8-b6fa-fc91395a5866",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b0aabaf-d665-4592-97e6-3791c65581c8",
              "parent_uuid": "15c80850-9fbd-4566-a93b-d18c03bd5079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7dce2fa7-baf1-493e-8ec8-04423ff96153",
                  "parent_uuid": "2b0aabaf-d665-4592-97e6-3791c65581c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "550dcb5d-f12a-43e8-9995-babda03ecf49",
              "parent_uuid": "15c80850-9fbd-4566-a93b-d18c03bd5079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc4519b5-9bd2-48d5-9a5c-b194d7ecb354",
                  "parent_uuid": "550dcb5d-f12a-43e8-9995-babda03ecf49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d92c6fde-900a-4001-a187-4356a59da30e",
              "parent_uuid": "15c80850-9fbd-4566-a93b-d18c03bd5079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0daa729-d8a8-4a5f-958f-9e13ac9eb0a7",
                  "parent_uuid": "d92c6fde-900a-4001-a187-4356a59da30e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e580ea5-1da8-4e69-8992-6c1712bc70c7",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff03f07c-2d1c-4478-b6c6-bce1921519b0",
              "parent_uuid": "7e580ea5-1da8-4e69-8992-6c1712bc70c7",
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
          "uuid": "e8db4e65-8cbc-403b-b7ee-a55f354d3de2",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a13688b7-c6b5-402d-a551-789c23bf7a04",
              "parent_uuid": "e8db4e65-8cbc-403b-b7ee-a55f354d3de2",
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
          "uuid": "7ad3e08d-2338-47f8-bc94-be88e522e644",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84804555-98a0-4b58-9bf4-41d699d2418b",
              "parent_uuid": "7ad3e08d-2338-47f8-bc94-be88e522e644",
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
                  "uuid": "61b086d4-fe4e-406b-a3e0-9bafe90ef959",
                  "parent_uuid": "84804555-98a0-4b58-9bf4-41d699d2418b",
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
          "uuid": "ceff8c96-baf3-42cf-8651-9e95fe5d2454",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18c0596c-b070-405f-9272-a4dbbf35d11a",
              "parent_uuid": "ceff8c96-baf3-42cf-8651-9e95fe5d2454",
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
          "uuid": "4eeae38a-a25d-495b-a990-66293210895a",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "952d9786-5cdd-415b-a471-083548d4b869",
              "parent_uuid": "4eeae38a-a25d-495b-a990-66293210895a",
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
          "uuid": "414ec846-8a76-400e-978b-8fb99bfdb7a9",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59b93cd6-dc0b-4758-bb88-72ead1e95ed8",
              "parent_uuid": "414ec846-8a76-400e-978b-8fb99bfdb7a9",
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
              "uuid": "d54850bb-6b19-484d-bb14-0748b16c1c1e",
              "parent_uuid": "414ec846-8a76-400e-978b-8fb99bfdb7a9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8a067e29-acb5-467b-9567-1e309c1cc8a6",
              "parent_uuid": "414ec846-8a76-400e-978b-8fb99bfdb7a9",
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
              "uuid": "dcf6af21-45e1-49b2-88f1-b0a70a4743b4",
              "parent_uuid": "414ec846-8a76-400e-978b-8fb99bfdb7a9",
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
              "uuid": "b54051c4-c934-4cfc-b100-9a7835dcb111",
              "parent_uuid": "414ec846-8a76-400e-978b-8fb99bfdb7a9",
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
          "uuid": "84bf642a-f886-4a21-8b04-d47bce207b15",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8e468e2-b301-4962-a044-53522d9d1c5b",
              "parent_uuid": "84bf642a-f886-4a21-8b04-d47bce207b15",
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
              "uuid": "92ebd284-4327-41e0-bcfc-8f2ab01df08c",
              "parent_uuid": "84bf642a-f886-4a21-8b04-d47bce207b15",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "594dcffe-94e8-45e2-9450-1c72963e6d24",
              "parent_uuid": "84bf642a-f886-4a21-8b04-d47bce207b15",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f760d3b2-dccc-4be4-a018-9954b6c45be4",
              "parent_uuid": "84bf642a-f886-4a21-8b04-d47bce207b15",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "67fce4d2-69b1-44f4-b1e9-48d44e56827d",
              "parent_uuid": "84bf642a-f886-4a21-8b04-d47bce207b15",
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
          "uuid": "5d3171ca-37bd-49fa-8f25-1dbf3921d0a5",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82b60858-b838-408f-bf3c-b2a09ecbd6dc",
              "parent_uuid": "5d3171ca-37bd-49fa-8f25-1dbf3921d0a5",
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
              "uuid": "9f90616c-523c-4cb6-b704-b3b9319a71e9",
              "parent_uuid": "5d3171ca-37bd-49fa-8f25-1dbf3921d0a5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4ef4e87f-900f-4dc6-851e-6a42048d318a",
              "parent_uuid": "5d3171ca-37bd-49fa-8f25-1dbf3921d0a5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9d4055f8-dd21-4da1-a2a4-52bea30cafcd",
              "parent_uuid": "5d3171ca-37bd-49fa-8f25-1dbf3921d0a5",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "698226a6-b51f-4a82-91f5-e41d88f255c0",
              "parent_uuid": "5d3171ca-37bd-49fa-8f25-1dbf3921d0a5",
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
          "uuid": "b6b8816b-f6c4-4f3f-acd1-8d4153970b55",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d36a2bd-2f97-4d0d-8e69-60b53f715c51",
              "parent_uuid": "b6b8816b-f6c4-4f3f-acd1-8d4153970b55",
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
              "uuid": "faa0c829-a938-4829-81e6-dbee1f99dcfe",
              "parent_uuid": "b6b8816b-f6c4-4f3f-acd1-8d4153970b55",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d7a5f755-06d9-4374-85d2-3cfc7a6fa28f",
              "parent_uuid": "b6b8816b-f6c4-4f3f-acd1-8d4153970b55",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "dbdb09d1-e208-4e70-8495-d561a7cc4343",
              "parent_uuid": "b6b8816b-f6c4-4f3f-acd1-8d4153970b55",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "169d1257-9026-4473-8f23-066230d5e3da",
              "parent_uuid": "b6b8816b-f6c4-4f3f-acd1-8d4153970b55",
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
          "uuid": "59094108-b2fc-4138-bcdd-1af576639eb2",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9b18638-fd04-4611-9c73-b974df965009",
              "parent_uuid": "59094108-b2fc-4138-bcdd-1af576639eb2",
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
              "uuid": "a209e5f8-f8fc-4718-a3e9-5659fdd06b12",
              "parent_uuid": "59094108-b2fc-4138-bcdd-1af576639eb2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e9f500e8-25b9-4904-9dc3-785a9a497331",
              "parent_uuid": "59094108-b2fc-4138-bcdd-1af576639eb2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d6df9ff6-3e2a-48a6-a210-8f5f0c317e38",
              "parent_uuid": "59094108-b2fc-4138-bcdd-1af576639eb2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c8de1b64-e23c-4b07-a1da-ed60150e041c",
              "parent_uuid": "59094108-b2fc-4138-bcdd-1af576639eb2",
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
          "uuid": "788ad7cf-d700-42fe-8af3-dda40209b4bf",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ceff1382-cdaa-46d3-b4cf-5d6107e11a2a",
              "parent_uuid": "788ad7cf-d700-42fe-8af3-dda40209b4bf",
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
              "uuid": "6edd3650-10fe-4380-bbce-289d0c143de7",
              "parent_uuid": "788ad7cf-d700-42fe-8af3-dda40209b4bf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bd2a60ab-bce4-4f83-8a77-f77a6fcaa85b",
              "parent_uuid": "788ad7cf-d700-42fe-8af3-dda40209b4bf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3b0f5a92-ec57-4be2-a0de-2d1293430406",
              "parent_uuid": "788ad7cf-d700-42fe-8af3-dda40209b4bf",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "453cb4d0-bbba-4764-96a9-b631615be335",
              "parent_uuid": "788ad7cf-d700-42fe-8af3-dda40209b4bf",
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
          "uuid": "f3ac0bc2-75e7-4f80-b50f-15d5e8a09166",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21e55e59-acf3-42ce-a594-7a90a677dc58",
              "parent_uuid": "f3ac0bc2-75e7-4f80-b50f-15d5e8a09166",
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
              "uuid": "c5b46617-6a66-4ed6-a242-981041cf4f42",
              "parent_uuid": "f3ac0bc2-75e7-4f80-b50f-15d5e8a09166",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6411adaa-501e-4fd1-8217-d244ecca2c36",
              "parent_uuid": "f3ac0bc2-75e7-4f80-b50f-15d5e8a09166",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "61b5c822-5cbf-4e0c-9c0b-3ff86ce8c710",
              "parent_uuid": "f3ac0bc2-75e7-4f80-b50f-15d5e8a09166",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9c8884b7-fa4d-48e6-906a-41695221960b",
              "parent_uuid": "f3ac0bc2-75e7-4f80-b50f-15d5e8a09166",
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
          "uuid": "db7b4314-7959-4363-a949-90b880b3b7f4",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12cba903-004d-42ac-9ccc-c436e7af5b94",
              "parent_uuid": "db7b4314-7959-4363-a949-90b880b3b7f4",
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
              "uuid": "af8d7853-f0de-47cc-84ef-98ca1e654cef",
              "parent_uuid": "db7b4314-7959-4363-a949-90b880b3b7f4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2b79a989-f7bd-403f-ac5e-fa7d1d015397",
              "parent_uuid": "db7b4314-7959-4363-a949-90b880b3b7f4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a253c5ea-a221-4813-bab0-49402fa1e2b3",
              "parent_uuid": "db7b4314-7959-4363-a949-90b880b3b7f4",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4869cfa4-4405-4e12-aa2e-54800e8391cd",
              "parent_uuid": "db7b4314-7959-4363-a949-90b880b3b7f4",
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
          "uuid": "6e28d498-a3b8-483c-ad0c-3b630d2a5204",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "929f3773-b5fe-4c5c-ba1c-390f9b484127",
              "parent_uuid": "6e28d498-a3b8-483c-ad0c-3b630d2a5204",
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
              "uuid": "5add5447-957e-47c6-a939-435b2303e11e",
              "parent_uuid": "6e28d498-a3b8-483c-ad0c-3b630d2a5204",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "63eb5895-9275-4aba-b00e-22a447c78cf9",
              "parent_uuid": "6e28d498-a3b8-483c-ad0c-3b630d2a5204",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9d290400-8f32-4c4d-a569-074396b67f51",
              "parent_uuid": "6e28d498-a3b8-483c-ad0c-3b630d2a5204",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3fac68e4-e7d9-47ed-9cbe-6da1ece0e35f",
              "parent_uuid": "6e28d498-a3b8-483c-ad0c-3b630d2a5204",
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
          "uuid": "27ca8486-c56d-4e0c-9689-a4f0df46a4f2",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5df8ff6d-ebe2-496e-966a-e3b8282ed0c1",
              "parent_uuid": "27ca8486-c56d-4e0c-9689-a4f0df46a4f2",
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
          "uuid": "e6961ffb-b32e-46b7-a743-cd4fbce196a7",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f648de0c-b443-45d7-886a-dc63ebfd5d98",
              "parent_uuid": "e6961ffb-b32e-46b7-a743-cd4fbce196a7",
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
          "uuid": "0f00e779-ff64-4469-a1b0-fcfd8a57074b",
          "parent_uuid": "ed5cb7c5-99b4-4a5f-8e68-1191fd60e3b0",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59e50fa8-7088-4b88-9f24-cc50ee0f4ec7",
              "parent_uuid": "0f00e779-ff64-4469-a1b0-fcfd8a57074b",
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
                  "uuid": "1fe239e9-bd24-4816-bddf-5b100e6850d4",
                  "parent_uuid": "59e50fa8-7088-4b88-9f24-cc50ee0f4ec7",
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

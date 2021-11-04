
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
  "uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "1eea71aa-0a12-4695-8eb6-69b0c6cfb6dd",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "b72e33c0-9bbf-478b-8cd7-5dfb01dc7f15",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "b99770ae-5fbc-4da8-972a-593a52ca30c3",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "52ecda32-ca67-4ba0-8dbb-9d124610a04d",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "6f6537c3-c135-4a0f-9c82-42ce67c9a8fa",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "868ceb64-f0bc-4568-b095-ff9b1350f04b",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "05d911c6-a002-435a-b15c-771192852ea2",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
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
      "uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
      "parent_uuid": "5cb46a98-3f93-4446-8477-6ff4a4d42049",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "92fc0530-f6fe-4b5f-a3f0-e9cf95670532",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "3c753e35-1dcd-4dca-897f-6a73530ab103",
              "parent_uuid": "92fc0530-f6fe-4b5f-a3f0-e9cf95670532",
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
              "uuid": "0c694ef8-9b46-456e-8256-32f491b71fbb",
              "parent_uuid": "92fc0530-f6fe-4b5f-a3f0-e9cf95670532",
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
              "uuid": "f9ade10b-38ce-4aac-952a-2d8b52e68806",
              "parent_uuid": "92fc0530-f6fe-4b5f-a3f0-e9cf95670532",
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
              "uuid": "32797b2e-0395-4dd4-9b06-6f0ba203cb82",
              "parent_uuid": "92fc0530-f6fe-4b5f-a3f0-e9cf95670532",
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
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Ent- und Verpackungsanlage</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "cbbec666-3b2a-49a4-aef6-e8adddb337b6",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "85df25d1-b42f-440f-8a20-91eac6dd8d1a",
              "parent_uuid": "cbbec666-3b2a-49a4-aef6-e8adddb337b6",
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
              "uuid": "4b1189de-7f58-4178-b883-3c3e15a0cc8c",
              "parent_uuid": "cbbec666-3b2a-49a4-aef6-e8adddb337b6",
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
              "uuid": "eee28cea-c080-49b7-80f2-5da5e7dac920",
              "parent_uuid": "cbbec666-3b2a-49a4-aef6-e8adddb337b6",
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
              "uuid": "75728494-2fb0-48f7-bfc4-45cb475a5fa5",
              "parent_uuid": "cbbec666-3b2a-49a4-aef6-e8adddb337b6",
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
          "uuid": "66982cfd-254c-4a1d-98e0-c80db322ec83",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "636b170e-1139-4247-a4d8-e5db71e5b9b5",
              "parent_uuid": "66982cfd-254c-4a1d-98e0-c80db322ec83",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "927081c9-1541-482a-84cf-0b5d476098ca",
              "parent_uuid": "66982cfd-254c-4a1d-98e0-c80db322ec83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4.5cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6181bd7e-cf37-48cc-8530-dd0c4287ea96",
              "parent_uuid": "66982cfd-254c-4a1d-98e0-c80db322ec83",
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
              "uuid": "f77b767d-cf20-45ff-9087-19df2148e418",
              "parent_uuid": "66982cfd-254c-4a1d-98e0-c80db322ec83",
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
              "uuid": "f594b222-1587-46ec-842c-b52ed0e4ce9e",
              "parent_uuid": "66982cfd-254c-4a1d-98e0-c80db322ec83",
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
              "uuid": "99a64cff-e997-4e46-a8b5-ab7bd5b06ed6",
              "parent_uuid": "66982cfd-254c-4a1d-98e0-c80db322ec83",
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
          "uuid": "1ca5e49b-7326-4c7b-bebb-3e8863040ee1",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "65d407ef-cd9e-4031-a199-dae459b5b23e",
              "parent_uuid": "1ca5e49b-7326-4c7b-bebb-3e8863040ee1",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
                ],
                [
                  "align",
                  "left"
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
          "uuid": "40b9e9b8-79b9-4ae9-a91f-28e46bbbf117",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "681fb1a4-c168-42ab-91e8-c5565a06cbaa",
              "parent_uuid": "40b9e9b8-79b9-4ae9-a91f-28e46bbbf117",
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
              "uuid": "53836cd4-ba57-4187-9cf8-88f5cd706847",
              "parent_uuid": "40b9e9b8-79b9-4ae9-a91f-28e46bbbf117",
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
              "uuid": "e0b55042-dd01-44f8-89fc-5e285251e5d1",
              "parent_uuid": "40b9e9b8-79b9-4ae9-a91f-28e46bbbf117",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d0a249a0-d746-4816-8c62-56ec5ed22bdf",
                  "parent_uuid": "e0b55042-dd01-44f8-89fc-5e285251e5d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cf6c4ae-6b5d-4c08-9f02-884ae0e5346b",
              "parent_uuid": "40b9e9b8-79b9-4ae9-a91f-28e46bbbf117",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d0fff239-0a04-4271-bad9-e8de2818b57d",
                  "parent_uuid": "4cf6c4ae-6b5d-4c08-9f02-884ae0e5346b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "789979e3-e7e2-4341-a75c-903aae06a0ab",
              "parent_uuid": "40b9e9b8-79b9-4ae9-a91f-28e46bbbf117",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cd770107-a373-47ef-998a-3aed0f1c0a5b",
                  "parent_uuid": "789979e3-e7e2-4341-a75c-903aae06a0ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9456ff96-b0c5-4bda-9abd-81b6d9ea74da",
              "parent_uuid": "40b9e9b8-79b9-4ae9-a91f-28e46bbbf117",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f8846824-d6a0-4488-970a-a628eb03ff13",
                  "parent_uuid": "9456ff96-b0c5-4bda-9abd-81b6d9ea74da",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "66aeaff7-acfa-42a0-aa83-1fc2b315faa6",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d6ae981-2958-44bc-a39f-9ffea416b101",
              "parent_uuid": "66aeaff7-acfa-42a0-aa83-1fc2b315faa6",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Sicherheitsschalter beim Steigband</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6926b006-abf8-4e3a-881f-c71d35890ad8",
              "parent_uuid": "66aeaff7-acfa-42a0-aa83-1fc2b315faa6",
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
              "uuid": "0dd0da01-ebed-4a71-a640-f35f573ea488",
              "parent_uuid": "66aeaff7-acfa-42a0-aa83-1fc2b315faa6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5f5bbc75-1d90-480a-adff-02184802f36b",
                  "parent_uuid": "0dd0da01-ebed-4a71-a640-f35f573ea488",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d51dc6d9-609e-49f3-967f-19692cb9f22a",
              "parent_uuid": "66aeaff7-acfa-42a0-aa83-1fc2b315faa6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aac79e83-3ab4-4e54-a8fe-5fa53d2b861e",
                  "parent_uuid": "d51dc6d9-609e-49f3-967f-19692cb9f22a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70bee578-2518-442d-8631-053c653a13ae",
              "parent_uuid": "66aeaff7-acfa-42a0-aa83-1fc2b315faa6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6d3e7ac0-b310-440e-955a-96b05e40ba1c",
                  "parent_uuid": "70bee578-2518-442d-8631-053c653a13ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cd78a5f-f09e-4519-b89e-2faf17900d47",
              "parent_uuid": "66aeaff7-acfa-42a0-aa83-1fc2b315faa6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "143cddd4-ac92-4ce3-b0d5-9832f6515983",
                  "parent_uuid": "6cd78a5f-f09e-4519-b89e-2faf17900d47",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "28741d99-15e1-404b-a871-35ce3dbbb229",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a7ce489-4a18-4386-b7cf-09558a3fe148",
              "parent_uuid": "28741d99-15e1-404b-a871-35ce3dbbb229",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e6aff52d-6af5-4311-ae2d-f3406fb346f8",
              "parent_uuid": "28741d99-15e1-404b-a871-35ce3dbbb229",
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
              "uuid": "5c9e797b-fe5a-4478-9611-4ed3f4e7876e",
              "parent_uuid": "28741d99-15e1-404b-a871-35ce3dbbb229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "665ee147-33c0-4358-82a4-265a201bfc70",
                  "parent_uuid": "5c9e797b-fe5a-4478-9611-4ed3f4e7876e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f794ec8c-7401-4dee-afa1-192c5d029aa4",
              "parent_uuid": "28741d99-15e1-404b-a871-35ce3dbbb229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "08f2e063-7dcc-442b-b5b5-9f5ba2ef927f",
                  "parent_uuid": "f794ec8c-7401-4dee-afa1-192c5d029aa4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c2cea8f-9aec-434b-8cea-0dcc06cccbc8",
              "parent_uuid": "28741d99-15e1-404b-a871-35ce3dbbb229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb5c6594-9690-4ca2-9d5a-b9f873994e96",
                  "parent_uuid": "6c2cea8f-9aec-434b-8cea-0dcc06cccbc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "703e8a35-04e0-441e-ad10-fb5e39b27123",
              "parent_uuid": "28741d99-15e1-404b-a871-35ce3dbbb229",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cd3c0b3e-5fc1-4aea-b2ab-13a89bfd41ad",
                  "parent_uuid": "703e8a35-04e0-441e-ad10-fb5e39b27123",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d98bddbf-525e-411e-a331-a8725a8df448",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22be8db4-8e04-4867-a9fa-2ef2032e974d",
              "parent_uuid": "d98bddbf-525e-411e-a331-a8725a8df448",
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
              "innerHtml": "\r\n                    <span>Geräteprüfung nach SNR 462638 durchgeführt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1cd0b12f-6e0a-433c-a450-e6718ca229a1",
              "parent_uuid": "d98bddbf-525e-411e-a331-a8725a8df448",
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
              "innerHtml": "<span>2J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9a4e01ae-3954-4022-a567-7f294ed8451a",
              "parent_uuid": "d98bddbf-525e-411e-a331-a8725a8df448",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b1a77f18-0050-4068-b146-dafa34432329",
                  "parent_uuid": "9a4e01ae-3954-4022-a567-7f294ed8451a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "681c1e4a-eeb9-45d6-b10f-2da944e9dc13",
              "parent_uuid": "d98bddbf-525e-411e-a331-a8725a8df448",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0098161f-11b3-4cfb-826c-3006291c85e8",
                  "parent_uuid": "681c1e4a-eeb9-45d6-b10f-2da944e9dc13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "114c16cc-e4aa-44d4-b1ed-20efe4b79f26",
              "parent_uuid": "d98bddbf-525e-411e-a331-a8725a8df448",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c188cc23-1f00-408c-a9a6-77e7216d18fd",
                  "parent_uuid": "114c16cc-e4aa-44d4-b1ed-20efe4b79f26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7ef0db3-5449-48d8-a335-153e4aaa81cc",
              "parent_uuid": "d98bddbf-525e-411e-a331-a8725a8df448",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d0d0b5a8-9d98-4df8-8f70-359f49180204",
                  "parent_uuid": "a7ef0db3-5449-48d8-a335-153e4aaa81cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "735b1647-3e1d-406d-8e12-ac9e3251fe62",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c6e3b3c-1052-4111-b4dc-5d86daacdbdb",
              "parent_uuid": "735b1647-3e1d-406d-8e12-ac9e3251fe62",
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
              "innerHtml": "\r\n                    <span>Steigband auf Beschädigungen oder Risse prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "119dd30a-cb8d-4e60-ab83-517b35d4f5a2",
              "parent_uuid": "735b1647-3e1d-406d-8e12-ac9e3251fe62",
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
              "uuid": "a0673758-869f-42f6-a740-3da14fe2e02b",
              "parent_uuid": "735b1647-3e1d-406d-8e12-ac9e3251fe62",
              "tagName": "td",
              "properties": [
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
                  "uuid": "52307ca0-daae-437c-8a05-4f8770abacd6",
                  "parent_uuid": "a0673758-869f-42f6-a740-3da14fe2e02b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f363e3b-5a53-4efa-aa68-2b3f8928504b",
              "parent_uuid": "735b1647-3e1d-406d-8e12-ac9e3251fe62",
              "tagName": "td",
              "properties": [
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
                  "uuid": "96aa20c6-6916-4996-8744-e6a19b5a7fd5",
                  "parent_uuid": "4f363e3b-5a53-4efa-aa68-2b3f8928504b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eef8511e-a02c-4632-94d4-84d0de89b89f",
              "parent_uuid": "735b1647-3e1d-406d-8e12-ac9e3251fe62",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4f74697e-5a9d-4235-b99b-bcd2e1384756",
                  "parent_uuid": "eef8511e-a02c-4632-94d4-84d0de89b89f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10c24a2e-6911-41b3-b660-d2294ce4e5f4",
              "parent_uuid": "735b1647-3e1d-406d-8e12-ac9e3251fe62",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a34e34ad-12f2-4be6-bccf-d0347d043707",
                  "parent_uuid": "10c24a2e-6911-41b3-b660-d2294ce4e5f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9688cd1f-60bc-418a-a6ac-36531fe38945",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc49f5c8-814a-4698-9cb7-a2500bea2faa",
              "parent_uuid": "9688cd1f-60bc-418a-a6ac-36531fe38945",
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
                  "37"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Steigband Zentrierung des Fördergurts prüfen. Der seitliche Abstand links/rechts sollte ca. identisch sein.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c8729167-0c18-41c6-9a13-1e044263499a",
              "parent_uuid": "9688cd1f-60bc-418a-a6ac-36531fe38945",
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
              "uuid": "504991de-2c50-40d2-a7d8-6fe2b508b549",
              "parent_uuid": "9688cd1f-60bc-418a-a6ac-36531fe38945",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e6bee1af-7b7b-46df-b056-616f05a4c4d3",
                  "parent_uuid": "504991de-2c50-40d2-a7d8-6fe2b508b549",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a35ed900-e0ca-4d49-aedd-5ad7fa6da7b0",
              "parent_uuid": "9688cd1f-60bc-418a-a6ac-36531fe38945",
              "tagName": "td",
              "properties": [
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
                  "uuid": "449292d9-4f8a-491f-b3ed-7cedbd1a7449",
                  "parent_uuid": "a35ed900-e0ca-4d49-aedd-5ad7fa6da7b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe083a56-14ba-4617-9a45-a839ab70d645",
              "parent_uuid": "9688cd1f-60bc-418a-a6ac-36531fe38945",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8ea8cbbb-e56b-4550-b596-f39dd3f7d8e4",
                  "parent_uuid": "fe083a56-14ba-4617-9a45-a839ab70d645",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "302a60a0-6a37-4713-beb0-a0034a69f327",
              "parent_uuid": "9688cd1f-60bc-418a-a6ac-36531fe38945",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dc7949e2-b936-44d3-b7f1-b679e9edc4d0",
                  "parent_uuid": "302a60a0-6a37-4713-beb0-a0034a69f327",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "853f9bbd-34db-4a3f-9e0d-a7052f67c9da",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ffc5589-86b8-4308-9cc7-7d50f2e57987",
              "parent_uuid": "853f9bbd-34db-4a3f-9e0d-a7052f67c9da",
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
                  "33"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Transferband auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "22f39470-e194-49fb-996b-79dcec89ef3b",
              "parent_uuid": "853f9bbd-34db-4a3f-9e0d-a7052f67c9da",
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
              "uuid": "e3d5b97e-1718-4d8a-a85a-bb1dc66922a5",
              "parent_uuid": "853f9bbd-34db-4a3f-9e0d-a7052f67c9da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e89b19d0-37fc-4a1a-95b5-57ea76cf9dbd",
                  "parent_uuid": "e3d5b97e-1718-4d8a-a85a-bb1dc66922a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "763e7d0c-cc98-43dc-bf71-3842b69bba48",
              "parent_uuid": "853f9bbd-34db-4a3f-9e0d-a7052f67c9da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5ab516fe-c723-46fd-abc8-daa4a45813e0",
                  "parent_uuid": "763e7d0c-cc98-43dc-bf71-3842b69bba48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37e80e46-8d9b-4650-a9bb-4420550e6803",
              "parent_uuid": "853f9bbd-34db-4a3f-9e0d-a7052f67c9da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2424d888-3ddb-4f9d-b7ed-8525ccc6311c",
                  "parent_uuid": "37e80e46-8d9b-4650-a9bb-4420550e6803",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e6f8e9e-4334-42a5-b243-1331d1dee1d5",
              "parent_uuid": "853f9bbd-34db-4a3f-9e0d-a7052f67c9da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2bd67978-c0b3-4fad-8e8f-fde55392e321",
                  "parent_uuid": "9e6f8e9e-4334-42a5-b243-1331d1dee1d5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d040708-d798-4118-af51-2e85c7568b31",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ed164f2-277b-406c-a5f7-8c2f64a36de8",
              "parent_uuid": "7d040708-d798-4118-af51-2e85c7568b31",
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
                  "37"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Mitnehmerstege auf den Förderbändern mechanisch prüfen und fixieren wenn gelockert</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "935ddc30-12d1-4ad5-92e4-49fbbe473048",
              "parent_uuid": "7d040708-d798-4118-af51-2e85c7568b31",
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
              "uuid": "b40eb161-2ef3-46ee-b785-f899a6ef6a10",
              "parent_uuid": "7d040708-d798-4118-af51-2e85c7568b31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ec5655dc-8c12-410f-ad81-51fc0df94976",
                  "parent_uuid": "b40eb161-2ef3-46ee-b785-f899a6ef6a10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7313f43c-2ef8-4a28-bf89-3da86fe921d6",
              "parent_uuid": "7d040708-d798-4118-af51-2e85c7568b31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f3c69278-8557-4921-9a0b-6f825b0bea18",
                  "parent_uuid": "7313f43c-2ef8-4a28-bf89-3da86fe921d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0ce01c2-017e-4919-a626-6caf99542b10",
              "parent_uuid": "7d040708-d798-4118-af51-2e85c7568b31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2076f6e4-fd23-42da-a5cb-56d4e1245bef",
                  "parent_uuid": "d0ce01c2-017e-4919-a626-6caf99542b10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1f70759-bbab-41a6-a2ad-c9825270fd34",
              "parent_uuid": "7d040708-d798-4118-af51-2e85c7568b31",
              "tagName": "td",
              "properties": [
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
                  "uuid": "928d8d92-3098-475a-b497-be07fc31f837",
                  "parent_uuid": "f1f70759-bbab-41a6-a2ad-c9825270fd34",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fe6e0d05-c855-40f6-a2ef-a55af2520520",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df14c117-9187-4e58-92b1-67077a8a6aaa",
              "parent_uuid": "fe6e0d05-c855-40f6-a2ef-a55af2520520",
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
                  "37"
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
              "innerHtml": "\r\n                    <span>Antriebsmotoren für die Transportbänder prüfen (Geräusche, Laufruhe, Lager, Kabelanschlüsse, Schraubenkontrolle)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9a0c3c7a-b452-4414-8e19-4d08bec53da4",
              "parent_uuid": "fe6e0d05-c855-40f6-a2ef-a55af2520520",
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
              "uuid": "645d2725-6428-4e13-b732-1a6b30916c6d",
              "parent_uuid": "fe6e0d05-c855-40f6-a2ef-a55af2520520",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2005bf56-6dc2-4b9e-9098-b7efa1a36022",
                  "parent_uuid": "645d2725-6428-4e13-b732-1a6b30916c6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5b2da4f-4dd2-438e-95a4-bb9451f77199",
              "parent_uuid": "fe6e0d05-c855-40f6-a2ef-a55af2520520",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fa678ef6-3cef-4cd9-86f6-31b031c5fcc1",
                  "parent_uuid": "b5b2da4f-4dd2-438e-95a4-bb9451f77199",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5e6ac30-4907-45a0-8dbc-e794ddbe28b2",
              "parent_uuid": "fe6e0d05-c855-40f6-a2ef-a55af2520520",
              "tagName": "td",
              "properties": [
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
                  "uuid": "07ee4da2-4b4b-49d3-8a83-5b495536e938",
                  "parent_uuid": "d5e6ac30-4907-45a0-8dbc-e794ddbe28b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f73761d-d467-4556-b195-7a3501655f62",
              "parent_uuid": "fe6e0d05-c855-40f6-a2ef-a55af2520520",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5f357e40-8f48-400a-bad2-22561f926dea",
                  "parent_uuid": "1f73761d-d467-4556-b195-7a3501655f62",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6f61a02-fe26-4fea-9da8-e927d8d8c158",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cdf867c7-313b-4b22-b5f6-5e9545724f26",
              "parent_uuid": "d6f61a02-fe26-4fea-9da8-e927d8d8c158",
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
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rollenförderer bei Ent- und Verpackungsstation auf Beschädigungen prüfen (Laufruhe, Geräusche, Riemen, Anschlusskabel)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e50a80ec-147b-4d81-a1cd-b092b6cfc665",
              "parent_uuid": "d6f61a02-fe26-4fea-9da8-e927d8d8c158",
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
              "uuid": "787b863f-f69a-47cc-a6ab-cd59d3fe40ef",
              "parent_uuid": "d6f61a02-fe26-4fea-9da8-e927d8d8c158",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ad5ae22a-edd9-42b1-a610-3f5dc340a9c4",
                  "parent_uuid": "787b863f-f69a-47cc-a6ab-cd59d3fe40ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e9bd160-cd27-4c2d-9515-93efe2abcb48",
              "parent_uuid": "d6f61a02-fe26-4fea-9da8-e927d8d8c158",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ce3e987d-52cc-4518-aca2-0dc79743dbd5",
                  "parent_uuid": "6e9bd160-cd27-4c2d-9515-93efe2abcb48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4c7ff8b-17c8-4145-bad7-962ffac7d516",
              "parent_uuid": "d6f61a02-fe26-4fea-9da8-e927d8d8c158",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1b7bb05b-6c5e-4705-8a5b-9574af24b6c9",
                  "parent_uuid": "a4c7ff8b-17c8-4145-bad7-962ffac7d516",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f876674e-9e38-46e2-9dee-9f3274a45523",
              "parent_uuid": "d6f61a02-fe26-4fea-9da8-e927d8d8c158",
              "tagName": "td",
              "properties": [
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
                  "uuid": "11538420-7b5d-402a-a1a5-90369a6eb617",
                  "parent_uuid": "f876674e-9e38-46e2-9dee-9f3274a45523",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "897f9ab9-9b7a-4166-b833-19a0b8c99f44",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5a305989-0edb-4a08-b767-17d5585b5e68",
              "parent_uuid": "897f9ab9-9b7a-4166-b833-19a0b8c99f44",
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
                  "37"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Ausrichtung der Sensoren prüfen (Lichtschranke, Positionsschalter,Reflektoren, Füllstandssensor)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "04e1e1f0-f6ed-4c6f-9921-887d633bf2a7",
              "parent_uuid": "897f9ab9-9b7a-4166-b833-19a0b8c99f44",
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
              "uuid": "87e1b6c9-3855-45e7-b1d5-b475fc94faef",
              "parent_uuid": "897f9ab9-9b7a-4166-b833-19a0b8c99f44",
              "tagName": "td",
              "properties": [
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
                  "uuid": "344fc7cc-f345-4b7a-ac20-ffaecf095d54",
                  "parent_uuid": "87e1b6c9-3855-45e7-b1d5-b475fc94faef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbd0ae70-1cf9-491c-bbeb-7db9dd8c6305",
              "parent_uuid": "897f9ab9-9b7a-4166-b833-19a0b8c99f44",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c9262144-5cc1-4151-8ad7-d1e946f8cd3a",
                  "parent_uuid": "dbd0ae70-1cf9-491c-bbeb-7db9dd8c6305",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad7a03b2-9546-4c7f-a374-d71dc68e15de",
              "parent_uuid": "897f9ab9-9b7a-4166-b833-19a0b8c99f44",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9651b3b1-a54f-4abd-aeb4-c66ec7c03034",
                  "parent_uuid": "ad7a03b2-9546-4c7f-a374-d71dc68e15de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "371e4f22-e0b1-40aa-8676-e80477012ed6",
              "parent_uuid": "897f9ab9-9b7a-4166-b833-19a0b8c99f44",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8772c48b-5060-48e5-8054-d1c8fee8ba84",
                  "parent_uuid": "371e4f22-e0b1-40aa-8676-e80477012ed6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9b775332-8d11-4b90-a0e0-b94b7e8e03b6",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6114fa58-78d3-4a1e-a928-420157b37d92",
              "parent_uuid": "9b775332-8d11-4b90-a0e0-b94b7e8e03b6",
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
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Linearantriebe bei Befüllung Münzrollierer und Schüttgutcontainer prüfen (Bewegungen, Positionierung, Geräusche)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b3c477dd-a49a-449d-b61a-908af9660034",
              "parent_uuid": "9b775332-8d11-4b90-a0e0-b94b7e8e03b6",
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
              "uuid": "41ceb7b2-d5e5-47ba-bd1c-d2d9e2f9278d",
              "parent_uuid": "9b775332-8d11-4b90-a0e0-b94b7e8e03b6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "66619d33-b36c-4155-9a44-f9f9ff818d8e",
                  "parent_uuid": "41ceb7b2-d5e5-47ba-bd1c-d2d9e2f9278d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "200c9d09-6f0a-4776-9417-4179ff253df8",
              "parent_uuid": "9b775332-8d11-4b90-a0e0-b94b7e8e03b6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "da724d72-bd03-4190-b9af-babfcff586e7",
                  "parent_uuid": "200c9d09-6f0a-4776-9417-4179ff253df8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1414a09-29a2-4ca2-9bb3-1795c341ec16",
              "parent_uuid": "9b775332-8d11-4b90-a0e0-b94b7e8e03b6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "86308120-de62-463b-8bd9-127f73ce5854",
                  "parent_uuid": "e1414a09-29a2-4ca2-9bb3-1795c341ec16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "954999d1-a3fa-4698-bcc5-a10ed4fbeac3",
              "parent_uuid": "9b775332-8d11-4b90-a0e0-b94b7e8e03b6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7cfb4eee-7bd5-4019-99e8-36c7e6ab80d4",
                  "parent_uuid": "954999d1-a3fa-4698-bcc5-a10ed4fbeac3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d763622b-7c4a-4f3d-8ba5-c1f00e8c78a5",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d748a62d-622d-40ec-b2df-720f9764d64b",
              "parent_uuid": "d763622b-7c4a-4f3d-8ba5-c1f00e8c78a5",
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
                  "70"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand der zwei Pneumatikeinheiten kontrollieren<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fba4215a-02c2-4f53-8a24-e2fa5d714c7c",
              "parent_uuid": "d763622b-7c4a-4f3d-8ba5-c1f00e8c78a5",
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
              "uuid": "e45e8d81-5a65-47cc-8082-e9b916bb9a5b",
              "parent_uuid": "d763622b-7c4a-4f3d-8ba5-c1f00e8c78a5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5eb942fd-4bd4-48cd-b47f-dc2ce43f5f72",
                  "parent_uuid": "e45e8d81-5a65-47cc-8082-e9b916bb9a5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24ad82fb-8d3c-4999-9bd5-647d62697d51",
              "parent_uuid": "d763622b-7c4a-4f3d-8ba5-c1f00e8c78a5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3e3ad2c9-3822-461f-9cac-b4e95da02926",
                  "parent_uuid": "24ad82fb-8d3c-4999-9bd5-647d62697d51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad03b600-e0c4-4271-bfdd-ae726103b49e",
              "parent_uuid": "d763622b-7c4a-4f3d-8ba5-c1f00e8c78a5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0a9b6891-1818-4a4b-bf3a-17a8669579f2",
                  "parent_uuid": "ad03b600-e0c4-4271-bfdd-ae726103b49e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c5478c5-8fb7-486f-a272-183b07d4a6de",
              "parent_uuid": "d763622b-7c4a-4f3d-8ba5-c1f00e8c78a5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4eff28e3-239e-444b-977c-d9cbfb82b06a",
                  "parent_uuid": "0c5478c5-8fb7-486f-a272-183b07d4a6de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ecba7a75-c456-4fa5-9267-cca7d116f7e2",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c72f44e-7cba-4def-8dd7-6e58116a896c",
              "parent_uuid": "ecba7a75-c456-4fa5-9267-cca7d116f7e2",
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
                  "73"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Mechanische Kontrolle der pneumatischen Stopper, Zentrierer, Abschieber bei Münzverpacker prüfen<br>- Bewegungsgeschwindigkeit, Druck<br>- Endanschlag</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9cebb3f2-3e11-4d39-939c-4d94d4d82fbf",
              "parent_uuid": "ecba7a75-c456-4fa5-9267-cca7d116f7e2",
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
              "uuid": "55a45d8d-4b8a-4fbe-a688-a6134790c115",
              "parent_uuid": "ecba7a75-c456-4fa5-9267-cca7d116f7e2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9d128d97-3d99-45fe-b3ee-53b96e5a6816",
                  "parent_uuid": "55a45d8d-4b8a-4fbe-a688-a6134790c115",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31d46a4c-a257-4d48-9e1c-137391c7be85",
              "parent_uuid": "ecba7a75-c456-4fa5-9267-cca7d116f7e2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e2ede74e-3f8a-4e03-8bfa-bbf83ab92556",
                  "parent_uuid": "31d46a4c-a257-4d48-9e1c-137391c7be85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dae65d0f-cc23-4430-a266-a96539711e61",
              "parent_uuid": "ecba7a75-c456-4fa5-9267-cca7d116f7e2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "740e8117-5862-479d-9aeb-494ca1e42d75",
                  "parent_uuid": "dae65d0f-cc23-4430-a266-a96539711e61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d4c153f-4c4a-4ad1-a7c3-c7dacfe5524f",
              "parent_uuid": "ecba7a75-c456-4fa5-9267-cca7d116f7e2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1fb5aa62-b02c-4535-afe2-1d6eeeeccaae",
                  "parent_uuid": "7d4c153f-4c4a-4ad1-a7c3-c7dacfe5524f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2f215a37-1f98-4131-afe5-3d9bbddfe705",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "539cf596-6432-4a7a-b3a8-18c08ff5fb7e",
              "parent_uuid": "2f215a37-1f98-4131-afe5-3d9bbddfe705",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "611cfb8d-519e-4dad-8217-4dbca2d80db6",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3d13ab43-4385-465e-947a-3190e9d168a5",
              "parent_uuid": "611cfb8d-519e-4dad-8217-4dbca2d80db6",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "170106cb-7c74-4bd3-801c-162998b72fc7",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "374bddc4-9f81-4661-84fd-8b9607e109d3",
              "parent_uuid": "170106cb-7c74-4bd3-801c-162998b72fc7",
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
                  "72"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kartonverdichter, Wasserstopp Schlauchplatzsicherung prüfen.<br>-Wasserhahn bei Kartonverdichter schliessen<br>-Wasser Auffanggefäss unter Wasserhahn stellen<br>-Wasserhahn sprunghaft voll öffnen. </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b7dbea18-6d40-499a-a8f3-fc2c6498f38e",
              "parent_uuid": "170106cb-7c74-4bd3-801c-162998b72fc7",
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
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "86e6a288-64ae-42e3-b9da-ea64c1d86305",
              "parent_uuid": "170106cb-7c74-4bd3-801c-162998b72fc7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8a12d0c0-96fe-433e-94a9-098bbc20e4e6",
                  "parent_uuid": "86e6a288-64ae-42e3-b9da-ea64c1d86305",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "884a286b-1aaf-4dfe-ba04-757232ac5efd",
              "parent_uuid": "170106cb-7c74-4bd3-801c-162998b72fc7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "626f16bb-b6ac-4403-92ad-3520e6820e04",
                  "parent_uuid": "884a286b-1aaf-4dfe-ba04-757232ac5efd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63213274-b52f-473a-b665-031b5aea3079",
              "parent_uuid": "170106cb-7c74-4bd3-801c-162998b72fc7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "745d92b6-8a3e-4d92-94e6-ea61d85e73b2",
                  "parent_uuid": "63213274-b52f-473a-b665-031b5aea3079",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0362b84-ca1a-4d4f-9933-55168c582aaa",
              "parent_uuid": "170106cb-7c74-4bd3-801c-162998b72fc7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6e79836d-1717-428d-b707-88353782ac62",
                  "parent_uuid": "d0362b84-ca1a-4d4f-9933-55168c582aaa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c38e8a5-bf3e-4842-bd37-fb00cb6b0fbc",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e38b8149-6ce1-44ea-a3d6-b315d753a5c9",
              "parent_uuid": "6c38e8a5-bf3e-4842-bd37-fb00cb6b0fbc",
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
              "innerHtml": "\r\n                    <span>Filtermatten an den Schaltschränken bei starker Verschmutzung austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "609c4e0a-8f89-4005-ae76-f32a6e409660",
              "parent_uuid": "6c38e8a5-bf3e-4842-bd37-fb00cb6b0fbc",
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
              "uuid": "d6995929-36d6-4738-9869-15300605d610",
              "parent_uuid": "6c38e8a5-bf3e-4842-bd37-fb00cb6b0fbc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cebe4b71-622c-4c9d-b99f-169a4059eda4",
                  "parent_uuid": "d6995929-36d6-4738-9869-15300605d610",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d3fb670-325e-407d-ade8-4248b313ee03",
              "parent_uuid": "6c38e8a5-bf3e-4842-bd37-fb00cb6b0fbc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fbe885dc-2cd2-4d00-918a-26675435a12f",
                  "parent_uuid": "9d3fb670-325e-407d-ade8-4248b313ee03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b662eaab-0efb-42dc-bd93-838ba9c51e06",
              "parent_uuid": "6c38e8a5-bf3e-4842-bd37-fb00cb6b0fbc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cd665ac4-6fff-4c4c-873c-efcca9f9fd81",
                  "parent_uuid": "b662eaab-0efb-42dc-bd93-838ba9c51e06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2833ea82-de58-4fe9-bb32-4ae23f16503a",
              "parent_uuid": "6c38e8a5-bf3e-4842-bd37-fb00cb6b0fbc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7eb4454e-3a90-4846-83b5-294e583b7078",
                  "parent_uuid": "2833ea82-de58-4fe9-bb32-4ae23f16503a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35fafc9d-319c-4eb6-a558-e0559cd614c5",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30943f61-c707-424d-b527-0dc71528be9f",
              "parent_uuid": "35fafc9d-319c-4eb6-a558-e0559cd614c5",
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
              "innerHtml": "\r\n                    <span>Sensoren mit trockenem, fusselfreien Tuch reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0a48f226-77a9-45ad-a04b-96d32db64d87",
              "parent_uuid": "35fafc9d-319c-4eb6-a558-e0559cd614c5",
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
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5771827e-5bc4-42a2-9d9c-7c7faafc65e4",
              "parent_uuid": "35fafc9d-319c-4eb6-a558-e0559cd614c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b0cd4b57-6f15-4ff4-b8a8-72b9e71bf7a4",
                  "parent_uuid": "5771827e-5bc4-42a2-9d9c-7c7faafc65e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f77e0de1-e3b2-4b30-9238-881c538e3a38",
              "parent_uuid": "35fafc9d-319c-4eb6-a558-e0559cd614c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d04f8c72-5137-41f4-a98f-cc0cbb1997af",
                  "parent_uuid": "f77e0de1-e3b2-4b30-9238-881c538e3a38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5529e5fd-e9ba-407b-9a72-f1fd22638486",
              "parent_uuid": "35fafc9d-319c-4eb6-a558-e0559cd614c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c5bd6069-b952-4703-89a1-7fcacf626bdf",
                  "parent_uuid": "5529e5fd-e9ba-407b-9a72-f1fd22638486",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d9b06b6-1a59-4735-9a71-cb74de89ee06",
              "parent_uuid": "35fafc9d-319c-4eb6-a558-e0559cd614c5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0fa0a222-d468-4e3a-973a-365fa853e434",
                  "parent_uuid": "3d9b06b6-1a59-4735-9a71-cb74de89ee06",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "48dab0a6-7d18-445d-ba9b-d01f8e24aee1",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fad85c91-4bed-4079-a852-9d8b8a4b2133",
              "parent_uuid": "48dab0a6-7d18-445d-ba9b-d01f8e24aee1",
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
              "innerHtml": "\r\n                    <span>Förderstrecken reinigen (Münzablagerungen, Papierresten)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7293ab9c-d543-4125-8fe9-0649ce020c6f",
              "parent_uuid": "48dab0a6-7d18-445d-ba9b-d01f8e24aee1",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "de502b77-5e31-4200-9eb2-b3f0bf0930bf",
              "parent_uuid": "48dab0a6-7d18-445d-ba9b-d01f8e24aee1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "09aa9ace-d135-422d-b4e0-2116a06e04d7",
                  "parent_uuid": "de502b77-5e31-4200-9eb2-b3f0bf0930bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f012b01-4b99-4c76-bfa5-3f2d1ff421ef",
              "parent_uuid": "48dab0a6-7d18-445d-ba9b-d01f8e24aee1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1a3366ae-c89e-4702-a022-71463836c3c2",
                  "parent_uuid": "1f012b01-4b99-4c76-bfa5-3f2d1ff421ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78c9a031-df31-403d-a5a5-3728b05069de",
              "parent_uuid": "48dab0a6-7d18-445d-ba9b-d01f8e24aee1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "acacf1fe-5884-4a79-9569-7b5d89b3b499",
                  "parent_uuid": "78c9a031-df31-403d-a5a5-3728b05069de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "372547c4-7aff-4cae-9b50-4437831fdd4e",
              "parent_uuid": "48dab0a6-7d18-445d-ba9b-d01f8e24aee1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "17c33dc5-2673-4128-8c65-9c7248fcd68c",
                  "parent_uuid": "372547c4-7aff-4cae-9b50-4437831fdd4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a94889f-6d6c-48c9-952c-5521db81ae58",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20ae5661-ef60-4cd1-8111-390661d5f687",
              "parent_uuid": "9a94889f-6d6c-48c9-952c-5521db81ae58",
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
              "innerHtml": "\r\n                    <span>Roboterbereiche von Roboter 1-5 von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f6c2ed5d-375d-4c1b-bfcb-7c30f0f36467",
              "parent_uuid": "9a94889f-6d6c-48c9-952c-5521db81ae58",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "79285ac2-efc8-4a78-b6ee-88d7bf142a73",
              "parent_uuid": "9a94889f-6d6c-48c9-952c-5521db81ae58",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dd69615b-9249-4539-898c-c23c6e5c26cd",
                  "parent_uuid": "79285ac2-efc8-4a78-b6ee-88d7bf142a73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cdea1a9-2a24-475a-9c48-ac8282fd73fa",
              "parent_uuid": "9a94889f-6d6c-48c9-952c-5521db81ae58",
              "tagName": "td",
              "properties": [
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
                  "uuid": "49fae5ab-ccc9-4aaa-a636-6ac48c54a31c",
                  "parent_uuid": "4cdea1a9-2a24-475a-9c48-ac8282fd73fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7004ec3d-61e4-476f-bc63-97e3c7cf7a2e",
              "parent_uuid": "9a94889f-6d6c-48c9-952c-5521db81ae58",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c31f77c5-3919-40d0-ba47-3bb5c8747257",
                  "parent_uuid": "7004ec3d-61e4-476f-bc63-97e3c7cf7a2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c5b7d9a-82ac-4498-a321-cd98d9e782b4",
              "parent_uuid": "9a94889f-6d6c-48c9-952c-5521db81ae58",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9372e48d-e720-46a4-b133-49094dc4d4d1",
                  "parent_uuid": "7c5b7d9a-82ac-4498-a321-cd98d9e782b4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7dd558a0-10d0-4b01-aeda-d21e68a773ac",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2cb5f5c2-6fde-46e9-a84c-3c458266dcac",
              "parent_uuid": "7dd558a0-10d0-4b01-aeda-d21e68a773ac",
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
              "innerHtml": "\r\n                    <span>Alle drei Münzrollierer von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "357a5247-c243-4fa0-a149-7c7f061d209f",
              "parent_uuid": "7dd558a0-10d0-4b01-aeda-d21e68a773ac",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c7242c2c-77f0-4768-b195-aa2ccb291364",
              "parent_uuid": "7dd558a0-10d0-4b01-aeda-d21e68a773ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e7cfbb10-ec8a-4ecc-afc6-fe57f1795941",
                  "parent_uuid": "c7242c2c-77f0-4768-b195-aa2ccb291364",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0af925e-81ff-464a-884b-60aa9218931b",
              "parent_uuid": "7dd558a0-10d0-4b01-aeda-d21e68a773ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6dc99019-be5f-4782-aac8-7fff9bb73ba4",
                  "parent_uuid": "c0af925e-81ff-464a-884b-60aa9218931b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77bef338-479d-42ad-9be9-ebf3a6651372",
              "parent_uuid": "7dd558a0-10d0-4b01-aeda-d21e68a773ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6f55336d-5ee6-484d-ab1c-ec2d9ee1e6a9",
                  "parent_uuid": "77bef338-479d-42ad-9be9-ebf3a6651372",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a33c6dd-2431-468a-86a3-9d0cd40c6b48",
              "parent_uuid": "7dd558a0-10d0-4b01-aeda-d21e68a773ac",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ecef8d55-7065-4d92-9813-9b41d9f357ce",
                  "parent_uuid": "2a33c6dd-2431-468a-86a3-9d0cd40c6b48",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cad44c20-58bf-4783-b938-370a67ffcbe4",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08ae47ce-3763-4957-a23c-4b04a880be35",
              "parent_uuid": "cad44c20-58bf-4783-b938-370a67ffcbe4",
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
              "innerHtml": "\r\n                    <span>Kartonsverschliesser von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "25c322fc-2127-418e-b98f-b71735fb62fb",
              "parent_uuid": "cad44c20-58bf-4783-b938-370a67ffcbe4",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d939a5e1-3838-4963-879c-544b5cdd08bc",
              "parent_uuid": "cad44c20-58bf-4783-b938-370a67ffcbe4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e116aef8-09b7-4dba-9b21-5fc3bcc01607",
                  "parent_uuid": "d939a5e1-3838-4963-879c-544b5cdd08bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bfec28a7-af2a-4cb1-aaa2-152f147c07ae",
              "parent_uuid": "cad44c20-58bf-4783-b938-370a67ffcbe4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b17da12e-8105-4970-8f6e-566f8b22d590",
                  "parent_uuid": "bfec28a7-af2a-4cb1-aaa2-152f147c07ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd7ee23f-5ccf-4a3e-8b0e-94a00ac04675",
              "parent_uuid": "cad44c20-58bf-4783-b938-370a67ffcbe4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "88727b97-075a-4f8b-8c0a-59632471c114",
                  "parent_uuid": "cd7ee23f-5ccf-4a3e-8b0e-94a00ac04675",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5792fdc0-b4ce-4963-993a-d5bef20d94ea",
              "parent_uuid": "cad44c20-58bf-4783-b938-370a67ffcbe4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cb88df06-de3f-4efd-a35c-76cbcf122eaf",
                  "parent_uuid": "5792fdc0-b4ce-4963-993a-d5bef20d94ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c9bdff2d-8819-49db-bccc-97f2011294da",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38d67a61-f91e-4839-a9c9-f6ad1590513d",
              "parent_uuid": "c9bdff2d-8819-49db-bccc-97f2011294da",
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
              "innerHtml": "\r\n                    <span>Bereich der Strapex Bindegeräte von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "be1e9aa9-8bad-4c73-87ab-61ac02aca3f0",
              "parent_uuid": "c9bdff2d-8819-49db-bccc-97f2011294da",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fee9378b-e5be-473f-a8bc-6631a0ee3422",
              "parent_uuid": "c9bdff2d-8819-49db-bccc-97f2011294da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c74ab0df-1510-4367-a760-a5aaf29e5fcd",
                  "parent_uuid": "fee9378b-e5be-473f-a8bc-6631a0ee3422",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9c01503-f4b2-4e54-9b54-be913a49be80",
              "parent_uuid": "c9bdff2d-8819-49db-bccc-97f2011294da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea81fe1f-4b91-4f11-93e6-8c65a808d168",
                  "parent_uuid": "f9c01503-f4b2-4e54-9b54-be913a49be80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e75fa101-8a4a-46d5-a03b-aa683f4405e6",
              "parent_uuid": "c9bdff2d-8819-49db-bccc-97f2011294da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "57d7b535-a34b-4b85-a25a-1c0627e1c7ed",
                  "parent_uuid": "e75fa101-8a4a-46d5-a03b-aa683f4405e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91d297a9-9213-4bfe-8e9c-f558e7a0ec7b",
              "parent_uuid": "c9bdff2d-8819-49db-bccc-97f2011294da",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7d6cf743-bc77-41d5-8e3a-560a619c6ae1",
                  "parent_uuid": "91d297a9-9213-4bfe-8e9c-f558e7a0ec7b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38ab33ff-d856-4a84-acad-fa826e1224cf",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3e774f1a-8228-49b0-85f4-103bb31e6bd8",
              "parent_uuid": "38ab33ff-d856-4a84-acad-fa826e1224cf",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "f71a4c82-7a46-4ece-b942-c94c97e6c3f7",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d3d071e-df04-44da-96b3-f346aa807017",
              "parent_uuid": "f71a4c82-7a46-4ece-b942-c94c97e6c3f7",
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
              "innerHtml": "\r\n                    <span>Etikettierer von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "91a06f76-5a20-4b3c-92a1-f4547c240228",
              "parent_uuid": "f71a4c82-7a46-4ece-b942-c94c97e6c3f7",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "86ec59eb-dbe9-4e0f-8f53-ee6f8a910f01",
              "parent_uuid": "f71a4c82-7a46-4ece-b942-c94c97e6c3f7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f8a95588-61eb-439a-be99-79c6a40d29bb",
                  "parent_uuid": "86ec59eb-dbe9-4e0f-8f53-ee6f8a910f01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a355a570-61ab-4b0d-9673-ae480b982210",
              "parent_uuid": "f71a4c82-7a46-4ece-b942-c94c97e6c3f7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3445b4bd-d6d6-439d-bf07-3447194a26f1",
                  "parent_uuid": "a355a570-61ab-4b0d-9673-ae480b982210",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a3fac34-0449-4528-8a06-8cfe3780c4d6",
              "parent_uuid": "f71a4c82-7a46-4ece-b942-c94c97e6c3f7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7b852a2e-5f07-4fa1-af64-d1828710d3b0",
                  "parent_uuid": "7a3fac34-0449-4528-8a06-8cfe3780c4d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80415d60-e9ed-4b3b-8be1-a42da1b1db66",
              "parent_uuid": "f71a4c82-7a46-4ece-b942-c94c97e6c3f7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4a844f36-aad1-415f-babc-34cef6eb3b15",
                  "parent_uuid": "80415d60-e9ed-4b3b-8be1-a42da1b1db66",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ec7b82f6-6e78-41c0-8834-4c8a087bc07a",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a87fac0-e4df-4d65-ab78-9ce76a29d842",
              "parent_uuid": "ec7b82f6-6e78-41c0-8834-4c8a087bc07a",
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
                  "38"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen ob die Daten auf der Datenablage auf dem NAS abgelegt werden, Speicher-platzbelegung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5b332a9e-0f85-434c-8898-f4cecbe1e942",
              "parent_uuid": "ec7b82f6-6e78-41c0-8834-4c8a087bc07a",
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
              "innerHtml": "\r\n                    <span>1M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e6953132-1fda-402a-82d4-395975ffe4c5",
              "parent_uuid": "ec7b82f6-6e78-41c0-8834-4c8a087bc07a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "92f4884b-b99f-4c2a-b66f-8109e9e674ab",
                  "parent_uuid": "e6953132-1fda-402a-82d4-395975ffe4c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2328a0c8-5979-4516-83a1-f990e5dad680",
              "parent_uuid": "ec7b82f6-6e78-41c0-8834-4c8a087bc07a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9a66acda-1fde-4322-a762-b188b7874e90",
                  "parent_uuid": "2328a0c8-5979-4516-83a1-f990e5dad680",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0ed3ee8-2879-4a84-bcd4-a3f6f9391c8b",
              "parent_uuid": "ec7b82f6-6e78-41c0-8834-4c8a087bc07a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7f715b97-3dda-4fa3-99c0-10de7766947b",
                  "parent_uuid": "d0ed3ee8-2879-4a84-bcd4-a3f6f9391c8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42334b6c-c0f2-4706-9609-076860216404",
              "parent_uuid": "ec7b82f6-6e78-41c0-8834-4c8a087bc07a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb998487-4ba5-48ec-96b0-dfdb7060fe68",
                  "parent_uuid": "42334b6c-c0f2-4706-9609-076860216404",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bdb891da-1400-4dfd-b9e4-921dfe3d10be",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c64ee64-b8de-4e3a-8513-9dd5b6f31c14",
              "parent_uuid": "bdb891da-1400-4dfd-b9e4-921dfe3d10be",
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
          "uuid": "f272e563-2bc4-44b0-9247-a7bada232ee1",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06a49bf4-14ba-4174-945f-92950e8030a1",
              "parent_uuid": "f272e563-2bc4-44b0-9247-a7bada232ee1",
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
          "uuid": "6012a45d-1029-4717-a1d6-6223513bf15d",
          "parent_uuid": "b661bdb2-d8fe-4755-a35a-9d7775933066",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26f785f6-3f30-4c03-b7bf-41ca795a4560",
              "parent_uuid": "6012a45d-1029-4717-a1d6-6223513bf15d",
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
                  "uuid": "997e8bac-574c-4650-9ede-5b499ff38824",
                  "parent_uuid": "26f785f6-3f30-4c03-b7bf-41ca795a4560",
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
    ,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS cl_uid 
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
		,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '1F6BEE57-38A8-4B29-9986-BFAD7D107215'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

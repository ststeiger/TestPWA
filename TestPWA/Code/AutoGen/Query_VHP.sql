
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
  "uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
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
      "uuid": "2594fe2a-a3ce-4660-8d07-883a1bfc6718",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
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
      "uuid": "3436e659-513b-4c69-92d0-c38432283db3",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "35"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "d064660e-48dd-4c57-b016-890562063aa1",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
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
      "uuid": "1a968e2b-e474-4c7f-b7dd-361856df6bca",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
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
      "uuid": "5d25f979-0b5d-4bf5-88c7-89d3965a0392",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "80"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "d901c846-2338-4bf5-ba07-97a4504af25f",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
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
      "uuid": "6389f4e0-f260-44fe-ae44-0119b60e7b49",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
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
      "uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
      "parent_uuid": "1c70efbd-f727-4587-b2a8-90846b79b0d0",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "fa1d06a0-5929-44ed-8524-60c4c6da762b",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "uuid": "cb9e2654-ede7-4a03-a139-3df140229b21",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "uuid": "80854b10-f45c-49bb-94b7-ca38c8348a87",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "uuid": "73e6f4c3-88b2-47cc-87c5-e965d8ef5639",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Visuelle Handarbeitsplatz</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1f6fc840-bcd9-4845-b18c-32a0204f17b4",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "0e6f99ad-a65d-4e13-aaf8-65808a877d35",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "227b0dff-ce7f-4f09-9661-b86f90c488d7",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "innerHtml": "\r\n                    <span>Nr.</span>\r\n                ",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "3b5c0473-5ac1-4a9b-92ed-0104f40c7a59",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "sort": 7,
              "lvl": 0
            },
            {
              "uuid": "34747d1d-608f-413d-989d-20e61b2dec05",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "sort": 8,
              "lvl": 0
            },
            {
              "uuid": "48fc3885-a194-438d-bbd6-b79d0240fc4d",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "sort": 9,
              "lvl": 0
            },
            {
              "uuid": "8d34766b-35ef-4340-8114-d89f33ed6e1a",
              "parent_uuid": "1ad7670b-abeb-4d4f-8b27-e4ae1f60480e",
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
              "sort": 10,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "c7656f3c-c30d-4935-b35b-848291be387a",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "3fec8d0b-8431-4412-a8ed-004bd5aa86a7",
              "parent_uuid": "c7656f3c-c30d-4935-b35b-848291be387a",
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
              "uuid": "4ebd8db0-0c35-4262-aee4-350c1770cd7d",
              "parent_uuid": "c7656f3c-c30d-4935-b35b-848291be387a",
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
              "uuid": "1240d07a-262f-4c16-b901-f782bb966b8d",
              "parent_uuid": "c7656f3c-c30d-4935-b35b-848291be387a",
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
              "uuid": "09cc22d2-e8d2-4cee-9e8b-9dd15fa74dc6",
              "parent_uuid": "c7656f3c-c30d-4935-b35b-848291be387a",
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
                  "#EDEDED"
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
          "uuid": "0bb5a0fe-accb-4e32-a3c0-475f8ab5fe00",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "153f2c3f-952d-4d50-bfad-ad8af3cb71a9",
              "parent_uuid": "0bb5a0fe-accb-4e32-a3c0-475f8ab5fe00",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5b8b07d4-bedc-4c63-9c83-22fa1b2b74ff",
              "parent_uuid": "0bb5a0fe-accb-4e32-a3c0-475f8ab5fe00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "max-height: 4cm;"
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
              "uuid": "0084146c-5cb8-4fe3-922b-064912f745f0",
              "parent_uuid": "0bb5a0fe-accb-4e32-a3c0-475f8ab5fe00",
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
              "uuid": "8abf9705-b78c-45a0-b6f2-c8f5b0c99066",
              "parent_uuid": "0bb5a0fe-accb-4e32-a3c0-475f8ab5fe00",
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
              "uuid": "96af4594-22a0-46e4-acb7-49b9d346d3a5",
              "parent_uuid": "0bb5a0fe-accb-4e32-a3c0-475f8ab5fe00",
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
              "uuid": "c8835a8b-c2fe-43d4-8668-40c91a8cb399",
              "parent_uuid": "0bb5a0fe-accb-4e32-a3c0-475f8ab5fe00",
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
          "uuid": "da08af28-f593-469c-aa15-6e7144bf5894",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "77fe61ea-057e-43ac-a8a9-a5ddb31b47a6",
              "parent_uuid": "da08af28-f593-469c-aa15-6e7144bf5894",
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
          "uuid": "ff2b19c7-35fd-4f75-a147-904276c5ece0",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b501143-961b-448c-a301-506de277ff2c",
              "parent_uuid": "ff2b19c7-35fd-4f75-a147-904276c5ece0",
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
              "uuid": "134cfad6-f083-478a-9ecd-bcfa9f8f0438",
              "parent_uuid": "ff2b19c7-35fd-4f75-a147-904276c5ece0",
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
              "uuid": "600fc481-e1a9-45e9-ab0f-661c07daf07f",
              "parent_uuid": "ff2b19c7-35fd-4f75-a147-904276c5ece0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1518be8a-9944-46ff-b20a-e50f6079dfa4",
                  "parent_uuid": "600fc481-e1a9-45e9-ab0f-661c07daf07f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "383e788c-e308-4af8-873c-d734099a3e21",
              "parent_uuid": "ff2b19c7-35fd-4f75-a147-904276c5ece0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "52c34ec6-d520-43fc-8c88-92fc26bf762d",
                  "parent_uuid": "383e788c-e308-4af8-873c-d734099a3e21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0e62805-092b-495a-bae9-4687076b5389",
              "parent_uuid": "ff2b19c7-35fd-4f75-a147-904276c5ece0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "24cbe4d9-619a-40c6-9300-6f5f13e8f786",
                  "parent_uuid": "c0e62805-092b-495a-bae9-4687076b5389",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebdd073c-0684-499b-bfbc-3e1a4d0ce7a0",
              "parent_uuid": "ff2b19c7-35fd-4f75-a147-904276c5ece0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0ebe2dd6-c7bf-42c3-b27a-6c2645f35c47",
                  "parent_uuid": "ebdd073c-0684-499b-bfbc-3e1a4d0ce7a0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f8d9c3d5-625f-42e9-af19-ba8b949291a3",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7562eb8e-1bd8-47b7-aca4-cbcc007ae06d",
              "parent_uuid": "f8d9c3d5-625f-42e9-af19-ba8b949291a3",
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
              "uuid": "8b1e044c-ca73-4e72-af97-7579e807b3a9",
              "parent_uuid": "f8d9c3d5-625f-42e9-af19-ba8b949291a3",
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
              "uuid": "6d3bb295-3a6b-4eef-8dbc-28ad99dad722",
              "parent_uuid": "f8d9c3d5-625f-42e9-af19-ba8b949291a3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ecbfe31a-95eb-486f-a137-34a4a8486c47",
                  "parent_uuid": "6d3bb295-3a6b-4eef-8dbc-28ad99dad722",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "481ce4de-45a6-4a71-ac32-3a1129d52568",
              "parent_uuid": "f8d9c3d5-625f-42e9-af19-ba8b949291a3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1f6fb819-ce5b-4d7e-89cb-daeef5c5d07a",
                  "parent_uuid": "481ce4de-45a6-4a71-ac32-3a1129d52568",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ad5f48e-990b-4702-b52a-ce0a7484171a",
              "parent_uuid": "f8d9c3d5-625f-42e9-af19-ba8b949291a3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7f0db065-52a1-4607-ad46-44019f704b07",
                  "parent_uuid": "7ad5f48e-990b-4702-b52a-ce0a7484171a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42823606-f8d2-403b-8c95-29322abe1c64",
              "parent_uuid": "f8d9c3d5-625f-42e9-af19-ba8b949291a3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ecd5374e-7c56-4ea1-831e-f2bb373f83d0",
                  "parent_uuid": "42823606-f8d2-403b-8c95-29322abe1c64",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ce2298a9-d7a0-4e4e-98f2-b753f86c6e07",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7041915-6ccf-472d-97f3-2db5e9ebc42f",
              "parent_uuid": "ce2298a9-d7a0-4e4e-98f2-b753f86c6e07",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Andeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "78b739da-0ea0-4b06-a87a-916231ca30c7",
              "parent_uuid": "ce2298a9-d7a0-4e4e-98f2-b753f86c6e07",
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
              "uuid": "2757b75e-3de6-4fbc-8991-fd9d9e06690b",
              "parent_uuid": "ce2298a9-d7a0-4e4e-98f2-b753f86c6e07",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1b6dfb59-71b7-4572-a5d8-6751a8997078",
                  "parent_uuid": "2757b75e-3de6-4fbc-8991-fd9d9e06690b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7474dd58-15e4-4ddb-8594-2ff94f78a879",
              "parent_uuid": "ce2298a9-d7a0-4e4e-98f2-b753f86c6e07",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ab400d44-51df-43a9-af34-e96318aba80e",
                  "parent_uuid": "7474dd58-15e4-4ddb-8594-2ff94f78a879",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88e5b388-bcee-4653-a209-923e772e54dc",
              "parent_uuid": "ce2298a9-d7a0-4e4e-98f2-b753f86c6e07",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5862d2dc-7a3e-496b-b621-7c5a313a9e20",
                  "parent_uuid": "88e5b388-bcee-4653-a209-923e772e54dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15a2b832-fb09-4419-a39b-68f2d48f8e0a",
              "parent_uuid": "ce2298a9-d7a0-4e4e-98f2-b753f86c6e07",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e5420e6f-6f23-4dff-bfd6-e5a05282bec1",
                  "parent_uuid": "15a2b832-fb09-4419-a39b-68f2d48f8e0a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "647fe244-59fd-48e9-b083-43e8a0d1bc8c",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cde53e36-c3c0-4b46-8dd9-51bba6456f58",
              "parent_uuid": "647fe244-59fd-48e9-b083-43e8a0d1bc8c",
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
              "uuid": "a8add852-103e-4a59-9b2f-4f1af1ad368a",
              "parent_uuid": "647fe244-59fd-48e9-b083-43e8a0d1bc8c",
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
              "innerHtml": "\r\n                    <span>2J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "97d7162c-a1c9-4928-8e65-847c82a0460c",
              "parent_uuid": "647fe244-59fd-48e9-b083-43e8a0d1bc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c5949b47-0dea-4bcd-a252-dee0de9b30b5",
                  "parent_uuid": "97d7162c-a1c9-4928-8e65-847c82a0460c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "842f5386-75f9-4015-baa4-2dde92c1d41c",
              "parent_uuid": "647fe244-59fd-48e9-b083-43e8a0d1bc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5d12543a-6c76-42e2-bb90-21332dcd4400",
                  "parent_uuid": "842f5386-75f9-4015-baa4-2dde92c1d41c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eab078c1-7569-4abd-a38a-533135925a4e",
              "parent_uuid": "647fe244-59fd-48e9-b083-43e8a0d1bc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1baed542-46dc-4186-82b1-170a7031673a",
                  "parent_uuid": "eab078c1-7569-4abd-a38a-533135925a4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6c94be2-edc9-4507-b042-a3a123b0cc44",
              "parent_uuid": "647fe244-59fd-48e9-b083-43e8a0d1bc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea6655c6-bb20-4ea3-af9c-4fe220f0d879",
                  "parent_uuid": "b6c94be2-edc9-4507-b042-a3a123b0cc44",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a654d2dc-9136-4049-8d5e-12498753017c",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ba668ed-b19e-4766-bbbd-082eaac0e189",
              "parent_uuid": "a654d2dc-9136-4049-8d5e-12498753017c",
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
              "uuid": "e049cd25-46a9-4e84-ae6a-aec3c271e4a9",
              "parent_uuid": "a654d2dc-9136-4049-8d5e-12498753017c",
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
              "uuid": "b513a5c8-14cd-4a49-bf52-29b97bfe92fe",
              "parent_uuid": "a654d2dc-9136-4049-8d5e-12498753017c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7a73dc12-80a4-4241-b578-bea22008d92d",
                  "parent_uuid": "b513a5c8-14cd-4a49-bf52-29b97bfe92fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30cdc9c7-d343-4c6f-b8e9-d7bdbfbba4c2",
              "parent_uuid": "a654d2dc-9136-4049-8d5e-12498753017c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f29adf53-1eb0-4b8d-ad4a-8fca3d28c999",
                  "parent_uuid": "30cdc9c7-d343-4c6f-b8e9-d7bdbfbba4c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4984782-6d40-4ae5-9ff7-3d76bf427d2c",
              "parent_uuid": "a654d2dc-9136-4049-8d5e-12498753017c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1869306b-a918-4b48-aea4-973a7f3785a0",
                  "parent_uuid": "b4984782-6d40-4ae5-9ff7-3d76bf427d2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a94f70aa-4837-415e-897a-9aca1df990df",
              "parent_uuid": "a654d2dc-9136-4049-8d5e-12498753017c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2d413bff-bc14-4469-8374-8de8754c0134",
                  "parent_uuid": "a94f70aa-4837-415e-897a-9aca1df990df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b20c4d26-b7d2-4c77-97eb-baa39b134e9e",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "838551d8-e1d2-4c5e-abe8-41fba503e870",
              "parent_uuid": "b20c4d26-b7d2-4c77-97eb-baa39b134e9e",
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
              "uuid": "7acb50a4-12c8-48e0-b9a0-a8591657f879",
              "parent_uuid": "b20c4d26-b7d2-4c77-97eb-baa39b134e9e",
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
              "uuid": "22df6167-54b9-484a-ab22-78c5b8cbe9b4",
              "parent_uuid": "b20c4d26-b7d2-4c77-97eb-baa39b134e9e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bf9bb996-fce9-4294-af2d-6c0e23e07275",
                  "parent_uuid": "22df6167-54b9-484a-ab22-78c5b8cbe9b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2ccf043-d154-45b6-b060-b74eced47af4",
              "parent_uuid": "b20c4d26-b7d2-4c77-97eb-baa39b134e9e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eb83c6cd-c3bb-4e83-8380-931059da1c0c",
                  "parent_uuid": "e2ccf043-d154-45b6-b060-b74eced47af4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e29b592-d9da-4b57-a0d1-64cfd997481a",
              "parent_uuid": "b20c4d26-b7d2-4c77-97eb-baa39b134e9e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e159346e-57d0-4552-bdb7-b0588c92b249",
                  "parent_uuid": "7e29b592-d9da-4b57-a0d1-64cfd997481a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d04d49f-cc18-4a8e-993f-0e1751cc46fc",
              "parent_uuid": "b20c4d26-b7d2-4c77-97eb-baa39b134e9e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3f408efb-c83f-4b46-9b81-b0a37b382d00",
                  "parent_uuid": "0d04d49f-cc18-4a8e-993f-0e1751cc46fc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "236a6799-d47a-4acc-a0b6-111d15ae784d",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61cd225b-104a-4ee1-b05e-547c201e143d",
              "parent_uuid": "236a6799-d47a-4acc-a0b6-111d15ae784d",
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
              "uuid": "63da8257-e655-44f7-b8c5-81a7f993490b",
              "parent_uuid": "236a6799-d47a-4acc-a0b6-111d15ae784d",
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
              "uuid": "89ab5b65-4fca-4b9a-87e0-62f7403bf3f7",
              "parent_uuid": "236a6799-d47a-4acc-a0b6-111d15ae784d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "805fd7fd-66c5-4b00-98a1-05b0c0002aaf",
                  "parent_uuid": "89ab5b65-4fca-4b9a-87e0-62f7403bf3f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "806343e7-7d8b-4efd-ac5f-6331e749708c",
              "parent_uuid": "236a6799-d47a-4acc-a0b6-111d15ae784d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d418cbdb-e69c-4f80-a191-0a60a014fb3d",
                  "parent_uuid": "806343e7-7d8b-4efd-ac5f-6331e749708c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa4d1117-4a77-460c-9a82-d8fec4afa5d3",
              "parent_uuid": "236a6799-d47a-4acc-a0b6-111d15ae784d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "94c43cb9-da4b-44b0-8a89-09cd9652c46e",
                  "parent_uuid": "aa4d1117-4a77-460c-9a82-d8fec4afa5d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec6b6d25-d0b9-4b1e-af5b-9368ead3e521",
              "parent_uuid": "236a6799-d47a-4acc-a0b6-111d15ae784d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b36c92ff-3817-465f-b01b-e4b61b654974",
                  "parent_uuid": "ec6b6d25-d0b9-4b1e-af5b-9368ead3e521",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "acbd94f8-1468-4a91-a20c-133d84f10f1a",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8048fd26-2343-4093-869d-88d0bf8b9ba9",
              "parent_uuid": "acbd94f8-1468-4a91-a20c-133d84f10f1a",
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
              "innerHtml": "\r\n                    <span>Bei den zwei Antriebsmotoren die Laufruhe, Geräuschentwicklung und Lagerung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "679d1a82-da05-4c65-b5f6-efe38fe96336",
              "parent_uuid": "acbd94f8-1468-4a91-a20c-133d84f10f1a",
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
              "uuid": "0361a4f0-d766-4e4c-8ecd-95556fd1c76e",
              "parent_uuid": "acbd94f8-1468-4a91-a20c-133d84f10f1a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1baf8228-b19c-41e3-848c-7824b9176d77",
                  "parent_uuid": "0361a4f0-d766-4e4c-8ecd-95556fd1c76e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bf6e071-1aa1-4bae-9913-34bf7d3dd1dc",
              "parent_uuid": "acbd94f8-1468-4a91-a20c-133d84f10f1a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f47a7dc4-e1b4-422f-af61-f155878adb11",
                  "parent_uuid": "9bf6e071-1aa1-4bae-9913-34bf7d3dd1dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0169f68-6bc9-43ef-9061-3b63a665f5ab",
              "parent_uuid": "acbd94f8-1468-4a91-a20c-133d84f10f1a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6603866a-e0fb-4bbf-a2f8-a4ed125c98f1",
                  "parent_uuid": "e0169f68-6bc9-43ef-9061-3b63a665f5ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11053d69-73af-4607-9b04-3c0e209fd30f",
              "parent_uuid": "acbd94f8-1468-4a91-a20c-133d84f10f1a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2f567ce9-bd6b-4533-8ab2-3df2601a8b74",
                  "parent_uuid": "11053d69-73af-4607-9b04-3c0e209fd30f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "92e6d25e-da1f-4eaf-9b89-bcf8e91676a1",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "901f8cb0-fa68-4d01-bd46-7bf90058b5a0",
              "parent_uuid": "92e6d25e-da1f-4eaf-9b89-bcf8e91676a1",
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "949b1573-5fff-4199-ba31-95d71fd4da5e",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9c530d8-bc62-475e-a857-de1220b88b91",
              "parent_uuid": "949b1573-5fff-4199-ba31-95d71fd4da5e",
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
              "innerHtml": "\r\n                    <span>Reinigung des HAP mittels Staubsauger und Reinigungsmittel u.a. Bremsenreiniger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1628a9dc-e07c-49fe-9712-2541e66b8b39",
              "parent_uuid": "949b1573-5fff-4199-ba31-95d71fd4da5e",
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
              "uuid": "ea372ad8-316f-496f-8b68-c4c2b40568b8",
              "parent_uuid": "949b1573-5fff-4199-ba31-95d71fd4da5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2611a057-0ae0-4f48-bce5-5043ee26c630",
                  "parent_uuid": "ea372ad8-316f-496f-8b68-c4c2b40568b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a9cb501-2ce3-4799-b5c5-7f33dbcbd356",
              "parent_uuid": "949b1573-5fff-4199-ba31-95d71fd4da5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b7fb04d-3df8-42f2-a158-13bfeb374b74",
                  "parent_uuid": "5a9cb501-2ce3-4799-b5c5-7f33dbcbd356",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c54480ee-3a5d-4629-aa2b-3d6f27c8bf12",
              "parent_uuid": "949b1573-5fff-4199-ba31-95d71fd4da5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4a4254fe-d3d2-4253-bc5e-79662fcab203",
                  "parent_uuid": "c54480ee-3a5d-4629-aa2b-3d6f27c8bf12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4279356-f6f3-4402-9ef7-66cb3ed04f2a",
              "parent_uuid": "949b1573-5fff-4199-ba31-95d71fd4da5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f3fa77b8-5ca1-408a-82b6-864b55679633",
                  "parent_uuid": "f4279356-f6f3-4402-9ef7-66cb3ed04f2a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e69c08a5-f717-4eda-9bfb-c3b3061289d6",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a69908bd-7494-4d7e-aba5-d06718eaa617",
              "parent_uuid": "e69c08a5-f717-4eda-9bfb-c3b3061289d6",
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "eb470c17-15fd-4150-9247-c9a87df8800a",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8dda4293-74ac-4095-a72f-88b855579a0b",
              "parent_uuid": "eb470c17-15fd-4150-9247-c9a87df8800a",
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "38be0b54-ad84-4366-9ef3-77655d1eb539",
          "parent_uuid": "34ab33e4-0b59-413b-a022-3a2f04d20b25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be38b098-a361-4b30-86d2-945b1888cefc",
              "parent_uuid": "38be0b54-ad84-4366-9ef3-77655d1eb539",
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
                  "uuid": "7a5d95e9-fc9e-4d91-9aa9-dcdb86739305",
                  "parent_uuid": "be38b098-a361-4b30-86d2-945b1888cefc",
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
          "sort": 16,
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

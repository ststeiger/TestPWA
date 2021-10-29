
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
  "uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "7d91f930-2c1c-4b5d-ac13-29f8e76ab587",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "72070a2d-51f0-46a8-87d4-502165c9aff8",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "b2fc6bc1-c395-4907-8f4f-132a6f3c6197",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "063162d3-c4a3-4b3c-bb8f-b41a8f6aee19",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "502341a7-c8d6-4989-af8a-20388aede7eb",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "0ec269af-0963-4dc1-9f1c-157c36dbbbbd",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "ce833ac8-13b5-46a4-8c10-df09cea034f8",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
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
      "uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
      "parent_uuid": "22384f72-c203-4082-b497-39fb4c69583b",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "c3f8a7ac-0270-4adc-84f8-9236e456f1d5",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a2df276f-058f-49a6-be6b-34a196ad99cd",
              "parent_uuid": "c3f8a7ac-0270-4adc-84f8-9236e456f1d5",
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
              "uuid": "6c6bc5ff-d361-4df3-a15c-e3f690862d6e",
              "parent_uuid": "c3f8a7ac-0270-4adc-84f8-9236e456f1d5",
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
              "uuid": "eb3e3fe7-bfdb-4ea4-8213-71c0b8b9e9d9",
              "parent_uuid": "c3f8a7ac-0270-4adc-84f8-9236e456f1d5",
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
              "uuid": "e3a73e25-dddb-4921-894a-ec45800767e5",
              "parent_uuid": "c3f8a7ac-0270-4adc-84f8-9236e456f1d5",
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
          "uuid": "f396f41e-dab9-40b8-9aad-7db8d4506b86",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5e73597a-2fff-4eed-811e-2a1a8e1121cf",
              "parent_uuid": "f396f41e-dab9-40b8-9aad-7db8d4506b86",
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
              "uuid": "01d21091-1e1b-4131-8957-d597984bf574",
              "parent_uuid": "f396f41e-dab9-40b8-9aad-7db8d4506b86",
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
              "uuid": "854ae8c6-d6ff-485e-8fa9-adca373aacb8",
              "parent_uuid": "f396f41e-dab9-40b8-9aad-7db8d4506b86",
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
              "uuid": "da89a36d-79af-4e5d-a269-f667eb70e07d",
              "parent_uuid": "f396f41e-dab9-40b8-9aad-7db8d4506b86",
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
          "uuid": "57952668-643f-4b49-ac37-914bc71bd77d",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee930b3b-27c5-4460-9216-792446a074d3",
              "parent_uuid": "57952668-643f-4b49-ac37-914bc71bd77d",
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
              "uuid": "66a556b2-38b4-4153-87c3-cd21084e8c1d",
              "parent_uuid": "57952668-643f-4b49-ac37-914bc71bd77d",
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
              "uuid": "2513f0cf-5b99-44fe-8ed8-79b4b442f899",
              "parent_uuid": "57952668-643f-4b49-ac37-914bc71bd77d",
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
              "uuid": "7dbd38f5-bf62-4330-a68a-d4913dc25c3d",
              "parent_uuid": "57952668-643f-4b49-ac37-914bc71bd77d",
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
              "uuid": "b978c2e9-2836-4fe4-a53e-6c6493b285cb",
              "parent_uuid": "57952668-643f-4b49-ac37-914bc71bd77d",
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
              "uuid": "9ea40ff4-d4c7-4017-8d9d-4abd5827f89f",
              "parent_uuid": "57952668-643f-4b49-ac37-914bc71bd77d",
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
          "uuid": "ca0540a5-4f7e-4ace-82bd-2cdf1288057f",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a31b514a-7a44-48c5-904c-411bda2a22f4",
              "parent_uuid": "ca0540a5-4f7e-4ace-82bd-2cdf1288057f",
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
          "uuid": "6f3b4555-b4c9-4a24-a2a8-7da8e57bfda1",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "03e1b009-5357-4373-82b6-c674f9c4bda7",
              "parent_uuid": "6f3b4555-b4c9-4a24-a2a8-7da8e57bfda1",
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
              "uuid": "aba00413-d756-4540-bb44-097688a1c66e",
              "parent_uuid": "6f3b4555-b4c9-4a24-a2a8-7da8e57bfda1",
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
              "uuid": "89b2c113-d0e0-4146-82d6-1292c86dc46a",
              "parent_uuid": "6f3b4555-b4c9-4a24-a2a8-7da8e57bfda1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9f6e3ca-a1b2-42e7-92b5-95a6164d3dd1",
                  "parent_uuid": "89b2c113-d0e0-4146-82d6-1292c86dc46a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "faa6f360-5914-499e-a84f-ea270df5cff6",
              "parent_uuid": "6f3b4555-b4c9-4a24-a2a8-7da8e57bfda1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "beed1439-974c-43dd-8f75-8bca5bff7df5",
                  "parent_uuid": "faa6f360-5914-499e-a84f-ea270df5cff6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d3f83dc-0de5-4303-b3a1-1faa78f84ac1",
              "parent_uuid": "6f3b4555-b4c9-4a24-a2a8-7da8e57bfda1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e316ac72-423b-4a22-a50e-cd68c80bc4ec",
                  "parent_uuid": "6d3f83dc-0de5-4303-b3a1-1faa78f84ac1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "424b91d4-abf1-43cd-92ad-2fa829c98bdd",
              "parent_uuid": "6f3b4555-b4c9-4a24-a2a8-7da8e57bfda1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bed7c840-bda8-435e-a227-dd8afa50d31e",
                  "parent_uuid": "424b91d4-abf1-43cd-92ad-2fa829c98bdd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3d92abe1-970d-44c0-9dd8-c074f7ceb17d",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca9443d1-e22e-46a3-aa4b-69b6e8c08f37",
              "parent_uuid": "3d92abe1-970d-44c0-9dd8-c074f7ceb17d",
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
              "uuid": "2c2225e3-88a8-40c5-a6ff-a14505ecb5f5",
              "parent_uuid": "3d92abe1-970d-44c0-9dd8-c074f7ceb17d",
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
              "uuid": "7dc5c332-07ce-4096-b979-8d33663ad86d",
              "parent_uuid": "3d92abe1-970d-44c0-9dd8-c074f7ceb17d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6cf1f85-541b-4c25-b0bc-05e5813dee7e",
                  "parent_uuid": "7dc5c332-07ce-4096-b979-8d33663ad86d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95d6d5bd-6923-4878-ab93-bf197df6ccbf",
              "parent_uuid": "3d92abe1-970d-44c0-9dd8-c074f7ceb17d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c403f4f-f492-4f89-a424-f7400899d6e5",
                  "parent_uuid": "95d6d5bd-6923-4878-ab93-bf197df6ccbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7204b03-8210-4435-ac0d-6ae755b5cece",
              "parent_uuid": "3d92abe1-970d-44c0-9dd8-c074f7ceb17d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b658ad6-ae26-4417-9008-279975e07664",
                  "parent_uuid": "c7204b03-8210-4435-ac0d-6ae755b5cece",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04963dfc-2dd5-4a9f-b56e-f813c9f73168",
              "parent_uuid": "3d92abe1-970d-44c0-9dd8-c074f7ceb17d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b54d8d70-3d45-4b6e-b2cb-475f97a49f1f",
                  "parent_uuid": "04963dfc-2dd5-4a9f-b56e-f813c9f73168",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d196e6b-2900-4e5c-8b0d-52e2b2f0b13c",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87dce1f3-6a67-4197-ac7a-77d6517f46c9",
              "parent_uuid": "9d196e6b-2900-4e5c-8b0d-52e2b2f0b13c",
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
              "uuid": "eaf412ec-864c-43bd-913c-416ffd9d1907",
              "parent_uuid": "9d196e6b-2900-4e5c-8b0d-52e2b2f0b13c",
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
              "uuid": "dd03390a-c671-4b77-88a0-98fb30d62e2c",
              "parent_uuid": "9d196e6b-2900-4e5c-8b0d-52e2b2f0b13c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac0a000c-915e-40c1-9d1c-29e46007e483",
                  "parent_uuid": "dd03390a-c671-4b77-88a0-98fb30d62e2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e78c053a-e4a2-491b-a4d3-949652c756fa",
              "parent_uuid": "9d196e6b-2900-4e5c-8b0d-52e2b2f0b13c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bd2f0ba-32ab-4903-8a00-4bea65ab800f",
                  "parent_uuid": "e78c053a-e4a2-491b-a4d3-949652c756fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a54c4390-5df3-4370-ac10-6e40b868a594",
              "parent_uuid": "9d196e6b-2900-4e5c-8b0d-52e2b2f0b13c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b33d3927-4e9b-4ac5-855f-020f8af83ac0",
                  "parent_uuid": "a54c4390-5df3-4370-ac10-6e40b868a594",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7c17ec5-1a75-47c7-8aa3-e30f4b85e930",
              "parent_uuid": "9d196e6b-2900-4e5c-8b0d-52e2b2f0b13c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8dc6b341-b859-4252-9762-8c6e7ea62d90",
                  "parent_uuid": "c7c17ec5-1a75-47c7-8aa3-e30f4b85e930",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8d217e76-0fa4-4786-8b44-da1a3eeb116d",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e807423b-7ad4-40fc-923e-322cfe9406e6",
              "parent_uuid": "8d217e76-0fa4-4786-8b44-da1a3eeb116d",
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
              "uuid": "26337336-1df9-4dc2-95d7-f2c81dd0dfe4",
              "parent_uuid": "8d217e76-0fa4-4786-8b44-da1a3eeb116d",
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
              "uuid": "49c5a1fc-7d4d-4fb9-a394-3ccdff9df85f",
              "parent_uuid": "8d217e76-0fa4-4786-8b44-da1a3eeb116d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "850cf882-d5ec-4ad4-9b2f-4dc6cb3577a9",
                  "parent_uuid": "49c5a1fc-7d4d-4fb9-a394-3ccdff9df85f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b949ca4b-942b-4f73-93f4-8febb82f6461",
              "parent_uuid": "8d217e76-0fa4-4786-8b44-da1a3eeb116d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c84dcba2-a2e7-4f1e-879f-a557c434a0bf",
                  "parent_uuid": "b949ca4b-942b-4f73-93f4-8febb82f6461",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe59c57e-a123-405d-adbc-435ce2f77a11",
              "parent_uuid": "8d217e76-0fa4-4786-8b44-da1a3eeb116d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e56bef4d-472c-4261-b32d-81555db4e5d7",
                  "parent_uuid": "fe59c57e-a123-405d-adbc-435ce2f77a11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7655c0d6-daae-4d02-8210-e8c1dde022f6",
              "parent_uuid": "8d217e76-0fa4-4786-8b44-da1a3eeb116d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f09b4a96-a1b2-4c1b-bcec-e4e18f65c1ab",
                  "parent_uuid": "7655c0d6-daae-4d02-8210-e8c1dde022f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5042d462-affd-4e63-bfe5-3b8df6a059b8",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d432b78-98ee-4b94-bd0b-a4907a31b744",
              "parent_uuid": "5042d462-affd-4e63-bfe5-3b8df6a059b8",
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
              "uuid": "fd41bd41-c88c-448d-befd-3f3d793b6ff2",
              "parent_uuid": "5042d462-affd-4e63-bfe5-3b8df6a059b8",
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
              "uuid": "b4a9ae61-de8d-419d-8c64-3520eda5b73f",
              "parent_uuid": "5042d462-affd-4e63-bfe5-3b8df6a059b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a46cabe-2a61-4c65-ae25-d1945686064a",
                  "parent_uuid": "b4a9ae61-de8d-419d-8c64-3520eda5b73f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9583ca77-423d-4561-88bf-657f3608b6e5",
              "parent_uuid": "5042d462-affd-4e63-bfe5-3b8df6a059b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4424cb1-9a32-4681-8bd0-410009497240",
                  "parent_uuid": "9583ca77-423d-4561-88bf-657f3608b6e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e6128ed-f933-49ff-a804-57408e2fe185",
              "parent_uuid": "5042d462-affd-4e63-bfe5-3b8df6a059b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c788c569-9ad3-44ee-9b07-e81f80c6716a",
                  "parent_uuid": "3e6128ed-f933-49ff-a804-57408e2fe185",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a531d8a-7ffe-4f8f-a0f0-326066e44023",
              "parent_uuid": "5042d462-affd-4e63-bfe5-3b8df6a059b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aec34637-2528-4375-ab46-ab562a3bfbb3",
                  "parent_uuid": "9a531d8a-7ffe-4f8f-a0f0-326066e44023",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e7f64e7-eb07-4ac8-93fd-3e1603cded9d",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb1ac951-36e1-4c9a-a40e-e205275a6168",
              "parent_uuid": "4e7f64e7-eb07-4ac8-93fd-3e1603cded9d",
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
              "uuid": "d02685ce-8f0a-4e81-ba60-ee40986c2888",
              "parent_uuid": "4e7f64e7-eb07-4ac8-93fd-3e1603cded9d",
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
              "uuid": "f1cef27c-45ac-4bee-9ba9-896b9a4c4dd2",
              "parent_uuid": "4e7f64e7-eb07-4ac8-93fd-3e1603cded9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68ec063a-f69f-4cbf-8200-1fdb1b82d992",
                  "parent_uuid": "f1cef27c-45ac-4bee-9ba9-896b9a4c4dd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b076bc6-a852-4284-9ed8-0efed6839abc",
              "parent_uuid": "4e7f64e7-eb07-4ac8-93fd-3e1603cded9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1697ee04-2dee-43e6-ada3-d89c16e1d5e3",
                  "parent_uuid": "7b076bc6-a852-4284-9ed8-0efed6839abc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddee1b7f-d5b4-493f-8f26-58eeca436e76",
              "parent_uuid": "4e7f64e7-eb07-4ac8-93fd-3e1603cded9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c44ab9d-5d2c-441d-96f1-6854528a1677",
                  "parent_uuid": "ddee1b7f-d5b4-493f-8f26-58eeca436e76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f99dc7bb-1b22-4ecb-97f3-8474f300f926",
              "parent_uuid": "4e7f64e7-eb07-4ac8-93fd-3e1603cded9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "650e1a95-82f1-455b-a728-923c6797c190",
                  "parent_uuid": "f99dc7bb-1b22-4ecb-97f3-8474f300f926",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "78252a5c-783f-4e24-864e-7633dffce2cc",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ddd82fc6-4cfe-43d9-91b0-47ab3f793da0",
              "parent_uuid": "78252a5c-783f-4e24-864e-7633dffce2cc",
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
              "uuid": "e7922ec9-e534-41bc-b224-f699a38ad200",
              "parent_uuid": "78252a5c-783f-4e24-864e-7633dffce2cc",
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
              "uuid": "1020c559-991c-4e5f-9a44-b86fab677b86",
              "parent_uuid": "78252a5c-783f-4e24-864e-7633dffce2cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de4686e4-66f5-4a4d-83c5-4931aecdf81e",
                  "parent_uuid": "1020c559-991c-4e5f-9a44-b86fab677b86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "603bd127-d956-4361-86b1-a2d883f7621a",
              "parent_uuid": "78252a5c-783f-4e24-864e-7633dffce2cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b846d0a0-8b23-4437-bdc7-e2b92e830659",
                  "parent_uuid": "603bd127-d956-4361-86b1-a2d883f7621a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "948226cb-66b1-42b5-a59d-1f4fc1b847d2",
              "parent_uuid": "78252a5c-783f-4e24-864e-7633dffce2cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42c3e24b-309c-47ce-a506-a735052e1152",
                  "parent_uuid": "948226cb-66b1-42b5-a59d-1f4fc1b847d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c67ca9b7-1c87-4aec-8c98-2a4c48a50f3f",
              "parent_uuid": "78252a5c-783f-4e24-864e-7633dffce2cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae708f0d-ff97-4f93-b907-e4053c78f3ba",
                  "parent_uuid": "c67ca9b7-1c87-4aec-8c98-2a4c48a50f3f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a06a63c7-e8a0-459b-a089-5a496811e9ca",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2ed4f50-167b-4b5b-90d7-5bdf860f3fcf",
              "parent_uuid": "a06a63c7-e8a0-459b-a089-5a496811e9ca",
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
              "uuid": "c53e2b0b-7796-479e-820d-26a53ea696ae",
              "parent_uuid": "a06a63c7-e8a0-459b-a089-5a496811e9ca",
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
              "uuid": "70f95d7c-7bd9-4278-be0d-091994753eb7",
              "parent_uuid": "a06a63c7-e8a0-459b-a089-5a496811e9ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c51cacd-2b02-4dbb-be08-74f1204dbb90",
                  "parent_uuid": "70f95d7c-7bd9-4278-be0d-091994753eb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69c74b14-0221-4877-9962-8f301320049c",
              "parent_uuid": "a06a63c7-e8a0-459b-a089-5a496811e9ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "386df1a1-4ba6-494e-895d-2617fbe60f1e",
                  "parent_uuid": "69c74b14-0221-4877-9962-8f301320049c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5834c43-9aad-48c2-a49f-7902552ec882",
              "parent_uuid": "a06a63c7-e8a0-459b-a089-5a496811e9ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38bca394-a664-4966-932d-320435677a2e",
                  "parent_uuid": "b5834c43-9aad-48c2-a49f-7902552ec882",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4924913-875f-4ff0-a801-1eb34873e40b",
              "parent_uuid": "a06a63c7-e8a0-459b-a089-5a496811e9ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79b707c8-cc90-4bf4-b27d-aa8caa17dc52",
                  "parent_uuid": "f4924913-875f-4ff0-a801-1eb34873e40b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0ad4d065-ade1-44ee-89a7-864dcf3318e7",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5a8073eb-b6dc-40d9-b210-d4c92e6703e5",
              "parent_uuid": "0ad4d065-ade1-44ee-89a7-864dcf3318e7",
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
              "uuid": "38852efe-4b0b-4af2-861e-0faedf464c62",
              "parent_uuid": "0ad4d065-ade1-44ee-89a7-864dcf3318e7",
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
              "uuid": "d56fc9fa-b0b1-4a83-954e-f6aadc340f2b",
              "parent_uuid": "0ad4d065-ade1-44ee-89a7-864dcf3318e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "661b0d49-61d2-4499-9ae4-7a2ad3ce9b6e",
                  "parent_uuid": "d56fc9fa-b0b1-4a83-954e-f6aadc340f2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c086db5c-f5f9-47e2-9fa9-0fc1837d8b9b",
              "parent_uuid": "0ad4d065-ade1-44ee-89a7-864dcf3318e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f6c98a5-3cc4-4172-aee7-6d877117315a",
                  "parent_uuid": "c086db5c-f5f9-47e2-9fa9-0fc1837d8b9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a30e3971-f2ca-49cd-a321-92b4ac821ede",
              "parent_uuid": "0ad4d065-ade1-44ee-89a7-864dcf3318e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "647e5d69-2a52-40c3-8cca-94d9adc15134",
                  "parent_uuid": "a30e3971-f2ca-49cd-a321-92b4ac821ede",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0953075e-772c-483d-b903-52c5298ece12",
              "parent_uuid": "0ad4d065-ade1-44ee-89a7-864dcf3318e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "366251d7-e86b-4afd-9fea-e8e03cd9c9de",
                  "parent_uuid": "0953075e-772c-483d-b903-52c5298ece12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "480542e2-5ab8-4263-b858-725c8480a2b6",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65ec21a8-9f25-4f8b-a804-a2ed0c1892ff",
              "parent_uuid": "480542e2-5ab8-4263-b858-725c8480a2b6",
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
              "uuid": "325e001d-8d7f-4f43-8eb1-4f61421cc230",
              "parent_uuid": "480542e2-5ab8-4263-b858-725c8480a2b6",
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
              "uuid": "2730e1c1-fb99-4589-92bb-f43f7a94f45d",
              "parent_uuid": "480542e2-5ab8-4263-b858-725c8480a2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d4f23b5-b7c8-426e-bbe4-252f190ea96a",
                  "parent_uuid": "2730e1c1-fb99-4589-92bb-f43f7a94f45d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54e163fb-a355-45be-9bc1-842959d04f20",
              "parent_uuid": "480542e2-5ab8-4263-b858-725c8480a2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0778978e-773d-46d6-804a-f06ae2843eb4",
                  "parent_uuid": "54e163fb-a355-45be-9bc1-842959d04f20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d2c030c-c79d-4be8-8c74-4293a9057ad6",
              "parent_uuid": "480542e2-5ab8-4263-b858-725c8480a2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b059eec0-1d19-43b1-9b77-a0e3722f5bf1",
                  "parent_uuid": "5d2c030c-c79d-4be8-8c74-4293a9057ad6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa4a21f3-2130-4f41-9364-5f2333114d07",
              "parent_uuid": "480542e2-5ab8-4263-b858-725c8480a2b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d09cad3b-8125-4c25-8b25-78d616f5493d",
                  "parent_uuid": "fa4a21f3-2130-4f41-9364-5f2333114d07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76765295-085f-4c32-a622-e8f6833cc380",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af69a137-4c0f-43a3-b32a-44f6ff8ee82e",
              "parent_uuid": "76765295-085f-4c32-a622-e8f6833cc380",
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
              "uuid": "863363c7-5bea-4c56-8f9b-ad067f6c5c94",
              "parent_uuid": "76765295-085f-4c32-a622-e8f6833cc380",
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
              "uuid": "29a4fb97-eb50-4448-be89-52a4c714db52",
              "parent_uuid": "76765295-085f-4c32-a622-e8f6833cc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1dadaa49-5772-4ab2-be1b-ec6986695ff9",
                  "parent_uuid": "29a4fb97-eb50-4448-be89-52a4c714db52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52c67554-1a9d-48f6-a7ac-883ddc883a6b",
              "parent_uuid": "76765295-085f-4c32-a622-e8f6833cc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8051bec-4318-49e7-8fab-bcbb3ea3c6ee",
                  "parent_uuid": "52c67554-1a9d-48f6-a7ac-883ddc883a6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e4c15cd-f3d4-4e7a-b201-5358ecc10d78",
              "parent_uuid": "76765295-085f-4c32-a622-e8f6833cc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "953ad01a-7b6f-43b6-898e-d864a0d523f5",
                  "parent_uuid": "6e4c15cd-f3d4-4e7a-b201-5358ecc10d78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b7d067a-f84b-4f8d-b00f-ac6c1a5ce488",
              "parent_uuid": "76765295-085f-4c32-a622-e8f6833cc380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42fbccc8-377f-4fcc-9e76-896a6bb3162e",
                  "parent_uuid": "8b7d067a-f84b-4f8d-b00f-ac6c1a5ce488",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "072795f2-12d6-4436-8159-5afbb59b9954",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8518b43f-2fbd-40fe-bada-0b9c4d9d2940",
              "parent_uuid": "072795f2-12d6-4436-8159-5afbb59b9954",
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
              "uuid": "74c5d431-cb6f-49f9-8b7a-a55eea8e32a1",
              "parent_uuid": "072795f2-12d6-4436-8159-5afbb59b9954",
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
              "uuid": "1ea64665-5413-4dcd-864e-c5f759e17866",
              "parent_uuid": "072795f2-12d6-4436-8159-5afbb59b9954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92607e77-39e0-4a78-b6a3-bcf2b185e5ca",
                  "parent_uuid": "1ea64665-5413-4dcd-864e-c5f759e17866",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e73eeeb7-872c-426f-9e73-5bc45ca0f114",
              "parent_uuid": "072795f2-12d6-4436-8159-5afbb59b9954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27f5a51f-6e76-43c5-90a1-42a4414a5572",
                  "parent_uuid": "e73eeeb7-872c-426f-9e73-5bc45ca0f114",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13c37003-5011-404e-a887-37e1cf64524a",
              "parent_uuid": "072795f2-12d6-4436-8159-5afbb59b9954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e18373b8-dbe2-4fc0-a580-392f4a7d9aec",
                  "parent_uuid": "13c37003-5011-404e-a887-37e1cf64524a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af3b1d52-6356-4ee1-a2e9-c1cdb55930da",
              "parent_uuid": "072795f2-12d6-4436-8159-5afbb59b9954",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11f6f192-56e9-4615-b66f-45b37cf3d467",
                  "parent_uuid": "af3b1d52-6356-4ee1-a2e9-c1cdb55930da",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e9df1c1a-e4b0-4249-a5a6-a017a8bfb76e",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d8b6752-d660-4e56-9a2b-238961d2f571",
              "parent_uuid": "e9df1c1a-e4b0-4249-a5a6-a017a8bfb76e",
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
              "uuid": "5976a31c-2377-4b21-880b-c54a9bfdafaa",
              "parent_uuid": "e9df1c1a-e4b0-4249-a5a6-a017a8bfb76e",
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
              "uuid": "5fa62870-f9f8-47ee-88bb-7f97b470a87d",
              "parent_uuid": "e9df1c1a-e4b0-4249-a5a6-a017a8bfb76e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e243c130-bac5-472c-911e-f620b3245164",
                  "parent_uuid": "5fa62870-f9f8-47ee-88bb-7f97b470a87d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7451bb21-cab8-401e-92cc-5becda6239b9",
              "parent_uuid": "e9df1c1a-e4b0-4249-a5a6-a017a8bfb76e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cefb6653-fdd8-4dd8-926b-922e9767583a",
                  "parent_uuid": "7451bb21-cab8-401e-92cc-5becda6239b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bb98819-74cd-49cc-8c70-b81b362ae6b1",
              "parent_uuid": "e9df1c1a-e4b0-4249-a5a6-a017a8bfb76e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a48f5ff7-34d5-48b2-9af2-5a4dd4702325",
                  "parent_uuid": "7bb98819-74cd-49cc-8c70-b81b362ae6b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d209739c-05d1-4917-8b89-c502b589aecd",
              "parent_uuid": "e9df1c1a-e4b0-4249-a5a6-a017a8bfb76e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8411c690-56b5-4ecf-aca4-1737593c58dc",
                  "parent_uuid": "d209739c-05d1-4917-8b89-c502b589aecd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c243de8-97b8-4185-8c1f-cc8495fef9f6",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "694b0db2-1cc0-4323-8285-834f22a45352",
              "parent_uuid": "7c243de8-97b8-4185-8c1f-cc8495fef9f6",
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
              "uuid": "27ee8229-556f-4d06-86b6-d08c87f99647",
              "parent_uuid": "7c243de8-97b8-4185-8c1f-cc8495fef9f6",
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
              "uuid": "a42eae48-fde6-4c79-b386-074f4a17cc84",
              "parent_uuid": "7c243de8-97b8-4185-8c1f-cc8495fef9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcfa90de-0f3d-404c-a1bb-3fc244450dce",
                  "parent_uuid": "a42eae48-fde6-4c79-b386-074f4a17cc84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3dffece8-dc20-4185-b037-c3364de38552",
              "parent_uuid": "7c243de8-97b8-4185-8c1f-cc8495fef9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d067253-8f51-466a-9b62-a8092344be16",
                  "parent_uuid": "3dffece8-dc20-4185-b037-c3364de38552",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33affc5c-e3bc-459a-ae0b-02eb174a2769",
              "parent_uuid": "7c243de8-97b8-4185-8c1f-cc8495fef9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8881807-aad6-45a4-8d36-167b6e435efc",
                  "parent_uuid": "33affc5c-e3bc-459a-ae0b-02eb174a2769",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00e00eb9-3617-4624-ae7d-6e3ffa30a34d",
              "parent_uuid": "7c243de8-97b8-4185-8c1f-cc8495fef9f6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4336c84a-fc12-4403-83cc-1ced7812afe2",
                  "parent_uuid": "00e00eb9-3617-4624-ae7d-6e3ffa30a34d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "03bde086-3317-4bd7-b179-662b0b6fb12e",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "115b1a67-6e24-4f60-8d5c-3d040cea3165",
              "parent_uuid": "03bde086-3317-4bd7-b179-662b0b6fb12e",
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
          "uuid": "6f876ee8-26d3-4c18-84aa-994ab6f02c66",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b2fb2abb-3cbc-4d9b-a749-073a1f253005",
              "parent_uuid": "6f876ee8-26d3-4c18-84aa-994ab6f02c66",
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
          "uuid": "0e8fca64-073d-4466-932a-13cc6b4160d4",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f5ebff3-e3e0-4d64-97f7-4fbb8fef09e3",
              "parent_uuid": "0e8fca64-073d-4466-932a-13cc6b4160d4",
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
              "uuid": "19e7f106-1ed0-4c2c-82c6-d9fc27fb54ae",
              "parent_uuid": "0e8fca64-073d-4466-932a-13cc6b4160d4",
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
              "uuid": "ccf448cb-17eb-494c-b25d-d6b29e1e7ce8",
              "parent_uuid": "0e8fca64-073d-4466-932a-13cc6b4160d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e6e28c3-8e56-4c2f-ab3f-5fd301edbed3",
                  "parent_uuid": "ccf448cb-17eb-494c-b25d-d6b29e1e7ce8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddfe158b-fdfe-41ce-8ed1-6ca325661bb2",
              "parent_uuid": "0e8fca64-073d-4466-932a-13cc6b4160d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ce01b9f-1176-4249-89e8-2131dbf1c3e3",
                  "parent_uuid": "ddfe158b-fdfe-41ce-8ed1-6ca325661bb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "442c2264-5cbc-40a5-8564-7b76bef88e13",
              "parent_uuid": "0e8fca64-073d-4466-932a-13cc6b4160d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5bbd027-6761-439b-9b82-7fd83965a63d",
                  "parent_uuid": "442c2264-5cbc-40a5-8564-7b76bef88e13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea338ba7-3a11-4e0b-a490-2941b2310490",
              "parent_uuid": "0e8fca64-073d-4466-932a-13cc6b4160d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34e181af-588c-486c-bb9b-13f322b63310",
                  "parent_uuid": "ea338ba7-3a11-4e0b-a490-2941b2310490",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e8f990b5-f7ff-4555-9029-7183097e4f85",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0223ef87-404b-4113-ba91-248bf45b96b9",
              "parent_uuid": "e8f990b5-f7ff-4555-9029-7183097e4f85",
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
              "uuid": "3817a5a7-99b9-4c36-8c9b-01dda26c6fd0",
              "parent_uuid": "e8f990b5-f7ff-4555-9029-7183097e4f85",
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
              "uuid": "a57e20dc-9fe2-4f7c-bb8a-9454db50dc4a",
              "parent_uuid": "e8f990b5-f7ff-4555-9029-7183097e4f85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eef91120-1085-4d98-ab33-fdb40c0f673b",
                  "parent_uuid": "a57e20dc-9fe2-4f7c-bb8a-9454db50dc4a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89b3fd76-ce49-4d68-ab36-c9824973a813",
              "parent_uuid": "e8f990b5-f7ff-4555-9029-7183097e4f85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29a48e89-93ca-4125-8689-10b581604443",
                  "parent_uuid": "89b3fd76-ce49-4d68-ab36-c9824973a813",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0209cf81-c6e2-4bb3-b332-862e83e2c379",
              "parent_uuid": "e8f990b5-f7ff-4555-9029-7183097e4f85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "024d53b1-9b5f-4fc6-b3a1-35952d26a5ac",
                  "parent_uuid": "0209cf81-c6e2-4bb3-b332-862e83e2c379",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b22fc73c-f592-442f-adae-222ebe89aa30",
              "parent_uuid": "e8f990b5-f7ff-4555-9029-7183097e4f85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ab9b15a-003b-401a-9ed1-79b469039d7d",
                  "parent_uuid": "b22fc73c-f592-442f-adae-222ebe89aa30",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5b57afe4-2970-46bb-8a87-77443ebf6e7d",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc61c419-ba8e-4dae-864e-d95b9be28cc2",
              "parent_uuid": "5b57afe4-2970-46bb-8a87-77443ebf6e7d",
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
              "uuid": "4e7d8e26-6dda-4910-b410-a5c4100aa27f",
              "parent_uuid": "5b57afe4-2970-46bb-8a87-77443ebf6e7d",
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
              "uuid": "ac84d203-1ceb-4446-b8ef-391a691f8368",
              "parent_uuid": "5b57afe4-2970-46bb-8a87-77443ebf6e7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d5fd23a-206e-4326-92f0-ec20c2052a0d",
                  "parent_uuid": "ac84d203-1ceb-4446-b8ef-391a691f8368",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccebf4c7-10b3-46cb-92f9-1defa3425792",
              "parent_uuid": "5b57afe4-2970-46bb-8a87-77443ebf6e7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebfd5431-e783-49ae-a02d-35c5bada2c53",
                  "parent_uuid": "ccebf4c7-10b3-46cb-92f9-1defa3425792",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d46bd4a7-1723-4fb5-af17-538f5f1cc7e6",
              "parent_uuid": "5b57afe4-2970-46bb-8a87-77443ebf6e7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7eaff4b-27c4-486e-8aab-151fbcdc2837",
                  "parent_uuid": "d46bd4a7-1723-4fb5-af17-538f5f1cc7e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28ba7631-b302-421a-a540-7f1ececfe28b",
              "parent_uuid": "5b57afe4-2970-46bb-8a87-77443ebf6e7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ebf780e-1a8b-48bb-8619-d039dca01d4a",
                  "parent_uuid": "28ba7631-b302-421a-a540-7f1ececfe28b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6e35613-5330-45eb-9298-9be9b5ab828c",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a73e763d-f75c-4d15-952d-af73d2b10c59",
              "parent_uuid": "d6e35613-5330-45eb-9298-9be9b5ab828c",
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
              "uuid": "5869f86b-12d8-4d2c-8dca-5305837b337d",
              "parent_uuid": "d6e35613-5330-45eb-9298-9be9b5ab828c",
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
              "uuid": "cb2835b4-82f6-49ab-a862-13ca8ee90e5f",
              "parent_uuid": "d6e35613-5330-45eb-9298-9be9b5ab828c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b9063b3-bcb8-4f81-9796-828033fa2f26",
                  "parent_uuid": "cb2835b4-82f6-49ab-a862-13ca8ee90e5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c052268-b0da-4555-858a-446ba34c566c",
              "parent_uuid": "d6e35613-5330-45eb-9298-9be9b5ab828c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "843bf2ae-419f-4b77-8e8c-8efbc8d4a478",
                  "parent_uuid": "4c052268-b0da-4555-858a-446ba34c566c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e91176d-e0d7-473d-95fb-d19497511a75",
              "parent_uuid": "d6e35613-5330-45eb-9298-9be9b5ab828c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c733001-e2bb-44ac-aa5c-53cef50032a5",
                  "parent_uuid": "4e91176d-e0d7-473d-95fb-d19497511a75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79116462-f7d9-4333-b950-89efc0567098",
              "parent_uuid": "d6e35613-5330-45eb-9298-9be9b5ab828c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92669023-c88d-4921-8ee0-255622c35472",
                  "parent_uuid": "79116462-f7d9-4333-b950-89efc0567098",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6e1bd3c1-c0c4-4cf3-9907-929537a4d83e",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae9070ce-ab1b-409e-826b-baefa85a96ad",
              "parent_uuid": "6e1bd3c1-c0c4-4cf3-9907-929537a4d83e",
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
              "uuid": "a90880e1-514c-47e5-a896-f72c5539c3a8",
              "parent_uuid": "6e1bd3c1-c0c4-4cf3-9907-929537a4d83e",
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
              "uuid": "ff41d8e5-ad32-4719-9e27-43ea11e0ac90",
              "parent_uuid": "6e1bd3c1-c0c4-4cf3-9907-929537a4d83e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69d0ac6c-ffcf-44b6-9a82-5563513c2a09",
                  "parent_uuid": "ff41d8e5-ad32-4719-9e27-43ea11e0ac90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7627e12a-3e1b-4da9-859d-f9032a02fb89",
              "parent_uuid": "6e1bd3c1-c0c4-4cf3-9907-929537a4d83e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "353a0fa3-10eb-4e76-8d8a-a22e45207c2b",
                  "parent_uuid": "7627e12a-3e1b-4da9-859d-f9032a02fb89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1f3ec77-1b31-4cf2-ba1f-ac3dfac09cee",
              "parent_uuid": "6e1bd3c1-c0c4-4cf3-9907-929537a4d83e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8e8b649-1751-452b-a360-487580e3b85a",
                  "parent_uuid": "d1f3ec77-1b31-4cf2-ba1f-ac3dfac09cee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa8bc3eb-fdc5-42ce-be6a-3028b6017a01",
              "parent_uuid": "6e1bd3c1-c0c4-4cf3-9907-929537a4d83e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3adc93e-baba-45fe-9308-b452d5368238",
                  "parent_uuid": "aa8bc3eb-fdc5-42ce-be6a-3028b6017a01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a11ac323-fa85-4635-89ef-f87fcbd9dd16",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ed3c00e-40d7-43c7-b443-b4fc96e42136",
              "parent_uuid": "a11ac323-fa85-4635-89ef-f87fcbd9dd16",
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
              "uuid": "be339c8a-6929-4dba-bfbb-d249cbfb207b",
              "parent_uuid": "a11ac323-fa85-4635-89ef-f87fcbd9dd16",
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
              "uuid": "04414331-53ec-47ba-a4cd-5e9313285d71",
              "parent_uuid": "a11ac323-fa85-4635-89ef-f87fcbd9dd16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f63f6ab-735b-4d6a-9090-b6437c75cd42",
                  "parent_uuid": "04414331-53ec-47ba-a4cd-5e9313285d71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d32b331-4e0e-46c2-825c-abc32bdc67d4",
              "parent_uuid": "a11ac323-fa85-4635-89ef-f87fcbd9dd16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69f91158-1272-49fc-a1f0-8c88096e3ee8",
                  "parent_uuid": "7d32b331-4e0e-46c2-825c-abc32bdc67d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d94cb0ba-c619-4341-9342-c6aa8ef534ee",
              "parent_uuid": "a11ac323-fa85-4635-89ef-f87fcbd9dd16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cf5b8f7-0701-4473-a160-63611e4c0b28",
                  "parent_uuid": "d94cb0ba-c619-4341-9342-c6aa8ef534ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b6f6f6b-9dd7-4bd5-85eb-9a652a90c938",
              "parent_uuid": "a11ac323-fa85-4635-89ef-f87fcbd9dd16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3cf9fd5-be07-4386-b49e-b8f529c801df",
                  "parent_uuid": "9b6f6f6b-9dd7-4bd5-85eb-9a652a90c938",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ebcb0899-5982-4710-aa30-c5f76fc30f95",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8603c054-6a44-4cb1-a35a-c35488896452",
              "parent_uuid": "ebcb0899-5982-4710-aa30-c5f76fc30f95",
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
              "uuid": "b5715d56-6cbe-4f69-a709-b32e1e74853d",
              "parent_uuid": "ebcb0899-5982-4710-aa30-c5f76fc30f95",
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
              "uuid": "470276e9-40cd-4db9-91de-b4fb8526d15a",
              "parent_uuid": "ebcb0899-5982-4710-aa30-c5f76fc30f95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eebeb333-646f-4d4f-aaf5-9826829f1f15",
                  "parent_uuid": "470276e9-40cd-4db9-91de-b4fb8526d15a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1108b14f-6352-42d4-ab11-dbf23c052851",
              "parent_uuid": "ebcb0899-5982-4710-aa30-c5f76fc30f95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aaf87e8e-1cfb-4248-98e1-b7c709143f7f",
                  "parent_uuid": "1108b14f-6352-42d4-ab11-dbf23c052851",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63b8b8d7-2c03-4653-af8e-456ed07f9cda",
              "parent_uuid": "ebcb0899-5982-4710-aa30-c5f76fc30f95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2971bcbf-6f60-458d-a611-5e41267348f2",
                  "parent_uuid": "63b8b8d7-2c03-4653-af8e-456ed07f9cda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30d28227-9970-4274-bd1c-7eef1d275c3e",
              "parent_uuid": "ebcb0899-5982-4710-aa30-c5f76fc30f95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4105eb51-e5e5-460e-831a-f23f5c0531c2",
                  "parent_uuid": "30d28227-9970-4274-bd1c-7eef1d275c3e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c9dd9a72-a3e7-449c-b733-e9130feae486",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18197c66-8331-4eac-908d-fb771840b083",
              "parent_uuid": "c9dd9a72-a3e7-449c-b733-e9130feae486",
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
              "uuid": "ac9dbf47-e153-4767-ae5c-3f88e9ba8b71",
              "parent_uuid": "c9dd9a72-a3e7-449c-b733-e9130feae486",
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
              "uuid": "187e5b02-fa5f-4c8d-b813-b3ad090da18f",
              "parent_uuid": "c9dd9a72-a3e7-449c-b733-e9130feae486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34dbfc23-3447-4742-b7e0-ad63c5826885",
                  "parent_uuid": "187e5b02-fa5f-4c8d-b813-b3ad090da18f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a121203-8c30-44b8-a4c7-f71fe74ad7d2",
              "parent_uuid": "c9dd9a72-a3e7-449c-b733-e9130feae486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38469784-d3dd-4ef0-9857-7dac34c515d5",
                  "parent_uuid": "3a121203-8c30-44b8-a4c7-f71fe74ad7d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b431a80-3897-40b3-94f5-cf012af32898",
              "parent_uuid": "c9dd9a72-a3e7-449c-b733-e9130feae486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cbfca45-43d9-40c9-9740-d3d249111bfb",
                  "parent_uuid": "8b431a80-3897-40b3-94f5-cf012af32898",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57eb6c0e-2c7d-4253-a802-166ee1e1bf4b",
              "parent_uuid": "c9dd9a72-a3e7-449c-b733-e9130feae486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcd8ab4a-c51b-473c-aabd-0e630229d33a",
                  "parent_uuid": "57eb6c0e-2c7d-4253-a802-166ee1e1bf4b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "58c2b04d-be86-4045-943d-b3d6fba86975",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3b169d08-e29b-4ef6-9acb-518a04f827b9",
              "parent_uuid": "58c2b04d-be86-4045-943d-b3d6fba86975",
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
          "uuid": "55807efc-3606-49e6-a123-ac333a0bd346",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "795c36ce-d5e8-4e30-975b-f5b0d4112b8a",
              "parent_uuid": "55807efc-3606-49e6-a123-ac333a0bd346",
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
              "uuid": "d64466d5-3e61-40d1-be77-45d3dff528fa",
              "parent_uuid": "55807efc-3606-49e6-a123-ac333a0bd346",
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
              "uuid": "ac8ef4e8-1c68-43ab-a208-2ae60eb9d025",
              "parent_uuid": "55807efc-3606-49e6-a123-ac333a0bd346",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a5d9990-419d-4fe9-985d-b5cb87b2e64e",
                  "parent_uuid": "ac8ef4e8-1c68-43ab-a208-2ae60eb9d025",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0066459-d888-4aaf-ad0e-b511e0b43bc2",
              "parent_uuid": "55807efc-3606-49e6-a123-ac333a0bd346",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c3b0cc2-e6d6-4fe7-95df-eeb7c7bf3ffe",
                  "parent_uuid": "e0066459-d888-4aaf-ad0e-b511e0b43bc2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5476c8a-62ce-4f93-b7eb-d1e1d916dcdd",
              "parent_uuid": "55807efc-3606-49e6-a123-ac333a0bd346",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0a65e3f-7858-43da-aa68-5365e7dd5cc8",
                  "parent_uuid": "d5476c8a-62ce-4f93-b7eb-d1e1d916dcdd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d56d568-eb38-4864-b336-a5d89c2b7fc2",
              "parent_uuid": "55807efc-3606-49e6-a123-ac333a0bd346",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "225f252a-bc0a-4a22-a689-944e47b44b6e",
                  "parent_uuid": "0d56d568-eb38-4864-b336-a5d89c2b7fc2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b95e75d1-6988-4a43-8796-ec7203557428",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d51b1643-ef9b-4e87-9c08-8731ec3d14d5",
              "parent_uuid": "b95e75d1-6988-4a43-8796-ec7203557428",
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
              "uuid": "8fdcd5e6-9925-4e02-89cd-16f13e435e3d",
              "parent_uuid": "b95e75d1-6988-4a43-8796-ec7203557428",
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
              "uuid": "63174378-cadb-47f7-bd7d-a84d6dc9f57f",
              "parent_uuid": "b95e75d1-6988-4a43-8796-ec7203557428",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c4aa543-00f8-4792-b666-b0833f7fc064",
                  "parent_uuid": "63174378-cadb-47f7-bd7d-a84d6dc9f57f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fec2e915-9edd-4668-910f-95dafb026eac",
              "parent_uuid": "b95e75d1-6988-4a43-8796-ec7203557428",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce38de19-c416-4e00-8881-c6da158cd95d",
                  "parent_uuid": "fec2e915-9edd-4668-910f-95dafb026eac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a354ed50-5213-4927-b8d9-900fe04cfb55",
              "parent_uuid": "b95e75d1-6988-4a43-8796-ec7203557428",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd0e4ce6-1d69-4f71-a494-435adc4e0608",
                  "parent_uuid": "a354ed50-5213-4927-b8d9-900fe04cfb55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68d8421d-0c4d-4e83-bed1-525cee8c39c1",
              "parent_uuid": "b95e75d1-6988-4a43-8796-ec7203557428",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b88d329-34cf-4e09-a043-5608eafa8a79",
                  "parent_uuid": "68d8421d-0c4d-4e83-bed1-525cee8c39c1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6109114a-67f8-46f7-a50a-b279dfb3356b",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "557c4a1b-0f68-42d6-bdad-b2873ca3b40c",
              "parent_uuid": "6109114a-67f8-46f7-a50a-b279dfb3356b",
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
          "uuid": "0eadc1ae-66c9-4ba9-b5a0-8e90ef5bbac1",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c31d08c-9939-4a1e-8377-7f1e05cc1748",
              "parent_uuid": "0eadc1ae-66c9-4ba9-b5a0-8e90ef5bbac1",
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
          "uuid": "5bb13369-6a98-47b7-8d0d-21a290c7cd41",
          "parent_uuid": "03d11b1f-c4ef-47bf-9689-8b96691859b2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7310f5b9-d25e-47b4-a4f7-a4e367f49114",
              "parent_uuid": "5bb13369-6a98-47b7-8d0d-21a290c7cd41",
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
                  "uuid": "c532ad13-c519-411c-89d0-674d3d9ecaa5",
                  "parent_uuid": "7310f5b9-d25e-47b4-a4f7-a4e367f49114",
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

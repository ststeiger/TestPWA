
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
  "uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "0091bf74-0745-4bf5-bcc0-ce7ef32cd158",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "090d2c82-f22f-4c49-a6ab-e33a8f4b0b28",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "b428a5e9-c49c-4c90-ac56-a00aaeb38320",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "75dbcec0-a4d0-40fa-af8b-991326f48e0b",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "22b92e53-e606-435c-8837-c6c5b05868f3",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "bba52d32-584a-4f0c-93f5-01582e50253d",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "44c5a15e-f764-4bb5-8385-981a862dcaef",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
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
      "uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
      "parent_uuid": "3b321ad6-4f49-4bdc-893b-d16b66c04879",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e89f819f-f13b-436e-b7f1-216de3a17a12",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "00e22ec5-49e1-4b04-8d25-77ce54300d22",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "873753e3-342d-4fb7-98b0-2ed83555dcd5",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "50d77e29-39b2-49a0-92a1-e2c63277fe10",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "dab36a26-f5a2-4b3a-8b5d-a62c2921ea4e",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "e24e19e3-e797-45f1-8ceb-df68004245aa",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "dc041eb3-b5f1-4200-98d1-9d305c1aa7df",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "30da0cd9-3939-454a-838b-ad59f76a2fe5",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "093d207c-861a-4780-988f-b422406e8d3d",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "1af2bce5-f2d5-4cf6-b2a5-fdb2b20ca9f8",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
              "uuid": "7e4fdfbc-a50e-45a4-8c11-919a744cdad7",
              "parent_uuid": "7fc4d20c-3722-4623-b926-5dfa670d83b9",
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
          "uuid": "2265afc1-7a42-4fe2-b2f8-da57a5351fda",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f282ce61-7dd6-4ec0-a6b9-47bc2ca37271",
              "parent_uuid": "2265afc1-7a42-4fe2-b2f8-da57a5351fda",
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
              "uuid": "1593d729-1703-46ad-9dea-0a6dd7083a0d",
              "parent_uuid": "2265afc1-7a42-4fe2-b2f8-da57a5351fda",
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
              "uuid": "91f967ae-b80b-4fb7-ab49-f1ec4c15f62d",
              "parent_uuid": "2265afc1-7a42-4fe2-b2f8-da57a5351fda",
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
              "uuid": "3d92f952-8f65-4569-9e08-b29264d822a6",
              "parent_uuid": "2265afc1-7a42-4fe2-b2f8-da57a5351fda",
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
          "uuid": "49f8426b-9408-460d-ad94-b4dbc787f4ea",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2c7c71e-b7d8-428a-b53e-ddd8995e59ba",
              "parent_uuid": "49f8426b-9408-460d-ad94-b4dbc787f4ea",
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
              "uuid": "0ca79630-5737-403f-9b0e-13e79c254ee5",
              "parent_uuid": "49f8426b-9408-460d-ad94-b4dbc787f4ea",
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
              "uuid": "c3cee881-d69a-4112-85dd-718cee154330",
              "parent_uuid": "49f8426b-9408-460d-ad94-b4dbc787f4ea",
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
              "uuid": "548c5ad2-f20f-4fb4-8faf-e9a1f56e8d93",
              "parent_uuid": "49f8426b-9408-460d-ad94-b4dbc787f4ea",
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
              "uuid": "3b3d9384-271f-48e5-8983-ce45dc554fe2",
              "parent_uuid": "49f8426b-9408-460d-ad94-b4dbc787f4ea",
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
              "uuid": "2926121b-43ce-409f-ab92-f70f893a9080",
              "parent_uuid": "49f8426b-9408-460d-ad94-b4dbc787f4ea",
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
          "uuid": "8d46dce6-ce51-46f0-b59d-0c3efbac2f60",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "02a7e1d3-57e6-4ce6-819a-be1d55556f78",
              "parent_uuid": "8d46dce6-ce51-46f0-b59d-0c3efbac2f60",
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
          "uuid": "69df40ab-fa79-4146-945e-cbf619145d68",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b71dfe9c-cc9f-4dda-8337-608bc3f5fc1c",
              "parent_uuid": "69df40ab-fa79-4146-945e-cbf619145d68",
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
              "uuid": "41e711cd-635e-4d15-b531-4df93e5fb694",
              "parent_uuid": "69df40ab-fa79-4146-945e-cbf619145d68",
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
              "uuid": "604beaef-d403-4b57-868a-3f2431d0f45c",
              "parent_uuid": "69df40ab-fa79-4146-945e-cbf619145d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f84e31bf-aa86-49a9-9ebc-fff1739b42ae",
                  "parent_uuid": "604beaef-d403-4b57-868a-3f2431d0f45c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b94c44f5-629a-4afd-b406-b00050747348",
              "parent_uuid": "69df40ab-fa79-4146-945e-cbf619145d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e09e4622-6794-41bc-941f-e054ac5215bd",
                  "parent_uuid": "b94c44f5-629a-4afd-b406-b00050747348",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eade8344-a40b-44b5-a5aa-f918bd5d16ad",
              "parent_uuid": "69df40ab-fa79-4146-945e-cbf619145d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6ada3fd-78ce-4d9a-8a6b-23f805dd116b",
                  "parent_uuid": "eade8344-a40b-44b5-a5aa-f918bd5d16ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dddfc664-cd5f-4683-a2d9-351f34835130",
              "parent_uuid": "69df40ab-fa79-4146-945e-cbf619145d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5889b514-e740-4d35-9ce4-82725a69262b",
                  "parent_uuid": "dddfc664-cd5f-4683-a2d9-351f34835130",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "36f30324-dbf5-4f13-a2de-8d3a2a987b35",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5ff210e-b3c4-40f4-b9ea-1ae4591624cf",
              "parent_uuid": "36f30324-dbf5-4f13-a2de-8d3a2a987b35",
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
              "uuid": "04388764-cc2b-4040-aa1b-56993f528035",
              "parent_uuid": "36f30324-dbf5-4f13-a2de-8d3a2a987b35",
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
              "uuid": "261631a6-023b-4b55-9f94-42d3dec13b56",
              "parent_uuid": "36f30324-dbf5-4f13-a2de-8d3a2a987b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3b8f5f3-984d-45ae-b809-d50602c2492a",
                  "parent_uuid": "261631a6-023b-4b55-9f94-42d3dec13b56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e0b31f8-4688-4aa0-9f09-f17ae23a9157",
              "parent_uuid": "36f30324-dbf5-4f13-a2de-8d3a2a987b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e15a07c9-ee57-419d-92bb-fb05706b210f",
                  "parent_uuid": "1e0b31f8-4688-4aa0-9f09-f17ae23a9157",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68fa0ab6-fae0-464b-b30f-78921ab77896",
              "parent_uuid": "36f30324-dbf5-4f13-a2de-8d3a2a987b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "226ca6a0-6feb-4854-beeb-28d42f16f7aa",
                  "parent_uuid": "68fa0ab6-fae0-464b-b30f-78921ab77896",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4467e534-67f3-4f52-a10f-1317324771a9",
              "parent_uuid": "36f30324-dbf5-4f13-a2de-8d3a2a987b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41cae868-17bf-401c-b4b2-dae19f232e44",
                  "parent_uuid": "4467e534-67f3-4f52-a10f-1317324771a9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4938fefc-eafa-42b0-9e6e-c2316daded8b",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8604c86e-07c3-42d2-9f7d-612a0d55e4b2",
              "parent_uuid": "4938fefc-eafa-42b0-9e6e-c2316daded8b",
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
              "uuid": "e4b65f74-571d-4423-bed7-558d092eb2bc",
              "parent_uuid": "4938fefc-eafa-42b0-9e6e-c2316daded8b",
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
              "uuid": "6dff255a-05b0-47b4-9f4c-dc49ab2d5fc9",
              "parent_uuid": "4938fefc-eafa-42b0-9e6e-c2316daded8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26580733-e9de-4cd6-a5a2-cd12fe6d9ac8",
                  "parent_uuid": "6dff255a-05b0-47b4-9f4c-dc49ab2d5fc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85034674-8363-45b4-9833-6511712343f5",
              "parent_uuid": "4938fefc-eafa-42b0-9e6e-c2316daded8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78c45921-6015-453d-9557-b17de1df71a0",
                  "parent_uuid": "85034674-8363-45b4-9833-6511712343f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8c54617-f76a-4813-abca-d9672fb1d30d",
              "parent_uuid": "4938fefc-eafa-42b0-9e6e-c2316daded8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4709ca44-8ad1-4fe9-8486-926ca9bde4d8",
                  "parent_uuid": "e8c54617-f76a-4813-abca-d9672fb1d30d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7dfbbd18-404b-436c-a7b2-b816888e01aa",
              "parent_uuid": "4938fefc-eafa-42b0-9e6e-c2316daded8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa64c32c-03ad-44b9-8fdb-f8ca9122f7cc",
                  "parent_uuid": "7dfbbd18-404b-436c-a7b2-b816888e01aa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7904a303-ef6f-431c-bb1b-7cafcae24721",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2dd5840f-f063-4c61-a025-20c44aebe31a",
              "parent_uuid": "7904a303-ef6f-431c-bb1b-7cafcae24721",
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
              "uuid": "9c9ab126-f48c-494c-ab04-576344277228",
              "parent_uuid": "7904a303-ef6f-431c-bb1b-7cafcae24721",
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
              "uuid": "aabef3d3-e3f1-46e4-b53e-8f1d69436557",
              "parent_uuid": "7904a303-ef6f-431c-bb1b-7cafcae24721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "032fc03e-1ca4-4e20-9d6c-383377fddb55",
                  "parent_uuid": "aabef3d3-e3f1-46e4-b53e-8f1d69436557",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b2ec7b2-ba74-44de-bd89-579444dfacc3",
              "parent_uuid": "7904a303-ef6f-431c-bb1b-7cafcae24721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11edf6f4-876d-4ddf-9fdb-f8ce00c74a9f",
                  "parent_uuid": "0b2ec7b2-ba74-44de-bd89-579444dfacc3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44afd8ce-e9b7-460c-87ac-e5e8bf6d88ec",
              "parent_uuid": "7904a303-ef6f-431c-bb1b-7cafcae24721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f1c7205-3afd-4406-afd8-13160b1a8b4d",
                  "parent_uuid": "44afd8ce-e9b7-460c-87ac-e5e8bf6d88ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0126a98b-8d14-41ca-8532-a67aaa1129e6",
              "parent_uuid": "7904a303-ef6f-431c-bb1b-7cafcae24721",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e789dd3-1e24-4746-8f2a-79cb531cf52d",
                  "parent_uuid": "0126a98b-8d14-41ca-8532-a67aaa1129e6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6b1e84f7-12cc-47f0-938c-1c1ff9164427",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b040c80-0656-4447-91bd-5368ffe265c0",
              "parent_uuid": "6b1e84f7-12cc-47f0-938c-1c1ff9164427",
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
              "uuid": "e0aa0cdb-d803-4e6c-9904-f73cff4948d0",
              "parent_uuid": "6b1e84f7-12cc-47f0-938c-1c1ff9164427",
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
              "uuid": "4fb1aab8-71b3-41e9-9755-3a83bf34fd86",
              "parent_uuid": "6b1e84f7-12cc-47f0-938c-1c1ff9164427",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7056e8e5-5005-45a7-a2a8-deab6f5b0131",
                  "parent_uuid": "4fb1aab8-71b3-41e9-9755-3a83bf34fd86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bac2d10c-d168-4af6-bfdd-e8a0dbcd5dc2",
              "parent_uuid": "6b1e84f7-12cc-47f0-938c-1c1ff9164427",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef762c2f-ed1d-43a0-8ba8-b7b395cbff22",
                  "parent_uuid": "bac2d10c-d168-4af6-bfdd-e8a0dbcd5dc2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "664da043-5fd8-4013-8f3e-4686aa17fbbd",
              "parent_uuid": "6b1e84f7-12cc-47f0-938c-1c1ff9164427",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ee698e1-f7dc-4071-97a1-2011f3e02dc2",
                  "parent_uuid": "664da043-5fd8-4013-8f3e-4686aa17fbbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ef44b9b-df26-4a6d-990e-a52c8bf65936",
              "parent_uuid": "6b1e84f7-12cc-47f0-938c-1c1ff9164427",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1652b3f3-2d86-4896-88ba-d211ba8c03a1",
                  "parent_uuid": "2ef44b9b-df26-4a6d-990e-a52c8bf65936",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af44e940-0d42-4d2b-bb0a-db525e4e03f1",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d9cc6c9-0767-4d55-91d8-dc6bb6b242ba",
              "parent_uuid": "af44e940-0d42-4d2b-bb0a-db525e4e03f1",
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
              "uuid": "213b7e88-6a72-4952-a377-9a2282c39741",
              "parent_uuid": "af44e940-0d42-4d2b-bb0a-db525e4e03f1",
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
              "uuid": "6c304cf6-2ff2-4c8c-b779-db458174c14d",
              "parent_uuid": "af44e940-0d42-4d2b-bb0a-db525e4e03f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a710b143-959c-49cf-9c7b-47ae287ebb75",
                  "parent_uuid": "6c304cf6-2ff2-4c8c-b779-db458174c14d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3299a65-c749-4884-9937-21cce579de1b",
              "parent_uuid": "af44e940-0d42-4d2b-bb0a-db525e4e03f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e42ddce-aa40-4e5d-97a3-fc8d38b29f76",
                  "parent_uuid": "f3299a65-c749-4884-9937-21cce579de1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe5d607e-d58f-4141-ba50-9ed291e70d81",
              "parent_uuid": "af44e940-0d42-4d2b-bb0a-db525e4e03f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26cdf77f-3d48-42b9-881b-1a3b4b45af7c",
                  "parent_uuid": "fe5d607e-d58f-4141-ba50-9ed291e70d81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60449d4d-5d57-4714-8230-45fcc4d73101",
              "parent_uuid": "af44e940-0d42-4d2b-bb0a-db525e4e03f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "240f61d0-99b7-4baf-8a82-12a5884be780",
                  "parent_uuid": "60449d4d-5d57-4714-8230-45fcc4d73101",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db1ee5ce-2881-4f18-95f7-997b51bdf504",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef836d61-ef83-4eb4-bc19-702b4afdec43",
              "parent_uuid": "db1ee5ce-2881-4f18-95f7-997b51bdf504",
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
              "uuid": "4f5af578-19b0-4e0d-8ca4-acc90363eb1b",
              "parent_uuid": "db1ee5ce-2881-4f18-95f7-997b51bdf504",
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
              "uuid": "7497c721-4f26-4428-95ea-15564c3a180c",
              "parent_uuid": "db1ee5ce-2881-4f18-95f7-997b51bdf504",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1def810d-6622-48ac-981b-c8fb9e62de0a",
                  "parent_uuid": "7497c721-4f26-4428-95ea-15564c3a180c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9523400-cc17-4fe2-98c6-d0783c31926b",
              "parent_uuid": "db1ee5ce-2881-4f18-95f7-997b51bdf504",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06ff31bd-1234-44ba-8934-6d9c8f8a0824",
                  "parent_uuid": "a9523400-cc17-4fe2-98c6-d0783c31926b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59f61d84-9c57-4122-a3c6-9271c2fa3915",
              "parent_uuid": "db1ee5ce-2881-4f18-95f7-997b51bdf504",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1813ff32-5c98-4c29-b3c9-02b51302a2e3",
                  "parent_uuid": "59f61d84-9c57-4122-a3c6-9271c2fa3915",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb482f28-5039-4fa5-b029-877ce0fde485",
              "parent_uuid": "db1ee5ce-2881-4f18-95f7-997b51bdf504",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54e7e64b-8abb-49ee-9d7c-b05c76528e53",
                  "parent_uuid": "fb482f28-5039-4fa5-b029-877ce0fde485",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3d54ec04-66cd-4e30-a9f1-08d38483449d",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f5479ac-eaa8-4651-9ebc-3760e4feae7b",
              "parent_uuid": "3d54ec04-66cd-4e30-a9f1-08d38483449d",
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
              "uuid": "1ac45d94-4f08-4e66-abe6-2891af3b4cad",
              "parent_uuid": "3d54ec04-66cd-4e30-a9f1-08d38483449d",
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
              "uuid": "19f01f95-22b2-417c-b787-0ede22282fbe",
              "parent_uuid": "3d54ec04-66cd-4e30-a9f1-08d38483449d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbcc1bff-0c36-4548-bc1b-750d159cae89",
                  "parent_uuid": "19f01f95-22b2-417c-b787-0ede22282fbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b14b4f7f-203a-459e-94b0-daced14c09df",
              "parent_uuid": "3d54ec04-66cd-4e30-a9f1-08d38483449d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7e452e6-8b7d-44ad-86fb-e83d62dc35f5",
                  "parent_uuid": "b14b4f7f-203a-459e-94b0-daced14c09df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4883f6f-2aac-4ffb-876f-017f92815b4f",
              "parent_uuid": "3d54ec04-66cd-4e30-a9f1-08d38483449d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6328e9fa-ea00-4c88-adba-f22e8d147bef",
                  "parent_uuid": "c4883f6f-2aac-4ffb-876f-017f92815b4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8552ec5e-60eb-4ae2-970b-5596aa67b94e",
              "parent_uuid": "3d54ec04-66cd-4e30-a9f1-08d38483449d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5f41ec3-03b3-43dd-ba7a-7116f8386dce",
                  "parent_uuid": "8552ec5e-60eb-4ae2-970b-5596aa67b94e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "85b95480-961d-436b-babb-e906f785095b",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "7915061a-a4ba-4928-913c-9bcfa7947c65",
              "parent_uuid": "85b95480-961d-436b-babb-e906f785095b",
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
          "uuid": "89cccc97-c597-4206-ab9b-5e3e3a57971f",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3147b7a7-9497-4f57-add7-4b3d102f921a",
              "parent_uuid": "89cccc97-c597-4206-ab9b-5e3e3a57971f",
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
              "uuid": "c31b355a-daaf-4e4f-931e-e68dcaca1bdd",
              "parent_uuid": "89cccc97-c597-4206-ab9b-5e3e3a57971f",
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
              "uuid": "8395053f-d7bd-4591-8a74-968e662c307e",
              "parent_uuid": "89cccc97-c597-4206-ab9b-5e3e3a57971f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23a2a114-b61e-4f3c-ae3b-dee1834d92cd",
                  "parent_uuid": "8395053f-d7bd-4591-8a74-968e662c307e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "056d7012-8333-4a9e-b283-fd680f7763cc",
              "parent_uuid": "89cccc97-c597-4206-ab9b-5e3e3a57971f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "878e0f30-e6fb-45fd-a649-2e69d2d825db",
                  "parent_uuid": "056d7012-8333-4a9e-b283-fd680f7763cc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf3b427b-d867-47d1-9908-667215596ad4",
              "parent_uuid": "89cccc97-c597-4206-ab9b-5e3e3a57971f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03b1e3a5-b465-46b7-b27e-4883b537f489",
                  "parent_uuid": "cf3b427b-d867-47d1-9908-667215596ad4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd57dd87-3e62-412f-af74-baf858b2fa75",
              "parent_uuid": "89cccc97-c597-4206-ab9b-5e3e3a57971f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cc5227e-65f7-4786-b017-1f9d85b9f4af",
                  "parent_uuid": "bd57dd87-3e62-412f-af74-baf858b2fa75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ae5d3eb-59f7-4ff3-9c4e-abfc5a25e998",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e9ed6163-f5f5-4c7c-91d5-878a540298ef",
              "parent_uuid": "1ae5d3eb-59f7-4ff3-9c4e-abfc5a25e998",
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
          "uuid": "98b5d9b2-45fd-4749-9a50-eba3d028808f",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcd6c918-d07d-4f6e-b8a0-b88d76ee2034",
              "parent_uuid": "98b5d9b2-45fd-4749-9a50-eba3d028808f",
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
          "uuid": "26013e60-c5f6-4721-b7e4-a8278581ab01",
          "parent_uuid": "c21943ff-7a86-4c02-8149-a3aee3025f76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1ce303b9-c3ef-4dc1-8f84-24df13989676",
              "parent_uuid": "26013e60-c5f6-4721-b7e4-a8278581ab01",
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
                  "uuid": "4dd03b1f-2ee6-4cf9-adec-0ba3af677ee7",
                  "parent_uuid": "1ce303b9-c3ef-4dc1-8f84-24df13989676",
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
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
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
		,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DA19D272-9439-47A7-9749-153DAFAB2B69'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

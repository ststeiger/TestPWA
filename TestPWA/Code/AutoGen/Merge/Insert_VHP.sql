
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
  "uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "2202556d-a156-4759-a02d-37aa684c194b",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "cbb0398c-943c-4ac9-8c1c-da951f4224ae",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "a9640a32-879e-4354-bbc7-2c735636e4b8",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "d8652cde-0d13-44ea-b672-c42709478d51",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "286cf9a6-7515-4060-888f-6864edffaa1a",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "d47ea176-975e-4a84-a308-dce05cbb2517",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "c890fb8b-2431-41ce-9dea-0ce58e2773ed",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
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
      "uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
      "parent_uuid": "4e41f61e-47e0-4e54-863a-7e094ebb7820",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b850bb30-c396-426a-9af4-cf5d3f8b4c06",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "215fad62-68c1-4064-8e52-985e670f6319",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "87927b30-8081-4655-bffa-fb51efd8881d",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "1cdd19f8-a2fb-4ba1-a3af-3122bfc3dff9",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "423d2427-accf-4b41-ab50-e92db5dbcec4",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "0cc9db13-7be5-452a-ab34-127161733fe5",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "075294cf-33bd-451b-ae6c-5a06b1aeb574",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "c994f2ab-7c62-4408-869f-8d6f990566df",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "c45bf773-5b86-4a51-b181-58e463ca2156",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "9255deb8-2265-4369-9027-6fce388404a1",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
              "uuid": "bc70d486-b45a-4183-8f66-f2439ff9caa5",
              "parent_uuid": "ac141935-2759-4db3-a20c-caa8e957092e",
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
          "uuid": "d7e8ddc3-a369-4496-bce7-cf52f81f22db",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "54dfe77e-79ff-4aa3-9c83-c36150335459",
              "parent_uuid": "d7e8ddc3-a369-4496-bce7-cf52f81f22db",
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
              "uuid": "bed9a935-d170-4a27-9f37-9c0b057bddcb",
              "parent_uuid": "d7e8ddc3-a369-4496-bce7-cf52f81f22db",
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
              "uuid": "0c9a2cfc-ec74-4987-8539-00a2165375b0",
              "parent_uuid": "d7e8ddc3-a369-4496-bce7-cf52f81f22db",
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
              "uuid": "16f73da2-b6c1-49ac-aaec-375d4983f666",
              "parent_uuid": "d7e8ddc3-a369-4496-bce7-cf52f81f22db",
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
          "uuid": "9b5241ad-5c89-4ed0-8a63-7aa326ab4f8c",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a69a823-f9a7-4ead-b51c-142686608aee",
              "parent_uuid": "9b5241ad-5c89-4ed0-8a63-7aa326ab4f8c",
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
              "uuid": "d593d2e7-4a20-4edd-b391-135e9fabc96f",
              "parent_uuid": "9b5241ad-5c89-4ed0-8a63-7aa326ab4f8c",
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
              "uuid": "cf7e9488-b499-4a81-8161-d0c56f4af83d",
              "parent_uuid": "9b5241ad-5c89-4ed0-8a63-7aa326ab4f8c",
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
              "uuid": "fac9680d-76e5-4dc6-9772-559652c041fc",
              "parent_uuid": "9b5241ad-5c89-4ed0-8a63-7aa326ab4f8c",
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
              "uuid": "cb75e732-37bf-46c6-8dc0-f0655565d8e5",
              "parent_uuid": "9b5241ad-5c89-4ed0-8a63-7aa326ab4f8c",
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
              "uuid": "8a96142c-7f51-4bf6-a60a-8dbe5e754f95",
              "parent_uuid": "9b5241ad-5c89-4ed0-8a63-7aa326ab4f8c",
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
          "uuid": "c0725052-caad-4e92-b944-2b253c051a69",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8c85478c-2638-4c39-82de-b019bbfb8c28",
              "parent_uuid": "c0725052-caad-4e92-b944-2b253c051a69",
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
          "uuid": "e44e5542-ac4b-4eaa-92cb-6613a44c79b7",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3acdaedc-339d-4cd2-af9e-29018146df6c",
              "parent_uuid": "e44e5542-ac4b-4eaa-92cb-6613a44c79b7",
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
              "uuid": "383e540f-3c80-4d89-af37-3d5d4bcec4e1",
              "parent_uuid": "e44e5542-ac4b-4eaa-92cb-6613a44c79b7",
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
              "uuid": "781d83c4-6e4c-47d3-a755-0b63fc801557",
              "parent_uuid": "e44e5542-ac4b-4eaa-92cb-6613a44c79b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06e11187-baea-4d6e-85bd-13b40025b046",
                  "parent_uuid": "781d83c4-6e4c-47d3-a755-0b63fc801557",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4f32127-6c0e-4e68-b853-586118ffaabc",
              "parent_uuid": "e44e5542-ac4b-4eaa-92cb-6613a44c79b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c51bfd04-10f1-4e58-b170-84ccd5d2a86c",
                  "parent_uuid": "a4f32127-6c0e-4e68-b853-586118ffaabc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3eac4477-46d3-4a3a-a095-929972f8837e",
              "parent_uuid": "e44e5542-ac4b-4eaa-92cb-6613a44c79b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53488341-fb4c-4d43-8c8c-e27afadcf451",
                  "parent_uuid": "3eac4477-46d3-4a3a-a095-929972f8837e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a32c10ec-5292-4295-8456-1e46c3f8b0ba",
              "parent_uuid": "e44e5542-ac4b-4eaa-92cb-6613a44c79b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9695075-5ac2-4c62-a87d-98790317c6f0",
                  "parent_uuid": "a32c10ec-5292-4295-8456-1e46c3f8b0ba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b7a41d42-6ef3-42a6-bf12-ce1433234eb9",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9981057f-7482-45f6-b6db-8d8fc9eb16e4",
              "parent_uuid": "b7a41d42-6ef3-42a6-bf12-ce1433234eb9",
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
              "uuid": "ef4f9207-39ed-4144-b406-f0527eab5562",
              "parent_uuid": "b7a41d42-6ef3-42a6-bf12-ce1433234eb9",
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
              "uuid": "6197f711-27f6-4c5d-8124-d56177b61b3b",
              "parent_uuid": "b7a41d42-6ef3-42a6-bf12-ce1433234eb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "111db878-4544-43f5-9c66-55ac36e1d1be",
                  "parent_uuid": "6197f711-27f6-4c5d-8124-d56177b61b3b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79ba064c-586d-4737-b58c-cbfebce83e3d",
              "parent_uuid": "b7a41d42-6ef3-42a6-bf12-ce1433234eb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6975b891-ddb1-400f-896a-470b5b47d230",
                  "parent_uuid": "79ba064c-586d-4737-b58c-cbfebce83e3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e1ab6fe-3cdb-481c-bbd9-bdd1cac9429f",
              "parent_uuid": "b7a41d42-6ef3-42a6-bf12-ce1433234eb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85928130-6fb1-4817-b04a-9cfe350b3386",
                  "parent_uuid": "5e1ab6fe-3cdb-481c-bbd9-bdd1cac9429f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "574570b8-6c61-4063-9725-c29a564843f9",
              "parent_uuid": "b7a41d42-6ef3-42a6-bf12-ce1433234eb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e4eaf1b-da3a-4285-951a-31fa75dd01d9",
                  "parent_uuid": "574570b8-6c61-4063-9725-c29a564843f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0dc437be-7c97-42b8-bb9c-8a7513deb121",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6640d34-df50-463f-b638-eef251900fec",
              "parent_uuid": "0dc437be-7c97-42b8-bb9c-8a7513deb121",
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
              "uuid": "b92145c1-d338-414b-aae2-5f8239ed25b0",
              "parent_uuid": "0dc437be-7c97-42b8-bb9c-8a7513deb121",
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
              "uuid": "d5ba8ad0-1eb6-4104-91d4-bc0a3634391f",
              "parent_uuid": "0dc437be-7c97-42b8-bb9c-8a7513deb121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d44b1380-d18e-411f-924e-f5c43636150d",
                  "parent_uuid": "d5ba8ad0-1eb6-4104-91d4-bc0a3634391f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b663b57c-de5d-4872-b458-c485ea1bf742",
              "parent_uuid": "0dc437be-7c97-42b8-bb9c-8a7513deb121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "531a97f6-7530-463d-a350-5e25b3d5613d",
                  "parent_uuid": "b663b57c-de5d-4872-b458-c485ea1bf742",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0186969b-ce73-46ed-b184-ffdb75f4a15c",
              "parent_uuid": "0dc437be-7c97-42b8-bb9c-8a7513deb121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cb197a3-4d5e-4855-bf66-8619b1dfc032",
                  "parent_uuid": "0186969b-ce73-46ed-b184-ffdb75f4a15c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69ce5e5e-e6db-43b2-b8d3-369bab57b012",
              "parent_uuid": "0dc437be-7c97-42b8-bb9c-8a7513deb121",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1402e18-4716-48a0-842d-145fb7a510fe",
                  "parent_uuid": "69ce5e5e-e6db-43b2-b8d3-369bab57b012",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "451ca6ea-6819-4258-b7c1-5b94cd1a493d",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "051d6df2-9077-46ca-bf23-bc3f14c118f1",
              "parent_uuid": "451ca6ea-6819-4258-b7c1-5b94cd1a493d",
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
              "uuid": "954167a8-0048-4a04-ada8-0756c26342d7",
              "parent_uuid": "451ca6ea-6819-4258-b7c1-5b94cd1a493d",
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
              "uuid": "99fab180-53a9-4683-ae7a-4ed5d9096b29",
              "parent_uuid": "451ca6ea-6819-4258-b7c1-5b94cd1a493d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e38b0834-d5bb-4b1e-a138-d4fe451916ac",
                  "parent_uuid": "99fab180-53a9-4683-ae7a-4ed5d9096b29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8442cfc3-c38d-4dff-b822-ed16b872d6ae",
              "parent_uuid": "451ca6ea-6819-4258-b7c1-5b94cd1a493d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d40c5a92-11d9-4e98-b24e-99204117649a",
                  "parent_uuid": "8442cfc3-c38d-4dff-b822-ed16b872d6ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c7f08d0-eb62-4b34-9016-706e8ebe4c0e",
              "parent_uuid": "451ca6ea-6819-4258-b7c1-5b94cd1a493d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2278ea0-281f-4ab5-ad71-1073b22431c2",
                  "parent_uuid": "5c7f08d0-eb62-4b34-9016-706e8ebe4c0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ac70e13-805a-47ee-b433-267da6c8929f",
              "parent_uuid": "451ca6ea-6819-4258-b7c1-5b94cd1a493d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27f39041-05ff-4ba3-9d11-382a359f59e2",
                  "parent_uuid": "6ac70e13-805a-47ee-b433-267da6c8929f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6eae245-c2cd-4178-ab5d-9028f47d6f32",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f0468785-190d-49a4-8d6c-c4e2173fb66c",
              "parent_uuid": "e6eae245-c2cd-4178-ab5d-9028f47d6f32",
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
              "uuid": "56a5e6b6-2181-45c8-b67c-2b9ab86b5de9",
              "parent_uuid": "e6eae245-c2cd-4178-ab5d-9028f47d6f32",
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
              "uuid": "fa3a704f-bd1e-493c-aeff-0c725c534341",
              "parent_uuid": "e6eae245-c2cd-4178-ab5d-9028f47d6f32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b4ea4d3-d6a0-4af4-bad2-156da111f257",
                  "parent_uuid": "fa3a704f-bd1e-493c-aeff-0c725c534341",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6fd6e4c-7859-4fb7-9cf1-50cd90e698f8",
              "parent_uuid": "e6eae245-c2cd-4178-ab5d-9028f47d6f32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e87352bd-a6be-4b06-b119-cd2d3b7fee34",
                  "parent_uuid": "c6fd6e4c-7859-4fb7-9cf1-50cd90e698f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df510e70-f2e1-45f5-a64e-b31f129c34cc",
              "parent_uuid": "e6eae245-c2cd-4178-ab5d-9028f47d6f32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "787c0987-9681-4f57-9bd7-3278360fd200",
                  "parent_uuid": "df510e70-f2e1-45f5-a64e-b31f129c34cc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e49646da-9eea-439a-8212-1fea0ec84f3a",
              "parent_uuid": "e6eae245-c2cd-4178-ab5d-9028f47d6f32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49a7d75a-40a0-42c3-9c62-c84ee280fc37",
                  "parent_uuid": "e49646da-9eea-439a-8212-1fea0ec84f3a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38dca223-566d-46b7-9ffe-2f64cc35c1f7",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30aeae36-32ca-49d4-b9a6-00b0a36fbda1",
              "parent_uuid": "38dca223-566d-46b7-9ffe-2f64cc35c1f7",
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
              "uuid": "6487dd8b-1a85-437e-bded-fdbd2680f91a",
              "parent_uuid": "38dca223-566d-46b7-9ffe-2f64cc35c1f7",
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
              "uuid": "17600654-3072-4d29-80a0-beb56c1c2ae1",
              "parent_uuid": "38dca223-566d-46b7-9ffe-2f64cc35c1f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf818e86-45d8-4209-8fe0-761634fdb7d9",
                  "parent_uuid": "17600654-3072-4d29-80a0-beb56c1c2ae1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5b15c02-227f-4695-90c8-20fee82fc7a1",
              "parent_uuid": "38dca223-566d-46b7-9ffe-2f64cc35c1f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10f675b1-7f5e-41d5-b5a9-f950b1ced95b",
                  "parent_uuid": "a5b15c02-227f-4695-90c8-20fee82fc7a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a02085e-45d0-4552-80a2-947539d602d4",
              "parent_uuid": "38dca223-566d-46b7-9ffe-2f64cc35c1f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5da86727-1330-4b87-8be2-29d3bee40ea1",
                  "parent_uuid": "7a02085e-45d0-4552-80a2-947539d602d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c0afb5d-c943-4c3f-bce4-79a7f8fa5fa6",
              "parent_uuid": "38dca223-566d-46b7-9ffe-2f64cc35c1f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f81fc165-221c-44ed-b0d6-94c3743feaa6",
                  "parent_uuid": "4c0afb5d-c943-4c3f-bce4-79a7f8fa5fa6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "068d2317-76a4-411c-90ae-414ff94f9681",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ffb2b1e-943e-471b-ab00-dc9a15ebce0d",
              "parent_uuid": "068d2317-76a4-411c-90ae-414ff94f9681",
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
              "uuid": "b135415f-ed01-4a06-bc86-5fe0f3b48929",
              "parent_uuid": "068d2317-76a4-411c-90ae-414ff94f9681",
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
              "uuid": "f78d010c-08d1-40e2-b81a-e4d9ff1a3fdd",
              "parent_uuid": "068d2317-76a4-411c-90ae-414ff94f9681",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d82338a0-d497-45fd-a742-cbe6bfdfd6a7",
                  "parent_uuid": "f78d010c-08d1-40e2-b81a-e4d9ff1a3fdd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "056296b0-2dea-4260-9126-dc2791b0d7b4",
              "parent_uuid": "068d2317-76a4-411c-90ae-414ff94f9681",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbc4323a-5c5f-4cbc-83cc-00c6ddac1e89",
                  "parent_uuid": "056296b0-2dea-4260-9126-dc2791b0d7b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e63b0195-64b6-425b-b7bf-704e54bf816f",
              "parent_uuid": "068d2317-76a4-411c-90ae-414ff94f9681",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c9977ec-eee1-498e-8463-db4d46912d41",
                  "parent_uuid": "e63b0195-64b6-425b-b7bf-704e54bf816f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "744bab8c-aa2f-4def-a1de-2b535094e16a",
              "parent_uuid": "068d2317-76a4-411c-90ae-414ff94f9681",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7a3de96-2924-4019-ab3a-c07d9240aac5",
                  "parent_uuid": "744bab8c-aa2f-4def-a1de-2b535094e16a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b439171-d00b-4624-b1cd-78fe5a4d6e5f",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a107bf3e-929a-4c59-8d9a-701eb841d205",
              "parent_uuid": "7b439171-d00b-4624-b1cd-78fe5a4d6e5f",
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
              "uuid": "7a5b0b14-f1ee-452f-be1c-c162a468af98",
              "parent_uuid": "7b439171-d00b-4624-b1cd-78fe5a4d6e5f",
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
              "uuid": "4a878369-c1e6-40a1-8374-6d92e01ef538",
              "parent_uuid": "7b439171-d00b-4624-b1cd-78fe5a4d6e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67232321-8cd4-4c1f-8973-6ee10a6dc0d2",
                  "parent_uuid": "4a878369-c1e6-40a1-8374-6d92e01ef538",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e075089-f0a2-4e85-abeb-b6c0b9182510",
              "parent_uuid": "7b439171-d00b-4624-b1cd-78fe5a4d6e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f8fd179-1443-48c6-8e6c-0d217bb0d674",
                  "parent_uuid": "5e075089-f0a2-4e85-abeb-b6c0b9182510",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d2f15f8-b9de-40af-adf0-16630193bfcf",
              "parent_uuid": "7b439171-d00b-4624-b1cd-78fe5a4d6e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4735f161-3122-4af7-9765-741927810418",
                  "parent_uuid": "8d2f15f8-b9de-40af-adf0-16630193bfcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a1d8155-760a-4f4c-9628-b39e89b498ad",
              "parent_uuid": "7b439171-d00b-4624-b1cd-78fe5a4d6e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6457b9f6-5e63-4631-b9e4-7bf9665391f5",
                  "parent_uuid": "8a1d8155-760a-4f4c-9628-b39e89b498ad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "25d04a2b-a21a-45cb-bf11-da2945b87860",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "bfe5f98f-9fac-4766-b171-73e272b3862e",
              "parent_uuid": "25d04a2b-a21a-45cb-bf11-da2945b87860",
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
          "uuid": "7af835f3-73b5-410a-a1a3-f455761a81dd",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e614d27c-6c52-40dc-bcc3-ffc4c09d72ca",
              "parent_uuid": "7af835f3-73b5-410a-a1a3-f455761a81dd",
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
              "uuid": "ab5a0014-525d-42c3-a889-ce99c32750d0",
              "parent_uuid": "7af835f3-73b5-410a-a1a3-f455761a81dd",
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
              "uuid": "a51ac034-988f-48b0-a8af-822948dbef49",
              "parent_uuid": "7af835f3-73b5-410a-a1a3-f455761a81dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d858ad75-6a8b-4e23-82c6-b6ee96226b53",
                  "parent_uuid": "a51ac034-988f-48b0-a8af-822948dbef49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e933fd7-eb51-4e42-827f-23fa6451e34f",
              "parent_uuid": "7af835f3-73b5-410a-a1a3-f455761a81dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9d92052-cbac-4eac-8bcd-4ddd70847acd",
                  "parent_uuid": "1e933fd7-eb51-4e42-827f-23fa6451e34f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb348f21-a47f-4be1-a1fb-cbc9486c23f2",
              "parent_uuid": "7af835f3-73b5-410a-a1a3-f455761a81dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f438b08-0cc9-4567-8ca6-e4537bbbe606",
                  "parent_uuid": "fb348f21-a47f-4be1-a1fb-cbc9486c23f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86b7eccf-3bd7-4eea-8fe4-01f966b9aff6",
              "parent_uuid": "7af835f3-73b5-410a-a1a3-f455761a81dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "305bf8de-509d-4fee-857b-3974b2cb4a20",
                  "parent_uuid": "86b7eccf-3bd7-4eea-8fe4-01f966b9aff6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3705fe10-1430-4278-8784-4836433a69c0",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fea070e4-5503-434c-841f-3232fbb0ad7e",
              "parent_uuid": "3705fe10-1430-4278-8784-4836433a69c0",
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
          "uuid": "9d45b0bf-2824-44f7-a195-bf7a406e8440",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc3435bf-0e89-4e0c-b79c-e43899ed733c",
              "parent_uuid": "9d45b0bf-2824-44f7-a195-bf7a406e8440",
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
          "uuid": "aa8136c2-ab67-498e-a876-578ce44434ea",
          "parent_uuid": "f85bd7c5-d815-4291-a74e-c6e5ad66d6b7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab2bcd7a-8503-4919-a6e2-0daf926a4fa7",
              "parent_uuid": "aa8136c2-ab67-498e-a876-578ce44434ea",
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
                  "uuid": "ce834426-08fa-44dd-84ea-debee128a4a0",
                  "parent_uuid": "ab2bcd7a-8503-4919-a6e2-0daf926a4fa7",
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

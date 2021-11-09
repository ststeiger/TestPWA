
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
  "uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "d9999c52-8ee6-4637-ae31-09461520189e",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "a19c3ada-5701-4518-9539-37dd01bdaeb0",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "c50b1c6b-ff2d-4d1c-b2a8-288895d97341",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "8276ee44-e1d7-4c7f-93ef-c6ed0b1caecd",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "e9c1c4e4-f2f8-471b-b464-5dfdbeda0049",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "b9a8b641-5bda-4fee-a255-7dc68bdaff87",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "6635aee9-ba7a-40a0-bec2-e6f357cf9bb0",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
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
      "uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
      "parent_uuid": "4b38aab3-4dc8-4de9-882b-51383e33e48a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "43b058e4-b97f-474c-994a-94a716bbbda6",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e1c6f8ef-ee77-4baa-8a8d-978b16b10985",
              "parent_uuid": "43b058e4-b97f-474c-994a-94a716bbbda6",
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
              "uuid": "0292cf6b-35f9-496c-882f-c819d3c15845",
              "parent_uuid": "43b058e4-b97f-474c-994a-94a716bbbda6",
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
              "uuid": "bc2ef82a-ac50-4024-a9cd-269f00cec8f0",
              "parent_uuid": "43b058e4-b97f-474c-994a-94a716bbbda6",
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
              "uuid": "15a2966d-2e94-4695-a330-e6877e2beabf",
              "parent_uuid": "43b058e4-b97f-474c-994a-94a716bbbda6",
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
          "uuid": "76dab9e5-0235-4cf5-aa0c-2771c9ec3afe",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "2bfff279-5c75-47a9-8d51-b16c412f31a4",
              "parent_uuid": "76dab9e5-0235-4cf5-aa0c-2771c9ec3afe",
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
              "uuid": "c145069e-a750-44f3-b244-d590d6aa47a0",
              "parent_uuid": "76dab9e5-0235-4cf5-aa0c-2771c9ec3afe",
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
              "uuid": "d4032026-2dfb-4763-8c81-35b159013523",
              "parent_uuid": "76dab9e5-0235-4cf5-aa0c-2771c9ec3afe",
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
              "uuid": "58ac5e74-2d98-4058-872a-62a9547237d5",
              "parent_uuid": "76dab9e5-0235-4cf5-aa0c-2771c9ec3afe",
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
          "uuid": "a3b57626-378f-4eea-ac26-52493d6820d3",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c1a4c05f-7af8-4bc2-945b-eff6c16e8e1b",
              "parent_uuid": "a3b57626-378f-4eea-ac26-52493d6820d3",
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
              "uuid": "ef1bc081-dd3c-41b0-894e-d5235d6ea0ff",
              "parent_uuid": "a3b57626-378f-4eea-ac26-52493d6820d3",
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
              "uuid": "3c804944-f1af-410e-a934-2a8ac116a2e5",
              "parent_uuid": "a3b57626-378f-4eea-ac26-52493d6820d3",
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
              "uuid": "f92f5740-9f6b-4274-acc8-0c2ce1cbe825",
              "parent_uuid": "a3b57626-378f-4eea-ac26-52493d6820d3",
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
              "uuid": "d0fe866f-9679-44de-bb71-62fb3b0c4f49",
              "parent_uuid": "a3b57626-378f-4eea-ac26-52493d6820d3",
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
              "uuid": "724c73aa-05bc-4257-b71b-7102d36dff27",
              "parent_uuid": "a3b57626-378f-4eea-ac26-52493d6820d3",
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
          "uuid": "45efcbb8-02c8-4a2a-bd5d-fe5eef317c9c",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5ad1f728-07d8-4dd2-8ddb-3fd1b4e29163",
              "parent_uuid": "45efcbb8-02c8-4a2a-bd5d-fe5eef317c9c",
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
          "uuid": "beb0c9f3-17ef-4d17-85ad-59bdb8231a77",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "463195ec-2469-4477-bba2-da6ac27a3d40",
              "parent_uuid": "beb0c9f3-17ef-4d17-85ad-59bdb8231a77",
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
              "uuid": "8629fe24-fcae-43b6-8be8-1147ae51edaf",
              "parent_uuid": "beb0c9f3-17ef-4d17-85ad-59bdb8231a77",
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
              "uuid": "5b256e64-0ca1-4f31-874c-54c84f622d03",
              "parent_uuid": "beb0c9f3-17ef-4d17-85ad-59bdb8231a77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bb7dd0d-de86-4595-8fca-b7cc4cb68eaf",
                  "parent_uuid": "5b256e64-0ca1-4f31-874c-54c84f622d03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd69134f-7710-495e-9563-b2882a3b27e8",
              "parent_uuid": "beb0c9f3-17ef-4d17-85ad-59bdb8231a77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02c41f1c-9f7d-4e6e-aae0-323e479bae6b",
                  "parent_uuid": "dd69134f-7710-495e-9563-b2882a3b27e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8b44591-743e-4499-87fc-f7d4cea00a20",
              "parent_uuid": "beb0c9f3-17ef-4d17-85ad-59bdb8231a77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "897cf1a3-caba-4785-afd7-1455ec5fc74e",
                  "parent_uuid": "e8b44591-743e-4499-87fc-f7d4cea00a20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4a6ec84-d2b7-49d9-8374-7f512bf94913",
              "parent_uuid": "beb0c9f3-17ef-4d17-85ad-59bdb8231a77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa09a687-b869-4781-aeba-903e919558ea",
                  "parent_uuid": "f4a6ec84-d2b7-49d9-8374-7f512bf94913",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d29b4df8-8ec5-40c1-955a-b0f0a13679d9",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f26e1faf-e68b-483f-b28a-f9ac923d24d6",
              "parent_uuid": "d29b4df8-8ec5-40c1-955a-b0f0a13679d9",
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
              "uuid": "8a3416da-c196-4bb9-9573-0bd23655c384",
              "parent_uuid": "d29b4df8-8ec5-40c1-955a-b0f0a13679d9",
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
              "uuid": "11302ae0-9b03-4fe2-a55e-afb0f6dd8d07",
              "parent_uuid": "d29b4df8-8ec5-40c1-955a-b0f0a13679d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8943feb1-d906-4973-a6c8-bc246cdc4c4b",
                  "parent_uuid": "11302ae0-9b03-4fe2-a55e-afb0f6dd8d07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bef679ff-32b2-4077-8d5a-e8a53cebf241",
              "parent_uuid": "d29b4df8-8ec5-40c1-955a-b0f0a13679d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "717c88a9-804b-4b31-af86-c5fdf8fff186",
                  "parent_uuid": "bef679ff-32b2-4077-8d5a-e8a53cebf241",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90901380-4784-4159-87d9-a8f6a6734c63",
              "parent_uuid": "d29b4df8-8ec5-40c1-955a-b0f0a13679d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cbe3c3e-79b4-4758-9d41-c81e7909c054",
                  "parent_uuid": "90901380-4784-4159-87d9-a8f6a6734c63",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "308c431a-1e27-4365-8dc6-eacc9ba502db",
              "parent_uuid": "d29b4df8-8ec5-40c1-955a-b0f0a13679d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72d133ce-3c2a-46be-9966-811b02980b9c",
                  "parent_uuid": "308c431a-1e27-4365-8dc6-eacc9ba502db",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ccecb4fb-9327-4ac9-acc3-59d4da239a29",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8db7a87b-f5b3-4136-9fcb-6709e3c2ef7d",
              "parent_uuid": "ccecb4fb-9327-4ac9-acc3-59d4da239a29",
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
              "uuid": "4251c782-d943-4385-bda4-d5caecfd11b1",
              "parent_uuid": "ccecb4fb-9327-4ac9-acc3-59d4da239a29",
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
              "uuid": "945bb46e-7357-48f8-a4fe-da30571c4291",
              "parent_uuid": "ccecb4fb-9327-4ac9-acc3-59d4da239a29",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86f1a718-3793-4f8d-b9a9-bbc5a8ba2c11",
                  "parent_uuid": "945bb46e-7357-48f8-a4fe-da30571c4291",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ec47bb1-9bb2-40bb-af6d-a3db703242cd",
              "parent_uuid": "ccecb4fb-9327-4ac9-acc3-59d4da239a29",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4cb9cea-1d98-45c5-8493-18a6cc886ba5",
                  "parent_uuid": "4ec47bb1-9bb2-40bb-af6d-a3db703242cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8948eb3-ff6b-45de-8a3c-0443099be15b",
              "parent_uuid": "ccecb4fb-9327-4ac9-acc3-59d4da239a29",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ff51782-7180-4301-9b17-72337eabe3a7",
                  "parent_uuid": "a8948eb3-ff6b-45de-8a3c-0443099be15b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0cbe1a2c-0aad-49fa-9505-13f417abd6cf",
              "parent_uuid": "ccecb4fb-9327-4ac9-acc3-59d4da239a29",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "757185ae-fadd-4977-b312-b0fa06b49670",
                  "parent_uuid": "0cbe1a2c-0aad-49fa-9505-13f417abd6cf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9553588-ba56-4dec-9c92-64694acfc754",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02e0df76-9099-414b-957e-3879b710e49a",
              "parent_uuid": "b9553588-ba56-4dec-9c92-64694acfc754",
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
              "uuid": "943c03a8-8d5a-4067-9748-b1caa65b053f",
              "parent_uuid": "b9553588-ba56-4dec-9c92-64694acfc754",
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
              "uuid": "87fc934d-617a-4c7c-bb48-fe431e401fba",
              "parent_uuid": "b9553588-ba56-4dec-9c92-64694acfc754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0d469c9-5eea-4e86-895c-d7a630058e72",
                  "parent_uuid": "87fc934d-617a-4c7c-bb48-fe431e401fba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30b4d8fc-9862-456c-85a7-e627ffbd7149",
              "parent_uuid": "b9553588-ba56-4dec-9c92-64694acfc754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85923ccd-5822-4ce7-adab-530cd45fea50",
                  "parent_uuid": "30b4d8fc-9862-456c-85a7-e627ffbd7149",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d6b54b5-a403-45c4-b611-b17890dbcaa5",
              "parent_uuid": "b9553588-ba56-4dec-9c92-64694acfc754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1dc2b254-992c-4740-9021-eb108f30a6f2",
                  "parent_uuid": "0d6b54b5-a403-45c4-b611-b17890dbcaa5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9e862f3-e3ee-4148-9323-30e3ece27e07",
              "parent_uuid": "b9553588-ba56-4dec-9c92-64694acfc754",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45791164-d879-4424-a56b-461177900e9f",
                  "parent_uuid": "b9e862f3-e3ee-4148-9323-30e3ece27e07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "551622ee-7a61-49e4-b91c-3d306024f4c2",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc905de7-77fb-4465-8451-5bbb2058ca96",
              "parent_uuid": "551622ee-7a61-49e4-b91c-3d306024f4c2",
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
              "uuid": "71c1823d-f75a-43a8-816d-49e285e10ac6",
              "parent_uuid": "551622ee-7a61-49e4-b91c-3d306024f4c2",
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
              "uuid": "b8d3f991-d333-4f34-8378-1559ef144857",
              "parent_uuid": "551622ee-7a61-49e4-b91c-3d306024f4c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06499937-8fcf-42c8-95fe-a46fc498ead8",
                  "parent_uuid": "b8d3f991-d333-4f34-8378-1559ef144857",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92b86adc-b881-498d-8695-d6f2abdf6285",
              "parent_uuid": "551622ee-7a61-49e4-b91c-3d306024f4c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a43f7e5-3b99-43dc-b2ce-134cc3bc7c1c",
                  "parent_uuid": "92b86adc-b881-498d-8695-d6f2abdf6285",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32e72bee-d44b-4c0a-b347-54c211b011d5",
              "parent_uuid": "551622ee-7a61-49e4-b91c-3d306024f4c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1c2747b-f2df-4169-badf-4169a229a028",
                  "parent_uuid": "32e72bee-d44b-4c0a-b347-54c211b011d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c678cb7f-2c19-45e2-853c-ed2ed1285741",
              "parent_uuid": "551622ee-7a61-49e4-b91c-3d306024f4c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b267567-8a1d-4e07-a8ae-21a9253b8160",
                  "parent_uuid": "c678cb7f-2c19-45e2-853c-ed2ed1285741",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26bae045-6af5-44a2-a63d-16466b28c5e2",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5176c6b5-554d-4ae5-b50a-52645fcd4a91",
              "parent_uuid": "26bae045-6af5-44a2-a63d-16466b28c5e2",
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
              "uuid": "a1984bef-e6e0-4f7b-8d90-e3aaa4a3eef4",
              "parent_uuid": "26bae045-6af5-44a2-a63d-16466b28c5e2",
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
              "uuid": "cabfd607-fd88-44cb-b2cd-ed2952d49437",
              "parent_uuid": "26bae045-6af5-44a2-a63d-16466b28c5e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b6ad0dd-89ce-4bdd-9b9c-c88f914e7e38",
                  "parent_uuid": "cabfd607-fd88-44cb-b2cd-ed2952d49437",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5f13ec5-4318-4eb7-ab21-a7b4055798ed",
              "parent_uuid": "26bae045-6af5-44a2-a63d-16466b28c5e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9c0b8f6-6df6-4a64-992c-1e5e1abf4fde",
                  "parent_uuid": "e5f13ec5-4318-4eb7-ab21-a7b4055798ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75f12a98-3435-458b-8467-4a2a6eddf17c",
              "parent_uuid": "26bae045-6af5-44a2-a63d-16466b28c5e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c055bd19-f589-4a3b-aa94-a53174088980",
                  "parent_uuid": "75f12a98-3435-458b-8467-4a2a6eddf17c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96b9aa37-3f22-45b9-8f51-308fa6410ebf",
              "parent_uuid": "26bae045-6af5-44a2-a63d-16466b28c5e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "991bef28-c6a5-42ef-a773-0e9ebe51e852",
                  "parent_uuid": "96b9aa37-3f22-45b9-8f51-308fa6410ebf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bcfe3355-f20b-4174-bc42-a64406be6cc3",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9cec99b-6fe9-4ac0-a79e-a1788fb4f939",
              "parent_uuid": "bcfe3355-f20b-4174-bc42-a64406be6cc3",
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
              "uuid": "6deca611-67b4-4acf-95e2-87d6aab71312",
              "parent_uuid": "bcfe3355-f20b-4174-bc42-a64406be6cc3",
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
              "uuid": "0536401e-748b-4d3e-bef6-eee8902e60a2",
              "parent_uuid": "bcfe3355-f20b-4174-bc42-a64406be6cc3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76aa3d73-f714-4bca-872e-d427d0a471cc",
                  "parent_uuid": "0536401e-748b-4d3e-bef6-eee8902e60a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "925d6e37-b762-479d-8240-45c7d27bd5cd",
              "parent_uuid": "bcfe3355-f20b-4174-bc42-a64406be6cc3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98ba65ef-59d0-4076-8364-74666e51b4cf",
                  "parent_uuid": "925d6e37-b762-479d-8240-45c7d27bd5cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5acdbc29-7058-48fe-aff3-54f6d6548dc1",
              "parent_uuid": "bcfe3355-f20b-4174-bc42-a64406be6cc3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7e61798-64a0-4144-bb40-a0a88968cd7a",
                  "parent_uuid": "5acdbc29-7058-48fe-aff3-54f6d6548dc1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa5aef51-1eaf-4f3b-a46b-41802cae87f4",
              "parent_uuid": "bcfe3355-f20b-4174-bc42-a64406be6cc3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "492d1d29-d7ad-43b0-aa9d-b6a90a677b42",
                  "parent_uuid": "fa5aef51-1eaf-4f3b-a46b-41802cae87f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "87e91c6a-5d23-45d9-aa99-4903fdce5659",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0221c9e-37d6-44ad-ad50-673608df067f",
              "parent_uuid": "87e91c6a-5d23-45d9-aa99-4903fdce5659",
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
              "uuid": "ebd118ab-eec9-4d02-b4bb-6fb951522b6f",
              "parent_uuid": "87e91c6a-5d23-45d9-aa99-4903fdce5659",
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
              "uuid": "00c6a9e0-0879-49e0-9c0d-269931dd6f26",
              "parent_uuid": "87e91c6a-5d23-45d9-aa99-4903fdce5659",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2a8e89d-5720-4888-b4e2-8484ded69f23",
                  "parent_uuid": "00c6a9e0-0879-49e0-9c0d-269931dd6f26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5eca948-198b-4d8b-bb15-5bfae8e7d2f6",
              "parent_uuid": "87e91c6a-5d23-45d9-aa99-4903fdce5659",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "465abab9-a740-4902-80c9-91a0fc4b7f74",
                  "parent_uuid": "d5eca948-198b-4d8b-bb15-5bfae8e7d2f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91109e6a-4fef-4bbb-a7e4-418601f6bbca",
              "parent_uuid": "87e91c6a-5d23-45d9-aa99-4903fdce5659",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9535c9e-2cea-4204-a9bf-a8063bace0b7",
                  "parent_uuid": "91109e6a-4fef-4bbb-a7e4-418601f6bbca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23829e4a-a0cd-4129-9a23-5f035964d9f1",
              "parent_uuid": "87e91c6a-5d23-45d9-aa99-4903fdce5659",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5843d351-5e3b-4deb-b4ca-ca7a7b410012",
                  "parent_uuid": "23829e4a-a0cd-4129-9a23-5f035964d9f1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0921e1bd-41bc-446e-8518-4bffc3c7c1ab",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee2e5dc3-7dec-4aa3-9a4c-955fdf5c31e0",
              "parent_uuid": "0921e1bd-41bc-446e-8518-4bffc3c7c1ab",
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
              "uuid": "461bcdd0-52b1-4109-9d8a-e9408d391787",
              "parent_uuid": "0921e1bd-41bc-446e-8518-4bffc3c7c1ab",
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
              "uuid": "dd24aebe-8f51-4ba4-b2fe-223e1dfd36f4",
              "parent_uuid": "0921e1bd-41bc-446e-8518-4bffc3c7c1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a54e55c-e9d7-45ca-9154-91119bdd2b7d",
                  "parent_uuid": "dd24aebe-8f51-4ba4-b2fe-223e1dfd36f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "525ff4ec-1ffa-4c21-aceb-4ca9b244cad6",
              "parent_uuid": "0921e1bd-41bc-446e-8518-4bffc3c7c1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77f7c2d2-2b31-41a6-b00f-01af50c41d23",
                  "parent_uuid": "525ff4ec-1ffa-4c21-aceb-4ca9b244cad6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "193eae9e-1e89-454b-9e78-53fb00c6aa4f",
              "parent_uuid": "0921e1bd-41bc-446e-8518-4bffc3c7c1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40bbc60d-444e-4892-829b-096992a45368",
                  "parent_uuid": "193eae9e-1e89-454b-9e78-53fb00c6aa4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "995160af-b34f-4042-9536-bfaf16b325c5",
              "parent_uuid": "0921e1bd-41bc-446e-8518-4bffc3c7c1ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d310b0c2-b2a7-4aa0-a9e9-9291721af1f1",
                  "parent_uuid": "995160af-b34f-4042-9536-bfaf16b325c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3382b76f-0407-4c0d-9417-4e5c559d560e",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "70d1b669-5aff-41b4-a80f-dbc7c1b42f67",
              "parent_uuid": "3382b76f-0407-4c0d-9417-4e5c559d560e",
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
              "uuid": "1d195f89-1a0f-4208-9853-7b721dab1fad",
              "parent_uuid": "3382b76f-0407-4c0d-9417-4e5c559d560e",
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
              "uuid": "b3dd7a0f-795d-45e2-b23b-65fe2498b1cf",
              "parent_uuid": "3382b76f-0407-4c0d-9417-4e5c559d560e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fa5e00b-8c1b-449b-8d85-fe1518eacc40",
                  "parent_uuid": "b3dd7a0f-795d-45e2-b23b-65fe2498b1cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8183912-eb8d-4984-9ecb-af56d5dc4653",
              "parent_uuid": "3382b76f-0407-4c0d-9417-4e5c559d560e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "195c453a-3532-4556-a882-2c888b8c7607",
                  "parent_uuid": "a8183912-eb8d-4984-9ecb-af56d5dc4653",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a090b3f0-e352-46cf-bfb8-c722ab423c0a",
              "parent_uuid": "3382b76f-0407-4c0d-9417-4e5c559d560e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ef3136c-ae3e-46d6-b3c1-7606ce3c014c",
                  "parent_uuid": "a090b3f0-e352-46cf-bfb8-c722ab423c0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d500341-2252-4e6e-9a6c-a7abab94561f",
              "parent_uuid": "3382b76f-0407-4c0d-9417-4e5c559d560e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c999bc2-456b-4323-a02c-4d4a9756507a",
                  "parent_uuid": "5d500341-2252-4e6e-9a6c-a7abab94561f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ac8d0e98-658c-4ee8-9861-f15f1dbfc00a",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bfbd683-cca3-4796-96fa-7717eeea1e8a",
              "parent_uuid": "ac8d0e98-658c-4ee8-9861-f15f1dbfc00a",
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
              "uuid": "d766e715-9c87-4eb0-ad4e-f0f5621a8ce6",
              "parent_uuid": "ac8d0e98-658c-4ee8-9861-f15f1dbfc00a",
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
              "uuid": "4ce53aff-7f25-4dda-a329-e870123e09a2",
              "parent_uuid": "ac8d0e98-658c-4ee8-9861-f15f1dbfc00a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96cbd9bf-50b1-4597-8eef-3e31e864ea08",
                  "parent_uuid": "4ce53aff-7f25-4dda-a329-e870123e09a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "baee895a-1c5c-477f-afce-6119d422b0d3",
              "parent_uuid": "ac8d0e98-658c-4ee8-9861-f15f1dbfc00a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9c4140a-a43b-4f61-ae6a-aeeb19112adc",
                  "parent_uuid": "baee895a-1c5c-477f-afce-6119d422b0d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa69f221-1b13-4144-8389-baf6c67b2606",
              "parent_uuid": "ac8d0e98-658c-4ee8-9861-f15f1dbfc00a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ca6c0be-2bb8-4310-a8a7-6833660fe5b6",
                  "parent_uuid": "aa69f221-1b13-4144-8389-baf6c67b2606",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a24369ee-77fb-4ec5-ac85-d809eb5947a4",
              "parent_uuid": "ac8d0e98-658c-4ee8-9861-f15f1dbfc00a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce1e2c38-66a4-4ec9-a7d5-945f2695e7e2",
                  "parent_uuid": "a24369ee-77fb-4ec5-ac85-d809eb5947a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c30540b-4d15-4c11-be05-10696d655fab",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a5e55152-741f-443a-873a-cf657235584c",
              "parent_uuid": "4c30540b-4d15-4c11-be05-10696d655fab",
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
              "uuid": "f9ce88de-8969-404d-8db4-c3da569b53e4",
              "parent_uuid": "4c30540b-4d15-4c11-be05-10696d655fab",
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
              "uuid": "6797f85c-e618-4d4c-9af8-4ab6c1a3316b",
              "parent_uuid": "4c30540b-4d15-4c11-be05-10696d655fab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fc7aa06-3459-40ff-aa79-5bf1a2e97a04",
                  "parent_uuid": "6797f85c-e618-4d4c-9af8-4ab6c1a3316b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "632c47b2-0f61-4df1-b46d-72234bf647b3",
              "parent_uuid": "4c30540b-4d15-4c11-be05-10696d655fab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcea5158-dcae-4925-a0a6-17ca36980aa5",
                  "parent_uuid": "632c47b2-0f61-4df1-b46d-72234bf647b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b903020-5971-4538-b950-41c3b481af5f",
              "parent_uuid": "4c30540b-4d15-4c11-be05-10696d655fab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "254b90d6-fa8a-438f-96e6-38b9bb7ca534",
                  "parent_uuid": "1b903020-5971-4538-b950-41c3b481af5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5adebe0f-8083-4d01-933a-9ded6a66d9ed",
              "parent_uuid": "4c30540b-4d15-4c11-be05-10696d655fab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d17cbec2-2309-4655-89cd-eec4852e51f0",
                  "parent_uuid": "5adebe0f-8083-4d01-933a-9ded6a66d9ed",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3c6d8618-73ba-4cdc-99e5-94ea2bc134df",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02eb49fe-7f3e-4f87-8366-6e9286f07bd7",
              "parent_uuid": "3c6d8618-73ba-4cdc-99e5-94ea2bc134df",
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
              "uuid": "633d6142-7b81-43af-91ea-f345237843ae",
              "parent_uuid": "3c6d8618-73ba-4cdc-99e5-94ea2bc134df",
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
              "uuid": "a856c57b-5dca-4b61-910f-fb7ca4ad2513",
              "parent_uuid": "3c6d8618-73ba-4cdc-99e5-94ea2bc134df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dad8d460-d306-4558-a3b8-725b6caaabc0",
                  "parent_uuid": "a856c57b-5dca-4b61-910f-fb7ca4ad2513",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d6db0e0-8207-4db2-b495-b88bbb0fca4c",
              "parent_uuid": "3c6d8618-73ba-4cdc-99e5-94ea2bc134df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01f6d0f7-64ac-49c3-af18-3993f80fd17d",
                  "parent_uuid": "3d6db0e0-8207-4db2-b495-b88bbb0fca4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de2f749f-d579-40e7-be4f-b0efa5bc2f7f",
              "parent_uuid": "3c6d8618-73ba-4cdc-99e5-94ea2bc134df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "865f512a-fec8-4d12-ba36-468aac58c23b",
                  "parent_uuid": "de2f749f-d579-40e7-be4f-b0efa5bc2f7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebc8a486-d79d-4cda-ac40-ca8995e3868b",
              "parent_uuid": "3c6d8618-73ba-4cdc-99e5-94ea2bc134df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "106efec1-328a-4461-9c1b-f1d23a7dc510",
                  "parent_uuid": "ebc8a486-d79d-4cda-ac40-ca8995e3868b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5672377e-780f-46d3-b5c6-1fe9af624040",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f7f4409-7089-4d03-8467-ae13923425c6",
              "parent_uuid": "5672377e-780f-46d3-b5c6-1fe9af624040",
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
              "uuid": "8dd9ebda-37b7-4da6-8e23-452f0e05f1f1",
              "parent_uuid": "5672377e-780f-46d3-b5c6-1fe9af624040",
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
              "uuid": "4eabafe8-155f-4b0a-9e27-3c909407e773",
              "parent_uuid": "5672377e-780f-46d3-b5c6-1fe9af624040",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5afcea97-6c6d-4aea-8ef9-d583f37dc879",
                  "parent_uuid": "4eabafe8-155f-4b0a-9e27-3c909407e773",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecc59824-e0f5-41e2-b01a-42034f350cb9",
              "parent_uuid": "5672377e-780f-46d3-b5c6-1fe9af624040",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60fd093c-5357-447f-abed-134932e49dec",
                  "parent_uuid": "ecc59824-e0f5-41e2-b01a-42034f350cb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b7e1084-cd0e-487b-b1c3-4042043ae6d4",
              "parent_uuid": "5672377e-780f-46d3-b5c6-1fe9af624040",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c42fa494-6964-4622-800b-e1fcde081736",
                  "parent_uuid": "4b7e1084-cd0e-487b-b1c3-4042043ae6d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99e8bcf7-ae2b-4be2-a7ac-4ada6fd5afc9",
              "parent_uuid": "5672377e-780f-46d3-b5c6-1fe9af624040",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48f6a5d8-176a-483c-8011-6b77214cbd6e",
                  "parent_uuid": "99e8bcf7-ae2b-4be2-a7ac-4ada6fd5afc9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e5b2ffe2-58f4-4f44-bd3d-3f67a9571410",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac2fbae4-2ded-4647-9838-424c60e6835f",
              "parent_uuid": "e5b2ffe2-58f4-4f44-bd3d-3f67a9571410",
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
          "uuid": "ce2c1731-ca57-4394-800d-30bc397f7331",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "bf92e8d6-fc2e-4344-bee8-e977fa70ed8b",
              "parent_uuid": "ce2c1731-ca57-4394-800d-30bc397f7331",
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
          "uuid": "39d765f7-e92c-448a-92f6-970cf88b546d",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb09f0f0-90f8-440f-a6ae-819cf9957ad7",
              "parent_uuid": "39d765f7-e92c-448a-92f6-970cf88b546d",
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
              "uuid": "2536b5bc-f507-4887-b2cc-4af356d24a23",
              "parent_uuid": "39d765f7-e92c-448a-92f6-970cf88b546d",
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
              "uuid": "0207e9d9-0274-4d58-9fba-cfb6916e8f34",
              "parent_uuid": "39d765f7-e92c-448a-92f6-970cf88b546d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0918fd14-a325-4028-9666-4538d25c6acb",
                  "parent_uuid": "0207e9d9-0274-4d58-9fba-cfb6916e8f34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfbce8f8-42d2-4497-9b39-d999849a0307",
              "parent_uuid": "39d765f7-e92c-448a-92f6-970cf88b546d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a64fd6a-14ab-4bed-8cc9-9b607a3a43cf",
                  "parent_uuid": "cfbce8f8-42d2-4497-9b39-d999849a0307",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd187eb7-c5f4-4c51-ac40-5b00a148db79",
              "parent_uuid": "39d765f7-e92c-448a-92f6-970cf88b546d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce5c52cd-b045-4098-892b-243dbfcc1d89",
                  "parent_uuid": "cd187eb7-c5f4-4c51-ac40-5b00a148db79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "430a4617-be3a-4a99-a00b-548c6e6bb0cd",
              "parent_uuid": "39d765f7-e92c-448a-92f6-970cf88b546d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e19f842-b538-4d6a-872c-192ae338558b",
                  "parent_uuid": "430a4617-be3a-4a99-a00b-548c6e6bb0cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "52b61e5a-74ed-4080-99e7-399483710a5c",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee6d6c75-7f91-4434-a3f8-86266719c97b",
              "parent_uuid": "52b61e5a-74ed-4080-99e7-399483710a5c",
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
              "uuid": "260957ae-b4a5-4b5f-b5c0-ad0ea38855a9",
              "parent_uuid": "52b61e5a-74ed-4080-99e7-399483710a5c",
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
              "uuid": "db12db5d-9345-4710-aa4d-4bb5af1542b9",
              "parent_uuid": "52b61e5a-74ed-4080-99e7-399483710a5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c489b212-9cfc-4b9f-a959-dbc20a11711d",
                  "parent_uuid": "db12db5d-9345-4710-aa4d-4bb5af1542b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45e37368-c742-438b-93f1-612fe3804904",
              "parent_uuid": "52b61e5a-74ed-4080-99e7-399483710a5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8855716-5fb1-4313-8e51-856060c6e816",
                  "parent_uuid": "45e37368-c742-438b-93f1-612fe3804904",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f3c9a3f-ecec-49a2-9f44-e63c363e8283",
              "parent_uuid": "52b61e5a-74ed-4080-99e7-399483710a5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6eca14f0-a0d4-40f4-b4f4-f44d7269c99b",
                  "parent_uuid": "9f3c9a3f-ecec-49a2-9f44-e63c363e8283",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b01b611-68d9-49fb-bda5-47411fd2ebba",
              "parent_uuid": "52b61e5a-74ed-4080-99e7-399483710a5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad67968a-9f54-43ad-9d51-4e853f2689ac",
                  "parent_uuid": "0b01b611-68d9-49fb-bda5-47411fd2ebba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4298b4a0-6e23-4fa1-b74a-d1eda9f030d8",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5fe2a259-3b4c-4fa5-b3a3-0224de61cdc1",
              "parent_uuid": "4298b4a0-6e23-4fa1-b74a-d1eda9f030d8",
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
              "uuid": "64c7cf9d-903a-495b-8ca5-2c0e569ef12e",
              "parent_uuid": "4298b4a0-6e23-4fa1-b74a-d1eda9f030d8",
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
              "uuid": "4cac7b07-7093-438e-8d66-3b668b38f46e",
              "parent_uuid": "4298b4a0-6e23-4fa1-b74a-d1eda9f030d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48763fae-405f-41c9-bdc8-47014c600f16",
                  "parent_uuid": "4cac7b07-7093-438e-8d66-3b668b38f46e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "381fcdd9-2de3-4b44-ac26-9be783ebb51b",
              "parent_uuid": "4298b4a0-6e23-4fa1-b74a-d1eda9f030d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f07c6a6-7fd1-4bd6-b1c2-ffbc79be5e6b",
                  "parent_uuid": "381fcdd9-2de3-4b44-ac26-9be783ebb51b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be67b7fc-3e7a-4999-a3ad-897e72853a52",
              "parent_uuid": "4298b4a0-6e23-4fa1-b74a-d1eda9f030d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3214faa-1c8b-4484-a8ce-f38e8601590a",
                  "parent_uuid": "be67b7fc-3e7a-4999-a3ad-897e72853a52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4878925-c48e-42f9-a74e-11c6396cabe8",
              "parent_uuid": "4298b4a0-6e23-4fa1-b74a-d1eda9f030d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ca0f0be-44cc-42f0-8c6f-3239e340d4fe",
                  "parent_uuid": "b4878925-c48e-42f9-a74e-11c6396cabe8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "58659a56-70dd-41cb-850d-152e4a8f23f9",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f4035dc-fc39-49c1-9916-951409f413f7",
              "parent_uuid": "58659a56-70dd-41cb-850d-152e4a8f23f9",
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
              "uuid": "1d89fe3c-902f-40a8-8e5b-3fc6f208ec21",
              "parent_uuid": "58659a56-70dd-41cb-850d-152e4a8f23f9",
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
              "uuid": "8ffa7c7a-7a3c-4399-b83e-3df160669c2b",
              "parent_uuid": "58659a56-70dd-41cb-850d-152e4a8f23f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8567874d-80e6-4cff-8761-3f0b01a18103",
                  "parent_uuid": "8ffa7c7a-7a3c-4399-b83e-3df160669c2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3829c4c3-cd7a-49ec-8909-1dddea2af469",
              "parent_uuid": "58659a56-70dd-41cb-850d-152e4a8f23f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce150e76-c266-431f-8aaf-5fab7b949378",
                  "parent_uuid": "3829c4c3-cd7a-49ec-8909-1dddea2af469",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f54bcbd8-1e1c-45a1-adbb-8517a74810d6",
              "parent_uuid": "58659a56-70dd-41cb-850d-152e4a8f23f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a655eaa5-ab9b-4984-b9a3-6b7cc68e54fb",
                  "parent_uuid": "f54bcbd8-1e1c-45a1-adbb-8517a74810d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4dc1f8a4-4834-4177-8fd9-76c95bbea216",
              "parent_uuid": "58659a56-70dd-41cb-850d-152e4a8f23f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f8cd8de-b7a4-494b-aa2c-51a24710d6c0",
                  "parent_uuid": "4dc1f8a4-4834-4177-8fd9-76c95bbea216",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "42407604-d1a9-4c09-baf9-90caac77e731",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0dd47ce1-bfc7-4fa8-a986-b95084d86b11",
              "parent_uuid": "42407604-d1a9-4c09-baf9-90caac77e731",
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
              "uuid": "0834b9bd-7dcf-441e-9db8-781ed3fbad87",
              "parent_uuid": "42407604-d1a9-4c09-baf9-90caac77e731",
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
              "uuid": "3a28c17c-1316-449f-9f72-a3b9234fb9e2",
              "parent_uuid": "42407604-d1a9-4c09-baf9-90caac77e731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0575ff8f-0324-40ab-926d-fb8285fb720e",
                  "parent_uuid": "3a28c17c-1316-449f-9f72-a3b9234fb9e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bc11777-3c74-48ef-9271-4f9265f4f77e",
              "parent_uuid": "42407604-d1a9-4c09-baf9-90caac77e731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f701b2e-9752-47e1-aabc-5fa9b4224e82",
                  "parent_uuid": "7bc11777-3c74-48ef-9271-4f9265f4f77e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b9d2997-e01f-44aa-8d65-f699b125e1b3",
              "parent_uuid": "42407604-d1a9-4c09-baf9-90caac77e731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "928bcaea-e7ff-427f-98c6-d7f532f9b350",
                  "parent_uuid": "9b9d2997-e01f-44aa-8d65-f699b125e1b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6873ee3-3759-4ee4-bf9c-03798089141c",
              "parent_uuid": "42407604-d1a9-4c09-baf9-90caac77e731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "688e09fa-286a-4bb1-890a-8ee9fee62e4e",
                  "parent_uuid": "e6873ee3-3759-4ee4-bf9c-03798089141c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "df0a87ce-6a77-4c13-b8af-e7d7fb7deaf6",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c872b236-6ca2-4b51-86f6-360fb0c3060f",
              "parent_uuid": "df0a87ce-6a77-4c13-b8af-e7d7fb7deaf6",
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
              "uuid": "072ac954-f61f-48aa-bae0-e7d7d5237cff",
              "parent_uuid": "df0a87ce-6a77-4c13-b8af-e7d7fb7deaf6",
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
              "uuid": "8a0b5807-d8d5-47a6-99c3-e06b45d3d334",
              "parent_uuid": "df0a87ce-6a77-4c13-b8af-e7d7fb7deaf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57e495a0-e6cc-483b-9916-01b4b8d4bfe9",
                  "parent_uuid": "8a0b5807-d8d5-47a6-99c3-e06b45d3d334",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5858dbce-da72-4c8d-a4fd-1165c3be2cb8",
              "parent_uuid": "df0a87ce-6a77-4c13-b8af-e7d7fb7deaf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34d38e2d-d025-4008-a0c8-c7a7da1deedb",
                  "parent_uuid": "5858dbce-da72-4c8d-a4fd-1165c3be2cb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d322bbf-a6fa-4b6d-aa56-0d0eb28bd131",
              "parent_uuid": "df0a87ce-6a77-4c13-b8af-e7d7fb7deaf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1683eed-c87c-4c9a-837c-5ae71de6ce30",
                  "parent_uuid": "1d322bbf-a6fa-4b6d-aa56-0d0eb28bd131",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94973647-51cd-44d9-9628-c9375f66ec33",
              "parent_uuid": "df0a87ce-6a77-4c13-b8af-e7d7fb7deaf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65c1c0b7-5794-4b99-aac5-64b61524dda7",
                  "parent_uuid": "94973647-51cd-44d9-9628-c9375f66ec33",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "06b2aebe-3812-42e3-a7a6-1f7dddc73e9b",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1750a1df-0ff3-4aab-947d-2cd1cb553414",
              "parent_uuid": "06b2aebe-3812-42e3-a7a6-1f7dddc73e9b",
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
              "uuid": "152cda12-59a1-44ea-bb46-c3e8ba86bc17",
              "parent_uuid": "06b2aebe-3812-42e3-a7a6-1f7dddc73e9b",
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
              "uuid": "527883fe-ae18-427f-a278-3ec65c3e7b09",
              "parent_uuid": "06b2aebe-3812-42e3-a7a6-1f7dddc73e9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ec25a87-cdba-44d9-9dae-c36497ee5d22",
                  "parent_uuid": "527883fe-ae18-427f-a278-3ec65c3e7b09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79b0f802-f84c-464d-9741-931f39226a11",
              "parent_uuid": "06b2aebe-3812-42e3-a7a6-1f7dddc73e9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "463fab39-2f46-416d-bf9d-39a45e4136e0",
                  "parent_uuid": "79b0f802-f84c-464d-9741-931f39226a11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6f7dc42-94eb-4a13-8f1f-18b6b70c3e43",
              "parent_uuid": "06b2aebe-3812-42e3-a7a6-1f7dddc73e9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e278309e-bfa3-4bcd-92df-a086511c33d4",
                  "parent_uuid": "a6f7dc42-94eb-4a13-8f1f-18b6b70c3e43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84085f7c-0724-45ba-a33c-69aab867b1e5",
              "parent_uuid": "06b2aebe-3812-42e3-a7a6-1f7dddc73e9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "623da10b-669a-405f-931b-6d79ef1f34c2",
                  "parent_uuid": "84085f7c-0724-45ba-a33c-69aab867b1e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ff9cc179-6885-40ef-ad78-67e59422026a",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbad55a3-424b-411d-98f0-50349d8940a6",
              "parent_uuid": "ff9cc179-6885-40ef-ad78-67e59422026a",
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
              "uuid": "7bddc145-2449-4c67-8157-a451c94bc25c",
              "parent_uuid": "ff9cc179-6885-40ef-ad78-67e59422026a",
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
              "uuid": "433ed335-e0bf-41d5-9602-2413524914b9",
              "parent_uuid": "ff9cc179-6885-40ef-ad78-67e59422026a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bf5f2fd-bd2e-40cc-93e6-462ef705dab0",
                  "parent_uuid": "433ed335-e0bf-41d5-9602-2413524914b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b32288b2-3563-4fd9-8980-feb1f564f00e",
              "parent_uuid": "ff9cc179-6885-40ef-ad78-67e59422026a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ed12b63-4cf5-4dec-a390-e5014b3127e0",
                  "parent_uuid": "b32288b2-3563-4fd9-8980-feb1f564f00e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf6d814e-dded-4408-beb0-1273dd418d4c",
              "parent_uuid": "ff9cc179-6885-40ef-ad78-67e59422026a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1e8e764-7b15-4814-a712-d3ce99cd9ced",
                  "parent_uuid": "bf6d814e-dded-4408-beb0-1273dd418d4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c61a1e3-b11c-4906-9043-2a6b0e1cc500",
              "parent_uuid": "ff9cc179-6885-40ef-ad78-67e59422026a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "576f8223-0eb1-4f09-bc4e-4ffb163cca18",
                  "parent_uuid": "9c61a1e3-b11c-4906-9043-2a6b0e1cc500",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6bc31c98-e585-4371-8b93-5aa0aa78ef80",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "146a8c77-6e5c-4cea-af8b-8eaeeda4478f",
              "parent_uuid": "6bc31c98-e585-4371-8b93-5aa0aa78ef80",
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
          "uuid": "5d1263c4-7f3f-4763-964d-91986d17d62b",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3fcc3bc4-9549-447e-b2b0-3f6bacec8fec",
              "parent_uuid": "5d1263c4-7f3f-4763-964d-91986d17d62b",
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
              "uuid": "dc859e49-f186-4b11-a509-de74ce8f1676",
              "parent_uuid": "5d1263c4-7f3f-4763-964d-91986d17d62b",
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
              "uuid": "65ecb6d4-36e9-4bc7-bb6a-80e40c0c72a3",
              "parent_uuid": "5d1263c4-7f3f-4763-964d-91986d17d62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5db99c46-6bf6-4e87-8f4c-fa4b3631d2e2",
                  "parent_uuid": "65ecb6d4-36e9-4bc7-bb6a-80e40c0c72a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6764e2f0-3129-4e8f-9ae7-dc09ed565cac",
              "parent_uuid": "5d1263c4-7f3f-4763-964d-91986d17d62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abbda074-5559-4c17-bcf4-38bdeeef8fd8",
                  "parent_uuid": "6764e2f0-3129-4e8f-9ae7-dc09ed565cac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcce81b6-4548-4a96-b736-56726dfed529",
              "parent_uuid": "5d1263c4-7f3f-4763-964d-91986d17d62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5451811-8205-4bfa-ad3b-8cf4de6054cd",
                  "parent_uuid": "fcce81b6-4548-4a96-b736-56726dfed529",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "172f848c-c18b-4793-bcf5-eb99b83a8ffb",
              "parent_uuid": "5d1263c4-7f3f-4763-964d-91986d17d62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb75e851-f4c7-4258-afe7-b9901b8a6d23",
                  "parent_uuid": "172f848c-c18b-4793-bcf5-eb99b83a8ffb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d31e21e-7aa9-4ee3-83e7-d78bc8abe273",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f601b4af-4660-4293-9ac1-1fbe4ed71f03",
              "parent_uuid": "7d31e21e-7aa9-4ee3-83e7-d78bc8abe273",
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
              "uuid": "da8f1c54-a492-4443-aa37-7f41e73d8079",
              "parent_uuid": "7d31e21e-7aa9-4ee3-83e7-d78bc8abe273",
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
              "uuid": "eca412c1-3e46-43ce-93ec-bf50effb464a",
              "parent_uuid": "7d31e21e-7aa9-4ee3-83e7-d78bc8abe273",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fd450fc-b126-416e-8373-ae52a00e837a",
                  "parent_uuid": "eca412c1-3e46-43ce-93ec-bf50effb464a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c57b061a-1fa2-407f-8c79-bb9d83d83c71",
              "parent_uuid": "7d31e21e-7aa9-4ee3-83e7-d78bc8abe273",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c422bac7-fe19-43db-a610-e590e94afec6",
                  "parent_uuid": "c57b061a-1fa2-407f-8c79-bb9d83d83c71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d124746c-cb29-41d0-9777-a041008201b2",
              "parent_uuid": "7d31e21e-7aa9-4ee3-83e7-d78bc8abe273",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a535191e-8f2e-4757-a19a-008f283e5c67",
                  "parent_uuid": "d124746c-cb29-41d0-9777-a041008201b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f763041f-4e5e-4241-87e3-5302c91bbb27",
              "parent_uuid": "7d31e21e-7aa9-4ee3-83e7-d78bc8abe273",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5a548fb-d174-4129-a78e-8687c68be8b6",
                  "parent_uuid": "f763041f-4e5e-4241-87e3-5302c91bbb27",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "906db076-ff79-4525-8973-795e2e4f130d",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8089bc7f-e5eb-45f0-b5f8-4c3371764e93",
              "parent_uuid": "906db076-ff79-4525-8973-795e2e4f130d",
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
          "uuid": "a059c7d9-980d-4228-851f-6ee2c4b95d4a",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42742853-046f-4cb7-a674-28bb460d2e3d",
              "parent_uuid": "a059c7d9-980d-4228-851f-6ee2c4b95d4a",
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
          "uuid": "cd185f4d-9435-4bda-84b9-c9b997c6aed1",
          "parent_uuid": "3bcbde44-d89f-486b-9060-85c1366b6d95",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54ed1968-2656-4ba3-bbb0-599e4dac6c77",
              "parent_uuid": "cd185f4d-9435-4bda-84b9-c9b997c6aed1",
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
                  "uuid": "a33fb754-507f-4c72-8ab4-d3523cc5ed8b",
                  "parent_uuid": "54ed1968-2656-4ba3-bbb0-599e4dac6c77",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

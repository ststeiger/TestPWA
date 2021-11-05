
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
  "uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "ee9672e4-3b49-43ea-a58b-d8ba96a62256",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "1bce5277-397b-48b7-9bc5-cbf306e6b516",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "a6e68332-512b-438f-a289-145145ba6a19",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "4e62cdc8-3be3-4c7b-95e5-a0330522db4e",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "3178caee-0a37-4fe3-a314-c187bf6962bf",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "ee68e6a4-bc14-4cff-a696-0f6e63d5298a",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "40753e30-0cc4-4393-a631-c99dccc69314",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
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
      "uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
      "parent_uuid": "43149de1-2f7b-4057-8231-e7d3c46399f8",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "4e188b3c-e390-49a0-ae89-00c9668cd629",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "c7eb08eb-a69a-436a-ad82-dc9c61a98af6",
              "parent_uuid": "4e188b3c-e390-49a0-ae89-00c9668cd629",
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
              "uuid": "bbed3654-9acf-4727-85cb-39cabfda4be3",
              "parent_uuid": "4e188b3c-e390-49a0-ae89-00c9668cd629",
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
              "uuid": "23b24aaa-a9f5-4237-b2be-a456784719e0",
              "parent_uuid": "4e188b3c-e390-49a0-ae89-00c9668cd629",
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
              "uuid": "e760db1e-f71b-4952-8c9e-0c1f4f1a358a",
              "parent_uuid": "4e188b3c-e390-49a0-ae89-00c9668cd629",
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
          "uuid": "51e000c1-1713-4964-8098-048f73395854",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "af1e0b4c-dc1b-41e9-a673-8e8d644d265b",
              "parent_uuid": "51e000c1-1713-4964-8098-048f73395854",
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
              "uuid": "236d1d8f-207d-4732-a8ad-56e4388c24be",
              "parent_uuid": "51e000c1-1713-4964-8098-048f73395854",
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
              "uuid": "663f2776-b1e6-476b-a658-20e441be5851",
              "parent_uuid": "51e000c1-1713-4964-8098-048f73395854",
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
              "uuid": "365da73d-cf82-435a-bdf3-ce2b2cc9e7d8",
              "parent_uuid": "51e000c1-1713-4964-8098-048f73395854",
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
          "uuid": "0a58d195-9543-4697-8aa3-329824bebb95",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "10b1ef2e-5ab5-4cf8-ac55-4d2f3805c096",
              "parent_uuid": "0a58d195-9543-4697-8aa3-329824bebb95",
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
              "uuid": "8ac21a09-a917-41b0-b13b-78754d134fcf",
              "parent_uuid": "0a58d195-9543-4697-8aa3-329824bebb95",
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
              "uuid": "f0bac603-ff9f-4c3c-823b-eeb1e10e47fe",
              "parent_uuid": "0a58d195-9543-4697-8aa3-329824bebb95",
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
              "uuid": "9a6d3e4d-a086-4b8c-93e0-96b721d2ece1",
              "parent_uuid": "0a58d195-9543-4697-8aa3-329824bebb95",
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
          "uuid": "60c394db-0cf3-4cf6-b859-621e04d423e2",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9218cfc0-1eff-490c-85cf-ff4061655b47",
              "parent_uuid": "60c394db-0cf3-4cf6-b859-621e04d423e2",
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
              "uuid": "75449271-18a8-4201-9fe9-2d1f8213ef93",
              "parent_uuid": "60c394db-0cf3-4cf6-b859-621e04d423e2",
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
              "uuid": "d2255eee-da64-4972-afb7-1d880a882e25",
              "parent_uuid": "60c394db-0cf3-4cf6-b859-621e04d423e2",
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
              "uuid": "86faba9a-6d93-4d1c-84a8-ad03644b7f0a",
              "parent_uuid": "60c394db-0cf3-4cf6-b859-621e04d423e2",
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
              "uuid": "5cabc79d-7a30-4407-940e-c882524911e6",
              "parent_uuid": "60c394db-0cf3-4cf6-b859-621e04d423e2",
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
              "uuid": "48a3777d-e2dd-4595-87e7-dfab91f2eb10",
              "parent_uuid": "60c394db-0cf3-4cf6-b859-621e04d423e2",
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
          "uuid": "dc31e522-8025-4c7f-8a3c-ba55b4d0126a",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3a40c06e-138c-448f-a5b7-ee0c32e0b032",
              "parent_uuid": "dc31e522-8025-4c7f-8a3c-ba55b4d0126a",
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
          "uuid": "91ae448e-d5f3-466e-941c-40ab3e099108",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f2173e3-d677-407b-b67d-9663bbfdad70",
              "parent_uuid": "91ae448e-d5f3-466e-941c-40ab3e099108",
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
              "uuid": "492d13be-7a86-4103-86b8-e29377840b82",
              "parent_uuid": "91ae448e-d5f3-466e-941c-40ab3e099108",
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
              "uuid": "7a325c28-ccda-42c9-9f1e-ac1ed96a7709",
              "parent_uuid": "91ae448e-d5f3-466e-941c-40ab3e099108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2193f90a-7417-4ab9-8a18-648cb0fd7cd7",
                  "parent_uuid": "7a325c28-ccda-42c9-9f1e-ac1ed96a7709",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b138303-99af-4dc2-b6d6-220a229b2c6c",
              "parent_uuid": "91ae448e-d5f3-466e-941c-40ab3e099108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fb7d598-83a2-4a50-b636-699f160283a5",
                  "parent_uuid": "8b138303-99af-4dc2-b6d6-220a229b2c6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f37dfd77-7590-4107-a2c5-05dc54b8b7e6",
              "parent_uuid": "91ae448e-d5f3-466e-941c-40ab3e099108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33d27f16-a521-423d-b123-f68628ae84cf",
                  "parent_uuid": "f37dfd77-7590-4107-a2c5-05dc54b8b7e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4db4934-f5ce-4560-9c55-ebf90c493794",
              "parent_uuid": "91ae448e-d5f3-466e-941c-40ab3e099108",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50f008e5-25d9-4814-af89-f025b1eecec6",
                  "parent_uuid": "f4db4934-f5ce-4560-9c55-ebf90c493794",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "633b463e-4954-46af-a32f-4aebda84d5ce",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9803894a-2951-427e-a295-39049d047a02",
              "parent_uuid": "633b463e-4954-46af-a32f-4aebda84d5ce",
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
              "uuid": "4b61ca6a-e4da-4a64-b9fc-ada6967e6d2c",
              "parent_uuid": "633b463e-4954-46af-a32f-4aebda84d5ce",
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
              "uuid": "7b4472ce-e7c2-479f-bf8f-855f15a4e1df",
              "parent_uuid": "633b463e-4954-46af-a32f-4aebda84d5ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59d8cf5b-7019-4c40-8754-4741f6488122",
                  "parent_uuid": "7b4472ce-e7c2-479f-bf8f-855f15a4e1df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddacbb95-4d53-4548-bbe9-9c67020ab8b0",
              "parent_uuid": "633b463e-4954-46af-a32f-4aebda84d5ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96348150-7145-4932-b69e-42eb51722db8",
                  "parent_uuid": "ddacbb95-4d53-4548-bbe9-9c67020ab8b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07a33488-f296-45de-8442-23e24793e73e",
              "parent_uuid": "633b463e-4954-46af-a32f-4aebda84d5ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d128e88b-055d-4b87-956b-35a2167d5fa2",
                  "parent_uuid": "07a33488-f296-45de-8442-23e24793e73e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6188f00b-cbce-46ac-933c-0af68d53ebdc",
              "parent_uuid": "633b463e-4954-46af-a32f-4aebda84d5ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "090c272e-3a47-4bbe-9357-bd0a59c3d66b",
                  "parent_uuid": "6188f00b-cbce-46ac-933c-0af68d53ebdc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29f81f12-382c-4551-9ae8-c3ef752787bf",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c2f05fbd-ea07-44a0-9294-a59f2270b2cb",
              "parent_uuid": "29f81f12-382c-4551-9ae8-c3ef752787bf",
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
              "uuid": "8b9deab0-6f38-4933-bbdb-c182470cff08",
              "parent_uuid": "29f81f12-382c-4551-9ae8-c3ef752787bf",
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
              "uuid": "4534aa83-2a1a-4b8a-a754-4ce9f8106efc",
              "parent_uuid": "29f81f12-382c-4551-9ae8-c3ef752787bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d5c413c-004b-4348-b89a-36423b6b8f89",
                  "parent_uuid": "4534aa83-2a1a-4b8a-a754-4ce9f8106efc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b0a95cc-81f5-462d-86a3-1eab0b597811",
              "parent_uuid": "29f81f12-382c-4551-9ae8-c3ef752787bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39586e53-a1dc-402b-b773-ac1d007f9eef",
                  "parent_uuid": "0b0a95cc-81f5-462d-86a3-1eab0b597811",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40bfc026-dae0-4f40-8f89-d6f4510684ee",
              "parent_uuid": "29f81f12-382c-4551-9ae8-c3ef752787bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07193880-d653-4e03-b284-a246605ebdd0",
                  "parent_uuid": "40bfc026-dae0-4f40-8f89-d6f4510684ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28e84d84-fbda-4ce5-802d-33aecb83db81",
              "parent_uuid": "29f81f12-382c-4551-9ae8-c3ef752787bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3147331d-63e1-4a81-8949-09606218027a",
                  "parent_uuid": "28e84d84-fbda-4ce5-802d-33aecb83db81",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a4ac47d9-7b5e-4b20-a0e5-6808a7edb693",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32590bde-97f4-44da-8cdb-0cc23f17fd6f",
              "parent_uuid": "a4ac47d9-7b5e-4b20-a0e5-6808a7edb693",
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
              "uuid": "e6c9a717-f6c1-4684-8a12-404e3022b375",
              "parent_uuid": "a4ac47d9-7b5e-4b20-a0e5-6808a7edb693",
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
              "uuid": "8a38b473-2fb1-4d58-ac8a-5348c6dce8ec",
              "parent_uuid": "a4ac47d9-7b5e-4b20-a0e5-6808a7edb693",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88358102-ada6-4488-ae3c-26d965c55a4c",
                  "parent_uuid": "8a38b473-2fb1-4d58-ac8a-5348c6dce8ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cb63ad2-4e55-4559-9d21-e03c926318c0",
              "parent_uuid": "a4ac47d9-7b5e-4b20-a0e5-6808a7edb693",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b41a7b2a-d8d3-4002-bcca-a0f3769e56c7",
                  "parent_uuid": "2cb63ad2-4e55-4559-9d21-e03c926318c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8c03e77-81b9-41bf-9031-4c22b6874a4e",
              "parent_uuid": "a4ac47d9-7b5e-4b20-a0e5-6808a7edb693",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdd9fe0d-ef96-40c1-9624-0b4af04b6777",
                  "parent_uuid": "b8c03e77-81b9-41bf-9031-4c22b6874a4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "896084b5-ab4f-4a19-9e64-4ec0f6e0db05",
              "parent_uuid": "a4ac47d9-7b5e-4b20-a0e5-6808a7edb693",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64c5e67a-b875-4025-9905-77becc3bf327",
                  "parent_uuid": "896084b5-ab4f-4a19-9e64-4ec0f6e0db05",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ea584ac2-191c-49c0-a0ce-2405674bf2fe",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fe53738c-2d8b-4252-8fc2-a14fb272841a",
              "parent_uuid": "ea584ac2-191c-49c0-a0ce-2405674bf2fe",
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
              "uuid": "b8251cc0-30bc-478f-9546-bdcc96840565",
              "parent_uuid": "ea584ac2-191c-49c0-a0ce-2405674bf2fe",
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
              "uuid": "2d20266c-cdf0-4944-a8a0-8a0e0bea9ea9",
              "parent_uuid": "ea584ac2-191c-49c0-a0ce-2405674bf2fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2aa07630-5e09-4c0a-a9eb-63ec90879efa",
                  "parent_uuid": "2d20266c-cdf0-4944-a8a0-8a0e0bea9ea9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af78ae3a-3255-444a-966e-97517daf9315",
              "parent_uuid": "ea584ac2-191c-49c0-a0ce-2405674bf2fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ac899ca-5782-4a82-9737-90e972ee2685",
                  "parent_uuid": "af78ae3a-3255-444a-966e-97517daf9315",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "323545e4-313a-450c-991d-cf66e1b83ede",
              "parent_uuid": "ea584ac2-191c-49c0-a0ce-2405674bf2fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a6a25ac-613b-4202-8bec-91aa19c7f8fd",
                  "parent_uuid": "323545e4-313a-450c-991d-cf66e1b83ede",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d50ee074-20ab-4a1a-b90e-9a01e0e61f4e",
              "parent_uuid": "ea584ac2-191c-49c0-a0ce-2405674bf2fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2919c96f-a1fc-4088-83ae-528d64c1064d",
                  "parent_uuid": "d50ee074-20ab-4a1a-b90e-9a01e0e61f4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0e0e7128-825a-4800-a453-7bbabe990eba",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2fec061-aa5a-4a84-b4a7-f860754dfb16",
              "parent_uuid": "0e0e7128-825a-4800-a453-7bbabe990eba",
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
              "uuid": "06863436-e5ad-4c10-a84c-e2a3727628b7",
              "parent_uuid": "0e0e7128-825a-4800-a453-7bbabe990eba",
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
              "uuid": "e482aead-85a9-4e02-966c-2bd96a8e00e0",
              "parent_uuid": "0e0e7128-825a-4800-a453-7bbabe990eba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd0c31c4-5f0e-49d9-bf70-db6829ee3dee",
                  "parent_uuid": "e482aead-85a9-4e02-966c-2bd96a8e00e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f842f278-6c16-42ca-9b8a-0c99c34ad121",
              "parent_uuid": "0e0e7128-825a-4800-a453-7bbabe990eba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cd9d7fd-dbd4-4423-9ae9-ba8f0a8961f4",
                  "parent_uuid": "f842f278-6c16-42ca-9b8a-0c99c34ad121",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bfe088b-05f5-47bd-8bd7-86b08b99f44f",
              "parent_uuid": "0e0e7128-825a-4800-a453-7bbabe990eba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cece4c45-89ac-47ba-8a58-de811b049587",
                  "parent_uuid": "7bfe088b-05f5-47bd-8bd7-86b08b99f44f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bd6f6c1-c5f4-42a1-9785-3b478679b526",
              "parent_uuid": "0e0e7128-825a-4800-a453-7bbabe990eba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ddf45c9-b2b4-4b99-8ec8-fae5044ba46d",
                  "parent_uuid": "9bd6f6c1-c5f4-42a1-9785-3b478679b526",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d8a07a5-88a9-453f-8c6f-a32fe3d41297",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e015bc15-0a92-4027-b2ec-6f688b3e6d5f",
              "parent_uuid": "7d8a07a5-88a9-453f-8c6f-a32fe3d41297",
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
              "uuid": "fa1a03fe-0b65-4518-ae35-f035a0845d5b",
              "parent_uuid": "7d8a07a5-88a9-453f-8c6f-a32fe3d41297",
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
              "uuid": "f9fe9427-b729-4608-94e9-ed3160d78369",
              "parent_uuid": "7d8a07a5-88a9-453f-8c6f-a32fe3d41297",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3455d387-8a82-4170-a869-5a8c154f3f5c",
                  "parent_uuid": "f9fe9427-b729-4608-94e9-ed3160d78369",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bfcbad1-f164-48e9-b205-d0794fae70e3",
              "parent_uuid": "7d8a07a5-88a9-453f-8c6f-a32fe3d41297",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca00664f-4a2b-4f44-81bf-f696a57e9283",
                  "parent_uuid": "5bfcbad1-f164-48e9-b205-d0794fae70e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ebd93d5-160d-4e5b-abaa-f5a870233e29",
              "parent_uuid": "7d8a07a5-88a9-453f-8c6f-a32fe3d41297",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee147214-0652-4f25-b176-fe5e3b57cbc3",
                  "parent_uuid": "1ebd93d5-160d-4e5b-abaa-f5a870233e29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdbfcce6-b689-4387-b187-d3d8fb27ca10",
              "parent_uuid": "7d8a07a5-88a9-453f-8c6f-a32fe3d41297",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22aa902b-ded3-471d-9fd9-07edb79b8bc9",
                  "parent_uuid": "fdbfcce6-b689-4387-b187-d3d8fb27ca10",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "580b67f9-4bcc-4c37-95f1-3fc032d50548",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61e1f810-1990-46bf-92c6-1b2f0a611da7",
              "parent_uuid": "580b67f9-4bcc-4c37-95f1-3fc032d50548",
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
              "uuid": "b3c96564-df11-445a-a565-bf7a0cafabfb",
              "parent_uuid": "580b67f9-4bcc-4c37-95f1-3fc032d50548",
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
              "uuid": "1a2cd6ab-0798-425d-bf29-ac26d8df77f4",
              "parent_uuid": "580b67f9-4bcc-4c37-95f1-3fc032d50548",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6797529-3d4a-4034-ae4f-7692111c02b7",
                  "parent_uuid": "1a2cd6ab-0798-425d-bf29-ac26d8df77f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55774237-cee8-4706-95fa-97235997867f",
              "parent_uuid": "580b67f9-4bcc-4c37-95f1-3fc032d50548",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93f179f4-7414-4278-baf8-8a771257ba74",
                  "parent_uuid": "55774237-cee8-4706-95fa-97235997867f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de09be28-22b8-4a45-9e8f-dc1ca07ae219",
              "parent_uuid": "580b67f9-4bcc-4c37-95f1-3fc032d50548",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df41ea1c-9483-4098-9b4c-c39a39233d5f",
                  "parent_uuid": "de09be28-22b8-4a45-9e8f-dc1ca07ae219",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07744230-a48f-4deb-bd95-57322157329a",
              "parent_uuid": "580b67f9-4bcc-4c37-95f1-3fc032d50548",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ede6f645-e298-4c02-861a-0c9a131c07dd",
                  "parent_uuid": "07744230-a48f-4deb-bd95-57322157329a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9f97c1cc-5a8d-44a8-8798-9da17def5dcb",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4fa3be41-534c-48a3-bc0f-354ae005e6ac",
              "parent_uuid": "9f97c1cc-5a8d-44a8-8798-9da17def5dcb",
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
              "uuid": "12d8c356-f3ce-43de-88c3-03f1744500fd",
              "parent_uuid": "9f97c1cc-5a8d-44a8-8798-9da17def5dcb",
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
              "uuid": "e500cce8-8bc7-4e79-95c7-9b134f69d0cf",
              "parent_uuid": "9f97c1cc-5a8d-44a8-8798-9da17def5dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c64d2a42-ad60-47b2-8c0f-61fb8d7d7f84",
                  "parent_uuid": "e500cce8-8bc7-4e79-95c7-9b134f69d0cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0efb6da3-2b5c-4871-b771-2c5d1099ee9e",
              "parent_uuid": "9f97c1cc-5a8d-44a8-8798-9da17def5dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53cf1fcd-ba05-43ea-abed-aa97df717129",
                  "parent_uuid": "0efb6da3-2b5c-4871-b771-2c5d1099ee9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13f95eef-c13a-471a-ad89-2c29a9eef27c",
              "parent_uuid": "9f97c1cc-5a8d-44a8-8798-9da17def5dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff637507-5f34-473c-8646-a673fb4b2e3c",
                  "parent_uuid": "13f95eef-c13a-471a-ad89-2c29a9eef27c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "978c3484-c79a-46b8-bdee-94d91486b793",
              "parent_uuid": "9f97c1cc-5a8d-44a8-8798-9da17def5dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a0bc064-2736-4023-ae6f-918df76e332e",
                  "parent_uuid": "978c3484-c79a-46b8-bdee-94d91486b793",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f3af2d50-1b36-4afd-a7f7-97b83638075b",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85611cde-57cf-422c-9298-896f3c77a1b8",
              "parent_uuid": "f3af2d50-1b36-4afd-a7f7-97b83638075b",
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
              "uuid": "e8cd2362-6129-4cb5-b669-1e7ec19d2a0f",
              "parent_uuid": "f3af2d50-1b36-4afd-a7f7-97b83638075b",
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
              "uuid": "1d6bd96e-fa68-4db4-902a-2bc04f946509",
              "parent_uuid": "f3af2d50-1b36-4afd-a7f7-97b83638075b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b4c6f19-7498-4d99-88b8-553691b04dda",
                  "parent_uuid": "1d6bd96e-fa68-4db4-902a-2bc04f946509",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb3f252a-b95e-4cde-9d3a-88e1c471a323",
              "parent_uuid": "f3af2d50-1b36-4afd-a7f7-97b83638075b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48d0998d-d862-47ac-ae6c-0d16b2a907de",
                  "parent_uuid": "bb3f252a-b95e-4cde-9d3a-88e1c471a323",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8298dc4-e48c-460a-952f-76e1212a1882",
              "parent_uuid": "f3af2d50-1b36-4afd-a7f7-97b83638075b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85509de9-1a8e-4eaa-8ee1-5cdd91c7d20c",
                  "parent_uuid": "b8298dc4-e48c-460a-952f-76e1212a1882",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43cc619a-7952-4f10-9d80-2e8ca219fe24",
              "parent_uuid": "f3af2d50-1b36-4afd-a7f7-97b83638075b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "358a6fbc-fc4b-4ee2-b7ab-8991cad369cb",
                  "parent_uuid": "43cc619a-7952-4f10-9d80-2e8ca219fe24",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fa913f9f-7de0-432e-a1cb-a7be7b39f1b0",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb7ee246-5b71-4028-af97-025fcb7003a4",
              "parent_uuid": "fa913f9f-7de0-432e-a1cb-a7be7b39f1b0",
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
              "uuid": "f842cea9-d29a-4bb3-a68c-32116c471faf",
              "parent_uuid": "fa913f9f-7de0-432e-a1cb-a7be7b39f1b0",
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
              "uuid": "075bdf0d-7de2-48b2-babb-e28b801af6e2",
              "parent_uuid": "fa913f9f-7de0-432e-a1cb-a7be7b39f1b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3b75594-2e9a-46e4-baa8-041e90d6652d",
                  "parent_uuid": "075bdf0d-7de2-48b2-babb-e28b801af6e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab3d2ad0-ef11-4196-a3af-0d18cab717f6",
              "parent_uuid": "fa913f9f-7de0-432e-a1cb-a7be7b39f1b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc29cdb8-a25c-4d3b-9651-0a131421116a",
                  "parent_uuid": "ab3d2ad0-ef11-4196-a3af-0d18cab717f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd0113c4-f71d-4f6f-908b-fa9fc7370075",
              "parent_uuid": "fa913f9f-7de0-432e-a1cb-a7be7b39f1b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bff482c9-3b94-4fea-9272-2a6137f486d4",
                  "parent_uuid": "bd0113c4-f71d-4f6f-908b-fa9fc7370075",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef4231db-4305-436b-8dd2-da3fda85f0e3",
              "parent_uuid": "fa913f9f-7de0-432e-a1cb-a7be7b39f1b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ededfa67-1071-419b-af88-0469e8bb58ae",
                  "parent_uuid": "ef4231db-4305-436b-8dd2-da3fda85f0e3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "541452b1-73c8-4b45-807d-7bd021806c46",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16a862cc-db20-466a-b625-af115e03110b",
              "parent_uuid": "541452b1-73c8-4b45-807d-7bd021806c46",
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
              "uuid": "340397b4-11cb-40c1-9791-cd392d184dc9",
              "parent_uuid": "541452b1-73c8-4b45-807d-7bd021806c46",
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
              "uuid": "cdf35de9-2a92-4b10-bf94-5c0f03388ee7",
              "parent_uuid": "541452b1-73c8-4b45-807d-7bd021806c46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1a46a20-7579-4b14-bb4e-3c03468ec0e9",
                  "parent_uuid": "cdf35de9-2a92-4b10-bf94-5c0f03388ee7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a72a1c9-9ce5-4c0f-b7b3-c7f707989e36",
              "parent_uuid": "541452b1-73c8-4b45-807d-7bd021806c46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21870ac7-35a2-4bcd-b863-82874a0954f5",
                  "parent_uuid": "6a72a1c9-9ce5-4c0f-b7b3-c7f707989e36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9039770b-3605-4ac3-b353-841633e72236",
              "parent_uuid": "541452b1-73c8-4b45-807d-7bd021806c46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc458002-04a1-4b2b-bc74-1e118c742836",
                  "parent_uuid": "9039770b-3605-4ac3-b353-841633e72236",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cddbb19c-c1ae-49fd-8d1f-75ada9538775",
              "parent_uuid": "541452b1-73c8-4b45-807d-7bd021806c46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "175fd507-52ea-4cee-baac-dc226756409b",
                  "parent_uuid": "cddbb19c-c1ae-49fd-8d1f-75ada9538775",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d766e5f1-f1e1-4f20-b83a-f49fd090418f",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac2d3fde-6c9b-4488-ab31-1f72b0756f14",
              "parent_uuid": "d766e5f1-f1e1-4f20-b83a-f49fd090418f",
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
          "uuid": "e13109f1-9fdb-40b2-aed6-2d45beb3d087",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0b06b82-1b86-4599-9b37-533a627805f6",
              "parent_uuid": "e13109f1-9fdb-40b2-aed6-2d45beb3d087",
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
          "uuid": "3d39bba7-8fcf-4836-bec6-581ef73ce47c",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62420ad1-4505-455c-a970-923b217893fc",
              "parent_uuid": "3d39bba7-8fcf-4836-bec6-581ef73ce47c",
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
                  "uuid": "25a582ff-cc0e-4124-bf70-3765647df3d5",
                  "parent_uuid": "62420ad1-4505-455c-a970-923b217893fc",
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
          "uuid": "11638285-7b59-4d0f-8a2e-8d7b027def88",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e9ffa3e-f991-4adc-b0c2-4b485bcdde98",
              "parent_uuid": "11638285-7b59-4d0f-8a2e-8d7b027def88",
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
          "uuid": "1ad1328a-0e13-4974-8191-d3efe7ca5785",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "95249e85-bca7-44bf-9d65-da50577046b7",
              "parent_uuid": "1ad1328a-0e13-4974-8191-d3efe7ca5785",
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
          "uuid": "a08194cb-dbd5-4e0c-bee5-6f137fdf17f3",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b7f84a1-a256-484b-a250-e433a9e7ca9f",
              "parent_uuid": "a08194cb-dbd5-4e0c-bee5-6f137fdf17f3",
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
              "uuid": "bc74693a-411f-4b98-a97e-20c79e3d47b3",
              "parent_uuid": "a08194cb-dbd5-4e0c-bee5-6f137fdf17f3",
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
              "uuid": "945f51a8-c847-4b95-b41f-4a415c7ffca8",
              "parent_uuid": "a08194cb-dbd5-4e0c-bee5-6f137fdf17f3",
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
              "uuid": "b449d5ee-43ab-41ca-84c0-575a28731f9e",
              "parent_uuid": "a08194cb-dbd5-4e0c-bee5-6f137fdf17f3",
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
              "uuid": "d6ebad35-ded7-4343-9723-264af6a070b5",
              "parent_uuid": "a08194cb-dbd5-4e0c-bee5-6f137fdf17f3",
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
              "uuid": "4a463f4a-d718-4ab9-887b-e63d53b84820",
              "parent_uuid": "a08194cb-dbd5-4e0c-bee5-6f137fdf17f3",
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
          "uuid": "ff331af9-d7df-4e88-8e4e-203ba563df60",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4840c38d-8c92-44d2-a648-a0295390de3f",
              "parent_uuid": "ff331af9-d7df-4e88-8e4e-203ba563df60",
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
              "uuid": "a49f6a71-4676-450d-bfaa-356ac23085b4",
              "parent_uuid": "ff331af9-d7df-4e88-8e4e-203ba563df60",
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
              "uuid": "b7a1cdb8-d3bb-4e86-9a0a-6068e6e28336",
              "parent_uuid": "ff331af9-d7df-4e88-8e4e-203ba563df60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef98d591-bc4e-42dd-886f-55900608908c",
                  "parent_uuid": "b7a1cdb8-d3bb-4e86-9a0a-6068e6e28336",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0f50839-6fb5-44c8-80e1-d2f359c75d70",
              "parent_uuid": "ff331af9-d7df-4e88-8e4e-203ba563df60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31ae8491-c470-4679-a829-a4b0afbb65bf",
                  "parent_uuid": "c0f50839-6fb5-44c8-80e1-d2f359c75d70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c021289e-99c9-4c47-86c2-f80264595eb0",
              "parent_uuid": "ff331af9-d7df-4e88-8e4e-203ba563df60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9050142e-e92b-4e70-93c6-5fca0fefa709",
                  "parent_uuid": "c021289e-99c9-4c47-86c2-f80264595eb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1670e4d6-fc00-480e-8320-51d026104188",
              "parent_uuid": "ff331af9-d7df-4e88-8e4e-203ba563df60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4202fd34-9706-486e-a8ca-75bbebf4d18d",
                  "parent_uuid": "1670e4d6-fc00-480e-8320-51d026104188",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5da67a34-a961-4d17-a0c0-f7b0e7334553",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "030dac7b-64b0-40bc-b64d-6b41bda41911",
              "parent_uuid": "5da67a34-a961-4d17-a0c0-f7b0e7334553",
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
              "uuid": "42f40201-fe00-49b4-a95f-2dcdfd9d6ffc",
              "parent_uuid": "5da67a34-a961-4d17-a0c0-f7b0e7334553",
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
              "uuid": "333cd25a-1bea-4583-aab0-216a9dce263f",
              "parent_uuid": "5da67a34-a961-4d17-a0c0-f7b0e7334553",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6430b31-644b-4730-b3aa-a741be7e2412",
                  "parent_uuid": "333cd25a-1bea-4583-aab0-216a9dce263f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dfc60edc-966b-43f3-99e1-1c90e380eb0c",
              "parent_uuid": "5da67a34-a961-4d17-a0c0-f7b0e7334553",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0293d957-2eb4-48d8-bf61-bc8f812e05fb",
                  "parent_uuid": "dfc60edc-966b-43f3-99e1-1c90e380eb0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3db6d38e-6ac6-4be1-aaba-1aa63162409a",
              "parent_uuid": "5da67a34-a961-4d17-a0c0-f7b0e7334553",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e6ed222-8a1a-4723-abe4-40e4748ea9b2",
                  "parent_uuid": "3db6d38e-6ac6-4be1-aaba-1aa63162409a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45432e61-d4ea-446f-96dc-a3adfb5bbbb5",
              "parent_uuid": "5da67a34-a961-4d17-a0c0-f7b0e7334553",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a121894-d8ce-4dc3-9799-00dd4ded18e4",
                  "parent_uuid": "45432e61-d4ea-446f-96dc-a3adfb5bbbb5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "980d76d6-b007-4562-b6b6-3b22d84a0229",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9158e16-50ff-42c2-8a6f-20b994171780",
              "parent_uuid": "980d76d6-b007-4562-b6b6-3b22d84a0229",
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
              "uuid": "d296b633-be58-4301-890c-2147060ac068",
              "parent_uuid": "980d76d6-b007-4562-b6b6-3b22d84a0229",
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
              "uuid": "50766bc0-e71b-4ed9-aa9e-774dd0a6ca93",
              "parent_uuid": "980d76d6-b007-4562-b6b6-3b22d84a0229",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea6b1714-50a5-4334-aeda-e1830e7fbfb8",
                  "parent_uuid": "50766bc0-e71b-4ed9-aa9e-774dd0a6ca93",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81e281d1-434b-43e6-b47a-eb83a9bd5c4e",
              "parent_uuid": "980d76d6-b007-4562-b6b6-3b22d84a0229",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acd95a45-3ca5-4445-b8bd-8ec831ff29a8",
                  "parent_uuid": "81e281d1-434b-43e6-b47a-eb83a9bd5c4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ff68d14-f34d-4571-ba82-dac4fe1e0c8d",
              "parent_uuid": "980d76d6-b007-4562-b6b6-3b22d84a0229",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac85a90e-7191-4dd7-913b-695c0b955445",
                  "parent_uuid": "3ff68d14-f34d-4571-ba82-dac4fe1e0c8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "700711e1-5ad0-4974-8d74-591914b76e11",
              "parent_uuid": "980d76d6-b007-4562-b6b6-3b22d84a0229",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86b89486-4c99-4d42-8c1e-133027a632f5",
                  "parent_uuid": "700711e1-5ad0-4974-8d74-591914b76e11",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "314f5ad9-1ff7-4598-b9af-cd3492aac80a",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "904166fc-982d-480e-90b5-03e5470ee7f6",
              "parent_uuid": "314f5ad9-1ff7-4598-b9af-cd3492aac80a",
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
              "uuid": "889525b6-a2ea-4af1-b2b0-40498deb06ce",
              "parent_uuid": "314f5ad9-1ff7-4598-b9af-cd3492aac80a",
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
              "uuid": "3aba82f6-9197-438b-8a8e-475dec806577",
              "parent_uuid": "314f5ad9-1ff7-4598-b9af-cd3492aac80a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f0ef765-ebf6-46bf-a3a9-dfd346aa051f",
                  "parent_uuid": "3aba82f6-9197-438b-8a8e-475dec806577",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10615182-c45f-4b68-947a-e5e03bdbaf3b",
              "parent_uuid": "314f5ad9-1ff7-4598-b9af-cd3492aac80a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f5c454d-9601-41cc-8110-8d1d89508aa3",
                  "parent_uuid": "10615182-c45f-4b68-947a-e5e03bdbaf3b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "139173c0-4746-43ec-a6de-57df75c4519c",
              "parent_uuid": "314f5ad9-1ff7-4598-b9af-cd3492aac80a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35847bb8-b641-4aa1-9c2f-640ea2896006",
                  "parent_uuid": "139173c0-4746-43ec-a6de-57df75c4519c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de1d5070-8810-456a-bd88-8030f9a9c19b",
              "parent_uuid": "314f5ad9-1ff7-4598-b9af-cd3492aac80a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6a40c78-7be6-42f8-bf53-17d310ebb010",
                  "parent_uuid": "de1d5070-8810-456a-bd88-8030f9a9c19b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0a831261-422f-4580-ad6b-50ad1ae4a0e8",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4dcf280c-a51d-45bd-aedd-09fac82dd7ba",
              "parent_uuid": "0a831261-422f-4580-ad6b-50ad1ae4a0e8",
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
          "uuid": "98125b7e-9425-4ed6-bc5b-3fcb9846ff06",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69cd9488-316d-4384-995f-ace18001b28d",
              "parent_uuid": "98125b7e-9425-4ed6-bc5b-3fcb9846ff06",
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
          "uuid": "fe554fa5-dd73-4a28-a7ff-936974160511",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e873401-1b26-4204-8e3e-e447cfeb523a",
              "parent_uuid": "fe554fa5-dd73-4a28-a7ff-936974160511",
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
                  "uuid": "10b35612-a7c9-44af-9eb0-81b4c5ca7087",
                  "parent_uuid": "3e873401-1b26-4204-8e3e-e447cfeb523a",
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
          "uuid": "4303e620-e9f1-4002-98e1-f7af5f32c0ba",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c3cb9b7-425e-49c0-a45a-74d183322c64",
              "parent_uuid": "4303e620-e9f1-4002-98e1-f7af5f32c0ba",
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
          "uuid": "06600a0c-d7b7-4be6-82d6-8f246276e126",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b5f4137d-6c2b-46bf-b3b4-2caa1fb76830",
              "parent_uuid": "06600a0c-d7b7-4be6-82d6-8f246276e126",
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
          "uuid": "18c82957-b0c8-482c-b300-97e836ac9c2e",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5a0cf6f4-57ef-4df7-aa66-02d6679afa4a",
              "parent_uuid": "18c82957-b0c8-482c-b300-97e836ac9c2e",
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
              "uuid": "a61c422b-849e-4baa-bb95-6423719897b7",
              "parent_uuid": "18c82957-b0c8-482c-b300-97e836ac9c2e",
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
              "uuid": "2edddf77-4d7a-4f64-a423-28405630cf6b",
              "parent_uuid": "18c82957-b0c8-482c-b300-97e836ac9c2e",
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
              "uuid": "068d017f-5c9c-41ce-b528-25f236875172",
              "parent_uuid": "18c82957-b0c8-482c-b300-97e836ac9c2e",
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
              "uuid": "f3ee8ad7-35eb-4f7d-8af6-6c7dc7166086",
              "parent_uuid": "18c82957-b0c8-482c-b300-97e836ac9c2e",
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
              "uuid": "a95fc396-d007-48b2-8198-181e22fa7c4b",
              "parent_uuid": "18c82957-b0c8-482c-b300-97e836ac9c2e",
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
          "uuid": "6abed796-c924-48ca-a07d-0804ce9035d4",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "4204ff67-b3bd-47a6-b3b5-5353c29797b2",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c331f485-f08f-40b1-a3c7-4a48cf3f2c49",
              "parent_uuid": "4204ff67-b3bd-47a6-b3b5-5353c29797b2",
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
              "uuid": "c03cf43c-0933-4aa7-8017-db92a5b6934a",
              "parent_uuid": "4204ff67-b3bd-47a6-b3b5-5353c29797b2",
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
              "uuid": "be571bd7-3308-464b-9f2e-397ce69af8b9",
              "parent_uuid": "4204ff67-b3bd-47a6-b3b5-5353c29797b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64d4e44c-1b54-49e5-a476-cdc56000b37d",
                  "parent_uuid": "be571bd7-3308-464b-9f2e-397ce69af8b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f77e1040-ddff-4b09-b3d0-3554d4c7d1aa",
              "parent_uuid": "4204ff67-b3bd-47a6-b3b5-5353c29797b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2a4f5c2-10de-4e1c-8ebb-7da9b0af99a5",
                  "parent_uuid": "f77e1040-ddff-4b09-b3d0-3554d4c7d1aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61f720a4-44b1-4fb0-bf9d-8fcc5c547b13",
              "parent_uuid": "4204ff67-b3bd-47a6-b3b5-5353c29797b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ffe01d1-9e33-4628-8d83-1e0ff37588a4",
                  "parent_uuid": "61f720a4-44b1-4fb0-bf9d-8fcc5c547b13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29705445-e436-42e4-bbcd-74e9c70abd34",
              "parent_uuid": "4204ff67-b3bd-47a6-b3b5-5353c29797b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e301a5a-fa29-49d0-a35a-1d86906132a2",
                  "parent_uuid": "29705445-e436-42e4-bbcd-74e9c70abd34",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "920145eb-edd6-493e-92f4-bb3fcdc3784a",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c83c446-d307-46ab-ad2c-46b9a27aa6ed",
              "parent_uuid": "920145eb-edd6-493e-92f4-bb3fcdc3784a",
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
              "uuid": "974be895-b333-4d2e-a96b-235d523054a2",
              "parent_uuid": "920145eb-edd6-493e-92f4-bb3fcdc3784a",
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
              "uuid": "2d848833-bac7-47f8-b613-fab055d9cf4c",
              "parent_uuid": "920145eb-edd6-493e-92f4-bb3fcdc3784a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c084ca77-3b85-41f0-b80e-0439e67c7669",
                  "parent_uuid": "2d848833-bac7-47f8-b613-fab055d9cf4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00f01d44-68f5-48c5-a58a-6a7f8203d72b",
              "parent_uuid": "920145eb-edd6-493e-92f4-bb3fcdc3784a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "201a1eec-33c9-4e07-aeb4-41207563da6d",
                  "parent_uuid": "00f01d44-68f5-48c5-a58a-6a7f8203d72b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f76e47a-cf2b-4170-a0a7-d7dcd9b90a7b",
              "parent_uuid": "920145eb-edd6-493e-92f4-bb3fcdc3784a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cb76108-57a4-4854-a957-f46cb59fd68a",
                  "parent_uuid": "0f76e47a-cf2b-4170-a0a7-d7dcd9b90a7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "759c83c1-88b0-475a-b80c-99cc06aeb5fe",
              "parent_uuid": "920145eb-edd6-493e-92f4-bb3fcdc3784a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8dac302-4eab-4d3e-b718-2ad486f9cd5e",
                  "parent_uuid": "759c83c1-88b0-475a-b80c-99cc06aeb5fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fe997153-c859-49ec-980c-59e39c351e8d",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb67c9c4-fa9f-4fda-86b8-03b7b84f015a",
              "parent_uuid": "fe997153-c859-49ec-980c-59e39c351e8d",
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
              "uuid": "03dcf7c7-aca7-4c05-9bda-9be451ba220f",
              "parent_uuid": "fe997153-c859-49ec-980c-59e39c351e8d",
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
              "uuid": "7babefff-56f4-4d25-b528-9bf1fa38aedb",
              "parent_uuid": "fe997153-c859-49ec-980c-59e39c351e8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80177d9c-c6f2-4c45-b3b6-19ac022ec0bc",
                  "parent_uuid": "7babefff-56f4-4d25-b528-9bf1fa38aedb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7707d14e-8286-4b4d-9a78-fb498aa3aeea",
              "parent_uuid": "fe997153-c859-49ec-980c-59e39c351e8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57e493a9-f33a-4e03-b286-7b769c72c6ef",
                  "parent_uuid": "7707d14e-8286-4b4d-9a78-fb498aa3aeea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc0107d9-2efc-480d-8d5b-00d8a4d51723",
              "parent_uuid": "fe997153-c859-49ec-980c-59e39c351e8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "160cf806-1c7d-4519-9e1c-75532339c916",
                  "parent_uuid": "cc0107d9-2efc-480d-8d5b-00d8a4d51723",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9bd0137-81a9-4ff2-b69d-46cfdc12c4f4",
              "parent_uuid": "fe997153-c859-49ec-980c-59e39c351e8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b769d1c-e66d-4064-bbd8-395ba2efd6ca",
                  "parent_uuid": "e9bd0137-81a9-4ff2-b69d-46cfdc12c4f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f5cd835b-a1f9-42cb-8bbe-6be04e5cc29a",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b4a8ce0-17ca-46ec-bde7-32a849af2ff2",
              "parent_uuid": "f5cd835b-a1f9-42cb-8bbe-6be04e5cc29a",
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
              "uuid": "b0affb60-e4bd-470a-ab20-4ea47e6e6d99",
              "parent_uuid": "f5cd835b-a1f9-42cb-8bbe-6be04e5cc29a",
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
              "uuid": "6e10ac3c-91c2-48fd-8ecd-7d2659610c00",
              "parent_uuid": "f5cd835b-a1f9-42cb-8bbe-6be04e5cc29a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fd7a20a-7173-433d-8840-6751b84e4e65",
                  "parent_uuid": "6e10ac3c-91c2-48fd-8ecd-7d2659610c00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bbf7922-6578-43bf-9ee8-d00de6282943",
              "parent_uuid": "f5cd835b-a1f9-42cb-8bbe-6be04e5cc29a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b126008-ebf7-44e8-b6e8-45bcdc37ab07",
                  "parent_uuid": "7bbf7922-6578-43bf-9ee8-d00de6282943",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99e696ea-fc7b-4681-a651-81a78110f00a",
              "parent_uuid": "f5cd835b-a1f9-42cb-8bbe-6be04e5cc29a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9074b0c8-4fb7-4f42-a2e6-0b68095ad108",
                  "parent_uuid": "99e696ea-fc7b-4681-a651-81a78110f00a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ffa7c29-c06d-4d33-acfc-004caa332ce7",
              "parent_uuid": "f5cd835b-a1f9-42cb-8bbe-6be04e5cc29a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d1ebb08-b28d-448a-85f3-efcdb5ed6564",
                  "parent_uuid": "8ffa7c29-c06d-4d33-acfc-004caa332ce7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "241e5c4e-141e-4341-9948-ba85e8878f7d",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48f5548a-10ca-4cb5-9c5c-6e80da4504f4",
              "parent_uuid": "241e5c4e-141e-4341-9948-ba85e8878f7d",
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
              "uuid": "cc975263-3b87-40d0-9b36-d543492cb387",
              "parent_uuid": "241e5c4e-141e-4341-9948-ba85e8878f7d",
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
              "uuid": "b4983948-a7a5-46fb-8565-686e5b3d97c2",
              "parent_uuid": "241e5c4e-141e-4341-9948-ba85e8878f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cb89163-c9d3-402c-a8ec-1f22d0246b11",
                  "parent_uuid": "b4983948-a7a5-46fb-8565-686e5b3d97c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70bce500-7ba3-48c9-b687-73e9e4fef1bd",
              "parent_uuid": "241e5c4e-141e-4341-9948-ba85e8878f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b70c3786-acdf-41b8-8ac4-ac5bda34575a",
                  "parent_uuid": "70bce500-7ba3-48c9-b687-73e9e4fef1bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5bc98d3-732a-4b70-9414-4a582d81b6cb",
              "parent_uuid": "241e5c4e-141e-4341-9948-ba85e8878f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6db51484-8a92-41ad-8f3d-22082bfe1b7b",
                  "parent_uuid": "c5bc98d3-732a-4b70-9414-4a582d81b6cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8194fa1-fb71-426a-86be-e25802a5e6f8",
              "parent_uuid": "241e5c4e-141e-4341-9948-ba85e8878f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "961f5bcc-e06f-4abb-9900-f80a82b7fab0",
                  "parent_uuid": "a8194fa1-fb71-426a-86be-e25802a5e6f8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a037cb8-08c5-4ebe-b50d-5c1131012ea8",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af4dcfd0-1578-451c-ad23-33ef92e07b7b",
              "parent_uuid": "8a037cb8-08c5-4ebe-b50d-5c1131012ea8",
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
              "uuid": "1cd22b11-9f92-441e-a47e-43df7af3745b",
              "parent_uuid": "8a037cb8-08c5-4ebe-b50d-5c1131012ea8",
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
              "uuid": "d30bdbee-c48e-4715-b4ae-66d0ff36a7d9",
              "parent_uuid": "8a037cb8-08c5-4ebe-b50d-5c1131012ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea604ccb-1b3d-4e08-af4b-709d0955000e",
                  "parent_uuid": "d30bdbee-c48e-4715-b4ae-66d0ff36a7d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ae1fa25-8276-41dd-900b-d925f2df234b",
              "parent_uuid": "8a037cb8-08c5-4ebe-b50d-5c1131012ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1990bcbe-2f70-436e-84e8-657571136065",
                  "parent_uuid": "6ae1fa25-8276-41dd-900b-d925f2df234b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de7c4b77-01a3-417c-84e9-05c0c7080fe6",
              "parent_uuid": "8a037cb8-08c5-4ebe-b50d-5c1131012ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b55b2d71-5a0b-41da-b539-2aaa612a7085",
                  "parent_uuid": "de7c4b77-01a3-417c-84e9-05c0c7080fe6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ade3fd4-dada-42d6-9577-6b1fcc35d442",
              "parent_uuid": "8a037cb8-08c5-4ebe-b50d-5c1131012ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9a32f67-6318-4c95-b8f3-14b06e69b87f",
                  "parent_uuid": "2ade3fd4-dada-42d6-9577-6b1fcc35d442",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eeb8221c-f114-4a06-9278-afb6fea5032e",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6206f8d7-c57d-4273-840b-660e16787c7e",
              "parent_uuid": "eeb8221c-f114-4a06-9278-afb6fea5032e",
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
          "uuid": "76634032-37ec-4f6c-9167-18a6af3cb925",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d99c911a-69e5-442b-a6cd-2b763b0b58d2",
              "parent_uuid": "76634032-37ec-4f6c-9167-18a6af3cb925",
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
          "uuid": "e8330252-df5e-47e0-9ce1-851dadd566d2",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5546627f-d257-4f2f-87ad-41f265f13b7e",
              "parent_uuid": "e8330252-df5e-47e0-9ce1-851dadd566d2",
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
                  "uuid": "8593ca64-4b8f-43b8-a256-78581286a500",
                  "parent_uuid": "5546627f-d257-4f2f-87ad-41f265f13b7e",
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
          "uuid": "4eaf9b75-2d6d-4703-9745-19e7aace869a",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3a39322d-68c5-4f09-829f-870399a18086",
              "parent_uuid": "4eaf9b75-2d6d-4703-9745-19e7aace869a",
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
          "uuid": "50b410a7-c0d0-426c-8ccc-70c00d4ef9f8",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c5f4ed2c-bd37-442e-920b-5b8ed03823e3",
              "parent_uuid": "50b410a7-c0d0-426c-8ccc-70c00d4ef9f8",
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
          "uuid": "a8c22c6c-ffd4-4eff-b5ec-bb05811d39c1",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fff44972-2215-4c01-a54c-98209d9dc6fd",
              "parent_uuid": "a8c22c6c-ffd4-4eff-b5ec-bb05811d39c1",
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
              "uuid": "38f28851-a296-42e6-9fa1-e9de4c64b847",
              "parent_uuid": "a8c22c6c-ffd4-4eff-b5ec-bb05811d39c1",
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
              "uuid": "3d03be60-2c93-43fb-ba27-4378b69b0f61",
              "parent_uuid": "a8c22c6c-ffd4-4eff-b5ec-bb05811d39c1",
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
              "uuid": "f389ce72-304a-439a-9540-50c498258c70",
              "parent_uuid": "a8c22c6c-ffd4-4eff-b5ec-bb05811d39c1",
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
              "uuid": "71c68c8a-4622-4640-8760-17e5fbf40412",
              "parent_uuid": "a8c22c6c-ffd4-4eff-b5ec-bb05811d39c1",
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
          "uuid": "a1f85dd9-3b26-4f92-9d6b-406581bd24cc",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06091eb5-6d0e-4597-a4c7-2210d3e2258d",
              "parent_uuid": "a1f85dd9-3b26-4f92-9d6b-406581bd24cc",
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
              "uuid": "cf51ef53-7415-44a9-8d73-d553d3c1a7d3",
              "parent_uuid": "a1f85dd9-3b26-4f92-9d6b-406581bd24cc",
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
              "uuid": "df4b666e-a2f2-4246-a3c2-6397ef740c10",
              "parent_uuid": "a1f85dd9-3b26-4f92-9d6b-406581bd24cc",
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
              "uuid": "bd7a398a-91de-4f0d-a491-5701ec85d332",
              "parent_uuid": "a1f85dd9-3b26-4f92-9d6b-406581bd24cc",
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
              "uuid": "c9bfa3ac-e27b-44e0-ba95-3bd041642eb9",
              "parent_uuid": "a1f85dd9-3b26-4f92-9d6b-406581bd24cc",
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
          "uuid": "26c752b6-241f-405b-81f8-437f32573fc9",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b0516d9a-9911-423b-98ee-74caa2c6429d",
              "parent_uuid": "26c752b6-241f-405b-81f8-437f32573fc9",
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
              "uuid": "b98b0b1e-798d-471a-99ff-42b908cb75a8",
              "parent_uuid": "26c752b6-241f-405b-81f8-437f32573fc9",
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
              "uuid": "35895088-1850-4b34-b54c-8762af7b8376",
              "parent_uuid": "26c752b6-241f-405b-81f8-437f32573fc9",
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
              "uuid": "a1aceab9-f00e-45d3-a7b1-60db497cb1d1",
              "parent_uuid": "26c752b6-241f-405b-81f8-437f32573fc9",
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
              "uuid": "d42920be-8954-4477-9d2b-22ded9eb156a",
              "parent_uuid": "26c752b6-241f-405b-81f8-437f32573fc9",
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
          "uuid": "0b52120e-5d15-401b-b9ce-e18ece4a6eb7",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f89e9693-6f96-44c0-817e-a37ab8bdb5d2",
              "parent_uuid": "0b52120e-5d15-401b-b9ce-e18ece4a6eb7",
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
              "uuid": "13f8b9e1-268f-4e56-b9e2-99ef39d6c9bf",
              "parent_uuid": "0b52120e-5d15-401b-b9ce-e18ece4a6eb7",
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
              "uuid": "de37fc96-2fb5-4c60-bdb2-e4e68077e816",
              "parent_uuid": "0b52120e-5d15-401b-b9ce-e18ece4a6eb7",
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
              "uuid": "8bad3522-6b8a-45d9-b539-87bddaffc71a",
              "parent_uuid": "0b52120e-5d15-401b-b9ce-e18ece4a6eb7",
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
              "uuid": "5971cb07-12b3-477c-86a4-7b6249d98d12",
              "parent_uuid": "0b52120e-5d15-401b-b9ce-e18ece4a6eb7",
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
          "uuid": "2ab8d2f1-09ee-49aa-922f-c0fc2179d39c",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09e6a6a7-4a05-4afd-a1e8-c4d332c9ee97",
              "parent_uuid": "2ab8d2f1-09ee-49aa-922f-c0fc2179d39c",
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
              "uuid": "a52f8c10-1e5a-4b9a-b802-a9deb5a830c5",
              "parent_uuid": "2ab8d2f1-09ee-49aa-922f-c0fc2179d39c",
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
              "uuid": "51cc02c1-1ce3-4007-9115-83efef72c144",
              "parent_uuid": "2ab8d2f1-09ee-49aa-922f-c0fc2179d39c",
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
              "uuid": "a607f3b0-c347-4dda-ae69-86ec8015f7ca",
              "parent_uuid": "2ab8d2f1-09ee-49aa-922f-c0fc2179d39c",
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
              "uuid": "65d1c59a-9dfb-44ee-8cc4-0699a62f8c24",
              "parent_uuid": "2ab8d2f1-09ee-49aa-922f-c0fc2179d39c",
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
          "uuid": "51265f9a-b492-4ed2-9fdb-965238998159",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "203eb0d5-d126-465a-9dbd-a4d23fa4786a",
              "parent_uuid": "51265f9a-b492-4ed2-9fdb-965238998159",
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
              "uuid": "3b6fce0e-fdae-4159-9d97-fcdc5d4ee5d4",
              "parent_uuid": "51265f9a-b492-4ed2-9fdb-965238998159",
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
              "uuid": "40c97838-1403-4fb4-a423-88f24e26c807",
              "parent_uuid": "51265f9a-b492-4ed2-9fdb-965238998159",
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
              "uuid": "486e64c0-0b76-47bf-ba5a-97d3120778f9",
              "parent_uuid": "51265f9a-b492-4ed2-9fdb-965238998159",
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
              "uuid": "bcd29587-5334-4a72-94af-9c3b5b6a9436",
              "parent_uuid": "51265f9a-b492-4ed2-9fdb-965238998159",
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
          "uuid": "090e2648-742a-4b9d-9eb6-f2e771ea0101",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "36c84a69-97ff-47e9-acb1-7c0e09ef1ce2",
              "parent_uuid": "090e2648-742a-4b9d-9eb6-f2e771ea0101",
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
              "uuid": "03365b32-30ec-4605-bb70-8c3e0ba97510",
              "parent_uuid": "090e2648-742a-4b9d-9eb6-f2e771ea0101",
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
              "uuid": "a6bc0c24-f597-433d-9ba9-c504a4774750",
              "parent_uuid": "090e2648-742a-4b9d-9eb6-f2e771ea0101",
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
              "uuid": "a63f0b95-7cfc-4e94-a355-e0213368afa7",
              "parent_uuid": "090e2648-742a-4b9d-9eb6-f2e771ea0101",
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
              "uuid": "0a558b48-2a1d-463a-99e5-bcc84534a530",
              "parent_uuid": "090e2648-742a-4b9d-9eb6-f2e771ea0101",
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
          "uuid": "d8261f98-a4ef-4d22-83fd-dadf8865a139",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38ec7eca-f477-4736-bae3-7ade28f4ebfc",
              "parent_uuid": "d8261f98-a4ef-4d22-83fd-dadf8865a139",
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
              "uuid": "a16ed2a0-b16f-4374-bf4a-029273c14be4",
              "parent_uuid": "d8261f98-a4ef-4d22-83fd-dadf8865a139",
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
              "uuid": "b1fcc64b-6715-4565-b3a6-56319c3019e3",
              "parent_uuid": "d8261f98-a4ef-4d22-83fd-dadf8865a139",
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
              "uuid": "f7078cf6-5cd5-4628-8476-6ca3f601beeb",
              "parent_uuid": "d8261f98-a4ef-4d22-83fd-dadf8865a139",
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
              "uuid": "a1cadd7f-db23-46af-848e-014050bfe50d",
              "parent_uuid": "d8261f98-a4ef-4d22-83fd-dadf8865a139",
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
          "uuid": "74d795b0-5166-4794-a603-24af85c16827",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6de976eb-f18c-44f3-b769-3dbd16ca3f3f",
              "parent_uuid": "74d795b0-5166-4794-a603-24af85c16827",
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
              "uuid": "78fa946f-d3fa-4799-8d1d-18bb1715d566",
              "parent_uuid": "74d795b0-5166-4794-a603-24af85c16827",
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
              "uuid": "271241df-448f-4846-a2cb-af08ef50835d",
              "parent_uuid": "74d795b0-5166-4794-a603-24af85c16827",
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
              "uuid": "acfcfd23-c295-49dd-be02-abb6d161f77a",
              "parent_uuid": "74d795b0-5166-4794-a603-24af85c16827",
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
              "uuid": "9a9c291b-853c-42ed-94fa-b6b6fb4602e1",
              "parent_uuid": "74d795b0-5166-4794-a603-24af85c16827",
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
          "uuid": "b50460e0-14af-4da2-acec-bd10a9ecb83e",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28cf1089-ac25-41ba-82d1-2d0eb5f57a81",
              "parent_uuid": "b50460e0-14af-4da2-acec-bd10a9ecb83e",
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
          "uuid": "ac5a02cf-9d26-44ce-91de-3d67e48e8858",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51cfa4bf-d0c1-4edc-af95-e1da98a72445",
              "parent_uuid": "ac5a02cf-9d26-44ce-91de-3d67e48e8858",
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
          "uuid": "4d2fbde8-1eec-4027-9179-314071db5135",
          "parent_uuid": "dc666807-1cf5-45f6-8974-57cd0ef21d63",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5aaf51d0-7619-4994-b6da-50df7e7d1657",
              "parent_uuid": "4d2fbde8-1eec-4027-9179-314071db5135",
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
                  "uuid": "debde7d8-9b8c-42c5-b712-94a12c8448bc",
                  "parent_uuid": "5aaf51d0-7619-4994-b6da-50df7e7d1657",
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
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
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
		,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

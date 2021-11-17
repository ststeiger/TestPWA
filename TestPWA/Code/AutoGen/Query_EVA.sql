
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
  "uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "f64628fa-ea6f-42ec-8bbb-c5f56cdaf11b",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "d6a8243a-b22f-492f-8fce-29d351e8cec7",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "bd89d628-4c0f-4145-82c1-3769885dadb8",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "89803a70-ac3f-4388-9e94-7707e3b386ac",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "dfab9640-2d60-4be2-ad2f-d50fc5a8eafb",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "d96d7f02-ab79-4682-abb1-337131bf55ea",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "c36d8c82-45db-40b8-acf6-7201ca90453d",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
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
      "uuid": "c2c44561-446c-4273-85df-db39132acfc7",
      "parent_uuid": "d12b48f9-8aff-4d8d-936f-adfd65522f04",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "4a59e014-9283-43bf-91f4-4fee32301e3e",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f730f776-09cd-4639-a7d4-b365eed54f2e",
              "parent_uuid": "4a59e014-9283-43bf-91f4-4fee32301e3e",
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
              "uuid": "281bbace-6de5-4707-86f6-ffd70a3187e3",
              "parent_uuid": "4a59e014-9283-43bf-91f4-4fee32301e3e",
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
              "uuid": "1c2e9231-e96b-4766-b9b8-09fa857aacbf",
              "parent_uuid": "4a59e014-9283-43bf-91f4-4fee32301e3e",
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
              "uuid": "1c3e96c8-1d52-4f67-9f35-e5fe298394e4",
              "parent_uuid": "4a59e014-9283-43bf-91f4-4fee32301e3e",
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
          "uuid": "42384606-7724-4b97-8ce8-04aa579d2b5c",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5c7f28d2-2e0d-413c-8cfa-3eed1f57a3c9",
              "parent_uuid": "42384606-7724-4b97-8ce8-04aa579d2b5c",
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
              "uuid": "be156f59-808c-45db-b08a-da465a3797cc",
              "parent_uuid": "42384606-7724-4b97-8ce8-04aa579d2b5c",
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
              "uuid": "1c90d373-fa94-4551-8a05-2f4141b1a967",
              "parent_uuid": "42384606-7724-4b97-8ce8-04aa579d2b5c",
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
              "uuid": "6b67de0c-7320-4663-81f7-8fb08ce37e1c",
              "parent_uuid": "42384606-7724-4b97-8ce8-04aa579d2b5c",
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
          "uuid": "59c387ef-c718-401f-a123-ea2d3ab62726",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5dd5c5d2-0667-47b9-8178-a11739862c6e",
              "parent_uuid": "59c387ef-c718-401f-a123-ea2d3ab62726",
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
              "uuid": "9680935b-a6f5-4046-8e67-5d4bdfce0a06",
              "parent_uuid": "59c387ef-c718-401f-a123-ea2d3ab62726",
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
              "uuid": "154250e9-091c-4c9f-8e52-1d435931093d",
              "parent_uuid": "59c387ef-c718-401f-a123-ea2d3ab62726",
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
              "uuid": "59e16286-e067-4f0b-af0a-87b871b7c654",
              "parent_uuid": "59c387ef-c718-401f-a123-ea2d3ab62726",
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
              "uuid": "895aae15-b175-4384-bb83-f80eac06e56f",
              "parent_uuid": "59c387ef-c718-401f-a123-ea2d3ab62726",
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
              "uuid": "6c547c13-b0c3-484b-a0ab-037cdfddf752",
              "parent_uuid": "59c387ef-c718-401f-a123-ea2d3ab62726",
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
          "uuid": "387428a6-e469-4dfc-99d2-c3530d03fcf3",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "015d2c30-b2a7-4c6d-a322-a8ec3ab53761",
              "parent_uuid": "387428a6-e469-4dfc-99d2-c3530d03fcf3",
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
          "uuid": "defae1ae-cde5-4737-b8e8-0712b3e7d8d1",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1307fa10-6dcd-457f-97d0-8cfb476d6bbb",
              "parent_uuid": "defae1ae-cde5-4737-b8e8-0712b3e7d8d1",
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
              "uuid": "013c650d-d860-4073-af6e-ebad805a0655",
              "parent_uuid": "defae1ae-cde5-4737-b8e8-0712b3e7d8d1",
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
              "uuid": "5f79cb29-85a6-4ba8-99a9-b755624cfb47",
              "parent_uuid": "defae1ae-cde5-4737-b8e8-0712b3e7d8d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9cc43c76-294d-4690-80b2-e5503dba0921",
                  "parent_uuid": "5f79cb29-85a6-4ba8-99a9-b755624cfb47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1522edb3-0ddd-4c22-9ed4-76715e6d85ef",
              "parent_uuid": "defae1ae-cde5-4737-b8e8-0712b3e7d8d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7436e866-cf3b-4ff8-ad4e-7f129a476244",
                  "parent_uuid": "1522edb3-0ddd-4c22-9ed4-76715e6d85ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f943f26-cb0d-4fed-a489-49b6b80b187f",
              "parent_uuid": "defae1ae-cde5-4737-b8e8-0712b3e7d8d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "feff9fe8-550a-479b-993c-e47ae58fba7b",
                  "parent_uuid": "7f943f26-cb0d-4fed-a489-49b6b80b187f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bdfd4e14-938c-4cbc-ad7a-d6507b49636c",
              "parent_uuid": "defae1ae-cde5-4737-b8e8-0712b3e7d8d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbf95e7a-22c6-47d0-bb88-4b16e67ea249",
                  "parent_uuid": "bdfd4e14-938c-4cbc-ad7a-d6507b49636c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b2b57c61-986d-4d71-891e-bf3bd1109557",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e456165-861a-45f6-99b6-65732feaab93",
              "parent_uuid": "b2b57c61-986d-4d71-891e-bf3bd1109557",
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
              "uuid": "5621d2b0-ac69-4489-9799-5be3fca1b454",
              "parent_uuid": "b2b57c61-986d-4d71-891e-bf3bd1109557",
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
              "uuid": "9471ed7b-2192-45c3-8469-b409c7dfa923",
              "parent_uuid": "b2b57c61-986d-4d71-891e-bf3bd1109557",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "292ee420-b879-4c97-b821-a1988d8db71d",
                  "parent_uuid": "9471ed7b-2192-45c3-8469-b409c7dfa923",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52309278-259c-44df-8528-905fd8cf974d",
              "parent_uuid": "b2b57c61-986d-4d71-891e-bf3bd1109557",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "387cd40f-52f6-4bbc-b7fc-ec14e588574e",
                  "parent_uuid": "52309278-259c-44df-8528-905fd8cf974d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4831c9d-dc78-49a6-900a-8d6ca7c8af58",
              "parent_uuid": "b2b57c61-986d-4d71-891e-bf3bd1109557",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b7b8027-c9d7-4957-9fae-a85be47d03d9",
                  "parent_uuid": "e4831c9d-dc78-49a6-900a-8d6ca7c8af58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d027f0d-675c-4c42-8324-9b55e41e19a9",
              "parent_uuid": "b2b57c61-986d-4d71-891e-bf3bd1109557",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f9588d4-6d3b-4f57-8e4e-4f1c1fa79d68",
                  "parent_uuid": "1d027f0d-675c-4c42-8324-9b55e41e19a9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5fe4a81c-3fa7-4616-b143-97977bd0e209",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5156a976-1401-417d-bee7-1484739e2153",
              "parent_uuid": "5fe4a81c-3fa7-4616-b143-97977bd0e209",
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
              "uuid": "587a8929-f630-4edc-b1fd-b4158207ce7c",
              "parent_uuid": "5fe4a81c-3fa7-4616-b143-97977bd0e209",
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
              "uuid": "8cbc5036-b378-44a4-81ba-b72e5c95c73e",
              "parent_uuid": "5fe4a81c-3fa7-4616-b143-97977bd0e209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc6ff05f-94c2-427c-8b64-50f408bb546c",
                  "parent_uuid": "8cbc5036-b378-44a4-81ba-b72e5c95c73e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1b3b42a-eee3-4799-bae7-673331bd73e7",
              "parent_uuid": "5fe4a81c-3fa7-4616-b143-97977bd0e209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59b8532d-8017-4c37-b757-b610919ddaa8",
                  "parent_uuid": "d1b3b42a-eee3-4799-bae7-673331bd73e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "578a7a7c-76bf-4483-a008-68969689334d",
              "parent_uuid": "5fe4a81c-3fa7-4616-b143-97977bd0e209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "faefbb14-023b-4f5e-ac86-60303f18dcbc",
                  "parent_uuid": "578a7a7c-76bf-4483-a008-68969689334d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68356919-a781-4b58-9833-45f7986029ca",
              "parent_uuid": "5fe4a81c-3fa7-4616-b143-97977bd0e209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "144184f8-f859-4272-9ab0-229342e0b21e",
                  "parent_uuid": "68356919-a781-4b58-9833-45f7986029ca",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d032f654-da56-4761-9640-6803cbb69a37",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75ee73ce-e8bf-4795-8968-9ba46fa20278",
              "parent_uuid": "d032f654-da56-4761-9640-6803cbb69a37",
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
              "uuid": "fbd62a52-f97d-402e-8ba1-ca94dda3cb88",
              "parent_uuid": "d032f654-da56-4761-9640-6803cbb69a37",
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
              "uuid": "e794d41c-497c-4426-8a04-f89320b3df13",
              "parent_uuid": "d032f654-da56-4761-9640-6803cbb69a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b18e4b28-38e8-4f07-8344-58d008ab5a85",
                  "parent_uuid": "e794d41c-497c-4426-8a04-f89320b3df13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ff0ae7a-c6b8-4fac-928b-0ac4e62bc4e4",
              "parent_uuid": "d032f654-da56-4761-9640-6803cbb69a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3cf1738-9785-4100-94b7-274c08dc1091",
                  "parent_uuid": "0ff0ae7a-c6b8-4fac-928b-0ac4e62bc4e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8fdf2dc9-34b7-499b-b562-cb87e20f10f1",
              "parent_uuid": "d032f654-da56-4761-9640-6803cbb69a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "684ed569-8849-4539-8895-ade729918f48",
                  "parent_uuid": "8fdf2dc9-34b7-499b-b562-cb87e20f10f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "881e0769-8e47-4673-8f34-897f23aa41d9",
              "parent_uuid": "d032f654-da56-4761-9640-6803cbb69a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab8dea5c-8526-4435-a238-8f49962c54a1",
                  "parent_uuid": "881e0769-8e47-4673-8f34-897f23aa41d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4d978f1b-cc65-42b6-9774-a910b9fb946b",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c08dc836-6466-4c2c-95b3-8d68d4a47f2a",
              "parent_uuid": "4d978f1b-cc65-42b6-9774-a910b9fb946b",
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
              "uuid": "66d08c23-1390-4bf2-a3bc-68dc6dcfb131",
              "parent_uuid": "4d978f1b-cc65-42b6-9774-a910b9fb946b",
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
              "uuid": "d4edbb93-5835-4707-a589-a8b9f009feb3",
              "parent_uuid": "4d978f1b-cc65-42b6-9774-a910b9fb946b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9451ab5-82f9-4c2a-8c1d-3f4539f36448",
                  "parent_uuid": "d4edbb93-5835-4707-a589-a8b9f009feb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ab5d68f-e663-4c5b-9c01-272977140402",
              "parent_uuid": "4d978f1b-cc65-42b6-9774-a910b9fb946b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fee4684-26d7-428e-8ad3-f40ca74f9bd9",
                  "parent_uuid": "7ab5d68f-e663-4c5b-9c01-272977140402",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "701e4443-3901-4a80-818c-6995706d0951",
              "parent_uuid": "4d978f1b-cc65-42b6-9774-a910b9fb946b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5aed401-5866-4450-bad7-804a49600cb8",
                  "parent_uuid": "701e4443-3901-4a80-818c-6995706d0951",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d9725b3-00b3-45f8-a5f2-5225f5b7750b",
              "parent_uuid": "4d978f1b-cc65-42b6-9774-a910b9fb946b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfe94c3b-c7ce-42bc-a425-969e83b1d4f6",
                  "parent_uuid": "0d9725b3-00b3-45f8-a5f2-5225f5b7750b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a8334c19-2185-4da9-8c2a-64f016bb9322",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dbc2f04b-0778-4067-a74a-a65ade3ba264",
              "parent_uuid": "a8334c19-2185-4da9-8c2a-64f016bb9322",
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
              "uuid": "0053f122-2f20-451b-b153-11bb31c44b32",
              "parent_uuid": "a8334c19-2185-4da9-8c2a-64f016bb9322",
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
              "uuid": "60c42f52-42b7-4358-84e9-cae7eacd1b48",
              "parent_uuid": "a8334c19-2185-4da9-8c2a-64f016bb9322",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f9a1d0c-ebee-477a-9c47-12269b1a276b",
                  "parent_uuid": "60c42f52-42b7-4358-84e9-cae7eacd1b48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79619068-8b96-4977-a80e-f8b6b613c718",
              "parent_uuid": "a8334c19-2185-4da9-8c2a-64f016bb9322",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fe81fdc-6641-4411-98c9-7f7a15c80ac5",
                  "parent_uuid": "79619068-8b96-4977-a80e-f8b6b613c718",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6301a66-bb35-4cf9-bcfd-bd527d86d2e3",
              "parent_uuid": "a8334c19-2185-4da9-8c2a-64f016bb9322",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "898a4cd4-02ec-41f9-b2ed-3d827b6e55d1",
                  "parent_uuid": "d6301a66-bb35-4cf9-bcfd-bd527d86d2e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "640aa2fe-c142-414e-9c85-57bd50c9116b",
              "parent_uuid": "a8334c19-2185-4da9-8c2a-64f016bb9322",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f26f4d33-b349-4c7c-9b68-4b59056ea4ec",
                  "parent_uuid": "640aa2fe-c142-414e-9c85-57bd50c9116b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "99f1a4a9-d939-4c22-baba-080772234f25",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a1296cb-e9a2-4487-911c-82d84441fc5b",
              "parent_uuid": "99f1a4a9-d939-4c22-baba-080772234f25",
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
              "uuid": "e373b4ef-a8bc-4e7d-816d-871b40f786a2",
              "parent_uuid": "99f1a4a9-d939-4c22-baba-080772234f25",
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
              "uuid": "be641beb-481a-459c-b5ed-431ba1005022",
              "parent_uuid": "99f1a4a9-d939-4c22-baba-080772234f25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8b20e34-d62c-4468-831b-b387e64c34f0",
                  "parent_uuid": "be641beb-481a-459c-b5ed-431ba1005022",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35d76e7f-0512-4867-9ec9-291594f21868",
              "parent_uuid": "99f1a4a9-d939-4c22-baba-080772234f25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c05e13f-1f92-4399-85ce-05dff8a8a640",
                  "parent_uuid": "35d76e7f-0512-4867-9ec9-291594f21868",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c0e47ae-ca70-4a3f-beef-b71f59c2382c",
              "parent_uuid": "99f1a4a9-d939-4c22-baba-080772234f25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "473f6c7e-3a41-4236-a605-3fff848fac45",
                  "parent_uuid": "7c0e47ae-ca70-4a3f-beef-b71f59c2382c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09348700-0d00-4d5e-a4c8-b5f6f9065f3a",
              "parent_uuid": "99f1a4a9-d939-4c22-baba-080772234f25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23e22168-5824-457b-8645-da07f7722437",
                  "parent_uuid": "09348700-0d00-4d5e-a4c8-b5f6f9065f3a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c79a8464-5c59-459f-bb2d-23646f326be2",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d286dd4b-67b8-4995-b4f8-24ea1ff0012e",
              "parent_uuid": "c79a8464-5c59-459f-bb2d-23646f326be2",
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
              "uuid": "c5404cb1-17b0-47f7-a730-2762e67ee229",
              "parent_uuid": "c79a8464-5c59-459f-bb2d-23646f326be2",
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
              "uuid": "ca444dce-b39d-4902-90ca-f861a4dcda67",
              "parent_uuid": "c79a8464-5c59-459f-bb2d-23646f326be2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42b00690-4a08-44f4-807f-b19cb7be40a3",
                  "parent_uuid": "ca444dce-b39d-4902-90ca-f861a4dcda67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cfabb36-cfa8-42f5-83de-946aa8771e06",
              "parent_uuid": "c79a8464-5c59-459f-bb2d-23646f326be2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5413395e-ca72-47a8-8908-1871ebc2a64f",
                  "parent_uuid": "4cfabb36-cfa8-42f5-83de-946aa8771e06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8138f535-44a8-4b6a-8d52-37d42aff4b44",
              "parent_uuid": "c79a8464-5c59-459f-bb2d-23646f326be2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ffd12f5-66b2-493e-b735-ef8b2cb1f994",
                  "parent_uuid": "8138f535-44a8-4b6a-8d52-37d42aff4b44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8878baa9-8425-4b00-81ea-ec3feacb8490",
              "parent_uuid": "c79a8464-5c59-459f-bb2d-23646f326be2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4cf0d280-4851-4deb-ac02-b332312f4dea",
                  "parent_uuid": "8878baa9-8425-4b00-81ea-ec3feacb8490",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0efa1034-2c39-4495-939a-377f50e5debf",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fab32d3c-fae8-45d3-a25f-21743f4083e2",
              "parent_uuid": "0efa1034-2c39-4495-939a-377f50e5debf",
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
              "uuid": "4aee6fef-50fa-4f70-b117-80f3da3747e8",
              "parent_uuid": "0efa1034-2c39-4495-939a-377f50e5debf",
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
              "uuid": "e4656083-23f9-4140-b8a7-53e8f66b7501",
              "parent_uuid": "0efa1034-2c39-4495-939a-377f50e5debf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d0de575-0d5d-4b27-89f1-2ad4f8808a03",
                  "parent_uuid": "e4656083-23f9-4140-b8a7-53e8f66b7501",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83bac5cc-5086-4d07-a70a-417fe3db0560",
              "parent_uuid": "0efa1034-2c39-4495-939a-377f50e5debf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19fae07d-8b07-4249-a6dd-e21b2a7d65ec",
                  "parent_uuid": "83bac5cc-5086-4d07-a70a-417fe3db0560",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c98abdf-171d-4964-8914-29047f36072f",
              "parent_uuid": "0efa1034-2c39-4495-939a-377f50e5debf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5f23a52-24e8-4712-811e-e87772243448",
                  "parent_uuid": "6c98abdf-171d-4964-8914-29047f36072f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab710248-4783-4441-a8d6-15ad0f32593e",
              "parent_uuid": "0efa1034-2c39-4495-939a-377f50e5debf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb871e49-1e16-4ae8-a643-54600004c85c",
                  "parent_uuid": "ab710248-4783-4441-a8d6-15ad0f32593e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ebc4bbcc-fc11-4b45-a688-8381a0b65b0f",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1d07e88-8211-432e-800a-7a9fac435013",
              "parent_uuid": "ebc4bbcc-fc11-4b45-a688-8381a0b65b0f",
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
              "uuid": "85e1bf32-0e5f-426e-a424-52ff0219991e",
              "parent_uuid": "ebc4bbcc-fc11-4b45-a688-8381a0b65b0f",
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
              "uuid": "59d76c60-5275-4803-88ea-3e381b335acd",
              "parent_uuid": "ebc4bbcc-fc11-4b45-a688-8381a0b65b0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e845303-403e-4b21-b40d-a38a3f3b6300",
                  "parent_uuid": "59d76c60-5275-4803-88ea-3e381b335acd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4485b73d-eda3-4fbb-9da4-bb627cc39f8e",
              "parent_uuid": "ebc4bbcc-fc11-4b45-a688-8381a0b65b0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4ec7cfb-1c48-4505-95ba-9eed0571dcac",
                  "parent_uuid": "4485b73d-eda3-4fbb-9da4-bb627cc39f8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6f40f31-d850-4058-a708-f6d2c1e8caa9",
              "parent_uuid": "ebc4bbcc-fc11-4b45-a688-8381a0b65b0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e470f5bc-5d10-442d-bb25-4c31d3e87aa3",
                  "parent_uuid": "a6f40f31-d850-4058-a708-f6d2c1e8caa9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b44b90a-a800-4005-8234-acbc51c03f4f",
              "parent_uuid": "ebc4bbcc-fc11-4b45-a688-8381a0b65b0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d36f9fd-2b91-4a00-ac01-6c00c9517755",
                  "parent_uuid": "8b44b90a-a800-4005-8234-acbc51c03f4f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d05eb97b-7f07-4a50-b3a4-3015f73d3806",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00e3e84c-69d4-498f-9464-de27f1614a82",
              "parent_uuid": "d05eb97b-7f07-4a50-b3a4-3015f73d3806",
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
              "uuid": "495e5786-b62e-46e8-8a38-8504fa603075",
              "parent_uuid": "d05eb97b-7f07-4a50-b3a4-3015f73d3806",
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
              "uuid": "b56f1e1d-e84a-49f9-9c01-f11c931cbf83",
              "parent_uuid": "d05eb97b-7f07-4a50-b3a4-3015f73d3806",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f94a7ee-7eb3-4b14-b9d7-1a59a8bcd09e",
                  "parent_uuid": "b56f1e1d-e84a-49f9-9c01-f11c931cbf83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e69682b-62e3-43f4-a72e-bd0adab0b33c",
              "parent_uuid": "d05eb97b-7f07-4a50-b3a4-3015f73d3806",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db1355d6-cfbb-4294-9859-cd65a5816d9e",
                  "parent_uuid": "4e69682b-62e3-43f4-a72e-bd0adab0b33c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e0fc1b7-1aae-4f1e-8475-f1b852d21752",
              "parent_uuid": "d05eb97b-7f07-4a50-b3a4-3015f73d3806",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68441a70-decf-4ff5-8102-6f9359ad1d08",
                  "parent_uuid": "4e0fc1b7-1aae-4f1e-8475-f1b852d21752",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4437db4-408a-4ae6-a830-3f552a10579e",
              "parent_uuid": "d05eb97b-7f07-4a50-b3a4-3015f73d3806",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d53de369-ba00-45ed-ad55-a1f27e0f7131",
                  "parent_uuid": "c4437db4-408a-4ae6-a830-3f552a10579e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d693e483-1a2d-4a88-b187-31c0502b8ecd",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d4dba84-4a37-42ff-9a95-b90570943dfe",
              "parent_uuid": "d693e483-1a2d-4a88-b187-31c0502b8ecd",
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
              "uuid": "853aaed0-6a76-4f81-923e-59f76ae23853",
              "parent_uuid": "d693e483-1a2d-4a88-b187-31c0502b8ecd",
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
              "uuid": "d1c443cb-08ed-4659-beba-74a176833a8b",
              "parent_uuid": "d693e483-1a2d-4a88-b187-31c0502b8ecd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60174bc2-a879-4bc2-9b29-3a111896d0f0",
                  "parent_uuid": "d1c443cb-08ed-4659-beba-74a176833a8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "daf312ce-917f-419a-89e6-a8d2474c177e",
              "parent_uuid": "d693e483-1a2d-4a88-b187-31c0502b8ecd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72d7d494-dfbb-41b1-b6b8-8302b3a2a4d0",
                  "parent_uuid": "daf312ce-917f-419a-89e6-a8d2474c177e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "021bbe8f-c866-4899-8b0f-871706743cff",
              "parent_uuid": "d693e483-1a2d-4a88-b187-31c0502b8ecd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c63f026-2516-472c-b913-0d7fb14ea092",
                  "parent_uuid": "021bbe8f-c866-4899-8b0f-871706743cff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7359148-d703-407d-b07a-a3a315d31c68",
              "parent_uuid": "d693e483-1a2d-4a88-b187-31c0502b8ecd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "016ecc4b-23e3-444d-8c12-9cdbbee9bf63",
                  "parent_uuid": "e7359148-d703-407d-b07a-a3a315d31c68",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76c616a9-e20b-427f-a889-0db403f9df53",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd1bd334-36ca-4d7e-b22b-a98901046b48",
              "parent_uuid": "76c616a9-e20b-427f-a889-0db403f9df53",
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
              "uuid": "932988a0-f80a-4089-bc37-a60e52dbad14",
              "parent_uuid": "76c616a9-e20b-427f-a889-0db403f9df53",
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
              "uuid": "b3f420e2-d8e1-43a3-8e09-93dde06dc429",
              "parent_uuid": "76c616a9-e20b-427f-a889-0db403f9df53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dc0d636-105c-4d44-b615-7633ff815c0e",
                  "parent_uuid": "b3f420e2-d8e1-43a3-8e09-93dde06dc429",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9800f691-96c5-47c3-902d-fd17d8ede054",
              "parent_uuid": "76c616a9-e20b-427f-a889-0db403f9df53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec1b35e8-95fc-4e70-8dc3-4e88753e8676",
                  "parent_uuid": "9800f691-96c5-47c3-902d-fd17d8ede054",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c915fa1-ef87-465e-835b-53e67eb6ddbe",
              "parent_uuid": "76c616a9-e20b-427f-a889-0db403f9df53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad8d9efc-b058-40bf-8d27-c25d1d245dec",
                  "parent_uuid": "8c915fa1-ef87-465e-835b-53e67eb6ddbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d27369cd-9a4d-44ff-a064-47a54ce5c09b",
              "parent_uuid": "76c616a9-e20b-427f-a889-0db403f9df53",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14434295-279d-4ae5-9e87-066d90d91383",
                  "parent_uuid": "d27369cd-9a4d-44ff-a064-47a54ce5c09b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cf260aec-f115-44ab-b168-a58cd9c0e4da",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04d46398-9636-44f0-b07e-9e260c1e3fbf",
              "parent_uuid": "cf260aec-f115-44ab-b168-a58cd9c0e4da",
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
              "uuid": "6d7ee3e3-a022-447c-aa2f-55c5944da33e",
              "parent_uuid": "cf260aec-f115-44ab-b168-a58cd9c0e4da",
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
              "uuid": "13e813c5-8d1d-4d54-9826-c7f78e56cab6",
              "parent_uuid": "cf260aec-f115-44ab-b168-a58cd9c0e4da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af917ec4-3b9b-48e6-b685-045b3a2006dc",
                  "parent_uuid": "13e813c5-8d1d-4d54-9826-c7f78e56cab6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "637a0852-b868-473c-bd71-4811be8f6dd4",
              "parent_uuid": "cf260aec-f115-44ab-b168-a58cd9c0e4da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c383914-6e07-483b-a1fc-657c9ddf7f2a",
                  "parent_uuid": "637a0852-b868-473c-bd71-4811be8f6dd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bac4baa8-ce53-4173-9cd8-daf2be392248",
              "parent_uuid": "cf260aec-f115-44ab-b168-a58cd9c0e4da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf50b039-4ef4-4a63-a644-691c430b7b45",
                  "parent_uuid": "bac4baa8-ce53-4173-9cd8-daf2be392248",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c24a559-7d36-4d08-b09a-c603f239c0f8",
              "parent_uuid": "cf260aec-f115-44ab-b168-a58cd9c0e4da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c604651b-b96d-4809-a510-0d6b4c4ed843",
                  "parent_uuid": "5c24a559-7d36-4d08-b09a-c603f239c0f8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0d45998-d4dc-4f3b-b4ef-85853c86c3d6",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7bd5284d-4610-4191-b254-db7343679dde",
              "parent_uuid": "e0d45998-d4dc-4f3b-b4ef-85853c86c3d6",
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
          "uuid": "23d88f13-8961-4243-83eb-87ed2166275c",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a95ae052-6129-4f66-9c13-012516edc664",
              "parent_uuid": "23d88f13-8961-4243-83eb-87ed2166275c",
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
          "uuid": "cda736f8-3ec1-4bd0-be4a-5370d1c44160",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c00bbb5a-545c-420e-b703-caf84a615b48",
              "parent_uuid": "cda736f8-3ec1-4bd0-be4a-5370d1c44160",
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
              "uuid": "a45b85fd-3409-4250-ac29-d7dfc870b3ec",
              "parent_uuid": "cda736f8-3ec1-4bd0-be4a-5370d1c44160",
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
              "uuid": "fef667a0-52ce-4e5f-a6df-b4021dc1acca",
              "parent_uuid": "cda736f8-3ec1-4bd0-be4a-5370d1c44160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "feb39384-6a9c-4b4e-b423-527bd9ee80dc",
                  "parent_uuid": "fef667a0-52ce-4e5f-a6df-b4021dc1acca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2a9d2d1-ceae-4e60-9c1a-8f9213156eb4",
              "parent_uuid": "cda736f8-3ec1-4bd0-be4a-5370d1c44160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b50bb010-fcb1-4f94-a60f-7f7400866a9a",
                  "parent_uuid": "d2a9d2d1-ceae-4e60-9c1a-8f9213156eb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c373d152-2b4c-4c24-8c7e-caa42b2a899a",
              "parent_uuid": "cda736f8-3ec1-4bd0-be4a-5370d1c44160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ba89da5-b284-42bf-90b8-71e8011fa67f",
                  "parent_uuid": "c373d152-2b4c-4c24-8c7e-caa42b2a899a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27be4730-7347-4070-90ed-6383dd6ac1cd",
              "parent_uuid": "cda736f8-3ec1-4bd0-be4a-5370d1c44160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43504529-2162-4fea-937e-801d8361c93f",
                  "parent_uuid": "27be4730-7347-4070-90ed-6383dd6ac1cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "58da5ae4-38d8-406f-8a80-577eb7dbd00f",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79b96e05-f11c-4876-8d00-7dde8a7afeb4",
              "parent_uuid": "58da5ae4-38d8-406f-8a80-577eb7dbd00f",
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
              "uuid": "b2b89db3-32f5-445a-9dd4-14a97c61b041",
              "parent_uuid": "58da5ae4-38d8-406f-8a80-577eb7dbd00f",
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
              "uuid": "f643f18c-cf60-4925-ada5-c1fcc3730133",
              "parent_uuid": "58da5ae4-38d8-406f-8a80-577eb7dbd00f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3be6574-82e9-4551-aa75-9c2d1af50a70",
                  "parent_uuid": "f643f18c-cf60-4925-ada5-c1fcc3730133",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b25aff0d-0e07-4d2c-92af-f56c25554d09",
              "parent_uuid": "58da5ae4-38d8-406f-8a80-577eb7dbd00f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c705bb4-7e65-4f46-9166-e66acedbdc03",
                  "parent_uuid": "b25aff0d-0e07-4d2c-92af-f56c25554d09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "025bd589-641e-4271-ab2d-08da6f552880",
              "parent_uuid": "58da5ae4-38d8-406f-8a80-577eb7dbd00f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebb115e4-f177-4888-9473-baac9d979316",
                  "parent_uuid": "025bd589-641e-4271-ab2d-08da6f552880",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06247e3b-a937-4988-a48f-a9b3b58b783d",
              "parent_uuid": "58da5ae4-38d8-406f-8a80-577eb7dbd00f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8853981a-726a-4272-a52e-74f9eca1cf51",
                  "parent_uuid": "06247e3b-a937-4988-a48f-a9b3b58b783d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de54a9b0-9a25-4151-a1a7-0bed60829fa6",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "478ebd64-7f07-4c06-9c11-0ecebe55931c",
              "parent_uuid": "de54a9b0-9a25-4151-a1a7-0bed60829fa6",
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
              "uuid": "dfd3d2ae-8315-41d1-9242-ec59fb5d9af9",
              "parent_uuid": "de54a9b0-9a25-4151-a1a7-0bed60829fa6",
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
              "uuid": "cd3d5811-6f3a-45a3-95fd-ee5619d22e11",
              "parent_uuid": "de54a9b0-9a25-4151-a1a7-0bed60829fa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2afacfaa-b989-426d-b262-5e0285854d38",
                  "parent_uuid": "cd3d5811-6f3a-45a3-95fd-ee5619d22e11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b3ec06e-183b-4a2d-b181-e252bf3fd06e",
              "parent_uuid": "de54a9b0-9a25-4151-a1a7-0bed60829fa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00f02ddd-1a6f-4e74-99a1-7945495d9ed6",
                  "parent_uuid": "3b3ec06e-183b-4a2d-b181-e252bf3fd06e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "270bdc09-0fc0-4734-bc1c-02e7a7293c97",
              "parent_uuid": "de54a9b0-9a25-4151-a1a7-0bed60829fa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69407873-c603-4ada-ace2-001f6ca4a4b2",
                  "parent_uuid": "270bdc09-0fc0-4734-bc1c-02e7a7293c97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd0811e7-0d1e-4b07-95ef-5c0220521f9d",
              "parent_uuid": "de54a9b0-9a25-4151-a1a7-0bed60829fa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb50aec3-6cbe-4516-85f2-9e3de974753d",
                  "parent_uuid": "cd0811e7-0d1e-4b07-95ef-5c0220521f9d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "934d561b-ec91-4be1-830c-fda1ae1a6f82",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "573041a3-0535-48ad-811d-49218926cb5b",
              "parent_uuid": "934d561b-ec91-4be1-830c-fda1ae1a6f82",
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
              "uuid": "b08c1da2-2f36-4e17-81f1-8ad619194a03",
              "parent_uuid": "934d561b-ec91-4be1-830c-fda1ae1a6f82",
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
              "uuid": "b6f5d638-1b01-47e6-a003-06ee473a6f0c",
              "parent_uuid": "934d561b-ec91-4be1-830c-fda1ae1a6f82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c667035-ae17-40ef-b5dc-0e4c254b126a",
                  "parent_uuid": "b6f5d638-1b01-47e6-a003-06ee473a6f0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1fa7af6-64ad-4077-850d-4910505f16b9",
              "parent_uuid": "934d561b-ec91-4be1-830c-fda1ae1a6f82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40f2937b-3a46-4bee-87fd-fae73a3185fb",
                  "parent_uuid": "d1fa7af6-64ad-4077-850d-4910505f16b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6818a3b6-5018-497d-8762-a0763fcc532f",
              "parent_uuid": "934d561b-ec91-4be1-830c-fda1ae1a6f82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd1b8464-27a9-4364-8cba-27a5fd375cee",
                  "parent_uuid": "6818a3b6-5018-497d-8762-a0763fcc532f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4eac78e-ad9d-40d8-a053-daabaa1fcc03",
              "parent_uuid": "934d561b-ec91-4be1-830c-fda1ae1a6f82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b655faf-4979-4402-8527-8e836096b492",
                  "parent_uuid": "c4eac78e-ad9d-40d8-a053-daabaa1fcc03",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5c48d9b5-4a93-4535-897a-2008ac197002",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c3c2591-5f6d-4aec-94ab-9c00f5a8a8cc",
              "parent_uuid": "5c48d9b5-4a93-4535-897a-2008ac197002",
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
              "uuid": "70f38985-eeb7-4f51-9a4a-4d01efcdb242",
              "parent_uuid": "5c48d9b5-4a93-4535-897a-2008ac197002",
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
              "uuid": "0e46e313-549b-4969-a72a-04d9c7dd68dc",
              "parent_uuid": "5c48d9b5-4a93-4535-897a-2008ac197002",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7f074c5-12ec-4e4c-86e4-0784b9d52300",
                  "parent_uuid": "0e46e313-549b-4969-a72a-04d9c7dd68dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "999d7f84-a8c3-49e8-9543-b26e7246f24a",
              "parent_uuid": "5c48d9b5-4a93-4535-897a-2008ac197002",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d561eb9-0286-406c-9e29-5cc3e23837cc",
                  "parent_uuid": "999d7f84-a8c3-49e8-9543-b26e7246f24a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1d8aee4-e7ea-4fbf-b353-902df9b84396",
              "parent_uuid": "5c48d9b5-4a93-4535-897a-2008ac197002",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6848628-8388-4017-9658-997d7e5972da",
                  "parent_uuid": "e1d8aee4-e7ea-4fbf-b353-902df9b84396",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd3c9079-b3f0-4e4e-9142-0f3071f950fe",
              "parent_uuid": "5c48d9b5-4a93-4535-897a-2008ac197002",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c6e3e44-e2a6-453a-8fad-f088b2be5a2d",
                  "parent_uuid": "dd3c9079-b3f0-4e4e-9142-0f3071f950fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "05ca1104-83a3-48dd-bfe3-02798b6529b9",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8d4a8a0-e10d-4c0b-ab1c-9ae16ce442d6",
              "parent_uuid": "05ca1104-83a3-48dd-bfe3-02798b6529b9",
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
              "uuid": "fc3d5243-bab7-4262-afd8-380e9715739b",
              "parent_uuid": "05ca1104-83a3-48dd-bfe3-02798b6529b9",
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
              "uuid": "130422b1-ab66-4bc7-90ab-2b979e3ad40b",
              "parent_uuid": "05ca1104-83a3-48dd-bfe3-02798b6529b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4da1da9e-ffda-4595-a814-980c80386484",
                  "parent_uuid": "130422b1-ab66-4bc7-90ab-2b979e3ad40b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2142957-4a92-4d87-83ab-eba115a57cbd",
              "parent_uuid": "05ca1104-83a3-48dd-bfe3-02798b6529b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86d8388b-92ce-4185-bfa7-7738e96b008f",
                  "parent_uuid": "b2142957-4a92-4d87-83ab-eba115a57cbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60140232-2268-4f9b-a59f-27fc57ffd687",
              "parent_uuid": "05ca1104-83a3-48dd-bfe3-02798b6529b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85d389b9-ee76-4b70-b6c6-1d5191e96a6c",
                  "parent_uuid": "60140232-2268-4f9b-a59f-27fc57ffd687",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e36526a1-3d37-4e50-bb18-ce00d293065f",
              "parent_uuid": "05ca1104-83a3-48dd-bfe3-02798b6529b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fca4fa80-eed8-4c16-ba94-17cf6dc4b410",
                  "parent_uuid": "e36526a1-3d37-4e50-bb18-ce00d293065f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6a6a460-d65a-44e1-8c0a-914788d84d6d",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9093db4-5d6c-4a6e-bc18-8d6fd78f8e7d",
              "parent_uuid": "e6a6a460-d65a-44e1-8c0a-914788d84d6d",
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
              "uuid": "1f1cb7b8-0efa-4ee3-a428-4fe701a0a5fe",
              "parent_uuid": "e6a6a460-d65a-44e1-8c0a-914788d84d6d",
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
              "uuid": "d4a05f11-f17d-4b2a-a82f-d745ed7b9a5f",
              "parent_uuid": "e6a6a460-d65a-44e1-8c0a-914788d84d6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88da0e64-261d-4836-ae42-6ab3428927f3",
                  "parent_uuid": "d4a05f11-f17d-4b2a-a82f-d745ed7b9a5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62eed805-7589-4e15-bfae-4c9cd585b723",
              "parent_uuid": "e6a6a460-d65a-44e1-8c0a-914788d84d6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7adabc32-cb64-4f4a-8f16-63cdbb3e09fb",
                  "parent_uuid": "62eed805-7589-4e15-bfae-4c9cd585b723",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d64c331-597d-499e-9fc6-9e92c41e0f41",
              "parent_uuid": "e6a6a460-d65a-44e1-8c0a-914788d84d6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "965f202d-0b21-4d89-8abb-fbb55fae7d9a",
                  "parent_uuid": "2d64c331-597d-499e-9fc6-9e92c41e0f41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fec77ca5-ac60-4ca0-ad02-d4868116d45b",
              "parent_uuid": "e6a6a460-d65a-44e1-8c0a-914788d84d6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89e73969-fb4e-468c-aaa5-0095dbda58e1",
                  "parent_uuid": "fec77ca5-ac60-4ca0-ad02-d4868116d45b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2652bb67-dfa5-4290-aecb-64bed7d9cf8c",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a126eb27-f2ae-4bdc-82a2-8c5f8500af48",
              "parent_uuid": "2652bb67-dfa5-4290-aecb-64bed7d9cf8c",
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
              "uuid": "968f1cf7-8874-450f-ba29-2661769f9f12",
              "parent_uuid": "2652bb67-dfa5-4290-aecb-64bed7d9cf8c",
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
              "uuid": "9fd9ba73-3d7e-4ffd-9ce8-c28fded287c0",
              "parent_uuid": "2652bb67-dfa5-4290-aecb-64bed7d9cf8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb5c8dd1-e373-4ac7-bde5-7b7862ef722b",
                  "parent_uuid": "9fd9ba73-3d7e-4ffd-9ce8-c28fded287c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e677e13-926c-4102-b6ae-5688118d46ee",
              "parent_uuid": "2652bb67-dfa5-4290-aecb-64bed7d9cf8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1062a34-f49c-411a-8c24-414e6e8a8bc0",
                  "parent_uuid": "1e677e13-926c-4102-b6ae-5688118d46ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce9bb485-92a9-4a05-9c97-13d1a89f82d5",
              "parent_uuid": "2652bb67-dfa5-4290-aecb-64bed7d9cf8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d7de4d8-4658-45c3-b70d-1854a6f9a03e",
                  "parent_uuid": "ce9bb485-92a9-4a05-9c97-13d1a89f82d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07c3d371-d47a-48f4-8ea8-23e356a5ccac",
              "parent_uuid": "2652bb67-dfa5-4290-aecb-64bed7d9cf8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "745522c2-6da0-4f39-b069-8b354ab768e6",
                  "parent_uuid": "07c3d371-d47a-48f4-8ea8-23e356a5ccac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a1b3f987-d853-4d72-9bbc-0d93d98925ea",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "60e66db1-bdb2-4dff-9d77-3f05cb36d1f9",
              "parent_uuid": "a1b3f987-d853-4d72-9bbc-0d93d98925ea",
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
          "uuid": "e48cc02b-fa4e-43c3-9900-5a32199a30c8",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b337f1b-1fa0-40c4-8bd3-5e61a3819a4d",
              "parent_uuid": "e48cc02b-fa4e-43c3-9900-5a32199a30c8",
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
              "uuid": "11bcbaf5-457c-40ad-9d24-c6eddfd286b8",
              "parent_uuid": "e48cc02b-fa4e-43c3-9900-5a32199a30c8",
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
              "uuid": "8e2f3639-dc86-4fb9-9e94-ac9ab61e9084",
              "parent_uuid": "e48cc02b-fa4e-43c3-9900-5a32199a30c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b13e2b6e-a376-42e1-a838-af1fe2eee93c",
                  "parent_uuid": "8e2f3639-dc86-4fb9-9e94-ac9ab61e9084",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc8ca440-5a20-4d85-b225-5b21ad023d18",
              "parent_uuid": "e48cc02b-fa4e-43c3-9900-5a32199a30c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e98734f-faf1-4a95-9f42-d318dbffaff5",
                  "parent_uuid": "bc8ca440-5a20-4d85-b225-5b21ad023d18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40ba07cb-dfaf-4882-bf09-b74c1235ea3f",
              "parent_uuid": "e48cc02b-fa4e-43c3-9900-5a32199a30c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "327326b0-b822-443c-a9c1-121d2be11293",
                  "parent_uuid": "40ba07cb-dfaf-4882-bf09-b74c1235ea3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "313be60a-cee8-4649-a97f-c7fb0a33557d",
              "parent_uuid": "e48cc02b-fa4e-43c3-9900-5a32199a30c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be74f970-db54-4c3e-aa33-a984ab725e75",
                  "parent_uuid": "313be60a-cee8-4649-a97f-c7fb0a33557d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a176cd6-6a50-4a41-8f0d-bfc656292041",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e3c0d0a-df29-4618-b03d-b519467b93bc",
              "parent_uuid": "2a176cd6-6a50-4a41-8f0d-bfc656292041",
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
              "uuid": "d1ed4296-ab21-482a-959d-24f672299eef",
              "parent_uuid": "2a176cd6-6a50-4a41-8f0d-bfc656292041",
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
              "uuid": "9ce60ce4-3559-420f-8e4e-a9d009f3ffa3",
              "parent_uuid": "2a176cd6-6a50-4a41-8f0d-bfc656292041",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac84cd56-7a3c-4d55-8331-ce8e74825bd2",
                  "parent_uuid": "9ce60ce4-3559-420f-8e4e-a9d009f3ffa3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8e83914-ce78-47fe-bc1a-3974fff6ae95",
              "parent_uuid": "2a176cd6-6a50-4a41-8f0d-bfc656292041",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c4e12be-bc83-425c-861f-a8caa9006718",
                  "parent_uuid": "f8e83914-ce78-47fe-bc1a-3974fff6ae95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7f45d10-ffc9-4a0b-9bea-1032f7be3785",
              "parent_uuid": "2a176cd6-6a50-4a41-8f0d-bfc656292041",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49c5b474-3313-420c-912c-d856b5eeed99",
                  "parent_uuid": "c7f45d10-ffc9-4a0b-9bea-1032f7be3785",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a150352a-2b2c-46ce-bbd9-97e7c9a7aa69",
              "parent_uuid": "2a176cd6-6a50-4a41-8f0d-bfc656292041",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "394fa580-8a36-4e21-9925-467e14f23adc",
                  "parent_uuid": "a150352a-2b2c-46ce-bbd9-97e7c9a7aa69",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "170ba39b-2e35-4076-9316-4e299082e9e7",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "200e6216-e4e6-4cb3-80ad-f2265eb290a9",
              "parent_uuid": "170ba39b-2e35-4076-9316-4e299082e9e7",
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
          "uuid": "1fda63f1-a5be-4520-82af-ffca568da757",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "779d1f5c-5172-48c5-bbde-d932f344a778",
              "parent_uuid": "1fda63f1-a5be-4520-82af-ffca568da757",
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
          "uuid": "f54e0620-56e3-4f33-be8e-fd9c465cd1cc",
          "parent_uuid": "c2c44561-446c-4273-85df-db39132acfc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b844bca8-7824-4986-80b0-970187d3c61e",
              "parent_uuid": "f54e0620-56e3-4f33-be8e-fd9c465cd1cc",
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
                  "uuid": "42e18c2d-917d-417b-894b-202bb89fc072",
                  "parent_uuid": "b844bca8-7824-4986-80b0-970187d3c61e",
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

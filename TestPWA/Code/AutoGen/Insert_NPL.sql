
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
  "uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "5b8f65a9-98e1-4c85-9b72-b662feb8e757",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "ca0ad87d-c336-402e-9b35-21e2123c285a",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "add2033d-dcf8-4173-bea9-f75e4e573700",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "01dc922f-8f2b-4cc4-aad0-2260d3f92f06",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "94042173-b64a-40c5-ba99-0c44a42fe043",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "fa24238c-ff41-43ee-8a75-da2ea77eacf5",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "9ca75704-a17d-4621-ac02-b8d120b9cd03",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
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
      "uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
      "parent_uuid": "207b1587-9bc8-4587-a1fb-cf4123556e77",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "c747dad4-1ce8-409d-8718-5f3a2e9619cf",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "e15f74fc-384b-40fc-8658-9c707fac209a",
              "parent_uuid": "c747dad4-1ce8-409d-8718-5f3a2e9619cf",
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
              "uuid": "694a05cc-b9fa-4331-9d7d-6ab27cf290bd",
              "parent_uuid": "c747dad4-1ce8-409d-8718-5f3a2e9619cf",
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
              "uuid": "9bd0ac99-506d-43c6-9723-8bd8cb20f8cd",
              "parent_uuid": "c747dad4-1ce8-409d-8718-5f3a2e9619cf",
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
              "uuid": "c8547ec0-a051-4a84-b15b-0c2dc81a49a3",
              "parent_uuid": "c747dad4-1ce8-409d-8718-5f3a2e9619cf",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "8"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Notenpufferlager</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "7ba8b447-8947-4032-95df-e42b888439be",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "faede8eb-c665-47b8-b64a-e9eb3f296659",
              "parent_uuid": "7ba8b447-8947-4032-95df-e42b888439be",
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
              "uuid": "6755b885-cd1e-4244-ac7a-caedc5853db6",
              "parent_uuid": "7ba8b447-8947-4032-95df-e42b888439be",
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
              "uuid": "8284b218-8d71-4de0-a8dd-801cd4d08df2",
              "parent_uuid": "7ba8b447-8947-4032-95df-e42b888439be",
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
              "uuid": "b2efb127-7edd-496a-a3f3-1a001eea360d",
              "parent_uuid": "7ba8b447-8947-4032-95df-e42b888439be",
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
          "uuid": "3b3efaf1-154e-4848-93bb-e1548df456be",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec3d9f96-bb73-44de-9423-efbfa47979ec",
              "parent_uuid": "3b3efaf1-154e-4848-93bb-e1548df456be",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b392aef1-2ec2-4f68-b3a5-a89ce9041232",
              "parent_uuid": "3b3efaf1-154e-4848-93bb-e1548df456be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4cm;"
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
              "uuid": "e738cf05-6dc8-4199-b1f0-a640853c2393",
              "parent_uuid": "3b3efaf1-154e-4848-93bb-e1548df456be",
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
              "uuid": "864641b0-5995-4663-9c42-ef79fc273c9a",
              "parent_uuid": "3b3efaf1-154e-4848-93bb-e1548df456be",
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
              "uuid": "45efbccf-3ec2-4a53-ab1f-4097c3d46399",
              "parent_uuid": "3b3efaf1-154e-4848-93bb-e1548df456be",
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
              "uuid": "a0e4d5e3-5884-4b0b-94c5-0040301bf2a1",
              "parent_uuid": "3b3efaf1-154e-4848-93bb-e1548df456be",
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
          "uuid": "95564489-206b-4c07-b0e8-1ba6ce1fd0c2",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8826736c-9874-4184-82d5-af338406fea4",
              "parent_uuid": "95564489-206b-4c07-b0e8-1ba6ce1fd0c2",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Prüfarbeiten / Funktionskontrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "5e43cd34-3978-4965-b2fd-bd712844b9ee",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "77dc9647-ddac-4cf7-a86a-803220077c98",
              "parent_uuid": "5e43cd34-3978-4965-b2fd-bd712844b9ee",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Not-Halt Taster (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d3051dbd-018b-467a-86e7-179cfff7fb35",
              "parent_uuid": "5e43cd34-3978-4965-b2fd-bd712844b9ee",
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
              "uuid": "19f263da-a9b7-4483-a2cb-6ff4e63a8151",
              "parent_uuid": "5e43cd34-3978-4965-b2fd-bd712844b9ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71134e8f-5a2f-400c-b8c2-76ea1a145a5a",
                  "parent_uuid": "19f263da-a9b7-4483-a2cb-6ff4e63a8151",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0376be36-db0f-4bda-afbe-90072b7d3247",
              "parent_uuid": "5e43cd34-3978-4965-b2fd-bd712844b9ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6dfe990-5429-4cb3-823a-9a33cb86e305",
                  "parent_uuid": "0376be36-db0f-4bda-afbe-90072b7d3247",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d8d4602-e325-47e1-afd6-810de9ab9e49",
              "parent_uuid": "5e43cd34-3978-4965-b2fd-bd712844b9ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10b2c20f-0c84-4205-a38b-46fa3c1d0db7",
                  "parent_uuid": "2d8d4602-e325-47e1-afd6-810de9ab9e49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11ace1aa-6805-4355-8021-bfdc5ea57d0a",
              "parent_uuid": "5e43cd34-3978-4965-b2fd-bd712844b9ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8232783f-8222-46b5-9311-9dfd562bc5cc",
                  "parent_uuid": "11ace1aa-6805-4355-8021-bfdc5ea57d0a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ae7a642f-9cb4-4c44-b201-e66b065424d1",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8720e7f-78d7-424f-a82b-fe74e9dc5275",
              "parent_uuid": "ae7a642f-9cb4-4c44-b201-e66b065424d1",
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
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "35467ae4-d9ad-4734-99c8-e91b12751d25",
              "parent_uuid": "ae7a642f-9cb4-4c44-b201-e66b065424d1",
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
              "uuid": "8a12b053-7173-4cc4-9eb4-7c7e94a9a5f0",
              "parent_uuid": "ae7a642f-9cb4-4c44-b201-e66b065424d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aee1a7fb-62c6-4308-9d94-3e859c73e470",
                  "parent_uuid": "8a12b053-7173-4cc4-9eb4-7c7e94a9a5f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f36d74e-a9e2-4b67-a187-bd4797f27c0f",
              "parent_uuid": "ae7a642f-9cb4-4c44-b201-e66b065424d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd84684d-22b7-457f-87bc-d542ebd8efa3",
                  "parent_uuid": "9f36d74e-a9e2-4b67-a187-bd4797f27c0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7fe0681f-52ca-4400-a557-3e9ef9de7899",
              "parent_uuid": "ae7a642f-9cb4-4c44-b201-e66b065424d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f09f5f8-b4ef-4a7a-82ed-3b2527992057",
                  "parent_uuid": "7fe0681f-52ca-4400-a557-3e9ef9de7899",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea1f7bb0-c009-49dd-943c-04308dd66337",
              "parent_uuid": "ae7a642f-9cb4-4c44-b201-e66b065424d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f4b202c-8aed-4028-9ccd-0990f5771854",
                  "parent_uuid": "ea1f7bb0-c009-49dd-943c-04308dd66337",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "20c769b7-2cd7-4a88-bfe3-46a40acd61ba",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81696d73-ad87-428f-b497-198419d6fdb9",
              "parent_uuid": "20c769b7-2cd7-4a88-bfe3-46a40acd61ba",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Funktionstest Brandschutztore bei Wareneingang / Warenausgang / Verarbeitung<br>- Brandschutztor 101 (2x) <br>- Brandschutztor 102 (2x)<br>- Prüfpunkte: Laufverhalten, Endlagen, Abdichtung, Geräusche, Steuerungsanzeige, Abnutzungsescheinungen, </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "00b59cdf-d814-4a03-b121-5e92b030c012",
              "parent_uuid": "20c769b7-2cd7-4a88-bfe3-46a40acd61ba",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d6d6227d-19ac-4167-98e6-6dbc74efa792",
              "parent_uuid": "20c769b7-2cd7-4a88-bfe3-46a40acd61ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e84a0ff6-8486-407c-bbfa-bb3648545f2f",
                  "parent_uuid": "d6d6227d-19ac-4167-98e6-6dbc74efa792",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aae0781f-a494-406a-8071-c17c801f2eb9",
              "parent_uuid": "20c769b7-2cd7-4a88-bfe3-46a40acd61ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c029ebe6-df30-498d-8db5-1fbace83cb02",
                  "parent_uuid": "aae0781f-a494-406a-8071-c17c801f2eb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ca9bf9b-60fb-41cd-b74e-46d3c61f82ab",
              "parent_uuid": "20c769b7-2cd7-4a88-bfe3-46a40acd61ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "466dba43-19f2-4f7c-bad8-0f7b6ef60c05",
                  "parent_uuid": "5ca9bf9b-60fb-41cd-b74e-46d3c61f82ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88b0f27d-6647-41c8-ad9d-9c53148ae4dc",
              "parent_uuid": "20c769b7-2cd7-4a88-bfe3-46a40acd61ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4278bcae-7038-46a1-b2ef-74faa253593f",
                  "parent_uuid": "88b0f27d-6647-41c8-ad9d-9c53148ae4dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "beb8ec11-6afd-4a62-81b1-5d06f26d00a8",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae7fd85a-b906-4bcf-8724-03f24f4b1b37",
              "parent_uuid": "beb8ec11-6afd-4a62-81b1-5d06f26d00a8",
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
              "innerHtml": "\r\n                    <span>Zustandsprüfung <b>IT Infrastruktur</b> gemäss Wartungsdokument <br>\"Service- und Wartungsplan IT Infrastruktur\"</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7771e22e-20b2-4c53-9122-61ce037e1903",
              "parent_uuid": "beb8ec11-6afd-4a62-81b1-5d06f26d00a8",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "afc53cef-027b-4db0-afaa-1285244ab2cd",
              "parent_uuid": "beb8ec11-6afd-4a62-81b1-5d06f26d00a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae5aefb6-8876-4dde-aca1-5a0be4eb58da",
                  "parent_uuid": "afc53cef-027b-4db0-afaa-1285244ab2cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4013bc4a-af44-4a0d-81f4-8ffa150ec6c1",
              "parent_uuid": "beb8ec11-6afd-4a62-81b1-5d06f26d00a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a7a2f64-d15c-46d1-a659-b1656cd17bbc",
                  "parent_uuid": "4013bc4a-af44-4a0d-81f4-8ffa150ec6c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "738b252f-db80-4c05-9c7f-672423cd28f1",
              "parent_uuid": "beb8ec11-6afd-4a62-81b1-5d06f26d00a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1c53eab-dfdb-4285-975a-572473466d53",
                  "parent_uuid": "738b252f-db80-4c05-9c7f-672423cd28f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f822b85-5bc4-4330-a5a4-84df88b9671a",
              "parent_uuid": "beb8ec11-6afd-4a62-81b1-5d06f26d00a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01a00651-3d6f-4ebf-9fd8-51d9f235b0f4",
                  "parent_uuid": "1f822b85-5bc4-4330-a5a4-84df88b9671a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6f5e29ce-8765-4485-b946-c3fc945851c8",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c5a8bcc-0e2b-4980-a011-ee6c73d63cd4",
              "parent_uuid": "6f5e29ce-8765-4485-b946-c3fc945851c8",
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
                  "88"
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
              "innerHtml": "\r\n                    <span><b>Pneumatikzentrale</b> für alle unterschiedlichen Anlagebereiche in Steigzone auf Funktion, genügend Druck, Dichtheit prüfen<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "272d89de-b4fc-4d53-8c59-1a8bed812014",
              "parent_uuid": "6f5e29ce-8765-4485-b946-c3fc945851c8",
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
              "uuid": "b721e827-7b30-4c79-bb0a-643c0ad9a7dc",
              "parent_uuid": "6f5e29ce-8765-4485-b946-c3fc945851c8",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "728ff57a-1429-46b2-82a3-48001b379809",
                  "parent_uuid": "b721e827-7b30-4c79-bb0a-643c0ad9a7dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b37cc03-5f02-44e4-a650-6ca88bc84eaa",
              "parent_uuid": "6f5e29ce-8765-4485-b946-c3fc945851c8",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f63607e-b0a2-4b9e-a7a5-9ed428b34fc9",
                  "parent_uuid": "3b37cc03-5f02-44e4-a650-6ca88bc84eaa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "758eb4af-3618-4c68-8ff4-4af8f8358fca",
              "parent_uuid": "6f5e29ce-8765-4485-b946-c3fc945851c8",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcc5d33e-fff4-4595-98ef-80c4099a7991",
                  "parent_uuid": "758eb4af-3618-4c68-8ff4-4af8f8358fca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f8e143e-d105-4619-8696-203e53e3435e",
              "parent_uuid": "6f5e29ce-8765-4485-b946-c3fc945851c8",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a4d1419-b779-4f08-a7cd-2151d14531d1",
                  "parent_uuid": "9f8e143e-d105-4619-8696-203e53e3435e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b21639a2-afe4-4800-8a6a-4763f1887fb6",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4fff60d5-b992-4de9-9faa-7ed2d1cf737b",
              "parent_uuid": "b21639a2-afe4-4800-8a6a-4763f1887fb6",
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
                  "74"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Rollenantriebe in der <b>Fördertechnik</b> prüfen<br>- Antriebsriemen (Risse, Abnutzung)<br>- Motorrollen (Laufruhe, Leichtgängigkeit, Lagerzustand)<br>- Befestigung (Klipp, Verschraubung)<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f621a6c5-6d9f-4ff6-9aee-55b480cea1ff",
              "parent_uuid": "b21639a2-afe4-4800-8a6a-4763f1887fb6",
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
              "uuid": "3179533f-5527-4b47-9fa6-ee66ee92a737",
              "parent_uuid": "b21639a2-afe4-4800-8a6a-4763f1887fb6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa39bef0-e88f-47ee-abf9-4ac8451cb959",
                  "parent_uuid": "3179533f-5527-4b47-9fa6-ee66ee92a737",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20925110-e21e-4430-8943-f1e6e3437490",
              "parent_uuid": "b21639a2-afe4-4800-8a6a-4763f1887fb6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86914c6f-4945-4d96-bc1d-a2f28af71a95",
                  "parent_uuid": "20925110-e21e-4430-8943-f1e6e3437490",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efb43bce-f95e-45a8-981a-93744a0920e6",
              "parent_uuid": "b21639a2-afe4-4800-8a6a-4763f1887fb6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "882db532-2a92-4d91-8a33-03057d299f10",
                  "parent_uuid": "efb43bce-f95e-45a8-981a-93744a0920e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6187b05-861c-484e-9570-7d699e919b4e",
              "parent_uuid": "b21639a2-afe4-4800-8a6a-4763f1887fb6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b1ece49-ec7a-4523-9888-ca9a75f06cb3",
                  "parent_uuid": "d6187b05-861c-484e-9570-7d699e919b4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f7a22248-7259-4ff6-8e2b-06c327be24d4",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b104ea24-6e2b-42e5-92e8-a3dc84c82f52",
              "parent_uuid": "f7a22248-7259-4ff6-8e2b-06c327be24d4",
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
                  "53"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Hubstopper</b> in der Fördetechnik prüfen<br>- Dichtheit der Ventile<br>- Bewegungsgeschwindigkeit, Endanschlag des Balkens (Pneumatikzylinder)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c25504ca-bf9b-4baa-87ab-dd4508371451",
              "parent_uuid": "f7a22248-7259-4ff6-8e2b-06c327be24d4",
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
              "uuid": "6b409551-063d-434b-aa4e-2347fc139f1b",
              "parent_uuid": "f7a22248-7259-4ff6-8e2b-06c327be24d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62b23cb6-2e24-4509-8c40-bc614e2919d7",
                  "parent_uuid": "6b409551-063d-434b-aa4e-2347fc139f1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d1b2f82-c2b2-4107-b53e-4a6463d7c89d",
              "parent_uuid": "f7a22248-7259-4ff6-8e2b-06c327be24d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b84a9a5-11dd-4584-b277-149310eee08a",
                  "parent_uuid": "1d1b2f82-c2b2-4107-b53e-4a6463d7c89d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a29c8f86-e399-4dde-bc2a-2a827eba692b",
              "parent_uuid": "f7a22248-7259-4ff6-8e2b-06c327be24d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77e4c8fd-34ce-46ce-9d3f-4d290093bb47",
                  "parent_uuid": "a29c8f86-e399-4dde-bc2a-2a827eba692b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0581031d-e06a-418b-90cd-00e5dc5cf3ec",
              "parent_uuid": "f7a22248-7259-4ff6-8e2b-06c327be24d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d307e71b-5165-44ed-8c48-fed4b546fec0",
                  "parent_uuid": "0581031d-e06a-418b-90cd-00e5dc5cf3ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d430e0e7-74b0-4ab7-9005-9293c710d015",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e58fe9e1-2ea7-41b1-88a4-a5b58012378e",
              "parent_uuid": "d430e0e7-74b0-4ab7-9005-9293c710d015",
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
                  "139"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Gurtumsetzer</b> prüfen<br>- Mechanische Spannung der Antriebsriemen beim Schwert (Flachriemen)<br>- Dichtheit der Ventile<br>- Mechanische Bewegung der einzelnen Schwerter (Pneumatikzylinder)<br>- Antriebsketten der Schwerter<br>- Antriebsriemen<br>- Asynchronmotor inkl. Mechanik (Kann manuell per Schütz angesteuert werden)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4ba2fb24-fc8b-4207-8416-5eca8e911328",
              "parent_uuid": "d430e0e7-74b0-4ab7-9005-9293c710d015",
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
              "uuid": "abb63fc3-b652-4eb1-bd47-0a4e4be368a7",
              "parent_uuid": "d430e0e7-74b0-4ab7-9005-9293c710d015",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "707468d8-1917-4c84-ae84-098fd7d1edd5",
                  "parent_uuid": "abb63fc3-b652-4eb1-bd47-0a4e4be368a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf492e2e-c0f6-4ea5-b3f1-b8d346ea521c",
              "parent_uuid": "d430e0e7-74b0-4ab7-9005-9293c710d015",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18db1394-e647-472a-a5dd-808f513d119c",
                  "parent_uuid": "cf492e2e-c0f6-4ea5-b3f1-b8d346ea521c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b948cecd-10e6-4606-91bf-6f31a692850c",
              "parent_uuid": "d430e0e7-74b0-4ab7-9005-9293c710d015",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b38d9ab-3fd9-4021-a377-38b6814e58fc",
                  "parent_uuid": "b948cecd-10e6-4606-91bf-6f31a692850c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d94f3fbe-ec1b-4948-a0f3-b33ebf239b65",
              "parent_uuid": "d430e0e7-74b0-4ab7-9005-9293c710d015",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72522f56-aaeb-45f3-9dcb-d14b70148c64",
                  "parent_uuid": "d94f3fbe-ec1b-4948-a0f3-b33ebf239b65",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "99b62378-141e-407c-b066-8c2737c97abe",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c559a34-0afb-4ff1-acd3-0f90d4622264",
              "parent_uuid": "99b62378-141e-407c-b066-8c2737c97abe",
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
                  "110"
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
              "innerHtml": "\r\n                    <span>Zustand, Funktion, Ausrichtung aller <b>Sensoren</b> auf Reflektoren, Sicherheits-Lichtgitter kontrollieren<br>- Fördertechnik<br>- OSR<br>- Behälterlifte<br>- OSR-Lifte</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "19728da6-37ce-4da4-92c6-59962840406a",
              "parent_uuid": "99b62378-141e-407c-b066-8c2737c97abe",
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
              "uuid": "ae95a8c7-3e84-43d1-a52a-fe6c38f438e8",
              "parent_uuid": "99b62378-141e-407c-b066-8c2737c97abe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5ebcf8a-ff39-459c-9f00-a66851fceb40",
                  "parent_uuid": "ae95a8c7-3e84-43d1-a52a-fe6c38f438e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86442e58-5ede-4bd0-8bc9-6ca1fda07bdf",
              "parent_uuid": "99b62378-141e-407c-b066-8c2737c97abe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "375f98d8-bbd7-462f-8bbb-093756771fd5",
                  "parent_uuid": "86442e58-5ede-4bd0-8bc9-6ca1fda07bdf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f19a6b6d-6af4-4d15-b9e4-9153e2581730",
              "parent_uuid": "99b62378-141e-407c-b066-8c2737c97abe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9811ea73-3ba0-4e7d-ad83-89cdfc0af8d8",
                  "parent_uuid": "f19a6b6d-6af4-4d15-b9e4-9153e2581730",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14f0601f-0eaf-437a-bdd5-b650a8dcde69",
              "parent_uuid": "99b62378-141e-407c-b066-8c2737c97abe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2b4226d-811d-4cbc-bf58-d0fa2c7a0a6a",
                  "parent_uuid": "14f0601f-0eaf-437a-bdd5-b650a8dcde69",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23101d50-3cc8-478d-8d6b-33e4f3c54087",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07da8a2a-8708-44e3-870c-0a5db7224dee",
              "parent_uuid": "23101d50-3cc8-478d-8d6b-33e4f3c54087",
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion des <b>EBG/Shuttleliftes</b> für Shuttletausch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "54ecdef9-39fc-4a97-bd4a-5694700785fb",
              "parent_uuid": "23101d50-3cc8-478d-8d6b-33e4f3c54087",
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
              "uuid": "9209ba43-03ec-45d1-a9bd-0ee8caed4c7b",
              "parent_uuid": "23101d50-3cc8-478d-8d6b-33e4f3c54087",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b8bece7-4e49-4464-8459-e5dbacbf6807",
                  "parent_uuid": "9209ba43-03ec-45d1-a9bd-0ee8caed4c7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f164c687-33d6-483c-b429-49eb30bb7904",
              "parent_uuid": "23101d50-3cc8-478d-8d6b-33e4f3c54087",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b2b733e-07f9-40db-9668-56bca5e20c88",
                  "parent_uuid": "f164c687-33d6-483c-b429-49eb30bb7904",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "503b4fa5-7613-41ee-8cc4-f7713d462a07",
              "parent_uuid": "23101d50-3cc8-478d-8d6b-33e4f3c54087",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4695494e-e987-4691-bd43-c7a4ff5422e3",
                  "parent_uuid": "503b4fa5-7613-41ee-8cc4-f7713d462a07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7407c43b-d717-4fbc-b402-41b9a24aa06c",
              "parent_uuid": "23101d50-3cc8-478d-8d6b-33e4f3c54087",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fad511ac-84c7-450f-a2d1-fc1a3a4a3a5f",
                  "parent_uuid": "7407c43b-d717-4fbc-b402-41b9a24aa06c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5fd8dc97-765d-4f0f-8b39-8b9e661c8709",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d43517d0-67cd-47d9-8463-c1f5f9be713d",
              "parent_uuid": "5fd8dc97-765d-4f0f-8b39-8b9e661c8709",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>OSR-Lifte</b><br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0c047800-279f-4eba-b7c9-36c3117298ef",
              "parent_uuid": "5fd8dc97-765d-4f0f-8b39-8b9e661c8709",
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
              "uuid": "5d5905b8-862f-4481-947c-6482e197f203",
              "parent_uuid": "5fd8dc97-765d-4f0f-8b39-8b9e661c8709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad512f3c-7745-4c2b-90f8-4e8fa58f8740",
                  "parent_uuid": "5d5905b8-862f-4481-947c-6482e197f203",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c54442db-f010-4dc3-bb41-784f439c349b",
              "parent_uuid": "5fd8dc97-765d-4f0f-8b39-8b9e661c8709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e74186e1-af12-4d79-897b-ea0e4df6590d",
                  "parent_uuid": "c54442db-f010-4dc3-bb41-784f439c349b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dcc6ecec-a92b-4bc0-b562-3699cec201df",
              "parent_uuid": "5fd8dc97-765d-4f0f-8b39-8b9e661c8709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7f15e0e-9bf1-49c9-9835-4a4036844d5d",
                  "parent_uuid": "dcc6ecec-a92b-4bc0-b562-3699cec201df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6c5e21f-6a65-40f1-9355-9c566107f2c6",
              "parent_uuid": "5fd8dc97-765d-4f0f-8b39-8b9e661c8709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d22a3128-aac5-4a2c-abe7-724980dc4708",
                  "parent_uuid": "e6c5e21f-6a65-40f1-9355-9c566107f2c6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1be19559-3eab-494d-b570-3237e3a5fa6b",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ee58ecf-0f27-4751-b309-be1c3749de88",
              "parent_uuid": "1be19559-3eab-494d-b570-3237e3a5fa6b",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>Behälterlift/Liftplattform</b><br>- Bewegung Liftplattform (Laufruhe, Vibrationen, Geräusche)<br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "eb45cbb1-fca9-47a6-b42a-443a8d00e733",
              "parent_uuid": "1be19559-3eab-494d-b570-3237e3a5fa6b",
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
              "uuid": "03ca755c-30f3-49b9-b078-f13bfe75d496",
              "parent_uuid": "1be19559-3eab-494d-b570-3237e3a5fa6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8982dd25-f874-4684-ae20-a58e57b7426f",
                  "parent_uuid": "03ca755c-30f3-49b9-b078-f13bfe75d496",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd40920f-3fdc-4d5a-bc17-1d2bd6abf2e4",
              "parent_uuid": "1be19559-3eab-494d-b570-3237e3a5fa6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe4ee5d0-6b4e-487c-a364-fa4a8baaf985",
                  "parent_uuid": "dd40920f-3fdc-4d5a-bc17-1d2bd6abf2e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7afea1a4-ea2a-41df-bf5f-cd369c430852",
              "parent_uuid": "1be19559-3eab-494d-b570-3237e3a5fa6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b60f2f4d-065a-46f8-bd9e-1672b3577316",
                  "parent_uuid": "7afea1a4-ea2a-41df-bf5f-cd369c430852",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e4dba95-c115-4ebd-a6d1-ae62abba3779",
              "parent_uuid": "1be19559-3eab-494d-b570-3237e3a5fa6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf3be40c-f1b5-47ec-8819-aede4523faa8",
                  "parent_uuid": "1e4dba95-c115-4ebd-a6d1-ae62abba3779",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "510a81e3-63d9-4212-897f-94b4f415cc41",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3ca4d1e-3f1c-49c3-a018-ce74e7f43d4c",
              "parent_uuid": "510a81e3-63d9-4212-897f-94b4f415cc41",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Distanzen<br>- Laufräder für Längs- und Querfahrwerk, Seitenführungsrad (Lagerung, Laufruhe)<br>- Teleskoparme, Antriebkette<br>- Drehgeber, Induktivgeber<br>- Gassenfahrt, Quergassenfahrt, Behälterentnahme, Behältereinlagerung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e9d1306e-b51e-4184-af62-93c1233dc7d4",
              "parent_uuid": "510a81e3-63d9-4212-897f-94b4f415cc41",
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
              "uuid": "425c9d47-3c9c-4507-a92f-ca564f7e6776",
              "parent_uuid": "510a81e3-63d9-4212-897f-94b4f415cc41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2766fe8a-2ccc-4fa0-a9b5-7448683798c3",
                  "parent_uuid": "425c9d47-3c9c-4507-a92f-ca564f7e6776",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49d1549e-50d2-4d86-996e-bc5f6e879489",
              "parent_uuid": "510a81e3-63d9-4212-897f-94b4f415cc41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27f745c2-39f9-45f3-af71-c1e72ad7ce1e",
                  "parent_uuid": "49d1549e-50d2-4d86-996e-bc5f6e879489",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e60c4995-823a-449e-a271-4cc104c42ca7",
              "parent_uuid": "510a81e3-63d9-4212-897f-94b4f415cc41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07491798-5abe-44fb-82d3-2045ae860532",
                  "parent_uuid": "e60c4995-823a-449e-a271-4cc104c42ca7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "987808e6-84b3-4d32-85e6-1c7a7cb12564",
              "parent_uuid": "510a81e3-63d9-4212-897f-94b4f415cc41",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "742e604c-3c86-4912-97b4-4edcbe585840",
                  "parent_uuid": "987808e6-84b3-4d32-85e6-1c7a7cb12564",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c6a72c43-dcc2-485a-be25-ef85d4ffafe7",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "92f08140-3962-45b0-a432-03bd28b53c55",
              "parent_uuid": "c6a72c43-dcc2-485a-be25-ef85d4ffafe7",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand und Funktion der <b>Schutzvorrichtung</b> zu den Gassenbereichen<br>- Knapp-Lock<br>- Not-Halt Taster<br>- Schutzzaun, Schutzabdeckung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d8dac206-6a20-410d-a599-e4139db9f2fc",
              "parent_uuid": "c6a72c43-dcc2-485a-be25-ef85d4ffafe7",
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
              "uuid": "3ffe71f6-f0e5-4eee-a635-f22382a65714",
              "parent_uuid": "c6a72c43-dcc2-485a-be25-ef85d4ffafe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47f2f237-a542-46cd-82e2-7e3f9d001b27",
                  "parent_uuid": "3ffe71f6-f0e5-4eee-a635-f22382a65714",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc637344-6c5f-47cb-a761-27d9d09757d9",
              "parent_uuid": "c6a72c43-dcc2-485a-be25-ef85d4ffafe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c55dc7ff-ed41-4a96-bd64-6c52aef2562a",
                  "parent_uuid": "dc637344-6c5f-47cb-a761-27d9d09757d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35c27a87-2179-4a8d-bc6a-aae87a8b45ce",
              "parent_uuid": "c6a72c43-dcc2-485a-be25-ef85d4ffafe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1606a4ce-b3f2-4e46-890a-656b1997da95",
                  "parent_uuid": "35c27a87-2179-4a8d-bc6a-aae87a8b45ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea0c661d-f53e-4614-8bb4-6c81945ac9c2",
              "parent_uuid": "c6a72c43-dcc2-485a-be25-ef85d4ffafe7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7070fba-6bea-4342-8758-8f12add68f3d",
                  "parent_uuid": "ea0c661d-f53e-4614-8bb4-6c81945ac9c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2cce99bd-50ba-41ba-8f71-2ee52f9f981a",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "7722cfae-933a-43f0-b907-a489b566eb8d",
              "parent_uuid": "2cce99bd-50ba-41ba-8f71-2ee52f9f981a",
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "17614dc7-5739-4662-a85b-857bffb5898f",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9f46dc7-07f0-48b4-ae69-a1405c23be48",
              "parent_uuid": "17614dc7-5739-4662-a85b-857bffb5898f",
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
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "d03ef70c-171e-400f-a8d1-be6cabe10866",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71290fd8-573d-4795-8f39-f06d476be0cd",
              "parent_uuid": "d03ef70c-171e-400f-a8d1-be6cabe10866",
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
                  "uuid": "9385227d-87ed-4421-8df9-45162eeb6faf",
                  "parent_uuid": "71290fd8-573d-4795-8f39-f06d476be0cd",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "8622b951-7bfc-4e1f-9267-d73114513a13",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b0e3a0c2-d53d-4821-b129-4d9b62833a4c",
              "parent_uuid": "8622b951-7bfc-4e1f-9267-d73114513a13",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000"
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "7fdbdb48-2721-40c8-bcb2-78d796935564",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8fed29f0-96ba-495f-9991-e5f6d06d6e2f",
              "parent_uuid": "7fdbdb48-2721-40c8-bcb2-78d796935564",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten TK01.01 / .02 / .03</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "d04a577a-67f8-42ba-8642-d16f0c6831f9",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f33d7b17-9a06-4380-8038-01b1de9a65cc",
              "parent_uuid": "d04a577a-67f8-42ba-8642-d16f0c6831f9",
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
                  "109"
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
              "innerHtml": "\r\n                    <span>Reinigung der Fördertechnik<br>- Barcodescanner (mittels trockenem, fusselfreiem Tuch)<br>- Optische Sensoren / Reflektoren (mittels trockenem, fusselfreiem Tuch)<br>- Antriebsriemen<br>- Antriebsrollen<br>- Gurtumsetzer</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c139389c-cbba-4416-a0c0-0d4cb8bedf95",
              "parent_uuid": "d04a577a-67f8-42ba-8642-d16f0c6831f9",
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
              "uuid": "b0997dae-d60e-4159-abb6-57c0380b2669",
              "parent_uuid": "d04a577a-67f8-42ba-8642-d16f0c6831f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2985a20-24ca-48fa-ac83-21ee4e628d8d",
                  "parent_uuid": "b0997dae-d60e-4159-abb6-57c0380b2669",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "199d13b9-0ad0-471c-bce6-332aca20e345",
              "parent_uuid": "d04a577a-67f8-42ba-8642-d16f0c6831f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3835ad2c-aa42-4072-8135-368fab1068e8",
                  "parent_uuid": "199d13b9-0ad0-471c-bce6-332aca20e345",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "095c0b96-5878-4613-9417-d82a727ab009",
              "parent_uuid": "d04a577a-67f8-42ba-8642-d16f0c6831f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbbbad80-00dd-4a9c-8d4c-1f830babb3db",
                  "parent_uuid": "095c0b96-5878-4613-9417-d82a727ab009",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4d06278-3896-4bea-9c35-4a8967d00f54",
              "parent_uuid": "d04a577a-67f8-42ba-8642-d16f0c6831f9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c16d896-c10f-4a2e-87f4-7f4ee0f70b67",
                  "parent_uuid": "a4d06278-3896-4bea-9c35-4a8967d00f54",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1969f644-a0d8-4dd1-86b8-c82baad7217d",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5362e0f8-08b2-44b1-8de7-9250c89ebce9",
              "parent_uuid": "1969f644-a0d8-4dd1-86b8-c82baad7217d",
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
                  "115"
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
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschränke mittels Staubsauger, Filtermattenaustausch<br>- VERW: F01.GB01<br>- WA: F01.GB02<br>- WE: F01.GB03<br>- Steigzone: F01.GB04 / F01.GB05 / F01.1 / F01.2</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2227782f-e359-4ecb-b746-8b70156403ed",
              "parent_uuid": "1969f644-a0d8-4dd1-86b8-c82baad7217d",
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
              "uuid": "5e18e62c-831f-44cf-aaf2-760e05056db0",
              "parent_uuid": "1969f644-a0d8-4dd1-86b8-c82baad7217d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82e53eeb-ab59-45dd-96d6-78ff030cd8b8",
                  "parent_uuid": "5e18e62c-831f-44cf-aaf2-760e05056db0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d037d1f4-b4af-4c74-8e97-d1da13b12c8a",
              "parent_uuid": "1969f644-a0d8-4dd1-86b8-c82baad7217d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c87b52d-894c-484f-8106-97b808e15afc",
                  "parent_uuid": "d037d1f4-b4af-4c74-8e97-d1da13b12c8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f14f91f-a051-4a3f-be33-bcda371a0642",
              "parent_uuid": "1969f644-a0d8-4dd1-86b8-c82baad7217d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06edaa40-6eb5-4084-9858-adefcf7462a1",
                  "parent_uuid": "7f14f91f-a051-4a3f-be33-bcda371a0642",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5287c295-e025-451f-a1ee-78554a789f7c",
              "parent_uuid": "1969f644-a0d8-4dd1-86b8-c82baad7217d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80764901-2d39-4df7-a29f-b4107e1a4be9",
                  "parent_uuid": "5287c295-e025-451f-a1ee-78554a789f7c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "54a61e34-3379-4364-8ca3-3b2137c89e77",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "662517ae-47d1-49ea-a8ae-44c6a11fcf43",
              "parent_uuid": "54a61e34-3379-4364-8ca3-3b2137c89e77",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Brandschutztore (Stöbich)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1e5e6da4-c227-48e5-9347-b6fef9044b8f",
              "parent_uuid": "54a61e34-3379-4364-8ca3-3b2137c89e77",
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
              "uuid": "f61a4e1c-75c6-4805-a4bc-7848169bf0d7",
              "parent_uuid": "54a61e34-3379-4364-8ca3-3b2137c89e77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1c7ad4f-93da-4905-b684-7ea42cdc0799",
                  "parent_uuid": "f61a4e1c-75c6-4805-a4bc-7848169bf0d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b757c8c1-ce98-4013-a66b-72cbbaf4012f",
              "parent_uuid": "54a61e34-3379-4364-8ca3-3b2137c89e77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8106ef30-9270-48a5-8069-fa8419ed71d0",
                  "parent_uuid": "b757c8c1-ce98-4013-a66b-72cbbaf4012f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20592390-fa08-4920-bd2f-ec5fad736803",
              "parent_uuid": "54a61e34-3379-4364-8ca3-3b2137c89e77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fc7e3fe-7d96-4cb6-83ee-ef3e18cf0e0d",
                  "parent_uuid": "20592390-fa08-4920-bd2f-ec5fad736803",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "344b79bd-54c3-4cee-a2ee-796e2f11bf88",
              "parent_uuid": "54a61e34-3379-4364-8ca3-3b2137c89e77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec7b0336-796b-4ef4-a167-ffcc5c173ec7",
                  "parent_uuid": "344b79bd-54c3-4cee-a2ee-796e2f11bf88",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f37d1dbc-87c9-4862-bcb8-5246ba3987a2",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "348761c6-cd1a-4358-82d2-b292343e1fe6",
              "parent_uuid": "f37d1dbc-87c9-4862-bcb8-5246ba3987a2",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Tresorschieber (Hügli)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "65a7c5fc-557a-4bfb-bf70-a32fe1dfb41a",
              "parent_uuid": "f37d1dbc-87c9-4862-bcb8-5246ba3987a2",
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
              "uuid": "4d4a43cc-fdc4-4aa2-ad59-c6b707efa940",
              "parent_uuid": "f37d1dbc-87c9-4862-bcb8-5246ba3987a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52b84d67-7e77-4f07-adce-61e6a79d8f2a",
                  "parent_uuid": "4d4a43cc-fdc4-4aa2-ad59-c6b707efa940",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39c72845-e1a6-4492-94ea-cd330844e6b5",
              "parent_uuid": "f37d1dbc-87c9-4862-bcb8-5246ba3987a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f0adf57-d430-461e-8bb7-e4b851ea0877",
                  "parent_uuid": "39c72845-e1a6-4492-94ea-cd330844e6b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0452bf9-0e56-422e-845b-04a121923060",
              "parent_uuid": "f37d1dbc-87c9-4862-bcb8-5246ba3987a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28a8d3ea-f36a-4620-82d0-8d4c17db77f5",
                  "parent_uuid": "a0452bf9-0e56-422e-845b-04a121923060",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d994a0f-1777-4632-9a09-35440374a685",
              "parent_uuid": "f37d1dbc-87c9-4862-bcb8-5246ba3987a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c6e2653-7ad9-4d6b-804c-b3bad699d09b",
                  "parent_uuid": "8d994a0f-1777-4632-9a09-35440374a685",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8aa9bc1a-aeb8-4ddb-a158-7bf64ab0a32c",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b9dda497-38a2-4873-8248-e9ae6d2f9806",
              "parent_uuid": "8aa9bc1a-aeb8-4ddb-a158-7bf64ab0a32c",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten OSR U30</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "e184938c-2a54-4026-84ad-f42c779fcbd5",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79290471-d1bc-4aff-bcb1-a29f128fea85",
              "parent_uuid": "e184938c-2a54-4026-84ad-f42c779fcbd5",
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
              "innerHtml": "\r\n                    <span>Reinigung <b>dezentraler Steuerschränke</b> mittels Staubsauger, Filtermattenaustausch<br>- SH01.04+BHLF1<br>- SH01.01+F1<br>- SH01.01+SUV01<br>- SH01.02+SUV01<br>- SH01.03+SUV01<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cc60996c-2834-4c19-b86d-b06d106bba04",
              "parent_uuid": "e184938c-2a54-4026-84ad-f42c779fcbd5",
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
              "uuid": "1c3f73c4-f3bf-4430-8cfa-546a886485d8",
              "parent_uuid": "e184938c-2a54-4026-84ad-f42c779fcbd5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edefcf03-bb08-4868-91b1-efa57ef9462f",
                  "parent_uuid": "1c3f73c4-f3bf-4430-8cfa-546a886485d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72a6899a-e13f-4423-8937-23971c75545b",
              "parent_uuid": "e184938c-2a54-4026-84ad-f42c779fcbd5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ec51350-d1b4-4d31-8ad9-e865f4f34e43",
                  "parent_uuid": "72a6899a-e13f-4423-8937-23971c75545b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a5ff6c7-7c38-4d6a-92bc-7bbfc5c577d6",
              "parent_uuid": "e184938c-2a54-4026-84ad-f42c779fcbd5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d97842c-4959-404b-9a71-fe2a691ea4b5",
                  "parent_uuid": "0a5ff6c7-7c38-4d6a-92bc-7bbfc5c577d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6ad01d0-0283-4ede-9023-2acd9b5dd628",
              "parent_uuid": "e184938c-2a54-4026-84ad-f42c779fcbd5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ead53f31-c6ee-4252-bfe2-49be100bbfc6",
                  "parent_uuid": "c6ad01d0-0283-4ede-9023-2acd9b5dd628",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3cd535fc-840b-4f03-bf16-6f311bbe4bf6",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c7744eb-c0fa-45f4-b14e-b15aff451e77",
              "parent_uuid": "3cd535fc-840b-4f03-bf16-6f311bbe4bf6",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten in den <b>Gassenbereichen</b><br>- Knapp-Lock<br>- Quergangüberwachungssensoren<br>- Reflektorfolien<br>- Fahrprofil<br>- Stromschienen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f799bc6a-47cf-400b-88c5-81cac3a5af44",
              "parent_uuid": "3cd535fc-840b-4f03-bf16-6f311bbe4bf6",
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
              "uuid": "4ae1a111-8ef5-4af2-ad2c-d6feea2de538",
              "parent_uuid": "3cd535fc-840b-4f03-bf16-6f311bbe4bf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e04f0213-99a3-44aa-aa8b-5e2f3efe1def",
                  "parent_uuid": "4ae1a111-8ef5-4af2-ad2c-d6feea2de538",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2f4eeaf-4f4c-4b5a-aed0-6709884ae995",
              "parent_uuid": "3cd535fc-840b-4f03-bf16-6f311bbe4bf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64f70f8f-458f-45a6-9d44-fdd37111fbaa",
                  "parent_uuid": "d2f4eeaf-4f4c-4b5a-aed0-6709884ae995",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f453c4d-fe25-45f6-8a04-12598af51940",
              "parent_uuid": "3cd535fc-840b-4f03-bf16-6f311bbe4bf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd5a409b-2cf1-48ee-9e62-e8b298453272",
                  "parent_uuid": "0f453c4d-fe25-45f6-8a04-12598af51940",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f8ff7d0-8bf8-4523-a84a-562d8689a234",
              "parent_uuid": "3cd535fc-840b-4f03-bf16-6f311bbe4bf6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53e3f585-1061-426d-b4ad-9c71ac07f467",
                  "parent_uuid": "7f8ff7d0-8bf8-4523-a84a-562d8689a234",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9fe28159-084c-404c-b7be-f5bc2dc80db1",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c13fa41e-dba8-48c3-ab98-44362f16ac25",
              "parent_uuid": "9fe28159-084c-404c-b7be-f5bc2dc80db1",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten im <b>OSR Shuttle-Lift Zwischenpuffer</b><br>- Optische Sensoren, Reflektoren<br>- Gabellichtschranke<br>- Sicherheitslichtgitter<br>- Keilrippenriemen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1e84c6dd-cd94-4b25-9086-71738486a2c9",
              "parent_uuid": "9fe28159-084c-404c-b7be-f5bc2dc80db1",
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
              "uuid": "a7bb8523-83f7-42fa-872d-97c91e8a8356",
              "parent_uuid": "9fe28159-084c-404c-b7be-f5bc2dc80db1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "facbae18-88ce-4884-9866-aa9d6e49452b",
                  "parent_uuid": "a7bb8523-83f7-42fa-872d-97c91e8a8356",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2968a5c2-4a22-4b9b-be39-cb0360661f03",
              "parent_uuid": "9fe28159-084c-404c-b7be-f5bc2dc80db1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1963f298-e953-4ceb-8e5d-1ea9196078e3",
                  "parent_uuid": "2968a5c2-4a22-4b9b-be39-cb0360661f03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e424bd58-788c-467f-b964-2cdd1c3a01f9",
              "parent_uuid": "9fe28159-084c-404c-b7be-f5bc2dc80db1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa467ae7-9a7b-4d4b-85d2-ee14f6a97d30",
                  "parent_uuid": "e424bd58-788c-467f-b964-2cdd1c3a01f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ca90b84-651a-41f5-8af0-84adc041fe5b",
              "parent_uuid": "9fe28159-084c-404c-b7be-f5bc2dc80db1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "595905a7-09cf-4828-9995-b3027dc80404",
                  "parent_uuid": "7ca90b84-651a-41f5-8af0-84adc041fe5b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f9c92cfd-69f1-4462-bee2-b411690c1c40",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b0e84e6-49b4-45e5-90de-a699dc7a1f50",
              "parent_uuid": "f9c92cfd-69f1-4462-bee2-b411690c1c40",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Reflektoren<br>- Gleitleiste, Schleifer, Laufräder<br>- LED-Steifen, Shuttlegehäuse<br>- Teleskoparme, Antriebkette</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8d51d835-10c5-4d46-b42c-2b95962b0654",
              "parent_uuid": "f9c92cfd-69f1-4462-bee2-b411690c1c40",
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
              "uuid": "b2f66e91-c5ed-4e04-b084-3aa1cee630b6",
              "parent_uuid": "f9c92cfd-69f1-4462-bee2-b411690c1c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c69b9306-3259-4df3-b07e-0072b1069070",
                  "parent_uuid": "b2f66e91-c5ed-4e04-b084-3aa1cee630b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14f98dd6-b804-45a4-a190-62ff1e669b49",
              "parent_uuid": "f9c92cfd-69f1-4462-bee2-b411690c1c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da9fb83b-9e98-48b0-9dc1-a7c3ef2499e7",
                  "parent_uuid": "14f98dd6-b804-45a4-a190-62ff1e669b49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e09c37c-a0b2-49dd-b6da-1491a656bc62",
              "parent_uuid": "f9c92cfd-69f1-4462-bee2-b411690c1c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17b00852-d27e-4b53-9246-e0fbbd7935e7",
                  "parent_uuid": "9e09c37c-a0b2-49dd-b6da-1491a656bc62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85c57e2b-4c8e-4c64-a0ef-ae49fd577471",
              "parent_uuid": "f9c92cfd-69f1-4462-bee2-b411690c1c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eae59fef-aeca-4069-8370-f6896c2f683e",
                  "parent_uuid": "85c57e2b-4c8e-4c64-a0ef-ae49fd577471",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "df4482ea-1ec0-417c-9c5b-13b5bd181210",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98220c8b-10e6-483c-9fa7-0c2bf5745955",
              "parent_uuid": "df4482ea-1ec0-417c-9c5b-13b5bd181210",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "473e4156-0ee9-460f-a554-25253a3a7c55",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ceaab132-d636-467c-abef-f4b69a96eb11",
              "parent_uuid": "473e4156-0ee9-460f-a554-25253a3a7c55",
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
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "088cae66-1f65-452c-b4b4-5ab3b86a6a49",
          "parent_uuid": "d3c41617-6526-41ef-a842-9769f13d60da",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4842d5f5-7a67-4f2b-9bd7-75a86c60cc27",
              "parent_uuid": "088cae66-1f65-452c-b4b4-5ab3b86a6a49",
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
                  "uuid": "6d12f9b8-812c-4232-9193-eb9a2df112d1",
                  "parent_uuid": "4842d5f5-7a67-4f2b-9bd7-75a86c60cc27",
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
          "sort": 34,
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
    ,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS cl_uid 
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
		,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '698EA23D-485A-4CEE-9B06-2E130A3A5626'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


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
  "uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
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
      "uuid": "52357fb8-718a-4e82-89f4-66ac7c5b6ea7",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
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
      "uuid": "4a3eddd9-b168-4cff-8041-d3405a7e122a",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
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
      "uuid": "cdf5cb02-6635-4e35-a895-a193fde54a4a",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
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
      "uuid": "014accd3-7153-4bdb-8b39-f69b818e229b",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "69"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "ca75a411-27ab-4d37-a7af-fa6847b1e0fe",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "5c01f565-3534-4b18-a544-1ab14e0d619a",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
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
      "uuid": "7645889a-8f3a-4be1-9649-3cfa49d83c31",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
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
      "uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
      "parent_uuid": "9ffdb9ef-6239-4682-ad10-abe6ebf29020",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "3067937b-fb47-49e7-bb93-1da97503fa44",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a63c63b4-9dd0-4998-9798-5234ef3d39a9",
              "parent_uuid": "3067937b-fb47-49e7-bb93-1da97503fa44",
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2f6b6ba9-8890-4bd5-b9ce-bdcfff3b76ec",
              "parent_uuid": "3067937b-fb47-49e7-bb93-1da97503fa44",
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
              "uuid": "f961e4d9-dc58-43a1-81ac-967675519dec",
              "parent_uuid": "3067937b-fb47-49e7-bb93-1da97503fa44",
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
              "uuid": "3883ead4-b01e-4836-9470-f3eb778e4cf1",
              "parent_uuid": "3067937b-fb47-49e7-bb93-1da97503fa44",
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
              "innerHtml": "<span>Bargeldgewerk: Münzinspektions- und Sortieranlage</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "3e255b02-75dc-42e3-b817-d04ba9a7db5b",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "57f55570-bd81-4e13-abf0-d33ec8ad1b50",
              "parent_uuid": "3e255b02-75dc-42e3-b817-d04ba9a7db5b",
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
              "uuid": "e2775701-d0f2-40df-b0a4-9572e73f851f",
              "parent_uuid": "3e255b02-75dc-42e3-b817-d04ba9a7db5b",
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
              "uuid": "c802c570-3a15-4aed-bd17-416d2781b902",
              "parent_uuid": "3e255b02-75dc-42e3-b817-d04ba9a7db5b",
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
              "uuid": "bd10e4c7-44ee-4b69-9d7f-9862bd36cc35",
              "parent_uuid": "3e255b02-75dc-42e3-b817-d04ba9a7db5b",
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
          "uuid": "94205276-e34c-42fb-8dde-4df2eab0e578",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "064ce4e1-98c1-4006-9e6b-bfbb1a77d5fe",
              "parent_uuid": "94205276-e34c-42fb-8dde-4df2eab0e578",
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
                  "left"
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
              "uuid": "4d9541f1-7e41-4c2a-b738-6dea697f664c",
              "parent_uuid": "94205276-e34c-42fb-8dde-4df2eab0e578",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6c5bb6d6-8565-4eb3-bd03-0aa9cbea930a",
              "parent_uuid": "94205276-e34c-42fb-8dde-4df2eab0e578",
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
              "uuid": "2e83d8ac-d1b3-4351-b005-8933584f9101",
              "parent_uuid": "94205276-e34c-42fb-8dde-4df2eab0e578",
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
              "uuid": "4eba377a-c58c-437a-b301-5eb907ddf0e7",
              "parent_uuid": "94205276-e34c-42fb-8dde-4df2eab0e578",
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
              "uuid": "deb576a4-568d-4ed5-9396-6da5fbe3fef7",
              "parent_uuid": "94205276-e34c-42fb-8dde-4df2eab0e578",
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
          "uuid": "f3756b96-13e5-4ddf-8aa4-ac48e236c20b",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "631b60f2-95b6-4ec5-aa22-2a21c3d947eb",
              "parent_uuid": "f3756b96-13e5-4ddf-8aa4-ac48e236c20b",
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
          "uuid": "71ded083-8f67-44fb-8387-c74518e61ce9",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad7b026d-3e09-42ca-8262-78536a172ced",
              "parent_uuid": "71ded083-8f67-44fb-8387-c74518e61ce9",
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
              "uuid": "ac056f95-4887-4495-8cfd-3f31185b6807",
              "parent_uuid": "71ded083-8f67-44fb-8387-c74518e61ce9",
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
              "uuid": "a01ada02-bd27-45eb-9a41-a8b594009512",
              "parent_uuid": "71ded083-8f67-44fb-8387-c74518e61ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc5663bd-defd-4f38-9165-45b4d3c0be5a",
                  "parent_uuid": "a01ada02-bd27-45eb-9a41-a8b594009512",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "226208f5-a10c-42f4-bdfa-207740fd894c",
              "parent_uuid": "71ded083-8f67-44fb-8387-c74518e61ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0ac1b15-4951-4658-882e-fe68e9e2c455",
                  "parent_uuid": "226208f5-a10c-42f4-bdfa-207740fd894c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60c5bcac-e0f3-40ac-a12d-90c9dbe28c0f",
              "parent_uuid": "71ded083-8f67-44fb-8387-c74518e61ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1e1a199-1740-45f6-8c11-8edc4d62692f",
                  "parent_uuid": "60c5bcac-e0f3-40ac-a12d-90c9dbe28c0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd64ddcf-76cb-4f75-bf87-0faf5f229acd",
              "parent_uuid": "71ded083-8f67-44fb-8387-c74518e61ce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e5e2e9c-7ce1-468c-a298-be594a3f153a",
                  "parent_uuid": "fd64ddcf-76cb-4f75-bf87-0faf5f229acd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "92bf8490-2c6a-4e22-959e-7f046d75210b",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fe346875-1a0e-4d4a-ab7e-5c237ce4dce8",
              "parent_uuid": "92bf8490-2c6a-4e22-959e-7f046d75210b",
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
                  "34"
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
              "innerHtml": "\r\n                    <span>Alle Transportbänder auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9df04092-1a41-44fa-8d79-859ca864e4c0",
              "parent_uuid": "92bf8490-2c6a-4e22-959e-7f046d75210b",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "99a75a79-79f1-41ad-9b9c-834dd11a4955",
              "parent_uuid": "92bf8490-2c6a-4e22-959e-7f046d75210b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3e23e05-77ee-4d34-8c35-08f27676b100",
                  "parent_uuid": "99a75a79-79f1-41ad-9b9c-834dd11a4955",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "971616e1-5660-4fcc-a19c-150694cb9a72",
              "parent_uuid": "92bf8490-2c6a-4e22-959e-7f046d75210b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51505188-355e-4929-9642-ccefd50b7229",
                  "parent_uuid": "971616e1-5660-4fcc-a19c-150694cb9a72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b486bfa7-8f4c-482e-a2cb-fcb8f7358b02",
              "parent_uuid": "92bf8490-2c6a-4e22-959e-7f046d75210b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c64a2d2-6643-4c71-bb12-540a18ae642e",
                  "parent_uuid": "b486bfa7-8f4c-482e-a2cb-fcb8f7358b02",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed53d0d5-a821-4c57-aa3c-a86697d097d5",
              "parent_uuid": "92bf8490-2c6a-4e22-959e-7f046d75210b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a2e5b82-d50b-4820-91e3-285389f3bf7e",
                  "parent_uuid": "ed53d0d5-a821-4c57-aa3c-a86697d097d5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0cb552e2-56c9-4616-8090-9183822636c2",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c4abeb0d-ea0b-4bf4-89d8-f3c036b23aa9",
              "parent_uuid": "0cb552e2-56c9-4616-8090-9183822636c2",
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
                  "35"
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
              "innerHtml": "\r\n                    <span>Prüfen Sie alle bewegliche und schwingende Teile auf lose oder fehlende Schrauben.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cc60f10b-e753-4c68-8066-37eb695dfea5",
              "parent_uuid": "0cb552e2-56c9-4616-8090-9183822636c2",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6851e5cf-fbe2-46e5-bcc3-990865caa1e9",
              "parent_uuid": "0cb552e2-56c9-4616-8090-9183822636c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3f147e9-cfcd-446a-beea-8fff87506a9e",
                  "parent_uuid": "6851e5cf-fbe2-46e5-bcc3-990865caa1e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b087907-255a-489c-880f-ea117cd1b4e4",
              "parent_uuid": "0cb552e2-56c9-4616-8090-9183822636c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f86cf137-e603-4c6b-ba5b-9dc2001c80ea",
                  "parent_uuid": "4b087907-255a-489c-880f-ea117cd1b4e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9561a129-2310-4a37-b524-139803144c00",
              "parent_uuid": "0cb552e2-56c9-4616-8090-9183822636c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3354b73f-ac8a-4516-9932-fadf5b9e815d",
                  "parent_uuid": "9561a129-2310-4a37-b524-139803144c00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3293781d-526e-4d5a-b73b-67bd6ce594cc",
              "parent_uuid": "0cb552e2-56c9-4616-8090-9183822636c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebe45333-0791-4bc0-9487-eaf36f646461",
                  "parent_uuid": "3293781d-526e-4d5a-b73b-67bd6ce594cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f776f3b8-be82-4f24-b5c3-0d23f1ab3ae1",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51d57a2e-1bab-4651-83c2-27d0cfb6a3c2",
              "parent_uuid": "f776f3b8-be82-4f24-b5c3-0d23f1ab3ae1",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5f43105e-6c51-45c6-ab6f-4edfe3477f5b",
              "parent_uuid": "f776f3b8-be82-4f24-b5c3-0d23f1ab3ae1",
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
              "uuid": "bc4c537a-5a5f-4b02-815b-fdc419b1dff8",
              "parent_uuid": "f776f3b8-be82-4f24-b5c3-0d23f1ab3ae1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56b987e2-65a3-46c2-bd8c-980b642f548a",
                  "parent_uuid": "bc4c537a-5a5f-4b02-815b-fdc419b1dff8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acbed08e-220a-42b9-b614-54c577237b40",
              "parent_uuid": "f776f3b8-be82-4f24-b5c3-0d23f1ab3ae1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a759fa42-d25e-4675-9449-c557ce3ee939",
                  "parent_uuid": "acbed08e-220a-42b9-b614-54c577237b40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff629761-47c0-471f-8759-2c9c9cec244b",
              "parent_uuid": "f776f3b8-be82-4f24-b5c3-0d23f1ab3ae1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2c6c376-4a96-401d-b9b2-91d67d6846e1",
                  "parent_uuid": "ff629761-47c0-471f-8759-2c9c9cec244b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86592b37-dd1c-4728-9d0a-9edccf79ea02",
              "parent_uuid": "f776f3b8-be82-4f24-b5c3-0d23f1ab3ae1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "930e4d57-d292-4fd9-8538-5e0aa0f0344c",
                  "parent_uuid": "86592b37-dd1c-4728-9d0a-9edccf79ea02",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ff1ff00e-9b7a-43da-9dc5-67999023bd48",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cc85967c-d186-4838-a992-e7ceac3f5757",
              "parent_uuid": "ff1ff00e-9b7a-43da-9dc5-67999023bd48",
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "4c7587e4-3b66-4dad-93ac-1359110f742e",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09265624-0e14-450a-a97d-38f6c523b90a",
              "parent_uuid": "4c7587e4-3b66-4dad-93ac-1359110f742e",
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
              "innerHtml": "\r\n                    <span><b>Gesamte Anlage reinigen:</b><br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ba6ed632-b001-42b0-9b97-3a34cb4ada9d",
              "parent_uuid": "4c7587e4-3b66-4dad-93ac-1359110f742e",
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
              "innerHtml": "\r\n                    <span>W</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d4a73c56-1eb2-45fc-ad0c-dddc14e01a24",
              "parent_uuid": "4c7587e4-3b66-4dad-93ac-1359110f742e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcbbb9d8-4dcd-4fb3-8ba0-a6bbbcae2d1e",
                  "parent_uuid": "d4a73c56-1eb2-45fc-ad0c-dddc14e01a24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a7ff4b3-3d00-4cb8-8433-3f82da5c9655",
              "parent_uuid": "4c7587e4-3b66-4dad-93ac-1359110f742e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f70b3085-ca7a-435d-b63b-b013a54a2f04",
                  "parent_uuid": "9a7ff4b3-3d00-4cb8-8433-3f82da5c9655",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ece8f2fd-e0db-49c8-9cd1-ba28fb132f4a",
              "parent_uuid": "4c7587e4-3b66-4dad-93ac-1359110f742e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f407b4d-3735-499f-a235-c500222f9c79",
                  "parent_uuid": "ece8f2fd-e0db-49c8-9cd1-ba28fb132f4a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c80fbbd-1d97-4f9f-b127-435f20c63aea",
              "parent_uuid": "4c7587e4-3b66-4dad-93ac-1359110f742e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21bb49e9-8749-4254-ba36-3b54522993b9",
                  "parent_uuid": "0c80fbbd-1d97-4f9f-b127-435f20c63aea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e347026f-ae84-4f21-85a1-41fc30968623",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1df227f-7de6-4240-bf9d-d8a800bb1610",
              "parent_uuid": "e347026f-ae84-4f21-85a1-41fc30968623",
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
              "innerHtml": "\r\n                    <span>Festsitzende Münzen in der Maschine überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "05426684-b07a-41a9-8b35-9f1435bcf95f",
              "parent_uuid": "e347026f-ae84-4f21-85a1-41fc30968623",
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
              "uuid": "a831c328-93fa-4b4f-bff6-52a98430f8d5",
              "parent_uuid": "e347026f-ae84-4f21-85a1-41fc30968623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77df1bc1-4fda-45c3-92f3-347fcf049da2",
                  "parent_uuid": "a831c328-93fa-4b4f-bff6-52a98430f8d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3bd27f4f-7157-4f72-9d87-10940b77ba41",
              "parent_uuid": "e347026f-ae84-4f21-85a1-41fc30968623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0fa73ec-0cfc-48ee-b877-661120626bce",
                  "parent_uuid": "3bd27f4f-7157-4f72-9d87-10940b77ba41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0033e18f-983b-43a6-8f88-9eb70237827f",
              "parent_uuid": "e347026f-ae84-4f21-85a1-41fc30968623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4280136-5338-47ae-94c4-590d70563228",
                  "parent_uuid": "0033e18f-983b-43a6-8f88-9eb70237827f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a18b663-bdb7-4eb2-826a-aa14f2afed02",
              "parent_uuid": "e347026f-ae84-4f21-85a1-41fc30968623",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93dd050f-d314-4130-b752-6f7563949a98",
                  "parent_uuid": "1a18b663-bdb7-4eb2-826a-aa14f2afed02",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cd1de36a-575a-4595-8478-2f8db340e251",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07984bf1-49f9-4ee6-83f1-0223d3c77fc9",
              "parent_uuid": "cd1de36a-575a-4595-8478-2f8db340e251",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Sichtfenster reinigen mit lauwarmes Wasser sowie ein wenig Spülmittel aus. <br>Verwenden dabei ein Mikrofasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fb701a8b-a0e9-4d74-bf2b-d18b1ea7bc12",
              "parent_uuid": "cd1de36a-575a-4595-8478-2f8db340e251",
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
              "uuid": "a40fea9f-d2f7-4bdf-ac49-840efbdad2a2",
              "parent_uuid": "cd1de36a-575a-4595-8478-2f8db340e251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1640888d-94db-4708-936c-926a01891ce7",
                  "parent_uuid": "a40fea9f-d2f7-4bdf-ac49-840efbdad2a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad324e8d-de8b-451f-ab68-5bf12a689c6e",
              "parent_uuid": "cd1de36a-575a-4595-8478-2f8db340e251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea807809-3e3f-4334-b9d4-255dec1560f8",
                  "parent_uuid": "ad324e8d-de8b-451f-ab68-5bf12a689c6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7eb075cd-2b6e-4a24-b948-6fa3c146c018",
              "parent_uuid": "cd1de36a-575a-4595-8478-2f8db340e251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b3c64fd-01bb-4234-acc0-1fdf1f8d06f0",
                  "parent_uuid": "7eb075cd-2b6e-4a24-b948-6fa3c146c018",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3283459-6179-4fc5-acb3-b56df0bafa80",
              "parent_uuid": "cd1de36a-575a-4595-8478-2f8db340e251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d035fc2a-b705-48a6-9702-b3ff37ed74ef",
                  "parent_uuid": "a3283459-6179-4fc5-acb3-b56df0bafa80",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd3cb128-db4a-49fe-8aa0-21906d411fd1",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fe97cfb-7949-44ba-b203-12700b8e50e3",
              "parent_uuid": "fd3cb128-db4a-49fe-8aa0-21906d411fd1",
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
              "innerHtml": "\r\n                    <span>Not-Aus-Taster, Kontrolllampen und Anzeigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0f7f466b-baeb-45b4-bd23-904e1c99c9bb",
              "parent_uuid": "fd3cb128-db4a-49fe-8aa0-21906d411fd1",
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
              "uuid": "45bdf627-f9f8-4b54-a803-c45a1ccde13a",
              "parent_uuid": "fd3cb128-db4a-49fe-8aa0-21906d411fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88e823be-421f-488e-be03-6b35876b6e63",
                  "parent_uuid": "45bdf627-f9f8-4b54-a803-c45a1ccde13a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d97cd58-31f8-4434-bc94-17ace681941f",
              "parent_uuid": "fd3cb128-db4a-49fe-8aa0-21906d411fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4065d3e7-06ea-47b8-bd47-8673a06c428f",
                  "parent_uuid": "5d97cd58-31f8-4434-bc94-17ace681941f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d145c6d8-86e2-40fb-8519-6211c84411d2",
              "parent_uuid": "fd3cb128-db4a-49fe-8aa0-21906d411fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f29daba-2c73-4a27-bafa-5764c7cd1d14",
                  "parent_uuid": "d145c6d8-86e2-40fb-8519-6211c84411d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "022a5dbe-6e5e-4d17-836e-6c6014a9da1b",
              "parent_uuid": "fd3cb128-db4a-49fe-8aa0-21906d411fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51edc49e-5765-4387-82a5-d2074fc4af07",
                  "parent_uuid": "022a5dbe-6e5e-4d17-836e-6c6014a9da1b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a9081a9-9fd9-49ff-8421-7b31a28aa70b",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e76ad15f-e571-4fb4-804c-17a296ed8c17",
              "parent_uuid": "2a9081a9-9fd9-49ff-8421-7b31a28aa70b",
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
                  "105"
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
              "innerHtml": "\r\n                    <span><b>Transportriemen gross reinigen:</b><br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f0e24674-a48f-4984-ba54-a9d5ee226269",
              "parent_uuid": "2a9081a9-9fd9-49ff-8421-7b31a28aa70b",
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
              "uuid": "ca5566c7-e04b-48d9-b5eb-67052c971086",
              "parent_uuid": "2a9081a9-9fd9-49ff-8421-7b31a28aa70b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0425f485-bac2-4c1d-a0e8-9e5591ae3c5a",
                  "parent_uuid": "ca5566c7-e04b-48d9-b5eb-67052c971086",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f86985f1-b836-4920-bbd1-d468ceff4cfc",
              "parent_uuid": "2a9081a9-9fd9-49ff-8421-7b31a28aa70b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0faf6878-e323-4540-9cba-75bbd64aa755",
                  "parent_uuid": "f86985f1-b836-4920-bbd1-d468ceff4cfc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67bcc2a9-f756-4b9d-aa84-f8a143c356c3",
              "parent_uuid": "2a9081a9-9fd9-49ff-8421-7b31a28aa70b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "374823f9-4369-41ac-a8bc-103c14fb81ef",
                  "parent_uuid": "67bcc2a9-f756-4b9d-aa84-f8a143c356c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46f158c4-26ca-4d19-97e5-3cf28ec67121",
              "parent_uuid": "2a9081a9-9fd9-49ff-8421-7b31a28aa70b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "157d03c3-68cd-4f39-b543-db8201e11462",
                  "parent_uuid": "46f158c4-26ca-4d19-97e5-3cf28ec67121",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0703cce9-9fb1-4590-a171-401914288438",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39c3bd29-8abb-4c12-a52e-cf0f9579989c",
              "parent_uuid": "0703cce9-9fb1-4590-a171-401914288438",
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
                  "121"
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
              "innerHtml": "\r\n                    <span><b>Transportriemen klein reinigen:</b><br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6c3220ee-3585-4387-b960-3ddb3f2453b1",
              "parent_uuid": "0703cce9-9fb1-4590-a171-401914288438",
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
              "uuid": "256ae526-629d-468c-934a-98de8e8939d5",
              "parent_uuid": "0703cce9-9fb1-4590-a171-401914288438",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8304094-c3db-4e99-864c-5359b1f58c5c",
                  "parent_uuid": "256ae526-629d-468c-934a-98de8e8939d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53000db7-da9c-43f6-adc1-cd4e8a0212fd",
              "parent_uuid": "0703cce9-9fb1-4590-a171-401914288438",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d9a0d11-bd72-45ce-82d6-e130d08cd1d6",
                  "parent_uuid": "53000db7-da9c-43f6-adc1-cd4e8a0212fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "520a6c6e-f14b-4f68-89fc-de3e36ac0b89",
              "parent_uuid": "0703cce9-9fb1-4590-a171-401914288438",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f2d9491-0d94-4811-b1f8-7e584ded2ff0",
                  "parent_uuid": "520a6c6e-f14b-4f68-89fc-de3e36ac0b89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "417a56bc-6646-42fd-afce-dacf7dacc5cd",
              "parent_uuid": "0703cce9-9fb1-4590-a171-401914288438",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83e5d19b-27df-4598-b324-e9898be42075",
                  "parent_uuid": "417a56bc-6646-42fd-afce-dacf7dacc5cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e610d8c9-90ed-4e61-84a5-b17f7369a0d4",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ac5ddce-c209-44cd-954d-039723905273",
              "parent_uuid": "e610d8c9-90ed-4e61-84a5-b17f7369a0d4",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
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
              "innerHtml": "\r\n                    <span><b>Spannung Transporriemen gross überprüfen:</b><br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a0eaf6de-69ed-43e1-8553-fab062019dfa",
              "parent_uuid": "e610d8c9-90ed-4e61-84a5-b17f7369a0d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "rowspan",
                  "3"
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
              "uuid": "1efc69c1-74c7-4240-9a80-24a29c73d6a4",
              "parent_uuid": "e610d8c9-90ed-4e61-84a5-b17f7369a0d4",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70e8edff-6c1d-408f-b4e6-3da107c7b5c9",
                  "parent_uuid": "1efc69c1-74c7-4240-9a80-24a29c73d6a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2caf3f7-7035-47f9-8798-779ecb4686b9",
              "parent_uuid": "e610d8c9-90ed-4e61-84a5-b17f7369a0d4",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f42b0f3a-afc9-4512-bbc9-8656bb0c2127",
                  "parent_uuid": "c2caf3f7-7035-47f9-8798-779ecb4686b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e72fc17e-b6c7-48cb-a159-95dbd1448346",
              "parent_uuid": "e610d8c9-90ed-4e61-84a5-b17f7369a0d4",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d69315b2-7f44-4974-8000-a028a6e28653",
                  "parent_uuid": "e72fc17e-b6c7-48cb-a159-95dbd1448346",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eebf4e53-ec6d-44a6-9d3b-b39c395c208b",
              "parent_uuid": "e610d8c9-90ed-4e61-84a5-b17f7369a0d4",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89c6c300-2f91-4f3f-a492-dc03f4f7801c",
                  "parent_uuid": "eebf4e53-ec6d-44a6-9d3b-b39c395c208b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e253d389-0514-4398-8a52-9be88d9db19d",
              "parent_uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "18"
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "93e3b39c-e8eb-4f1b-b3ac-8a264e17e219",
              "parent_uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6a417a36-6960-4bc7-aac6-e36fe7110461",
              "parent_uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "178db2ed-9964-4dad-9fac-9fd25fdb0ce3",
              "parent_uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95cfb06a-df4f-4d53-b74e-f16a24ee5158",
                  "parent_uuid": "178db2ed-9964-4dad-9fac-9fd25fdb0ce3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2b41184-2a7c-4244-8925-e9e57620a1dd",
              "parent_uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66bb358f-660e-491d-bee2-91d879f05c0b",
                  "parent_uuid": "e2b41184-2a7c-4244-8925-e9e57620a1dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cdb07f3-9e27-42da-9793-35c8fed50931",
              "parent_uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd1cbd0a-682b-4f50-acbf-89e07c68865d",
                  "parent_uuid": "7cdb07f3-9e27-42da-9793-35c8fed50931",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "00ab34fd-f2ca-471f-8805-ecbcf6fc3259",
              "parent_uuid": "883a7b71-7ae6-4210-85a3-eb45b76903fa",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5436c280-0bf5-4972-a71f-595d27789c42",
                  "parent_uuid": "00ab34fd-f2ca-471f-8805-ecbcf6fc3259",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f61a646-7fac-4ca4-ad65-328fdb2f5619",
              "parent_uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "21"
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
              "innerHtml": "\r\n                    <span>-Die Distanz von Punkt zu Punkt sollte 102cm betragen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "50a972a7-ecc9-43a2-97ab-9edf0900ef5d",
              "parent_uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "innerHtml": "\r\n                    <span>&lt;102cm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "21f79fea-60c3-4995-aa0e-c1a3335a18ea",
              "parent_uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a029138b-2bfb-4f28-a0cb-4bb202057cea",
                  "parent_uuid": "21f79fea-60c3-4995-aa0e-c1a3335a18ea",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "width: 100%; display: block; box-sizing: border-box;"
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
              "uuid": "2d397d98-b076-4682-86b1-ab3535fd6d46",
              "parent_uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc2c2094-e2c6-415b-8e24-691e2e2ed29f",
                  "parent_uuid": "2d397d98-b076-4682-86b1-ab3535fd6d46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de194789-6967-49ea-94e5-e1e3d37315ea",
              "parent_uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4f8ddd5-a108-4b13-9c2e-c2f53a1f89d9",
                  "parent_uuid": "de194789-6967-49ea-94e5-e1e3d37315ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac036803-9c6d-4de2-81f7-298f74465c67",
              "parent_uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8468d5bd-4de2-4949-ad64-a93da2ddc771",
                  "parent_uuid": "ac036803-9c6d-4de2-81f7-298f74465c67",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "958fed99-b982-4898-9eac-4e8cd54070ea",
              "parent_uuid": "dc3a2e45-f6a4-4bc8-aa63-6412fd429775",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5140ac29-1678-4f13-a24f-2e4c25f8b533",
                  "parent_uuid": "958fed99-b982-4898-9eac-4e8cd54070ea",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "6817f681-a96b-43b0-9875-5059c605bc09",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d39c046d-b60f-4d3b-aad3-a8ae39d7e3f5",
              "parent_uuid": "6817f681-a96b-43b0-9875-5059c605bc09",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e1e3d490-f662-4151-bf57-73722fe71fc2",
              "parent_uuid": "6817f681-a96b-43b0-9875-5059c605bc09",
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
              "uuid": "da3d0a88-76be-40ca-ba5c-6c7e549072a9",
              "parent_uuid": "6817f681-a96b-43b0-9875-5059c605bc09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b60abb0d-4711-4114-968c-0d3f24fcd19f",
                  "parent_uuid": "da3d0a88-76be-40ca-ba5c-6c7e549072a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f09e1e1-ab78-4bf6-8a73-301c2609f5db",
              "parent_uuid": "6817f681-a96b-43b0-9875-5059c605bc09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b616234a-a2e2-4f3a-9903-944808234168",
                  "parent_uuid": "4f09e1e1-ab78-4bf6-8a73-301c2609f5db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "baff464d-1590-40ea-8a01-6a8badda30a0",
              "parent_uuid": "6817f681-a96b-43b0-9875-5059c605bc09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18e98491-5a0c-487a-b46e-245708bc7fe5",
                  "parent_uuid": "baff464d-1590-40ea-8a01-6a8badda30a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ea3c66e-a36a-4722-8f60-41f24144beb1",
              "parent_uuid": "6817f681-a96b-43b0-9875-5059c605bc09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "881cb633-fec1-49b9-8c25-7516dd447c64",
                  "parent_uuid": "3ea3c66e-a36a-4722-8f60-41f24144beb1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "719d7321-24bb-4f4f-a4bf-e067f4d04713",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19d4e11e-79bc-40ca-8945-97e84615d8c5",
              "parent_uuid": "719d7321-24bb-4f4f-a4bf-e067f4d04713",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Lichtschranken und Sensoren mit einem weichen Reinigungstuch.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d968c6e9-03a8-4214-b75e-f0633f820bc2",
              "parent_uuid": "719d7321-24bb-4f4f-a4bf-e067f4d04713",
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
              "uuid": "a358c45e-3233-4414-8b11-694a65892ff5",
              "parent_uuid": "719d7321-24bb-4f4f-a4bf-e067f4d04713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "025dc37b-4844-43c4-9423-e163f5ca602c",
                  "parent_uuid": "a358c45e-3233-4414-8b11-694a65892ff5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64e83851-a617-42c9-bdea-1171ea8f3436",
              "parent_uuid": "719d7321-24bb-4f4f-a4bf-e067f4d04713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3dfe5146-26ca-4dab-878c-11fb22a62667",
                  "parent_uuid": "64e83851-a617-42c9-bdea-1171ea8f3436",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e99dcea-a782-4511-89c3-556112d3e8b8",
              "parent_uuid": "719d7321-24bb-4f4f-a4bf-e067f4d04713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "542b5c9b-5697-4309-80a9-044506e33e58",
                  "parent_uuid": "7e99dcea-a782-4511-89c3-556112d3e8b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f623cf5-173b-4e0e-aab3-e332074569e1",
              "parent_uuid": "719d7321-24bb-4f4f-a4bf-e067f4d04713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52e8e916-4bd2-4358-bb91-8c3176cc9132",
                  "parent_uuid": "0f623cf5-173b-4e0e-aab3-e332074569e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "5f8f8aef-52b5-41f8-8659-873594cd30b4",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9625d52e-1123-4e53-a8ac-c7f4281b67b1",
              "parent_uuid": "5f8f8aef-52b5-41f8-8659-873594cd30b4",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Beide Server PC-Filter überprüfen und reinigen oder austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cd918b0a-3522-4b58-aaf6-a275f3ab2590",
              "parent_uuid": "5f8f8aef-52b5-41f8-8659-873594cd30b4",
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
              "uuid": "184aa680-99b3-45b4-9e5b-0a47a28ea916",
              "parent_uuid": "5f8f8aef-52b5-41f8-8659-873594cd30b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00a5111b-c63a-485f-a01c-8e370563847a",
                  "parent_uuid": "184aa680-99b3-45b4-9e5b-0a47a28ea916",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "376115d9-8938-4390-a29f-d0206ec441e8",
              "parent_uuid": "5f8f8aef-52b5-41f8-8659-873594cd30b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3db9ace7-bdcd-4362-a65e-47976935dd86",
                  "parent_uuid": "376115d9-8938-4390-a29f-d0206ec441e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba2104ca-4dad-40f6-8ca2-acc74ddd0ef8",
              "parent_uuid": "5f8f8aef-52b5-41f8-8659-873594cd30b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ce3e792-c06b-4991-8d2a-1c3f4e72d3d7",
                  "parent_uuid": "ba2104ca-4dad-40f6-8ca2-acc74ddd0ef8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "418ecd2d-f55f-49b0-8016-8bb2be6f1a1b",
              "parent_uuid": "5f8f8aef-52b5-41f8-8659-873594cd30b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c5a181c-11ee-4afa-ba2d-f6872e97c8d8",
                  "parent_uuid": "418ecd2d-f55f-49b0-8016-8bb2be6f1a1b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bd3e0918-8f6f-4ab6-9c7e-7703f2239b9f",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fc091fd-0b94-4d68-a606-81d55f55be2c",
              "parent_uuid": "bd3e0918-8f6f-4ab6-9c7e-7703f2239b9f",
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
                  "52"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kühlaggregat reinigen<br>  -Nehmen Sie vorsichtig die Abdeckung des Kühlaggregats ab.<br>  -Reinigen Sie die Lamellen vorsichtig mit einem Staubsauger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a81ab8a5-e6fe-492d-b9db-9065dcedb644",
              "parent_uuid": "bd3e0918-8f6f-4ab6-9c7e-7703f2239b9f",
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
              "uuid": "7ac0913a-192c-4921-9331-64c4f411a5a8",
              "parent_uuid": "bd3e0918-8f6f-4ab6-9c7e-7703f2239b9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ca45f3a-db9b-40c7-b055-ee9c43c911ea",
                  "parent_uuid": "7ac0913a-192c-4921-9331-64c4f411a5a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7a0dd53-f90c-4664-8431-d91c15e29d67",
              "parent_uuid": "bd3e0918-8f6f-4ab6-9c7e-7703f2239b9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c5dfc97-47eb-4cbc-b03b-d01ecb9a3c05",
                  "parent_uuid": "b7a0dd53-f90c-4664-8431-d91c15e29d67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5458f23a-17d2-4dbb-9b25-38f7f7a5ed2b",
              "parent_uuid": "bd3e0918-8f6f-4ab6-9c7e-7703f2239b9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e376cd57-6600-43d2-956b-df52b1c6b2c0",
                  "parent_uuid": "5458f23a-17d2-4dbb-9b25-38f7f7a5ed2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aec4e707-bb01-434e-9e62-353db346ca8c",
              "parent_uuid": "bd3e0918-8f6f-4ab6-9c7e-7703f2239b9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "119b1d08-deb2-45e7-8c2d-59cc32e56617",
                  "parent_uuid": "aec4e707-bb01-434e-9e62-353db346ca8c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "301beb91-0734-429d-8886-148e90cff20a",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e418dffd-d325-4f5e-b08c-f47a51458095",
              "parent_uuid": "301beb91-0734-429d-8886-148e90cff20a",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "30285182-50db-477b-bf39-b778fbaea896",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37ee3421-ccbf-423d-96c9-534d8d0cfdc2",
              "parent_uuid": "30285182-50db-477b-bf39-b778fbaea896",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Schwingplatte<br>  -Der Talkbelag der Schwingplatte wird mit einem Spachtel gelöst.<br>  -Anschliessend kann mit einem Reinigungstuch und Bremsreiniger der übrige Schmutz entfernt werden</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f2019c6f-3814-4c97-81d9-a028704f7fbe",
              "parent_uuid": "30285182-50db-477b-bf39-b778fbaea896",
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
              "uuid": "785dc3ce-f0de-4e17-8d7d-29f9422de25f",
              "parent_uuid": "30285182-50db-477b-bf39-b778fbaea896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24dddbd0-db76-45dc-bbfd-49dacdfc27d1",
                  "parent_uuid": "785dc3ce-f0de-4e17-8d7d-29f9422de25f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "150c2046-c4d7-4885-9118-7430c5ebe16c",
              "parent_uuid": "30285182-50db-477b-bf39-b778fbaea896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "456ee6bd-864e-4456-b5b7-5b1cadfbf360",
                  "parent_uuid": "150c2046-c4d7-4885-9118-7430c5ebe16c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27a7aefc-2218-42a9-a306-3dfc6eb50638",
              "parent_uuid": "30285182-50db-477b-bf39-b778fbaea896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c21a3af-c26d-4a70-8ed8-9b9b43ae3e71",
                  "parent_uuid": "27a7aefc-2218-42a9-a306-3dfc6eb50638",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33925041-08a2-42a4-b25a-04b59885f2a4",
              "parent_uuid": "30285182-50db-477b-bf39-b778fbaea896",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b240f27-d47e-406a-860f-15e0b797156b",
                  "parent_uuid": "33925041-08a2-42a4-b25a-04b59885f2a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cdd51f24-f050-4745-a85a-6165c45551c2",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69d13814-aff1-4f34-a77c-518eec7c8177",
              "parent_uuid": "cdd51f24-f050-4745-a85a-6165c45551c2",
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
                  "21"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Prüfen Sie die Abscheider und Bürsten auf Verschleiß.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "10d1a44d-6683-4d8a-b3a3-277a48c27b24",
              "parent_uuid": "cdd51f24-f050-4745-a85a-6165c45551c2",
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
              "uuid": "5a56cdc5-eae0-46fb-a580-759c4db31f62",
              "parent_uuid": "cdd51f24-f050-4745-a85a-6165c45551c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7b52bbb-028e-4dbe-97a2-fe0d8122218d",
                  "parent_uuid": "5a56cdc5-eae0-46fb-a580-759c4db31f62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d43634c-b6a2-46d6-9dcd-52d0facbaf5a",
              "parent_uuid": "cdd51f24-f050-4745-a85a-6165c45551c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "165d0d5b-26ef-4666-83ea-12a26e46083e",
                  "parent_uuid": "4d43634c-b6a2-46d6-9dcd-52d0facbaf5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a80effa-92af-4e77-954e-cdaab0efc5d8",
              "parent_uuid": "cdd51f24-f050-4745-a85a-6165c45551c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5daec3a-561e-489e-9bc9-aa20dee4f0aa",
                  "parent_uuid": "1a80effa-92af-4e77-954e-cdaab0efc5d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77b67081-936e-4d6a-ad39-16e7f8ae41e3",
              "parent_uuid": "cdd51f24-f050-4745-a85a-6165c45551c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec353f83-f724-4f2e-bdea-a581997c673c",
                  "parent_uuid": "77b67081-936e-4d6a-ad39-16e7f8ae41e3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9127397c-f636-4e6e-be7e-a715d8d95b96",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e200e639-100d-4fe5-a907-3a9496bd99a2",
              "parent_uuid": "9127397c-f636-4e6e-be7e-a715d8d95b96",
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
                  "51"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Vision-Einheiten<br>  -Reinigen Sie die Oberfläche der Abdeckung vorsichtig mit dem Staubsauger und  mit einem Microphasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5c17046f-454f-45e8-b4e3-3dc809f2f804",
              "parent_uuid": "9127397c-f636-4e6e-be7e-a715d8d95b96",
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
              "uuid": "5026ee18-2c7f-42d5-8fec-b14001d6e85e",
              "parent_uuid": "9127397c-f636-4e6e-be7e-a715d8d95b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd082644-5529-460f-a25c-d55fae877943",
                  "parent_uuid": "5026ee18-2c7f-42d5-8fec-b14001d6e85e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68c082ae-dc89-41ba-9741-140198fd95df",
              "parent_uuid": "9127397c-f636-4e6e-be7e-a715d8d95b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c37aab3-1f20-4491-8473-d1b6f366fbe1",
                  "parent_uuid": "68c082ae-dc89-41ba-9741-140198fd95df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3b75483-68fc-4aec-835e-6826284c6f8f",
              "parent_uuid": "9127397c-f636-4e6e-be7e-a715d8d95b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cd90f46-8c78-43d5-80d0-3faa7ab5ed5d",
                  "parent_uuid": "c3b75483-68fc-4aec-835e-6826284c6f8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "471b19b3-cabf-464b-8be0-9eff63be5e75",
              "parent_uuid": "9127397c-f636-4e6e-be7e-a715d8d95b96",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13341ba1-e065-4e24-b62f-933c6f2ed789",
                  "parent_uuid": "471b19b3-cabf-464b-8be0-9eff63be5e75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4112c45b-ba83-4d3b-bdab-92f44d6fc435",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eca1a425-251e-4935-bb56-0fa0acea1c07",
              "parent_uuid": "4112c45b-ba83-4d3b-bdab-92f44d6fc435",
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
                  "86"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Vision-Linsen<br>  -Reinige die Oberfläche der Linse vorsichtig mit dem Staubsauger/Druckluftpistole und mit einem Microphasertuch.<br>  -Bei Flecken auf der Linse, muss ein Microphasertuch mit wenig Senorreiniger angewendet werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9cb98eda-72ae-4a52-8347-bac738adc111",
              "parent_uuid": "4112c45b-ba83-4d3b-bdab-92f44d6fc435",
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
              "uuid": "c76208f0-a2df-4440-9b92-f9a3d3865962",
              "parent_uuid": "4112c45b-ba83-4d3b-bdab-92f44d6fc435",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29c57ae8-051e-49da-9076-9089e525ad48",
                  "parent_uuid": "c76208f0-a2df-4440-9b92-f9a3d3865962",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbd69e23-a7a2-414e-9a4c-0cb6960eac24",
              "parent_uuid": "4112c45b-ba83-4d3b-bdab-92f44d6fc435",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9644b53-1354-4c50-b50b-703d74572aaa",
                  "parent_uuid": "fbd69e23-a7a2-414e-9a4c-0cb6960eac24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9b744b4-2bbd-4f97-b670-a0a9163a36b9",
              "parent_uuid": "4112c45b-ba83-4d3b-bdab-92f44d6fc435",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e26c120f-2f60-4221-901f-57b7d5a2bc83",
                  "parent_uuid": "d9b744b4-2bbd-4f97-b670-a0a9163a36b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1462870-f42e-4cec-9129-d5b7efb040c5",
              "parent_uuid": "4112c45b-ba83-4d3b-bdab-92f44d6fc435",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dfe874d-2739-48b9-9f08-895f01cb8055",
                  "parent_uuid": "a1462870-f42e-4cec-9129-d5b7efb040c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "90ed18ef-696e-4d88-b996-2e5c3a943fc7",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aff6718f-ec34-4ffe-affe-038f7c6dbcd6",
              "parent_uuid": "90ed18ef-696e-4d88-b996-2e5c3a943fc7",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Speicherplatz<br>  -Überprüfe den Speicherplatz auf dem NAS, falls dieser überläuft können alte Daten gelöscht werden.<br>  -Überprüfen den Speicherplatz auf dem Lokalen Laufwerken, falls der überläuft können Logdateien gelöscht werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3ff66df6-fb35-462b-a889-e9f71bba9c4b",
              "parent_uuid": "90ed18ef-696e-4d88-b996-2e5c3a943fc7",
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
              "uuid": "efa8fd8d-4e25-4259-bf80-57c65c97ab16",
              "parent_uuid": "90ed18ef-696e-4d88-b996-2e5c3a943fc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28d96eb7-10a6-469a-acb2-858ea3dba09b",
                  "parent_uuid": "efa8fd8d-4e25-4259-bf80-57c65c97ab16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3c319a5-77a7-4bb1-8245-f748036f3137",
              "parent_uuid": "90ed18ef-696e-4d88-b996-2e5c3a943fc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b5a9c59-eb54-4c3a-a9ac-780304aea0ea",
                  "parent_uuid": "d3c319a5-77a7-4bb1-8245-f748036f3137",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cca20202-c122-4d70-b465-2f9db245aa1c",
              "parent_uuid": "90ed18ef-696e-4d88-b996-2e5c3a943fc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e16d68e-9cc9-4251-af64-0650f94314f2",
                  "parent_uuid": "cca20202-c122-4d70-b465-2f9db245aa1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0045daf4-e45d-442c-9319-c0d1ba89098e",
              "parent_uuid": "90ed18ef-696e-4d88-b996-2e5c3a943fc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd6d8905-8a34-4ab6-9e7d-e6666a9d8691",
                  "parent_uuid": "0045daf4-e45d-442c-9319-c0d1ba89098e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2046a5a4-fdff-41df-ad84-66b72db3eb10",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c509963-e66f-403c-a7c6-2fca55d8ebff",
              "parent_uuid": "2046a5a4-fdff-41df-ad84-66b72db3eb10",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "3e82bdb0-9400-4212-8fb9-1c59dcae6b2c",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61422340-edb6-4d5b-a9c6-a8e04eea32f1",
              "parent_uuid": "3e82bdb0-9400-4212-8fb9-1c59dcae6b2c",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "8f8c73ff-9a6f-4c0e-933f-fb43c736f92b",
          "parent_uuid": "aba048c3-4e04-44bc-a8d7-e5ad5ab2990d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a340086-7a9e-4d80-b763-12d2bcf3573a",
              "parent_uuid": "8f8c73ff-9a6f-4c0e-933f-fb43c736f92b",
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
                  "uuid": "91e9dfff-a547-4e4e-9cd4-1611c161696e",
                  "parent_uuid": "1a340086-7a9e-4d80-b763-12d2bcf3573a",
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
          "sort": 30,
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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
		,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '58A6D34C-2D4B-4F8A-B831-60488591AEDC'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

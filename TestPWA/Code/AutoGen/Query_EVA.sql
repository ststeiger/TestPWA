
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
  "uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "5f51c628-2984-4f17-991b-b7613b448da8",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "2cfcfc37-a15f-40ba-9ec2-8366b83b1a8e",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "27b86ddd-15ad-4e43-89c4-7982ab7c459d",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "000b4e6e-6a6b-498b-8d5e-51b691a210c5",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "00f08ee1-308e-4e5d-8aac-a3a6385d24c7",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "ba9a2026-5962-4db8-aa63-3c2a8441d975",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "b4e05449-9ef1-4d9c-919a-3582742ab037",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
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
      "uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
      "parent_uuid": "1e10fc20-4b90-4a88-b6ca-089d635136f0",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "80210d67-8b76-41bd-9a3d-c7931c4939af",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "772203e0-952b-407e-908b-862f46073fbf",
              "parent_uuid": "80210d67-8b76-41bd-9a3d-c7931c4939af",
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
              "uuid": "91e54fbe-3015-45a6-a333-4cb1f2846bb7",
              "parent_uuid": "80210d67-8b76-41bd-9a3d-c7931c4939af",
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
              "uuid": "8130e0da-3621-454c-82da-e591c1da5b29",
              "parent_uuid": "80210d67-8b76-41bd-9a3d-c7931c4939af",
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
              "uuid": "233f7e82-0479-48b7-b04f-5c7488bcd065",
              "parent_uuid": "80210d67-8b76-41bd-9a3d-c7931c4939af",
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
          "uuid": "0651789a-7f07-4580-a91f-cd2abb8336ff",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "95ac0e45-28dd-47b4-841a-99e6f002bd17",
              "parent_uuid": "0651789a-7f07-4580-a91f-cd2abb8336ff",
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
              "uuid": "76ddd191-737d-4bef-b86e-7edc1d974f09",
              "parent_uuid": "0651789a-7f07-4580-a91f-cd2abb8336ff",
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
              "uuid": "f854ecde-0b13-47e9-b03e-22823a6cf712",
              "parent_uuid": "0651789a-7f07-4580-a91f-cd2abb8336ff",
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
              "uuid": "faa0f0f0-3322-44bb-be92-f6f984b32326",
              "parent_uuid": "0651789a-7f07-4580-a91f-cd2abb8336ff",
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
          "uuid": "abf0601c-dfbf-47b9-a89a-428e3a48ec4e",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d841ac4a-50f6-4fcf-b66d-025c554e3fb2",
              "parent_uuid": "abf0601c-dfbf-47b9-a89a-428e3a48ec4e",
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
              "uuid": "4fd96c14-b557-4702-8bc3-d23210ef4ec0",
              "parent_uuid": "abf0601c-dfbf-47b9-a89a-428e3a48ec4e",
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
              "uuid": "021a1939-acef-46b3-a032-7b36fc4542c6",
              "parent_uuid": "abf0601c-dfbf-47b9-a89a-428e3a48ec4e",
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
              "uuid": "2f6f89a7-7479-448d-9749-c77bb990147e",
              "parent_uuid": "abf0601c-dfbf-47b9-a89a-428e3a48ec4e",
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
              "uuid": "9e13bcd3-66f2-4f24-9d67-8e87b72ad79f",
              "parent_uuid": "abf0601c-dfbf-47b9-a89a-428e3a48ec4e",
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
              "uuid": "916ca773-45be-4e1c-a385-75692655b495",
              "parent_uuid": "abf0601c-dfbf-47b9-a89a-428e3a48ec4e",
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
          "uuid": "d37087b8-43d8-4f29-b20b-56c0b72df68a",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8e6cd25c-4c52-4425-abdb-c2445e8df836",
              "parent_uuid": "d37087b8-43d8-4f29-b20b-56c0b72df68a",
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
          "uuid": "97457999-4f71-444f-9a09-7fc4321b75b7",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4419d8a2-34fd-440a-974a-4aeec946377b",
              "parent_uuid": "97457999-4f71-444f-9a09-7fc4321b75b7",
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
              "uuid": "25d929f1-2904-48aa-93ca-e80581c091fd",
              "parent_uuid": "97457999-4f71-444f-9a09-7fc4321b75b7",
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
              "uuid": "50c70674-465e-4c87-b286-ea89004fec34",
              "parent_uuid": "97457999-4f71-444f-9a09-7fc4321b75b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "501136b5-a7a2-456d-99c0-cfd8ffc16633",
                  "parent_uuid": "50c70674-465e-4c87-b286-ea89004fec34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff34ab2b-31a8-430e-be46-e729cc3423ea",
              "parent_uuid": "97457999-4f71-444f-9a09-7fc4321b75b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "280c88e2-f53b-4aa6-ab61-4064dbfa3531",
                  "parent_uuid": "ff34ab2b-31a8-430e-be46-e729cc3423ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2084a845-ef1d-442b-8391-4d47d26e7c05",
              "parent_uuid": "97457999-4f71-444f-9a09-7fc4321b75b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "933cbbf6-4386-4230-9773-ab3bfd3a41ab",
                  "parent_uuid": "2084a845-ef1d-442b-8391-4d47d26e7c05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fccdbea1-c17f-47ea-8e50-842d8ae5f7b8",
              "parent_uuid": "97457999-4f71-444f-9a09-7fc4321b75b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dcc4235-7330-47dc-9293-70e29a084a7d",
                  "parent_uuid": "fccdbea1-c17f-47ea-8e50-842d8ae5f7b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6da2b75-ee51-4d7b-aa89-54b38e44ce6a",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ae4ce09-70bc-4e13-bb54-75bc4a29fb2b",
              "parent_uuid": "e6da2b75-ee51-4d7b-aa89-54b38e44ce6a",
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
              "uuid": "2c1d1db9-6531-4d4e-b720-3ec48fb66712",
              "parent_uuid": "e6da2b75-ee51-4d7b-aa89-54b38e44ce6a",
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
              "uuid": "9b9853c8-3207-4ec1-a514-782f36a0629f",
              "parent_uuid": "e6da2b75-ee51-4d7b-aa89-54b38e44ce6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "879919b1-b6da-4b54-857b-cb0ba5f00bd5",
                  "parent_uuid": "9b9853c8-3207-4ec1-a514-782f36a0629f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77213d87-3c34-4edd-bd03-d7af03cfb529",
              "parent_uuid": "e6da2b75-ee51-4d7b-aa89-54b38e44ce6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63ac11c2-8c4b-448d-8485-bdf63c5fb89a",
                  "parent_uuid": "77213d87-3c34-4edd-bd03-d7af03cfb529",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95182ff4-98cb-4ce1-8042-b70ab082a030",
              "parent_uuid": "e6da2b75-ee51-4d7b-aa89-54b38e44ce6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33b3b9ec-8b8e-4362-981e-a6a50c8f3998",
                  "parent_uuid": "95182ff4-98cb-4ce1-8042-b70ab082a030",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d32df36-4b6a-4b30-88f7-8303716ced57",
              "parent_uuid": "e6da2b75-ee51-4d7b-aa89-54b38e44ce6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78611d00-52f9-4f92-89f5-abcf735f9d8a",
                  "parent_uuid": "3d32df36-4b6a-4b30-88f7-8303716ced57",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "96d2a9cb-ff19-42c3-8af2-13d1de9ba40a",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bd27a5b7-faa9-4e66-b472-6d927f125ad0",
              "parent_uuid": "96d2a9cb-ff19-42c3-8af2-13d1de9ba40a",
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
              "uuid": "602d99bb-db9a-41bc-92ae-856f3311b189",
              "parent_uuid": "96d2a9cb-ff19-42c3-8af2-13d1de9ba40a",
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
              "uuid": "e8ae1c79-8d97-420b-b7e3-53589753601e",
              "parent_uuid": "96d2a9cb-ff19-42c3-8af2-13d1de9ba40a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8ba3106-20d9-4383-9873-8f66950035a1",
                  "parent_uuid": "e8ae1c79-8d97-420b-b7e3-53589753601e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f771196c-7f13-4e38-9148-fac2823cdde6",
              "parent_uuid": "96d2a9cb-ff19-42c3-8af2-13d1de9ba40a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c07eb0f8-4fc4-43fd-acaf-5d1759941e2a",
                  "parent_uuid": "f771196c-7f13-4e38-9148-fac2823cdde6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b473b190-19af-43cc-ba4f-d89f559a3de2",
              "parent_uuid": "96d2a9cb-ff19-42c3-8af2-13d1de9ba40a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "788020ec-8966-4506-8b7a-84515bcf3b5b",
                  "parent_uuid": "b473b190-19af-43cc-ba4f-d89f559a3de2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e714eeb7-9122-4f91-a6ab-7c979cfc734c",
              "parent_uuid": "96d2a9cb-ff19-42c3-8af2-13d1de9ba40a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "288c012e-d2ba-4fb1-a858-fb80850e25d1",
                  "parent_uuid": "e714eeb7-9122-4f91-a6ab-7c979cfc734c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7462d65d-59ee-4465-9210-5b913fd010a4",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12687fbf-9d55-4670-b713-484eba4ff538",
              "parent_uuid": "7462d65d-59ee-4465-9210-5b913fd010a4",
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
              "uuid": "723e9aaf-1b82-4df4-bfd6-f8d141c1da35",
              "parent_uuid": "7462d65d-59ee-4465-9210-5b913fd010a4",
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
              "uuid": "cb12109c-2bf5-47d7-885e-ff121687bc7c",
              "parent_uuid": "7462d65d-59ee-4465-9210-5b913fd010a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18a50fab-00bb-4e1d-b876-b4e079a9eb49",
                  "parent_uuid": "cb12109c-2bf5-47d7-885e-ff121687bc7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c98b7560-7b2d-4a65-93b2-2930c97dc47c",
              "parent_uuid": "7462d65d-59ee-4465-9210-5b913fd010a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1949dd03-33be-4809-8248-086574ce282a",
                  "parent_uuid": "c98b7560-7b2d-4a65-93b2-2930c97dc47c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d50c7b7-605e-4528-a5e6-9eebc0e5a74d",
              "parent_uuid": "7462d65d-59ee-4465-9210-5b913fd010a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a494e7c-97a2-4182-8cdc-a141c51e4d64",
                  "parent_uuid": "2d50c7b7-605e-4528-a5e6-9eebc0e5a74d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "557e2a1f-6044-4fea-9083-609f10a15b60",
              "parent_uuid": "7462d65d-59ee-4465-9210-5b913fd010a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "195e181e-e5f4-47f5-b818-70935e4ffcc8",
                  "parent_uuid": "557e2a1f-6044-4fea-9083-609f10a15b60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "452571aa-8bed-44f3-982f-efb2f331f5c2",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81037575-e57e-4a78-ba17-0ee8653a48dc",
              "parent_uuid": "452571aa-8bed-44f3-982f-efb2f331f5c2",
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
              "uuid": "7d3fb8fe-6615-4bb3-9d88-9c3d8edd8d4e",
              "parent_uuid": "452571aa-8bed-44f3-982f-efb2f331f5c2",
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
              "uuid": "b4797a07-1347-4c58-a535-d152fdfeaf1d",
              "parent_uuid": "452571aa-8bed-44f3-982f-efb2f331f5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f267128-9dba-4051-bc65-cb5af23c022b",
                  "parent_uuid": "b4797a07-1347-4c58-a535-d152fdfeaf1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72bbd2bf-1c0b-4f01-a236-425004fdf87a",
              "parent_uuid": "452571aa-8bed-44f3-982f-efb2f331f5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eae1258c-11d4-461d-b89c-4df737553e00",
                  "parent_uuid": "72bbd2bf-1c0b-4f01-a236-425004fdf87a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14f9297d-5ae9-4197-8e5d-1b8f05649747",
              "parent_uuid": "452571aa-8bed-44f3-982f-efb2f331f5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f47ee6b-9e35-4323-a10a-a34190b16c87",
                  "parent_uuid": "14f9297d-5ae9-4197-8e5d-1b8f05649747",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "caa2c215-4506-4a07-a822-b7e1ee6adc96",
              "parent_uuid": "452571aa-8bed-44f3-982f-efb2f331f5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82cf157b-5ac3-41a1-953b-42a2eac22f99",
                  "parent_uuid": "caa2c215-4506-4a07-a822-b7e1ee6adc96",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3c50205d-3919-401d-a606-35261fce1878",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c05863f1-1e4e-4b68-8f9e-376a25dfa004",
              "parent_uuid": "3c50205d-3919-401d-a606-35261fce1878",
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
              "uuid": "ca68170c-e233-4bbd-97ef-49312edac800",
              "parent_uuid": "3c50205d-3919-401d-a606-35261fce1878",
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
              "uuid": "1b96c4bb-a91d-4d3b-b6c9-a1fa6f5577e9",
              "parent_uuid": "3c50205d-3919-401d-a606-35261fce1878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b863a392-13ff-4bbe-9033-4ba9b55e43db",
                  "parent_uuid": "1b96c4bb-a91d-4d3b-b6c9-a1fa6f5577e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32334b22-6e3c-427c-b638-39b16a4633df",
              "parent_uuid": "3c50205d-3919-401d-a606-35261fce1878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6b3d815-cbbc-4708-8173-bc550fb938c9",
                  "parent_uuid": "32334b22-6e3c-427c-b638-39b16a4633df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a312bb3-404c-4805-8f4a-0979e7e1e26c",
              "parent_uuid": "3c50205d-3919-401d-a606-35261fce1878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "229f1872-68ec-4377-829b-fe1cc87dc199",
                  "parent_uuid": "5a312bb3-404c-4805-8f4a-0979e7e1e26c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16bef00c-2fb8-466f-a768-a2dcd1e7401a",
              "parent_uuid": "3c50205d-3919-401d-a606-35261fce1878",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b84a92d8-ae3c-44e5-a871-673130a2aac1",
                  "parent_uuid": "16bef00c-2fb8-466f-a768-a2dcd1e7401a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "02990255-8aac-4ace-a314-96e0139387df",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b765ff77-c5b8-4713-817d-c67a2467fecf",
              "parent_uuid": "02990255-8aac-4ace-a314-96e0139387df",
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
              "uuid": "76c7a0fb-d961-45c2-ad33-e86a2d700c9d",
              "parent_uuid": "02990255-8aac-4ace-a314-96e0139387df",
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
              "uuid": "b0609846-b7e9-4e07-9aa7-80deebb897c6",
              "parent_uuid": "02990255-8aac-4ace-a314-96e0139387df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b12199c4-9f80-420d-b8fa-9fad829e9e01",
                  "parent_uuid": "b0609846-b7e9-4e07-9aa7-80deebb897c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56daeb3a-32a7-4d94-826a-6feb5e5b2027",
              "parent_uuid": "02990255-8aac-4ace-a314-96e0139387df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2d99fb6-a186-4c04-846a-d259c5105b9a",
                  "parent_uuid": "56daeb3a-32a7-4d94-826a-6feb5e5b2027",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0868c94-b2ff-4262-b375-0d85ac2323bc",
              "parent_uuid": "02990255-8aac-4ace-a314-96e0139387df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "337230d0-0402-404f-b4d8-b90deb3e432e",
                  "parent_uuid": "f0868c94-b2ff-4262-b375-0d85ac2323bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64bd16b5-19d0-46e3-a7e0-9310a03736df",
              "parent_uuid": "02990255-8aac-4ace-a314-96e0139387df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29f9917b-9a9a-4b4b-9414-691423b64062",
                  "parent_uuid": "64bd16b5-19d0-46e3-a7e0-9310a03736df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "316640f3-b9ea-4531-b890-9e13bef6912f",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "359ca7d0-c32c-4b64-87a7-a97bddd27dcf",
              "parent_uuid": "316640f3-b9ea-4531-b890-9e13bef6912f",
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
              "uuid": "18eabbb4-0a12-4c6c-9627-e7ef38907032",
              "parent_uuid": "316640f3-b9ea-4531-b890-9e13bef6912f",
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
              "uuid": "53fed98d-4d7d-4246-a51d-5689c25564eb",
              "parent_uuid": "316640f3-b9ea-4531-b890-9e13bef6912f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37f3728f-f79c-4ccd-84e4-27ec22a7d01a",
                  "parent_uuid": "53fed98d-4d7d-4246-a51d-5689c25564eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9cc68c3-2935-49bf-b8da-7622c89b6271",
              "parent_uuid": "316640f3-b9ea-4531-b890-9e13bef6912f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc276370-dc20-4815-8b2d-3f5fa1cf55ab",
                  "parent_uuid": "f9cc68c3-2935-49bf-b8da-7622c89b6271",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7667ee49-0bb8-41c1-8ae7-663e0a48d75d",
              "parent_uuid": "316640f3-b9ea-4531-b890-9e13bef6912f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d83ee6ad-702a-49fb-b8c7-c18dffd87a19",
                  "parent_uuid": "7667ee49-0bb8-41c1-8ae7-663e0a48d75d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8543a67b-213a-4224-ae92-b6758d4fa6cb",
              "parent_uuid": "316640f3-b9ea-4531-b890-9e13bef6912f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea59a678-28ba-4816-a8df-086b63a24947",
                  "parent_uuid": "8543a67b-213a-4224-ae92-b6758d4fa6cb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4d0d251a-a4d9-4607-a324-eaa59686ac2f",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ae74c77-b959-4d4b-8045-6d606b1e061a",
              "parent_uuid": "4d0d251a-a4d9-4607-a324-eaa59686ac2f",
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
              "uuid": "890ad0e1-5073-4fa6-a58b-fdefa20fd778",
              "parent_uuid": "4d0d251a-a4d9-4607-a324-eaa59686ac2f",
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
              "uuid": "911615ea-6d7e-4e9d-83d1-151d8b5a96e2",
              "parent_uuid": "4d0d251a-a4d9-4607-a324-eaa59686ac2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fed5196a-d9e8-43ee-b49f-fdf428559def",
                  "parent_uuid": "911615ea-6d7e-4e9d-83d1-151d8b5a96e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "318c91c2-560e-4799-8832-31e11b3660ad",
              "parent_uuid": "4d0d251a-a4d9-4607-a324-eaa59686ac2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fdd7195a-d5eb-4e75-a801-cd3c9e94bed7",
                  "parent_uuid": "318c91c2-560e-4799-8832-31e11b3660ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0425e20-1bdc-41a8-aeac-253b520c9809",
              "parent_uuid": "4d0d251a-a4d9-4607-a324-eaa59686ac2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3055ec35-e329-4c6e-806d-3efeb1145e47",
                  "parent_uuid": "f0425e20-1bdc-41a8-aeac-253b520c9809",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8e1f33b-b083-4a80-9627-303a528a8aa3",
              "parent_uuid": "4d0d251a-a4d9-4607-a324-eaa59686ac2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e1952af-b61f-4122-be47-11684be07878",
                  "parent_uuid": "f8e1f33b-b083-4a80-9627-303a528a8aa3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a9bd1c93-5362-4613-984a-f41acade758a",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ffe14ff-93ed-4b4f-ad67-3120db38e24c",
              "parent_uuid": "a9bd1c93-5362-4613-984a-f41acade758a",
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
              "uuid": "3f1978b6-674f-49c5-8a86-6ff266999144",
              "parent_uuid": "a9bd1c93-5362-4613-984a-f41acade758a",
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
              "uuid": "be0f922a-f670-4960-9950-5e0dc37677fa",
              "parent_uuid": "a9bd1c93-5362-4613-984a-f41acade758a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fad1ea68-2ccf-429c-b6f8-c16f41c0bff6",
                  "parent_uuid": "be0f922a-f670-4960-9950-5e0dc37677fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a46b24c9-5217-4bd7-9158-958e79a9a115",
              "parent_uuid": "a9bd1c93-5362-4613-984a-f41acade758a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8baa220b-4a0a-4823-a06a-e66c4f221ccc",
                  "parent_uuid": "a46b24c9-5217-4bd7-9158-958e79a9a115",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18ab3afb-3e5b-439b-9142-b0aecc37386f",
              "parent_uuid": "a9bd1c93-5362-4613-984a-f41acade758a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22da20c6-6218-4b4f-9e85-1c27455d8973",
                  "parent_uuid": "18ab3afb-3e5b-439b-9142-b0aecc37386f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a5a0ef3-7ad3-4966-bbb3-2434cb92182f",
              "parent_uuid": "a9bd1c93-5362-4613-984a-f41acade758a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cff5008-98aa-4996-8754-4bf5b7edc1d9",
                  "parent_uuid": "8a5a0ef3-7ad3-4966-bbb3-2434cb92182f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "36d4da61-939c-4810-88f5-24eb520ab255",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4aaa6e19-9918-4b9b-8a68-f752f40c1019",
              "parent_uuid": "36d4da61-939c-4810-88f5-24eb520ab255",
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
              "uuid": "1c215005-9a98-4fb3-9ce2-7315018e1372",
              "parent_uuid": "36d4da61-939c-4810-88f5-24eb520ab255",
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
              "uuid": "55bfe2fd-4092-473e-b5fa-c0a5ca3e6676",
              "parent_uuid": "36d4da61-939c-4810-88f5-24eb520ab255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db882960-a78e-4788-8c74-f431889b02f5",
                  "parent_uuid": "55bfe2fd-4092-473e-b5fa-c0a5ca3e6676",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26c52794-b315-4c9c-9806-57b03784be47",
              "parent_uuid": "36d4da61-939c-4810-88f5-24eb520ab255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ef02559-210b-466d-baff-9311fb71ea64",
                  "parent_uuid": "26c52794-b315-4c9c-9806-57b03784be47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53a843bb-b705-4fff-8eaa-1cb4bfa4dd64",
              "parent_uuid": "36d4da61-939c-4810-88f5-24eb520ab255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1bf7778-99c8-4168-8582-0e9a2543bfe4",
                  "parent_uuid": "53a843bb-b705-4fff-8eaa-1cb4bfa4dd64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87bef468-4725-4f04-9eb1-9d92ec7f8f9c",
              "parent_uuid": "36d4da61-939c-4810-88f5-24eb520ab255",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9f8b47a-d2a1-4ada-93f3-60083e9e0bc0",
                  "parent_uuid": "87bef468-4725-4f04-9eb1-9d92ec7f8f9c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c064322-f361-4715-adbb-53e0b9467a1b",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "641e0f25-bcbd-46f8-98f9-42b0b830841a",
              "parent_uuid": "0c064322-f361-4715-adbb-53e0b9467a1b",
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
              "uuid": "ff067873-2598-459a-aef3-4817a2b3ad78",
              "parent_uuid": "0c064322-f361-4715-adbb-53e0b9467a1b",
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
              "uuid": "275b6ed6-e651-4075-89b5-8f21f3414004",
              "parent_uuid": "0c064322-f361-4715-adbb-53e0b9467a1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2c3bae9-78d6-44da-8e35-9d7ed9e34471",
                  "parent_uuid": "275b6ed6-e651-4075-89b5-8f21f3414004",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71d699b9-ce98-4eb6-88ed-eb2430d98eb1",
              "parent_uuid": "0c064322-f361-4715-adbb-53e0b9467a1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aea28a8a-a43d-40a4-8fbb-5f18409bbb28",
                  "parent_uuid": "71d699b9-ce98-4eb6-88ed-eb2430d98eb1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9779e05a-d6c9-4643-85d2-53571efd147a",
              "parent_uuid": "0c064322-f361-4715-adbb-53e0b9467a1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f77fd24-f9e9-47d7-9e30-9e00a5165ad9",
                  "parent_uuid": "9779e05a-d6c9-4643-85d2-53571efd147a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1fbbdef2-59a3-4d7a-998e-6301eb97b3ee",
              "parent_uuid": "0c064322-f361-4715-adbb-53e0b9467a1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6167c41e-34b9-4207-ae7c-34a25904481b",
                  "parent_uuid": "1fbbdef2-59a3-4d7a-998e-6301eb97b3ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "51b49c3a-896d-4c71-9ba5-9251dd409704",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e435330-efaa-4b79-aca3-9cd7944f65c8",
              "parent_uuid": "51b49c3a-896d-4c71-9ba5-9251dd409704",
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
              "uuid": "6af1e966-b144-40c5-80d3-84d4e9894e37",
              "parent_uuid": "51b49c3a-896d-4c71-9ba5-9251dd409704",
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
              "uuid": "d22a90a9-e989-4d5a-a9b7-1b8f7eb89969",
              "parent_uuid": "51b49c3a-896d-4c71-9ba5-9251dd409704",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "160d12be-d593-4832-8981-9f7a25e304f1",
                  "parent_uuid": "d22a90a9-e989-4d5a-a9b7-1b8f7eb89969",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b91f806-8db9-49cb-ae37-e659df04336a",
              "parent_uuid": "51b49c3a-896d-4c71-9ba5-9251dd409704",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8281a78-f99b-437d-9c4a-8176be576d5b",
                  "parent_uuid": "4b91f806-8db9-49cb-ae37-e659df04336a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7f5afe7-8584-4ef7-a855-d8e15643b205",
              "parent_uuid": "51b49c3a-896d-4c71-9ba5-9251dd409704",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "642245fa-2e0c-4eac-b38d-72ee14fe300d",
                  "parent_uuid": "f7f5afe7-8584-4ef7-a855-d8e15643b205",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c235ed6-29d7-421e-b00d-9bc2af924797",
              "parent_uuid": "51b49c3a-896d-4c71-9ba5-9251dd409704",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92b708d9-74ab-4e50-8777-63c19bd76a54",
                  "parent_uuid": "3c235ed6-29d7-421e-b00d-9bc2af924797",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b4a537c0-1d0e-42e4-8bce-b5c9db93be3f",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d09d1d36-d256-4fc2-8d2f-e27c87104fa2",
              "parent_uuid": "b4a537c0-1d0e-42e4-8bce-b5c9db93be3f",
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
              "uuid": "8dffea98-faac-4e65-9ec6-d12b79ac3b13",
              "parent_uuid": "b4a537c0-1d0e-42e4-8bce-b5c9db93be3f",
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
              "uuid": "ea73e6bb-a0ac-462f-9d92-dce0d5670d36",
              "parent_uuid": "b4a537c0-1d0e-42e4-8bce-b5c9db93be3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c19a040e-580e-4e92-9b0d-b4c659df8a9d",
                  "parent_uuid": "ea73e6bb-a0ac-462f-9d92-dce0d5670d36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84f91d7d-70a0-4f91-ae26-904741259b85",
              "parent_uuid": "b4a537c0-1d0e-42e4-8bce-b5c9db93be3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c468f765-66ba-404c-a9bd-a5a97d55cfcd",
                  "parent_uuid": "84f91d7d-70a0-4f91-ae26-904741259b85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b08aee29-b81d-4bbb-be88-62b69620cb31",
              "parent_uuid": "b4a537c0-1d0e-42e4-8bce-b5c9db93be3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba45175d-144b-456a-a113-9eb5bcc406ff",
                  "parent_uuid": "b08aee29-b81d-4bbb-be88-62b69620cb31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02c87dbf-85f0-4aa6-a85d-3c3ca630b0ec",
              "parent_uuid": "b4a537c0-1d0e-42e4-8bce-b5c9db93be3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10ff0588-0a5c-49fe-a17e-08d54fa0009e",
                  "parent_uuid": "02c87dbf-85f0-4aa6-a85d-3c3ca630b0ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ca4c384f-9dda-4876-9039-1eb004b31057",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "67def185-ba81-4037-93c3-c6d02d98a791",
              "parent_uuid": "ca4c384f-9dda-4876-9039-1eb004b31057",
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
          "uuid": "d01fcb09-d370-4bb0-a1a9-6380b7f6f343",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "de7324d0-6e8d-40c8-89a4-768805e6b22b",
              "parent_uuid": "d01fcb09-d370-4bb0-a1a9-6380b7f6f343",
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
          "uuid": "4e6cf6a4-5d81-4972-a07d-f1a3914cf7af",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c20bff7-3ef6-4045-9711-2a6cd7caded7",
              "parent_uuid": "4e6cf6a4-5d81-4972-a07d-f1a3914cf7af",
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
              "uuid": "6868eee3-76a4-457f-8c56-52d785387c88",
              "parent_uuid": "4e6cf6a4-5d81-4972-a07d-f1a3914cf7af",
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
              "uuid": "bd517573-a452-4d6f-afb3-5f1b6d8142e7",
              "parent_uuid": "4e6cf6a4-5d81-4972-a07d-f1a3914cf7af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "028175c4-23a1-41c7-90d0-5ee8f25c8d68",
                  "parent_uuid": "bd517573-a452-4d6f-afb3-5f1b6d8142e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8baf502c-1085-4d57-b1be-9380c7b87066",
              "parent_uuid": "4e6cf6a4-5d81-4972-a07d-f1a3914cf7af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edc9c191-9471-4534-b94c-d1601c8f592e",
                  "parent_uuid": "8baf502c-1085-4d57-b1be-9380c7b87066",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7ebe73f-09ea-4887-ab89-554dcbc910a6",
              "parent_uuid": "4e6cf6a4-5d81-4972-a07d-f1a3914cf7af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea0f444a-6814-4499-895e-d1e770722ee1",
                  "parent_uuid": "a7ebe73f-09ea-4887-ab89-554dcbc910a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c218d19-af00-434b-b599-78aefd99fb7f",
              "parent_uuid": "4e6cf6a4-5d81-4972-a07d-f1a3914cf7af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afdd51c0-6ad3-4734-afd2-9d2e7603e60f",
                  "parent_uuid": "8c218d19-af00-434b-b599-78aefd99fb7f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c76b3c75-2cd9-4b3d-ad3d-38c267caba22",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cbd54298-19ed-477c-8e83-e7402daee2f8",
              "parent_uuid": "c76b3c75-2cd9-4b3d-ad3d-38c267caba22",
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
              "uuid": "98ff8baf-dbd4-429b-9f65-e252d31b2c9b",
              "parent_uuid": "c76b3c75-2cd9-4b3d-ad3d-38c267caba22",
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
              "uuid": "a02c58ff-7c06-4973-874a-87d6c8719293",
              "parent_uuid": "c76b3c75-2cd9-4b3d-ad3d-38c267caba22",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b3d5246-e561-41e9-ba0a-3cbafab6eeb7",
                  "parent_uuid": "a02c58ff-7c06-4973-874a-87d6c8719293",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63f72e38-1a3e-4f45-b6b2-4523be5d6d5b",
              "parent_uuid": "c76b3c75-2cd9-4b3d-ad3d-38c267caba22",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44395d1c-bbef-4ba2-9a62-dcc7ef96a570",
                  "parent_uuid": "63f72e38-1a3e-4f45-b6b2-4523be5d6d5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9b3a986-37c9-4a7e-8e0e-4d854020be0b",
              "parent_uuid": "c76b3c75-2cd9-4b3d-ad3d-38c267caba22",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a13c65e2-85e4-4b22-9d57-a0cbe07bb401",
                  "parent_uuid": "c9b3a986-37c9-4a7e-8e0e-4d854020be0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4fdcce5-e83d-464c-b72c-5365dee1fd2d",
              "parent_uuid": "c76b3c75-2cd9-4b3d-ad3d-38c267caba22",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c369829-37ba-4934-9fee-73fe10f386bd",
                  "parent_uuid": "c4fdcce5-e83d-464c-b72c-5365dee1fd2d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "619714e2-7a87-4f19-8f6b-7e31f66f994c",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f23f38fc-5e3b-4b93-81c7-48b10d91ffd2",
              "parent_uuid": "619714e2-7a87-4f19-8f6b-7e31f66f994c",
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
              "uuid": "1883a3b0-6997-4e55-a8fa-36ccc85d8bc9",
              "parent_uuid": "619714e2-7a87-4f19-8f6b-7e31f66f994c",
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
              "uuid": "a65b28aa-2636-43c4-a027-474f313fe82c",
              "parent_uuid": "619714e2-7a87-4f19-8f6b-7e31f66f994c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a3a813d-2ae4-4da1-83c8-72412f62e1e4",
                  "parent_uuid": "a65b28aa-2636-43c4-a027-474f313fe82c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22995666-44a8-4ec6-ad95-d327e481c8d7",
              "parent_uuid": "619714e2-7a87-4f19-8f6b-7e31f66f994c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fba7c8b1-3a09-474f-8faa-66761c495377",
                  "parent_uuid": "22995666-44a8-4ec6-ad95-d327e481c8d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c3d585e-0de3-4d8b-abb5-ef270bd9b21b",
              "parent_uuid": "619714e2-7a87-4f19-8f6b-7e31f66f994c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcf748fd-1a49-4647-8a0a-e22f54429b78",
                  "parent_uuid": "3c3d585e-0de3-4d8b-abb5-ef270bd9b21b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1512514-437f-4e47-b6f9-77c786e61657",
              "parent_uuid": "619714e2-7a87-4f19-8f6b-7e31f66f994c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c62718e6-3132-4f09-a32d-aef0f2cc59e7",
                  "parent_uuid": "d1512514-437f-4e47-b6f9-77c786e61657",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "df7c97c3-6c81-4528-a0d3-54706b38941f",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee608781-fb21-4961-93a1-f038356fa54c",
              "parent_uuid": "df7c97c3-6c81-4528-a0d3-54706b38941f",
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
              "uuid": "40b4838c-3ba1-4b9f-9591-8518122c7f09",
              "parent_uuid": "df7c97c3-6c81-4528-a0d3-54706b38941f",
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
              "uuid": "93f0ece7-abc8-4816-92bf-de528a116ccd",
              "parent_uuid": "df7c97c3-6c81-4528-a0d3-54706b38941f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da0e8e12-83c7-450f-8045-e48938790d86",
                  "parent_uuid": "93f0ece7-abc8-4816-92bf-de528a116ccd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9785f4a8-1d6b-489d-af43-4b591bd22d0e",
              "parent_uuid": "df7c97c3-6c81-4528-a0d3-54706b38941f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd0ef23f-c8ca-450b-90c7-8ecee6e85a7b",
                  "parent_uuid": "9785f4a8-1d6b-489d-af43-4b591bd22d0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "628edc29-ccbb-413b-8f5a-fefabb1c26c0",
              "parent_uuid": "df7c97c3-6c81-4528-a0d3-54706b38941f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0eec62b5-6094-475e-b595-28e065cd105a",
                  "parent_uuid": "628edc29-ccbb-413b-8f5a-fefabb1c26c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "439e990a-cfed-4f17-9786-b9f8b03abe12",
              "parent_uuid": "df7c97c3-6c81-4528-a0d3-54706b38941f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "890db600-8f01-43f4-9650-a1146798066b",
                  "parent_uuid": "439e990a-cfed-4f17-9786-b9f8b03abe12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3b0c847c-d381-4792-8572-822a27aaf4f2",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb585d77-9467-402c-8e62-a2e39b31365e",
              "parent_uuid": "3b0c847c-d381-4792-8572-822a27aaf4f2",
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
              "uuid": "a0f002d9-2de9-474c-9efc-35b72460c337",
              "parent_uuid": "3b0c847c-d381-4792-8572-822a27aaf4f2",
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
              "uuid": "62dc59b3-9ea3-4b37-8fdb-827eb59589b0",
              "parent_uuid": "3b0c847c-d381-4792-8572-822a27aaf4f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28926b51-1b9d-4b20-9a01-4c68878167e2",
                  "parent_uuid": "62dc59b3-9ea3-4b37-8fdb-827eb59589b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a55c7e30-0880-4a39-b55a-454244cbdd7d",
              "parent_uuid": "3b0c847c-d381-4792-8572-822a27aaf4f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd7c61d4-b00c-45d4-8a0c-6dc4d054a102",
                  "parent_uuid": "a55c7e30-0880-4a39-b55a-454244cbdd7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7756391e-4547-4589-888e-cbd27fcaba60",
              "parent_uuid": "3b0c847c-d381-4792-8572-822a27aaf4f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f61aa215-216d-4fb5-bcd9-8a6222b3a81b",
                  "parent_uuid": "7756391e-4547-4589-888e-cbd27fcaba60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05826020-77aa-43ec-b022-545aa58e8e83",
              "parent_uuid": "3b0c847c-d381-4792-8572-822a27aaf4f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a6a7287-b5fb-459a-b000-afb23161e602",
                  "parent_uuid": "05826020-77aa-43ec-b022-545aa58e8e83",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1271292c-7c2f-4c3f-b7d1-d63a3add7a2f",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e4ffbaf-0fc2-43df-8819-bf14a34ce08b",
              "parent_uuid": "1271292c-7c2f-4c3f-b7d1-d63a3add7a2f",
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
              "uuid": "b9f1e45f-d7e3-4ed1-8b60-987acbd6a119",
              "parent_uuid": "1271292c-7c2f-4c3f-b7d1-d63a3add7a2f",
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
              "uuid": "2f41b01e-856a-47f3-abea-3c592bace7c4",
              "parent_uuid": "1271292c-7c2f-4c3f-b7d1-d63a3add7a2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "365355ef-fdd5-40e9-9a3c-14a9cf065cf5",
                  "parent_uuid": "2f41b01e-856a-47f3-abea-3c592bace7c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4189c12b-3fd0-43da-8305-93eac421a5be",
              "parent_uuid": "1271292c-7c2f-4c3f-b7d1-d63a3add7a2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfec0b0d-be72-42d2-a997-82e84ffdc853",
                  "parent_uuid": "4189c12b-3fd0-43da-8305-93eac421a5be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5df27869-c713-4da9-9116-60843d9c0635",
              "parent_uuid": "1271292c-7c2f-4c3f-b7d1-d63a3add7a2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b80303b7-2ece-48aa-97ee-4b0213915a0f",
                  "parent_uuid": "5df27869-c713-4da9-9116-60843d9c0635",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08f5dfaa-5c08-47bf-aa90-372eb9ece854",
              "parent_uuid": "1271292c-7c2f-4c3f-b7d1-d63a3add7a2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4f93178-facd-471d-9e62-1ce03f70a6c8",
                  "parent_uuid": "08f5dfaa-5c08-47bf-aa90-372eb9ece854",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e7556940-8ec3-4056-bac5-d4e531f789bb",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "161f944f-94d5-418a-bca1-968e6ce58c47",
              "parent_uuid": "e7556940-8ec3-4056-bac5-d4e531f789bb",
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
              "uuid": "451b88b6-c03e-428c-9fd3-6f9d048ce559",
              "parent_uuid": "e7556940-8ec3-4056-bac5-d4e531f789bb",
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
              "uuid": "a1d703e7-bf58-4f78-bc2f-ea2e04a6f4c1",
              "parent_uuid": "e7556940-8ec3-4056-bac5-d4e531f789bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5b003f7-5faf-4e96-9ef7-e95c3eb9c7cd",
                  "parent_uuid": "a1d703e7-bf58-4f78-bc2f-ea2e04a6f4c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83785f51-e30e-47f3-8100-75266a6ef23c",
              "parent_uuid": "e7556940-8ec3-4056-bac5-d4e531f789bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2de47ccf-2d91-461f-81f1-d500edad2bff",
                  "parent_uuid": "83785f51-e30e-47f3-8100-75266a6ef23c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25d273ce-18b8-47de-85b2-2fe227a34eba",
              "parent_uuid": "e7556940-8ec3-4056-bac5-d4e531f789bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1b22cb1-edf7-481f-ab70-802bf276e646",
                  "parent_uuid": "25d273ce-18b8-47de-85b2-2fe227a34eba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "014c2b5f-c872-49eb-b2a6-04eb7d985baa",
              "parent_uuid": "e7556940-8ec3-4056-bac5-d4e531f789bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "811ea43c-8057-4225-9dc0-92471ba8b6e2",
                  "parent_uuid": "014c2b5f-c872-49eb-b2a6-04eb7d985baa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "390933ef-ac24-4035-81ca-c65494ebb3e9",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e6c8836-0d4b-499c-bb43-7005b49060ea",
              "parent_uuid": "390933ef-ac24-4035-81ca-c65494ebb3e9",
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
              "uuid": "ff391813-acf7-46e0-9625-ce787facb092",
              "parent_uuid": "390933ef-ac24-4035-81ca-c65494ebb3e9",
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
              "uuid": "7eeb0d28-1e69-4239-865e-b5fc3d0d90bc",
              "parent_uuid": "390933ef-ac24-4035-81ca-c65494ebb3e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61670dfc-5e43-4529-adf1-e849871e6861",
                  "parent_uuid": "7eeb0d28-1e69-4239-865e-b5fc3d0d90bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b24cf63-515f-4359-94aa-3c3906f74f31",
              "parent_uuid": "390933ef-ac24-4035-81ca-c65494ebb3e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca50e289-af52-419d-83bd-86c2afc573ed",
                  "parent_uuid": "9b24cf63-515f-4359-94aa-3c3906f74f31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c90c363-5cdd-498c-8e66-d5a85a5e1d79",
              "parent_uuid": "390933ef-ac24-4035-81ca-c65494ebb3e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0666280c-24d9-4e9b-adbe-479ce14e902e",
                  "parent_uuid": "4c90c363-5cdd-498c-8e66-d5a85a5e1d79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69f40cc2-0333-4092-98bd-bc0ae44523b0",
              "parent_uuid": "390933ef-ac24-4035-81ca-c65494ebb3e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4fa8c54f-eb5b-44c1-98cd-c43b6137fd94",
                  "parent_uuid": "69f40cc2-0333-4092-98bd-bc0ae44523b0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "542f28bd-c75b-4389-831d-030b14307e1b",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "32e10e23-d2c1-4758-8ea7-22dcf855a597",
              "parent_uuid": "542f28bd-c75b-4389-831d-030b14307e1b",
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
          "uuid": "6617d6f4-cca7-45fb-b689-7e23c0047045",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "852b28bd-73cc-40a3-b258-868c4c9b0ca5",
              "parent_uuid": "6617d6f4-cca7-45fb-b689-7e23c0047045",
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
              "uuid": "735269f2-ca2d-435e-a58e-1b60b93f6d63",
              "parent_uuid": "6617d6f4-cca7-45fb-b689-7e23c0047045",
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
              "uuid": "70adeb3a-526d-44b4-b702-87b924ac131a",
              "parent_uuid": "6617d6f4-cca7-45fb-b689-7e23c0047045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3929843-0331-4794-a3f5-4f16ae9ac128",
                  "parent_uuid": "70adeb3a-526d-44b4-b702-87b924ac131a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4920a44e-17f8-418c-ab06-4c8f6a1ae301",
              "parent_uuid": "6617d6f4-cca7-45fb-b689-7e23c0047045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb1577d4-4761-4a68-87c4-aea10b539d38",
                  "parent_uuid": "4920a44e-17f8-418c-ab06-4c8f6a1ae301",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bb43a4d-feb1-4a07-8aaa-9dcf6606c095",
              "parent_uuid": "6617d6f4-cca7-45fb-b689-7e23c0047045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0111c423-6cbe-4211-a640-6b6bf01cad8d",
                  "parent_uuid": "7bb43a4d-feb1-4a07-8aaa-9dcf6606c095",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "812baadd-b461-489a-9ad8-b5c03c8cdb58",
              "parent_uuid": "6617d6f4-cca7-45fb-b689-7e23c0047045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9eec13de-cc0e-4624-b3b7-e1e9ed9993b9",
                  "parent_uuid": "812baadd-b461-489a-9ad8-b5c03c8cdb58",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70acef04-243b-44d4-b259-2c13662cb875",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b90a8543-f728-4b9a-bf4b-2a27db06088e",
              "parent_uuid": "70acef04-243b-44d4-b259-2c13662cb875",
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
              "uuid": "97e57364-f4b4-4875-b309-8904fcb29388",
              "parent_uuid": "70acef04-243b-44d4-b259-2c13662cb875",
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
              "uuid": "a7372b7f-a71a-4ee7-993b-3c4022900ab3",
              "parent_uuid": "70acef04-243b-44d4-b259-2c13662cb875",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bf895fc-c8cd-4220-be49-175ec5e9ddae",
                  "parent_uuid": "a7372b7f-a71a-4ee7-993b-3c4022900ab3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9bec93e-0c03-4393-809a-17f8c14ebc6d",
              "parent_uuid": "70acef04-243b-44d4-b259-2c13662cb875",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "993e491e-bd8c-4ec4-8fc8-c1b71173d134",
                  "parent_uuid": "a9bec93e-0c03-4393-809a-17f8c14ebc6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62fb4668-a2cb-4647-bb57-ff3809987ef9",
              "parent_uuid": "70acef04-243b-44d4-b259-2c13662cb875",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4371ef54-1eaf-4faf-8cf5-946b1b35dcf0",
                  "parent_uuid": "62fb4668-a2cb-4647-bb57-ff3809987ef9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e751e1e5-afa8-4753-8cd2-a11995a6b6c0",
              "parent_uuid": "70acef04-243b-44d4-b259-2c13662cb875",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e1a3b5a-e584-496b-a065-e4e55bb90e24",
                  "parent_uuid": "e751e1e5-afa8-4753-8cd2-a11995a6b6c0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b52b0b6f-7d4a-4a9d-a9a4-913ff5c1788d",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df494ac7-98a5-40a6-8ada-b6eb802cf136",
              "parent_uuid": "b52b0b6f-7d4a-4a9d-a9a4-913ff5c1788d",
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
          "uuid": "f774711c-fe70-4a9d-a2b3-8cea89a5664a",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e3bcfc2-fa73-4e24-828f-ac47e97ce0d1",
              "parent_uuid": "f774711c-fe70-4a9d-a2b3-8cea89a5664a",
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
          "uuid": "c53d843b-8aaf-46a4-b684-61256e7b041c",
          "parent_uuid": "b079ddf9-3a8f-41de-bfe8-390d4bc5400a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e164a02c-c7e3-4da5-883e-eccff2f22866",
              "parent_uuid": "c53d843b-8aaf-46a4-b684-61256e7b041c",
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
                  "uuid": "6b433d31-7212-4364-a2fc-e2b2df1f5913",
                  "parent_uuid": "e164a02c-c7e3-4da5-883e-eccff2f22866",
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

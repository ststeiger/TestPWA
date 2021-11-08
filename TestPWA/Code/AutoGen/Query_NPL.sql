
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
  "uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "579574a6-71cb-46b4-8dfc-a4b1ba5c2152",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "66fdc5c3-cf25-4563-b0a7-a53ff7a0ef29",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "fc9478cf-80ba-47af-8ea7-f5675e5674c9",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "e3913a37-86bf-48e3-89c6-828059dcac57",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "e6ff665d-35f7-4c56-8246-83b64cb3969f",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "2ed41e2b-3e9f-4d8b-ae5c-4e656464b37e",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "2c17ed54-d36b-4a12-80e7-5b54759d2ef3",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
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
      "uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
      "parent_uuid": "6c721b35-3e3f-40d8-ac67-f97f5a7259b4",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "c20944ae-984f-41a4-b543-7f46a90c5fec",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "04a47f29-586a-4216-abdb-044667d4265f",
              "parent_uuid": "c20944ae-984f-41a4-b543-7f46a90c5fec",
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
              "uuid": "8ecf7f39-f256-4aa4-b470-89fb0d951098",
              "parent_uuid": "c20944ae-984f-41a4-b543-7f46a90c5fec",
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
              "uuid": "af4ce093-dfd1-4373-bdf8-6a42a1b29b74",
              "parent_uuid": "c20944ae-984f-41a4-b543-7f46a90c5fec",
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
              "uuid": "e4cb0d5d-749a-4823-944b-5d2d5f89dc53",
              "parent_uuid": "c20944ae-984f-41a4-b543-7f46a90c5fec",
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
          "uuid": "f48abdaf-b382-406f-82c1-5a1d6e5b14f4",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "beca0a8b-3dbe-47bd-adf7-65e11591a931",
              "parent_uuid": "f48abdaf-b382-406f-82c1-5a1d6e5b14f4",
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
              "uuid": "4cba5a24-a69c-41b3-8e46-77d780690bae",
              "parent_uuid": "f48abdaf-b382-406f-82c1-5a1d6e5b14f4",
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
              "uuid": "67ee9820-2737-4fe4-9556-3d4a24732b66",
              "parent_uuid": "f48abdaf-b382-406f-82c1-5a1d6e5b14f4",
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
              "uuid": "630a2298-c800-463a-a2cc-de4f112cf85f",
              "parent_uuid": "f48abdaf-b382-406f-82c1-5a1d6e5b14f4",
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
          "uuid": "149ba192-44e5-4f9b-af0c-6c521bf54a78",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "650311cf-eef8-4f9e-b432-d7a299401b34",
              "parent_uuid": "149ba192-44e5-4f9b-af0c-6c521bf54a78",
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
              "uuid": "8803c567-5bb6-4a0c-af52-303c7fa8d6d2",
              "parent_uuid": "149ba192-44e5-4f9b-af0c-6c521bf54a78",
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
              "uuid": "9e04b505-29a9-42ca-8e8d-2ec187e3b59f",
              "parent_uuid": "149ba192-44e5-4f9b-af0c-6c521bf54a78",
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
              "uuid": "a61d73c7-c167-485d-8d56-2d5c66744fdb",
              "parent_uuid": "149ba192-44e5-4f9b-af0c-6c521bf54a78",
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
              "uuid": "ec150c5e-43a2-4c0c-89b7-f5ccb14fda96",
              "parent_uuid": "149ba192-44e5-4f9b-af0c-6c521bf54a78",
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
              "uuid": "e0699e27-4a00-4975-bc76-f1e660674fc9",
              "parent_uuid": "149ba192-44e5-4f9b-af0c-6c521bf54a78",
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
          "uuid": "e81e1a93-546f-4012-b995-03009ef7befa",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c7d9510f-f03d-448f-8643-0200562a5059",
              "parent_uuid": "e81e1a93-546f-4012-b995-03009ef7befa",
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
          "uuid": "7d125cf3-5978-492f-a3e0-e449f8647839",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fd2f7ef-d5da-4790-8649-c5ea77f67874",
              "parent_uuid": "7d125cf3-5978-492f-a3e0-e449f8647839",
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
              "uuid": "f6fd310e-3c4e-4d62-b337-101b0e23049b",
              "parent_uuid": "7d125cf3-5978-492f-a3e0-e449f8647839",
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
              "uuid": "f374b9a1-00db-452f-b74e-f0dfd7ca540b",
              "parent_uuid": "7d125cf3-5978-492f-a3e0-e449f8647839",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db950fe0-13b6-4905-9cb3-106088abc56b",
                  "parent_uuid": "f374b9a1-00db-452f-b74e-f0dfd7ca540b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbc0a167-00b5-43e0-9059-f4deb29abc82",
              "parent_uuid": "7d125cf3-5978-492f-a3e0-e449f8647839",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "363645a0-54a9-40a2-8711-8f931c2de2f4",
                  "parent_uuid": "bbc0a167-00b5-43e0-9059-f4deb29abc82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37ffa429-ccf0-4cbd-8854-3f6e6f9a41f2",
              "parent_uuid": "7d125cf3-5978-492f-a3e0-e449f8647839",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64f1dde9-84ee-44ed-afe2-a3e0ddcc7532",
                  "parent_uuid": "37ffa429-ccf0-4cbd-8854-3f6e6f9a41f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b7cf319-fa7d-4c17-96bf-64141903950d",
              "parent_uuid": "7d125cf3-5978-492f-a3e0-e449f8647839",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76c03390-fe97-43aa-a80d-c4794337621d",
                  "parent_uuid": "0b7cf319-fa7d-4c17-96bf-64141903950d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "add5d801-8439-44ac-a8ea-3b651725befa",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "466e9b8d-a427-44ed-b90f-2fffc2fcd0ee",
              "parent_uuid": "add5d801-8439-44ac-a8ea-3b651725befa",
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
              "uuid": "d2ffb5ba-c395-448c-9e5d-f7c9404dc683",
              "parent_uuid": "add5d801-8439-44ac-a8ea-3b651725befa",
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
              "uuid": "69acfa09-2678-4a61-acd7-4894135a4fed",
              "parent_uuid": "add5d801-8439-44ac-a8ea-3b651725befa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1970c220-c8ba-4136-8f35-be62701ccfa8",
                  "parent_uuid": "69acfa09-2678-4a61-acd7-4894135a4fed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c052613e-05c2-462e-b797-59bda2525c64",
              "parent_uuid": "add5d801-8439-44ac-a8ea-3b651725befa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b43cba4f-7f47-4e3a-9164-c5c3d7f74acd",
                  "parent_uuid": "c052613e-05c2-462e-b797-59bda2525c64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a5af7e6-333e-48a4-89e0-e5030fe58b60",
              "parent_uuid": "add5d801-8439-44ac-a8ea-3b651725befa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e81c640-5a17-42c8-83da-92c0afe82fe7",
                  "parent_uuid": "4a5af7e6-333e-48a4-89e0-e5030fe58b60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69d89c53-e56e-4761-b39d-222055546abc",
              "parent_uuid": "add5d801-8439-44ac-a8ea-3b651725befa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af9da7b6-e2ff-4022-a984-955a1119b209",
                  "parent_uuid": "69d89c53-e56e-4761-b39d-222055546abc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "61d4a72b-0103-4aeb-a5a3-3699257ac469",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c6a653b-0373-4196-811a-4751ca2da046",
              "parent_uuid": "61d4a72b-0103-4aeb-a5a3-3699257ac469",
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
              "uuid": "068e8d3b-8367-4f69-911f-b70e4f088567",
              "parent_uuid": "61d4a72b-0103-4aeb-a5a3-3699257ac469",
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
              "uuid": "e2ded7ac-cda1-4620-9bfb-a263119ebf73",
              "parent_uuid": "61d4a72b-0103-4aeb-a5a3-3699257ac469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34e78ea4-48b0-4fae-b12c-8fdfa549ee10",
                  "parent_uuid": "e2ded7ac-cda1-4620-9bfb-a263119ebf73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7fb2c18-4d1e-46f9-acbf-aa4d2885432b",
              "parent_uuid": "61d4a72b-0103-4aeb-a5a3-3699257ac469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6cd10cf-ae90-4635-b101-1e4df9a08696",
                  "parent_uuid": "c7fb2c18-4d1e-46f9-acbf-aa4d2885432b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9683052e-0116-4354-9ee4-020a5a4e96be",
              "parent_uuid": "61d4a72b-0103-4aeb-a5a3-3699257ac469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbeaeeaf-d88d-4e1d-a8f6-6a638bb8e6c9",
                  "parent_uuid": "9683052e-0116-4354-9ee4-020a5a4e96be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "235fc55c-ceb3-4984-9ea0-c7c255231b1e",
              "parent_uuid": "61d4a72b-0103-4aeb-a5a3-3699257ac469",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad6eab71-7979-4824-b959-43e37ac494ed",
                  "parent_uuid": "235fc55c-ceb3-4984-9ea0-c7c255231b1e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "509602de-ad68-4a05-8be8-caddf9043759",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "738d2eaf-2cee-477c-a2bb-7be510eac834",
              "parent_uuid": "509602de-ad68-4a05-8be8-caddf9043759",
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
              "uuid": "e3a9f270-20a4-4c2e-a51f-434e6273bad2",
              "parent_uuid": "509602de-ad68-4a05-8be8-caddf9043759",
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
              "uuid": "e9664af9-9d44-42d6-9028-69ac2d68870e",
              "parent_uuid": "509602de-ad68-4a05-8be8-caddf9043759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4698e0b4-847c-4953-a17c-9baaad6b6f67",
                  "parent_uuid": "e9664af9-9d44-42d6-9028-69ac2d68870e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd366821-957b-4236-a6dd-81152cd220a4",
              "parent_uuid": "509602de-ad68-4a05-8be8-caddf9043759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0843f3a4-516b-42fa-ae02-e928a5992299",
                  "parent_uuid": "fd366821-957b-4236-a6dd-81152cd220a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93cb321e-479b-40c3-9afd-ad52cc7dc15c",
              "parent_uuid": "509602de-ad68-4a05-8be8-caddf9043759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "223ff6ad-5e8d-407e-8aaf-4c4a41f73746",
                  "parent_uuid": "93cb321e-479b-40c3-9afd-ad52cc7dc15c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "950101fd-2e2c-408f-ab2e-2ee88ba9ab04",
              "parent_uuid": "509602de-ad68-4a05-8be8-caddf9043759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "254e62b9-7882-405b-b223-aeee033a0336",
                  "parent_uuid": "950101fd-2e2c-408f-ab2e-2ee88ba9ab04",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3e85dc8e-d470-455d-a30f-44acc82f7a7b",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf936fc6-be01-4b7f-b8cc-4f64da1fffa0",
              "parent_uuid": "3e85dc8e-d470-455d-a30f-44acc82f7a7b",
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
              "uuid": "3e378fa9-a7aa-4a9f-a1e2-511bf003a210",
              "parent_uuid": "3e85dc8e-d470-455d-a30f-44acc82f7a7b",
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
              "uuid": "493730b7-d6cf-42bb-9a95-e429cdfcc122",
              "parent_uuid": "3e85dc8e-d470-455d-a30f-44acc82f7a7b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fa10a3a0-c132-459a-9837-59bf6b9c9c6c",
                  "parent_uuid": "493730b7-d6cf-42bb-9a95-e429cdfcc122",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40855c01-09a7-4775-acac-c7d659b53607",
              "parent_uuid": "3e85dc8e-d470-455d-a30f-44acc82f7a7b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "80c80c1d-2486-4759-b6b2-8d8827551320",
                  "parent_uuid": "40855c01-09a7-4775-acac-c7d659b53607",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7eadc687-b752-411f-bd6f-b73ef2ba7917",
              "parent_uuid": "3e85dc8e-d470-455d-a30f-44acc82f7a7b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "78554afb-9702-47a8-b3c6-a5d9e479cce9",
                  "parent_uuid": "7eadc687-b752-411f-bd6f-b73ef2ba7917",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10350efd-c150-4645-9203-27fdc1524da0",
              "parent_uuid": "3e85dc8e-d470-455d-a30f-44acc82f7a7b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c5e1e564-54ef-4452-bf0b-4dca5ef5c7a3",
                  "parent_uuid": "10350efd-c150-4645-9203-27fdc1524da0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f6761177-c3ef-42a6-af5e-38d5a4f5660a",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8dbe9cc-c81a-4990-a26a-52b054634233",
              "parent_uuid": "f6761177-c3ef-42a6-af5e-38d5a4f5660a",
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
              "uuid": "ae84cc5b-a22a-4533-b791-3f517e7bec79",
              "parent_uuid": "f6761177-c3ef-42a6-af5e-38d5a4f5660a",
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
              "uuid": "ec87a303-7a88-4018-992f-906f31662c5f",
              "parent_uuid": "f6761177-c3ef-42a6-af5e-38d5a4f5660a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82240d86-3e1b-490e-b7ce-6f40b85da094",
                  "parent_uuid": "ec87a303-7a88-4018-992f-906f31662c5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7691c3e4-fee1-4536-ab0e-7211285dda6e",
              "parent_uuid": "f6761177-c3ef-42a6-af5e-38d5a4f5660a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "551c384e-1233-4427-83e8-c565a93e9cfe",
                  "parent_uuid": "7691c3e4-fee1-4536-ab0e-7211285dda6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a9f5655-79c6-490a-8bf0-553aa619a929",
              "parent_uuid": "f6761177-c3ef-42a6-af5e-38d5a4f5660a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2903d979-7631-4a34-b8d2-0c3c8f13a4d1",
                  "parent_uuid": "6a9f5655-79c6-490a-8bf0-553aa619a929",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "838e9989-a9a1-4c41-8b05-e20a796c1c00",
              "parent_uuid": "f6761177-c3ef-42a6-af5e-38d5a4f5660a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a1622ad-afa5-40f5-af18-ada03d408212",
                  "parent_uuid": "838e9989-a9a1-4c41-8b05-e20a796c1c00",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26e07c8c-1bdd-4802-a4d4-bca402deb164",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72d200b9-5944-4f99-afa8-0f76224b3fbf",
              "parent_uuid": "26e07c8c-1bdd-4802-a4d4-bca402deb164",
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
              "uuid": "e853954c-3432-4eeb-9853-51416f507c46",
              "parent_uuid": "26e07c8c-1bdd-4802-a4d4-bca402deb164",
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
              "uuid": "b7f93baf-5086-4c09-b9bf-4eb9643481e5",
              "parent_uuid": "26e07c8c-1bdd-4802-a4d4-bca402deb164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6952e03a-ebe9-4245-96a9-68ca21067e3b",
                  "parent_uuid": "b7f93baf-5086-4c09-b9bf-4eb9643481e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71a53054-ebdf-4e67-accb-94d0ece28f8b",
              "parent_uuid": "26e07c8c-1bdd-4802-a4d4-bca402deb164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d391ff4-dff2-4986-bd2c-89019b13c54b",
                  "parent_uuid": "71a53054-ebdf-4e67-accb-94d0ece28f8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42ed6c7d-bb1b-4758-b956-e3b9fc266c19",
              "parent_uuid": "26e07c8c-1bdd-4802-a4d4-bca402deb164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48fd418f-e221-4ca1-9caf-9f6e47ed4a46",
                  "parent_uuid": "42ed6c7d-bb1b-4758-b956-e3b9fc266c19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80f88be1-48c6-49e5-a62a-aeaa10c6025d",
              "parent_uuid": "26e07c8c-1bdd-4802-a4d4-bca402deb164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bf9f0b8-fd20-406f-bee5-2a1d9b40cb64",
                  "parent_uuid": "80f88be1-48c6-49e5-a62a-aeaa10c6025d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e34ed802-13ae-4c8c-b6b1-df5e00ebce07",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "255d2ca0-6b5a-4aba-af36-75251edd2bac",
              "parent_uuid": "e34ed802-13ae-4c8c-b6b1-df5e00ebce07",
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
              "uuid": "acce4f5a-15af-44d5-af93-64fc99af6441",
              "parent_uuid": "e34ed802-13ae-4c8c-b6b1-df5e00ebce07",
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
              "uuid": "3433872d-64d6-451c-8cdd-89cb5d875e1a",
              "parent_uuid": "e34ed802-13ae-4c8c-b6b1-df5e00ebce07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20e0754d-9d45-48fc-9b44-152a83d21c8f",
                  "parent_uuid": "3433872d-64d6-451c-8cdd-89cb5d875e1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96071d26-393f-4d22-9639-830c0560eb39",
              "parent_uuid": "e34ed802-13ae-4c8c-b6b1-df5e00ebce07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1775d435-6f44-474a-aee7-710272ee24fc",
                  "parent_uuid": "96071d26-393f-4d22-9639-830c0560eb39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e73675ce-c9f2-4549-9598-7baddb484a6f",
              "parent_uuid": "e34ed802-13ae-4c8c-b6b1-df5e00ebce07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a3f9e90-f472-47b1-947d-a380b93c789a",
                  "parent_uuid": "e73675ce-c9f2-4549-9598-7baddb484a6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2da480f6-e756-416f-bf04-a83007f5748d",
              "parent_uuid": "e34ed802-13ae-4c8c-b6b1-df5e00ebce07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b97a5434-c207-474d-b6cc-aa15c37d1753",
                  "parent_uuid": "2da480f6-e756-416f-bf04-a83007f5748d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c9113e49-428e-4640-a54a-f047bc51eb43",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "17c13a3e-e7fe-48eb-b0f7-69d344b36cbf",
              "parent_uuid": "c9113e49-428e-4640-a54a-f047bc51eb43",
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
              "uuid": "b2be44ac-eec8-4fd8-975c-8281cff45c7c",
              "parent_uuid": "c9113e49-428e-4640-a54a-f047bc51eb43",
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
              "uuid": "76fa5101-aa82-4537-937f-001954e7ea25",
              "parent_uuid": "c9113e49-428e-4640-a54a-f047bc51eb43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03a153f4-19cc-4e06-843e-043aaef38525",
                  "parent_uuid": "76fa5101-aa82-4537-937f-001954e7ea25",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b08180e9-4dd1-4a96-b499-30566b8328f8",
              "parent_uuid": "c9113e49-428e-4640-a54a-f047bc51eb43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ee278c5-4fcf-4e21-b0e2-23873979254e",
                  "parent_uuid": "b08180e9-4dd1-4a96-b499-30566b8328f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cff5382c-fbc7-4dee-9822-075613f90fca",
              "parent_uuid": "c9113e49-428e-4640-a54a-f047bc51eb43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e11f939-3cd5-45b0-a614-5f9106b91253",
                  "parent_uuid": "cff5382c-fbc7-4dee-9822-075613f90fca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1845053c-6d6d-4e2f-9379-6bf10f051f1b",
              "parent_uuid": "c9113e49-428e-4640-a54a-f047bc51eb43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03f3ef1f-6f1e-40e7-80c1-b98227c14b50",
                  "parent_uuid": "1845053c-6d6d-4e2f-9379-6bf10f051f1b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b53a35c0-a4e3-42ce-be66-d9db6c7366fb",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5fe7d435-0e65-4519-b87e-a7d1bdc05165",
              "parent_uuid": "b53a35c0-a4e3-42ce-be66-d9db6c7366fb",
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
              "uuid": "fdcc2b3f-97f6-4920-844e-3782ad6f26d8",
              "parent_uuid": "b53a35c0-a4e3-42ce-be66-d9db6c7366fb",
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
              "uuid": "18c9d3ea-57fa-4a32-9581-2083f192b520",
              "parent_uuid": "b53a35c0-a4e3-42ce-be66-d9db6c7366fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3d90e5e-ecc4-43f1-bcb8-ca191198ab54",
                  "parent_uuid": "18c9d3ea-57fa-4a32-9581-2083f192b520",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05c94a59-07d7-4446-8f17-9191e47b6dee",
              "parent_uuid": "b53a35c0-a4e3-42ce-be66-d9db6c7366fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1492818a-982b-458f-b9f1-f570f010e590",
                  "parent_uuid": "05c94a59-07d7-4446-8f17-9191e47b6dee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72269716-1c39-4b03-a1f3-e045f7b1d740",
              "parent_uuid": "b53a35c0-a4e3-42ce-be66-d9db6c7366fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c715c79-7ee3-4ca7-a1af-a88d4c404b5e",
                  "parent_uuid": "72269716-1c39-4b03-a1f3-e045f7b1d740",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3f7f146-8814-4c3e-b6e5-04a69d9c3528",
              "parent_uuid": "b53a35c0-a4e3-42ce-be66-d9db6c7366fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1688200e-816c-46a5-81c9-ca956e3c5c6f",
                  "parent_uuid": "d3f7f146-8814-4c3e-b6e5-04a69d9c3528",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e88432f6-522f-45c8-9b28-4a5774daed05",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "620ea10d-5e16-4665-9ddc-96e899bcf169",
              "parent_uuid": "e88432f6-522f-45c8-9b28-4a5774daed05",
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
              "uuid": "9a154755-4b8a-4443-a228-78a5d4c5c5c1",
              "parent_uuid": "e88432f6-522f-45c8-9b28-4a5774daed05",
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
              "uuid": "415c36a5-d62f-45c7-be13-5e0d379ee0d6",
              "parent_uuid": "e88432f6-522f-45c8-9b28-4a5774daed05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72d228c4-8bcf-4e8f-878e-94859b1f38ea",
                  "parent_uuid": "415c36a5-d62f-45c7-be13-5e0d379ee0d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5dc18e31-820c-4628-a241-16ec7f8b27db",
              "parent_uuid": "e88432f6-522f-45c8-9b28-4a5774daed05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a258870-7023-4613-b144-371c2ac631a1",
                  "parent_uuid": "5dc18e31-820c-4628-a241-16ec7f8b27db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f174127e-3d27-4691-a8e3-181e460daeda",
              "parent_uuid": "e88432f6-522f-45c8-9b28-4a5774daed05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5b12b08-3a94-45a6-b467-578dc152f782",
                  "parent_uuid": "f174127e-3d27-4691-a8e3-181e460daeda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "463f3df1-5dcb-4bf2-ac98-1c5a9660152d",
              "parent_uuid": "e88432f6-522f-45c8-9b28-4a5774daed05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f5f8a25-d85c-41d4-b41f-49dd30ca2737",
                  "parent_uuid": "463f3df1-5dcb-4bf2-ac98-1c5a9660152d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "36e4d562-8c8c-4cf0-a8b6-803fc6094d6f",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a7c42cf-8e89-40ee-8788-bc909ea0043a",
              "parent_uuid": "36e4d562-8c8c-4cf0-a8b6-803fc6094d6f",
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
              "uuid": "3f260485-839e-4d86-8a9a-1980e86409c9",
              "parent_uuid": "36e4d562-8c8c-4cf0-a8b6-803fc6094d6f",
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
              "uuid": "92057740-6448-4465-90d2-93656133e5f5",
              "parent_uuid": "36e4d562-8c8c-4cf0-a8b6-803fc6094d6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba37a595-6627-42a5-8647-93f975e4f0a1",
                  "parent_uuid": "92057740-6448-4465-90d2-93656133e5f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "707d00e8-2489-45c5-b4b2-ed1ebb1b2035",
              "parent_uuid": "36e4d562-8c8c-4cf0-a8b6-803fc6094d6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bcbc37b-f068-4500-acd5-c985f1a16201",
                  "parent_uuid": "707d00e8-2489-45c5-b4b2-ed1ebb1b2035",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be316051-b8dc-43ed-a237-1e86a0c91926",
              "parent_uuid": "36e4d562-8c8c-4cf0-a8b6-803fc6094d6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6bb5934-e360-4f7c-8e01-5de79d5b3314",
                  "parent_uuid": "be316051-b8dc-43ed-a237-1e86a0c91926",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c797deb1-a2d4-44a4-99ff-b98d5716fd21",
              "parent_uuid": "36e4d562-8c8c-4cf0-a8b6-803fc6094d6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94182827-4e3c-4270-aeca-96adfd6f8e1e",
                  "parent_uuid": "c797deb1-a2d4-44a4-99ff-b98d5716fd21",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fefba210-2eed-4762-8f5c-3f48680a06a7",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20f8ea89-d92f-4d0f-a1b4-f8223bd80081",
              "parent_uuid": "fefba210-2eed-4762-8f5c-3f48680a06a7",
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
              "uuid": "a72baad0-e073-4a22-96af-e4de7c4bd9de",
              "parent_uuid": "fefba210-2eed-4762-8f5c-3f48680a06a7",
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
              "uuid": "44d5929d-bd9a-49c8-bce9-a1f5e949288e",
              "parent_uuid": "fefba210-2eed-4762-8f5c-3f48680a06a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5afdf63-6799-456e-94ba-e3aed8d45b8b",
                  "parent_uuid": "44d5929d-bd9a-49c8-bce9-a1f5e949288e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf534f6a-8a6e-467d-b750-974dc019107d",
              "parent_uuid": "fefba210-2eed-4762-8f5c-3f48680a06a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ae506d5-5c04-4c37-a684-0dce948f96a5",
                  "parent_uuid": "bf534f6a-8a6e-467d-b750-974dc019107d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cec25520-2f16-46a0-944c-b8cf87b8b59d",
              "parent_uuid": "fefba210-2eed-4762-8f5c-3f48680a06a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acd5e5fb-306d-4bec-8ed5-0868ea1e3347",
                  "parent_uuid": "cec25520-2f16-46a0-944c-b8cf87b8b59d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8fc514f-a45d-4f48-89fe-66f33a4f4aee",
              "parent_uuid": "fefba210-2eed-4762-8f5c-3f48680a06a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91055d0e-ba64-49ec-a7ca-960bac68d83b",
                  "parent_uuid": "b8fc514f-a45d-4f48-89fe-66f33a4f4aee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7de90e35-e222-48d7-9bf9-fb9218bfb828",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8dcbee9c-1671-4b46-a550-ac643e60bbbe",
              "parent_uuid": "7de90e35-e222-48d7-9bf9-fb9218bfb828",
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
              "uuid": "7c967a97-907f-4e65-8840-4fd33d7b1eac",
              "parent_uuid": "7de90e35-e222-48d7-9bf9-fb9218bfb828",
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
              "uuid": "b4783370-de83-4068-8427-6faf08f7930c",
              "parent_uuid": "7de90e35-e222-48d7-9bf9-fb9218bfb828",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9aec5ebc-b285-47e4-bf02-2d6a9411ca80",
                  "parent_uuid": "b4783370-de83-4068-8427-6faf08f7930c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9daa2e64-4c44-4a76-b7c2-ee2e91d5999a",
              "parent_uuid": "7de90e35-e222-48d7-9bf9-fb9218bfb828",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adb1ecdc-270e-48bf-9e8c-7c39456326d4",
                  "parent_uuid": "9daa2e64-4c44-4a76-b7c2-ee2e91d5999a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ccbc57a-f786-4ac4-bdd4-e45bd0931b04",
              "parent_uuid": "7de90e35-e222-48d7-9bf9-fb9218bfb828",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c3cb45f-a015-4b3d-bcb3-ce05022ea120",
                  "parent_uuid": "2ccbc57a-f786-4ac4-bdd4-e45bd0931b04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "542186c4-2eda-43be-9a9b-47a731c07a5b",
              "parent_uuid": "7de90e35-e222-48d7-9bf9-fb9218bfb828",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e95c996-57c5-4312-94cc-1869f27bde31",
                  "parent_uuid": "542186c4-2eda-43be-9a9b-47a731c07a5b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9de4622e-d59f-42cf-8a5e-958fe5abb9f9",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "943edc92-e3f7-4c16-b7b9-362f826f0ad4",
              "parent_uuid": "9de4622e-d59f-42cf-8a5e-958fe5abb9f9",
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
          "uuid": "4fc5778b-b646-48b7-a708-3ed5a61d96cd",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1e207f5-77b6-46ef-b65a-59a12113d2a4",
              "parent_uuid": "4fc5778b-b646-48b7-a708-3ed5a61d96cd",
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
          "uuid": "f66dbedb-8ab5-4b6d-9237-9bfa80948512",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a0fcb2d-0d6a-41bd-95f9-24106ad795bd",
              "parent_uuid": "f66dbedb-8ab5-4b6d-9237-9bfa80948512",
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
                  "uuid": "b179a369-3bb3-42d6-8138-ecee797158b0",
                  "parent_uuid": "7a0fcb2d-0d6a-41bd-95f9-24106ad795bd",
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
          "uuid": "0d5b869e-d545-4ce4-b3ed-1dc8512ea2ed",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "173b93e0-0315-43db-8614-41995f66eec4",
              "parent_uuid": "0d5b869e-d545-4ce4-b3ed-1dc8512ea2ed",
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
          "uuid": "67af7ec1-81a8-43ee-b3b7-31d6c227bef3",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d6a9f764-5811-4f04-84ce-651df4d1f033",
              "parent_uuid": "67af7ec1-81a8-43ee-b3b7-31d6c227bef3",
              "tagName": "td",
              "properties": [
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
          "uuid": "453163f3-8c30-4f8c-9e4f-625dfdd03799",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35f18405-9b17-4a73-8b25-f27ca78cd51d",
              "parent_uuid": "453163f3-8c30-4f8c-9e4f-625dfdd03799",
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
              "uuid": "a1c6b623-a162-4597-8c71-0b1eec06e1c5",
              "parent_uuid": "453163f3-8c30-4f8c-9e4f-625dfdd03799",
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
              "uuid": "ddaa7de0-f756-48a9-a877-e2c6e2b9dbbb",
              "parent_uuid": "453163f3-8c30-4f8c-9e4f-625dfdd03799",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d91ad2b-47b3-417b-bc68-ecb5fc740d1a",
                  "parent_uuid": "ddaa7de0-f756-48a9-a877-e2c6e2b9dbbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ca3fced-fdc4-46fb-b69d-8b75aab2632d",
              "parent_uuid": "453163f3-8c30-4f8c-9e4f-625dfdd03799",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4628416b-dcf9-45df-b034-41ddf17d4851",
                  "parent_uuid": "3ca3fced-fdc4-46fb-b69d-8b75aab2632d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27fa3a23-fe85-40e3-95a9-bed296c09c28",
              "parent_uuid": "453163f3-8c30-4f8c-9e4f-625dfdd03799",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02653a63-a945-4acf-9bc0-827a781ca618",
                  "parent_uuid": "27fa3a23-fe85-40e3-95a9-bed296c09c28",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "699f7d2c-2b9b-4edd-b051-3f74071e2d94",
              "parent_uuid": "453163f3-8c30-4f8c-9e4f-625dfdd03799",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "deebdff7-7b9a-4f16-a13e-0ce9dd536e9f",
                  "parent_uuid": "699f7d2c-2b9b-4edd-b051-3f74071e2d94",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5ae3024a-85b3-4048-b9e1-02940ff087df",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd269ab6-7a32-4029-8022-6fa5c5db02c6",
              "parent_uuid": "5ae3024a-85b3-4048-b9e1-02940ff087df",
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
              "uuid": "ac9e5987-26d6-4cd2-a1d3-799a64d64ebb",
              "parent_uuid": "5ae3024a-85b3-4048-b9e1-02940ff087df",
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
              "uuid": "8634ceb2-0d43-4801-9d7a-a754345d2f50",
              "parent_uuid": "5ae3024a-85b3-4048-b9e1-02940ff087df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04d8b165-7283-458c-a5fd-f8b34e48bef5",
                  "parent_uuid": "8634ceb2-0d43-4801-9d7a-a754345d2f50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a8ee34d-fd1d-46b1-bfc7-483f0e6c342b",
              "parent_uuid": "5ae3024a-85b3-4048-b9e1-02940ff087df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "897a75b8-7fb5-435c-a95c-ecbe57dcad18",
                  "parent_uuid": "4a8ee34d-fd1d-46b1-bfc7-483f0e6c342b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26e5788d-7e3a-49e5-b7c9-75cf80537227",
              "parent_uuid": "5ae3024a-85b3-4048-b9e1-02940ff087df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c51d244-ae27-4127-b735-5575501a1c62",
                  "parent_uuid": "26e5788d-7e3a-49e5-b7c9-75cf80537227",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14b64b3c-00f9-400b-a549-853815129e52",
              "parent_uuid": "5ae3024a-85b3-4048-b9e1-02940ff087df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a472f41-fa92-4325-9e75-01f271fe6854",
                  "parent_uuid": "14b64b3c-00f9-400b-a549-853815129e52",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "67325b41-a7a9-4b18-8ab6-f74774c5ee24",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cee5251-5dab-4460-88aa-18055417b463",
              "parent_uuid": "67325b41-a7a9-4b18-8ab6-f74774c5ee24",
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
              "uuid": "6012f906-35f5-4539-95f9-fc8ee40c8377",
              "parent_uuid": "67325b41-a7a9-4b18-8ab6-f74774c5ee24",
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
              "uuid": "45a043a0-e07f-47ed-a088-245260e3fe65",
              "parent_uuid": "67325b41-a7a9-4b18-8ab6-f74774c5ee24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ef1c6d9-fa25-4e94-ad2b-299a5e05f9a2",
                  "parent_uuid": "45a043a0-e07f-47ed-a088-245260e3fe65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4e36eb0-a48d-4677-a298-e5ebfdaf9f7a",
              "parent_uuid": "67325b41-a7a9-4b18-8ab6-f74774c5ee24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d48f5b2f-acd4-4295-9f3d-7af7c577d0ac",
                  "parent_uuid": "f4e36eb0-a48d-4677-a298-e5ebfdaf9f7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e1c0d64-6450-4387-aabc-7b9103100d5a",
              "parent_uuid": "67325b41-a7a9-4b18-8ab6-f74774c5ee24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fb33246-3f8a-4470-bc98-26753da2ffc4",
                  "parent_uuid": "0e1c0d64-6450-4387-aabc-7b9103100d5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f7b26dc-29a2-41fb-bcc8-5e9edeaec01a",
              "parent_uuid": "67325b41-a7a9-4b18-8ab6-f74774c5ee24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a612ec9b-af86-4ca2-b45d-8e54fd813305",
                  "parent_uuid": "6f7b26dc-29a2-41fb-bcc8-5e9edeaec01a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8dff3cf3-1f6c-4fa9-8959-cc9178df0608",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac95ef8a-6b32-458a-88a0-55307d6727ce",
              "parent_uuid": "8dff3cf3-1f6c-4fa9-8959-cc9178df0608",
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
              "uuid": "d7d15d20-1d2d-4709-b212-378cbc310354",
              "parent_uuid": "8dff3cf3-1f6c-4fa9-8959-cc9178df0608",
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
              "uuid": "a8b1e43f-6d71-44b1-b661-f111502addb2",
              "parent_uuid": "8dff3cf3-1f6c-4fa9-8959-cc9178df0608",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af87cd27-b23b-4bfb-91c0-3ccfd563883d",
                  "parent_uuid": "a8b1e43f-6d71-44b1-b661-f111502addb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8c309b7-9ae6-4673-bf85-1ccb10ce9c6f",
              "parent_uuid": "8dff3cf3-1f6c-4fa9-8959-cc9178df0608",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aad400bc-3750-4d1a-88de-81dc2408bcfc",
                  "parent_uuid": "c8c309b7-9ae6-4673-bf85-1ccb10ce9c6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a23b0a62-dcea-45f2-abbe-71703b761dd3",
              "parent_uuid": "8dff3cf3-1f6c-4fa9-8959-cc9178df0608",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a9d619f-cb11-451d-b1e0-e49f5d62d17b",
                  "parent_uuid": "a23b0a62-dcea-45f2-abbe-71703b761dd3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f50f5f6d-db6c-4498-b807-3c23021dc76e",
              "parent_uuid": "8dff3cf3-1f6c-4fa9-8959-cc9178df0608",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65b15f09-9cac-4f00-b21c-05bf269ab684",
                  "parent_uuid": "f50f5f6d-db6c-4498-b807-3c23021dc76e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6a795d6b-6232-4c1f-ba6a-79d1c926548b",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "bedd1312-6431-4218-918c-12389dacae79",
              "parent_uuid": "6a795d6b-6232-4c1f-ba6a-79d1c926548b",
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
          "uuid": "7b99a5b3-c71f-4372-b5b6-da9131eb435b",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8692381b-8d5d-4979-9c98-d1c004fe224c",
              "parent_uuid": "7b99a5b3-c71f-4372-b5b6-da9131eb435b",
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
              "uuid": "456562b4-6f66-4ba7-a9eb-aeaf64a37833",
              "parent_uuid": "7b99a5b3-c71f-4372-b5b6-da9131eb435b",
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
              "uuid": "438c00cc-4327-4e66-9b91-050a1011892e",
              "parent_uuid": "7b99a5b3-c71f-4372-b5b6-da9131eb435b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb399478-5a6e-451a-b8a7-d4c9c92d8e0c",
                  "parent_uuid": "438c00cc-4327-4e66-9b91-050a1011892e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0f03cfb-fb5c-4de0-bb55-0c5e9b1a6826",
              "parent_uuid": "7b99a5b3-c71f-4372-b5b6-da9131eb435b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c29189e-a1c6-420d-b12e-7cc5eac4430e",
                  "parent_uuid": "c0f03cfb-fb5c-4de0-bb55-0c5e9b1a6826",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc27a914-2100-4a38-89fe-166436370690",
              "parent_uuid": "7b99a5b3-c71f-4372-b5b6-da9131eb435b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a81fc0b2-d2e1-426f-956b-1f530b0cc187",
                  "parent_uuid": "dc27a914-2100-4a38-89fe-166436370690",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ec341aa-6911-4bf1-89f8-a5b5460c7be7",
              "parent_uuid": "7b99a5b3-c71f-4372-b5b6-da9131eb435b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c31e0653-a3f9-4023-b9a0-422b2d44ad97",
                  "parent_uuid": "0ec341aa-6911-4bf1-89f8-a5b5460c7be7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ff32f10-9d46-417a-8322-60b632a0d72b",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "036392c6-c923-4c10-95b9-99cb7aac5b1e",
              "parent_uuid": "4ff32f10-9d46-417a-8322-60b632a0d72b",
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
              "uuid": "899ef4b7-5a03-4de9-846b-042f593b9c80",
              "parent_uuid": "4ff32f10-9d46-417a-8322-60b632a0d72b",
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
              "uuid": "91a8803a-32fc-4549-931a-e1b4781ee966",
              "parent_uuid": "4ff32f10-9d46-417a-8322-60b632a0d72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae6a8766-379f-4de8-ad10-91b7bbc0b6bb",
                  "parent_uuid": "91a8803a-32fc-4549-931a-e1b4781ee966",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15c5da9c-6096-41c1-adbe-08b287d0f964",
              "parent_uuid": "4ff32f10-9d46-417a-8322-60b632a0d72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e60fe2f2-fd3d-40da-8bdc-9a9e28f90ceb",
                  "parent_uuid": "15c5da9c-6096-41c1-adbe-08b287d0f964",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd512412-a72a-4814-b202-9c4802a54841",
              "parent_uuid": "4ff32f10-9d46-417a-8322-60b632a0d72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b470e6c5-6b51-44f8-8717-f1358e83a460",
                  "parent_uuid": "dd512412-a72a-4814-b202-9c4802a54841",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6d50c89-a054-476a-87d8-409b4e01a82c",
              "parent_uuid": "4ff32f10-9d46-417a-8322-60b632a0d72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adaf17be-c017-4f19-8d94-ca4a95f434f5",
                  "parent_uuid": "a6d50c89-a054-476a-87d8-409b4e01a82c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b0b707cd-a7a3-4f69-b959-55938d1630f4",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50caea14-ad11-42ce-af71-3e78c03207fa",
              "parent_uuid": "b0b707cd-a7a3-4f69-b959-55938d1630f4",
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
              "uuid": "44d198eb-c5d3-4b1c-aa16-cb6734c49111",
              "parent_uuid": "b0b707cd-a7a3-4f69-b959-55938d1630f4",
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
              "uuid": "6b520189-ce95-4fb8-8dc2-326f7a9925a8",
              "parent_uuid": "b0b707cd-a7a3-4f69-b959-55938d1630f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bac53ad8-1e21-45a5-bb20-f176b5743818",
                  "parent_uuid": "6b520189-ce95-4fb8-8dc2-326f7a9925a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "595935d3-bc48-44e3-9056-e7981d8ce851",
              "parent_uuid": "b0b707cd-a7a3-4f69-b959-55938d1630f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3ef2c20-5576-4878-a6da-d78979e44f45",
                  "parent_uuid": "595935d3-bc48-44e3-9056-e7981d8ce851",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29b0fe0d-7eb1-46c6-9053-e6d672e64fb6",
              "parent_uuid": "b0b707cd-a7a3-4f69-b959-55938d1630f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2726ee97-d040-453d-aff7-35f2971e8860",
                  "parent_uuid": "29b0fe0d-7eb1-46c6-9053-e6d672e64fb6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfbfbd63-09ed-4711-be67-19c81122469b",
              "parent_uuid": "b0b707cd-a7a3-4f69-b959-55938d1630f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76bd2987-54f7-49b9-9bea-a4c1a74f1170",
                  "parent_uuid": "cfbfbd63-09ed-4711-be67-19c81122469b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "881e8c58-a47f-4c85-a671-973cb4c3aa58",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aca94925-2d28-4259-96d0-a197ca47398e",
              "parent_uuid": "881e8c58-a47f-4c85-a671-973cb4c3aa58",
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
              "uuid": "7465db8d-7cfb-4408-9ea9-c49596f90e81",
              "parent_uuid": "881e8c58-a47f-4c85-a671-973cb4c3aa58",
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
              "uuid": "1f5f7884-4b9f-4937-b1e1-9e70849e1900",
              "parent_uuid": "881e8c58-a47f-4c85-a671-973cb4c3aa58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf4ed36d-bfc1-4167-b6fa-fa83f42751a0",
                  "parent_uuid": "1f5f7884-4b9f-4937-b1e1-9e70849e1900",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5117e72-ddbb-46ec-9fd9-6e991214e8d6",
              "parent_uuid": "881e8c58-a47f-4c85-a671-973cb4c3aa58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "381af26b-898b-4be1-bee0-ec150c22d230",
                  "parent_uuid": "b5117e72-ddbb-46ec-9fd9-6e991214e8d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b550f673-8665-443c-bbaf-657d35bd7799",
              "parent_uuid": "881e8c58-a47f-4c85-a671-973cb4c3aa58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bd72d4e-9ec0-415d-adc3-7f24ab6dca8c",
                  "parent_uuid": "b550f673-8665-443c-bbaf-657d35bd7799",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b3710bf-3934-41a7-973d-0d185b1b8e5b",
              "parent_uuid": "881e8c58-a47f-4c85-a671-973cb4c3aa58",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "141982d7-5b3e-4c51-8a8e-6b5716a9fc6c",
                  "parent_uuid": "6b3710bf-3934-41a7-973d-0d185b1b8e5b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b1b3c76e-7e97-41b9-ab1c-9518579a2b70",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d31c9305-71c9-4db2-82e0-bdce45b17aa4",
              "parent_uuid": "b1b3c76e-7e97-41b9-ab1c-9518579a2b70",
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
          "uuid": "232dec42-1a1e-4577-9bfb-2c98243fea39",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d18c0f8-3c9e-4afc-aebf-a477f2d3239c",
              "parent_uuid": "232dec42-1a1e-4577-9bfb-2c98243fea39",
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
          "uuid": "29e6142b-1cf0-4c0c-a7d1-7071908a5a43",
          "parent_uuid": "a54afb90-c3c2-442a-a076-92d6e6a938d8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "080b04d1-dc52-47ef-a59a-862f4efd7587",
              "parent_uuid": "29e6142b-1cf0-4c0c-a7d1-7071908a5a43",
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
                  "uuid": "4370683f-fb1f-4e80-86d8-8cf9b4e0d06f",
                  "parent_uuid": "080b04d1-dc52-47ef-a59a-862f4efd7587",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

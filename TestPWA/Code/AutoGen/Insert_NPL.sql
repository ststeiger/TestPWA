
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
  "uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "a1f8d566-f827-4317-a41c-5298d420893e",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "2b2f0d8a-df6f-4d49-84e9-90956e5e8819",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "a18976c9-e892-488d-afe2-fc35e388e278",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "d3aea927-7e1d-48cc-af6b-7af20d3e5fb5",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "ea01d3c0-eb26-4663-9637-926acf5f3c1b",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "da042206-2387-4972-8270-a322cd5b48b4",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "9d55589c-e754-40f0-a6d7-bb86403ef0f3",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
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
      "uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
      "parent_uuid": "2cb6dbc1-3f99-4059-bb58-8d111e8deefc",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b7dac565-23e7-4686-8a63-855276629b1d",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "db85c97d-05ea-438a-810a-465b2b5913a3",
              "parent_uuid": "b7dac565-23e7-4686-8a63-855276629b1d",
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
              "uuid": "a52d182a-16d5-4629-92cb-bc2acfd83d05",
              "parent_uuid": "b7dac565-23e7-4686-8a63-855276629b1d",
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
              "uuid": "4a5428ac-daaa-4e60-a672-01f568cf9249",
              "parent_uuid": "b7dac565-23e7-4686-8a63-855276629b1d",
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
              "uuid": "88d79ff6-4c99-42cb-bd4b-ff559a7d7cbd",
              "parent_uuid": "b7dac565-23e7-4686-8a63-855276629b1d",
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
          "uuid": "b6f6f88a-810e-4744-9f0f-1bb46252553f",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "bd51cd62-6908-40de-bb40-2e527d832930",
              "parent_uuid": "b6f6f88a-810e-4744-9f0f-1bb46252553f",
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
              "uuid": "9ac22da7-46dc-40cf-9f90-5f23a57812f1",
              "parent_uuid": "b6f6f88a-810e-4744-9f0f-1bb46252553f",
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
              "uuid": "f2f45777-0cff-4adc-aaaf-7a3e55f76d10",
              "parent_uuid": "b6f6f88a-810e-4744-9f0f-1bb46252553f",
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
              "uuid": "76a17ed4-1ea9-4ce6-a65c-12a8e394383c",
              "parent_uuid": "b6f6f88a-810e-4744-9f0f-1bb46252553f",
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
          "uuid": "9eb419a5-b1e0-4a6e-96e3-160165a6ff44",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ed868ee-c3ac-4a26-8f86-be77d92ed6a3",
              "parent_uuid": "9eb419a5-b1e0-4a6e-96e3-160165a6ff44",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c1d3d0e6-5ff8-4429-bd71-ac49d45acfd6",
              "parent_uuid": "9eb419a5-b1e0-4a6e-96e3-160165a6ff44",
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
              "uuid": "5e63b76d-b82c-4b60-9cf2-9afb0ecbf1a3",
              "parent_uuid": "9eb419a5-b1e0-4a6e-96e3-160165a6ff44",
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
              "uuid": "c848fb12-3a4f-4a87-9932-18d177222adf",
              "parent_uuid": "9eb419a5-b1e0-4a6e-96e3-160165a6ff44",
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
              "uuid": "c4be86c9-0fb3-4c83-a452-01bdb7081236",
              "parent_uuid": "9eb419a5-b1e0-4a6e-96e3-160165a6ff44",
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
              "uuid": "eba60340-d95d-41b9-bf75-3d0d4e184e6a",
              "parent_uuid": "9eb419a5-b1e0-4a6e-96e3-160165a6ff44",
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
          "uuid": "0b3356a7-56c5-4c15-9c47-f69d1bb878f7",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "007eeeac-f43f-4077-8e03-234518ee36eb",
              "parent_uuid": "0b3356a7-56c5-4c15-9c47-f69d1bb878f7",
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
          "uuid": "d0a4e1f6-feef-44cb-bb46-0430393a1145",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9df94ce3-8bf6-4e77-8a65-ee772f94960c",
              "parent_uuid": "d0a4e1f6-feef-44cb-bb46-0430393a1145",
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
              "uuid": "45fe14ff-bdab-45c4-8856-f5dcf3bd2164",
              "parent_uuid": "d0a4e1f6-feef-44cb-bb46-0430393a1145",
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
              "uuid": "d29fdaee-b72e-474c-b230-cf4c1099c224",
              "parent_uuid": "d0a4e1f6-feef-44cb-bb46-0430393a1145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97d69acf-b336-417f-9bad-558f5127112a",
                  "parent_uuid": "d29fdaee-b72e-474c-b230-cf4c1099c224",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1e98234-ba7f-4930-af7b-1a0324fe4b69",
              "parent_uuid": "d0a4e1f6-feef-44cb-bb46-0430393a1145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76d4b8fd-a1b0-4da1-aa51-53f0da1f6504",
                  "parent_uuid": "e1e98234-ba7f-4930-af7b-1a0324fe4b69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8d9457f-8336-4560-853a-cc48137ac9fc",
              "parent_uuid": "d0a4e1f6-feef-44cb-bb46-0430393a1145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2403110f-cb14-4c37-8686-3b52226f40c5",
                  "parent_uuid": "a8d9457f-8336-4560-853a-cc48137ac9fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37a6f4cf-942e-4c05-a023-3f56ef39e1be",
              "parent_uuid": "d0a4e1f6-feef-44cb-bb46-0430393a1145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c604f6e-7ee6-4cdd-b2a0-ebd32063a826",
                  "parent_uuid": "37a6f4cf-942e-4c05-a023-3f56ef39e1be",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2ce81c44-a217-4e36-87b4-b03e88136449",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c9b3e79-5b36-4c54-a2d7-51092bcf0865",
              "parent_uuid": "2ce81c44-a217-4e36-87b4-b03e88136449",
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
              "uuid": "a5bb1fa0-4b21-4039-99b8-496d376b9d56",
              "parent_uuid": "2ce81c44-a217-4e36-87b4-b03e88136449",
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
              "uuid": "297ace54-9cfa-45e8-914f-b9eb3d378ad0",
              "parent_uuid": "2ce81c44-a217-4e36-87b4-b03e88136449",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82b556d6-078b-40b7-8121-55416073c3c4",
                  "parent_uuid": "297ace54-9cfa-45e8-914f-b9eb3d378ad0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "212e47f8-6b68-45e0-9e5f-ac697c61fb38",
              "parent_uuid": "2ce81c44-a217-4e36-87b4-b03e88136449",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "869bfb6d-b1aa-4af6-98c9-047a2a8e2676",
                  "parent_uuid": "212e47f8-6b68-45e0-9e5f-ac697c61fb38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c5ee406-c256-4c65-9ed2-7ec37396db8d",
              "parent_uuid": "2ce81c44-a217-4e36-87b4-b03e88136449",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6478365b-6c4a-4a36-9571-ef2d4785af6a",
                  "parent_uuid": "2c5ee406-c256-4c65-9ed2-7ec37396db8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38c49a43-d1d4-4d16-a332-6e637b149704",
              "parent_uuid": "2ce81c44-a217-4e36-87b4-b03e88136449",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe653602-ba3a-4067-b24c-0cef3666c127",
                  "parent_uuid": "38c49a43-d1d4-4d16-a332-6e637b149704",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e8026085-d92b-4775-ac2a-3abf67574e65",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cffc2cc-a650-46ac-81d7-454add698811",
              "parent_uuid": "e8026085-d92b-4775-ac2a-3abf67574e65",
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
              "uuid": "3427557d-3492-4f0c-b4dc-e7459423eda0",
              "parent_uuid": "e8026085-d92b-4775-ac2a-3abf67574e65",
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
              "uuid": "14408806-562d-439e-ae2b-7400775e89b4",
              "parent_uuid": "e8026085-d92b-4775-ac2a-3abf67574e65",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9b30bcf-3b1b-4ed8-a1c3-7f93809b402f",
                  "parent_uuid": "14408806-562d-439e-ae2b-7400775e89b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af18f45a-1e70-4a23-818c-8a3ff20934d7",
              "parent_uuid": "e8026085-d92b-4775-ac2a-3abf67574e65",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80edc3e9-d5fc-4118-9b82-1cab0bd768bd",
                  "parent_uuid": "af18f45a-1e70-4a23-818c-8a3ff20934d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d4c4673-5538-4c9f-8ed2-4e86a6cafa72",
              "parent_uuid": "e8026085-d92b-4775-ac2a-3abf67574e65",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6573f368-f4d3-4c06-bb20-b58ae6c2c57c",
                  "parent_uuid": "4d4c4673-5538-4c9f-8ed2-4e86a6cafa72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c91d42a-8981-4b56-aa62-b3333b8f401f",
              "parent_uuid": "e8026085-d92b-4775-ac2a-3abf67574e65",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ed8fb70-0d62-4f2d-8176-e3df6f25fcd5",
                  "parent_uuid": "6c91d42a-8981-4b56-aa62-b3333b8f401f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "acd104e0-22f9-44b5-9b76-3540b90524a2",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1f5a0ee0-8871-4942-bac2-f9c415243690",
              "parent_uuid": "acd104e0-22f9-44b5-9b76-3540b90524a2",
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
              "uuid": "882cd0db-5f65-4f2f-ad48-e3f5db67d2b6",
              "parent_uuid": "acd104e0-22f9-44b5-9b76-3540b90524a2",
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
              "uuid": "7674ddbc-729a-44e2-ae88-bc6ff948e4b2",
              "parent_uuid": "acd104e0-22f9-44b5-9b76-3540b90524a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ca406e1-15b9-48ea-91c1-9c47a08eef57",
                  "parent_uuid": "7674ddbc-729a-44e2-ae88-bc6ff948e4b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08776b41-10e9-4246-a202-7fa9cd4402db",
              "parent_uuid": "acd104e0-22f9-44b5-9b76-3540b90524a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54f5d148-56dd-47d1-a2c6-fda6cbe26296",
                  "parent_uuid": "08776b41-10e9-4246-a202-7fa9cd4402db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b1706f4-9be0-4e49-a054-d24d831c2554",
              "parent_uuid": "acd104e0-22f9-44b5-9b76-3540b90524a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d101068c-9589-4275-9699-3cd8e4eef382",
                  "parent_uuid": "4b1706f4-9be0-4e49-a054-d24d831c2554",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da38a3d9-89d6-471d-9961-7a52fd8b9128",
              "parent_uuid": "acd104e0-22f9-44b5-9b76-3540b90524a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db2a4bfa-5170-455a-b935-e5140ab76eb8",
                  "parent_uuid": "da38a3d9-89d6-471d-9961-7a52fd8b9128",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d519d048-1219-4f2f-880e-4947996c9116",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e950d5dd-f3c4-43d2-8073-2a376789c971",
              "parent_uuid": "d519d048-1219-4f2f-880e-4947996c9116",
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
              "uuid": "2c4f35a9-c58b-4119-9135-e1a9930a3100",
              "parent_uuid": "d519d048-1219-4f2f-880e-4947996c9116",
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
              "uuid": "9b192c66-cc82-4ebc-9929-d6979bc6dae0",
              "parent_uuid": "d519d048-1219-4f2f-880e-4947996c9116",
              "tagName": "td",
              "properties": [
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
                  "uuid": "27e64112-7026-427b-b3a8-077810666923",
                  "parent_uuid": "9b192c66-cc82-4ebc-9929-d6979bc6dae0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5791ae79-db1b-4169-ad0d-6573c73df487",
              "parent_uuid": "d519d048-1219-4f2f-880e-4947996c9116",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fdbf6dbf-8422-4168-ace9-a1ef4d57d14d",
                  "parent_uuid": "5791ae79-db1b-4169-ad0d-6573c73df487",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "920cf2c7-dad9-4cb6-abc0-cd1e4180e348",
              "parent_uuid": "d519d048-1219-4f2f-880e-4947996c9116",
              "tagName": "td",
              "properties": [
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
                  "uuid": "01f982ee-b76a-459f-bce2-9631d3c6815a",
                  "parent_uuid": "920cf2c7-dad9-4cb6-abc0-cd1e4180e348",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41cd0396-3b80-4e7b-ad80-4bf6a5abd08d",
              "parent_uuid": "d519d048-1219-4f2f-880e-4947996c9116",
              "tagName": "td",
              "properties": [
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
                  "uuid": "089c8532-e1dd-41fb-a632-f88f3099753e",
                  "parent_uuid": "41cd0396-3b80-4e7b-ad80-4bf6a5abd08d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26de6498-9f0e-4a2a-b06b-9979ce8a42e2",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fdf406b3-dc5f-4830-8d3f-600cb35b2e79",
              "parent_uuid": "26de6498-9f0e-4a2a-b06b-9979ce8a42e2",
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
              "uuid": "9c762406-da76-4792-af4a-14bd100fc20e",
              "parent_uuid": "26de6498-9f0e-4a2a-b06b-9979ce8a42e2",
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
              "uuid": "99cadfb7-f414-4444-b2df-a755faf1124a",
              "parent_uuid": "26de6498-9f0e-4a2a-b06b-9979ce8a42e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a40c9d9c-f69b-4f8a-8cf3-1640b395c64c",
                  "parent_uuid": "99cadfb7-f414-4444-b2df-a755faf1124a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aed205fa-5fba-4abb-b8c4-a80e91ead3a1",
              "parent_uuid": "26de6498-9f0e-4a2a-b06b-9979ce8a42e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6df44f6-d9a7-4d16-96ec-ac0153d49b32",
                  "parent_uuid": "aed205fa-5fba-4abb-b8c4-a80e91ead3a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "217a96e2-232a-4d3c-ae6a-3cd9f4f04f61",
              "parent_uuid": "26de6498-9f0e-4a2a-b06b-9979ce8a42e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a77d0a59-acf8-485f-ac04-4f6dd11e0eba",
                  "parent_uuid": "217a96e2-232a-4d3c-ae6a-3cd9f4f04f61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f865b4d-334f-456d-aa67-cdf1c376386f",
              "parent_uuid": "26de6498-9f0e-4a2a-b06b-9979ce8a42e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "067cd360-e071-434a-96ee-a200f9767b1b",
                  "parent_uuid": "0f865b4d-334f-456d-aa67-cdf1c376386f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f66446c9-d858-4c3d-817d-3d86d6d6c0a6",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ecb06250-880a-4c8a-844c-1f521c2637e7",
              "parent_uuid": "f66446c9-d858-4c3d-817d-3d86d6d6c0a6",
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
              "uuid": "a21d7f4a-d72b-4570-827b-394ee3ca7d4a",
              "parent_uuid": "f66446c9-d858-4c3d-817d-3d86d6d6c0a6",
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
              "uuid": "23b6fe54-97ce-433d-a213-a460e15d492e",
              "parent_uuid": "f66446c9-d858-4c3d-817d-3d86d6d6c0a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acb0a861-b3c1-4e02-a778-ac23551e1e4f",
                  "parent_uuid": "23b6fe54-97ce-433d-a213-a460e15d492e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2521feec-d96e-4efa-a808-aef5ae4c6db1",
              "parent_uuid": "f66446c9-d858-4c3d-817d-3d86d6d6c0a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9507642-8592-4668-ba0f-153572eaf071",
                  "parent_uuid": "2521feec-d96e-4efa-a808-aef5ae4c6db1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb28573c-00fd-435f-ae2b-dbfbc0108955",
              "parent_uuid": "f66446c9-d858-4c3d-817d-3d86d6d6c0a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e7e9558-e931-44e6-a214-0a4a7574239d",
                  "parent_uuid": "eb28573c-00fd-435f-ae2b-dbfbc0108955",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fad1b38e-a7a4-4fd8-89e6-d89af1646223",
              "parent_uuid": "f66446c9-d858-4c3d-817d-3d86d6d6c0a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "633af038-9a9d-4ba1-a668-d32034f0c838",
                  "parent_uuid": "fad1b38e-a7a4-4fd8-89e6-d89af1646223",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f0448d1d-bc73-4ffa-a84d-b1ee0beef53b",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ff23cea-26fe-4ac8-b47d-4a717f1ab582",
              "parent_uuid": "f0448d1d-bc73-4ffa-a84d-b1ee0beef53b",
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
              "uuid": "284bf8cd-cf32-4f24-9206-5ef0fb88c3e9",
              "parent_uuid": "f0448d1d-bc73-4ffa-a84d-b1ee0beef53b",
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
              "uuid": "58961edc-c35f-4a39-9b5b-e5515b1e303d",
              "parent_uuid": "f0448d1d-bc73-4ffa-a84d-b1ee0beef53b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90c6404e-ac0a-4193-9ec2-bb381e57de16",
                  "parent_uuid": "58961edc-c35f-4a39-9b5b-e5515b1e303d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b5501f4-04be-4d80-abe1-66ee5fc1b387",
              "parent_uuid": "f0448d1d-bc73-4ffa-a84d-b1ee0beef53b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d383228-65ba-4c58-82a1-94cbe0b4d844",
                  "parent_uuid": "3b5501f4-04be-4d80-abe1-66ee5fc1b387",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a1c147d-9ac3-4e36-ba07-27b68baa7f45",
              "parent_uuid": "f0448d1d-bc73-4ffa-a84d-b1ee0beef53b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8466f75-8e79-4f97-a7dc-2ea06fb0fa6e",
                  "parent_uuid": "0a1c147d-9ac3-4e36-ba07-27b68baa7f45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52793e41-1bc2-402d-b141-2fad270f240b",
              "parent_uuid": "f0448d1d-bc73-4ffa-a84d-b1ee0beef53b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa73f2bb-e7c0-4582-a239-03c0ae17e62e",
                  "parent_uuid": "52793e41-1bc2-402d-b141-2fad270f240b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6e3c1f4-eb9d-4f3c-8b6c-3fdf9fa8de8f",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fa1b89b-09a8-4f44-b641-d3cba60d2318",
              "parent_uuid": "e6e3c1f4-eb9d-4f3c-8b6c-3fdf9fa8de8f",
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
              "uuid": "b0ae3d1c-05b1-498a-aa1c-6d0d76d02cdb",
              "parent_uuid": "e6e3c1f4-eb9d-4f3c-8b6c-3fdf9fa8de8f",
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
              "uuid": "5df86da2-326b-482d-a4cc-bcc8ac049286",
              "parent_uuid": "e6e3c1f4-eb9d-4f3c-8b6c-3fdf9fa8de8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2363537a-754d-45f7-afea-126a59666369",
                  "parent_uuid": "5df86da2-326b-482d-a4cc-bcc8ac049286",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d46e40fb-5fc7-450f-8f84-7fa912bbcb0b",
              "parent_uuid": "e6e3c1f4-eb9d-4f3c-8b6c-3fdf9fa8de8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a05b8b4-bf37-4fe4-afbf-99e554dfbcb8",
                  "parent_uuid": "d46e40fb-5fc7-450f-8f84-7fa912bbcb0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a11e3383-52c4-4ea9-9b3b-9b9ba8036de6",
              "parent_uuid": "e6e3c1f4-eb9d-4f3c-8b6c-3fdf9fa8de8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27646970-e939-4b9d-8530-073e696a63bd",
                  "parent_uuid": "a11e3383-52c4-4ea9-9b3b-9b9ba8036de6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e851e5b-34d0-409d-a5e2-e122c5cabd72",
              "parent_uuid": "e6e3c1f4-eb9d-4f3c-8b6c-3fdf9fa8de8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a24b0c6-58b8-4e52-bd18-93af7f95b2d6",
                  "parent_uuid": "2e851e5b-34d0-409d-a5e2-e122c5cabd72",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ac425fd-e3df-4eed-b5e8-f1364e20056f",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21bc101e-8c5d-4c84-935c-0f627cc19299",
              "parent_uuid": "1ac425fd-e3df-4eed-b5e8-f1364e20056f",
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
              "uuid": "2314f0aa-6091-4daf-abdc-d2001352d098",
              "parent_uuid": "1ac425fd-e3df-4eed-b5e8-f1364e20056f",
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
              "uuid": "20819c1d-7ad5-4a1d-8d82-38aa6f8786d9",
              "parent_uuid": "1ac425fd-e3df-4eed-b5e8-f1364e20056f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe2e3ba5-e024-444c-881c-a5bf31317e47",
                  "parent_uuid": "20819c1d-7ad5-4a1d-8d82-38aa6f8786d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba2687d0-eac7-41ca-81d4-5e0b7de8a711",
              "parent_uuid": "1ac425fd-e3df-4eed-b5e8-f1364e20056f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1991c35e-802a-49f5-b1ed-76db6b9aa1d5",
                  "parent_uuid": "ba2687d0-eac7-41ca-81d4-5e0b7de8a711",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4187914b-b4d6-4397-a2f2-b90422805df6",
              "parent_uuid": "1ac425fd-e3df-4eed-b5e8-f1364e20056f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbe055f5-7dcc-461d-8fed-99744bb6b134",
                  "parent_uuid": "4187914b-b4d6-4397-a2f2-b90422805df6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77bcc0b1-2dfc-4bdb-a15b-8f74ea85e517",
              "parent_uuid": "1ac425fd-e3df-4eed-b5e8-f1364e20056f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6228a8da-2406-4399-b686-bad41ad9c4a2",
                  "parent_uuid": "77bcc0b1-2dfc-4bdb-a15b-8f74ea85e517",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b042e1ff-5e16-4a5d-b99f-705bc99afb81",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1da5730e-db9c-4e4d-9a6c-6194afa7213a",
              "parent_uuid": "b042e1ff-5e16-4a5d-b99f-705bc99afb81",
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
              "uuid": "08ab4a59-7edc-4428-b736-fa7be1c9c5a1",
              "parent_uuid": "b042e1ff-5e16-4a5d-b99f-705bc99afb81",
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
              "uuid": "8c77f4eb-2c2a-4c3a-be14-cbfb417cc825",
              "parent_uuid": "b042e1ff-5e16-4a5d-b99f-705bc99afb81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6c08233-e612-4317-932a-5a98550e4078",
                  "parent_uuid": "8c77f4eb-2c2a-4c3a-be14-cbfb417cc825",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d491389-b96c-418f-a9b8-4cfe1c1a1aa5",
              "parent_uuid": "b042e1ff-5e16-4a5d-b99f-705bc99afb81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ae48ce0-8b0a-4d0e-9189-49ee09f59079",
                  "parent_uuid": "8d491389-b96c-418f-a9b8-4cfe1c1a1aa5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fce7470e-4766-42e1-90a9-3e8567487d81",
              "parent_uuid": "b042e1ff-5e16-4a5d-b99f-705bc99afb81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83c04734-f11e-4ddc-a9ea-1f31d54a0e09",
                  "parent_uuid": "fce7470e-4766-42e1-90a9-3e8567487d81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7467405-b458-4be7-b33a-61cd402707a3",
              "parent_uuid": "b042e1ff-5e16-4a5d-b99f-705bc99afb81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4f5e391-cfac-4067-acda-60f7341ef296",
                  "parent_uuid": "b7467405-b458-4be7-b33a-61cd402707a3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d74a0181-d2ac-4326-9ae0-0bb3275237ea",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46beb41c-bf84-48cb-acea-4b0bd8060472",
              "parent_uuid": "d74a0181-d2ac-4326-9ae0-0bb3275237ea",
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
              "uuid": "b2d1f940-643b-4415-9705-6ddc648abd6b",
              "parent_uuid": "d74a0181-d2ac-4326-9ae0-0bb3275237ea",
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
              "uuid": "75b6b507-0589-45b4-9202-dcab89661b91",
              "parent_uuid": "d74a0181-d2ac-4326-9ae0-0bb3275237ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6eba4978-992a-4de0-9a58-53d2e76e840e",
                  "parent_uuid": "75b6b507-0589-45b4-9202-dcab89661b91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "757ac309-00d4-42c5-a037-514afe40c787",
              "parent_uuid": "d74a0181-d2ac-4326-9ae0-0bb3275237ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3122ad8f-090e-48cb-9eb7-6cae28b5b26e",
                  "parent_uuid": "757ac309-00d4-42c5-a037-514afe40c787",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5fa2b8f-755f-4405-8cd1-895b9e511097",
              "parent_uuid": "d74a0181-d2ac-4326-9ae0-0bb3275237ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bd87c3b-5b8f-41dc-8af4-37640b225475",
                  "parent_uuid": "c5fa2b8f-755f-4405-8cd1-895b9e511097",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1fd5698-d33f-45e0-a19c-87af53ef1659",
              "parent_uuid": "d74a0181-d2ac-4326-9ae0-0bb3275237ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54193d7c-f9f5-48f7-84b3-868a1cd08e24",
                  "parent_uuid": "e1fd5698-d33f-45e0-a19c-87af53ef1659",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c467a7b9-8276-471d-901f-63fe20c4e39a",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "247a1515-02d2-4188-a083-ca7ba9be91f2",
              "parent_uuid": "c467a7b9-8276-471d-901f-63fe20c4e39a",
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
              "uuid": "01b6f650-a146-4a72-b4f6-54a570bac9a6",
              "parent_uuid": "c467a7b9-8276-471d-901f-63fe20c4e39a",
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
              "uuid": "a53aaca4-9cbf-46bd-ad4a-d0d42e492bfe",
              "parent_uuid": "c467a7b9-8276-471d-901f-63fe20c4e39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "755dae2c-2707-49b0-96ce-ce9b7a552033",
                  "parent_uuid": "a53aaca4-9cbf-46bd-ad4a-d0d42e492bfe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee2b9eda-e672-4e90-aba6-6211715327c3",
              "parent_uuid": "c467a7b9-8276-471d-901f-63fe20c4e39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a0b3e02-3e2a-4473-b97b-1f3ff1c59bd6",
                  "parent_uuid": "ee2b9eda-e672-4e90-aba6-6211715327c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "882d8a4f-e32e-4c0a-9b97-33a23b897484",
              "parent_uuid": "c467a7b9-8276-471d-901f-63fe20c4e39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccecba3f-705b-47b7-89c0-7cded129e916",
                  "parent_uuid": "882d8a4f-e32e-4c0a-9b97-33a23b897484",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ae913f2-b6e5-4271-a735-441857cfe0b0",
              "parent_uuid": "c467a7b9-8276-471d-901f-63fe20c4e39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed018c1a-a685-4b61-9eae-73ef58a354ee",
                  "parent_uuid": "5ae913f2-b6e5-4271-a735-441857cfe0b0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6dc6ab7-673f-4f1f-aa28-367575fb689b",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84bd7b39-7c77-422b-a496-081515855f1e",
              "parent_uuid": "e6dc6ab7-673f-4f1f-aa28-367575fb689b",
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
              "uuid": "2bbe5ea7-3eaf-47fb-b025-4679f759b8f2",
              "parent_uuid": "e6dc6ab7-673f-4f1f-aa28-367575fb689b",
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
              "uuid": "8b7f9833-2c07-466d-b709-723e435055f6",
              "parent_uuid": "e6dc6ab7-673f-4f1f-aa28-367575fb689b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7c84727-8a9f-4100-8801-4232d4f1befa",
                  "parent_uuid": "8b7f9833-2c07-466d-b709-723e435055f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aabd619f-63d3-41a5-a4ee-9301c2b76cb1",
              "parent_uuid": "e6dc6ab7-673f-4f1f-aa28-367575fb689b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ffe1a03-acfb-4915-81fe-bde8235c0bdc",
                  "parent_uuid": "aabd619f-63d3-41a5-a4ee-9301c2b76cb1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5377b058-2d3a-4b64-ab40-ba8fae6b5502",
              "parent_uuid": "e6dc6ab7-673f-4f1f-aa28-367575fb689b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ca50f2e-9bbc-4962-9b3e-6483b9e94011",
                  "parent_uuid": "5377b058-2d3a-4b64-ab40-ba8fae6b5502",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "099ecc6f-98ae-4ee0-8273-6df59359a018",
              "parent_uuid": "e6dc6ab7-673f-4f1f-aa28-367575fb689b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95d9125b-2d6e-4624-8e94-5cd26b1f7eb4",
                  "parent_uuid": "099ecc6f-98ae-4ee0-8273-6df59359a018",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "52e33c23-e766-408a-a035-5b63ebcd5dc4",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "c734a431-2eb3-46af-8367-6b89da34f727",
              "parent_uuid": "52e33c23-e766-408a-a035-5b63ebcd5dc4",
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
          "uuid": "aed83d3c-e071-426f-b0a6-f0c9a30b8778",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6670321d-1fa6-4f70-9bf3-ad0a7ce95aa3",
              "parent_uuid": "aed83d3c-e071-426f-b0a6-f0c9a30b8778",
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
          "uuid": "74f35d37-b141-4991-945c-a87fa13124cf",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34c67b89-daed-44a1-9202-976be77591b2",
              "parent_uuid": "74f35d37-b141-4991-945c-a87fa13124cf",
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
                  "uuid": "a9684c05-5903-4742-8358-3ea1c31e4fba",
                  "parent_uuid": "34c67b89-daed-44a1-9202-976be77591b2",
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
          "uuid": "ba12a29a-6f17-46d4-a42b-80dcd70710ca",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aab623da-fa4d-4611-a216-16a2ada1bced",
              "parent_uuid": "ba12a29a-6f17-46d4-a42b-80dcd70710ca",
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
          "uuid": "3e4cc1cf-9ac7-42be-b162-c823a5dad37c",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d3c43eba-3db6-4c0d-97f0-c56db65f88df",
              "parent_uuid": "3e4cc1cf-9ac7-42be-b162-c823a5dad37c",
              "tagName": "td",
              "properties": [
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
          "uuid": "23ee5a65-3487-4ff3-b50d-2b3dd4f1110b",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4e5b4b8-06e9-436b-b496-d3a55466db72",
              "parent_uuid": "23ee5a65-3487-4ff3-b50d-2b3dd4f1110b",
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
              "uuid": "78111215-4c1e-4380-8788-881cf36bfb86",
              "parent_uuid": "23ee5a65-3487-4ff3-b50d-2b3dd4f1110b",
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
              "uuid": "60d8a17f-7360-4372-ae83-0fec1afd82e2",
              "parent_uuid": "23ee5a65-3487-4ff3-b50d-2b3dd4f1110b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "677e0f50-fd13-40b3-963b-c49a8cd1fc0e",
                  "parent_uuid": "60d8a17f-7360-4372-ae83-0fec1afd82e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e1645ef-3a95-4499-ab49-cad7f4c0cca3",
              "parent_uuid": "23ee5a65-3487-4ff3-b50d-2b3dd4f1110b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67de00f3-4172-4f5d-a2e3-b78a2a16186e",
                  "parent_uuid": "4e1645ef-3a95-4499-ab49-cad7f4c0cca3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e09fe72-328d-43f1-a5b2-9f5d3a3a2d3b",
              "parent_uuid": "23ee5a65-3487-4ff3-b50d-2b3dd4f1110b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88bd86e9-5093-4ef1-a46e-9eb3714075b0",
                  "parent_uuid": "7e09fe72-328d-43f1-a5b2-9f5d3a3a2d3b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2944b26-d6a5-4b3f-b10e-759dbb7844af",
              "parent_uuid": "23ee5a65-3487-4ff3-b50d-2b3dd4f1110b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd7972db-5662-45bd-8d8b-76dd108a50ec",
                  "parent_uuid": "a2944b26-d6a5-4b3f-b10e-759dbb7844af",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db9e173d-9165-4574-a01f-3c87334b950e",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57374583-8dd7-4d69-804e-918a5e3874da",
              "parent_uuid": "db9e173d-9165-4574-a01f-3c87334b950e",
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
              "uuid": "6853ed7d-20ff-4a6f-952b-5406d756164a",
              "parent_uuid": "db9e173d-9165-4574-a01f-3c87334b950e",
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
              "uuid": "af6cb18b-21bd-4a00-b4a1-98777ea17ac1",
              "parent_uuid": "db9e173d-9165-4574-a01f-3c87334b950e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ffadb2a-09c2-453a-9560-a3e6e9543c8c",
                  "parent_uuid": "af6cb18b-21bd-4a00-b4a1-98777ea17ac1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "866e69ea-a021-4ad1-bdea-f60aff6278b5",
              "parent_uuid": "db9e173d-9165-4574-a01f-3c87334b950e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd257b88-ca92-4d4f-8af2-a3fb45fa0e7f",
                  "parent_uuid": "866e69ea-a021-4ad1-bdea-f60aff6278b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a9bea4e-ea31-432b-84fa-1da444137a39",
              "parent_uuid": "db9e173d-9165-4574-a01f-3c87334b950e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19aa30f1-5232-4af4-9491-d936a8d07daa",
                  "parent_uuid": "2a9bea4e-ea31-432b-84fa-1da444137a39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36a0bfb0-ea31-4029-9027-f19222d99c9e",
              "parent_uuid": "db9e173d-9165-4574-a01f-3c87334b950e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be2811ff-1c19-4a4f-972a-81668fda932c",
                  "parent_uuid": "36a0bfb0-ea31-4029-9027-f19222d99c9e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "faf3ad6d-8802-406f-a296-e2833af85350",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9e4bce2-cd39-41e4-913a-a7dd9a08b5ab",
              "parent_uuid": "faf3ad6d-8802-406f-a296-e2833af85350",
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
              "uuid": "e1f5efb3-1e2a-45d0-848d-e8c3a4bff8da",
              "parent_uuid": "faf3ad6d-8802-406f-a296-e2833af85350",
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
              "uuid": "deaf6a05-75f2-4f1b-a2ae-a2c0ac406129",
              "parent_uuid": "faf3ad6d-8802-406f-a296-e2833af85350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ec296d6-aacc-44bd-bd19-3350466e77b6",
                  "parent_uuid": "deaf6a05-75f2-4f1b-a2ae-a2c0ac406129",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6bbb5f1-30ff-4028-b47d-0fc579f05967",
              "parent_uuid": "faf3ad6d-8802-406f-a296-e2833af85350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "404b5a2b-8f58-40d7-8b7e-830e59442740",
                  "parent_uuid": "b6bbb5f1-30ff-4028-b47d-0fc579f05967",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cad3b48-6ca4-4c10-bcb5-2ca83eac5f61",
              "parent_uuid": "faf3ad6d-8802-406f-a296-e2833af85350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3721d528-adbc-410b-ba10-5107b682efe2",
                  "parent_uuid": "2cad3b48-6ca4-4c10-bcb5-2ca83eac5f61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c293379-944c-4b5a-8af5-bef9e36237ee",
              "parent_uuid": "faf3ad6d-8802-406f-a296-e2833af85350",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6cdb0ac-3df3-4ee2-932c-a21ee5ef8e08",
                  "parent_uuid": "7c293379-944c-4b5a-8af5-bef9e36237ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "45e6607e-2e4f-4cd0-a271-10db58850748",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5d6ae42-f3e4-47fb-9e29-48bfdf4af61a",
              "parent_uuid": "45e6607e-2e4f-4cd0-a271-10db58850748",
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
              "uuid": "486248f8-0628-4cd8-8770-5a03b7540434",
              "parent_uuid": "45e6607e-2e4f-4cd0-a271-10db58850748",
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
              "uuid": "e0eb75c1-7b8d-444e-9345-49b3fa2ed925",
              "parent_uuid": "45e6607e-2e4f-4cd0-a271-10db58850748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe65b751-b3ba-4b15-a077-96994acbbe97",
                  "parent_uuid": "e0eb75c1-7b8d-444e-9345-49b3fa2ed925",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79a2e131-c246-4567-9874-cf4c0ca2fbb5",
              "parent_uuid": "45e6607e-2e4f-4cd0-a271-10db58850748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02e403ea-2a9d-4098-af26-0bba6c715850",
                  "parent_uuid": "79a2e131-c246-4567-9874-cf4c0ca2fbb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93f81ae4-b152-48d0-b77f-2a0623aaeab2",
              "parent_uuid": "45e6607e-2e4f-4cd0-a271-10db58850748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84bbd849-1615-4ae9-9161-7996d94a291e",
                  "parent_uuid": "93f81ae4-b152-48d0-b77f-2a0623aaeab2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5234a812-c0b0-47e7-bc78-28efd6fadb0e",
              "parent_uuid": "45e6607e-2e4f-4cd0-a271-10db58850748",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83d3ea84-b681-49cc-9cbd-5f20b6d57703",
                  "parent_uuid": "5234a812-c0b0-47e7-bc78-28efd6fadb0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de500124-04b4-4ce1-a74e-0537fec4d995",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "81f95b06-27ff-4a00-9ed9-4c38d88d2b58",
              "parent_uuid": "de500124-04b4-4ce1-a74e-0537fec4d995",
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
          "uuid": "3e58caca-5df8-4a16-bd45-3f17ffed024f",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68d11e2b-4e27-4bfe-b0ea-3eb9e8c867d4",
              "parent_uuid": "3e58caca-5df8-4a16-bd45-3f17ffed024f",
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
              "uuid": "605bb255-0262-4db2-86f7-7e279b4c2a21",
              "parent_uuid": "3e58caca-5df8-4a16-bd45-3f17ffed024f",
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
              "uuid": "a204e172-83db-422d-9f71-df0638925304",
              "parent_uuid": "3e58caca-5df8-4a16-bd45-3f17ffed024f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "600879dd-9a08-4ed3-84a0-00b2cca18858",
                  "parent_uuid": "a204e172-83db-422d-9f71-df0638925304",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9dbf49e-dbe5-4cf0-ad73-6b9901283c95",
              "parent_uuid": "3e58caca-5df8-4a16-bd45-3f17ffed024f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79480b58-233e-4efa-b3f7-e850904c1987",
                  "parent_uuid": "a9dbf49e-dbe5-4cf0-ad73-6b9901283c95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc559596-618e-4673-ae4a-b268b94a4f43",
              "parent_uuid": "3e58caca-5df8-4a16-bd45-3f17ffed024f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8153b32f-3478-47ba-98b1-4731076efccd",
                  "parent_uuid": "cc559596-618e-4673-ae4a-b268b94a4f43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7078bdb5-d203-4ac9-a059-6967eecdb702",
              "parent_uuid": "3e58caca-5df8-4a16-bd45-3f17ffed024f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e7ae760-88ae-495b-8b1d-d3475fed0930",
                  "parent_uuid": "7078bdb5-d203-4ac9-a059-6967eecdb702",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14c387c9-2cec-4658-8ff3-4a584180ccc9",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f90c0dd6-de4a-4948-8635-7e1a5cc61da3",
              "parent_uuid": "14c387c9-2cec-4658-8ff3-4a584180ccc9",
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
              "uuid": "65b0cef4-4103-4fa8-8cfe-dbfb33f428f6",
              "parent_uuid": "14c387c9-2cec-4658-8ff3-4a584180ccc9",
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
              "uuid": "5d81a784-d81a-418a-9ea5-982ab052327d",
              "parent_uuid": "14c387c9-2cec-4658-8ff3-4a584180ccc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88109c5e-e9c3-4d3e-85e9-c0053b737889",
                  "parent_uuid": "5d81a784-d81a-418a-9ea5-982ab052327d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4157fcef-fb0d-45bf-ae2e-60ecee1fb278",
              "parent_uuid": "14c387c9-2cec-4658-8ff3-4a584180ccc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eedd512d-1f67-4731-a27a-b662233d1e7a",
                  "parent_uuid": "4157fcef-fb0d-45bf-ae2e-60ecee1fb278",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "603f1804-4d7a-48d4-b5e8-be3794b49072",
              "parent_uuid": "14c387c9-2cec-4658-8ff3-4a584180ccc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88c4ca22-ec78-42bf-bde3-bb603af054b2",
                  "parent_uuid": "603f1804-4d7a-48d4-b5e8-be3794b49072",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cbe5230-c274-4dd9-bbd3-c4671bd837cb",
              "parent_uuid": "14c387c9-2cec-4658-8ff3-4a584180ccc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdac8e12-3de8-4dbb-84c1-f7bb32cdd1de",
                  "parent_uuid": "1cbe5230-c274-4dd9-bbd3-c4671bd837cb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a687f3d5-d7bd-42de-8c4c-f52bf84b9711",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2f8da39-c4e1-4b08-ba92-7320b191a1ef",
              "parent_uuid": "a687f3d5-d7bd-42de-8c4c-f52bf84b9711",
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
              "uuid": "7957803a-9bbc-4087-9f28-628ea3228d9d",
              "parent_uuid": "a687f3d5-d7bd-42de-8c4c-f52bf84b9711",
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
              "uuid": "e4f7b7d4-cbd5-4a30-b90e-08db3bd780c4",
              "parent_uuid": "a687f3d5-d7bd-42de-8c4c-f52bf84b9711",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c727b7b3-5875-4c99-b8a2-d7c6a20f4b13",
                  "parent_uuid": "e4f7b7d4-cbd5-4a30-b90e-08db3bd780c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10f3ad37-942a-4013-97e4-935810a47c51",
              "parent_uuid": "a687f3d5-d7bd-42de-8c4c-f52bf84b9711",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5dcaf3c-819b-4d6a-aa20-d0f80625acb3",
                  "parent_uuid": "10f3ad37-942a-4013-97e4-935810a47c51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa6c96c8-207f-49a1-9a20-2a356b5b2b54",
              "parent_uuid": "a687f3d5-d7bd-42de-8c4c-f52bf84b9711",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec7ee4de-9ce4-41e1-b921-b156f38b38e9",
                  "parent_uuid": "fa6c96c8-207f-49a1-9a20-2a356b5b2b54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8caea8ec-e0de-441a-b16b-0d989f16155a",
              "parent_uuid": "a687f3d5-d7bd-42de-8c4c-f52bf84b9711",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c2fdf74-017d-43f1-8b2d-df84ff97900e",
                  "parent_uuid": "8caea8ec-e0de-441a-b16b-0d989f16155a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c3b51118-dee6-4293-86b2-8d891970fae2",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1a0cde7-9412-45fd-957c-6ebb7c98f977",
              "parent_uuid": "c3b51118-dee6-4293-86b2-8d891970fae2",
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
              "uuid": "c96565e8-18ca-4866-8825-48b627d82b47",
              "parent_uuid": "c3b51118-dee6-4293-86b2-8d891970fae2",
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
              "uuid": "a2a66d80-4f11-468a-a168-3677eb6afc6e",
              "parent_uuid": "c3b51118-dee6-4293-86b2-8d891970fae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbfccb75-7cb3-4b1c-b2a5-016d5f428267",
                  "parent_uuid": "a2a66d80-4f11-468a-a168-3677eb6afc6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6fe0e0c-a0d8-440d-bf74-a4b9c552c227",
              "parent_uuid": "c3b51118-dee6-4293-86b2-8d891970fae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "034384ca-1042-4e20-8dc8-d7e7c738f994",
                  "parent_uuid": "e6fe0e0c-a0d8-440d-bf74-a4b9c552c227",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7fd6030f-1003-41de-a8cd-1b5ddc40a8b8",
              "parent_uuid": "c3b51118-dee6-4293-86b2-8d891970fae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d59aeb3-49f4-4157-ae8c-ed65194ee624",
                  "parent_uuid": "7fd6030f-1003-41de-a8cd-1b5ddc40a8b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95bb9f86-b1f1-48bd-ba1d-9505d13a3ca0",
              "parent_uuid": "c3b51118-dee6-4293-86b2-8d891970fae2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e90668bd-6742-4ba4-a364-87e6f8af2af9",
                  "parent_uuid": "95bb9f86-b1f1-48bd-ba1d-9505d13a3ca0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a2debc88-c143-4940-b92c-667d3658bf83",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad7c100d-77bf-4c3b-b601-334ea6228a9b",
              "parent_uuid": "a2debc88-c143-4940-b92c-667d3658bf83",
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
          "uuid": "dad6aded-1ac8-4b82-8331-45f67c5f029f",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cbfb222d-7fa3-49dc-8c8d-032ad51b2538",
              "parent_uuid": "dad6aded-1ac8-4b82-8331-45f67c5f029f",
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
          "uuid": "99582240-0e29-4ac8-a096-59eb7f2f4a9d",
          "parent_uuid": "cbf0651f-7c67-449d-a6b1-34540ddc8ed8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da422a31-b208-4864-b6ec-3035e34e680e",
              "parent_uuid": "99582240-0e29-4ac8-a096-59eb7f2f4a9d",
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
                  "uuid": "d5513401-57a2-4058-a291-85e39a4e72d5",
                  "parent_uuid": "da422a31-b208-4864-b6ec-3035e34e680e",
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



DECLARE @allChecklistsVersions TABLE ( CL_UID uniqueidentifier NOT NULL PRIMARY KEY(CL_UID), CL_Name nvarchar(256) NULL, CLV_UID uniqueidentifier NOT NULL, CLV_Sort int); 

INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'eb159a9c-e69f-49f4-b10e-3a4825973e46', N'Schüttgutcontainer', '08796354-F7AA-4EDF-B943-A51F7AFDAD1D', 1); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'1f6bee57-38a8-4b29-9986-bfad7d107215', N'EVA', '11109E12-7B76-4B60-9168-42FC41D28383', 2); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'58a6d34c-2d4b-4f8a-b831-60488591aedc', N'CIS', '7F973E2D-5BEB-4E0F-932E-642CB936E7B6', 3); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'da19d272-9439-47a7-9749-153dafab2b69', N'VHP', 'E4FD4412-523C-41F0-9CDF-FFB3E5638C3C', 4); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'698ea23d-485a-4cee-9b06-2e130a3a5626', N'NPL', '6A3210F8-161F-4DF5-9566-1C66BF41D61D', 5); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'f1a2dd8a-2d11-496e-9b14-13559405089f', N'BPS_M7', '26456198-0699-4718-AAF7-B8119BE9D705', 6); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'ddada097-1bb4-46d5-9ee5-7bb28dd3201b', N'BPS_1020', 'FA28E4D1-E505-4C54-9305-52D526DD0D70', 7); 



;WITH CTE AS 
(
	SELECT 
		 CLV_UID AS CLV_UID -- uniqueidentifier 
		,CL_UID CLV_CL_UID -- uniqueidentifier 
		,(SELECT TOP 1 BE_ID FROM T_Benutzer WHERE BE_User IN ('noob.mcnoobington', 'administrator') ) AS CLV_Owner_BE_ID -- int 
		,CURRENT_TIMESTAMP AS CLV_Created -- datetime 
		,CAST('29991231' AS datetime) AS CLV_Obsoleted -- datetime 
	FROM @allChecklistsVersions 
)
-- SELECT * FROM CTE 


MERGE INTO dbo.T_ChecklistVersion AS A 
USING CTE ON CTE.CLV_UID = A.CLV_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.CLV_CL_UID = CTE.CLV_CL_UID 
            ,A.CLV_Owner_BE_ID = CTE.CLV_Owner_BE_ID 
			,A.CLV_Created = CTE.CLV_Created 
			,A.CLV_Obsoleted = CTE.CLV_Obsoleted 


WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
		 CLV_UID 
		,CLV_CL_UID 
		,CLV_Owner_BE_ID 
		,CLV_Created 
		,CLV_Obsoleted 
    ) 
    VALUES 
    ( 
		 CTE.CLV_UID 
		,CTE.CLV_CL_UID 
		,CTE.CLV_Owner_BE_ID 
		,CTE.CLV_Created 
		,CTE.CLV_Obsoleted 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;


SELECT * FROM T_ChecklistVersion;


-- DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 
-- DELETE FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
-- DELETE FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 




-- T_ChecklistElements

;WITH CTE AS 
( 
	SELECT 
		 uuid AS ELE_UID -- uniqueidentifier
		,parent_uuid AS ELE_Parent_UID -- uniqueidentifier
		,'6A3210F8-161F-4DF5-9566-1C66BF41D61D' AS ELE_CLV_UID -- uniqueidentifier
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
            ,A.ELE_CLV_UID = CTE.ELE_CLV_UID 
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
        ,ELE_CLV_UID 
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
        ,CTE.ELE_CLV_UID 
        ,CTE.ELE_TagName 
        ,CTE.ELE_Level 
        ,CTE.ELE_Sort 
        ,CTE.ELE_RecSort 
        ,CTE.ELE_InnerHtml 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
 WHEN NOT MATCHED BY SOURCE AND A.ELE_CLV_UID IN(SELECT ELE_CLV_UID FROM CTE WHERE ELE_CLV_UID IS NOT NULL GROUP BY ELE_CLV_UID) THEN DELETE;
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

SELECT ELE_UID, ELE_Parent_UID, ELE_CLV_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CLV_UID IN (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cl_uid ORDER BY CLV_Created  DESC )

-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties 
WHERE PRO_ELE_UID IN ( SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CLV_UID IN (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cl_uid ORDER BY CLV_Created  DESC ) 
) ORDER BY PRO_ELE_UID, PRO_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

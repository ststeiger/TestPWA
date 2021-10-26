
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
  "uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "a086b56a-d058-4ac5-abda-5c82e3fa1d78",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "0e45d3a8-a43f-4a52-899c-6d9e53c3dbe9",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "d211f0db-136f-4f3a-9b1a-b14e9fc215d1",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "0b15362e-364f-4ee2-9a72-56c51d588891",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "371693f5-fd2c-4574-a473-442b3b590436",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "76f06d75-87eb-428e-ba40-37f66a255b88",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "36cd8be6-3e81-4d34-986e-93d858328ebb",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
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
      "uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
      "parent_uuid": "6cf6e679-a0d4-4e4f-becc-4a48e84a3b51",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b883e583-f1c2-48dc-b2d1-8b6ab396dcb5",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "ec74b758-3e11-4342-9811-cbecabc42e68",
              "parent_uuid": "b883e583-f1c2-48dc-b2d1-8b6ab396dcb5",
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
              "uuid": "8a4b9103-92d6-410a-aa99-56f86ac68d08",
              "parent_uuid": "b883e583-f1c2-48dc-b2d1-8b6ab396dcb5",
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
              "uuid": "4584a8bc-9737-4b5b-81bf-91931ec1d0d6",
              "parent_uuid": "b883e583-f1c2-48dc-b2d1-8b6ab396dcb5",
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
              "uuid": "9bd63d2b-e8ec-4862-97b5-9957559a0f88",
              "parent_uuid": "b883e583-f1c2-48dc-b2d1-8b6ab396dcb5",
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
          "uuid": "898ee0e3-12f8-48dc-a742-53feb23944ad",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "42caaabb-2eda-4d59-8bfa-238318cec35a",
              "parent_uuid": "898ee0e3-12f8-48dc-a742-53feb23944ad",
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
              "uuid": "c20907e1-4e21-47f0-8796-bcea5e696b20",
              "parent_uuid": "898ee0e3-12f8-48dc-a742-53feb23944ad",
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
              "uuid": "83976acf-d424-4420-a468-44f815891449",
              "parent_uuid": "898ee0e3-12f8-48dc-a742-53feb23944ad",
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
              "uuid": "4c0defab-371f-4426-b180-635841d1aaf9",
              "parent_uuid": "898ee0e3-12f8-48dc-a742-53feb23944ad",
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
          "uuid": "1e3b3467-79c8-4ab7-b747-5ca79dc50758",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66278593-0d70-4246-9f2b-2a559a2b5c88",
              "parent_uuid": "1e3b3467-79c8-4ab7-b747-5ca79dc50758",
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
              "uuid": "e9ae2c12-1a3c-417d-b662-2623b9d6871a",
              "parent_uuid": "1e3b3467-79c8-4ab7-b747-5ca79dc50758",
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
              "uuid": "97a9be32-6d4e-4777-bc2b-b6c05a042c97",
              "parent_uuid": "1e3b3467-79c8-4ab7-b747-5ca79dc50758",
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
              "uuid": "8db6735d-82ec-4316-bf72-3abb5efba7f1",
              "parent_uuid": "1e3b3467-79c8-4ab7-b747-5ca79dc50758",
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
              "uuid": "6f6e212c-943e-4283-83e3-bd0abacb86d9",
              "parent_uuid": "1e3b3467-79c8-4ab7-b747-5ca79dc50758",
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
              "uuid": "664aff44-a83f-4ad7-8182-37ef91d2849d",
              "parent_uuid": "1e3b3467-79c8-4ab7-b747-5ca79dc50758",
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
          "uuid": "5efadae0-5b59-4807-b96a-4fbd14b66505",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fd366cdd-54df-488f-832e-343f8b645b80",
              "parent_uuid": "5efadae0-5b59-4807-b96a-4fbd14b66505",
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
          "uuid": "661983d0-f5d7-447c-939b-513bcc537fd7",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00a6ffe1-6cca-432e-95ec-00889479631b",
              "parent_uuid": "661983d0-f5d7-447c-939b-513bcc537fd7",
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
              "uuid": "3391961a-d565-4b16-9b3e-6df5763e1ba3",
              "parent_uuid": "661983d0-f5d7-447c-939b-513bcc537fd7",
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
              "uuid": "c7a54a20-dc12-4512-a143-fa4c001d3d0b",
              "parent_uuid": "661983d0-f5d7-447c-939b-513bcc537fd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82248dee-f45d-4b9a-8330-dc1c9d1b160f",
                  "parent_uuid": "c7a54a20-dc12-4512-a143-fa4c001d3d0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f57a95de-b7a7-4101-a6ae-bac7ff07bfc9",
              "parent_uuid": "661983d0-f5d7-447c-939b-513bcc537fd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c3a7846-ebab-42ad-811e-e79a8cf5616c",
                  "parent_uuid": "f57a95de-b7a7-4101-a6ae-bac7ff07bfc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6bb40ed-f4b4-4862-9986-1121d86016c9",
              "parent_uuid": "661983d0-f5d7-447c-939b-513bcc537fd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c14103d-ac10-4771-90d1-f7bc14929924",
                  "parent_uuid": "e6bb40ed-f4b4-4862-9986-1121d86016c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30818932-2300-4db9-bb8c-49229906db65",
              "parent_uuid": "661983d0-f5d7-447c-939b-513bcc537fd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2ca7e4f-65ea-45f7-b5a5-8d6d4bcb6cbb",
                  "parent_uuid": "30818932-2300-4db9-bb8c-49229906db65",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9393af74-c081-468f-b9fc-f4d7a6321573",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e0b871f-9c6f-47c9-bc2a-bf3e8a6e6076",
              "parent_uuid": "9393af74-c081-468f-b9fc-f4d7a6321573",
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
              "uuid": "cb66b517-5478-4ddc-8aa2-0e4f3978892c",
              "parent_uuid": "9393af74-c081-468f-b9fc-f4d7a6321573",
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
              "uuid": "847f7fc1-d21e-4d49-8aa2-2dfa51b36c9b",
              "parent_uuid": "9393af74-c081-468f-b9fc-f4d7a6321573",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b46e603-0aad-449a-8da2-79b94b194040",
                  "parent_uuid": "847f7fc1-d21e-4d49-8aa2-2dfa51b36c9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a497a22-15c5-46e9-b5ff-46e478bd4c29",
              "parent_uuid": "9393af74-c081-468f-b9fc-f4d7a6321573",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b71e1807-0407-4fd6-b3ab-cfcfb6fe3fe7",
                  "parent_uuid": "9a497a22-15c5-46e9-b5ff-46e478bd4c29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "334e85f9-0930-45f6-af38-dfd71145350a",
              "parent_uuid": "9393af74-c081-468f-b9fc-f4d7a6321573",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1bf33c7-ec12-49f6-8875-cf00df3dc8a9",
                  "parent_uuid": "334e85f9-0930-45f6-af38-dfd71145350a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f916fe91-cece-4b36-8318-0ad0e83b023c",
              "parent_uuid": "9393af74-c081-468f-b9fc-f4d7a6321573",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7626bf8d-0ece-4095-a648-a608fb300240",
                  "parent_uuid": "f916fe91-cece-4b36-8318-0ad0e83b023c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0ce8c97b-413b-4eb2-9c8d-76d1e5d19703",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81aed8f1-40f8-4604-872d-296953f85fe3",
              "parent_uuid": "0ce8c97b-413b-4eb2-9c8d-76d1e5d19703",
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
              "uuid": "6c39fb72-02c7-459e-b059-96d4b72a1fce",
              "parent_uuid": "0ce8c97b-413b-4eb2-9c8d-76d1e5d19703",
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
              "uuid": "203b41d4-f157-4989-80d2-fa3f111960c7",
              "parent_uuid": "0ce8c97b-413b-4eb2-9c8d-76d1e5d19703",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e96bea2-3703-4b30-bb43-f3f361b11ae2",
                  "parent_uuid": "203b41d4-f157-4989-80d2-fa3f111960c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "422be054-468f-4109-b515-dd9217e6c0ac",
              "parent_uuid": "0ce8c97b-413b-4eb2-9c8d-76d1e5d19703",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28e4ce80-c46b-473b-b011-933a026ea6ca",
                  "parent_uuid": "422be054-468f-4109-b515-dd9217e6c0ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fefab91c-69ef-44e5-b697-677ea8c42e1e",
              "parent_uuid": "0ce8c97b-413b-4eb2-9c8d-76d1e5d19703",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0acb52b-1a43-4175-bc63-48fc018d38a8",
                  "parent_uuid": "fefab91c-69ef-44e5-b697-677ea8c42e1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3188afb-56dc-410b-9284-ce10aac28747",
              "parent_uuid": "0ce8c97b-413b-4eb2-9c8d-76d1e5d19703",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "021bfb61-f1a8-407f-8bab-cca193c25938",
                  "parent_uuid": "e3188afb-56dc-410b-9284-ce10aac28747",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d83d857e-efab-4386-acd7-4f2f39507f64",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a8534ce-cefa-4e7d-87c8-c61274c9d054",
              "parent_uuid": "d83d857e-efab-4386-acd7-4f2f39507f64",
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
              "uuid": "6ecdf015-7d3e-400f-a376-3b528f6ea924",
              "parent_uuid": "d83d857e-efab-4386-acd7-4f2f39507f64",
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
              "uuid": "c951423f-5789-4c8d-b2d6-b1789b490938",
              "parent_uuid": "d83d857e-efab-4386-acd7-4f2f39507f64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fc60263-ec85-4a2d-944c-2015735d7cb2",
                  "parent_uuid": "c951423f-5789-4c8d-b2d6-b1789b490938",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "605b3962-5fa4-4419-a604-85a9f925c340",
              "parent_uuid": "d83d857e-efab-4386-acd7-4f2f39507f64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4eb72090-c3f0-4331-8fd7-df0f75632b3b",
                  "parent_uuid": "605b3962-5fa4-4419-a604-85a9f925c340",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0c24510-6ac1-427e-8ac8-e5f3935c96d1",
              "parent_uuid": "d83d857e-efab-4386-acd7-4f2f39507f64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "476471b4-12da-4531-920f-122dee5b9d0c",
                  "parent_uuid": "d0c24510-6ac1-427e-8ac8-e5f3935c96d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2993303c-c250-4d5f-a983-7f242baa0543",
              "parent_uuid": "d83d857e-efab-4386-acd7-4f2f39507f64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b7576a3-9044-4996-9ab8-0afcccff4024",
                  "parent_uuid": "2993303c-c250-4d5f-a983-7f242baa0543",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af257f45-a73c-433b-b0b3-36be5f235afa",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9e52bf1d-6fdb-49fc-8fd8-0b5d07b677e3",
              "parent_uuid": "af257f45-a73c-433b-b0b3-36be5f235afa",
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
          "uuid": "76977ffb-bc57-422c-bec8-8f41ff625679",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3105aec2-5d59-4892-8263-284b36d7d630",
              "parent_uuid": "76977ffb-bc57-422c-bec8-8f41ff625679",
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
              "innerHtml": "\r\n                    <span>Gesamte Anlage reinigen:<br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cae373b8-98bd-4cc6-8f5e-c1e5a7c2c3de",
              "parent_uuid": "76977ffb-bc57-422c-bec8-8f41ff625679",
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
              "uuid": "61c400cd-29e2-4c1f-84c3-098376a799e7",
              "parent_uuid": "76977ffb-bc57-422c-bec8-8f41ff625679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f051b61-fe3d-4c5a-90ec-9b61fc2b385b",
                  "parent_uuid": "61c400cd-29e2-4c1f-84c3-098376a799e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b02426f-2861-4c82-8c9f-d69129342377",
              "parent_uuid": "76977ffb-bc57-422c-bec8-8f41ff625679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e86bcc99-eb75-43c3-8c15-460543978821",
                  "parent_uuid": "9b02426f-2861-4c82-8c9f-d69129342377",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe99d246-4b56-4a97-aacc-7828edf76b03",
              "parent_uuid": "76977ffb-bc57-422c-bec8-8f41ff625679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e37a70d4-76dc-4055-b2fc-9635efa9285d",
                  "parent_uuid": "fe99d246-4b56-4a97-aacc-7828edf76b03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97e917b6-1a0f-41fb-abd2-d64cfded8137",
              "parent_uuid": "76977ffb-bc57-422c-bec8-8f41ff625679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c1cab4c-28b0-41f1-9f32-330df5ea3bfb",
                  "parent_uuid": "97e917b6-1a0f-41fb-abd2-d64cfded8137",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "da990643-2323-4f1a-ac3e-ea9ea9c90e34",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a857f78-5e24-489b-a346-3cbe2e9260a0",
              "parent_uuid": "da990643-2323-4f1a-ac3e-ea9ea9c90e34",
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
              "uuid": "5674985f-60a2-43f9-b744-e50c0c711cc4",
              "parent_uuid": "da990643-2323-4f1a-ac3e-ea9ea9c90e34",
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
              "uuid": "942b3e71-9c5a-44aa-8142-33d9fc541b55",
              "parent_uuid": "da990643-2323-4f1a-ac3e-ea9ea9c90e34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "673c670a-4c3e-4e9f-bf1b-2afa32bb7e2a",
                  "parent_uuid": "942b3e71-9c5a-44aa-8142-33d9fc541b55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bb7fb0a-73a5-419d-b0cb-657d1cfba11d",
              "parent_uuid": "da990643-2323-4f1a-ac3e-ea9ea9c90e34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f3e48ac-2c3a-4a81-98fa-9e61d98eb288",
                  "parent_uuid": "6bb7fb0a-73a5-419d-b0cb-657d1cfba11d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8d35c6f-f784-4614-9862-d58edb17a9e2",
              "parent_uuid": "da990643-2323-4f1a-ac3e-ea9ea9c90e34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5faa9ce6-e41e-40f0-a279-394fbb5c1082",
                  "parent_uuid": "d8d35c6f-f784-4614-9862-d58edb17a9e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc13768d-24f2-4ce0-ba05-677cddb468c5",
              "parent_uuid": "da990643-2323-4f1a-ac3e-ea9ea9c90e34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47409fd5-0738-4e76-83ba-250e7058d5d8",
                  "parent_uuid": "dc13768d-24f2-4ce0-ba05-677cddb468c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "83ca88e7-f711-4f66-8d7d-6777d4438ef3",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f77fdf8-29b1-44cd-9cd3-0282fb006fad",
              "parent_uuid": "83ca88e7-f711-4f66-8d7d-6777d4438ef3",
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
              "uuid": "fe839862-40bc-4259-bba8-d5b6ed493c09",
              "parent_uuid": "83ca88e7-f711-4f66-8d7d-6777d4438ef3",
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
              "uuid": "4b8774fd-fb26-4362-9e2a-01def4f48f55",
              "parent_uuid": "83ca88e7-f711-4f66-8d7d-6777d4438ef3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2fafaa09-663c-486c-a086-11c211b1351c",
                  "parent_uuid": "4b8774fd-fb26-4362-9e2a-01def4f48f55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30b78607-6c6b-4286-8a14-68824c36ddb8",
              "parent_uuid": "83ca88e7-f711-4f66-8d7d-6777d4438ef3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e46f3cf8-db3a-45c2-8be2-1cd6badd34e7",
                  "parent_uuid": "30b78607-6c6b-4286-8a14-68824c36ddb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "676a80f2-bdd6-439b-9eb5-7df2dac49935",
              "parent_uuid": "83ca88e7-f711-4f66-8d7d-6777d4438ef3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f4d9d4a-4966-40eb-ac3d-6aa1a93f01c5",
                  "parent_uuid": "676a80f2-bdd6-439b-9eb5-7df2dac49935",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "217da438-7481-4043-891e-eb783f354668",
              "parent_uuid": "83ca88e7-f711-4f66-8d7d-6777d4438ef3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61dcf810-8ce8-4eff-a63d-9fdb1a5b649e",
                  "parent_uuid": "217da438-7481-4043-891e-eb783f354668",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7cbf606e-0dcf-4037-817a-f267c3742d4d",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18b7a602-94f6-4112-9d66-5ac5cb06ce78",
              "parent_uuid": "7cbf606e-0dcf-4037-817a-f267c3742d4d",
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
              "uuid": "1b55b781-d36f-4fc2-a770-4d9cc2e06448",
              "parent_uuid": "7cbf606e-0dcf-4037-817a-f267c3742d4d",
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
              "uuid": "33bea007-7a07-427a-ad7f-e4d766363e13",
              "parent_uuid": "7cbf606e-0dcf-4037-817a-f267c3742d4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c4124b8-365b-4a5b-842f-22a459e626ab",
                  "parent_uuid": "33bea007-7a07-427a-ad7f-e4d766363e13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78560221-4c86-4228-8aec-34fcead9f72c",
              "parent_uuid": "7cbf606e-0dcf-4037-817a-f267c3742d4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69e7d206-0848-491f-b48f-455c41f540f5",
                  "parent_uuid": "78560221-4c86-4228-8aec-34fcead9f72c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "167f4d54-70ef-46ad-89b2-118440ff6837",
              "parent_uuid": "7cbf606e-0dcf-4037-817a-f267c3742d4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18a7f0e9-71c0-44eb-a294-994a8b488662",
                  "parent_uuid": "167f4d54-70ef-46ad-89b2-118440ff6837",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "351b66ad-f771-4932-af4b-78780395ee2f",
              "parent_uuid": "7cbf606e-0dcf-4037-817a-f267c3742d4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0908d13-37f0-4afd-a5e0-38bf85e37253",
                  "parent_uuid": "351b66ad-f771-4932-af4b-78780395ee2f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "17da6bb7-507c-4ee0-92e3-3be9df2d3227",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f558db7-66e5-4d4d-b890-280dd0cac821",
              "parent_uuid": "17da6bb7-507c-4ee0-92e3-3be9df2d3227",
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
              "innerHtml": "\r\n                    <span>Transportriemen gross reinigen:<br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f2712c5d-2b3c-4934-8080-cde7b71b509b",
              "parent_uuid": "17da6bb7-507c-4ee0-92e3-3be9df2d3227",
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
              "uuid": "262256dd-2e41-4a17-8364-d60ffbc78969",
              "parent_uuid": "17da6bb7-507c-4ee0-92e3-3be9df2d3227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f17e0262-3573-4ac7-ba0d-ced5c0702987",
                  "parent_uuid": "262256dd-2e41-4a17-8364-d60ffbc78969",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1fd54c18-e46f-4810-9dec-4e42820370ce",
              "parent_uuid": "17da6bb7-507c-4ee0-92e3-3be9df2d3227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ffad5fe-c47b-4300-a847-fcc423976a67",
                  "parent_uuid": "1fd54c18-e46f-4810-9dec-4e42820370ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bd44cc2-806f-4f86-a806-63d2ffcb3d11",
              "parent_uuid": "17da6bb7-507c-4ee0-92e3-3be9df2d3227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e43cde0-155f-44d5-b969-86461e991f5e",
                  "parent_uuid": "9bd44cc2-806f-4f86-a806-63d2ffcb3d11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd3a5c6e-1b30-4408-9a7d-3ecdc8570755",
              "parent_uuid": "17da6bb7-507c-4ee0-92e3-3be9df2d3227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c2c7074-f4cf-472d-930a-eb59556f90da",
                  "parent_uuid": "dd3a5c6e-1b30-4408-9a7d-3ecdc8570755",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f89e5ada-d5d4-4bf3-8706-1413aa631958",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2eb99fea-4301-4a0b-8954-12585b3aee6b",
              "parent_uuid": "f89e5ada-d5d4-4bf3-8706-1413aa631958",
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
              "innerHtml": "\r\n                    <span>Transportriemen klein reinigen:<br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8c319bcc-547d-440d-94d2-277af3ae11de",
              "parent_uuid": "f89e5ada-d5d4-4bf3-8706-1413aa631958",
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
              "uuid": "de9cba76-aa4e-4591-ad4c-768081c8648c",
              "parent_uuid": "f89e5ada-d5d4-4bf3-8706-1413aa631958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a39f8c6-49f7-42f3-96ff-35b1bbbfc034",
                  "parent_uuid": "de9cba76-aa4e-4591-ad4c-768081c8648c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5921b894-c95e-4531-847b-d2c7feaf8bbb",
              "parent_uuid": "f89e5ada-d5d4-4bf3-8706-1413aa631958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "819a7439-9890-4f06-9a55-cbc0102cd1fe",
                  "parent_uuid": "5921b894-c95e-4531-847b-d2c7feaf8bbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9a3c593-edef-4d97-a946-8bef10cc4c15",
              "parent_uuid": "f89e5ada-d5d4-4bf3-8706-1413aa631958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfd53660-1726-4de5-933b-ae1f158b44ed",
                  "parent_uuid": "c9a3c593-edef-4d97-a946-8bef10cc4c15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ab63f43-9bc4-401d-90c1-0ef5c67b4d04",
              "parent_uuid": "f89e5ada-d5d4-4bf3-8706-1413aa631958",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2478d9fc-8b2a-4cf2-a0b3-9d58b8a77a7e",
                  "parent_uuid": "8ab63f43-9bc4-401d-90c1-0ef5c67b4d04",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "433fbf86-9dd1-48e2-8c16-f47e25a2623b",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa16da38-2544-45fb-89d3-2dc834481704",
              "parent_uuid": "433fbf86-9dd1-48e2-8c16-f47e25a2623b",
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
              "innerHtml": "\r\n                    <span>Spannung Transporriemen gross überprüfen:<br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f62e5374-ce17-4e18-b22f-611475b52ea3",
              "parent_uuid": "433fbf86-9dd1-48e2-8c16-f47e25a2623b",
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
              "uuid": "e4e8c8ad-cdfe-4eb5-8d77-b195f69aacb4",
              "parent_uuid": "433fbf86-9dd1-48e2-8c16-f47e25a2623b",
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
                  "uuid": "60248283-9695-4dec-ab2c-e0af9e2e7c40",
                  "parent_uuid": "e4e8c8ad-cdfe-4eb5-8d77-b195f69aacb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79a325d0-760a-4b3c-8ef4-9b797301c114",
              "parent_uuid": "433fbf86-9dd1-48e2-8c16-f47e25a2623b",
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
                  "uuid": "4f259703-89a3-4d2c-a1bc-d623ce302625",
                  "parent_uuid": "79a325d0-760a-4b3c-8ef4-9b797301c114",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "979f7921-5f61-456e-8b24-31cc7a2a31a3",
              "parent_uuid": "433fbf86-9dd1-48e2-8c16-f47e25a2623b",
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
                  "uuid": "1a0d619a-6b34-41c9-ae49-4ff2326e998e",
                  "parent_uuid": "979f7921-5f61-456e-8b24-31cc7a2a31a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1b9c98d-56d4-4554-96d5-8c5747db883f",
              "parent_uuid": "433fbf86-9dd1-48e2-8c16-f47e25a2623b",
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
                  "uuid": "23645950-d52c-49b2-9a54-99ab31a97e29",
                  "parent_uuid": "e1b9c98d-56d4-4554-96d5-8c5747db883f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "adcbe516-03a3-472f-a08b-504037f4a4d7",
              "parent_uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
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
              "uuid": "36eb63d7-4304-4ee0-be79-0e0d949cf9fa",
              "parent_uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
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
              "uuid": "9d6d6ff9-5f68-46ea-8769-e18e57ae03b1",
              "parent_uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
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
              "uuid": "7f4134a5-a0aa-4535-ab32-37cfd9c8b72d",
              "parent_uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
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
                  "uuid": "9cba3b72-0135-4f98-ac14-f114791f5e65",
                  "parent_uuid": "7f4134a5-a0aa-4535-ab32-37cfd9c8b72d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ac194a9-5c07-4c29-8aa2-9eafecab5c46",
              "parent_uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
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
                  "uuid": "3b346b8c-1fcf-4479-bbc4-92b1942654ba",
                  "parent_uuid": "3ac194a9-5c07-4c29-8aa2-9eafecab5c46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c391ab81-202f-4392-a521-230dcb630f1b",
              "parent_uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
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
                  "uuid": "d038496c-9315-4044-9faa-5a74cc03abb7",
                  "parent_uuid": "c391ab81-202f-4392-a521-230dcb630f1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8861049-d04f-49a9-b958-dbd5eb7e503c",
              "parent_uuid": "a27bb8ab-4dc4-44f5-9258-f2e2e84e1082",
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
                  "uuid": "6ecb4f4d-b7de-4eb8-8b53-ba24b360854d",
                  "parent_uuid": "d8861049-d04f-49a9-b958-dbd5eb7e503c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16bedfe0-332f-4fa8-bd3b-4c7856be7a7b",
              "parent_uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
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
              "uuid": "0ff7c313-c071-4675-b058-9d77b2831791",
              "parent_uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
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
              "uuid": "b927f0a3-06b1-43b8-ac6f-e6feb31be74d",
              "parent_uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
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
                  "uuid": "b0e0e866-6330-4604-979c-f41be76e9430",
                  "parent_uuid": "b927f0a3-06b1-43b8-ac6f-e6feb31be74d",
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
              "uuid": "9a83b674-e5a7-451b-b6a3-918d669c9ddb",
              "parent_uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
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
                  "uuid": "64cd1e80-cba5-4f14-a100-809ea673fbba",
                  "parent_uuid": "9a83b674-e5a7-451b-b6a3-918d669c9ddb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6175b4cf-5388-4bf5-a686-628e7b2f226e",
              "parent_uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
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
                  "uuid": "817ffd12-a556-4270-b474-a6173330be8b",
                  "parent_uuid": "6175b4cf-5388-4bf5-a686-628e7b2f226e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f21c578d-9bde-48a2-bfc9-4db1dc407877",
              "parent_uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
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
                  "uuid": "8da23bc9-dc0e-48c8-9189-3b4ca4f04bd8",
                  "parent_uuid": "f21c578d-9bde-48a2-bfc9-4db1dc407877",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f911e82-30bb-42be-bdd1-fe4e154b7c54",
              "parent_uuid": "eee8e167-3a0e-467f-a781-b40ade8e0222",
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
                  "uuid": "8ebe4d14-4272-4421-98d7-6fa77697a2e0",
                  "parent_uuid": "4f911e82-30bb-42be-bdd1-fe4e154b7c54",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cc80d4a3-d042-4d62-9e87-7dcbca91f11d",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ebfb49b6-5e66-4068-827f-41b262557866",
              "parent_uuid": "cc80d4a3-d042-4d62-9e87-7dcbca91f11d",
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
              "uuid": "05144732-2503-4d8a-bb12-fdc06b739720",
              "parent_uuid": "cc80d4a3-d042-4d62-9e87-7dcbca91f11d",
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
              "uuid": "c1153c4d-a45d-4b37-b4a9-531e5942076b",
              "parent_uuid": "cc80d4a3-d042-4d62-9e87-7dcbca91f11d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "178b5dc3-4c82-4f7e-a29c-ca093675da59",
                  "parent_uuid": "c1153c4d-a45d-4b37-b4a9-531e5942076b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ec1ffeb-ae4b-4e14-9d03-4c9469d3317c",
              "parent_uuid": "cc80d4a3-d042-4d62-9e87-7dcbca91f11d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf09efdb-d818-49c2-9f1e-d34751e11282",
                  "parent_uuid": "8ec1ffeb-ae4b-4e14-9d03-4c9469d3317c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ce4a6ad-e90d-415c-b5ad-e9cd691471c7",
              "parent_uuid": "cc80d4a3-d042-4d62-9e87-7dcbca91f11d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fc3c075-667e-4752-a32f-4894773ebd51",
                  "parent_uuid": "2ce4a6ad-e90d-415c-b5ad-e9cd691471c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16ac8438-0848-4937-80d1-ad0f68dc4920",
              "parent_uuid": "cc80d4a3-d042-4d62-9e87-7dcbca91f11d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dda505e4-0b1b-4a48-a462-5f11f289d50a",
                  "parent_uuid": "16ac8438-0848-4937-80d1-ad0f68dc4920",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1f1dc153-ce54-4e5d-9bcb-003f40fc7b6c",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1681f3c5-83af-4950-a34c-9a1f888b8374",
              "parent_uuid": "1f1dc153-ce54-4e5d-9bcb-003f40fc7b6c",
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
              "uuid": "aa2bd59e-cb4b-46ad-88ca-01846f28ccce",
              "parent_uuid": "1f1dc153-ce54-4e5d-9bcb-003f40fc7b6c",
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
              "uuid": "90c2460a-292e-406b-9f76-be5074550950",
              "parent_uuid": "1f1dc153-ce54-4e5d-9bcb-003f40fc7b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "882f2c35-0cc7-4e90-85d2-452a87796126",
                  "parent_uuid": "90c2460a-292e-406b-9f76-be5074550950",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f6d9885-81ca-4138-935d-37ec98e4c0c2",
              "parent_uuid": "1f1dc153-ce54-4e5d-9bcb-003f40fc7b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ff5ef94-327e-470f-9ff9-cfb31ea5d526",
                  "parent_uuid": "2f6d9885-81ca-4138-935d-37ec98e4c0c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20d6bf1f-1bdc-422a-805d-698f9d2c5b05",
              "parent_uuid": "1f1dc153-ce54-4e5d-9bcb-003f40fc7b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96de246f-d89c-410c-97b5-85a38c318fba",
                  "parent_uuid": "20d6bf1f-1bdc-422a-805d-698f9d2c5b05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c689a91-4eb7-4db2-867b-53a12ec8e7a3",
              "parent_uuid": "1f1dc153-ce54-4e5d-9bcb-003f40fc7b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63491cbb-2baf-41fd-aa59-70f8957e6d58",
                  "parent_uuid": "7c689a91-4eb7-4db2-867b-53a12ec8e7a3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db2ff6a9-7712-48e8-a01c-97dce53bc351",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4732fd2c-2da1-4ce3-ba3f-1211f32b2781",
              "parent_uuid": "db2ff6a9-7712-48e8-a01c-97dce53bc351",
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
              "uuid": "8ec98bd9-003c-471a-b1d5-56108ddf6d3f",
              "parent_uuid": "db2ff6a9-7712-48e8-a01c-97dce53bc351",
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
              "uuid": "51b0e3f9-ef0d-45ff-be9f-e7b0863c9620",
              "parent_uuid": "db2ff6a9-7712-48e8-a01c-97dce53bc351",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3608596-1211-4240-bcfe-827ebad2fe81",
                  "parent_uuid": "51b0e3f9-ef0d-45ff-be9f-e7b0863c9620",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6b29051-0e6f-4b27-bcb9-f41c8b5eb327",
              "parent_uuid": "db2ff6a9-7712-48e8-a01c-97dce53bc351",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca78d810-f802-4a9e-a38e-8b160872b749",
                  "parent_uuid": "b6b29051-0e6f-4b27-bcb9-f41c8b5eb327",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07e472e1-d99b-4df4-a0b2-6ff6f11f4c46",
              "parent_uuid": "db2ff6a9-7712-48e8-a01c-97dce53bc351",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbcf2f87-bafe-4b4d-8c86-d38c2a75c70c",
                  "parent_uuid": "07e472e1-d99b-4df4-a0b2-6ff6f11f4c46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de5efaf9-8c47-4838-95fc-60942408c6ec",
              "parent_uuid": "db2ff6a9-7712-48e8-a01c-97dce53bc351",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01c7d746-6698-4b1d-8bf7-657a1bffb942",
                  "parent_uuid": "de5efaf9-8c47-4838-95fc-60942408c6ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8dda0681-be9f-45f4-a090-4d773d611130",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "351d3721-aeb7-4765-9c22-7e52e95d28d0",
              "parent_uuid": "8dda0681-be9f-45f4-a090-4d773d611130",
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
              "uuid": "571756b7-817f-4a32-9788-dc08dd816e74",
              "parent_uuid": "8dda0681-be9f-45f4-a090-4d773d611130",
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
              "uuid": "0ecb9311-ec85-4a85-96ba-654c319c4ed3",
              "parent_uuid": "8dda0681-be9f-45f4-a090-4d773d611130",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f5e41d7-dc55-4636-9844-0dc0b430267a",
                  "parent_uuid": "0ecb9311-ec85-4a85-96ba-654c319c4ed3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9777b66-e3c9-47f1-9635-cd366adc2bad",
              "parent_uuid": "8dda0681-be9f-45f4-a090-4d773d611130",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a042179-2e0d-415e-8761-ac1ec89bd6cd",
                  "parent_uuid": "c9777b66-e3c9-47f1-9635-cd366adc2bad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d996e89-7469-467c-8d32-63349d9db32c",
              "parent_uuid": "8dda0681-be9f-45f4-a090-4d773d611130",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f935002-bf02-482e-b2fe-ba50407ba610",
                  "parent_uuid": "2d996e89-7469-467c-8d32-63349d9db32c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f01d09e7-8cf3-4e04-9531-2eda5add9733",
              "parent_uuid": "8dda0681-be9f-45f4-a090-4d773d611130",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edf81737-4af5-4790-b47f-a5a7a944f3b0",
                  "parent_uuid": "f01d09e7-8cf3-4e04-9531-2eda5add9733",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5d5b2c05-0f08-458e-9625-db53d58d0d9c",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ff77c233-76b1-4dd3-8e01-e77693785bde",
              "parent_uuid": "5d5b2c05-0f08-458e-9625-db53d58d0d9c",
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
          "uuid": "aa7d1031-17c0-40c6-854f-6b30f35eb02b",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f8a4f1b-04ab-467f-9a47-caab99a7ebd7",
              "parent_uuid": "aa7d1031-17c0-40c6-854f-6b30f35eb02b",
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
              "uuid": "2ca3f182-df21-4bf6-b480-dc81eb5c72f2",
              "parent_uuid": "aa7d1031-17c0-40c6-854f-6b30f35eb02b",
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
              "uuid": "16f15209-7d1f-4f7c-b617-e721a6d15824",
              "parent_uuid": "aa7d1031-17c0-40c6-854f-6b30f35eb02b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7912d54-1291-46d2-941d-a69f31923cb7",
                  "parent_uuid": "16f15209-7d1f-4f7c-b617-e721a6d15824",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b0bff11-965d-4db2-9b08-5b5d76a55413",
              "parent_uuid": "aa7d1031-17c0-40c6-854f-6b30f35eb02b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b783a1b-8d27-4ae5-bec2-b067bab3920c",
                  "parent_uuid": "7b0bff11-965d-4db2-9b08-5b5d76a55413",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c813eef-9721-4d89-8ef7-eb51d699dddc",
              "parent_uuid": "aa7d1031-17c0-40c6-854f-6b30f35eb02b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c97cd243-00ab-4c7c-8314-f3306e1afb47",
                  "parent_uuid": "2c813eef-9721-4d89-8ef7-eb51d699dddc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f888a554-a407-47d6-ac66-4dba0774086f",
              "parent_uuid": "aa7d1031-17c0-40c6-854f-6b30f35eb02b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a4f34d7-efa3-4714-a82c-77eb69a1a6e1",
                  "parent_uuid": "f888a554-a407-47d6-ac66-4dba0774086f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f30a90c8-e6c7-49b0-bd66-07ca8a9aa081",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f8fac19-08da-457a-af95-de1a60f8f552",
              "parent_uuid": "f30a90c8-e6c7-49b0-bd66-07ca8a9aa081",
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
              "uuid": "0e67dc48-6ea2-4556-94e5-aa09a9b64209",
              "parent_uuid": "f30a90c8-e6c7-49b0-bd66-07ca8a9aa081",
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
              "uuid": "457c294e-e93a-467a-a19b-c49b603adc2d",
              "parent_uuid": "f30a90c8-e6c7-49b0-bd66-07ca8a9aa081",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60ce0818-ef79-439f-9833-1a2b6bbc9c26",
                  "parent_uuid": "457c294e-e93a-467a-a19b-c49b603adc2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "750a961a-9342-4514-82f3-d02c9b9d1466",
              "parent_uuid": "f30a90c8-e6c7-49b0-bd66-07ca8a9aa081",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d2d1450-2da4-4f97-bea9-eb4ad55578e6",
                  "parent_uuid": "750a961a-9342-4514-82f3-d02c9b9d1466",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5eea53a-e56a-405a-97d4-8a79454daff4",
              "parent_uuid": "f30a90c8-e6c7-49b0-bd66-07ca8a9aa081",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af432c70-38ec-4013-9bf9-5fa803f8c5e1",
                  "parent_uuid": "d5eea53a-e56a-405a-97d4-8a79454daff4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "646c1935-8011-40b3-8a19-c064bb11ff98",
              "parent_uuid": "f30a90c8-e6c7-49b0-bd66-07ca8a9aa081",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8eadae24-3f8c-495a-9d47-01a6c07c1bc3",
                  "parent_uuid": "646c1935-8011-40b3-8a19-c064bb11ff98",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a0a4e2be-3568-49f6-ba7c-9e8b7ebc048c",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08dc49f8-897e-417e-be8c-70cf8dd71a1a",
              "parent_uuid": "a0a4e2be-3568-49f6-ba7c-9e8b7ebc048c",
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
              "uuid": "3f4df061-68e9-4954-8f4d-c824e2ca7d8a",
              "parent_uuid": "a0a4e2be-3568-49f6-ba7c-9e8b7ebc048c",
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
              "uuid": "1902abee-4183-44d0-95d1-2cd711b13002",
              "parent_uuid": "a0a4e2be-3568-49f6-ba7c-9e8b7ebc048c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1197eb8a-0f04-42f1-9596-c8ab67512900",
                  "parent_uuid": "1902abee-4183-44d0-95d1-2cd711b13002",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01caf330-fffd-4ca5-bbda-ad2263d9e1b9",
              "parent_uuid": "a0a4e2be-3568-49f6-ba7c-9e8b7ebc048c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f546e43-2958-4682-83ff-678d33efc09e",
                  "parent_uuid": "01caf330-fffd-4ca5-bbda-ad2263d9e1b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed5f284f-92e8-47f9-80bd-ecf82cc00893",
              "parent_uuid": "a0a4e2be-3568-49f6-ba7c-9e8b7ebc048c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ae77449-372d-4d2b-bbf4-a0ac72940ba6",
                  "parent_uuid": "ed5f284f-92e8-47f9-80bd-ecf82cc00893",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e77d670-8db9-49c9-8399-050309d38d6a",
              "parent_uuid": "a0a4e2be-3568-49f6-ba7c-9e8b7ebc048c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e3068cb-8c15-4625-b108-ea7153dc4c90",
                  "parent_uuid": "0e77d670-8db9-49c9-8399-050309d38d6a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f8412eb2-f104-4c90-b38a-d80f0c8c0153",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "373156f4-380f-4889-8cf7-539159c664bc",
              "parent_uuid": "f8412eb2-f104-4c90-b38a-d80f0c8c0153",
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
              "uuid": "76679250-2fba-4bd1-ae57-b8627bbe93c3",
              "parent_uuid": "f8412eb2-f104-4c90-b38a-d80f0c8c0153",
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
              "uuid": "810afd7b-33e6-438c-9b96-d122e7301d7d",
              "parent_uuid": "f8412eb2-f104-4c90-b38a-d80f0c8c0153",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c09db5a6-65f4-43dd-8376-3b8590e88e24",
                  "parent_uuid": "810afd7b-33e6-438c-9b96-d122e7301d7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c894ffa-db1e-42ea-b8d6-e98dfd421be6",
              "parent_uuid": "f8412eb2-f104-4c90-b38a-d80f0c8c0153",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9619f40-53af-4568-abce-2bb8989b589e",
                  "parent_uuid": "2c894ffa-db1e-42ea-b8d6-e98dfd421be6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f60b991-47e7-4d85-b1bf-7ff7fbf0a663",
              "parent_uuid": "f8412eb2-f104-4c90-b38a-d80f0c8c0153",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbda2a72-16f8-4d89-bee1-2b46a871b678",
                  "parent_uuid": "4f60b991-47e7-4d85-b1bf-7ff7fbf0a663",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17a207d3-5a87-4bc7-9ad6-6acff19fe1ae",
              "parent_uuid": "f8412eb2-f104-4c90-b38a-d80f0c8c0153",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d225cbf5-bfae-4205-8a04-31c5e04015a2",
                  "parent_uuid": "17a207d3-5a87-4bc7-9ad6-6acff19fe1ae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3b724740-2ea3-4378-9cfa-45ff90eea32e",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85d587de-bdb3-445c-babe-c19ae282df8e",
              "parent_uuid": "3b724740-2ea3-4378-9cfa-45ff90eea32e",
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
              "uuid": "c3b5e2ff-4faa-429e-ad87-2f44af576245",
              "parent_uuid": "3b724740-2ea3-4378-9cfa-45ff90eea32e",
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
              "uuid": "06f7d706-818b-4beb-8898-ed0196f03553",
              "parent_uuid": "3b724740-2ea3-4378-9cfa-45ff90eea32e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a2ccb80-d425-43b4-b333-c7bd1901183c",
                  "parent_uuid": "06f7d706-818b-4beb-8898-ed0196f03553",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42c7d43f-2918-4ebc-b99b-4c2366444fbb",
              "parent_uuid": "3b724740-2ea3-4378-9cfa-45ff90eea32e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85cc9124-efed-4e21-8b39-11982286ccba",
                  "parent_uuid": "42c7d43f-2918-4ebc-b99b-4c2366444fbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e94757c-7532-451e-84d7-5ab8ac01bd66",
              "parent_uuid": "3b724740-2ea3-4378-9cfa-45ff90eea32e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fce9afd-397c-439e-a46b-d86160e8b1ef",
                  "parent_uuid": "9e94757c-7532-451e-84d7-5ab8ac01bd66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7737176-2cbc-45b2-bbcc-df9216623c37",
              "parent_uuid": "3b724740-2ea3-4378-9cfa-45ff90eea32e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eacee0f4-8311-4c99-9585-490e7aaa1f99",
                  "parent_uuid": "f7737176-2cbc-45b2-bbcc-df9216623c37",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6932633f-4be1-425a-ac60-31e17b055127",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "472c14e1-27d2-4661-89b7-114d4de40e59",
              "parent_uuid": "6932633f-4be1-425a-ac60-31e17b055127",
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
          "uuid": "b529cc3d-4fbe-40fb-9353-64f6b27faf7e",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8d502c5-0c2d-44b8-b811-380e0caf61fe",
              "parent_uuid": "b529cc3d-4fbe-40fb-9353-64f6b27faf7e",
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
          "uuid": "ba5e4bd1-d291-4ca7-a4cb-f4000c1be647",
          "parent_uuid": "cd640afa-759f-4476-9a27-0b47616ae76a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "911673b1-eb15-4eb7-91d3-7d06659a8f8d",
              "parent_uuid": "ba5e4bd1-d291-4ca7-a4cb-f4000c1be647",
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
                  "uuid": "49ec9cf4-fcc7-42b0-a2db-c3ede894df96",
                  "parent_uuid": "911673b1-eb15-4eb7-91d3-7d06659a8f8d",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

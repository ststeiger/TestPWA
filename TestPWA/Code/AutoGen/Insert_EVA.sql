
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
  "uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "3ff6c28f-66e6-43de-b61e-da4caa367bbd",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "cbcbe507-cc41-478b-9ff1-3137ef518cf5",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "fa1ecdb5-20c1-41e6-b729-09c7bb5a27d9",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "8e4993fc-1b92-4404-b7d0-1af80d0fe6eb",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "1bc6fcbe-512e-4ff8-abbf-a59bf5335897",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "089b237f-054c-48a2-8962-7fd8f874cc57",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "32b6d056-bf42-4ec7-842f-05cd44ba16ca",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
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
      "uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
      "parent_uuid": "318c9083-ebd5-4a82-832b-2d645fe4738a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "a58736a6-be06-4732-963f-3f1ac44902c8",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "098dcc00-78de-45cb-8962-b3a6c1942ab4",
              "parent_uuid": "a58736a6-be06-4732-963f-3f1ac44902c8",
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
              "uuid": "3b7553d8-c627-4e0e-b104-0122e1943e65",
              "parent_uuid": "a58736a6-be06-4732-963f-3f1ac44902c8",
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
              "uuid": "a0d062e1-8a79-40a7-9355-b7bfeaf471ad",
              "parent_uuid": "a58736a6-be06-4732-963f-3f1ac44902c8",
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
              "uuid": "4cc0d8c3-22e7-4315-9569-48384c2cb96b",
              "parent_uuid": "a58736a6-be06-4732-963f-3f1ac44902c8",
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
          "uuid": "0a7b6bfa-35c3-43d7-b2c4-567675dba790",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d99f0b02-496b-4d30-9e94-958300575360",
              "parent_uuid": "0a7b6bfa-35c3-43d7-b2c4-567675dba790",
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
              "uuid": "b750ec55-c06e-4567-8a95-69d428c3aef3",
              "parent_uuid": "0a7b6bfa-35c3-43d7-b2c4-567675dba790",
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
              "uuid": "52b425b0-7b3d-4c24-9f7f-60ac3f25bf28",
              "parent_uuid": "0a7b6bfa-35c3-43d7-b2c4-567675dba790",
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
              "uuid": "cbffc5fc-0afe-4712-98ef-9fc2b2ffeb1b",
              "parent_uuid": "0a7b6bfa-35c3-43d7-b2c4-567675dba790",
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
          "uuid": "692d5006-967b-4d7b-9775-3b7072fa03ef",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e409b9d-fb77-4056-a232-b9180fa5d304",
              "parent_uuid": "692d5006-967b-4d7b-9775-3b7072fa03ef",
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
              "uuid": "e35c2565-f5ba-4553-97d8-f271f84ad9a8",
              "parent_uuid": "692d5006-967b-4d7b-9775-3b7072fa03ef",
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
              "uuid": "b112898e-58d4-4364-86f3-9ea10415c4bd",
              "parent_uuid": "692d5006-967b-4d7b-9775-3b7072fa03ef",
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
              "uuid": "f6943434-6fd4-40b3-9fed-dc1d7a4a799c",
              "parent_uuid": "692d5006-967b-4d7b-9775-3b7072fa03ef",
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
              "uuid": "b01f2de9-68f4-4201-9632-6140457e0ba3",
              "parent_uuid": "692d5006-967b-4d7b-9775-3b7072fa03ef",
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
              "uuid": "ab6e8b4e-95e9-4442-bb06-09ac00cf7602",
              "parent_uuid": "692d5006-967b-4d7b-9775-3b7072fa03ef",
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
          "uuid": "d5c4cb3f-83ab-4c3e-be1c-575a6b1513fe",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "37fd6dcf-07c9-480c-b95c-b860142ca89c",
              "parent_uuid": "d5c4cb3f-83ab-4c3e-be1c-575a6b1513fe",
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
          "uuid": "65bd0de3-6ec8-43aa-b445-3872128127fd",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af7c9e25-20ab-444c-b29e-c73b9e3678b4",
              "parent_uuid": "65bd0de3-6ec8-43aa-b445-3872128127fd",
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
              "uuid": "4a8d8906-5c30-47eb-ad42-24f4b0a40d2a",
              "parent_uuid": "65bd0de3-6ec8-43aa-b445-3872128127fd",
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
              "uuid": "5835d532-1d92-4dbb-bb47-9f752654189b",
              "parent_uuid": "65bd0de3-6ec8-43aa-b445-3872128127fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4732eabe-ef6f-48c0-9596-f2d6d8b61930",
                  "parent_uuid": "5835d532-1d92-4dbb-bb47-9f752654189b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cec6d72a-ed4e-4642-a160-f6414d2be090",
              "parent_uuid": "65bd0de3-6ec8-43aa-b445-3872128127fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bd83a1c-b3c9-4879-855c-88d25fd1d4cf",
                  "parent_uuid": "cec6d72a-ed4e-4642-a160-f6414d2be090",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f17e71e0-64ff-4db4-8284-378becfb1db5",
              "parent_uuid": "65bd0de3-6ec8-43aa-b445-3872128127fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca9e877c-f189-4ff1-97a9-1a5ca9638983",
                  "parent_uuid": "f17e71e0-64ff-4db4-8284-378becfb1db5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14f79074-56be-4f37-8234-af0d9a08f6ec",
              "parent_uuid": "65bd0de3-6ec8-43aa-b445-3872128127fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9e12099-1800-4963-bdf8-361f6c528a3e",
                  "parent_uuid": "14f79074-56be-4f37-8234-af0d9a08f6ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76f22bec-20b6-400b-9097-e3d74973433c",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c235e4b3-f2ec-4b88-be0b-2fe168d1656a",
              "parent_uuid": "76f22bec-20b6-400b-9097-e3d74973433c",
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
              "uuid": "efb474f6-194c-4311-8d76-76f2b6fdf8b2",
              "parent_uuid": "76f22bec-20b6-400b-9097-e3d74973433c",
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
              "uuid": "405cef89-3a08-418b-9f3c-2838e4595d23",
              "parent_uuid": "76f22bec-20b6-400b-9097-e3d74973433c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58269b9a-de12-4d22-9f7c-34fd2195bba9",
                  "parent_uuid": "405cef89-3a08-418b-9f3c-2838e4595d23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "587057e0-d403-4221-8eef-54c00d70a06b",
              "parent_uuid": "76f22bec-20b6-400b-9097-e3d74973433c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4a418cf-3354-45bd-bffb-072629fbcaaf",
                  "parent_uuid": "587057e0-d403-4221-8eef-54c00d70a06b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d727dbea-03e0-4b06-b8a7-e32220627d7b",
              "parent_uuid": "76f22bec-20b6-400b-9097-e3d74973433c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4321c2c3-f4cd-408f-9313-98fcbdd2fef6",
                  "parent_uuid": "d727dbea-03e0-4b06-b8a7-e32220627d7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e43ac3d2-a777-423f-87bd-adbc33805039",
              "parent_uuid": "76f22bec-20b6-400b-9097-e3d74973433c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bd5abd5-9bda-4703-923b-58f16b6c4fa9",
                  "parent_uuid": "e43ac3d2-a777-423f-87bd-adbc33805039",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "317bc064-7e6e-49ca-b1f4-9980ee35b50a",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "067a9e0b-5d5a-4c50-8e68-569712c0e77a",
              "parent_uuid": "317bc064-7e6e-49ca-b1f4-9980ee35b50a",
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
              "uuid": "08e3dbe2-9b2d-4d1b-aaf1-f012210b0b90",
              "parent_uuid": "317bc064-7e6e-49ca-b1f4-9980ee35b50a",
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
              "uuid": "b88fae6c-1ea1-4a19-9451-9cb5ea14c88b",
              "parent_uuid": "317bc064-7e6e-49ca-b1f4-9980ee35b50a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbd1f12c-3efe-4a9d-8f8f-2d4efa5312fd",
                  "parent_uuid": "b88fae6c-1ea1-4a19-9451-9cb5ea14c88b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2d83825-452f-422b-8b8d-036e84aa8711",
              "parent_uuid": "317bc064-7e6e-49ca-b1f4-9980ee35b50a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ac52b28-e362-4a32-9c8c-2c25ed6061c4",
                  "parent_uuid": "a2d83825-452f-422b-8b8d-036e84aa8711",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20283e65-9cb2-4357-af46-fc84c94a1608",
              "parent_uuid": "317bc064-7e6e-49ca-b1f4-9980ee35b50a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "502e99af-f7ba-4906-b3aa-70b8b2c44af7",
                  "parent_uuid": "20283e65-9cb2-4357-af46-fc84c94a1608",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bedeea3-da1c-4cb0-a2d0-81b5b7909d4c",
              "parent_uuid": "317bc064-7e6e-49ca-b1f4-9980ee35b50a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e036d84-a267-4ae2-a920-dfb2b5bcc872",
                  "parent_uuid": "9bedeea3-da1c-4cb0-a2d0-81b5b7909d4c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f89baf6-46ad-43e3-8b38-3f6a98c341c2",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6603835c-b0bc-43c9-aaee-4d6f254bcc75",
              "parent_uuid": "0f89baf6-46ad-43e3-8b38-3f6a98c341c2",
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
              "uuid": "23df4339-74e4-4202-bc1e-68cf21fba0cc",
              "parent_uuid": "0f89baf6-46ad-43e3-8b38-3f6a98c341c2",
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
              "uuid": "e1c296d2-ae1b-434c-a200-c2cd7dde2498",
              "parent_uuid": "0f89baf6-46ad-43e3-8b38-3f6a98c341c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "630ea563-c316-401b-832f-93217dcdc2fb",
                  "parent_uuid": "e1c296d2-ae1b-434c-a200-c2cd7dde2498",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0af426aa-5a3c-49a0-bc0e-8c082971ae2f",
              "parent_uuid": "0f89baf6-46ad-43e3-8b38-3f6a98c341c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9db2c7c3-e593-4e60-9d8f-a1b732e71772",
                  "parent_uuid": "0af426aa-5a3c-49a0-bc0e-8c082971ae2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3e3588e-3902-4a08-ba90-a55926230f86",
              "parent_uuid": "0f89baf6-46ad-43e3-8b38-3f6a98c341c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fad3ba94-14e0-46c2-abd8-385dad9eba5e",
                  "parent_uuid": "e3e3588e-3902-4a08-ba90-a55926230f86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd74afcc-52f4-473a-9bc1-4276816d7318",
              "parent_uuid": "0f89baf6-46ad-43e3-8b38-3f6a98c341c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28943dda-edc3-407f-8f2d-2e8eb0661e36",
                  "parent_uuid": "fd74afcc-52f4-473a-9bc1-4276816d7318",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a5f4d32-2280-41d9-978b-a791601ede30",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de122e17-b594-42c4-a80e-8e356f91ab98",
              "parent_uuid": "2a5f4d32-2280-41d9-978b-a791601ede30",
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
              "uuid": "817706cf-b404-490f-b601-92cd7fdef2e2",
              "parent_uuid": "2a5f4d32-2280-41d9-978b-a791601ede30",
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
              "uuid": "bdaf7456-be0d-4009-98e9-3c86b968dbc2",
              "parent_uuid": "2a5f4d32-2280-41d9-978b-a791601ede30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4663fcc7-22b4-4282-9789-3d7cae72c625",
                  "parent_uuid": "bdaf7456-be0d-4009-98e9-3c86b968dbc2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3353cac0-a2a6-44df-99b8-852585aa4e14",
              "parent_uuid": "2a5f4d32-2280-41d9-978b-a791601ede30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eddeda72-9368-464f-b52f-20c29194e6e1",
                  "parent_uuid": "3353cac0-a2a6-44df-99b8-852585aa4e14",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14f0e3d6-3bf8-45c8-99bc-eca6bcf226a5",
              "parent_uuid": "2a5f4d32-2280-41d9-978b-a791601ede30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09a453e4-ef05-48eb-ac5c-0e5263d66c50",
                  "parent_uuid": "14f0e3d6-3bf8-45c8-99bc-eca6bcf226a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ebe85d7-40b5-4df9-9989-7b4c1788a382",
              "parent_uuid": "2a5f4d32-2280-41d9-978b-a791601ede30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1fc35aa-93b5-4912-928c-90d6edd67b95",
                  "parent_uuid": "6ebe85d7-40b5-4df9-9989-7b4c1788a382",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76bf94c6-5e45-4d3d-bb13-d9ede242597e",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a64381b-0203-437a-805a-fc9481590768",
              "parent_uuid": "76bf94c6-5e45-4d3d-bb13-d9ede242597e",
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
              "uuid": "17354ec5-b3ce-47ab-8076-11293499b34c",
              "parent_uuid": "76bf94c6-5e45-4d3d-bb13-d9ede242597e",
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
              "uuid": "fe127a77-48d2-447a-bc59-e11f386d7b4b",
              "parent_uuid": "76bf94c6-5e45-4d3d-bb13-d9ede242597e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "302ff2f6-3aa7-4d52-8e82-abcf1cb7c4c0",
                  "parent_uuid": "fe127a77-48d2-447a-bc59-e11f386d7b4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46ca050a-ec46-412d-aa1c-eee9c3bf7e4d",
              "parent_uuid": "76bf94c6-5e45-4d3d-bb13-d9ede242597e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d70e9555-906b-416e-8744-9cfc3171d9a1",
                  "parent_uuid": "46ca050a-ec46-412d-aa1c-eee9c3bf7e4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65e218f1-1b98-42d7-8524-4eee957ddd8f",
              "parent_uuid": "76bf94c6-5e45-4d3d-bb13-d9ede242597e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f209d7cf-8ba0-4aa2-affe-92552a8cbebf",
                  "parent_uuid": "65e218f1-1b98-42d7-8524-4eee957ddd8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9dd5f143-bf9e-4df1-a91d-3c3191ba5b62",
              "parent_uuid": "76bf94c6-5e45-4d3d-bb13-d9ede242597e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e35f6df0-f160-4179-9c3c-f232ee7875b0",
                  "parent_uuid": "9dd5f143-bf9e-4df1-a91d-3c3191ba5b62",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26c02470-bf3f-4670-ac37-e3c2ea1f18e1",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "613aa015-b839-4f89-a15f-283d060cfd57",
              "parent_uuid": "26c02470-bf3f-4670-ac37-e3c2ea1f18e1",
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
              "uuid": "6e44535e-b7fd-4a65-97e5-56514f054800",
              "parent_uuid": "26c02470-bf3f-4670-ac37-e3c2ea1f18e1",
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
              "uuid": "da3cf452-3282-463b-8915-a9c7c95134ff",
              "parent_uuid": "26c02470-bf3f-4670-ac37-e3c2ea1f18e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a04a79e0-e6dd-4b80-abb8-f44a186c2772",
                  "parent_uuid": "da3cf452-3282-463b-8915-a9c7c95134ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff15e6bf-c54d-4353-8b93-9bdf35a7431c",
              "parent_uuid": "26c02470-bf3f-4670-ac37-e3c2ea1f18e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cb26a20-0418-4140-a519-b6102a8e612b",
                  "parent_uuid": "ff15e6bf-c54d-4353-8b93-9bdf35a7431c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d47541e-c31b-491f-ac80-2f5e2ed17b9f",
              "parent_uuid": "26c02470-bf3f-4670-ac37-e3c2ea1f18e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3900da9-d2ae-4e9b-af4f-211b078a68c1",
                  "parent_uuid": "6d47541e-c31b-491f-ac80-2f5e2ed17b9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ace1a16-4611-4f7d-b5f0-be04711c5f4e",
              "parent_uuid": "26c02470-bf3f-4670-ac37-e3c2ea1f18e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89aab142-8b79-4208-ab09-d363e65368b0",
                  "parent_uuid": "2ace1a16-4611-4f7d-b5f0-be04711c5f4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c723388-1772-4040-8efb-cbd8fd1bfaa9",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7eccc05f-2e96-438d-8aa5-5bc946d71408",
              "parent_uuid": "7c723388-1772-4040-8efb-cbd8fd1bfaa9",
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
              "uuid": "e53ebb41-2202-4815-9063-1a7d8f43364f",
              "parent_uuid": "7c723388-1772-4040-8efb-cbd8fd1bfaa9",
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
              "uuid": "82ef6e34-1683-4f69-9583-d897fb990fe4",
              "parent_uuid": "7c723388-1772-4040-8efb-cbd8fd1bfaa9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bca29a0-e4ae-4607-b0a8-98a933ccd8f9",
                  "parent_uuid": "82ef6e34-1683-4f69-9583-d897fb990fe4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32b2c1bc-494b-408a-af3d-8563bdf56852",
              "parent_uuid": "7c723388-1772-4040-8efb-cbd8fd1bfaa9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "833ecf92-a80f-47d8-bf34-27b6f1de00f1",
                  "parent_uuid": "32b2c1bc-494b-408a-af3d-8563bdf56852",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "563605fb-2420-493e-b728-58af39aefd0e",
              "parent_uuid": "7c723388-1772-4040-8efb-cbd8fd1bfaa9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6083e231-5b3f-428c-89b5-79ee37f85d49",
                  "parent_uuid": "563605fb-2420-493e-b728-58af39aefd0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebdb425c-dd69-45fa-b88f-61d8d329292a",
              "parent_uuid": "7c723388-1772-4040-8efb-cbd8fd1bfaa9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cf9b516-c785-4e3c-9dfa-e92b3cd54bd9",
                  "parent_uuid": "ebdb425c-dd69-45fa-b88f-61d8d329292a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2528ef06-5d97-4dd2-98bc-73f52058a5c7",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a00c6334-a24b-46b2-98b3-e78d63afe7e1",
              "parent_uuid": "2528ef06-5d97-4dd2-98bc-73f52058a5c7",
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
              "uuid": "f866a581-af19-48ae-912e-ecde79fd8fc9",
              "parent_uuid": "2528ef06-5d97-4dd2-98bc-73f52058a5c7",
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
              "uuid": "e5e143c0-9301-48ec-a3e0-e1c842a7283c",
              "parent_uuid": "2528ef06-5d97-4dd2-98bc-73f52058a5c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd0761a2-8b76-43d3-b8f1-35fe4d6b0f19",
                  "parent_uuid": "e5e143c0-9301-48ec-a3e0-e1c842a7283c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b7d84d7-5476-4bf0-b61e-efb890134da2",
              "parent_uuid": "2528ef06-5d97-4dd2-98bc-73f52058a5c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "008fc1ff-0be9-4d75-be88-41918d35bd9c",
                  "parent_uuid": "6b7d84d7-5476-4bf0-b61e-efb890134da2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "433187f9-38b1-4483-a7fe-25d4de64c35e",
              "parent_uuid": "2528ef06-5d97-4dd2-98bc-73f52058a5c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cd9a775-241a-4d27-b76a-ef74727e8b8c",
                  "parent_uuid": "433187f9-38b1-4483-a7fe-25d4de64c35e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9abce87b-3043-4ee3-bf7f-76a9d1c13261",
              "parent_uuid": "2528ef06-5d97-4dd2-98bc-73f52058a5c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5a36552-fb14-436c-998e-fede08c56243",
                  "parent_uuid": "9abce87b-3043-4ee3-bf7f-76a9d1c13261",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "751298dc-dcd3-40af-b727-cacb932d6fb2",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55ad360b-ec88-47a6-b247-e4cdaee71385",
              "parent_uuid": "751298dc-dcd3-40af-b727-cacb932d6fb2",
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
              "uuid": "30d4bda3-0d49-4579-b0fb-0a6333bdb6bf",
              "parent_uuid": "751298dc-dcd3-40af-b727-cacb932d6fb2",
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
              "uuid": "7ef5fc99-92e5-4a3d-b9e7-548746720ba9",
              "parent_uuid": "751298dc-dcd3-40af-b727-cacb932d6fb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "759ea9d3-8ef4-4c6c-9f5b-1ef8d139ec38",
                  "parent_uuid": "7ef5fc99-92e5-4a3d-b9e7-548746720ba9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d084e56-ee76-4452-98d3-a01e09432e99",
              "parent_uuid": "751298dc-dcd3-40af-b727-cacb932d6fb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de1c3a06-86c3-4a6f-83fe-bd0384403393",
                  "parent_uuid": "7d084e56-ee76-4452-98d3-a01e09432e99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6a84185-9888-453a-868a-f80b701da169",
              "parent_uuid": "751298dc-dcd3-40af-b727-cacb932d6fb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad81e5f7-e717-43cb-a33a-c41f77c641d4",
                  "parent_uuid": "a6a84185-9888-453a-868a-f80b701da169",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f15fe51-f1ce-42b6-a90e-97d216a901bf",
              "parent_uuid": "751298dc-dcd3-40af-b727-cacb932d6fb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3abcf647-76ba-48c5-ab13-34a46ac1ccb2",
                  "parent_uuid": "9f15fe51-f1ce-42b6-a90e-97d216a901bf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "416779b6-f8e7-43a5-9302-4959d3298d03",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79b6e092-0c6f-4ee7-be66-b8c8dac49074",
              "parent_uuid": "416779b6-f8e7-43a5-9302-4959d3298d03",
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
              "uuid": "c24ff3da-fdc2-44eb-8d60-3d6849270c7f",
              "parent_uuid": "416779b6-f8e7-43a5-9302-4959d3298d03",
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
              "uuid": "bbc09dc6-82b7-4d5c-8dc2-ab64d4560794",
              "parent_uuid": "416779b6-f8e7-43a5-9302-4959d3298d03",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbe27a71-d02f-4fa4-9ac1-6d79a0413700",
                  "parent_uuid": "bbc09dc6-82b7-4d5c-8dc2-ab64d4560794",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f50d3aa-e05f-4a4d-970a-aa4f519e07d2",
              "parent_uuid": "416779b6-f8e7-43a5-9302-4959d3298d03",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a71fda8-0cf9-46de-9871-e248f3278f1c",
                  "parent_uuid": "2f50d3aa-e05f-4a4d-970a-aa4f519e07d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a5aa281-394d-4f1c-becf-962050578198",
              "parent_uuid": "416779b6-f8e7-43a5-9302-4959d3298d03",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82d6da54-3a64-4a2a-9e5f-378f8760d64c",
                  "parent_uuid": "1a5aa281-394d-4f1c-becf-962050578198",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4a58a21-5a0b-469b-8647-550d41ad86fb",
              "parent_uuid": "416779b6-f8e7-43a5-9302-4959d3298d03",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af0092af-0476-45b7-9c7c-1820d0130944",
                  "parent_uuid": "d4a58a21-5a0b-469b-8647-550d41ad86fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "393e4677-0c3f-4859-b53c-7c6998cc4fdc",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64afdd0c-7e6c-4d5f-aad8-0c71f0d971a3",
              "parent_uuid": "393e4677-0c3f-4859-b53c-7c6998cc4fdc",
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
              "uuid": "12f3bc23-6fe0-48a5-a4a2-c2f2329c497b",
              "parent_uuid": "393e4677-0c3f-4859-b53c-7c6998cc4fdc",
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
              "uuid": "27de1941-78fd-4e87-b84c-bf8f563aba05",
              "parent_uuid": "393e4677-0c3f-4859-b53c-7c6998cc4fdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6315af87-1438-4753-a8bb-4e5661c12290",
                  "parent_uuid": "27de1941-78fd-4e87-b84c-bf8f563aba05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19529b5a-10ed-41a6-a71d-72378408efb3",
              "parent_uuid": "393e4677-0c3f-4859-b53c-7c6998cc4fdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7bd8f1b-b244-403c-879c-c90b48965bf7",
                  "parent_uuid": "19529b5a-10ed-41a6-a71d-72378408efb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8750c25b-e2e7-4518-b1ab-bd38d589f8af",
              "parent_uuid": "393e4677-0c3f-4859-b53c-7c6998cc4fdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f7c25b4-c5f7-46f4-98a1-01aac78c67ab",
                  "parent_uuid": "8750c25b-e2e7-4518-b1ab-bd38d589f8af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc7bf888-3ebd-4777-a8fa-6a414ab128d0",
              "parent_uuid": "393e4677-0c3f-4859-b53c-7c6998cc4fdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92642b50-8742-443d-8be8-bb9e86475f1e",
                  "parent_uuid": "cc7bf888-3ebd-4777-a8fa-6a414ab128d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "72615a57-6db5-4f3d-a89a-ed7ce22abe56",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb6134cd-b531-4094-9636-7a1b571559e8",
              "parent_uuid": "72615a57-6db5-4f3d-a89a-ed7ce22abe56",
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
              "uuid": "b4649972-39ff-4252-97ee-eac241fbb473",
              "parent_uuid": "72615a57-6db5-4f3d-a89a-ed7ce22abe56",
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
              "uuid": "754c809b-960f-4302-b816-b62ff8e5994c",
              "parent_uuid": "72615a57-6db5-4f3d-a89a-ed7ce22abe56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fc5d121-3057-4162-8ccf-576b037e0163",
                  "parent_uuid": "754c809b-960f-4302-b816-b62ff8e5994c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd265141-9ccf-4744-b7e7-5fb1dd874985",
              "parent_uuid": "72615a57-6db5-4f3d-a89a-ed7ce22abe56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ae43bb3-23fc-4327-a90d-51b5df067223",
                  "parent_uuid": "fd265141-9ccf-4744-b7e7-5fb1dd874985",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea0b7a9d-30d0-46ee-8880-fa34821601e5",
              "parent_uuid": "72615a57-6db5-4f3d-a89a-ed7ce22abe56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92e280d7-75dc-4fcf-9e07-6053168a890e",
                  "parent_uuid": "ea0b7a9d-30d0-46ee-8880-fa34821601e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c2ef87e-3ec7-4d48-a236-deefc7b94508",
              "parent_uuid": "72615a57-6db5-4f3d-a89a-ed7ce22abe56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12e16550-0270-4fd2-97ba-a6de0735fb85",
                  "parent_uuid": "2c2ef87e-3ec7-4d48-a236-deefc7b94508",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8c4ab513-0b55-4a41-bf40-476450789a1a",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6b6d172-a28d-408c-b424-71800aacc009",
              "parent_uuid": "8c4ab513-0b55-4a41-bf40-476450789a1a",
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
              "uuid": "c4626494-d779-476b-9232-805f3b042053",
              "parent_uuid": "8c4ab513-0b55-4a41-bf40-476450789a1a",
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
              "uuid": "5f4854bc-bbf5-42c7-89ce-b4b00fb525e0",
              "parent_uuid": "8c4ab513-0b55-4a41-bf40-476450789a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8afffa24-5c21-45d2-ac51-1296cab1014c",
                  "parent_uuid": "5f4854bc-bbf5-42c7-89ce-b4b00fb525e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bcbe63b1-9e85-4332-a6e1-9440fdb95634",
              "parent_uuid": "8c4ab513-0b55-4a41-bf40-476450789a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89bb5bfa-e4e1-4fcd-b5e8-9e04c40d863f",
                  "parent_uuid": "bcbe63b1-9e85-4332-a6e1-9440fdb95634",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8f869d9-c521-4bbe-8166-bd9417b0c8e1",
              "parent_uuid": "8c4ab513-0b55-4a41-bf40-476450789a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35868183-644a-4c9c-942c-78f0ac6708de",
                  "parent_uuid": "d8f869d9-c521-4bbe-8166-bd9417b0c8e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1663b61b-c568-4733-9f23-3e0eb2798e19",
              "parent_uuid": "8c4ab513-0b55-4a41-bf40-476450789a1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa1e8679-1189-4a85-9803-9dc4a738db5b",
                  "parent_uuid": "1663b61b-c568-4733-9f23-3e0eb2798e19",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5b4aa4ce-302e-41e1-8c47-42cb9c58eb83",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31738513-0456-4240-b2a6-cff96fa733ff",
              "parent_uuid": "5b4aa4ce-302e-41e1-8c47-42cb9c58eb83",
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
          "uuid": "51b046d2-7752-4fba-8c78-6e3b3eac55f4",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b3f1f736-eb5e-49cd-86fa-db115ad821dd",
              "parent_uuid": "51b046d2-7752-4fba-8c78-6e3b3eac55f4",
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
          "uuid": "dfc0e22b-22a3-4a57-923e-0f9e852d6dd4",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51dca7e4-9fbc-4859-b352-31691be32756",
              "parent_uuid": "dfc0e22b-22a3-4a57-923e-0f9e852d6dd4",
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
              "uuid": "8e100aa4-4c8c-4f33-ab77-92f0019db961",
              "parent_uuid": "dfc0e22b-22a3-4a57-923e-0f9e852d6dd4",
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
              "uuid": "4d50af48-24cd-4d5f-abf1-597412566b67",
              "parent_uuid": "dfc0e22b-22a3-4a57-923e-0f9e852d6dd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7775726-83db-4f72-9c80-a0328afd8a38",
                  "parent_uuid": "4d50af48-24cd-4d5f-abf1-597412566b67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41a71606-06f5-4fb5-ac89-436be851fef2",
              "parent_uuid": "dfc0e22b-22a3-4a57-923e-0f9e852d6dd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a3dc3f3-2717-47b3-8c23-1dd530acc9ca",
                  "parent_uuid": "41a71606-06f5-4fb5-ac89-436be851fef2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f4ad033-cde3-47e9-a4d2-1b524fdb10da",
              "parent_uuid": "dfc0e22b-22a3-4a57-923e-0f9e852d6dd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3678ed5-1f5d-4cad-9284-987ec333564c",
                  "parent_uuid": "0f4ad033-cde3-47e9-a4d2-1b524fdb10da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a444abe8-6065-4f1a-9cf8-ba8cf1e99dc3",
              "parent_uuid": "dfc0e22b-22a3-4a57-923e-0f9e852d6dd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4680670-3bd2-46c8-b5dd-c83e9bef57b5",
                  "parent_uuid": "a444abe8-6065-4f1a-9cf8-ba8cf1e99dc3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6118401f-2b77-4e4b-8691-8e8349b22937",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ded088d-7fdf-47b4-b130-e4bcc9e37c4c",
              "parent_uuid": "6118401f-2b77-4e4b-8691-8e8349b22937",
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
              "uuid": "07a60c84-359b-421d-b35f-101f15cd063c",
              "parent_uuid": "6118401f-2b77-4e4b-8691-8e8349b22937",
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
              "uuid": "083ee3b1-7835-44d7-a42a-0d006a18920f",
              "parent_uuid": "6118401f-2b77-4e4b-8691-8e8349b22937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87e2cf76-8664-49ee-9bd9-1d0c8c552458",
                  "parent_uuid": "083ee3b1-7835-44d7-a42a-0d006a18920f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c6e522b-ee5d-4cc6-8df9-59dfd16cd3af",
              "parent_uuid": "6118401f-2b77-4e4b-8691-8e8349b22937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "919fc87e-8642-44ca-af32-f14cdab1c09f",
                  "parent_uuid": "1c6e522b-ee5d-4cc6-8df9-59dfd16cd3af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5cb3744-4488-4ac8-bba4-80d24d74866a",
              "parent_uuid": "6118401f-2b77-4e4b-8691-8e8349b22937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87a42f25-5436-45ec-af79-49a836f98c07",
                  "parent_uuid": "b5cb3744-4488-4ac8-bba4-80d24d74866a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acbba703-02eb-4c89-b50a-075be3dc58e4",
              "parent_uuid": "6118401f-2b77-4e4b-8691-8e8349b22937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e205a45d-0c31-4379-b63c-771c7aadb373",
                  "parent_uuid": "acbba703-02eb-4c89-b50a-075be3dc58e4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "805e10e2-1f75-4950-baa6-06bc5e78f23f",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c6b8ced-77a5-4d28-b1bf-f6d576be1caf",
              "parent_uuid": "805e10e2-1f75-4950-baa6-06bc5e78f23f",
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
              "uuid": "13d39453-a704-4f11-b5c8-011503f60a10",
              "parent_uuid": "805e10e2-1f75-4950-baa6-06bc5e78f23f",
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
              "uuid": "625218c0-e690-4e1d-abae-5a0c6cff4815",
              "parent_uuid": "805e10e2-1f75-4950-baa6-06bc5e78f23f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27b5e1f4-3d98-4e31-ae14-eb73584fc613",
                  "parent_uuid": "625218c0-e690-4e1d-abae-5a0c6cff4815",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "017bd82a-beb3-48c8-ac90-48f21593d182",
              "parent_uuid": "805e10e2-1f75-4950-baa6-06bc5e78f23f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b21839f-d81b-41fb-8529-f211ef7cb617",
                  "parent_uuid": "017bd82a-beb3-48c8-ac90-48f21593d182",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af8cdcee-3d2d-4dbd-9099-6f7132c2c483",
              "parent_uuid": "805e10e2-1f75-4950-baa6-06bc5e78f23f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad3126ba-63e9-4e18-acfa-0da6154f9eea",
                  "parent_uuid": "af8cdcee-3d2d-4dbd-9099-6f7132c2c483",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3645ee59-df38-4a04-871f-c3543994a015",
              "parent_uuid": "805e10e2-1f75-4950-baa6-06bc5e78f23f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bde85a90-7d52-484f-89a5-146e2abba8e8",
                  "parent_uuid": "3645ee59-df38-4a04-871f-c3543994a015",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f70a798-68c6-464c-bf1e-423ea5f2ee77",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4389376-d0dc-4a9b-8228-ac75078e7a52",
              "parent_uuid": "0f70a798-68c6-464c-bf1e-423ea5f2ee77",
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
              "uuid": "c7d324f2-46e6-416f-ba14-cdfd8929e628",
              "parent_uuid": "0f70a798-68c6-464c-bf1e-423ea5f2ee77",
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
              "uuid": "c43fd983-3bb0-44b0-9309-6152904d348c",
              "parent_uuid": "0f70a798-68c6-464c-bf1e-423ea5f2ee77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8311a71b-73f7-42c7-8be4-abb9797ade14",
                  "parent_uuid": "c43fd983-3bb0-44b0-9309-6152904d348c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bb26515-6cad-4f6f-b324-6d72afaaca47",
              "parent_uuid": "0f70a798-68c6-464c-bf1e-423ea5f2ee77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a10dd61f-5585-4b7c-9698-80adbd566a85",
                  "parent_uuid": "6bb26515-6cad-4f6f-b324-6d72afaaca47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f40bcdd-7e1f-4304-8875-3d2461040a4c",
              "parent_uuid": "0f70a798-68c6-464c-bf1e-423ea5f2ee77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "781a2454-9a64-49aa-8d75-98c31c3158de",
                  "parent_uuid": "7f40bcdd-7e1f-4304-8875-3d2461040a4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49e65ed9-f77b-48d4-8bfd-a77d2ae8b2c3",
              "parent_uuid": "0f70a798-68c6-464c-bf1e-423ea5f2ee77",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3689f0e-13a4-4122-81a6-c01c986ec86f",
                  "parent_uuid": "49e65ed9-f77b-48d4-8bfd-a77d2ae8b2c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1179a561-7111-4bd0-bf1e-0ef5aca53fb8",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4d57e1a-a4d0-4ae5-91d7-d38490e1e106",
              "parent_uuid": "1179a561-7111-4bd0-bf1e-0ef5aca53fb8",
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
              "uuid": "6793a671-8080-4ef9-ac1d-b68cfd8430e3",
              "parent_uuid": "1179a561-7111-4bd0-bf1e-0ef5aca53fb8",
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
              "uuid": "1897b68a-430a-473e-b51d-5794acb7eec4",
              "parent_uuid": "1179a561-7111-4bd0-bf1e-0ef5aca53fb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c68c1e33-3b7d-45d2-9f0b-d9f5e86afa03",
                  "parent_uuid": "1897b68a-430a-473e-b51d-5794acb7eec4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d353bb67-efa9-4c8f-b7ca-e2da1376316c",
              "parent_uuid": "1179a561-7111-4bd0-bf1e-0ef5aca53fb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "054a0131-5571-44e2-8841-3eb16365095d",
                  "parent_uuid": "d353bb67-efa9-4c8f-b7ca-e2da1376316c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b5064df-b3a0-4072-9d02-ae9637062dfe",
              "parent_uuid": "1179a561-7111-4bd0-bf1e-0ef5aca53fb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3d5777a-ecec-4b36-8282-3daa49cdf2f1",
                  "parent_uuid": "7b5064df-b3a0-4072-9d02-ae9637062dfe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18e86005-bd8d-4489-8554-0f8f3aeb0ed4",
              "parent_uuid": "1179a561-7111-4bd0-bf1e-0ef5aca53fb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2614566-195c-4268-a5df-06384967cc4d",
                  "parent_uuid": "18e86005-bd8d-4489-8554-0f8f3aeb0ed4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e81e4870-9fae-4353-9536-1ddf1279b662",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08c557f3-8701-4197-bd4f-c3cf04d14934",
              "parent_uuid": "e81e4870-9fae-4353-9536-1ddf1279b662",
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
              "uuid": "bbb713f0-0c83-458a-ba7b-bb6045c3b1a6",
              "parent_uuid": "e81e4870-9fae-4353-9536-1ddf1279b662",
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
              "uuid": "c5638efb-ea49-491e-94b6-e9edbcfefc0f",
              "parent_uuid": "e81e4870-9fae-4353-9536-1ddf1279b662",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48ed41e9-2ca4-454f-8f89-dbea09adcea2",
                  "parent_uuid": "c5638efb-ea49-491e-94b6-e9edbcfefc0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a2124ad-8a35-4cb6-b11b-d67800a32184",
              "parent_uuid": "e81e4870-9fae-4353-9536-1ddf1279b662",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9266d61-a5ac-4e70-802c-2252539e9ce9",
                  "parent_uuid": "3a2124ad-8a35-4cb6-b11b-d67800a32184",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db649587-f814-4bc8-8159-cf7098d464bb",
              "parent_uuid": "e81e4870-9fae-4353-9536-1ddf1279b662",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55e883b9-0d92-45c6-9082-196fb85e4472",
                  "parent_uuid": "db649587-f814-4bc8-8159-cf7098d464bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b462c010-50cb-4a9a-99d3-92182615e2c8",
              "parent_uuid": "e81e4870-9fae-4353-9536-1ddf1279b662",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbd4f8f2-9dec-46a3-a332-53270431a435",
                  "parent_uuid": "b462c010-50cb-4a9a-99d3-92182615e2c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ffb353d-39a3-409b-8cea-825b811f3371",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c4dca87-7252-456d-9fcd-59d1f49cc184",
              "parent_uuid": "4ffb353d-39a3-409b-8cea-825b811f3371",
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
              "uuid": "35672a88-ae62-4ed7-b501-63ce31b5811a",
              "parent_uuid": "4ffb353d-39a3-409b-8cea-825b811f3371",
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
              "uuid": "21c8a7db-d959-4eb1-9480-1c61cdfe5e61",
              "parent_uuid": "4ffb353d-39a3-409b-8cea-825b811f3371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f5b98ca-9968-49e2-9535-b5e68f942903",
                  "parent_uuid": "21c8a7db-d959-4eb1-9480-1c61cdfe5e61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94ac1eb7-c6f4-4b55-a86b-0f38312c374b",
              "parent_uuid": "4ffb353d-39a3-409b-8cea-825b811f3371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eae00bea-2530-4b5d-be4f-eb6c6239b53b",
                  "parent_uuid": "94ac1eb7-c6f4-4b55-a86b-0f38312c374b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f7a45e6-b304-4603-b00a-437797ffcc13",
              "parent_uuid": "4ffb353d-39a3-409b-8cea-825b811f3371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad806b0d-4f03-4f15-b5b6-dbde78fa5e03",
                  "parent_uuid": "6f7a45e6-b304-4603-b00a-437797ffcc13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41e021c2-ad46-463c-84ce-e2f3733c2806",
              "parent_uuid": "4ffb353d-39a3-409b-8cea-825b811f3371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05246ee6-cde8-4a63-af6a-38dcc32bebde",
                  "parent_uuid": "41e021c2-ad46-463c-84ce-e2f3733c2806",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "89ab23f5-2ca4-4aa9-9d3e-a3ddcad26aa1",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb348682-ae25-4fba-87ee-e44171fee13a",
              "parent_uuid": "89ab23f5-2ca4-4aa9-9d3e-a3ddcad26aa1",
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
              "uuid": "e5bcce57-77f0-4fa6-86a5-6b4d91373043",
              "parent_uuid": "89ab23f5-2ca4-4aa9-9d3e-a3ddcad26aa1",
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
              "uuid": "ae0d1243-3350-4b6f-a255-f2b0094ba5f2",
              "parent_uuid": "89ab23f5-2ca4-4aa9-9d3e-a3ddcad26aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1baa9ccd-35e1-4cc4-82a9-666b9b9b8a3b",
                  "parent_uuid": "ae0d1243-3350-4b6f-a255-f2b0094ba5f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74602fb7-f1c5-4572-8a55-a849d1ff71a4",
              "parent_uuid": "89ab23f5-2ca4-4aa9-9d3e-a3ddcad26aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7445c070-5aba-4ddd-86c3-ea5c587c9eae",
                  "parent_uuid": "74602fb7-f1c5-4572-8a55-a849d1ff71a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e22b7b54-ed99-4ef2-b858-4c4ae3734d6f",
              "parent_uuid": "89ab23f5-2ca4-4aa9-9d3e-a3ddcad26aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42bbe88f-ee6d-4fd3-8aa3-69dee28865b7",
                  "parent_uuid": "e22b7b54-ed99-4ef2-b858-4c4ae3734d6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80f53b95-4a50-4fda-b041-5a8fe48617ab",
              "parent_uuid": "89ab23f5-2ca4-4aa9-9d3e-a3ddcad26aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b4af361-ce90-4289-955d-fd3aaa265987",
                  "parent_uuid": "80f53b95-4a50-4fda-b041-5a8fe48617ab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8488144c-2da8-4bc2-96d7-682a38739d71",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6c7f6964-1d64-4bb2-9b02-7e47183da579",
              "parent_uuid": "8488144c-2da8-4bc2-96d7-682a38739d71",
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
          "uuid": "73d7b51a-b3a1-4a74-a1bd-0e470674b783",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "83bee51f-131f-4216-8d8e-e47bb2e133da",
              "parent_uuid": "73d7b51a-b3a1-4a74-a1bd-0e470674b783",
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
              "uuid": "c925e61b-e322-4522-8d2f-e82670b108a5",
              "parent_uuid": "73d7b51a-b3a1-4a74-a1bd-0e470674b783",
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
              "uuid": "19d13dbc-d4af-468c-9a12-5a681379f71e",
              "parent_uuid": "73d7b51a-b3a1-4a74-a1bd-0e470674b783",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29e63892-5953-45f9-a8f3-04d3e7003828",
                  "parent_uuid": "19d13dbc-d4af-468c-9a12-5a681379f71e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d7a5ce4-4d15-4b47-a114-ef532dcdcc3a",
              "parent_uuid": "73d7b51a-b3a1-4a74-a1bd-0e470674b783",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9eed91b3-a7d2-45a8-a7dd-a816a9eb622c",
                  "parent_uuid": "4d7a5ce4-4d15-4b47-a114-ef532dcdcc3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8efd285a-1af7-4a02-9d7f-6f8c555752f7",
              "parent_uuid": "73d7b51a-b3a1-4a74-a1bd-0e470674b783",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bef3208-407b-40f0-bf05-ac2e543ef3aa",
                  "parent_uuid": "8efd285a-1af7-4a02-9d7f-6f8c555752f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0237ba78-2441-472d-b866-0b9d1624e5b7",
              "parent_uuid": "73d7b51a-b3a1-4a74-a1bd-0e470674b783",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7f97b4d-44c1-42f8-8e4b-e0b0c201d6f2",
                  "parent_uuid": "0237ba78-2441-472d-b866-0b9d1624e5b7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "77a08de9-dcef-4765-a592-e1398485e2ed",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "659989df-3209-4809-b00c-6fb5a2346a02",
              "parent_uuid": "77a08de9-dcef-4765-a592-e1398485e2ed",
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
              "uuid": "704015b0-d117-40f8-9435-71d0981e8c68",
              "parent_uuid": "77a08de9-dcef-4765-a592-e1398485e2ed",
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
              "uuid": "456d4773-0b7e-4617-a96f-5dd5bcb0b86b",
              "parent_uuid": "77a08de9-dcef-4765-a592-e1398485e2ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90a2019a-3bba-4b99-acec-117f3e41351c",
                  "parent_uuid": "456d4773-0b7e-4617-a96f-5dd5bcb0b86b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f29d2dc8-4168-40f1-9a6a-7eb882f8b4a3",
              "parent_uuid": "77a08de9-dcef-4765-a592-e1398485e2ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7df048c0-9edc-4b45-a6fa-7fe3bb3d78a2",
                  "parent_uuid": "f29d2dc8-4168-40f1-9a6a-7eb882f8b4a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "482a0985-7565-41f6-afd5-5a4dd897229a",
              "parent_uuid": "77a08de9-dcef-4765-a592-e1398485e2ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16c69417-5a50-498b-8049-fadfaf9c572e",
                  "parent_uuid": "482a0985-7565-41f6-afd5-5a4dd897229a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "012d2f95-f6f4-4271-8d06-9b1c0ad2c8fe",
              "parent_uuid": "77a08de9-dcef-4765-a592-e1398485e2ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfd8032a-e0d9-4111-b60e-6ee6264dcafa",
                  "parent_uuid": "012d2f95-f6f4-4271-8d06-9b1c0ad2c8fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "293cfc8a-307b-4391-bddf-0b5f51036cbe",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d5164e6-de39-42f5-94be-a200d79ff469",
              "parent_uuid": "293cfc8a-307b-4391-bddf-0b5f51036cbe",
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
          "uuid": "7526cd84-b18d-4483-a21e-4619495b64ac",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20fa056e-5a3d-4719-8e99-672dbf1afd6f",
              "parent_uuid": "7526cd84-b18d-4483-a21e-4619495b64ac",
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
          "uuid": "2ab92036-8209-43db-b66f-cdae8a448d19",
          "parent_uuid": "c84ffd37-e66c-4feb-8c21-45662b2cbc25",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "590908f5-e027-4464-a608-f075f16cc6bc",
              "parent_uuid": "2ab92036-8209-43db-b66f-cdae8a448d19",
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
                  "uuid": "370cb9e3-1c3f-41ee-8069-12497822c93a",
                  "parent_uuid": "590908f5-e027-4464-a608-f075f16cc6bc",
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
    ,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS cl_uid 
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
		,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '1F6BEE57-38A8-4B29-9986-BFAD7D107215'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

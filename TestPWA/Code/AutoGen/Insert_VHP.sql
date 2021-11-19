
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
  "uuid": "5268c819-a792-435d-8055-8749b38ff102",
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
      "uuid": "da363bf5-147c-4a33-b691-d095bfa23e5f",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
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
      "uuid": "57497697-19bc-4912-9802-0d34c61a1133",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "35"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "cf892fd4-9dac-41f3-a3f4-313891420119",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
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
      "uuid": "ae83d275-dd00-4f09-924d-e49a55057f19",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
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
      "uuid": "dd9f93b3-4163-4de9-aca9-8da6c312bf6b",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "80"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "7b8e9dd1-b520-44cc-a20a-e6b5562f517e",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
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
      "uuid": "b55393a6-be14-4579-a8e1-b38bbe720a84",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
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
      "uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
      "parent_uuid": "5268c819-a792-435d-8055-8749b38ff102",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b2858584-71d7-44a8-ba86-84208b763556",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "uuid": "900d24d1-560a-4b7d-a362-c3824d2841c4",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "uuid": "162a9d00-2293-4235-9bf6-f7c3d4753e61",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "uuid": "04f8edbc-bff3-447a-a141-6a243b2da9b7",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Visuelle Handarbeitsplatz</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "edf698ba-e7a5-4742-af99-fd3e9ca5fd06",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "79c92297-2e4a-440b-ba78-1e7555e2c755",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "1b4ecc45-97ef-4f9e-8263-050faa581d30",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "innerHtml": "\r\n                    <span>Nr.</span>\r\n                ",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "0dea4998-0fb7-4d0e-82c2-4841bb7d82ae",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "sort": 7,
              "lvl": 0
            },
            {
              "uuid": "1430cd96-1537-497a-9f3d-34b16fd2000d",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "sort": 8,
              "lvl": 0
            },
            {
              "uuid": "4de9d93c-301b-4cae-8c6b-a022a6781364",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "sort": 9,
              "lvl": 0
            },
            {
              "uuid": "459c496f-7a80-4a5e-8e09-66eff884407c",
              "parent_uuid": "bccd3e43-aa4e-45f5-b80f-b4f753d2ee1b",
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
              "sort": 10,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "32d53c5d-f085-43ec-9e5c-ce23eb3e10e3",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "8a2a15ef-5773-45f8-b7c5-b1b83c7b319b",
              "parent_uuid": "32d53c5d-f085-43ec-9e5c-ce23eb3e10e3",
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
              "uuid": "3c5095f8-244a-4b48-ae4c-2e63b6f2f49a",
              "parent_uuid": "32d53c5d-f085-43ec-9e5c-ce23eb3e10e3",
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
              "uuid": "989caf1d-5826-4da5-8f81-83cf625d2a22",
              "parent_uuid": "32d53c5d-f085-43ec-9e5c-ce23eb3e10e3",
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
              "uuid": "84372674-e010-4b03-9a29-56003874b87d",
              "parent_uuid": "32d53c5d-f085-43ec-9e5c-ce23eb3e10e3",
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
          "uuid": "3c7ea88e-421a-4857-a6a0-eec846bb1d7d",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c287e911-4500-4a79-a74a-2e2845c9beb3",
              "parent_uuid": "3c7ea88e-421a-4857-a6a0-eec846bb1d7d",
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
              "uuid": "41368bbf-2c60-48cf-9475-12f8b34f1b8e",
              "parent_uuid": "3c7ea88e-421a-4857-a6a0-eec846bb1d7d",
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
              "uuid": "b0979dee-f81b-48d5-90ec-70fa6a3b9777",
              "parent_uuid": "3c7ea88e-421a-4857-a6a0-eec846bb1d7d",
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
              "uuid": "f93aff86-a92f-4384-8be4-2ed52e450706",
              "parent_uuid": "3c7ea88e-421a-4857-a6a0-eec846bb1d7d",
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
              "uuid": "13289ad1-d1ea-4f5f-baee-79ba5c1cb41c",
              "parent_uuid": "3c7ea88e-421a-4857-a6a0-eec846bb1d7d",
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
              "uuid": "69490e8a-e6b3-4c7a-a376-2af791e0664a",
              "parent_uuid": "3c7ea88e-421a-4857-a6a0-eec846bb1d7d",
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
          "uuid": "584568e5-7583-4f28-8141-b8bd9e0a7744",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "93ae69e1-463d-4fa6-9601-d8e3a93a4636",
              "parent_uuid": "584568e5-7583-4f28-8141-b8bd9e0a7744",
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
          "uuid": "c0b8704e-bb6b-42eb-a232-7fa121155ae5",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7086954d-6d16-471e-af81-2772e0ad7f1f",
              "parent_uuid": "c0b8704e-bb6b-42eb-a232-7fa121155ae5",
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
              "uuid": "64744b3c-6a31-453c-9daf-e7db15241431",
              "parent_uuid": "c0b8704e-bb6b-42eb-a232-7fa121155ae5",
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
              "uuid": "686de1fa-5bd1-44fa-b31d-eaaa9bb6c508",
              "parent_uuid": "c0b8704e-bb6b-42eb-a232-7fa121155ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cdafb99-ce85-4d08-b8ec-32d37cb4fa82",
                  "parent_uuid": "686de1fa-5bd1-44fa-b31d-eaaa9bb6c508",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cce86ccf-ba5f-4dee-a4f7-f558b9969892",
              "parent_uuid": "c0b8704e-bb6b-42eb-a232-7fa121155ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42bd5d97-9f22-47ca-a9a5-b65fa27e49f3",
                  "parent_uuid": "cce86ccf-ba5f-4dee-a4f7-f558b9969892",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51f9165e-f4bf-4080-85ab-7a87618e1b19",
              "parent_uuid": "c0b8704e-bb6b-42eb-a232-7fa121155ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "967cadb0-9089-4f2c-b409-1f5cc8da090a",
                  "parent_uuid": "51f9165e-f4bf-4080-85ab-7a87618e1b19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae10d654-0adc-4c2f-a0c3-698fe300133b",
              "parent_uuid": "c0b8704e-bb6b-42eb-a232-7fa121155ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f95472ad-0b3a-4489-b976-be72f4bc4a02",
                  "parent_uuid": "ae10d654-0adc-4c2f-a0c3-698fe300133b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0421bca8-3f70-427b-9c4b-f13026ba4e9c",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50bf1c99-6546-47aa-9d1e-27b72b6e02fe",
              "parent_uuid": "0421bca8-3f70-427b-9c4b-f13026ba4e9c",
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
              "uuid": "be9101bb-3872-461e-81f5-43f063e9a8ac",
              "parent_uuid": "0421bca8-3f70-427b-9c4b-f13026ba4e9c",
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
              "uuid": "36688f68-643c-4a6d-b670-bd4843e1da68",
              "parent_uuid": "0421bca8-3f70-427b-9c4b-f13026ba4e9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5de62d49-94d9-4064-b610-292322c4a445",
                  "parent_uuid": "36688f68-643c-4a6d-b670-bd4843e1da68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba4c6076-fae9-4a60-912c-5e37c42054f6",
              "parent_uuid": "0421bca8-3f70-427b-9c4b-f13026ba4e9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6692243-79ec-4a78-b72f-c6b4aa175ce9",
                  "parent_uuid": "ba4c6076-fae9-4a60-912c-5e37c42054f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "352441b1-fc73-4974-866c-084947c718f7",
              "parent_uuid": "0421bca8-3f70-427b-9c4b-f13026ba4e9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "876933e2-7e26-423e-a4f4-64f550a8fb01",
                  "parent_uuid": "352441b1-fc73-4974-866c-084947c718f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ec562d8-9c1c-4ff0-be97-b247e1d95081",
              "parent_uuid": "0421bca8-3f70-427b-9c4b-f13026ba4e9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7643072-6fbf-4548-9120-35ce21c4bdf0",
                  "parent_uuid": "1ec562d8-9c1c-4ff0-be97-b247e1d95081",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "66d7ca7c-5b19-4d3a-b808-64578e050b89",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a02bdec-4fbf-4d61-973d-04b3e877955b",
              "parent_uuid": "66d7ca7c-5b19-4d3a-b808-64578e050b89",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Andeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ab05e0fc-82d4-4f2e-b62f-0666b0910acb",
              "parent_uuid": "66d7ca7c-5b19-4d3a-b808-64578e050b89",
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
              "uuid": "22d249a8-4934-4e08-af98-dc12ac8f98b8",
              "parent_uuid": "66d7ca7c-5b19-4d3a-b808-64578e050b89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fcc9cba-cf2f-4298-adeb-fa8a8c46ee24",
                  "parent_uuid": "22d249a8-4934-4e08-af98-dc12ac8f98b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78becaba-24bd-402f-b85e-9a157c9982c3",
              "parent_uuid": "66d7ca7c-5b19-4d3a-b808-64578e050b89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c616e364-7807-40cd-8819-b9a8b4e4f7ca",
                  "parent_uuid": "78becaba-24bd-402f-b85e-9a157c9982c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cd423a9-8167-4bbc-9a8f-b0014a3cc55d",
              "parent_uuid": "66d7ca7c-5b19-4d3a-b808-64578e050b89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a714576-14f6-4f27-8c52-e40f95a53c08",
                  "parent_uuid": "7cd423a9-8167-4bbc-9a8f-b0014a3cc55d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f31d5582-c97d-4842-ac53-b8dd56dc0400",
              "parent_uuid": "66d7ca7c-5b19-4d3a-b808-64578e050b89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3945037b-138c-4dd8-9915-919853c4c5e2",
                  "parent_uuid": "f31d5582-c97d-4842-ac53-b8dd56dc0400",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b2554fbe-1bb7-4924-9283-9edc1c9511a1",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27538c1f-c8c4-47bf-acd4-b268e199dcde",
              "parent_uuid": "b2554fbe-1bb7-4924-9283-9edc1c9511a1",
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
              "uuid": "7e6a1074-d4cd-437d-b9de-f7077950039d",
              "parent_uuid": "b2554fbe-1bb7-4924-9283-9edc1c9511a1",
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
              "innerHtml": "\r\n                    <span>2J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5df6f15b-9536-4cc0-b9b4-ed25872eb35f",
              "parent_uuid": "b2554fbe-1bb7-4924-9283-9edc1c9511a1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "037c3e35-50d7-455a-8129-119565578c87",
                  "parent_uuid": "5df6f15b-9536-4cc0-b9b4-ed25872eb35f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ce4fa62-62b8-4dd2-b557-1d4e1ab38748",
              "parent_uuid": "b2554fbe-1bb7-4924-9283-9edc1c9511a1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "383f8918-66ef-4949-889a-dcf7d22723cb",
                  "parent_uuid": "9ce4fa62-62b8-4dd2-b557-1d4e1ab38748",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4065b393-cca9-4d16-916b-13c1b7ed7b64",
              "parent_uuid": "b2554fbe-1bb7-4924-9283-9edc1c9511a1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32ecd1ab-5558-452b-9afb-dc66b26089cf",
                  "parent_uuid": "4065b393-cca9-4d16-916b-13c1b7ed7b64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de38412e-a081-4f28-b31f-1f97e9a02236",
              "parent_uuid": "b2554fbe-1bb7-4924-9283-9edc1c9511a1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee18a421-0eef-44d0-b2c6-2066ffdddc3e",
                  "parent_uuid": "de38412e-a081-4f28-b31f-1f97e9a02236",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d5c43946-e272-47a4-bdb6-2528744bcc00",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbf2099e-627b-4d8e-9b1a-459ba88ec377",
              "parent_uuid": "d5c43946-e272-47a4-bdb6-2528744bcc00",
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
              "uuid": "1d691445-5c31-4117-8527-8ac78c301d34",
              "parent_uuid": "d5c43946-e272-47a4-bdb6-2528744bcc00",
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
              "uuid": "e96009bd-481a-4da6-aa2e-a74c94a6159a",
              "parent_uuid": "d5c43946-e272-47a4-bdb6-2528744bcc00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4dd0c728-4806-4093-afa3-25bbdc4edd92",
                  "parent_uuid": "e96009bd-481a-4da6-aa2e-a74c94a6159a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "979f0b48-cab1-4827-b0fe-99b1635eba26",
              "parent_uuid": "d5c43946-e272-47a4-bdb6-2528744bcc00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f67c99b7-79d1-4e37-91d9-7b7488973408",
                  "parent_uuid": "979f0b48-cab1-4827-b0fe-99b1635eba26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b86b1a8e-d4fd-448a-acfc-bbc54dbd9bc4",
              "parent_uuid": "d5c43946-e272-47a4-bdb6-2528744bcc00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4ce8c6b-decb-44cb-8024-15f1e8486397",
                  "parent_uuid": "b86b1a8e-d4fd-448a-acfc-bbc54dbd9bc4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f533682f-71eb-4c7d-ba3b-9be9f7e20202",
              "parent_uuid": "d5c43946-e272-47a4-bdb6-2528744bcc00",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf8444b9-23b4-4e52-a61d-8d4d61f3451c",
                  "parent_uuid": "f533682f-71eb-4c7d-ba3b-9be9f7e20202",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ab37839-aaaa-4f36-b335-bbc21db1c8c0",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fff83e0b-965e-4a65-833f-da00b5c26771",
              "parent_uuid": "4ab37839-aaaa-4f36-b335-bbc21db1c8c0",
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
              "uuid": "eebbda09-a34c-4a2a-ada3-b34e15377ba8",
              "parent_uuid": "4ab37839-aaaa-4f36-b335-bbc21db1c8c0",
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
              "uuid": "e7d7afff-3232-4c9c-a1b6-031c69d47a51",
              "parent_uuid": "4ab37839-aaaa-4f36-b335-bbc21db1c8c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88749b9f-f391-4191-8e1a-6c5c7531f199",
                  "parent_uuid": "e7d7afff-3232-4c9c-a1b6-031c69d47a51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4450df0-2d94-4126-b7fb-5f7d4e06700f",
              "parent_uuid": "4ab37839-aaaa-4f36-b335-bbc21db1c8c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf7200e4-0428-48e3-a0e3-539bab3b8b0e",
                  "parent_uuid": "c4450df0-2d94-4126-b7fb-5f7d4e06700f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "118aedd4-ef75-45a0-874d-424b41440d5e",
              "parent_uuid": "4ab37839-aaaa-4f36-b335-bbc21db1c8c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc809031-b180-497f-bb41-35f35b4c649f",
                  "parent_uuid": "118aedd4-ef75-45a0-874d-424b41440d5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca465a2e-d071-4852-878a-440a1ad43caa",
              "parent_uuid": "4ab37839-aaaa-4f36-b335-bbc21db1c8c0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "558e82be-973d-4311-bf0e-466c001dcc9c",
                  "parent_uuid": "ca465a2e-d071-4852-878a-440a1ad43caa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c96da1a-c086-4ea8-ae93-2e3297dbc89f",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a7bee8e2-087c-4f2b-babd-6c3484d78e2e",
              "parent_uuid": "0c96da1a-c086-4ea8-ae93-2e3297dbc89f",
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
              "uuid": "71f5ab3f-022a-4a56-bb89-f826bf4ecdc6",
              "parent_uuid": "0c96da1a-c086-4ea8-ae93-2e3297dbc89f",
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
              "uuid": "5ff4e8d5-9820-412c-8c51-a7ca340a7877",
              "parent_uuid": "0c96da1a-c086-4ea8-ae93-2e3297dbc89f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d81fa7c-2ae8-4b95-bbd9-58586a933b42",
                  "parent_uuid": "5ff4e8d5-9820-412c-8c51-a7ca340a7877",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55c17e84-bf01-4e1c-97df-b9cd46d08b26",
              "parent_uuid": "0c96da1a-c086-4ea8-ae93-2e3297dbc89f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04d719a6-9a5e-44dc-b9a7-cf206c08e809",
                  "parent_uuid": "55c17e84-bf01-4e1c-97df-b9cd46d08b26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e139a200-806e-45a2-aff4-be11b6739cf4",
              "parent_uuid": "0c96da1a-c086-4ea8-ae93-2e3297dbc89f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1ceaa0c-2f5f-44b2-a0f2-286d6031793a",
                  "parent_uuid": "e139a200-806e-45a2-aff4-be11b6739cf4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "395fffcf-e9cb-43ce-b2b8-fa3d1fd3ec26",
              "parent_uuid": "0c96da1a-c086-4ea8-ae93-2e3297dbc89f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4626660a-6b38-48ec-919e-5682b9c40210",
                  "parent_uuid": "395fffcf-e9cb-43ce-b2b8-fa3d1fd3ec26",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5f1be59c-6f3b-4e3d-8e8d-7e3ddd9511fd",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "83595f51-3414-4795-a046-ae628f3c03e0",
              "parent_uuid": "5f1be59c-6f3b-4e3d-8e8d-7e3ddd9511fd",
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
              "innerHtml": "\r\n                    <span>Bei den zwei Antriebsmotoren die Laufruhe, Geräuschentwicklung und Lagerung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "29a10fda-547f-4128-affb-1486a2d0224c",
              "parent_uuid": "5f1be59c-6f3b-4e3d-8e8d-7e3ddd9511fd",
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
              "uuid": "4f7af80e-1344-415b-b746-4421e57e4a8d",
              "parent_uuid": "5f1be59c-6f3b-4e3d-8e8d-7e3ddd9511fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a1e8355-87fa-40b2-b2df-22d0fd004bea",
                  "parent_uuid": "4f7af80e-1344-415b-b746-4421e57e4a8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dca8c26b-0d94-4e3f-ba00-2b3321692487",
              "parent_uuid": "5f1be59c-6f3b-4e3d-8e8d-7e3ddd9511fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02d0dee2-92ff-4f20-a5bb-588e43d8c944",
                  "parent_uuid": "dca8c26b-0d94-4e3f-ba00-2b3321692487",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8986279e-847c-496b-b5d6-d0ea1b7c32f7",
              "parent_uuid": "5f1be59c-6f3b-4e3d-8e8d-7e3ddd9511fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b52cbf0-628c-4407-8631-3db977c4f52a",
                  "parent_uuid": "8986279e-847c-496b-b5d6-d0ea1b7c32f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e658ebc-8b0e-421d-ae52-8842ba6eae62",
              "parent_uuid": "5f1be59c-6f3b-4e3d-8e8d-7e3ddd9511fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca04e2d8-13d0-4a07-b1b7-803556b4583d",
                  "parent_uuid": "1e658ebc-8b0e-421d-ae52-8842ba6eae62",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "05558359-576f-43b5-b43c-46b8b10a62a7",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "739508db-ea78-44a7-afc9-eea8162c1986",
              "parent_uuid": "05558359-576f-43b5-b43c-46b8b10a62a7",
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "a41a7c63-8167-4a0d-87a0-dad946bdb7bb",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2febc4a3-22a5-45de-a7a9-b263981f9a27",
              "parent_uuid": "a41a7c63-8167-4a0d-87a0-dad946bdb7bb",
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
              "innerHtml": "\r\n                    <span>Reinigung des HAP mittels Staubsauger und Reinigungsmittel u.a. Bremsenreiniger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7d53e0ac-cfed-4567-8e02-8d43a6d4a468",
              "parent_uuid": "a41a7c63-8167-4a0d-87a0-dad946bdb7bb",
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
              "uuid": "2950e122-a8b7-43dd-88b8-914cd5f14d48",
              "parent_uuid": "a41a7c63-8167-4a0d-87a0-dad946bdb7bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "540d87ad-5d21-4da6-bc76-a136273cd7a2",
                  "parent_uuid": "2950e122-a8b7-43dd-88b8-914cd5f14d48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac62129f-3ed0-4758-916d-feb3e9551d93",
              "parent_uuid": "a41a7c63-8167-4a0d-87a0-dad946bdb7bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98e92491-9742-4db1-9126-628cfe4d8245",
                  "parent_uuid": "ac62129f-3ed0-4758-916d-feb3e9551d93",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b84fbc71-d214-4edc-9229-926cb3d158a4",
              "parent_uuid": "a41a7c63-8167-4a0d-87a0-dad946bdb7bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b89f56f-7c9c-413e-ad2a-a86d703347b9",
                  "parent_uuid": "b84fbc71-d214-4edc-9229-926cb3d158a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "502a312b-89dd-4d37-a86d-5b00679da218",
              "parent_uuid": "a41a7c63-8167-4a0d-87a0-dad946bdb7bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a397c2a1-7a4a-441a-923b-c3e2af228b4f",
                  "parent_uuid": "502a312b-89dd-4d37-a86d-5b00679da218",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f75e26af-6146-4bab-940f-9118b9f66336",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a3c9532-c92f-42c8-934c-c6b6d26d6f5b",
              "parent_uuid": "f75e26af-6146-4bab-940f-9118b9f66336",
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "8810855e-f4b3-4783-baf8-ec532c2e03ae",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc114705-ffb8-4fb4-a203-99fa04fb0e91",
              "parent_uuid": "8810855e-f4b3-4783-baf8-ec532c2e03ae",
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "fbe85316-0069-42eb-af54-7d2ec5835aef",
          "parent_uuid": "3fd32ce8-cde8-41af-83e0-0222263929ba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7ff2903-c155-4165-b3f4-3592fd21260a",
              "parent_uuid": "fbe85316-0069-42eb-af54-7d2ec5835aef",
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
                  "uuid": "6ec4655f-3697-4044-8048-d76bebea0e04",
                  "parent_uuid": "c7ff2903-c155-4165-b3f4-3592fd21260a",
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
          "sort": 16,
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
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
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
		,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DA19D272-9439-47A7-9749-153DAFAB2B69'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


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
  "uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "04d20a4f-72e7-47c1-9062-c6e6830d9d26",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "11df390c-6969-4b0b-bfe5-5167f946a483",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "be25a104-5016-456d-b662-cb124b5fab82",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "fe574eec-1ed6-46b4-8033-5b94a974c1ee",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "8323af73-a4af-47a8-b548-750862c9e46c",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "ddc197fc-9399-4cb1-85e2-89435fc7e0c4",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "d659aae1-8407-4696-80e5-7c2d055be4e2",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
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
      "uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
      "parent_uuid": "739ada19-657b-4322-afda-6f6d90e06b42",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "2d045c1b-6ad4-48a0-9ede-c8f0771b034f",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "2c09de3d-7328-4196-8a3a-23864e28c12d",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "055a8397-e6fc-46eb-93c2-042729e9e267",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "1ed02e92-8dcb-4589-9df6-391117e945ab",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "c4ff2c39-b582-4557-b1c9-8b3af442a579",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "c77cb156-d85c-4cb3-8dd6-f6c591e2fe41",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "80486023-2e6e-403a-af34-842432512b22",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "df8949c6-7a84-48f2-aa13-97ea2a869918",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "c757ed14-6c4a-4f28-84d2-70a5c02d113c",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "acb96450-ebc2-4bb6-86a8-3e93efa188fd",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
              "uuid": "015dfce6-071e-4d97-80b3-f8dfebb917aa",
              "parent_uuid": "b4638ba1-b2e6-4139-98c9-c14a655de5b8",
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
          "uuid": "b9464176-f104-4ac6-a0ce-b7af7245b31a",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "bcd4d732-d31a-4915-87bb-98cf77a41d77",
              "parent_uuid": "b9464176-f104-4ac6-a0ce-b7af7245b31a",
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
              "uuid": "6faba01e-7190-410e-a9b4-b3ceaabb4ae1",
              "parent_uuid": "b9464176-f104-4ac6-a0ce-b7af7245b31a",
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
              "uuid": "b372cd1f-b642-4d76-b906-ebf27bf182ea",
              "parent_uuid": "b9464176-f104-4ac6-a0ce-b7af7245b31a",
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
              "uuid": "133c15dd-076d-4c60-83d1-cbd592607aa7",
              "parent_uuid": "b9464176-f104-4ac6-a0ce-b7af7245b31a",
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
          "uuid": "f7f81871-a750-4ee9-9d0c-a203cb4a3460",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2fdada2d-e808-4d0f-9b16-5ed0fdb5a375",
              "parent_uuid": "f7f81871-a750-4ee9-9d0c-a203cb4a3460",
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
              "uuid": "96b5a524-3c16-48ca-877d-ecbbc505d8a9",
              "parent_uuid": "f7f81871-a750-4ee9-9d0c-a203cb4a3460",
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
              "uuid": "6fe0ad9d-8cae-4a74-be4a-867fa2866587",
              "parent_uuid": "f7f81871-a750-4ee9-9d0c-a203cb4a3460",
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
              "uuid": "60847468-ebec-41e1-abeb-e85ff458739b",
              "parent_uuid": "f7f81871-a750-4ee9-9d0c-a203cb4a3460",
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
              "uuid": "9b59fa01-5588-4883-8fcd-c39303c2fe05",
              "parent_uuid": "f7f81871-a750-4ee9-9d0c-a203cb4a3460",
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
              "uuid": "02149fff-9a23-4299-8ecf-891a3e7e7e2e",
              "parent_uuid": "f7f81871-a750-4ee9-9d0c-a203cb4a3460",
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
          "uuid": "14a842fb-981a-499d-93f0-8e691d708df2",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "240abb26-90bc-4746-8c62-98d5cdc5667c",
              "parent_uuid": "14a842fb-981a-499d-93f0-8e691d708df2",
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
          "uuid": "45bb4270-68ce-4315-aafe-7cfcac4b7fa4",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e35d8bd-1a2a-4e81-a6e7-32db25f1cab6",
              "parent_uuid": "45bb4270-68ce-4315-aafe-7cfcac4b7fa4",
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
              "uuid": "52353dc4-d01f-44dc-9d8d-5c6ec1dd3026",
              "parent_uuid": "45bb4270-68ce-4315-aafe-7cfcac4b7fa4",
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
              "uuid": "4545a0fa-d399-4444-8da6-ac84d15637a1",
              "parent_uuid": "45bb4270-68ce-4315-aafe-7cfcac4b7fa4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e42562c5-008e-41b4-9ec9-05e7f3359c34",
                  "parent_uuid": "4545a0fa-d399-4444-8da6-ac84d15637a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8640d366-1a11-4c48-94d5-cbce4dd216ab",
              "parent_uuid": "45bb4270-68ce-4315-aafe-7cfcac4b7fa4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2975d4e3-eae4-4769-8422-678a1b1c7807",
                  "parent_uuid": "8640d366-1a11-4c48-94d5-cbce4dd216ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b103410-50a7-4db4-8936-44ac188767e9",
              "parent_uuid": "45bb4270-68ce-4315-aafe-7cfcac4b7fa4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04b7d960-a9a6-4f79-b6ec-978df7a3c86f",
                  "parent_uuid": "0b103410-50a7-4db4-8936-44ac188767e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efc7cf4f-dbe1-4612-b16c-e8a4ceb7b31e",
              "parent_uuid": "45bb4270-68ce-4315-aafe-7cfcac4b7fa4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05ddf9e1-7fef-422a-b70d-0d3f027a63a7",
                  "parent_uuid": "efc7cf4f-dbe1-4612-b16c-e8a4ceb7b31e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "65ee340f-ed46-4d60-8959-068d89edd391",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00c406af-1304-40dd-a32a-bb9c601821c5",
              "parent_uuid": "65ee340f-ed46-4d60-8959-068d89edd391",
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
              "uuid": "cb81c4d1-bf9b-4053-9972-27aa661568ae",
              "parent_uuid": "65ee340f-ed46-4d60-8959-068d89edd391",
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
              "uuid": "453314dd-07cf-4504-b65e-a3f8634536f0",
              "parent_uuid": "65ee340f-ed46-4d60-8959-068d89edd391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5df9a6cc-7e26-48a2-966f-6cd1af362d94",
                  "parent_uuid": "453314dd-07cf-4504-b65e-a3f8634536f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db2c26ca-8c9c-46de-85d7-731554fd289a",
              "parent_uuid": "65ee340f-ed46-4d60-8959-068d89edd391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99c7a236-d602-4160-bf6a-fb531368dedc",
                  "parent_uuid": "db2c26ca-8c9c-46de-85d7-731554fd289a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e40c0d58-f8ef-44ca-809f-c057906391ae",
              "parent_uuid": "65ee340f-ed46-4d60-8959-068d89edd391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d389c11c-d07a-4139-8ba8-e8b516f6ee6a",
                  "parent_uuid": "e40c0d58-f8ef-44ca-809f-c057906391ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d595826-0445-4a45-90d5-004beab4aa53",
              "parent_uuid": "65ee340f-ed46-4d60-8959-068d89edd391",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99a8a45b-ed60-43fe-92cd-90acf5291363",
                  "parent_uuid": "1d595826-0445-4a45-90d5-004beab4aa53",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29aeea1b-6244-43b2-b6e0-cb2e3bc1d51b",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c077b103-176c-47de-b7d8-3380ed15efcc",
              "parent_uuid": "29aeea1b-6244-43b2-b6e0-cb2e3bc1d51b",
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
              "uuid": "ac49d28f-d3ab-4ef2-bd76-3d9edbcb6fab",
              "parent_uuid": "29aeea1b-6244-43b2-b6e0-cb2e3bc1d51b",
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
              "uuid": "d6779fed-1021-4ea4-919b-fe608de8df9e",
              "parent_uuid": "29aeea1b-6244-43b2-b6e0-cb2e3bc1d51b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "775f8764-dd76-4204-909a-a09d2b0bf290",
                  "parent_uuid": "d6779fed-1021-4ea4-919b-fe608de8df9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f66fb2c3-4c5d-4d73-b628-2c0b1bace2c6",
              "parent_uuid": "29aeea1b-6244-43b2-b6e0-cb2e3bc1d51b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d26767e2-f9e0-496b-ab51-1b31ef132284",
                  "parent_uuid": "f66fb2c3-4c5d-4d73-b628-2c0b1bace2c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7158c56-ce2d-41e3-824d-6fc09639e636",
              "parent_uuid": "29aeea1b-6244-43b2-b6e0-cb2e3bc1d51b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "503d22b1-6b17-460c-bc90-fb74a9cef6d4",
                  "parent_uuid": "c7158c56-ce2d-41e3-824d-6fc09639e636",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7300f1a-d737-460a-92aa-2a37ca506ebc",
              "parent_uuid": "29aeea1b-6244-43b2-b6e0-cb2e3bc1d51b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6ece541-33bd-4c44-912c-e0f7e46ef754",
                  "parent_uuid": "e7300f1a-d737-460a-92aa-2a37ca506ebc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37e2c0d0-9844-43df-b730-e959248d8209",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30e3ae78-2060-4e9b-8a9d-f1290a7972bf",
              "parent_uuid": "37e2c0d0-9844-43df-b730-e959248d8209",
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
              "uuid": "c531a18a-34f3-4090-ac60-96e5aa722c43",
              "parent_uuid": "37e2c0d0-9844-43df-b730-e959248d8209",
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
              "uuid": "1a4c8af0-4789-4464-82b6-6ac65643f7b3",
              "parent_uuid": "37e2c0d0-9844-43df-b730-e959248d8209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1e1db30-2924-4de8-86cf-d3d71339613b",
                  "parent_uuid": "1a4c8af0-4789-4464-82b6-6ac65643f7b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "134ead4c-9076-48c2-8f59-8de387bbe61a",
              "parent_uuid": "37e2c0d0-9844-43df-b730-e959248d8209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d57e356e-f8d1-4788-9ba5-66e537b4beb2",
                  "parent_uuid": "134ead4c-9076-48c2-8f59-8de387bbe61a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a3a3ee5-fcc4-4b5b-a6c4-d24df9a056a4",
              "parent_uuid": "37e2c0d0-9844-43df-b730-e959248d8209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "683fb899-ea09-4e84-8e2d-71dd3b73b7f5",
                  "parent_uuid": "9a3a3ee5-fcc4-4b5b-a6c4-d24df9a056a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea981822-b6e9-4c37-9658-2c681414f79b",
              "parent_uuid": "37e2c0d0-9844-43df-b730-e959248d8209",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "523a804f-45ca-4cc5-b681-16526ab8ea3e",
                  "parent_uuid": "ea981822-b6e9-4c37-9658-2c681414f79b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "68575df8-b60b-4d4e-b630-2603d626eba0",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06dfe680-acab-4ab6-9f83-c14aa4c4e38b",
              "parent_uuid": "68575df8-b60b-4d4e-b630-2603d626eba0",
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
              "uuid": "47b4b701-b09a-4f6e-a303-685e4c046c68",
              "parent_uuid": "68575df8-b60b-4d4e-b630-2603d626eba0",
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
              "uuid": "6ecded8b-ec57-4156-a9af-cf2ffe334093",
              "parent_uuid": "68575df8-b60b-4d4e-b630-2603d626eba0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f83f3ec-0460-4efd-9b32-601ba2278750",
                  "parent_uuid": "6ecded8b-ec57-4156-a9af-cf2ffe334093",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ee70916-5f59-4309-8c48-a3e43f68450e",
              "parent_uuid": "68575df8-b60b-4d4e-b630-2603d626eba0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c45a69dc-0daf-4d9e-aba7-4fc3c9b155e9",
                  "parent_uuid": "8ee70916-5f59-4309-8c48-a3e43f68450e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e125977-1405-4bc1-b2a2-dbeda1eed396",
              "parent_uuid": "68575df8-b60b-4d4e-b630-2603d626eba0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8a3921a-461e-46b7-b391-e411b38672ff",
                  "parent_uuid": "4e125977-1405-4bc1-b2a2-dbeda1eed396",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07f62b98-8ca6-4994-8872-b3418c55ec21",
              "parent_uuid": "68575df8-b60b-4d4e-b630-2603d626eba0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6815d77-a897-46d4-b2c1-0e574bb17a5b",
                  "parent_uuid": "07f62b98-8ca6-4994-8872-b3418c55ec21",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b4769584-8bfb-4644-8c5a-639a47bbebe3",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07cb73e2-62e6-4de2-b92d-cecbb144f2f9",
              "parent_uuid": "b4769584-8bfb-4644-8c5a-639a47bbebe3",
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
              "uuid": "6f6d7da0-765c-4379-bfd4-2affae52b169",
              "parent_uuid": "b4769584-8bfb-4644-8c5a-639a47bbebe3",
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
              "uuid": "f6ebc3dc-63c1-450e-b6ba-6bc75b4459cb",
              "parent_uuid": "b4769584-8bfb-4644-8c5a-639a47bbebe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f8c78f1-0cb6-4ddb-9b81-3e083e5ef171",
                  "parent_uuid": "f6ebc3dc-63c1-450e-b6ba-6bc75b4459cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31b23912-82a0-4411-9d54-4626d43554c6",
              "parent_uuid": "b4769584-8bfb-4644-8c5a-639a47bbebe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa4985f3-0fa1-4319-8c01-50d9e88bec96",
                  "parent_uuid": "31b23912-82a0-4411-9d54-4626d43554c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "429d812c-58b4-4bcd-90b8-e199818ba004",
              "parent_uuid": "b4769584-8bfb-4644-8c5a-639a47bbebe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e78fbc4d-a5a1-4499-9476-722568d80865",
                  "parent_uuid": "429d812c-58b4-4bcd-90b8-e199818ba004",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01f590ac-5c1e-4802-a9c0-4631bee168c7",
              "parent_uuid": "b4769584-8bfb-4644-8c5a-639a47bbebe3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5512c3ae-5b15-4f0a-b216-75f7292db697",
                  "parent_uuid": "01f590ac-5c1e-4802-a9c0-4631bee168c7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "315eda2f-af92-4e3b-8322-05013073ec7b",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a29a4981-bcce-4e5b-9671-3155e2af77e9",
              "parent_uuid": "315eda2f-af92-4e3b-8322-05013073ec7b",
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
              "uuid": "c0259704-f947-44d8-bfd6-c270da5504f1",
              "parent_uuid": "315eda2f-af92-4e3b-8322-05013073ec7b",
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
              "uuid": "d203a736-4ff2-4735-a7ee-8e19748f8c90",
              "parent_uuid": "315eda2f-af92-4e3b-8322-05013073ec7b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "168e0bfc-2e90-4ce6-bf35-21dbea97b598",
                  "parent_uuid": "d203a736-4ff2-4735-a7ee-8e19748f8c90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03c85f3d-5d4f-4a1d-9bba-33d59b2dfac4",
              "parent_uuid": "315eda2f-af92-4e3b-8322-05013073ec7b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "176ad9f1-91f1-4003-8cec-cbe15f068317",
                  "parent_uuid": "03c85f3d-5d4f-4a1d-9bba-33d59b2dfac4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe28aae0-cf41-485a-85d3-6997df321967",
              "parent_uuid": "315eda2f-af92-4e3b-8322-05013073ec7b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a548a4ea-f095-4d82-bd1d-2e2e0f38231f",
                  "parent_uuid": "fe28aae0-cf41-485a-85d3-6997df321967",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a11bef40-6194-4d53-b371-46aa3f74feb9",
              "parent_uuid": "315eda2f-af92-4e3b-8322-05013073ec7b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2966b032-1c21-4d51-8afd-b9f1aaccff81",
                  "parent_uuid": "a11bef40-6194-4d53-b371-46aa3f74feb9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3447333-d374-4f78-871d-083487c8d88a",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89691669-7899-4b79-b52a-756c4753d2a5",
              "parent_uuid": "b3447333-d374-4f78-871d-083487c8d88a",
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
              "uuid": "4ae2263b-b68e-4924-adaf-0317875c77a9",
              "parent_uuid": "b3447333-d374-4f78-871d-083487c8d88a",
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
              "uuid": "c5cc7b5d-cb32-41dc-9c5a-a5358aac4123",
              "parent_uuid": "b3447333-d374-4f78-871d-083487c8d88a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f5acf91-f43e-46ad-8d0b-bf514307970c",
                  "parent_uuid": "c5cc7b5d-cb32-41dc-9c5a-a5358aac4123",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "026a33f7-3d8b-4685-9861-f7757dc5717f",
              "parent_uuid": "b3447333-d374-4f78-871d-083487c8d88a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1aca9a01-90e4-439e-a641-53135cdc1b55",
                  "parent_uuid": "026a33f7-3d8b-4685-9861-f7757dc5717f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9afe4219-deaf-4000-9d83-7e28a37e483c",
              "parent_uuid": "b3447333-d374-4f78-871d-083487c8d88a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a043a9f4-f7aa-4d85-a096-cf475a670eb0",
                  "parent_uuid": "9afe4219-deaf-4000-9d83-7e28a37e483c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afcb6818-63e1-407e-a242-d0e35e170c8f",
              "parent_uuid": "b3447333-d374-4f78-871d-083487c8d88a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "025de51b-1313-4fed-a06e-e4e3859af5f7",
                  "parent_uuid": "afcb6818-63e1-407e-a242-d0e35e170c8f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0a7b7304-cdd1-4d9d-8620-c47055ff72fb",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "7628c11b-9e36-4e0a-b8df-bf4d63bf0155",
              "parent_uuid": "0a7b7304-cdd1-4d9d-8620-c47055ff72fb",
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
          "uuid": "f53ecbc4-b1af-4daa-af08-4f322f4bb5c9",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d0a911d-abcb-4b29-a469-c6306ef0755a",
              "parent_uuid": "f53ecbc4-b1af-4daa-af08-4f322f4bb5c9",
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
              "uuid": "d99a8dc3-5420-49b6-adf9-ee917e79be08",
              "parent_uuid": "f53ecbc4-b1af-4daa-af08-4f322f4bb5c9",
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
              "uuid": "091fc132-ccd3-463e-b11c-9c8203c64964",
              "parent_uuid": "f53ecbc4-b1af-4daa-af08-4f322f4bb5c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce4cb55e-1f67-4343-8e26-6092fda289c0",
                  "parent_uuid": "091fc132-ccd3-463e-b11c-9c8203c64964",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a37215fb-a793-4c58-8413-4cf65a615af3",
              "parent_uuid": "f53ecbc4-b1af-4daa-af08-4f322f4bb5c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d126a31-5da8-4518-801c-020f3f338df2",
                  "parent_uuid": "a37215fb-a793-4c58-8413-4cf65a615af3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "892b62f5-8de6-4964-8e56-edd2b746cd81",
              "parent_uuid": "f53ecbc4-b1af-4daa-af08-4f322f4bb5c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc715e62-e4a8-4fdf-86ed-f8c5db631d2d",
                  "parent_uuid": "892b62f5-8de6-4964-8e56-edd2b746cd81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c0188ca-e50d-4fa6-b3d3-e4c3d92c41f0",
              "parent_uuid": "f53ecbc4-b1af-4daa-af08-4f322f4bb5c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e37fca4-a8e4-4399-8af3-cc12e36c6233",
                  "parent_uuid": "4c0188ca-e50d-4fa6-b3d3-e4c3d92c41f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f134c6ad-fb7a-45c9-87cc-3a868b0464d5",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1fb5300a-b89e-43ef-9fb6-ae91cb8d5bbe",
              "parent_uuid": "f134c6ad-fb7a-45c9-87cc-3a868b0464d5",
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
          "uuid": "7c59f702-d64e-4237-8e13-df0069666eba",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c12f8221-188b-4fe0-b38e-b438cd6baba4",
              "parent_uuid": "7c59f702-d64e-4237-8e13-df0069666eba",
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
          "uuid": "e7dc689f-09b6-4903-962b-ecc00557118b",
          "parent_uuid": "882d9285-587d-4210-8da9-86a250aa0dba",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ec6f54b-bbfd-4d54-aeb2-5f01673bf9f7",
              "parent_uuid": "e7dc689f-09b6-4903-962b-ecc00557118b",
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
                  "uuid": "5065aad4-4549-47c9-b309-449710d0ed35",
                  "parent_uuid": "6ec6f54b-bbfd-4d54-aeb2-5f01673bf9f7",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 


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
  "uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "b0504661-76ca-44a9-aa70-11210726de4c",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "ae08588a-8b11-4a45-a227-94b44f78c92e",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "9da4114d-3d9a-4467-b5b7-f34b0fffea7b",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "c5be6048-1a0d-4191-80d4-6f644d787ee7",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "ed0a1b92-d064-45c7-bff0-53d36146c4bd",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "b44fc602-2873-448e-ba05-a50962b00e07",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "d27771d0-2cce-4f2d-a136-ed8fbdcb2b2a",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
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
      "uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
      "parent_uuid": "0c077f42-b0c9-4a60-a14f-97c75eadb291",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "9e8f8ad2-2b79-407a-b1c6-67f8d6c5b1c1",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "832e84de-d4c9-4089-b04e-438f58496ee8",
              "parent_uuid": "9e8f8ad2-2b79-407a-b1c6-67f8d6c5b1c1",
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
              "uuid": "b0c8e1bb-b9fa-45ba-9790-6f8b70f22405",
              "parent_uuid": "9e8f8ad2-2b79-407a-b1c6-67f8d6c5b1c1",
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
              "uuid": "3ca971aa-da84-451b-8a42-82bf0f62d717",
              "parent_uuid": "9e8f8ad2-2b79-407a-b1c6-67f8d6c5b1c1",
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
              "uuid": "58faa995-f47a-4845-962e-03f858a72c85",
              "parent_uuid": "9e8f8ad2-2b79-407a-b1c6-67f8d6c5b1c1",
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
          "uuid": "18a468bc-e46f-43e8-8edf-3279b4312a06",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e1fdea12-0a45-4ecb-9e99-0b2e6abbade6",
              "parent_uuid": "18a468bc-e46f-43e8-8edf-3279b4312a06",
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
              "uuid": "7eb7e6c2-03cb-40f2-b062-ed7f3d1ad5d6",
              "parent_uuid": "18a468bc-e46f-43e8-8edf-3279b4312a06",
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
              "uuid": "01ebc945-843a-47a1-8b52-2c44e103f0d6",
              "parent_uuid": "18a468bc-e46f-43e8-8edf-3279b4312a06",
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
              "uuid": "1f26608b-5ef1-4a0c-86f8-b4ae6cb49ab4",
              "parent_uuid": "18a468bc-e46f-43e8-8edf-3279b4312a06",
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
          "uuid": "b1c16291-f3bc-482b-a286-716472683423",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e88479d-b0a1-4f5e-b7b5-86c499a3316b",
              "parent_uuid": "b1c16291-f3bc-482b-a286-716472683423",
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
              "uuid": "8244a7fe-ec84-4a20-b24e-08c143046af1",
              "parent_uuid": "b1c16291-f3bc-482b-a286-716472683423",
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
              "uuid": "f2940a8e-a933-4dc2-aad7-eb680bbec3e5",
              "parent_uuid": "b1c16291-f3bc-482b-a286-716472683423",
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
              "uuid": "1355f965-9de0-4674-bc78-9ae44c85a0f6",
              "parent_uuid": "b1c16291-f3bc-482b-a286-716472683423",
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
              "uuid": "cbea9a9d-db0f-470a-ac59-83f399d7a243",
              "parent_uuid": "b1c16291-f3bc-482b-a286-716472683423",
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
              "uuid": "9fce24e9-6521-41ee-85bb-137420cc9031",
              "parent_uuid": "b1c16291-f3bc-482b-a286-716472683423",
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
          "uuid": "6dedd878-37e6-4bd5-b26d-100d0b080ea9",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "da4ebf20-b8f8-4f9e-a43e-4454682f634e",
              "parent_uuid": "6dedd878-37e6-4bd5-b26d-100d0b080ea9",
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
          "uuid": "1c10cdfe-52f4-42a7-bb0e-c3bb5d8516ac",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6599e846-c257-413c-9adc-2cbd7b1f8a11",
              "parent_uuid": "1c10cdfe-52f4-42a7-bb0e-c3bb5d8516ac",
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
              "uuid": "4c6b2c16-d2c9-4d6f-af5c-fd498197b780",
              "parent_uuid": "1c10cdfe-52f4-42a7-bb0e-c3bb5d8516ac",
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
              "uuid": "33c4a053-49f6-41db-bc1b-598fead610c8",
              "parent_uuid": "1c10cdfe-52f4-42a7-bb0e-c3bb5d8516ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7dea4ae-ad11-47fb-9a1a-b779058c11e0",
                  "parent_uuid": "33c4a053-49f6-41db-bc1b-598fead610c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd9be40c-7bfe-41e6-aee3-8c7e31491b5b",
              "parent_uuid": "1c10cdfe-52f4-42a7-bb0e-c3bb5d8516ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2152129-8510-43bd-85d5-0ad568397e7d",
                  "parent_uuid": "dd9be40c-7bfe-41e6-aee3-8c7e31491b5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e09436cb-45b3-46e4-88a5-bf3062d17516",
              "parent_uuid": "1c10cdfe-52f4-42a7-bb0e-c3bb5d8516ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec477f4e-8330-4b12-b599-12f48f3d888f",
                  "parent_uuid": "e09436cb-45b3-46e4-88a5-bf3062d17516",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00f12ef8-6a25-41a3-b6e4-97bafc2242ad",
              "parent_uuid": "1c10cdfe-52f4-42a7-bb0e-c3bb5d8516ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81c93fc6-143b-43d2-81bd-8f7b914fec08",
                  "parent_uuid": "00f12ef8-6a25-41a3-b6e4-97bafc2242ad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09bb58f6-1786-44cb-a3f3-0c3479cf70a2",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e767476-a087-493e-821f-3ccb02c83613",
              "parent_uuid": "09bb58f6-1786-44cb-a3f3-0c3479cf70a2",
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
              "uuid": "a66c0a05-f323-4e6a-87a2-fb3791b55e41",
              "parent_uuid": "09bb58f6-1786-44cb-a3f3-0c3479cf70a2",
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
              "uuid": "34727861-4696-4a90-abb8-37cd8706ae30",
              "parent_uuid": "09bb58f6-1786-44cb-a3f3-0c3479cf70a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66a6da2c-35e0-48fc-a7ca-dc7d1a00c357",
                  "parent_uuid": "34727861-4696-4a90-abb8-37cd8706ae30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cae7228-b3df-42b1-adab-18528d34fadc",
              "parent_uuid": "09bb58f6-1786-44cb-a3f3-0c3479cf70a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12af25ec-e48a-484d-a8ac-6ed026be8511",
                  "parent_uuid": "4cae7228-b3df-42b1-adab-18528d34fadc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb36fb74-ed47-4be3-9260-8825a3cfb2d9",
              "parent_uuid": "09bb58f6-1786-44cb-a3f3-0c3479cf70a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c849b229-1e85-4293-9a71-b94e5b10f60c",
                  "parent_uuid": "fb36fb74-ed47-4be3-9260-8825a3cfb2d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03d754c9-2550-40a2-a089-848465a94e50",
              "parent_uuid": "09bb58f6-1786-44cb-a3f3-0c3479cf70a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5538eb7-9d57-4b8b-bafa-4c0d117b0f80",
                  "parent_uuid": "03d754c9-2550-40a2-a089-848465a94e50",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1e1c83e8-7e64-46e8-96db-1a48307b95d9",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "982cb08e-a931-4de2-a1d2-6325859d3fc3",
              "parent_uuid": "1e1c83e8-7e64-46e8-96db-1a48307b95d9",
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
              "uuid": "a4c74ffd-f71d-4167-9a54-7a9347e02048",
              "parent_uuid": "1e1c83e8-7e64-46e8-96db-1a48307b95d9",
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
              "uuid": "5b8bdd82-59c6-4e7f-83b7-92fb61fa8789",
              "parent_uuid": "1e1c83e8-7e64-46e8-96db-1a48307b95d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a40d426-622e-4097-a358-19dac23b2aba",
                  "parent_uuid": "5b8bdd82-59c6-4e7f-83b7-92fb61fa8789",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73833bed-80ec-4c27-b677-766ebcc2ecba",
              "parent_uuid": "1e1c83e8-7e64-46e8-96db-1a48307b95d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "335832db-b306-4c3b-a2f3-d811fdcdfc5a",
                  "parent_uuid": "73833bed-80ec-4c27-b677-766ebcc2ecba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4097689c-aa40-4ce7-b742-681a6c382727",
              "parent_uuid": "1e1c83e8-7e64-46e8-96db-1a48307b95d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39aaa63a-e005-4a15-8225-512b54544913",
                  "parent_uuid": "4097689c-aa40-4ce7-b742-681a6c382727",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90837a85-5ec8-4380-a9d9-acddf1ccfdb2",
              "parent_uuid": "1e1c83e8-7e64-46e8-96db-1a48307b95d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc0287ca-1f66-4de7-b5ad-3d0d88baff4b",
                  "parent_uuid": "90837a85-5ec8-4380-a9d9-acddf1ccfdb2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9512da20-c539-49e8-a2c0-066f5dfbcd2e",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4de45303-5fec-4888-b1a4-508e32c97f9c",
              "parent_uuid": "9512da20-c539-49e8-a2c0-066f5dfbcd2e",
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
              "uuid": "65054f16-f2f3-4097-a583-25d551accfa3",
              "parent_uuid": "9512da20-c539-49e8-a2c0-066f5dfbcd2e",
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
              "uuid": "492e130e-bbe9-4875-84ea-3dfe741e9ec2",
              "parent_uuid": "9512da20-c539-49e8-a2c0-066f5dfbcd2e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "179dc7d2-cf1b-4da4-a8c6-c67503d3fc45",
                  "parent_uuid": "492e130e-bbe9-4875-84ea-3dfe741e9ec2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47d33182-a77e-4581-b690-cc5de6b6844d",
              "parent_uuid": "9512da20-c539-49e8-a2c0-066f5dfbcd2e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a866dbe3-99d7-4c57-bc2f-ff9b268a4ea4",
                  "parent_uuid": "47d33182-a77e-4581-b690-cc5de6b6844d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d394ff47-d4c1-4910-83a1-774c6300f0f7",
              "parent_uuid": "9512da20-c539-49e8-a2c0-066f5dfbcd2e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83db86ff-8acd-4686-94ab-887a5b31888c",
                  "parent_uuid": "d394ff47-d4c1-4910-83a1-774c6300f0f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c7e19ea-80a7-45db-becb-db6e840e7341",
              "parent_uuid": "9512da20-c539-49e8-a2c0-066f5dfbcd2e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3015154-a2bc-46c8-b1f7-721cd755cfd7",
                  "parent_uuid": "7c7e19ea-80a7-45db-becb-db6e840e7341",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a636f7c8-c804-4cde-bd22-bb96545a56b4",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "066a1626-6c31-43f3-a69e-92d108fa5d97",
              "parent_uuid": "a636f7c8-c804-4cde-bd22-bb96545a56b4",
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
          "uuid": "a39c2b3b-e07a-4264-be94-7b6bdd5856b0",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13fc2a73-b720-43c2-aa60-71f6e81c478b",
              "parent_uuid": "a39c2b3b-e07a-4264-be94-7b6bdd5856b0",
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
              "uuid": "b2b2f877-fb03-433f-9fa3-6e31e64ce139",
              "parent_uuid": "a39c2b3b-e07a-4264-be94-7b6bdd5856b0",
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
              "uuid": "71c2815c-97a7-4cf0-95c5-2cc306c4a2a0",
              "parent_uuid": "a39c2b3b-e07a-4264-be94-7b6bdd5856b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "840d7cd6-d566-4ff3-80c9-db7bc278b1d3",
                  "parent_uuid": "71c2815c-97a7-4cf0-95c5-2cc306c4a2a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20c8476b-23a9-490f-a77c-da127443806a",
              "parent_uuid": "a39c2b3b-e07a-4264-be94-7b6bdd5856b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b79bb70-2e2c-4dae-8826-4a36a8b500be",
                  "parent_uuid": "20c8476b-23a9-490f-a77c-da127443806a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b7e1b70-42a1-4ccc-bc40-84dc88db1b54",
              "parent_uuid": "a39c2b3b-e07a-4264-be94-7b6bdd5856b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6211dd24-7eb7-404c-aa71-542f66039c22",
                  "parent_uuid": "6b7e1b70-42a1-4ccc-bc40-84dc88db1b54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0c42551-6c08-40c8-8ba6-f6acfd8ffa03",
              "parent_uuid": "a39c2b3b-e07a-4264-be94-7b6bdd5856b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4db5f420-a96f-4c85-bbb2-35e149347aa8",
                  "parent_uuid": "e0c42551-6c08-40c8-8ba6-f6acfd8ffa03",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "439b416b-c096-4fba-a528-5f1bf9e263e5",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7745fe98-a3d8-4b78-b017-17605f2850bf",
              "parent_uuid": "439b416b-c096-4fba-a528-5f1bf9e263e5",
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
              "uuid": "755270e7-ee93-42c4-970a-842ebaa9d258",
              "parent_uuid": "439b416b-c096-4fba-a528-5f1bf9e263e5",
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
              "uuid": "4d5bc598-03a9-4d4e-be0a-17c3758f7304",
              "parent_uuid": "439b416b-c096-4fba-a528-5f1bf9e263e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a957551-2183-4d66-b38b-d40976fdc28d",
                  "parent_uuid": "4d5bc598-03a9-4d4e-be0a-17c3758f7304",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c99cd087-9bea-49ed-9e3b-c089868d2c7f",
              "parent_uuid": "439b416b-c096-4fba-a528-5f1bf9e263e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b048918b-bc41-4140-9070-1a5dea5c7e58",
                  "parent_uuid": "c99cd087-9bea-49ed-9e3b-c089868d2c7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecb2577e-427c-4af5-95f9-5371350fde0d",
              "parent_uuid": "439b416b-c096-4fba-a528-5f1bf9e263e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d66359c4-ada7-4fde-b001-fbabe845d50c",
                  "parent_uuid": "ecb2577e-427c-4af5-95f9-5371350fde0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a20d82c-a26a-4284-8dc8-a5c5011e4c91",
              "parent_uuid": "439b416b-c096-4fba-a528-5f1bf9e263e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84144ec7-f756-4c97-ab08-991c0f700772",
                  "parent_uuid": "2a20d82c-a26a-4284-8dc8-a5c5011e4c91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7284451f-3eb5-458f-a1f2-c1e97df6f7a4",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66e530b0-9af5-4a8e-94af-9dc9eafce7a4",
              "parent_uuid": "7284451f-3eb5-458f-a1f2-c1e97df6f7a4",
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
              "uuid": "343deadf-99e1-4443-8129-5c40e7de3bd9",
              "parent_uuid": "7284451f-3eb5-458f-a1f2-c1e97df6f7a4",
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
              "uuid": "3614240b-800c-4e57-8c92-9e4cf7ffaee4",
              "parent_uuid": "7284451f-3eb5-458f-a1f2-c1e97df6f7a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1adbac2-d8e3-4866-8500-210c0290e125",
                  "parent_uuid": "3614240b-800c-4e57-8c92-9e4cf7ffaee4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fe90313-81f3-420a-be84-ecac2a750957",
              "parent_uuid": "7284451f-3eb5-458f-a1f2-c1e97df6f7a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c142810c-558e-4f5d-8ff3-4145fd0fbcf5",
                  "parent_uuid": "0fe90313-81f3-420a-be84-ecac2a750957",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c3311cc-68e2-4779-ba95-4d511663cc2b",
              "parent_uuid": "7284451f-3eb5-458f-a1f2-c1e97df6f7a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9280b5c5-4621-4180-a8fc-ac87feb6d6cd",
                  "parent_uuid": "7c3311cc-68e2-4779-ba95-4d511663cc2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae06d968-b1d7-4753-bd0a-46c40f39cec8",
              "parent_uuid": "7284451f-3eb5-458f-a1f2-c1e97df6f7a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "186154c8-6296-4a90-b036-b496079e5406",
                  "parent_uuid": "ae06d968-b1d7-4753-bd0a-46c40f39cec8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37f7fd76-bdbd-43dc-ad12-268b3802c238",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a52022d-a0d2-4589-ba9e-6fe62407480f",
              "parent_uuid": "37f7fd76-bdbd-43dc-ad12-268b3802c238",
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
              "uuid": "ec433883-0702-4c63-9576-25869c559b02",
              "parent_uuid": "37f7fd76-bdbd-43dc-ad12-268b3802c238",
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
              "uuid": "041a6bcc-7f56-4489-b671-eef8f9a30794",
              "parent_uuid": "37f7fd76-bdbd-43dc-ad12-268b3802c238",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70c9d194-4411-4559-bb3a-401ab358e078",
                  "parent_uuid": "041a6bcc-7f56-4489-b671-eef8f9a30794",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26f17b31-e514-46c5-824c-000340a5529a",
              "parent_uuid": "37f7fd76-bdbd-43dc-ad12-268b3802c238",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9526fa64-4ce3-44d4-8713-27b46dee5cc2",
                  "parent_uuid": "26f17b31-e514-46c5-824c-000340a5529a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a837e435-b8a9-4096-9c0d-7331161df217",
              "parent_uuid": "37f7fd76-bdbd-43dc-ad12-268b3802c238",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00dcc295-4126-46df-a8b9-16572fb09a3a",
                  "parent_uuid": "a837e435-b8a9-4096-9c0d-7331161df217",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdcb27b9-e11e-44b7-a863-d20a214b34de",
              "parent_uuid": "37f7fd76-bdbd-43dc-ad12-268b3802c238",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee9334bb-8727-49d8-a50e-d5b24ded75a7",
                  "parent_uuid": "cdcb27b9-e11e-44b7-a863-d20a214b34de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3ad12142-e46c-45ca-85f7-c42c7451aa8e",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3dec76c-318e-4570-9dbc-8d8c7db23315",
              "parent_uuid": "3ad12142-e46c-45ca-85f7-c42c7451aa8e",
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
              "uuid": "81a572f8-944f-4cab-ace1-61e2d0a845f9",
              "parent_uuid": "3ad12142-e46c-45ca-85f7-c42c7451aa8e",
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
              "uuid": "c8b2b05d-b5e9-403c-a363-ddd83ac9f9d2",
              "parent_uuid": "3ad12142-e46c-45ca-85f7-c42c7451aa8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3615e3a9-e001-4461-ad51-aa501600837c",
                  "parent_uuid": "c8b2b05d-b5e9-403c-a363-ddd83ac9f9d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0f96e8f-0e1f-490f-84d2-6a32472e9450",
              "parent_uuid": "3ad12142-e46c-45ca-85f7-c42c7451aa8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48d8ffb0-6352-4790-82c9-ba739fd546c0",
                  "parent_uuid": "e0f96e8f-0e1f-490f-84d2-6a32472e9450",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5dce1b76-a830-4470-9407-1967e796fd53",
              "parent_uuid": "3ad12142-e46c-45ca-85f7-c42c7451aa8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0db6f98d-ae61-4c9a-98bc-4e55af8ecdad",
                  "parent_uuid": "5dce1b76-a830-4470-9407-1967e796fd53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccce7e79-9eff-4aef-9fff-01b58332ebe1",
              "parent_uuid": "3ad12142-e46c-45ca-85f7-c42c7451aa8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "081d5301-8e74-43ad-9be6-5ef9e107face",
                  "parent_uuid": "ccce7e79-9eff-4aef-9fff-01b58332ebe1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2ab36e3-5326-475d-93f5-539d3b3a85e4",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "56cc8ce3-f214-43b9-b0b1-f9f304c9cfe5",
              "parent_uuid": "c2ab36e3-5326-475d-93f5-539d3b3a85e4",
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
              "uuid": "04bf8dc0-c8e5-4e64-853b-87d0a8b44a6f",
              "parent_uuid": "c2ab36e3-5326-475d-93f5-539d3b3a85e4",
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
              "uuid": "b010612a-e90e-491f-b90b-63e4883c080e",
              "parent_uuid": "c2ab36e3-5326-475d-93f5-539d3b3a85e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b89a539e-709b-4805-abbd-03a97a194057",
                  "parent_uuid": "b010612a-e90e-491f-b90b-63e4883c080e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6481c14a-0262-4464-a32c-6a57563747fc",
              "parent_uuid": "c2ab36e3-5326-475d-93f5-539d3b3a85e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15cb49a8-1185-467a-aa31-0bbb5d88b0e2",
                  "parent_uuid": "6481c14a-0262-4464-a32c-6a57563747fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc170636-81de-496c-ae8f-e29a647840f7",
              "parent_uuid": "c2ab36e3-5326-475d-93f5-539d3b3a85e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b249ef9-f6f7-41c3-87f4-20c432a10204",
                  "parent_uuid": "cc170636-81de-496c-ae8f-e29a647840f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03556e23-ec0a-457e-8c8b-692e815fb363",
              "parent_uuid": "c2ab36e3-5326-475d-93f5-539d3b3a85e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4da8622c-c9ff-4984-b1a3-9096219b24e5",
                  "parent_uuid": "03556e23-ec0a-457e-8c8b-692e815fb363",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d96efd2-8ba5-4dc6-af45-d8e323fafb21",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f54297e2-0a07-41be-9bb3-7a13bd46f739",
              "parent_uuid": "6d96efd2-8ba5-4dc6-af45-d8e323fafb21",
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
              "uuid": "db16ceee-e50a-427a-8eb0-053268408e7b",
              "parent_uuid": "6d96efd2-8ba5-4dc6-af45-d8e323fafb21",
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
              "uuid": "2e64f0f1-5c75-4853-8ca9-4313041ef632",
              "parent_uuid": "6d96efd2-8ba5-4dc6-af45-d8e323fafb21",
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
                  "uuid": "17be2821-89a7-4eac-822e-9f7404016b99",
                  "parent_uuid": "2e64f0f1-5c75-4853-8ca9-4313041ef632",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9713962-df20-4dce-8048-0107d475e664",
              "parent_uuid": "6d96efd2-8ba5-4dc6-af45-d8e323fafb21",
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
                  "uuid": "0d9964bf-c545-426b-b11e-058cc83c0afc",
                  "parent_uuid": "d9713962-df20-4dce-8048-0107d475e664",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae8e7b48-66e9-46b1-98f7-305fe3cc98a4",
              "parent_uuid": "6d96efd2-8ba5-4dc6-af45-d8e323fafb21",
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
                  "uuid": "3f858084-24a1-4382-85db-d0672ac72373",
                  "parent_uuid": "ae8e7b48-66e9-46b1-98f7-305fe3cc98a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8c769b1-68ca-4d4f-8081-6c29e8f46000",
              "parent_uuid": "6d96efd2-8ba5-4dc6-af45-d8e323fafb21",
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
                  "uuid": "7a2ec27c-ef64-4e55-a66f-e8d663660fa9",
                  "parent_uuid": "a8c769b1-68ca-4d4f-8081-6c29e8f46000",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c4f34739-a7ef-472f-aa5c-163a0f0e09b9",
              "parent_uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
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
              "uuid": "975078d1-2315-4c20-a3a8-7a23a8c1aa65",
              "parent_uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
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
              "uuid": "929f83c9-88bf-43a0-a1d0-68d4da03307d",
              "parent_uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
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
              "uuid": "c9059d13-5e26-463f-b49d-e68a16285d16",
              "parent_uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
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
                  "uuid": "91ab5861-b0f2-4313-aa6e-a82774fe2f8d",
                  "parent_uuid": "c9059d13-5e26-463f-b49d-e68a16285d16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c147fae-d11d-45a0-8c34-637c9f9f3524",
              "parent_uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
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
                  "uuid": "e121c604-5599-4318-bd2a-43af312790dd",
                  "parent_uuid": "2c147fae-d11d-45a0-8c34-637c9f9f3524",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c97aed9b-64e0-4a3a-af6f-65bf5c2990b8",
              "parent_uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
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
                  "uuid": "bf27a1f3-6a63-4920-8682-cec6a3acaf1a",
                  "parent_uuid": "c97aed9b-64e0-4a3a-af6f-65bf5c2990b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53229b09-63e5-46a1-a383-d110d7811f4d",
              "parent_uuid": "7c1a3a58-7c15-4773-aba2-b85535914d96",
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
                  "uuid": "00cdb8f0-a861-4a2a-b065-40f3b1e5828c",
                  "parent_uuid": "53229b09-63e5-46a1-a383-d110d7811f4d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54d5688e-b4bd-44a6-987b-4a4df091c546",
              "parent_uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
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
              "uuid": "ba97578d-88e7-4186-abdf-5345c3faaa21",
              "parent_uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
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
              "uuid": "838d7be8-fd66-4cce-8a7c-c72b1f7d6b62",
              "parent_uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
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
                  "uuid": "f81aa570-0271-4bd4-907a-b5b4c4de517c",
                  "parent_uuid": "838d7be8-fd66-4cce-8a7c-c72b1f7d6b62",
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
              "uuid": "e64d259f-b673-426a-aeeb-2b03373627a1",
              "parent_uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
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
                  "uuid": "cdfcc31d-62a9-4253-9326-f29659b7a6a7",
                  "parent_uuid": "e64d259f-b673-426a-aeeb-2b03373627a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5446b6ad-539c-479c-926c-4a54401fe782",
              "parent_uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
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
                  "uuid": "36f101d2-a4fb-4e88-a4c1-1d6d10def621",
                  "parent_uuid": "5446b6ad-539c-479c-926c-4a54401fe782",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c44a30c-1a95-49a3-8dd0-9f22444ed13c",
              "parent_uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
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
                  "uuid": "428702cb-6bfe-4095-95fd-c5f2ded9bcc6",
                  "parent_uuid": "5c44a30c-1a95-49a3-8dd0-9f22444ed13c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "712a6c27-7e19-47a3-8269-1181679e4a73",
              "parent_uuid": "d7b58bb0-f1f1-4bbe-a61e-469c6ae9ec17",
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
                  "uuid": "414b6fcd-95c6-4728-9a43-dd6482523af6",
                  "parent_uuid": "712a6c27-7e19-47a3-8269-1181679e4a73",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f2004a73-3e1c-4f4a-a2bd-b404e3937655",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16a92229-e90c-4f2b-a6b7-1b4f828c7c7d",
              "parent_uuid": "f2004a73-3e1c-4f4a-a2bd-b404e3937655",
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
              "uuid": "1b1306bc-17bf-44b3-a658-ea1ff2d1fe33",
              "parent_uuid": "f2004a73-3e1c-4f4a-a2bd-b404e3937655",
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
              "uuid": "38cbbb32-4262-46ab-b488-dc122299b6fc",
              "parent_uuid": "f2004a73-3e1c-4f4a-a2bd-b404e3937655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bd9bfeb-b53a-4c02-a5c2-2d1ca4138c27",
                  "parent_uuid": "38cbbb32-4262-46ab-b488-dc122299b6fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d006687d-54c1-4768-8a1a-975991ba118f",
              "parent_uuid": "f2004a73-3e1c-4f4a-a2bd-b404e3937655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "052443f1-8365-413c-8aec-906d13a96995",
                  "parent_uuid": "d006687d-54c1-4768-8a1a-975991ba118f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfe04181-f339-43f6-9a12-60b64ac274ca",
              "parent_uuid": "f2004a73-3e1c-4f4a-a2bd-b404e3937655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c3e6c98-131a-49f6-900a-a59d14f1c155",
                  "parent_uuid": "cfe04181-f339-43f6-9a12-60b64ac274ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6aa716e5-939d-446d-b3a9-17418f764868",
              "parent_uuid": "f2004a73-3e1c-4f4a-a2bd-b404e3937655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5ec1aa6-a2df-486d-8521-819b8729b5c4",
                  "parent_uuid": "6aa716e5-939d-446d-b3a9-17418f764868",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "832a05cd-5ae8-4b57-b6ef-b54f80f8724e",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "744f8a99-bac4-44e2-9a92-50ae7c2139c6",
              "parent_uuid": "832a05cd-5ae8-4b57-b6ef-b54f80f8724e",
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
              "uuid": "d9bf4e69-a4fb-4e94-b85f-073a7dc75d24",
              "parent_uuid": "832a05cd-5ae8-4b57-b6ef-b54f80f8724e",
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
              "uuid": "0127fa05-e5eb-4a22-b676-436982943469",
              "parent_uuid": "832a05cd-5ae8-4b57-b6ef-b54f80f8724e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b02bfffe-657a-4c47-aec7-0ffc26bf5287",
                  "parent_uuid": "0127fa05-e5eb-4a22-b676-436982943469",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "faab7c8a-5b2e-4a56-8fcd-a80d297fcbbc",
              "parent_uuid": "832a05cd-5ae8-4b57-b6ef-b54f80f8724e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99fea9f1-d1ff-40c9-9592-43719c99912c",
                  "parent_uuid": "faab7c8a-5b2e-4a56-8fcd-a80d297fcbbc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e017f3d-188f-46ff-9347-b5f59289adca",
              "parent_uuid": "832a05cd-5ae8-4b57-b6ef-b54f80f8724e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7d5b33a-0d79-4e38-9077-ca378a207b1c",
                  "parent_uuid": "3e017f3d-188f-46ff-9347-b5f59289adca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0592fba4-5da6-46b9-81e1-52a5529bff2c",
              "parent_uuid": "832a05cd-5ae8-4b57-b6ef-b54f80f8724e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6dda4e2c-3e39-4b5e-8d0d-df6e53260983",
                  "parent_uuid": "0592fba4-5da6-46b9-81e1-52a5529bff2c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c040a28-ab9e-4e35-b09e-63c7ab1fa582",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3aa7215c-f02b-4a8c-8fb2-19463602337f",
              "parent_uuid": "7c040a28-ab9e-4e35-b09e-63c7ab1fa582",
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
              "uuid": "0d3bffd0-7a8c-4ee1-9311-b3b1bae630a9",
              "parent_uuid": "7c040a28-ab9e-4e35-b09e-63c7ab1fa582",
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
              "uuid": "ff41b69d-936d-47c2-9e62-eae1e26a2c23",
              "parent_uuid": "7c040a28-ab9e-4e35-b09e-63c7ab1fa582",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1446cfb-d60b-4ff5-8e7d-e9ba037157d4",
                  "parent_uuid": "ff41b69d-936d-47c2-9e62-eae1e26a2c23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "618a6802-5a10-4543-a476-2d025f2e4ca9",
              "parent_uuid": "7c040a28-ab9e-4e35-b09e-63c7ab1fa582",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efb70641-238c-4615-8484-2c1da508dc15",
                  "parent_uuid": "618a6802-5a10-4543-a476-2d025f2e4ca9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03f84708-0881-40bb-af67-331a2fb3acb5",
              "parent_uuid": "7c040a28-ab9e-4e35-b09e-63c7ab1fa582",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16c26d57-15aa-4b9e-811a-35c7f71cbe4d",
                  "parent_uuid": "03f84708-0881-40bb-af67-331a2fb3acb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e6ad62c-0285-4d23-9d21-696a6e1a9e11",
              "parent_uuid": "7c040a28-ab9e-4e35-b09e-63c7ab1fa582",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2df29c99-68ac-4498-b988-704d0d66e493",
                  "parent_uuid": "5e6ad62c-0285-4d23-9d21-696a6e1a9e11",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "526e7622-1f4f-4ed6-9cf7-2fb8c1175d15",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f818462-205e-47ab-8b31-fd69bf0ad86b",
              "parent_uuid": "526e7622-1f4f-4ed6-9cf7-2fb8c1175d15",
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
              "uuid": "c3e6b5d1-2ff6-4d1e-abd3-50b055afd9f5",
              "parent_uuid": "526e7622-1f4f-4ed6-9cf7-2fb8c1175d15",
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
              "uuid": "2e2afe27-a24a-4e79-bbe7-7377ba2f9fbd",
              "parent_uuid": "526e7622-1f4f-4ed6-9cf7-2fb8c1175d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3e5ad9a-1f2a-4175-911b-15435b8ca875",
                  "parent_uuid": "2e2afe27-a24a-4e79-bbe7-7377ba2f9fbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08da6a62-d91f-474c-95d1-ed0d20e635bb",
              "parent_uuid": "526e7622-1f4f-4ed6-9cf7-2fb8c1175d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad9a1921-932d-4307-a0b2-050944fb6cb0",
                  "parent_uuid": "08da6a62-d91f-474c-95d1-ed0d20e635bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13976902-80f6-46af-8ecf-3e137eea6e2a",
              "parent_uuid": "526e7622-1f4f-4ed6-9cf7-2fb8c1175d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27e7d858-fb50-48f1-b442-6574f4261497",
                  "parent_uuid": "13976902-80f6-46af-8ecf-3e137eea6e2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71961475-fe8a-4ae2-953c-9c80f701c701",
              "parent_uuid": "526e7622-1f4f-4ed6-9cf7-2fb8c1175d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1991d27a-b852-40ab-8051-e088b359371e",
                  "parent_uuid": "71961475-fe8a-4ae2-953c-9c80f701c701",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c0a2fdf-006e-415d-a048-9128060d29b8",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d080928f-8314-4aa9-9245-2ed07cceff8d",
              "parent_uuid": "0c0a2fdf-006e-415d-a048-9128060d29b8",
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
          "uuid": "2381dbed-3362-4649-8b10-5d723402028a",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e164a15-5e25-4cf5-9f36-8db7e1a301ab",
              "parent_uuid": "2381dbed-3362-4649-8b10-5d723402028a",
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
              "uuid": "0bc5716e-5e4c-44a3-a1e3-0d7d27c395d4",
              "parent_uuid": "2381dbed-3362-4649-8b10-5d723402028a",
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
              "uuid": "f16e6035-d585-459a-a10d-bacc3dbff8ed",
              "parent_uuid": "2381dbed-3362-4649-8b10-5d723402028a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20eebe67-b82e-4477-a88f-90dea488e1ce",
                  "parent_uuid": "f16e6035-d585-459a-a10d-bacc3dbff8ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2eacf3ad-b657-4bf0-9c92-443633b087b1",
              "parent_uuid": "2381dbed-3362-4649-8b10-5d723402028a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae1a4c34-42dd-49fb-a6fc-3a198f50621c",
                  "parent_uuid": "2eacf3ad-b657-4bf0-9c92-443633b087b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d6ffe9c-b629-41c6-b101-9637223d1e60",
              "parent_uuid": "2381dbed-3362-4649-8b10-5d723402028a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69bf02a6-19e4-4826-af59-fb88754b400f",
                  "parent_uuid": "7d6ffe9c-b629-41c6-b101-9637223d1e60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b78a6629-8b8d-4d0c-bfec-a2cc1fcad727",
              "parent_uuid": "2381dbed-3362-4649-8b10-5d723402028a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17a22303-eacd-4a5a-b685-3a49bd2c4ab8",
                  "parent_uuid": "b78a6629-8b8d-4d0c-bfec-a2cc1fcad727",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9918fe00-3af8-49e9-9b1f-844f0d12b4e2",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24e1140b-6152-4d27-9eca-75799e09cbbd",
              "parent_uuid": "9918fe00-3af8-49e9-9b1f-844f0d12b4e2",
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
              "uuid": "ebccd551-8a44-4ae9-979a-b4ab3bf67a2f",
              "parent_uuid": "9918fe00-3af8-49e9-9b1f-844f0d12b4e2",
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
              "uuid": "c7fac2ca-708e-4e88-8cb0-5dc1f43d5c7e",
              "parent_uuid": "9918fe00-3af8-49e9-9b1f-844f0d12b4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfa11b47-2337-4135-ad5b-83afbc29c799",
                  "parent_uuid": "c7fac2ca-708e-4e88-8cb0-5dc1f43d5c7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e428b6a1-01b8-431c-aed8-2b556709b697",
              "parent_uuid": "9918fe00-3af8-49e9-9b1f-844f0d12b4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0f88a2e-ae21-408f-9280-0f4f95b87fa6",
                  "parent_uuid": "e428b6a1-01b8-431c-aed8-2b556709b697",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5403f62f-8d73-48b6-98f0-686bf594c42b",
              "parent_uuid": "9918fe00-3af8-49e9-9b1f-844f0d12b4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99381cd8-db52-46b0-bd20-ff7e11ebc5a8",
                  "parent_uuid": "5403f62f-8d73-48b6-98f0-686bf594c42b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ce12cb8-1480-40be-9bde-947a3194f4be",
              "parent_uuid": "9918fe00-3af8-49e9-9b1f-844f0d12b4e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a27004c4-2eac-4ae4-b3f2-950047c94593",
                  "parent_uuid": "9ce12cb8-1480-40be-9bde-947a3194f4be",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cd21a2f5-c275-4f5a-8eea-6d7012cabdbc",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "615229c5-b332-49fe-9c58-389f34a50e8d",
              "parent_uuid": "cd21a2f5-c275-4f5a-8eea-6d7012cabdbc",
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
              "uuid": "384c48f0-fb59-4732-bf5d-337382c6f0c0",
              "parent_uuid": "cd21a2f5-c275-4f5a-8eea-6d7012cabdbc",
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
              "uuid": "28da63e6-6403-45c9-ae78-843d802ae9d3",
              "parent_uuid": "cd21a2f5-c275-4f5a-8eea-6d7012cabdbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4df7ff03-e8a3-41e9-92de-6a45390b33e0",
                  "parent_uuid": "28da63e6-6403-45c9-ae78-843d802ae9d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cee4cfff-f855-4496-ac2c-0d400c6b07be",
              "parent_uuid": "cd21a2f5-c275-4f5a-8eea-6d7012cabdbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7018479-bccb-4cd3-9bb7-f6297ace8fd1",
                  "parent_uuid": "cee4cfff-f855-4496-ac2c-0d400c6b07be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ca307d7-cc7c-43b9-8160-6130767999b3",
              "parent_uuid": "cd21a2f5-c275-4f5a-8eea-6d7012cabdbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "579fda05-7825-47ce-b44e-b7f0485de79f",
                  "parent_uuid": "7ca307d7-cc7c-43b9-8160-6130767999b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f841ba61-a149-4d73-ba3d-7845045bd184",
              "parent_uuid": "cd21a2f5-c275-4f5a-8eea-6d7012cabdbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c623bc7-08bb-4644-b7ce-086e1ad348db",
                  "parent_uuid": "f841ba61-a149-4d73-ba3d-7845045bd184",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "502f7374-7ba6-4bd8-baaa-9bd4794f5433",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19d0ae27-6be7-492e-a2cf-0eef09b34e15",
              "parent_uuid": "502f7374-7ba6-4bd8-baaa-9bd4794f5433",
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
              "uuid": "5392b5ee-eacc-4599-8589-729e00f15789",
              "parent_uuid": "502f7374-7ba6-4bd8-baaa-9bd4794f5433",
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
              "uuid": "89ec718f-f89c-4b3a-b82e-9b380004bbe2",
              "parent_uuid": "502f7374-7ba6-4bd8-baaa-9bd4794f5433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8d6bf0a-c759-4f70-a532-c5e795d906a9",
                  "parent_uuid": "89ec718f-f89c-4b3a-b82e-9b380004bbe2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "882205e8-cd77-4bc7-8f25-90b4590c1127",
              "parent_uuid": "502f7374-7ba6-4bd8-baaa-9bd4794f5433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c04ce40-ab6c-4846-ae67-a8d5625e380c",
                  "parent_uuid": "882205e8-cd77-4bc7-8f25-90b4590c1127",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc1a06e9-bbd2-4802-9e23-b491688030f6",
              "parent_uuid": "502f7374-7ba6-4bd8-baaa-9bd4794f5433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40d8550b-d936-43be-b18e-a41a875c7813",
                  "parent_uuid": "dc1a06e9-bbd2-4802-9e23-b491688030f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45dc9250-58b5-4067-8910-01ea5da4434e",
              "parent_uuid": "502f7374-7ba6-4bd8-baaa-9bd4794f5433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a9f71d8-7078-4e4b-8c59-9998dcdb831b",
                  "parent_uuid": "45dc9250-58b5-4067-8910-01ea5da4434e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a9951ef7-82a4-4df9-aa23-06f4833e915f",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89d81bd4-e681-49d8-868d-6ec22e325d37",
              "parent_uuid": "a9951ef7-82a4-4df9-aa23-06f4833e915f",
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
              "uuid": "3a23d8c0-00c1-4368-abde-43181125c02c",
              "parent_uuid": "a9951ef7-82a4-4df9-aa23-06f4833e915f",
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
              "uuid": "7f4dd073-437c-461b-babb-bf60e6ea1104",
              "parent_uuid": "a9951ef7-82a4-4df9-aa23-06f4833e915f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20d8faf2-6bef-441a-a2cd-d43ba2cce4aa",
                  "parent_uuid": "7f4dd073-437c-461b-babb-bf60e6ea1104",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c9107ab-1021-46cc-a84b-233249a3a58d",
              "parent_uuid": "a9951ef7-82a4-4df9-aa23-06f4833e915f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea58f1f4-464d-4d0d-aeff-ca7294c890c9",
                  "parent_uuid": "4c9107ab-1021-46cc-a84b-233249a3a58d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e57967e-ae7b-4438-aa8b-d4c590e58ddf",
              "parent_uuid": "a9951ef7-82a4-4df9-aa23-06f4833e915f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0df2ad37-3dbc-47f6-8cba-fa53be68b6c8",
                  "parent_uuid": "6e57967e-ae7b-4438-aa8b-d4c590e58ddf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68a2a003-9a2a-4cb0-adb0-bb2a99785a81",
              "parent_uuid": "a9951ef7-82a4-4df9-aa23-06f4833e915f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89332deb-866b-43a5-9ed4-821c016e4ce6",
                  "parent_uuid": "68a2a003-9a2a-4cb0-adb0-bb2a99785a81",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6c224d6-2ea4-47c5-b46a-38bd874d5891",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d3d8234-7822-4395-b21f-8ff7d972fe42",
              "parent_uuid": "d6c224d6-2ea4-47c5-b46a-38bd874d5891",
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
          "uuid": "e97d335f-7042-4bc7-b88b-fa6d7310f5e6",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac30c24c-bec4-4916-8d87-6a1775c3dc2e",
              "parent_uuid": "e97d335f-7042-4bc7-b88b-fa6d7310f5e6",
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
          "uuid": "1120b1a8-0734-45d8-91bb-59b0bd529e0a",
          "parent_uuid": "d8dd6292-22ce-4675-ab06-c093a868a116",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c368ebf-21f9-4d1f-b548-dca134248f1e",
              "parent_uuid": "1120b1a8-0734-45d8-91bb-59b0bd529e0a",
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
                  "uuid": "7ddc5c93-1a89-460a-acda-37088a6e3ebf",
                  "parent_uuid": "6c368ebf-21f9-4d1f-b548-dca134248f1e",
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 



DECLARE @allChecklists TABLE (CL_UID uniqueidentifier NOT NULL PRIMARY KEY, CL_Name nvarchar(256) NULL, CL_Sort int NULL) 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Sort) 
          SELECT 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID, N'Schüttgutcontainer' AS CL_Name, 1 AS CL_Sort 
UNION ALL SELECT '1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS CL_UID, N'EVA' AS CL_Name, 2 AS CL_Sort 
UNION ALL SELECT '58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS CL_UID, N'CIS' AS CL_Name, 3 AS CL_Sort 
UNION ALL SELECT 'DA19D272-9439-47A7-9749-153DAFAB2B69' AS CL_UID, N'VHP' AS CL_Name, 4 AS CL_Sort 
UNION ALL SELECT '698EA23D-485A-4CEE-9B06-2E130A3A5626' AS CL_UID, N'NPL' AS CL_Name, 5 AS CL_Sort 
UNION ALL SELECT 'F1A2DD8A-2D11-496E-9B14-13559405089F' AS CL_UID, N'BPS_M7' AS CL_Name, 6 AS CL_Sort 
UNION ALL SELECT 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS CL_UID, N'BPS_1020' AS CL_Name, 7 AS CL_Sort 
; 



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

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         CL_UID 
        ,CL_Name 
    ) 
    VALUES 
    ( 
         CTE.CL_UID 
        ,CTE.CL_Name 
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

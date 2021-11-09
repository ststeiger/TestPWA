
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
  "uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
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
      "uuid": "25c1dd44-03d1-444c-a6cb-6e7ad5355805",
      "parent_uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
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
      "uuid": "2fa0c174-3d1b-48b1-b913-d9cc1632a6e5",
      "parent_uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
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
      "uuid": "a991f6a2-046d-48a7-a6f4-0dc4f32e653e",
      "parent_uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
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
      "uuid": "6f6e9f08-1eeb-4130-ba25-bb01ca46f0f4",
      "parent_uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
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
      "uuid": "eca1dafb-7a12-4b28-9c0a-ca10dcd97a6a",
      "parent_uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
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
      "uuid": "3623106e-bf28-48de-9a96-f5a74424adfb",
      "parent_uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
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
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
      "parent_uuid": "f4e201b9-d4eb-4aa2-b5c0-1e0644fdcd28",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "ad443e66-9e58-4ba5-baee-a7cad789ecdb",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "dc048068-e68a-49d8-852b-eca04cb84f59",
              "parent_uuid": "ad443e66-9e58-4ba5-baee-a7cad789ecdb",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "38dba1d7-2079-44bf-8705-ce3750299ecf",
              "parent_uuid": "ad443e66-9e58-4ba5-baee-a7cad789ecdb",
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
              "uuid": "4e4596ea-09ef-4817-891a-32c03f84a5af",
              "parent_uuid": "ad443e66-9e58-4ba5-baee-a7cad789ecdb",
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
              "uuid": "826fceb9-f79f-4b4d-80fe-0d98fd503ce4",
              "parent_uuid": "ad443e66-9e58-4ba5-baee-a7cad789ecdb",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "7"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<span>Bargeldgewerk:     BPS 1020</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "7e308ff4-f198-4e38-9572-01b0eecd0211",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "81124731-7d4c-4f65-9997-c0edd8da64e2",
              "parent_uuid": "7e308ff4-f198-4e38-9572-01b0eecd0211",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Wartungsfirma:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "36f8a4d5-9835-400a-91c3-62803c964fc1",
              "parent_uuid": "7e308ff4-f198-4e38-9572-01b0eecd0211",
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
              "uuid": "4f16db43-0d19-4007-bcc9-7e82631e7283",
              "parent_uuid": "7e308ff4-f198-4e38-9572-01b0eecd0211",
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
              "uuid": "7aeac9aa-493b-4fae-859f-c420766ec053",
              "parent_uuid": "7e308ff4-f198-4e38-9572-01b0eecd0211",
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
                  "7"
                ]
              ],
              "innerHtml": "<span>Servicetechniker:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 1,
          "lvl": 0
        },
        {
          "uuid": "dedd4aa8-2008-431e-9f3e-95856cecf883",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "c6ca4080-7074-4f85-b745-22a03e7f446e",
              "parent_uuid": "dedd4aa8-2008-431e-9f3e-95856cecf883",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 2px solid #000000"
                ],
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
              "innerHtml": "<span>Stunden:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d665b80b-c3cd-4419-bd03-151223320d2f",
              "parent_uuid": "dedd4aa8-2008-431e-9f3e-95856cecf883",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "246d9946-67c9-4bd9-995b-f5909bec857c",
              "parent_uuid": "dedd4aa8-2008-431e-9f3e-95856cecf883",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e0a2ac83-4ad7-4c7f-8d5b-7335cf407553",
              "parent_uuid": "dedd4aa8-2008-431e-9f3e-95856cecf883",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
                [
                  "colspan",
                  "7"
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
              "innerHtml": "<span>Noten:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "9ffe951b-391a-4c13-9bc1-aea122489cdf",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a52cc59f-e28c-4169-9fb8-b46943b57d5d",
              "parent_uuid": "9ffe951b-391a-4c13-9bc1-aea122489cdf",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5feb171d-54a2-4958-8dc7-419fb6110fd0",
              "parent_uuid": "9ffe951b-391a-4c13-9bc1-aea122489cdf",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fafabd48-c34a-4ed0-bbf3-25f8b0a6b85d",
              "parent_uuid": "9ffe951b-391a-4c13-9bc1-aea122489cdf",
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
              "uuid": "7f5ed248-8992-430f-8c3d-7dd0aec9df22",
              "parent_uuid": "9ffe951b-391a-4c13-9bc1-aea122489cdf",
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
              "uuid": "9f210970-d58f-4a54-a6aa-49dd53e1e0b4",
              "parent_uuid": "9ffe951b-391a-4c13-9bc1-aea122489cdf",
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
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "b44c7fe3-7d03-4700-a3d2-7ce25dafd5c6",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "706878cf-77f0-48d9-b707-b39bdf64a047",
              "parent_uuid": "b44c7fe3-7d03-4700-a3d2-7ce25dafd5c6",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "10"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "3d960647-4471-414e-aabb-9d72ececd25d",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "511968be-ec6b-4392-a557-1db55da362b6",
              "parent_uuid": "3d960647-4471-414e-aabb-9d72ececd25d",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im Eingabemodul tauschen </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "222cae5e-6b3b-49ef-b88a-e154418528d0",
              "parent_uuid": "3d960647-4471-414e-aabb-9d72ececd25d",
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
              "innerHtml": "\r\n                    <span>61</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0c06ae2b-2386-4557-9e35-5d8a467ccd45",
              "parent_uuid": "3d960647-4471-414e-aabb-9d72ececd25d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5482427e-c570-4cd8-b9e7-806cee062bb2",
                  "parent_uuid": "0c06ae2b-2386-4557-9e35-5d8a467ccd45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be8a2752-ca45-4ee6-8073-0914bad3a0f8",
              "parent_uuid": "3d960647-4471-414e-aabb-9d72ececd25d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2257acdb-77fc-454f-947e-d1847301a8a5",
                  "parent_uuid": "be8a2752-ca45-4ee6-8073-0914bad3a0f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0234f70a-d5c3-4ebb-a3a7-45b0eec4f467",
              "parent_uuid": "3d960647-4471-414e-aabb-9d72ececd25d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "884c4480-37d3-47f9-a85e-67bdeeb88c15",
                  "parent_uuid": "0234f70a-d5c3-4ebb-a3a7-45b0eec4f467",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "53533236-52b6-47b3-90cf-c6a7c995b158",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b814c3e7-7260-4abc-ae9c-97a634bf3093",
              "parent_uuid": "53533236-52b6-47b3-90cf-c6a7c995b158",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im OM, DM und SM prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "41a206bb-57b8-4d70-8659-8f11077dafec",
              "parent_uuid": "53533236-52b6-47b3-90cf-c6a7c995b158",
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
              "innerHtml": "\r\n                    <span>68</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c66bcc34-4d18-40fb-9a48-be599ea54676",
              "parent_uuid": "53533236-52b6-47b3-90cf-c6a7c995b158",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d89dd378-7662-4313-b399-78de24ac4baf",
                  "parent_uuid": "c66bcc34-4d18-40fb-9a48-be599ea54676",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6eb7eceb-c0b2-4299-86aa-91bfa8fec6ba",
              "parent_uuid": "53533236-52b6-47b3-90cf-c6a7c995b158",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "070b5d4f-7196-4308-894f-5f5a3fcff654",
                  "parent_uuid": "6eb7eceb-c0b2-4299-86aa-91bfa8fec6ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f8efc16-c12a-45ac-8ac5-88ea881fe8ae",
              "parent_uuid": "53533236-52b6-47b3-90cf-c6a7c995b158",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7ac6bef-68aa-4ad9-ad63-5b66a8e95eed",
                  "parent_uuid": "5f8efc16-c12a-45ac-8ac5-88ea881fe8ae",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "c599a9b7-28f2-4ff5-93d0-2dfc4198a3d6",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "348945e6-00dc-49ef-813d-42e714fb4359",
              "parent_uuid": "c599a9b7-28f2-4ff5-93d0-2dfc4198a3d6",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Antriebsriemen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "39229ce9-85b6-46ef-a0f2-3239a82b7f29",
              "parent_uuid": "c599a9b7-28f2-4ff5-93d0-2dfc4198a3d6",
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
              "innerHtml": "<span>74</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c3734f4c-f3e7-48a4-b3f0-502f3e159b16",
              "parent_uuid": "c599a9b7-28f2-4ff5-93d0-2dfc4198a3d6",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f958f3f-8a74-4f34-99c2-ed7662ce38d4",
                  "parent_uuid": "c3734f4c-f3e7-48a4-b3f0-502f3e159b16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f33b05ac-fa73-4e0e-ada5-a5b0575f795e",
              "parent_uuid": "c599a9b7-28f2-4ff5-93d0-2dfc4198a3d6",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a555014d-bc2f-4725-9bab-d019db8a5ed6",
                  "parent_uuid": "f33b05ac-fa73-4e0e-ada5-a5b0575f795e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32eedf30-c377-46b7-9ee7-84e3b335e929",
              "parent_uuid": "c599a9b7-28f2-4ff5-93d0-2dfc4198a3d6",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e34aa5bc-af23-4171-9b1d-92184da4a814",
                  "parent_uuid": "32eedf30-c377-46b7-9ee7-84e3b335e929",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "9a430d91-1d94-4ef2-b78c-25d3865cd310",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13133293-326b-4cb0-a6ca-08f20d6bc9ad",
              "parent_uuid": "9a430d91-1d94-4ef2-b78c-25d3865cd310",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a8dff0ef-190e-4cfb-8d57-43f6b0b070cd",
              "parent_uuid": "9a430d91-1d94-4ef2-b78c-25d3865cd310",
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
              "innerHtml": "\r\n                    <span>57</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "91f37bb4-13a8-4946-824a-45025850d51b",
              "parent_uuid": "9a430d91-1d94-4ef2-b78c-25d3865cd310",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ca78984-d416-499c-b56d-27b7fd4caf37",
                  "parent_uuid": "91f37bb4-13a8-4946-824a-45025850d51b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd71221d-8c38-489b-8ca9-94bfc372f509",
              "parent_uuid": "9a430d91-1d94-4ef2-b78c-25d3865cd310",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5f358ad-b632-4896-a4ab-a3459f0edb5b",
                  "parent_uuid": "bd71221d-8c38-489b-8ca9-94bfc372f509",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cf94995-3ff0-4b5f-873c-691ac90ca312",
              "parent_uuid": "9a430d91-1d94-4ef2-b78c-25d3865cd310",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "961a9293-e6b4-40b1-9287-d08d5ffa4054",
                  "parent_uuid": "4cf94995-3ff0-4b5f-873c-691ac90ca312",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "05bf74a6-6007-46bb-80b6-78f0ea4294b2",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eaaea0e9-b941-4eb4-81a2-e310e17f355b",
              "parent_uuid": "05bf74a6-6007-46bb-80b6-78f0ea4294b2",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhalteblock prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c97493cb-85ef-4a58-bb23-80f106f14b7b",
              "parent_uuid": "05bf74a6-6007-46bb-80b6-78f0ea4294b2",
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
              "innerHtml": "\r\n                    <span>59</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "be35af90-db70-4a49-91b9-a9b3811ae594",
              "parent_uuid": "05bf74a6-6007-46bb-80b6-78f0ea4294b2",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b07c51d-f562-4425-9dc5-00afe472dace",
                  "parent_uuid": "be35af90-db70-4a49-91b9-a9b3811ae594",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87f03c5e-afd3-479c-9656-8651d1e24a6b",
              "parent_uuid": "05bf74a6-6007-46bb-80b6-78f0ea4294b2",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5aadab4f-909d-4e9a-8fea-3e3694ef9374",
                  "parent_uuid": "87f03c5e-afd3-479c-9656-8651d1e24a6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b51ff6a1-d01a-4e6f-8837-bb7c0a05c9cb",
              "parent_uuid": "05bf74a6-6007-46bb-80b6-78f0ea4294b2",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce48d0ce-dee2-4f90-b322-ccafba0f2588",
                  "parent_uuid": "b51ff6a1-d01a-4e6f-8837-bb7c0a05c9cb",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "b72a2e05-1aec-4a29-ae8b-0b7ef53de0a5",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "43575dd5-06d7-47a2-856a-17e85e656375",
              "parent_uuid": "b72a2e05-1aec-4a29-ae8b-0b7ef53de0a5",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>BN-Eingabebereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "73866b14-a421-411d-b450-8881dda3aa51",
              "parent_uuid": "b72a2e05-1aec-4a29-ae8b-0b7ef53de0a5",
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
              "innerHtml": "\r\n                    <span>27</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "47a19380-f086-4964-a0ee-a6a9d165b899",
              "parent_uuid": "b72a2e05-1aec-4a29-ae8b-0b7ef53de0a5",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b33f63a-fdee-48cf-a154-31fa9af54585",
                  "parent_uuid": "47a19380-f086-4964-a0ee-a6a9d165b899",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9b8e7d8-a0ad-47cd-8ad9-a687f86e71e8",
              "parent_uuid": "b72a2e05-1aec-4a29-ae8b-0b7ef53de0a5",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fab6c5d-580d-47ab-ab46-c24afa3259a7",
                  "parent_uuid": "b9b8e7d8-a0ad-47cd-8ad9-a687f86e71e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ffeb4a33-6825-426a-92cc-db2a0e43d933",
              "parent_uuid": "b72a2e05-1aec-4a29-ae8b-0b7ef53de0a5",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e888f71-ef09-4a94-ac4b-153a246a458e",
                  "parent_uuid": "ffeb4a33-6825-426a-92cc-db2a0e43d933",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "58cb94c2-9a40-4863-a459-bd3eacc851a3",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d6a15005-d137-46ef-91f3-99009cf72554",
              "parent_uuid": "58cb94c2-9a40-4863-a459-bd3eacc851a3",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "896f6caf-d3da-43ca-a880-43c4443b0de6",
              "parent_uuid": "58cb94c2-9a40-4863-a459-bd3eacc851a3",
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
              "innerHtml": "\r\n                    <span>80</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8c955d57-9e4d-4d44-bea3-e317582f79f8",
              "parent_uuid": "58cb94c2-9a40-4863-a459-bd3eacc851a3",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc5f721c-b454-4937-910c-f24db8fd51cf",
                  "parent_uuid": "8c955d57-9e4d-4d44-bea3-e317582f79f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3263d6fa-cf0a-423f-8e7e-52cb46b762ce",
              "parent_uuid": "58cb94c2-9a40-4863-a459-bd3eacc851a3",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e91f009-10ea-4ed7-b06e-cb6a9f3b1eca",
                  "parent_uuid": "3263d6fa-cf0a-423f-8e7e-52cb46b762ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a0a84c9-7c71-43cc-be8b-d566cd818656",
              "parent_uuid": "58cb94c2-9a40-4863-a459-bd3eacc851a3",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41969435-18ef-4e51-adb7-015d54f07d4c",
                  "parent_uuid": "7a0a84c9-7c71-43cc-be8b-d566cd818656",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "d2ee81c1-7a4c-4700-98fa-394206db44c7",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7022e9c-86bd-48c1-9833-59db598b07ed",
              "parent_uuid": "d2ee81c1-7a4c-4700-98fa-394206db44c7",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Leitbleche und Weichenflügel im Shredderbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9dd4e2bd-e01e-4325-b83d-5fb0b7dc07d4",
              "parent_uuid": "d2ee81c1-7a4c-4700-98fa-394206db44c7",
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
              "innerHtml": "\r\n                    <span>76</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c0382cbc-d50b-426e-af21-7878ebddbb98",
              "parent_uuid": "d2ee81c1-7a4c-4700-98fa-394206db44c7",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb062ae6-d719-4314-9674-72dfa0050eb0",
                  "parent_uuid": "c0382cbc-d50b-426e-af21-7878ebddbb98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "555ddd4c-61cd-439e-b319-7cadac52a95c",
              "parent_uuid": "d2ee81c1-7a4c-4700-98fa-394206db44c7",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb53edd6-3a93-4fd2-a1e5-6cc9b6da95e2",
                  "parent_uuid": "555ddd4c-61cd-439e-b319-7cadac52a95c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7c1f1cf-97f5-40e9-970e-41073ec34014",
              "parent_uuid": "d2ee81c1-7a4c-4700-98fa-394206db44c7",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12a3518c-9870-4f64-bf6b-7abc20f46a43",
                  "parent_uuid": "a7c1f1cf-97f5-40e9-970e-41073ec34014",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "1d8db82e-6c29-42b3-949e-90f5f9d27065",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcd53bc8-485d-425b-891d-72d104c11b2f",
              "parent_uuid": "1d8db82e-6c29-42b3-949e-90f5f9d27065",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Filtermatten der Lüfter reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f929326c-0786-4349-919b-abd440690052",
              "parent_uuid": "1d8db82e-6c29-42b3-949e-90f5f9d27065",
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
              "innerHtml": "\r\n                    <span>85</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "890e206c-37c7-45c9-8248-e7f644347a41",
              "parent_uuid": "1d8db82e-6c29-42b3-949e-90f5f9d27065",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd83483c-5fe2-4cb2-ade6-aea4e992d35d",
                  "parent_uuid": "890e206c-37c7-45c9-8248-e7f644347a41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45a55e78-24f4-4952-a0af-c07ba18c2cec",
              "parent_uuid": "1d8db82e-6c29-42b3-949e-90f5f9d27065",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51428387-961a-4a32-9342-ae138c579907",
                  "parent_uuid": "45a55e78-24f4-4952-a0af-c07ba18c2cec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c0a8c1d-b9be-4ba7-aba7-87c15d71b1d8",
              "parent_uuid": "1d8db82e-6c29-42b3-949e-90f5f9d27065",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6a9b6b2-8fd0-48bb-81c7-e7e80e7cde75",
                  "parent_uuid": "1c0a8c1d-b9be-4ba7-aba7-87c15d71b1d8",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "7435e7c3-026c-4d58-89bc-cf5c149ad644",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "741b17a0-1954-4c18-b34d-b807bf158a29",
              "parent_uuid": "7435e7c3-026c-4d58-89bc-cf5c149ad644",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Warnzeichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2af0cf2a-3e0a-4519-a40c-ebfaac58a23a",
              "parent_uuid": "7435e7c3-026c-4d58-89bc-cf5c149ad644",
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
              "innerHtml": "\r\n                    <span>81</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6b01c29f-ad25-4416-a3de-5f006d246c08",
              "parent_uuid": "7435e7c3-026c-4d58-89bc-cf5c149ad644",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee26e3e1-bd5b-45f4-8f67-8b35c4285d3b",
                  "parent_uuid": "6b01c29f-ad25-4416-a3de-5f006d246c08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50530327-f798-4e60-b24a-ce931e6a0866",
              "parent_uuid": "7435e7c3-026c-4d58-89bc-cf5c149ad644",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3a44a90-2568-4f75-a99a-91dcb88a9c50",
                  "parent_uuid": "50530327-f798-4e60-b24a-ce931e6a0866",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8dee49da-4e35-41d8-9a22-2f7ed4634322",
              "parent_uuid": "7435e7c3-026c-4d58-89bc-cf5c149ad644",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b1e9f99-73d4-4fa7-8115-cbab2de007eb",
                  "parent_uuid": "8dee49da-4e35-41d8-9a22-2f7ed4634322",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "e87ac80a-6cd5-49c8-9fb8-eca8fe167638",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1702d1c1-2e21-4f7c-bd30-acebfb35283f",
              "parent_uuid": "e87ac80a-6cd5-49c8-9fb8-eca8fe167638",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Staplerscheiben reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ccb90828-1355-4cd8-a801-e8edebf598fb",
              "parent_uuid": "e87ac80a-6cd5-49c8-9fb8-eca8fe167638",
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
              "innerHtml": "\r\n                    <span>56</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a377a3f8-40a7-4fdb-8df8-8f8293483e33",
              "parent_uuid": "e87ac80a-6cd5-49c8-9fb8-eca8fe167638",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d098352f-0722-4460-9c7c-b19d28d41897",
                  "parent_uuid": "a377a3f8-40a7-4fdb-8df8-8f8293483e33",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54d5cd45-3624-491d-ace1-8a1b48be63b4",
              "parent_uuid": "e87ac80a-6cd5-49c8-9fb8-eca8fe167638",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b89fd53a-9e52-4a9b-b567-0df8603c6134",
                  "parent_uuid": "54d5cd45-3624-491d-ace1-8a1b48be63b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba9df38c-e20c-46ad-a1de-77824880965e",
              "parent_uuid": "e87ac80a-6cd5-49c8-9fb8-eca8fe167638",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd4035af-eb0d-4045-bbcd-b3bd63530dff",
                  "parent_uuid": "ba9df38c-e20c-46ad-a1de-77824880965e",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "2322186a-dc72-415e-b5fe-75cfebfecc7d",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e3b3672d-4eca-4783-92a0-1f18f82a5836",
              "parent_uuid": "2322186a-dc72-415e-b5fe-75cfebfecc7d",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Flachriemen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3bc59d2e-3be4-4013-a2d0-c5f726de0548",
              "parent_uuid": "2322186a-dc72-415e-b5fe-75cfebfecc7d",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d0958d46-e411-4fac-a4f7-3777b5959906",
              "parent_uuid": "2322186a-dc72-415e-b5fe-75cfebfecc7d",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "537a4fb8-352e-4ee0-98a8-176147ff4f6e",
                  "parent_uuid": "d0958d46-e411-4fac-a4f7-3777b5959906",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09c587a5-d343-4f20-af7c-9ca2a0ff7f88",
              "parent_uuid": "2322186a-dc72-415e-b5fe-75cfebfecc7d",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74b82a64-24c3-4f89-bc41-1de75869fdff",
                  "parent_uuid": "09c587a5-d343-4f20-af7c-9ca2a0ff7f88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46da1c53-57eb-460c-a251-2b54d4214b66",
              "parent_uuid": "2322186a-dc72-415e-b5fe-75cfebfecc7d",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9256ce6e-1b1b-4e70-ac3e-8052e83b3079",
                  "parent_uuid": "46da1c53-57eb-460c-a251-2b54d4214b66",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "2e8110a1-1384-4d63-8616-6ff7e85ca125",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9452d5e3-f3bb-4568-a63b-d41040263207",
              "parent_uuid": "2e8110a1-1384-4d63-8616-6ff7e85ca125",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "29"
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
                  "10"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "e1435e51-515d-4995-a289-3982d3a9c22c",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e8fa301-13a8-4ec5-a165-9414299c8a19",
              "parent_uuid": "e1435e51-515d-4995-a289-3982d3a9c22c",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "d0c47a0e-ec17-4305-8483-aa3ad81b3d19",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9cba3430-760d-4988-a6dd-bb3735eb6720",
              "parent_uuid": "d0c47a0e-ec17-4305-8483-aa3ad81b3d19",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "cb794cf0-54bf-4aa3-a703-d4fd8fa61eaf",
                  "parent_uuid": "9cba3430-760d-4988-a6dd-bb3735eb6720",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "f9955374-5d3d-4d2d-8001-feb4148eeafe",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9874c48-c7b2-45d7-abef-1b76358cdfe7",
              "parent_uuid": "f9955374-5d3d-4d2d-8001-feb4148eeafe",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
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
                  "10"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "d1f8031f-ad5b-48f0-9c84-14f654fad95f",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "275f49d8-2de9-49a4-b198-b1e0f882eddb",
              "parent_uuid": "d1f8031f-ad5b-48f0-9c84-14f654fad95f",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei eingeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "2012ef9e-300d-4313-94b0-4ca1a9297a8a",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed839d3c-6006-4f58-ba39-580507067840",
              "parent_uuid": "2012ef9e-300d-4313-94b0-4ca1a9297a8a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ec515418-d9f6-4300-a724-8f60955fb6e2",
              "parent_uuid": "2012ef9e-300d-4313-94b0-4ca1a9297a8a",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "946a93cc-f43a-4c66-8e95-207c4141225e",
              "parent_uuid": "2012ef9e-300d-4313-94b0-4ca1a9297a8a",
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
              "uuid": "16b101d2-be05-4632-b766-70db49b17e13",
              "parent_uuid": "2012ef9e-300d-4313-94b0-4ca1a9297a8a",
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
              "uuid": "434dad20-2abb-4c57-9812-2204416d30b7",
              "parent_uuid": "2012ef9e-300d-4313-94b0-4ca1a9297a8a",
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
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "665743f2-46ec-45ca-897a-d67122b2121f",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b541160-9e77-49a3-b65a-a589ef04969d",
              "parent_uuid": "665743f2-46ec-45ca-897a-d67122b2121f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder - Sicherheitsbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ee01fd3a-47df-472a-914d-d52162f3f42f",
              "parent_uuid": "665743f2-46ec-45ca-897a-d67122b2121f",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e7d2ebae-791d-4ece-9a08-ec028c353186",
              "parent_uuid": "665743f2-46ec-45ca-897a-d67122b2121f",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "255e7b70-cd4f-4b52-980e-3ce2a06bcbc0",
                  "parent_uuid": "e7d2ebae-791d-4ece-9a08-ec028c353186",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9186aff4-5691-44c6-b624-0e6c71ece0ed",
              "parent_uuid": "665743f2-46ec-45ca-897a-d67122b2121f",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa3cc3b5-fec5-4380-bf41-aaecb3f6f6b2",
                  "parent_uuid": "9186aff4-5691-44c6-b624-0e6c71ece0ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae70d81d-9793-42c7-b315-2505892c7366",
              "parent_uuid": "665743f2-46ec-45ca-897a-d67122b2121f",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acca8828-badc-48c3-9073-3b6491b4ff56",
                  "parent_uuid": "ae70d81d-9793-42c7-b315-2505892c7366",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "2abae5d8-d80f-4899-8798-e81fb0d61888",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8493112e-d4ac-4665-8f20-23028d547284",
              "parent_uuid": "2abae5d8-d80f-4899-8798-e81fb0d61888",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Luftleitplatte und Reflextaster prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "85f10f47-40b0-415a-9528-8804bbfdac8b",
              "parent_uuid": "2abae5d8-d80f-4899-8798-e81fb0d61888",
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
              "innerHtml": "\r\n                    <span>89</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "22a94dc6-c516-4636-b743-dc02633d08d2",
              "parent_uuid": "2abae5d8-d80f-4899-8798-e81fb0d61888",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a54bd76a-60be-43de-a6f7-daec1cd711c7",
                  "parent_uuid": "22a94dc6-c516-4636-b743-dc02633d08d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ab777a4-9d51-42be-bed7-851a80ec1725",
              "parent_uuid": "2abae5d8-d80f-4899-8798-e81fb0d61888",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f7107af-48f6-4aa4-8a8b-70f194ec4665",
                  "parent_uuid": "8ab777a4-9d51-42be-bed7-851a80ec1725",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca294de7-cbaf-4c4e-98fb-609d415670db",
              "parent_uuid": "2abae5d8-d80f-4899-8798-e81fb0d61888",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1465443-62e8-4638-9280-f977f0b3f451",
                  "parent_uuid": "ca294de7-cbaf-4c4e-98fb-609d415670db",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "9c5e7d13-1867-47cd-b672-e98c6fcdd1d1",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "77b51383-1723-4839-9ac2-b46b1081babc",
              "parent_uuid": "9c5e7d13-1867-47cd-b672-e98c6fcdd1d1",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Unterdrucksystem prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "78404d98-a2d4-4b12-9f5c-8d989944275c",
              "parent_uuid": "9c5e7d13-1867-47cd-b672-e98c6fcdd1d1",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d6373e95-1d4d-4450-ae2b-9a0c166b07c2",
              "parent_uuid": "9c5e7d13-1867-47cd-b672-e98c6fcdd1d1",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "191348ba-9b85-4e17-aed8-6780b98a2def",
                  "parent_uuid": "d6373e95-1d4d-4450-ae2b-9a0c166b07c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c6e8b15-4266-4715-bfac-5ddda3b33e40",
              "parent_uuid": "9c5e7d13-1867-47cd-b672-e98c6fcdd1d1",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d44de262-7c0f-4a92-900e-acc8c0c47012",
                  "parent_uuid": "4c6e8b15-4266-4715-bfac-5ddda3b33e40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08013877-4800-40db-ba3d-39c7b764757c",
              "parent_uuid": "9c5e7d13-1867-47cd-b672-e98c6fcdd1d1",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1863a8e-3bba-4745-aa3c-42e7b004508f",
                  "parent_uuid": "08013877-4800-40db-ba3d-39c7b764757c",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "f3b107e0-a5a3-458c-acbc-d0de37e14ef8",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2488c4cd-a6b0-4737-a374-5963c845571a",
              "parent_uuid": "f3b107e0-a5a3-458c-acbc-d0de37e14ef8",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Lüfter prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "db904f62-a882-4b59-9ef6-76b3e3fef08a",
              "parent_uuid": "f3b107e0-a5a3-458c-acbc-d0de37e14ef8",
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
              "innerHtml": "\r\n                    <span>88</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "138e229a-c62b-4b27-964b-3970d2f7e4af",
              "parent_uuid": "f3b107e0-a5a3-458c-acbc-d0de37e14ef8",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10d0ada2-9db7-4490-b18a-9302256ca85b",
                  "parent_uuid": "138e229a-c62b-4b27-964b-3970d2f7e4af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b167a430-792f-4c56-b99f-928aed2e50e8",
              "parent_uuid": "f3b107e0-a5a3-458c-acbc-d0de37e14ef8",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96434264-5585-45c8-8bc5-f794d5bf2252",
                  "parent_uuid": "b167a430-792f-4c56-b99f-928aed2e50e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5fe9bf42-6a2e-4b5d-83d8-bc717db0d93d",
              "parent_uuid": "f3b107e0-a5a3-458c-acbc-d0de37e14ef8",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4dd967d-9277-412f-a308-3fa4c1734918",
                  "parent_uuid": "5fe9bf42-6a2e-4b5d-83d8-bc717db0d93d",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "0c80d516-71ee-4c5a-a7ff-5e0d8691be57",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87e57681-2ad2-4c19-b795-925f983f7741",
              "parent_uuid": "0c80d516-71ee-4c5a-a7ff-5e0d8691be57",
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
                  "valign",
                  "top"
                ],
                [
                  "colspan",
                  "10"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "d6854578-bded-45e6-9476-a5369a68ef92",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5825e7cb-b8ab-44c0-a234-e6ada9693c18",
              "parent_uuid": "d6854578-bded-45e6-9476-a5369a68ef92",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "fc923a69-7da1-4daf-9646-09bbd3d10fc1",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38e505b7-1bb2-4b77-a874-34d2e1d41928",
              "parent_uuid": "fc923a69-7da1-4daf-9646-09bbd3d10fc1",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "5f1771e0-8f20-4f1b-978d-f881d8c025ae",
                  "parent_uuid": "38e505b7-1bb2-4b77-a874-34d2e1d41928",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "75d02f0f-46b9-40f4-8d0e-08c4cbfa84b0",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3da8136-6ed1-4712-a2f1-1c5c9558bd5a",
              "parent_uuid": "75d02f0f-46b9-40f4-8d0e-08c4cbfa84b0",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
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
                  "10"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "751fdcc9-1e4c-4e9e-942f-98625e0c7562",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4f6567b2-1875-4963-862e-f7e204c1394d",
              "parent_uuid": "751fdcc9-1e4c-4e9e-942f-98625e0c7562",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei laufender Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "845a2641-066f-4d39-8c7b-001037a64f9a",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fdbed5a5-73f3-476c-aa8a-d58ca8b91f9f",
              "parent_uuid": "845a2641-066f-4d39-8c7b-001037a64f9a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bc156cbe-b8a9-4dcf-9a07-33ad4dbd88bc",
              "parent_uuid": "845a2641-066f-4d39-8c7b-001037a64f9a",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e9029435-156f-4f48-bb60-fece1753e1d9",
              "parent_uuid": "845a2641-066f-4d39-8c7b-001037a64f9a",
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
              "uuid": "a79f6e50-eba0-474d-b76b-147e1d422305",
              "parent_uuid": "845a2641-066f-4d39-8c7b-001037a64f9a",
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
              "uuid": "e32f4939-0cb4-4dfc-a750-12ab0a5b6e90",
              "parent_uuid": "845a2641-066f-4d39-8c7b-001037a64f9a",
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
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "353987c4-e17e-4a97-b15e-8daf0cb4ec5b",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "34bb03bb-7984-4d0b-a44e-f38e709ca641",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "439dc35c-4496-4e30-a538-74dd38c07141",
              "parent_uuid": "34bb03bb-7984-4d0b-a44e-f38e709ca641",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen auf Gleichlauf überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a2733518-00a1-42e8-ad65-ae18f86e2694",
              "parent_uuid": "34bb03bb-7984-4d0b-a44e-f38e709ca641",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c27bbbd2-0530-498b-b568-e1bfe3a82985",
              "parent_uuid": "34bb03bb-7984-4d0b-a44e-f38e709ca641",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f450cc4-ac2c-48ed-ad0b-5e2ebc8aebfa",
                  "parent_uuid": "c27bbbd2-0530-498b-b568-e1bfe3a82985",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8dc6ef9-e7e0-4356-ac8b-a19a585f3d77",
              "parent_uuid": "34bb03bb-7984-4d0b-a44e-f38e709ca641",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f25923e-301c-4d4c-ae4e-42f03c7ef470",
                  "parent_uuid": "a8dc6ef9-e7e0-4356-ac8b-a19a585f3d77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b71db2d-d84a-440f-b8cc-0b6003cfe525",
              "parent_uuid": "34bb03bb-7984-4d0b-a44e-f38e709ca641",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17308d55-918c-4b8c-ba88-85553a37dd3f",
                  "parent_uuid": "1b71db2d-d84a-440f-b8cc-0b6003cfe525",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "0085a7b4-3352-43c3-9989-1109d0a9e98f",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0905ec36-293b-40ca-88de-aa2d45f4ee93",
              "parent_uuid": "0085a7b4-3352-43c3-9989-1109d0a9e98f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Transport- und Antriebsrollen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a063b9ec-435b-4d0c-842f-6ef2bf3a9805",
              "parent_uuid": "0085a7b4-3352-43c3-9989-1109d0a9e98f",
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
              "innerHtml": "\r\n                    <span>93</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9daf3a2f-a2b6-40ed-ba5e-ceade87ec6f7",
              "parent_uuid": "0085a7b4-3352-43c3-9989-1109d0a9e98f",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de31db42-d0b1-4a73-bf33-22cdfb8cc4fc",
                  "parent_uuid": "9daf3a2f-a2b6-40ed-ba5e-ceade87ec6f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7c60c06-a684-4e62-a067-18d688354380",
              "parent_uuid": "0085a7b4-3352-43c3-9989-1109d0a9e98f",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14f95df0-f034-47f4-80c1-e7e4faa6fa97",
                  "parent_uuid": "d7c60c06-a684-4e62-a067-18d688354380",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93127927-95a2-43e8-9267-47aab534e983",
              "parent_uuid": "0085a7b4-3352-43c3-9989-1109d0a9e98f",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b760209-553f-4af7-9e05-4e4942cd60a1",
                  "parent_uuid": "93127927-95a2-43e8-9267-47aab534e983",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "8a582e18-55d9-4cce-90d9-3ef8d508013c",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5c52d7e-eba5-4483-907e-1393469ba570",
              "parent_uuid": "8a582e18-55d9-4cce-90d9-3ef8d508013c",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolendruckköpfe und Farbbänder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8360abbe-aec6-4090-83e1-aa0301f682da",
              "parent_uuid": "8a582e18-55d9-4cce-90d9-3ef8d508013c",
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
              "innerHtml": "\r\n                    <span>96</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fccf44f5-9c8f-45ac-94a4-f558a181647f",
              "parent_uuid": "8a582e18-55d9-4cce-90d9-3ef8d508013c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50da32a2-9319-4d43-875c-d5ba9274efdb",
                  "parent_uuid": "fccf44f5-9c8f-45ac-94a4-f558a181647f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cce5a64-c3dd-4f81-8da4-418d09f60b23",
              "parent_uuid": "8a582e18-55d9-4cce-90d9-3ef8d508013c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df3f7b89-e342-46d1-a569-fdb71c849674",
                  "parent_uuid": "4cce5a64-c3dd-4f81-8da4-418d09f60b23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c084360-805c-4448-85d0-efcfd9a2bf51",
              "parent_uuid": "8a582e18-55d9-4cce-90d9-3ef8d508013c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0e4dfed-25e9-4374-9727-28fa0778eee0",
                  "parent_uuid": "9c084360-805c-4448-85d0-efcfd9a2bf51",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "d2a92eb4-fe96-4db4-80f8-69bb917158b2",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b659e19-ac47-483e-99d3-7487b0f743a4",
              "parent_uuid": "d2a92eb4-fe96-4db4-80f8-69bb917158b2",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolierungsvorgang prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7749bb64-7e78-47e1-aa47-4244df78b2d3",
              "parent_uuid": "d2a92eb4-fe96-4db4-80f8-69bb917158b2",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c12ea986-5414-4b88-b677-a2f0ebc2efd9",
              "parent_uuid": "d2a92eb4-fe96-4db4-80f8-69bb917158b2",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cae5356-805b-4ac4-ba8c-b3ef2b442245",
                  "parent_uuid": "c12ea986-5414-4b88-b677-a2f0ebc2efd9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8245f683-53ff-4a8e-a651-c99b7d437af8",
              "parent_uuid": "d2a92eb4-fe96-4db4-80f8-69bb917158b2",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea4f53bf-8538-4676-b2c6-fb06c64ee605",
                  "parent_uuid": "8245f683-53ff-4a8e-a651-c99b7d437af8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb8073a6-7442-416e-ba98-8c29cb8cdd41",
              "parent_uuid": "d2a92eb4-fe96-4db4-80f8-69bb917158b2",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bca104d-320c-4b43-a143-7282ffd76e3b",
                  "parent_uuid": "fb8073a6-7442-416e-ba98-8c29cb8cdd41",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "9b49f570-78b8-4536-adea-b5c2ecbc4cb7",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "36245074-abc1-4360-895c-666ca18de677",
              "parent_uuid": "9b49f570-78b8-4536-adea-b5c2ecbc4cb7",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder- Saugluftüberwachung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "705891eb-59bf-4562-9e15-595cbb26c079",
              "parent_uuid": "9b49f570-78b8-4536-adea-b5c2ecbc4cb7",
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
              "innerHtml": "\r\n                    <span>124</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d837ff3e-be05-40b1-bcdb-4409bc0113b8",
              "parent_uuid": "9b49f570-78b8-4536-adea-b5c2ecbc4cb7",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5fd450f-3a52-499c-879a-728dfb8a69bd",
                  "parent_uuid": "d837ff3e-be05-40b1-bcdb-4409bc0113b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8059029-2250-4f59-a249-555a61b87d62",
              "parent_uuid": "9b49f570-78b8-4536-adea-b5c2ecbc4cb7",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1bc4121-dd6b-4832-89b4-758f44e1bf3b",
                  "parent_uuid": "e8059029-2250-4f59-a249-555a61b87d62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4e97223-7377-4b62-ba01-ba9a1e37b3c8",
              "parent_uuid": "9b49f570-78b8-4536-adea-b5c2ecbc4cb7",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70f46786-5e01-402f-a275-77738253d536",
                  "parent_uuid": "b4e97223-7377-4b62-ba01-ba9a1e37b3c8",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "40a80f35-f46c-48bd-a9ed-c879a9f61f8c",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "175098aa-6c5c-467e-a8cf-ae411e47a7d2",
              "parent_uuid": "40a80f35-f46c-48bd-a9ed-c879a9f61f8c",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Sicherheitseinrichtung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "517747d0-d46d-4add-9096-b76e1ab5b6de",
              "parent_uuid": "40a80f35-f46c-48bd-a9ed-c879a9f61f8c",
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
              "innerHtml": "\r\n                    <span>91</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "bc895dd8-027f-4fc1-803d-6e48fd7c21a3",
              "parent_uuid": "40a80f35-f46c-48bd-a9ed-c879a9f61f8c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "854603f7-9b0b-445b-8202-53dddcdfda62",
                  "parent_uuid": "bc895dd8-027f-4fc1-803d-6e48fd7c21a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60b60637-38a4-4619-b5e2-4323ba69f676",
              "parent_uuid": "40a80f35-f46c-48bd-a9ed-c879a9f61f8c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da79aad7-8064-45d0-a9c6-341d550816db",
                  "parent_uuid": "60b60637-38a4-4619-b5e2-4323ba69f676",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a21f80e-5ac2-48d1-9701-7e08bec1bc7f",
              "parent_uuid": "40a80f35-f46c-48bd-a9ed-c879a9f61f8c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ff3c0ba-afad-4319-936b-38c7f2d28c15",
                  "parent_uuid": "6a21f80e-5ac2-48d1-9701-7e08bec1bc7f",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "c13b29a0-8173-4a1e-8711-165fc434e157",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b6f6cfc-c91f-4fa4-beff-eba5087deb5d",
              "parent_uuid": "c13b29a0-8173-4a1e-8711-165fc434e157",
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
                  "colspan",
                  "10"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "c0d9f7e9-7585-4e8f-9a53-231ccfb6b6dc",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bab6959-f839-4a85-84ba-27a053a34532",
              "parent_uuid": "c0d9f7e9-7585-4e8f-9a53-231ccfb6b6dc",
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
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "69da57f5-5f89-445e-b357-0c1e2897d542",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39287447-e9e2-44d1-b94b-c0bf15c91b4e",
              "parent_uuid": "69da57f5-5f89-445e-b357-0c1e2897d542",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "328587d3-afac-446f-ae08-ceb31fcfaa88",
                  "parent_uuid": "39287447-e9e2-44d1-b94b-c0bf15c91b4e",
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "241dd5b9-ac95-4522-97a1-bb8ece6b3f11",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b6bdf5b5-34bb-4038-80b9-eb23c73ebc32",
              "parent_uuid": "241dd5b9-ac95-4522-97a1-bb8ece6b3f11",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
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
                  "10"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "5f693a5a-457a-4def-ac35-67e0eb46942f",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "45a88c7c-57b3-4c61-9e4d-5ed7718b90f3",
              "parent_uuid": "5f693a5a-457a-4def-ac35-67e0eb46942f",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Benötigte Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "4044abb0-41d3-4993-a0a2-d0c0c4885330",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "867b73b0-13f9-4c11-9ea6-16390eece2d5",
              "parent_uuid": "4044abb0-41d3-4993-a0a2-d0c0c4885330",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7cb48978-476e-4ebd-b33c-061bf6fe4e1d",
              "parent_uuid": "4044abb0-41d3-4993-a0a2-d0c0c4885330",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikelnummer</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "092acd17-27d6-441d-94cb-19159ced1991",
              "parent_uuid": "4044abb0-41d3-4993-a0a2-d0c0c4885330",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Anzahl</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "ba65ada0-2e96-451e-847e-49ca9ad61c57",
              "parent_uuid": "4044abb0-41d3-4993-a0a2-d0c0c4885330",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Lagerort</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "67d38d92-a6b0-4e3c-930a-5c21eab1e4cd",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47561d29-b182-4f9a-a6fd-ce30e33657eb",
              "parent_uuid": "67d38d92-a6b0-4e3c-930a-5c21eab1e4cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 2842 (M276)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "90f4f4c0-934c-49f1-9119-15f863ff7b84",
              "parent_uuid": "67d38d92-a6b0-4e3c-930a-5c21eab1e4cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 720 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1b301915-39df-4043-99a5-4c7496486bd6",
              "parent_uuid": "67d38d92-a6b0-4e3c-930a-5c21eab1e4cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "adea057e-d7c3-44c6-a1e0-da1b10c7bee9",
              "parent_uuid": "67d38d92-a6b0-4e3c-930a-5c21eab1e4cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G04</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "c2399885-29ea-454b-a783-35315fcfe3ac",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66566e16-499c-41de-bcc6-767be5a1dca9",
              "parent_uuid": "c2399885-29ea-454b-a783-35315fcfe3ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 2510</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b20aa97c-0728-47b8-9b9c-d2a4832ba41c",
              "parent_uuid": "c2399885-29ea-454b-a783-35315fcfe3ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>146 605 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2c37058d-fe0a-446b-a736-d136dea8d22e",
              "parent_uuid": "c2399885-29ea-454b-a783-35315fcfe3ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a607cc85-2a92-4632-bd7d-cd3832ad5149",
              "parent_uuid": "c2399885-29ea-454b-a783-35315fcfe3ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 H01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "c4a0e07a-c7ad-4605-af98-ef0b1eceaeaf",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97df8f7b-565c-4734-9755-ca70ee27721e",
              "parent_uuid": "c4a0e07a-c7ad-4605-af98-ef0b1eceaeaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 2233 (M274)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ed9891c9-e04a-4b4a-bc63-675884777756",
              "parent_uuid": "c4a0e07a-c7ad-4605-af98-ef0b1eceaeaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 718 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "992ea9bf-f570-40f0-9529-c37594584e0b",
              "parent_uuid": "c4a0e07a-c7ad-4605-af98-ef0b1eceaeaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "3fdc139b-1e9f-4ad1-aae0-8c6a80106836",
              "parent_uuid": "c4a0e07a-c7ad-4605-af98-ef0b1eceaeaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "2c5348fd-98ee-4b57-a96f-b4e71af27e8a",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb104382-4038-4ead-9ef4-23e9d55cf67f",
              "parent_uuid": "2c5348fd-98ee-4b57-a96f-b4e71af27e8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 1707 (M275)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "db6bce00-88f4-4819-8da6-d7dd988c965c",
              "parent_uuid": "2c5348fd-98ee-4b57-a96f-b4e71af27e8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 719 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "816c85b5-c7d7-45b8-a912-06c9bf79576b",
              "parent_uuid": "2c5348fd-98ee-4b57-a96f-b4e71af27e8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "313d93e7-39fa-460e-9c9f-0ab45da8ff49",
              "parent_uuid": "2c5348fd-98ee-4b57-a96f-b4e71af27e8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "54964961-4189-46b6-8b69-3859a9deb67d",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e56df8a6-56f4-40f5-8322-58c4500a7264",
              "parent_uuid": "54964961-4189-46b6-8b69-3859a9deb67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M279)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "94351774-0e5d-4e80-9561-2a0604ccc182",
              "parent_uuid": "54964961-4189-46b6-8b69-3859a9deb67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>156 537 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7167549a-afe6-4e70-b859-dbc2360be1a4",
              "parent_uuid": "54964961-4189-46b6-8b69-3859a9deb67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "41152c2f-86c2-490c-99a5-9118dd371379",
              "parent_uuid": "54964961-4189-46b6-8b69-3859a9deb67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "2451a128-bb3d-4afe-8017-dd794938a7b0",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a502c9e7-fac1-4b40-90b0-64b786f26122",
              "parent_uuid": "2451a128-bb3d-4afe-8017-dd794938a7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 236 (M269)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6cc22338-e549-4f0b-ab9b-eeb5b131bcb8",
              "parent_uuid": "2451a128-bb3d-4afe-8017-dd794938a7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    s<span>174 264 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "cf1a72d3-ecde-4fbe-a87f-6b637151c60a",
              "parent_uuid": "2451a128-bb3d-4afe-8017-dd794938a7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9c32fa02-9b20-4360-866b-37fd0fffe507",
              "parent_uuid": "2451a128-bb3d-4afe-8017-dd794938a7b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F03</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "ba1d46f9-770d-4d85-91a1-2bb9f177e2d1",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8070363-ddd7-4ab5-b6a1-a9f39f2928e2",
              "parent_uuid": "ba1d46f9-770d-4d85-91a1-2bb9f177e2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Klemmrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0e9b9715-cf0a-4aae-b203-7b771ae92515",
              "parent_uuid": "ba1d46f9-770d-4d85-91a1-2bb9f177e2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>272 900 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "40ec9e74-8411-478a-b94a-7dc590b5331e",
              "parent_uuid": "ba1d46f9-770d-4d85-91a1-2bb9f177e2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "81c2c688-aada-4a20-8751-c930ba981c05",
              "parent_uuid": "ba1d46f9-770d-4d85-91a1-2bb9f177e2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E06</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "2f387e6f-cbdc-4e65-9462-f9ae95b792d8",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b0e5c2bc-8783-48d3-8ead-f27d11d2a255",
              "parent_uuid": "2f387e6f-cbdc-4e65-9462-f9ae95b792d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kugellager 6001-2RSH</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f6a17101-c3ff-432e-8d0d-a4b624ee9246",
              "parent_uuid": "2f387e6f-cbdc-4e65-9462-f9ae95b792d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>188 512 000</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9a0ce1b3-2018-4098-9d14-d23c8051d35a",
              "parent_uuid": "2f387e6f-cbdc-4e65-9462-f9ae95b792d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "526ff67e-e78c-4902-bdf0-f7ca6a39cc7e",
              "parent_uuid": "2f387e6f-cbdc-4e65-9462-f9ae95b792d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E12</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "c1a6a96e-73a7-4ecf-bbb5-9cc4ceaaff97",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10d82607-e239-4920-9fef-b2b7983d5548",
              "parent_uuid": "c1a6a96e-73a7-4ecf-bbb5-9cc4ceaaff97",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "10"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "0df3c755-793f-4b1c-8a2a-d6221d305810",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "36485047-ccdb-464c-80a2-375c8e283e86",
              "parent_uuid": "0df3c755-793f-4b1c-8a2a-d6221d305810",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "a633647c-3985-4959-be3e-985c2b93d9d9",
          "parent_uuid": "42c96fc4-f5d2-4f55-b529-113a67a690c8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2df67224-6f1f-415d-8804-bc26b603f80c",
              "parent_uuid": "a633647c-3985-4959-be3e-985c2b93d9d9",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "9fbf11d6-8ce7-4d78-bcad-6b453414154d",
                  "parent_uuid": "2df67224-6f1f-415d-8804-bc26b603f80c",
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
          "sort": 56,
          "lvl": 0
        }
      ],
      "sort": 6,
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
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
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
		,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

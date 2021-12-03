
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
  "uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "6d84915a-b46c-4f63-8843-d74552fd5b01",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "1d35a1b2-160b-4987-b16d-64cfa892145f",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "aa764a3c-0261-478f-9981-880b61a7dbf2",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "648dad39-092d-4dd7-9553-3ac21189cf15",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "a2236a1d-86e3-4b82-82b9-4700aa7aa7c9",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "aee0394c-71b8-432e-92e0-3a23a94243e1",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "752ec1e5-58f2-47a5-8691-bf4bccb2b952",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
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
      "uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
      "parent_uuid": "8e337f42-4e60-42ea-aeb3-f3ec4a8d5ac2",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "8dcc0051-562e-4720-8f9f-d12e5384257d",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "8eeae649-38d1-4f0a-a111-bbf4e8798ca1",
              "parent_uuid": "8dcc0051-562e-4720-8f9f-d12e5384257d",
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
              "uuid": "4d0b2903-fca3-4c83-9384-d38a614deb09",
              "parent_uuid": "8dcc0051-562e-4720-8f9f-d12e5384257d",
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
              "uuid": "644a46b7-3981-477d-9114-16725fdb9f10",
              "parent_uuid": "8dcc0051-562e-4720-8f9f-d12e5384257d",
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
              "uuid": "9f77d26b-0e47-43ca-8824-64fe4c29a649",
              "parent_uuid": "8dcc0051-562e-4720-8f9f-d12e5384257d",
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
          "uuid": "1779c82d-a0d1-412a-ac91-c1a7f5fb3e2f",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "118f81c0-eab8-48cc-80a8-37341784d7a6",
              "parent_uuid": "1779c82d-a0d1-412a-ac91-c1a7f5fb3e2f",
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
              "uuid": "8e29b4bc-66eb-42ce-9c67-ad4c1770e784",
              "parent_uuid": "1779c82d-a0d1-412a-ac91-c1a7f5fb3e2f",
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
              "uuid": "05643a35-4369-48a2-9b52-71d81295bc5c",
              "parent_uuid": "1779c82d-a0d1-412a-ac91-c1a7f5fb3e2f",
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
              "uuid": "1065ab34-21b9-495c-8c95-110d5a7f34cd",
              "parent_uuid": "1779c82d-a0d1-412a-ac91-c1a7f5fb3e2f",
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
          "uuid": "911e7a97-9777-4c2f-a437-35828523e388",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a884bbe-3273-49df-b7ae-a3bc45faa5f7",
              "parent_uuid": "911e7a97-9777-4c2f-a437-35828523e388",
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
              "uuid": "e333c546-e0aa-4e9b-803b-f62f0595ef41",
              "parent_uuid": "911e7a97-9777-4c2f-a437-35828523e388",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5d6bc6d3-e5c2-4be7-9742-8faf6fe68f07",
              "parent_uuid": "911e7a97-9777-4c2f-a437-35828523e388",
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
              "uuid": "35b56edd-3582-4497-aa0e-f44cb904af76",
              "parent_uuid": "911e7a97-9777-4c2f-a437-35828523e388",
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
              "uuid": "be7d7a2d-a146-4908-a445-8ff463642c46",
              "parent_uuid": "911e7a97-9777-4c2f-a437-35828523e388",
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
              "uuid": "3eb74205-2c46-45bb-a468-a32af40b6f21",
              "parent_uuid": "911e7a97-9777-4c2f-a437-35828523e388",
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
          "uuid": "d0cdcab6-3ec6-4723-9322-3f0756f2784e",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f6b58753-e772-4b70-8482-2210273d5583",
              "parent_uuid": "d0cdcab6-3ec6-4723-9322-3f0756f2784e",
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
          "uuid": "da087dd7-2f00-484d-beb6-f34efddf4f78",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd034523-f67f-4569-9575-3afaea777f47",
              "parent_uuid": "da087dd7-2f00-484d-beb6-f34efddf4f78",
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
              "uuid": "3340490b-9936-49b6-8fe3-f2066a049840",
              "parent_uuid": "da087dd7-2f00-484d-beb6-f34efddf4f78",
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
              "uuid": "f7188fab-0121-4598-a5ea-c60b1c635be1",
              "parent_uuid": "da087dd7-2f00-484d-beb6-f34efddf4f78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbd668ee-1955-432c-8b5b-9ce378cfd1b1",
                  "parent_uuid": "f7188fab-0121-4598-a5ea-c60b1c635be1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea6c11e5-7eef-4ccb-b082-6ba6c808ce30",
              "parent_uuid": "da087dd7-2f00-484d-beb6-f34efddf4f78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4db54a44-bfdb-4460-9b6e-1033637a340a",
                  "parent_uuid": "ea6c11e5-7eef-4ccb-b082-6ba6c808ce30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69d06339-4281-4032-aba1-6df42e89b18f",
              "parent_uuid": "da087dd7-2f00-484d-beb6-f34efddf4f78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a5e9fb5-013e-4245-885d-18d0efbe6410",
                  "parent_uuid": "69d06339-4281-4032-aba1-6df42e89b18f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bb92e44-dbac-4864-ac7e-4adf6c5c95d2",
              "parent_uuid": "da087dd7-2f00-484d-beb6-f34efddf4f78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dcd17c9-ebd5-4263-93c7-4e301931bac3",
                  "parent_uuid": "4bb92e44-dbac-4864-ac7e-4adf6c5c95d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "17a15d85-06c4-41f6-a2ef-54c1358c5e06",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4eccad0d-2cc6-406c-8374-a27f78a2cb61",
              "parent_uuid": "17a15d85-06c4-41f6-a2ef-54c1358c5e06",
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
              "uuid": "ec8d350d-a706-40c9-a6d6-6d4c624d691f",
              "parent_uuid": "17a15d85-06c4-41f6-a2ef-54c1358c5e06",
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
              "uuid": "1846ba2b-027d-4f45-b6d1-906bd0e9915f",
              "parent_uuid": "17a15d85-06c4-41f6-a2ef-54c1358c5e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0eefd351-8311-483a-ab16-6a1fd6ce3a23",
                  "parent_uuid": "1846ba2b-027d-4f45-b6d1-906bd0e9915f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fba9df45-742e-432a-aba4-ef32e8ca7bc0",
              "parent_uuid": "17a15d85-06c4-41f6-a2ef-54c1358c5e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b32bb3e-670b-4c54-ba57-98d9a64f8561",
                  "parent_uuid": "fba9df45-742e-432a-aba4-ef32e8ca7bc0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04cd9b22-e40b-49cf-ac68-89f582f7485e",
              "parent_uuid": "17a15d85-06c4-41f6-a2ef-54c1358c5e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "deb247d4-dce4-4e7d-a0f2-9435fe147329",
                  "parent_uuid": "04cd9b22-e40b-49cf-ac68-89f582f7485e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f99c2912-0ddb-4b6c-9b80-5c0f8a8b28f5",
              "parent_uuid": "17a15d85-06c4-41f6-a2ef-54c1358c5e06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c20abf89-0216-41ec-b61d-0b4174148da6",
                  "parent_uuid": "f99c2912-0ddb-4b6c-9b80-5c0f8a8b28f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0e7f558a-3a3d-4e67-adb4-8c1d51f03931",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7521f965-2aac-46d7-aa37-ef3c40bb190e",
              "parent_uuid": "0e7f558a-3a3d-4e67-adb4-8c1d51f03931",
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
              "uuid": "8f52ea21-7def-4160-be0f-96491614fac3",
              "parent_uuid": "0e7f558a-3a3d-4e67-adb4-8c1d51f03931",
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
              "uuid": "cfa93ad7-a3d4-4c03-b738-ad2a6c5ba1d8",
              "parent_uuid": "0e7f558a-3a3d-4e67-adb4-8c1d51f03931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5303fcfd-b105-465d-b250-bcc9d6f12448",
                  "parent_uuid": "cfa93ad7-a3d4-4c03-b738-ad2a6c5ba1d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26e6af5d-3dd1-4747-91db-b57ea0a7ce66",
              "parent_uuid": "0e7f558a-3a3d-4e67-adb4-8c1d51f03931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6621b1aa-59cd-4e8f-8aaa-5b88d16c3656",
                  "parent_uuid": "26e6af5d-3dd1-4747-91db-b57ea0a7ce66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d353e09d-2ad3-4a5d-9a91-e3068d5b5dd6",
              "parent_uuid": "0e7f558a-3a3d-4e67-adb4-8c1d51f03931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "125ac18d-f50c-4630-95d4-ec8939c2c5a6",
                  "parent_uuid": "d353e09d-2ad3-4a5d-9a91-e3068d5b5dd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8bff910c-5279-48fe-8f32-7e18333b72b6",
              "parent_uuid": "0e7f558a-3a3d-4e67-adb4-8c1d51f03931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78a59320-5c19-43f9-86dc-ebee228cf866",
                  "parent_uuid": "8bff910c-5279-48fe-8f32-7e18333b72b6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b93da965-646f-4ee3-84b1-676e7dc32838",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08c9aa9a-68a0-4e19-835a-cb147d0500f8",
              "parent_uuid": "b93da965-646f-4ee3-84b1-676e7dc32838",
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
              "uuid": "540ec63f-3579-4d81-9bc1-0d8aabaa0af0",
              "parent_uuid": "b93da965-646f-4ee3-84b1-676e7dc32838",
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
              "uuid": "f1913794-1d01-49fe-a6ea-cbd8bc76a672",
              "parent_uuid": "b93da965-646f-4ee3-84b1-676e7dc32838",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd183e5d-99fa-42a3-bada-dfab74f03fb5",
                  "parent_uuid": "f1913794-1d01-49fe-a6ea-cbd8bc76a672",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "438cd13d-e23a-4c74-9338-501b10011824",
              "parent_uuid": "b93da965-646f-4ee3-84b1-676e7dc32838",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3960e83e-05d2-4b04-8e17-cf5102d51a19",
                  "parent_uuid": "438cd13d-e23a-4c74-9338-501b10011824",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f2168ec-8aee-4e77-bce3-ac02f38d9e9e",
              "parent_uuid": "b93da965-646f-4ee3-84b1-676e7dc32838",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88ff3bd1-85e7-4b9d-95d2-a600896d3f60",
                  "parent_uuid": "1f2168ec-8aee-4e77-bce3-ac02f38d9e9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fce0b31-0a19-4df4-9c36-e6f67660d0bf",
              "parent_uuid": "b93da965-646f-4ee3-84b1-676e7dc32838",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1769329-8f95-4043-8bdf-9f3bb809d19e",
                  "parent_uuid": "0fce0b31-0a19-4df4-9c36-e6f67660d0bf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ed26b212-1d40-4e19-9f1e-64bb8883bd2f",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "055ba091-faba-4ac3-8863-89b376d9351b",
              "parent_uuid": "ed26b212-1d40-4e19-9f1e-64bb8883bd2f",
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
          "uuid": "ece76fa9-6bdf-4818-9151-ef6b2675fb9e",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85387a4e-83a2-4dfd-b69b-5929b55b7b1b",
              "parent_uuid": "ece76fa9-6bdf-4818-9151-ef6b2675fb9e",
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
              "uuid": "917ed5eb-2f0f-4a3d-9da9-cbe4c5a9848c",
              "parent_uuid": "ece76fa9-6bdf-4818-9151-ef6b2675fb9e",
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
              "uuid": "02057ecf-7c3d-4edd-8e3c-78ada7a54181",
              "parent_uuid": "ece76fa9-6bdf-4818-9151-ef6b2675fb9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9da23f09-84bf-4948-9e77-ce2f34cd4344",
                  "parent_uuid": "02057ecf-7c3d-4edd-8e3c-78ada7a54181",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31460818-3c90-4729-b0b6-3bd80a4375ec",
              "parent_uuid": "ece76fa9-6bdf-4818-9151-ef6b2675fb9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18834385-81b6-4db7-96ae-bcb687178120",
                  "parent_uuid": "31460818-3c90-4729-b0b6-3bd80a4375ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0272686-a8e9-491f-9e0a-f73fba20b36f",
              "parent_uuid": "ece76fa9-6bdf-4818-9151-ef6b2675fb9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51db3134-46b2-4960-844a-8bc881904107",
                  "parent_uuid": "b0272686-a8e9-491f-9e0a-f73fba20b36f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2713bc01-fad9-4dc2-8490-2acde924a064",
              "parent_uuid": "ece76fa9-6bdf-4818-9151-ef6b2675fb9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9e84a03-4e3b-404f-b593-3b5722934b94",
                  "parent_uuid": "2713bc01-fad9-4dc2-8490-2acde924a064",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c18bff50-fcc6-4919-a256-6d13d97928b6",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b178650-c602-4926-b52f-6b08459030e2",
              "parent_uuid": "c18bff50-fcc6-4919-a256-6d13d97928b6",
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
              "uuid": "df47347f-3073-455b-b0d4-2d9e9c276db9",
              "parent_uuid": "c18bff50-fcc6-4919-a256-6d13d97928b6",
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
              "uuid": "f47d0d6b-17fd-4c66-a0e7-5ce83c2a15c9",
              "parent_uuid": "c18bff50-fcc6-4919-a256-6d13d97928b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef3a48b5-961a-4497-8cf3-e4eb35d901a5",
                  "parent_uuid": "f47d0d6b-17fd-4c66-a0e7-5ce83c2a15c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63dba480-4a3b-4fcc-8113-062444ddff48",
              "parent_uuid": "c18bff50-fcc6-4919-a256-6d13d97928b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9acdbca5-1a82-4bdc-abfb-b298aa472000",
                  "parent_uuid": "63dba480-4a3b-4fcc-8113-062444ddff48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee0dc34b-eeea-419d-9b73-47f0516f520b",
              "parent_uuid": "c18bff50-fcc6-4919-a256-6d13d97928b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1a1859a-834f-4376-911e-3c8e80b232bf",
                  "parent_uuid": "ee0dc34b-eeea-419d-9b73-47f0516f520b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8caecc84-73fb-4745-bad1-863c48d61c74",
              "parent_uuid": "c18bff50-fcc6-4919-a256-6d13d97928b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8344d3a-f8de-48c2-94af-a9748b3810ec",
                  "parent_uuid": "8caecc84-73fb-4745-bad1-863c48d61c74",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cfc119cc-9f70-41af-b08f-8266a702ddb9",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4de1ae3-dcd5-4d3b-a5df-8c6e5d8d8eae",
              "parent_uuid": "cfc119cc-9f70-41af-b08f-8266a702ddb9",
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
              "uuid": "b894a620-a652-4090-aa79-6945097099d5",
              "parent_uuid": "cfc119cc-9f70-41af-b08f-8266a702ddb9",
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
              "uuid": "f893b5be-2b61-464a-9062-dd50bf029bd5",
              "parent_uuid": "cfc119cc-9f70-41af-b08f-8266a702ddb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fadb408c-1917-4ee3-bc1f-6a68f8c08c73",
                  "parent_uuid": "f893b5be-2b61-464a-9062-dd50bf029bd5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72997708-389f-4112-ad4f-ff8ec2058e96",
              "parent_uuid": "cfc119cc-9f70-41af-b08f-8266a702ddb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b6d56f4-919d-4a3b-a375-4ce692c885a8",
                  "parent_uuid": "72997708-389f-4112-ad4f-ff8ec2058e96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cf552c1-d716-4e54-b5af-fa5cc86e8aa7",
              "parent_uuid": "cfc119cc-9f70-41af-b08f-8266a702ddb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e69f06ad-994d-4da5-a7f9-a298a3578761",
                  "parent_uuid": "3cf552c1-d716-4e54-b5af-fa5cc86e8aa7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbe9ed24-8113-447c-b5a2-c52c3fb327ad",
              "parent_uuid": "cfc119cc-9f70-41af-b08f-8266a702ddb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2765ec5c-b7ec-40c4-ac6a-0c3a96ba7be8",
                  "parent_uuid": "fbe9ed24-8113-447c-b5a2-c52c3fb327ad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73c28572-aaef-4ded-9e03-e87b2b8dc448",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f33945d-5252-4e6b-8e75-8c5259b207be",
              "parent_uuid": "73c28572-aaef-4ded-9e03-e87b2b8dc448",
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
              "uuid": "1ee1b97e-36c5-4840-9caf-fe20df9dc8c9",
              "parent_uuid": "73c28572-aaef-4ded-9e03-e87b2b8dc448",
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
              "uuid": "b80cf28c-adc0-4c82-9a93-3c0ad525ee4d",
              "parent_uuid": "73c28572-aaef-4ded-9e03-e87b2b8dc448",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f101ac0-9f6a-4f90-9e98-5769c1fef1a0",
                  "parent_uuid": "b80cf28c-adc0-4c82-9a93-3c0ad525ee4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c230ba9-2264-4df3-87be-7d79bb61f997",
              "parent_uuid": "73c28572-aaef-4ded-9e03-e87b2b8dc448",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9fd65b7-8bea-4c21-a49f-5696a73a6abb",
                  "parent_uuid": "0c230ba9-2264-4df3-87be-7d79bb61f997",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbdc94c0-3859-4b6e-b20c-eee789a652f3",
              "parent_uuid": "73c28572-aaef-4ded-9e03-e87b2b8dc448",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49cc5df3-ee07-4a86-8bbb-1e9359883398",
                  "parent_uuid": "fbdc94c0-3859-4b6e-b20c-eee789a652f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "748cbe74-d5b7-44fd-ae9e-556de905d56d",
              "parent_uuid": "73c28572-aaef-4ded-9e03-e87b2b8dc448",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7e24e5f-717a-4bec-be12-245908763c21",
                  "parent_uuid": "748cbe74-d5b7-44fd-ae9e-556de905d56d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ef6d4618-f0c6-48f5-82f4-667ae7134ee9",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "45984742-039a-4be1-8bda-f5b47f0d1b16",
              "parent_uuid": "ef6d4618-f0c6-48f5-82f4-667ae7134ee9",
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
              "uuid": "6a852a8c-ae41-4d5e-99e4-51655cceb794",
              "parent_uuid": "ef6d4618-f0c6-48f5-82f4-667ae7134ee9",
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
              "uuid": "cf644a74-4028-4b99-bd73-1ba8c09a9633",
              "parent_uuid": "ef6d4618-f0c6-48f5-82f4-667ae7134ee9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55b041e2-f63d-4984-8041-38eafd6718a7",
                  "parent_uuid": "cf644a74-4028-4b99-bd73-1ba8c09a9633",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5f5aba1-96b6-41d2-890b-629efd2754c9",
              "parent_uuid": "ef6d4618-f0c6-48f5-82f4-667ae7134ee9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f5e121e-8812-48bc-bc20-8b30127db65a",
                  "parent_uuid": "b5f5aba1-96b6-41d2-890b-629efd2754c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97c3569a-5f75-4c9f-b56d-6fbd7ef84002",
              "parent_uuid": "ef6d4618-f0c6-48f5-82f4-667ae7134ee9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f74d565f-1b43-47d0-bc3a-94f4b47d0218",
                  "parent_uuid": "97c3569a-5f75-4c9f-b56d-6fbd7ef84002",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "004b18d4-f932-4def-bb9b-7c72b105ee26",
              "parent_uuid": "ef6d4618-f0c6-48f5-82f4-667ae7134ee9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccb1d954-1c18-4c61-b485-617fdc049147",
                  "parent_uuid": "004b18d4-f932-4def-bb9b-7c72b105ee26",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8d418367-2bb3-4da8-bbb9-3efdc07d9a6a",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41201cfa-434d-4962-84cc-f7f9be8fcbb3",
              "parent_uuid": "8d418367-2bb3-4da8-bbb9-3efdc07d9a6a",
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
              "uuid": "630f6df5-6e5a-4fb1-951a-926ab949b625",
              "parent_uuid": "8d418367-2bb3-4da8-bbb9-3efdc07d9a6a",
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
              "uuid": "57d470ad-50a9-4a57-bbba-8be67de4f5b7",
              "parent_uuid": "8d418367-2bb3-4da8-bbb9-3efdc07d9a6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46056bfa-a7a9-4be4-b9b2-e05facc3d0ec",
                  "parent_uuid": "57d470ad-50a9-4a57-bbba-8be67de4f5b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "878caed1-4809-4a74-b152-1f0ba593f2ef",
              "parent_uuid": "8d418367-2bb3-4da8-bbb9-3efdc07d9a6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9e6fb99-f226-4c2d-892d-13e98b3ea7e8",
                  "parent_uuid": "878caed1-4809-4a74-b152-1f0ba593f2ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68f7891a-0da7-49d1-b524-56939399de95",
              "parent_uuid": "8d418367-2bb3-4da8-bbb9-3efdc07d9a6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0fcbce2-f70c-40cd-add2-82590402e90b",
                  "parent_uuid": "68f7891a-0da7-49d1-b524-56939399de95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02cce0e6-77c9-4462-bead-731aec1af30d",
              "parent_uuid": "8d418367-2bb3-4da8-bbb9-3efdc07d9a6a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae34f0f6-58bc-4498-ac5f-455b4cd16186",
                  "parent_uuid": "02cce0e6-77c9-4462-bead-731aec1af30d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a5ef048-8a3b-4a8b-88e7-5a31b19997a3",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02cebfed-f287-4bf5-8786-fc1445734f0b",
              "parent_uuid": "2a5ef048-8a3b-4a8b-88e7-5a31b19997a3",
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
              "uuid": "5dd99e18-c178-46cf-ab51-50d460bbd8b0",
              "parent_uuid": "2a5ef048-8a3b-4a8b-88e7-5a31b19997a3",
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
              "uuid": "d18847b3-8cd7-4297-a200-9d8f67a1ec31",
              "parent_uuid": "2a5ef048-8a3b-4a8b-88e7-5a31b19997a3",
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
                  "uuid": "9f8924a6-942c-4476-8cb1-f5a6bbb45e62",
                  "parent_uuid": "d18847b3-8cd7-4297-a200-9d8f67a1ec31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6088161-cc6c-468e-bab1-57de87548d4c",
              "parent_uuid": "2a5ef048-8a3b-4a8b-88e7-5a31b19997a3",
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
                  "uuid": "6db85bd5-2a57-425e-a0f0-2669941fce03",
                  "parent_uuid": "f6088161-cc6c-468e-bab1-57de87548d4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c861b085-9c64-4dad-8d55-652506ae021c",
              "parent_uuid": "2a5ef048-8a3b-4a8b-88e7-5a31b19997a3",
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
                  "uuid": "5ea86980-4a0b-4f81-9f45-e06740f90d95",
                  "parent_uuid": "c861b085-9c64-4dad-8d55-652506ae021c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89cc977d-78bc-4c7b-a9b1-d81f332344f3",
              "parent_uuid": "2a5ef048-8a3b-4a8b-88e7-5a31b19997a3",
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
                  "uuid": "c01578b4-4f01-4824-b9ac-202c31b2c6bb",
                  "parent_uuid": "89cc977d-78bc-4c7b-a9b1-d81f332344f3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b224d2d4-b773-4cff-92c4-4734f6d1c2e1",
              "parent_uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
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
              "uuid": "65609d45-2780-45e6-b413-c2a79509cee5",
              "parent_uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
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
              "uuid": "2d132b62-0a63-408f-80ae-a0aa3e81c0e0",
              "parent_uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
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
              "uuid": "c666ac9e-4d89-4b9c-931c-09016cd83ba5",
              "parent_uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
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
                  "uuid": "a59ca953-addc-48a7-a1f5-9b149781339f",
                  "parent_uuid": "c666ac9e-4d89-4b9c-931c-09016cd83ba5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de2a98c6-2c77-4dad-adb7-701b9b8bc118",
              "parent_uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
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
                  "uuid": "bc834c1c-979f-48cd-b10c-b8ecbe4c8dcd",
                  "parent_uuid": "de2a98c6-2c77-4dad-adb7-701b9b8bc118",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61b734f5-98d6-4d95-8ade-ccb0f7fa7605",
              "parent_uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
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
                  "uuid": "e08f2c9d-a922-4435-9a62-ecb3f4046026",
                  "parent_uuid": "61b734f5-98d6-4d95-8ade-ccb0f7fa7605",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4e77893-7a53-4f0d-adc3-32e899c477dd",
              "parent_uuid": "90374d7f-2549-4456-9d00-98b19bd4cacb",
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
                  "uuid": "5db54606-4bd7-41dc-8c36-f464ce31f36a",
                  "parent_uuid": "a4e77893-7a53-4f0d-adc3-32e899c477dd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "683d4c9d-e127-42db-9ace-2be6637f0999",
              "parent_uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
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
              "uuid": "8d33f305-9093-42a3-b673-014464b1ad68",
              "parent_uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
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
              "uuid": "5c037c8a-42a6-480d-812e-2173188a8846",
              "parent_uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
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
                  "uuid": "a32f3aed-34be-4469-9c31-47d60ea4b002",
                  "parent_uuid": "5c037c8a-42a6-480d-812e-2173188a8846",
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
              "uuid": "c302eb47-0f04-405f-b05e-c11ae621ddb4",
              "parent_uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
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
                  "uuid": "972fff67-7b9c-44a9-8ec2-37b76404367f",
                  "parent_uuid": "c302eb47-0f04-405f-b05e-c11ae621ddb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4eb0f88b-4ba8-4145-a859-4f873629b635",
              "parent_uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
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
                  "uuid": "ca0538cf-b046-411f-95ad-2e6ec9b8178d",
                  "parent_uuid": "4eb0f88b-4ba8-4145-a859-4f873629b635",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63eacc9a-cff3-4894-a734-83c1638f8833",
              "parent_uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
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
                  "uuid": "cb659245-6d3a-4c55-a82f-bf8a1aea42da",
                  "parent_uuid": "63eacc9a-cff3-4894-a734-83c1638f8833",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06dc3445-aaf1-4754-bba6-30b61b8466da",
              "parent_uuid": "c7c86c77-9457-4573-ba23-2a0b7c5afd83",
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
                  "uuid": "863b3d4b-eab8-425a-aad0-4dd1dca83465",
                  "parent_uuid": "06dc3445-aaf1-4754-bba6-30b61b8466da",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09f2c320-d07b-479b-9f35-22d2824d8eb5",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e538171c-64e2-4836-94cd-70ead72db689",
              "parent_uuid": "09f2c320-d07b-479b-9f35-22d2824d8eb5",
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
              "uuid": "bcbdab52-1143-4a14-9d35-34f6c3e996f9",
              "parent_uuid": "09f2c320-d07b-479b-9f35-22d2824d8eb5",
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
              "uuid": "f306a986-e247-4eb1-a9fd-a7bfae56d4f4",
              "parent_uuid": "09f2c320-d07b-479b-9f35-22d2824d8eb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f3b7ce2-afeb-4d4e-8466-8180ebebc179",
                  "parent_uuid": "f306a986-e247-4eb1-a9fd-a7bfae56d4f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49181a13-2515-4946-b762-d68ca5fce4a4",
              "parent_uuid": "09f2c320-d07b-479b-9f35-22d2824d8eb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08b9df1e-e21d-4433-bdc6-3e48c03891c1",
                  "parent_uuid": "49181a13-2515-4946-b762-d68ca5fce4a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82d062ef-877a-493c-a594-1bbe39eecf2f",
              "parent_uuid": "09f2c320-d07b-479b-9f35-22d2824d8eb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f729bfc1-bec4-4d41-80aa-e0a7b2381151",
                  "parent_uuid": "82d062ef-877a-493c-a594-1bbe39eecf2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49aba722-4217-40a4-9b00-83c07a0747fb",
              "parent_uuid": "09f2c320-d07b-479b-9f35-22d2824d8eb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f4b9f94-72af-4cf8-aefa-50c05a8820cf",
                  "parent_uuid": "49aba722-4217-40a4-9b00-83c07a0747fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "be1ef4aa-6f58-465c-a834-2581c6ddd544",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd81a21e-df08-430e-8c4e-146698942200",
              "parent_uuid": "be1ef4aa-6f58-465c-a834-2581c6ddd544",
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
              "uuid": "bc9def2e-d93c-4694-bc9a-fb0e012b5fd4",
              "parent_uuid": "be1ef4aa-6f58-465c-a834-2581c6ddd544",
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
              "uuid": "65d909d5-65ed-4769-abb0-65836e2abbad",
              "parent_uuid": "be1ef4aa-6f58-465c-a834-2581c6ddd544",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75730dc2-2588-4e26-bfed-737c9d66a6cd",
                  "parent_uuid": "65d909d5-65ed-4769-abb0-65836e2abbad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b260be55-15cc-4cb9-9102-c6655e8c33ed",
              "parent_uuid": "be1ef4aa-6f58-465c-a834-2581c6ddd544",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "200b37d4-a6be-4f9d-9224-8fc8a03744e7",
                  "parent_uuid": "b260be55-15cc-4cb9-9102-c6655e8c33ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f33c0829-2d11-4326-adfb-d7599af78b08",
              "parent_uuid": "be1ef4aa-6f58-465c-a834-2581c6ddd544",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1d5bc5c-1b4f-4294-af75-0c7b8b3eb3f0",
                  "parent_uuid": "f33c0829-2d11-4326-adfb-d7599af78b08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e765ac05-fd95-4ab3-b355-e3e8d39620eb",
              "parent_uuid": "be1ef4aa-6f58-465c-a834-2581c6ddd544",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dea58044-e271-41db-b226-fb68d71e6a5c",
                  "parent_uuid": "e765ac05-fd95-4ab3-b355-e3e8d39620eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ffaa958-107e-46b8-84b3-6624066c6118",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84d58ca0-c241-4ac3-b276-22c573ac79fe",
              "parent_uuid": "4ffaa958-107e-46b8-84b3-6624066c6118",
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
              "uuid": "0859616d-c3b4-4098-b7a5-a35af6222923",
              "parent_uuid": "4ffaa958-107e-46b8-84b3-6624066c6118",
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
              "uuid": "7a484a33-080b-4e70-a4a4-2da0e4a47c5c",
              "parent_uuid": "4ffaa958-107e-46b8-84b3-6624066c6118",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ee36315-a985-4eec-a127-5183c1e513d0",
                  "parent_uuid": "7a484a33-080b-4e70-a4a4-2da0e4a47c5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79ca053a-53c7-4989-8cc0-a193411a10df",
              "parent_uuid": "4ffaa958-107e-46b8-84b3-6624066c6118",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "571fd060-2fd9-408d-8586-1045bdee23ce",
                  "parent_uuid": "79ca053a-53c7-4989-8cc0-a193411a10df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30fafc4e-6441-458d-81ee-30bacce7b7a3",
              "parent_uuid": "4ffaa958-107e-46b8-84b3-6624066c6118",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e03bae1-2d90-46cd-bf88-525c02f0f9c0",
                  "parent_uuid": "30fafc4e-6441-458d-81ee-30bacce7b7a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f24755a-c633-42e2-a285-66fb57b72ebe",
              "parent_uuid": "4ffaa958-107e-46b8-84b3-6624066c6118",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1311aaa4-f03d-441a-b8f1-59d1efcf7c40",
                  "parent_uuid": "7f24755a-c633-42e2-a285-66fb57b72ebe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "095b2a90-e7d4-4714-a263-024986e757a4",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfdd2c91-6d03-4433-be0e-f54fe70f0766",
              "parent_uuid": "095b2a90-e7d4-4714-a263-024986e757a4",
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
              "uuid": "4f959d63-36a1-486c-a53d-034cc378c901",
              "parent_uuid": "095b2a90-e7d4-4714-a263-024986e757a4",
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
              "uuid": "12f9630c-ef45-47e7-9fc5-58689f09b77a",
              "parent_uuid": "095b2a90-e7d4-4714-a263-024986e757a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45df4a77-2853-4cd7-be1b-d972ba09de09",
                  "parent_uuid": "12f9630c-ef45-47e7-9fc5-58689f09b77a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e95a2d1-7651-488a-a58e-acf05234fbb4",
              "parent_uuid": "095b2a90-e7d4-4714-a263-024986e757a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcd33a91-1201-4144-8b85-af485fc9e097",
                  "parent_uuid": "1e95a2d1-7651-488a-a58e-acf05234fbb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e078550c-921d-4d89-a75a-18ecf3958b6f",
              "parent_uuid": "095b2a90-e7d4-4714-a263-024986e757a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c174de50-ce6f-4d14-b6b7-6d3dbb35086e",
                  "parent_uuid": "e078550c-921d-4d89-a75a-18ecf3958b6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58ebcc35-72e7-4f27-b057-a19d45dfef19",
              "parent_uuid": "095b2a90-e7d4-4714-a263-024986e757a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db43b61d-659e-4a9a-9fa8-4255e2ad74b1",
                  "parent_uuid": "58ebcc35-72e7-4f27-b057-a19d45dfef19",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cba177fe-6b69-4973-9108-9818440f317c",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "629b67c5-f05c-48a8-a570-f8b6127494d9",
              "parent_uuid": "cba177fe-6b69-4973-9108-9818440f317c",
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
          "uuid": "f530685d-80bd-4c50-94ad-b193bb6e119a",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af81b2e9-fddc-4954-8b77-0c8925e7458f",
              "parent_uuid": "f530685d-80bd-4c50-94ad-b193bb6e119a",
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
              "uuid": "48347715-8db1-4b2b-8d81-0db33e0105b9",
              "parent_uuid": "f530685d-80bd-4c50-94ad-b193bb6e119a",
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
              "uuid": "8249df66-2713-4063-9cf9-799acec04f04",
              "parent_uuid": "f530685d-80bd-4c50-94ad-b193bb6e119a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9c95795-986d-4e5e-9ab5-f14072943dd6",
                  "parent_uuid": "8249df66-2713-4063-9cf9-799acec04f04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76d2c7ab-37fa-459a-b66b-9949a02ca394",
              "parent_uuid": "f530685d-80bd-4c50-94ad-b193bb6e119a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b2a1da7-aafb-4e19-aeff-f1abb911cf89",
                  "parent_uuid": "76d2c7ab-37fa-459a-b66b-9949a02ca394",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f36989d3-5996-459e-90d0-ca34b13e2b03",
              "parent_uuid": "f530685d-80bd-4c50-94ad-b193bb6e119a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "601adedb-479d-4a81-9330-b8945a7ee18e",
                  "parent_uuid": "f36989d3-5996-459e-90d0-ca34b13e2b03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ffc71314-d9c7-4f76-a830-31f1e38fe7e0",
              "parent_uuid": "f530685d-80bd-4c50-94ad-b193bb6e119a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06d8bbe3-342a-4daf-85db-2ab9d86c0dc0",
                  "parent_uuid": "ffc71314-d9c7-4f76-a830-31f1e38fe7e0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b486020-1812-4293-9e19-18784f8b9efc",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3341beb2-63c8-4c95-8afc-fb296d1da5fc",
              "parent_uuid": "0b486020-1812-4293-9e19-18784f8b9efc",
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
              "uuid": "0208586e-008b-42b9-8ac4-9292d601df28",
              "parent_uuid": "0b486020-1812-4293-9e19-18784f8b9efc",
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
              "uuid": "d0fa28fb-8627-486f-8894-dee7a69a9736",
              "parent_uuid": "0b486020-1812-4293-9e19-18784f8b9efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b18752a-b783-4a12-b0f7-460997f1baef",
                  "parent_uuid": "d0fa28fb-8627-486f-8894-dee7a69a9736",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91d54197-70d7-4850-b90f-1443dc544e43",
              "parent_uuid": "0b486020-1812-4293-9e19-18784f8b9efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b47c8297-22c8-450e-a599-0724d7f46162",
                  "parent_uuid": "91d54197-70d7-4850-b90f-1443dc544e43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4b97e42-3ee3-475c-8082-18f8cd175a40",
              "parent_uuid": "0b486020-1812-4293-9e19-18784f8b9efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c035257-a802-48ca-a0d6-8939db9cded0",
                  "parent_uuid": "c4b97e42-3ee3-475c-8082-18f8cd175a40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a19d759b-d164-4423-ab5f-493c23a62ea7",
              "parent_uuid": "0b486020-1812-4293-9e19-18784f8b9efc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8a5b486-054b-4b69-ab45-bd1d39b171b0",
                  "parent_uuid": "a19d759b-d164-4423-ab5f-493c23a62ea7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "28763878-6e87-475f-8a2f-a3940988cd55",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a2dd0e3-aa07-478a-9cad-0cfcad85bfde",
              "parent_uuid": "28763878-6e87-475f-8a2f-a3940988cd55",
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
              "uuid": "539ff5cd-44e1-4416-83f6-fadc0ece110d",
              "parent_uuid": "28763878-6e87-475f-8a2f-a3940988cd55",
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
              "uuid": "652fe8b8-a282-4151-9ffe-3bd2ec5dd3c6",
              "parent_uuid": "28763878-6e87-475f-8a2f-a3940988cd55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6d5e954-0d0d-4b16-a1db-2026186895fd",
                  "parent_uuid": "652fe8b8-a282-4151-9ffe-3bd2ec5dd3c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8715b982-dd44-4a49-90d5-80dbb9663d9f",
              "parent_uuid": "28763878-6e87-475f-8a2f-a3940988cd55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4088e1bf-c4e2-4ae9-b1c6-ca977369ce6b",
                  "parent_uuid": "8715b982-dd44-4a49-90d5-80dbb9663d9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5ef6569-29d4-4599-a5a7-885a06d46ea4",
              "parent_uuid": "28763878-6e87-475f-8a2f-a3940988cd55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e283ae6-6e3a-42a7-a4f1-6701d965954e",
                  "parent_uuid": "b5ef6569-29d4-4599-a5a7-885a06d46ea4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69406d1c-3e3a-40d5-91b1-b0d9a1d5909a",
              "parent_uuid": "28763878-6e87-475f-8a2f-a3940988cd55",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "187d6e01-ad61-47e5-a38c-28d759cdc906",
                  "parent_uuid": "69406d1c-3e3a-40d5-91b1-b0d9a1d5909a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73d6543b-1a12-4686-a677-495291d65539",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "431420da-f26a-4766-93a1-3ac8731aa837",
              "parent_uuid": "73d6543b-1a12-4686-a677-495291d65539",
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
              "uuid": "cc30589d-8d55-43b2-92a6-6e8e56bc6e83",
              "parent_uuid": "73d6543b-1a12-4686-a677-495291d65539",
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
              "uuid": "bc146517-4dad-4711-9d46-d87dd1aa5e74",
              "parent_uuid": "73d6543b-1a12-4686-a677-495291d65539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "feb30e1c-802e-4008-ad67-40fe8f7a3fa9",
                  "parent_uuid": "bc146517-4dad-4711-9d46-d87dd1aa5e74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8fa4940c-185d-4fc1-a2e5-6bc45aecee5b",
              "parent_uuid": "73d6543b-1a12-4686-a677-495291d65539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8677474-5a1f-4f29-9bdb-01316c39dfbf",
                  "parent_uuid": "8fa4940c-185d-4fc1-a2e5-6bc45aecee5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e60577b-c6ac-4705-84f2-5c74c90aaced",
              "parent_uuid": "73d6543b-1a12-4686-a677-495291d65539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98d93955-591b-416a-b801-b6f4a404b258",
                  "parent_uuid": "5e60577b-c6ac-4705-84f2-5c74c90aaced",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "942a22ca-1c47-41c2-9234-9b9f3ff4d0b4",
              "parent_uuid": "73d6543b-1a12-4686-a677-495291d65539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac7d5754-6533-4214-9f14-490b3ca2bf1d",
                  "parent_uuid": "942a22ca-1c47-41c2-9234-9b9f3ff4d0b4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37368543-90c1-48a0-a960-e9d02a6445a2",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6544b933-6244-4698-8180-d18c28a0fb8c",
              "parent_uuid": "37368543-90c1-48a0-a960-e9d02a6445a2",
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
              "uuid": "c0cd929a-3692-4545-844a-55389597a536",
              "parent_uuid": "37368543-90c1-48a0-a960-e9d02a6445a2",
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
              "uuid": "8f5edc73-503e-4ab5-9483-9bb2e286ba45",
              "parent_uuid": "37368543-90c1-48a0-a960-e9d02a6445a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1169ece6-2ab0-4352-b230-f2a1329f31de",
                  "parent_uuid": "8f5edc73-503e-4ab5-9483-9bb2e286ba45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f2c8542-faf2-40b7-bd10-131898fe8e97",
              "parent_uuid": "37368543-90c1-48a0-a960-e9d02a6445a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c5dbbf3-4168-4424-9b1c-66be564a40f9",
                  "parent_uuid": "9f2c8542-faf2-40b7-bd10-131898fe8e97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39e05c49-2b50-45ce-89be-423281c9f6a2",
              "parent_uuid": "37368543-90c1-48a0-a960-e9d02a6445a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40fa0f5b-4f71-49ff-ad02-493cf61c6b1d",
                  "parent_uuid": "39e05c49-2b50-45ce-89be-423281c9f6a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31fd852f-0fc7-49eb-ba57-59e0247bba17",
              "parent_uuid": "37368543-90c1-48a0-a960-e9d02a6445a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4a78c09-7338-478d-994c-312bc3005711",
                  "parent_uuid": "31fd852f-0fc7-49eb-ba57-59e0247bba17",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7cb98370-a698-4f6f-bc97-d174ab3d1d81",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cef78926-25c9-457b-a6d8-0c4782b49df0",
              "parent_uuid": "7cb98370-a698-4f6f-bc97-d174ab3d1d81",
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
          "uuid": "c5547061-aa77-4b4e-9707-0777c0efb974",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cbd2b94c-9303-4f24-b2ba-254e539f60f1",
              "parent_uuid": "c5547061-aa77-4b4e-9707-0777c0efb974",
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
          "uuid": "00a5d61f-3adf-4dd2-983d-e5473e183cfd",
          "parent_uuid": "e290b54f-269c-416c-a099-20dfc5a2634d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ffa111c7-3219-47b5-80ae-76158f04fbb5",
              "parent_uuid": "00a5d61f-3adf-4dd2-983d-e5473e183cfd",
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
                  "uuid": "3dd7f0a8-e379-42f9-bc82-03c98f3efe97",
                  "parent_uuid": "ffa111c7-3219-47b5-80ae-76158f04fbb5",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

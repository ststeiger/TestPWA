
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
  "uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "3843e640-9746-4756-bb73-1fc14cc576d7",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "faa12fc6-181e-43fd-8dd1-8e5baf7fe4e5",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "1db661e4-3dc3-4777-a01f-54836999a20f",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "12815032-e302-43a0-ac8b-2e57f9121974",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "03437022-24d0-4c1a-baa4-121dc6bbd8b7",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "6eae4661-e54f-4dbf-9080-dc5029c7ae82",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "54dfa107-6229-4649-8b3c-a9454d32b811",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
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
      "uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
      "parent_uuid": "0b9e8d0b-cf97-4232-9dcb-e5d6b1c579b9",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6aa1acd9-cc24-4009-9b60-aa54145f0789",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b9c67771-4064-44d9-8aaa-0ebb344c5a6b",
              "parent_uuid": "6aa1acd9-cc24-4009-9b60-aa54145f0789",
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
              "uuid": "f4bce863-ab6c-411f-8cb2-585c07914cd6",
              "parent_uuid": "6aa1acd9-cc24-4009-9b60-aa54145f0789",
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
              "uuid": "f085babb-cea3-4dfe-a026-5e171f1f0f17",
              "parent_uuid": "6aa1acd9-cc24-4009-9b60-aa54145f0789",
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
              "uuid": "a7fa3312-7646-4a5b-b0ee-d3b784d1f3ad",
              "parent_uuid": "6aa1acd9-cc24-4009-9b60-aa54145f0789",
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
          "uuid": "f426ef20-20ab-404b-a952-614d6bb801b9",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "df95bf3d-0ac6-44c3-a99c-2c2bde311fe6",
              "parent_uuid": "f426ef20-20ab-404b-a952-614d6bb801b9",
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
              "uuid": "6fa01c69-8267-4879-8cbc-62a5e30609c6",
              "parent_uuid": "f426ef20-20ab-404b-a952-614d6bb801b9",
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
              "uuid": "e1ad3516-5273-478f-b188-cc3715a10991",
              "parent_uuid": "f426ef20-20ab-404b-a952-614d6bb801b9",
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
              "uuid": "d208ade8-ce62-4cc4-985b-0550862951ff",
              "parent_uuid": "f426ef20-20ab-404b-a952-614d6bb801b9",
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
          "uuid": "601a0880-7219-43c8-aa2f-eefc6e237825",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7704d5c0-7792-4865-98d8-15a800a58a66",
              "parent_uuid": "601a0880-7219-43c8-aa2f-eefc6e237825",
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
              "uuid": "62fd7cf3-1f11-46f9-9f76-e1dd937df6df",
              "parent_uuid": "601a0880-7219-43c8-aa2f-eefc6e237825",
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
              "uuid": "0e4b18e4-9c06-487e-9a1f-21fa97ec1477",
              "parent_uuid": "601a0880-7219-43c8-aa2f-eefc6e237825",
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
              "uuid": "5f7733af-15e3-4d11-9b29-2f7fb140c339",
              "parent_uuid": "601a0880-7219-43c8-aa2f-eefc6e237825",
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
              "uuid": "2e816681-5d63-4d79-b797-deac938abebe",
              "parent_uuid": "601a0880-7219-43c8-aa2f-eefc6e237825",
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
              "uuid": "c08271c8-f4a0-402e-90d7-d6e9987ba65d",
              "parent_uuid": "601a0880-7219-43c8-aa2f-eefc6e237825",
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
          "uuid": "1d2044d1-20d6-4e65-8cf2-435aa6a54b07",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "133f5221-e279-40c8-bd82-5b52dc32074e",
              "parent_uuid": "1d2044d1-20d6-4e65-8cf2-435aa6a54b07",
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
          "uuid": "f3b5528a-f1a7-471c-a290-5058940e6515",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "918be43b-dd4c-4172-b7cd-ab9a88cd79ce",
              "parent_uuid": "f3b5528a-f1a7-471c-a290-5058940e6515",
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
              "uuid": "7b52884b-ac43-4807-a667-a4eca1638acd",
              "parent_uuid": "f3b5528a-f1a7-471c-a290-5058940e6515",
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
              "uuid": "2201ef72-cae1-405c-b013-65f628f9040b",
              "parent_uuid": "f3b5528a-f1a7-471c-a290-5058940e6515",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e12fc45a-b52f-4428-98a4-1a7db245abb6",
                  "parent_uuid": "2201ef72-cae1-405c-b013-65f628f9040b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ec09cad-7e91-4fc0-9613-131d88e4b3dc",
              "parent_uuid": "f3b5528a-f1a7-471c-a290-5058940e6515",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "229a318c-8cd6-45c1-83d2-66784b1012ec",
                  "parent_uuid": "5ec09cad-7e91-4fc0-9613-131d88e4b3dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff7835a4-2d11-4ce3-868a-cbf68481482f",
              "parent_uuid": "f3b5528a-f1a7-471c-a290-5058940e6515",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "092bc3e7-bcc6-4942-aafd-5efe885d905a",
                  "parent_uuid": "ff7835a4-2d11-4ce3-868a-cbf68481482f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "681fca2e-fd8f-49ca-a24b-a3c6cc4cb7b6",
              "parent_uuid": "f3b5528a-f1a7-471c-a290-5058940e6515",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51e889b6-6e37-461b-bc7a-7142d0e9eda2",
                  "parent_uuid": "681fca2e-fd8f-49ca-a24b-a3c6cc4cb7b6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b47d5544-7b1e-40cf-8f84-a0d99b85a96b",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4119f2f3-f8d9-476e-84be-5d0c0034044f",
              "parent_uuid": "b47d5544-7b1e-40cf-8f84-a0d99b85a96b",
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
              "uuid": "783ce538-f642-42e9-9772-eb114ab1e591",
              "parent_uuid": "b47d5544-7b1e-40cf-8f84-a0d99b85a96b",
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
              "uuid": "8d4abb4c-8d93-4c29-bb00-b162dade6e18",
              "parent_uuid": "b47d5544-7b1e-40cf-8f84-a0d99b85a96b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82855206-b9f6-49bb-88dd-c3a6831a5698",
                  "parent_uuid": "8d4abb4c-8d93-4c29-bb00-b162dade6e18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "770266fd-0047-45d7-b5f8-eae9f10cc7cf",
              "parent_uuid": "b47d5544-7b1e-40cf-8f84-a0d99b85a96b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cd3f2cf-7228-4a06-a92b-076631919302",
                  "parent_uuid": "770266fd-0047-45d7-b5f8-eae9f10cc7cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0ad5848-4b2a-4e03-93cb-4b2b305a8348",
              "parent_uuid": "b47d5544-7b1e-40cf-8f84-a0d99b85a96b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "529e0e34-c6d8-4f2f-8fd0-9f529910f538",
                  "parent_uuid": "c0ad5848-4b2a-4e03-93cb-4b2b305a8348",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ebec3e0-2736-48ca-bdc9-2e3df908390f",
              "parent_uuid": "b47d5544-7b1e-40cf-8f84-a0d99b85a96b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af57705f-6517-4346-8d62-fd6f9d2a187f",
                  "parent_uuid": "2ebec3e0-2736-48ca-bdc9-2e3df908390f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "932b72d1-b8d0-4611-93b6-d36af8a383ad",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fe35f854-70a1-4ec3-9437-32ee6693b597",
              "parent_uuid": "932b72d1-b8d0-4611-93b6-d36af8a383ad",
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
              "uuid": "e69844b2-d911-4060-a7af-0984e895f28d",
              "parent_uuid": "932b72d1-b8d0-4611-93b6-d36af8a383ad",
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
              "uuid": "e4ca7409-856d-4c65-b698-38ac70bd7f49",
              "parent_uuid": "932b72d1-b8d0-4611-93b6-d36af8a383ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25e82e59-525b-463f-ac75-f54e312da26f",
                  "parent_uuid": "e4ca7409-856d-4c65-b698-38ac70bd7f49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33db9b57-ec5f-45fe-8aef-4737245c20af",
              "parent_uuid": "932b72d1-b8d0-4611-93b6-d36af8a383ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "568fd111-7d35-47a7-ac15-156b79032433",
                  "parent_uuid": "33db9b57-ec5f-45fe-8aef-4737245c20af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2715b0f5-a87f-420b-9c90-ce7fe4b09485",
              "parent_uuid": "932b72d1-b8d0-4611-93b6-d36af8a383ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "306252b4-1356-432a-9937-d799778c7db2",
                  "parent_uuid": "2715b0f5-a87f-420b-9c90-ce7fe4b09485",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ae61dd3-966b-4156-b9a0-c03478118d7f",
              "parent_uuid": "932b72d1-b8d0-4611-93b6-d36af8a383ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25b46aed-43b5-47b3-bcde-dbff8c10dcf8",
                  "parent_uuid": "0ae61dd3-966b-4156-b9a0-c03478118d7f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aeefa2c0-f64d-4269-85b5-69fb36e6b536",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fd62c21-4c13-410a-97fa-984973f45d0d",
              "parent_uuid": "aeefa2c0-f64d-4269-85b5-69fb36e6b536",
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
              "uuid": "4a5a10d3-83f9-48d1-aeb0-76f32d26a0cd",
              "parent_uuid": "aeefa2c0-f64d-4269-85b5-69fb36e6b536",
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
              "uuid": "ce19a7a1-ff10-4004-91c0-b3f7a6e32dbf",
              "parent_uuid": "aeefa2c0-f64d-4269-85b5-69fb36e6b536",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59882ace-1c75-49ac-a4ac-82189ee23299",
                  "parent_uuid": "ce19a7a1-ff10-4004-91c0-b3f7a6e32dbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ce929a5-b5fa-47ca-a563-5b6120542928",
              "parent_uuid": "aeefa2c0-f64d-4269-85b5-69fb36e6b536",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f24024fb-a512-4b92-a613-a2ca6b7e7270",
                  "parent_uuid": "9ce929a5-b5fa-47ca-a563-5b6120542928",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a017e828-b7be-4860-abca-4321c53e2d61",
              "parent_uuid": "aeefa2c0-f64d-4269-85b5-69fb36e6b536",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8738f4e2-4b13-4228-b070-846e99f93f1a",
                  "parent_uuid": "a017e828-b7be-4860-abca-4321c53e2d61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cc1c390-daad-4eaa-be10-d72258374c72",
              "parent_uuid": "aeefa2c0-f64d-4269-85b5-69fb36e6b536",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8135c327-b26c-452f-92ba-6ecef0968150",
                  "parent_uuid": "9cc1c390-daad-4eaa-be10-d72258374c72",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9071d9b2-178f-4ed1-a888-515453d9749c",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88e05d93-5564-40b7-a712-abc3adae0b67",
              "parent_uuid": "9071d9b2-178f-4ed1-a888-515453d9749c",
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
              "uuid": "c65abf9d-3226-46e8-8ccb-057e7015c743",
              "parent_uuid": "9071d9b2-178f-4ed1-a888-515453d9749c",
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
              "uuid": "940646e2-290c-48da-8e8a-032d599644c5",
              "parent_uuid": "9071d9b2-178f-4ed1-a888-515453d9749c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55e9d4a3-074f-46ae-9e9c-159eb19069af",
                  "parent_uuid": "940646e2-290c-48da-8e8a-032d599644c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35cc7acd-f60a-41ec-8ece-bb425368eff4",
              "parent_uuid": "9071d9b2-178f-4ed1-a888-515453d9749c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "574048bf-be87-42fb-81ca-9ce33d89a758",
                  "parent_uuid": "35cc7acd-f60a-41ec-8ece-bb425368eff4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bfaa547-ac26-405b-87dc-eeeb941b8533",
              "parent_uuid": "9071d9b2-178f-4ed1-a888-515453d9749c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3522b6fc-8ab6-445c-93d2-992ecc93899f",
                  "parent_uuid": "5bfaa547-ac26-405b-87dc-eeeb941b8533",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0a06f13-501c-4d2b-94e3-0effd69cb441",
              "parent_uuid": "9071d9b2-178f-4ed1-a888-515453d9749c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "677ef1ac-b41b-45cf-a4b5-a158af73b27b",
                  "parent_uuid": "a0a06f13-501c-4d2b-94e3-0effd69cb441",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b46cd3d-ebeb-4972-ac52-76165afbc778",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2dcfe9c-90ce-4b97-89b4-f9268e141b83",
              "parent_uuid": "7b46cd3d-ebeb-4972-ac52-76165afbc778",
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
              "uuid": "2f0cc149-7b6d-4dd3-81b1-c5890f0899c4",
              "parent_uuid": "7b46cd3d-ebeb-4972-ac52-76165afbc778",
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
              "uuid": "bbc92425-ff5f-4929-9691-1903e2550adb",
              "parent_uuid": "7b46cd3d-ebeb-4972-ac52-76165afbc778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6f886c7-ab10-4b34-875a-b027919ddd7f",
                  "parent_uuid": "bbc92425-ff5f-4929-9691-1903e2550adb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c154c146-89d3-4031-8024-8632fa7dde4c",
              "parent_uuid": "7b46cd3d-ebeb-4972-ac52-76165afbc778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9d3ba95-c433-4e5a-9a4d-be54e37ccf7b",
                  "parent_uuid": "c154c146-89d3-4031-8024-8632fa7dde4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15ec88da-3633-463f-87f4-07f5e056b1c9",
              "parent_uuid": "7b46cd3d-ebeb-4972-ac52-76165afbc778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c10cea13-4cbc-4315-895c-104562ed5194",
                  "parent_uuid": "15ec88da-3633-463f-87f4-07f5e056b1c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d95e4a4-1a49-45ba-a00d-5cbb4532903b",
              "parent_uuid": "7b46cd3d-ebeb-4972-ac52-76165afbc778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21a7744f-a113-4f7b-b5b4-0da7d0a165c9",
                  "parent_uuid": "9d95e4a4-1a49-45ba-a00d-5cbb4532903b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "47476828-8394-410b-9524-50f5a93629b4",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0aa6d7d5-3b17-4e4c-8fa6-e770c7b78247",
              "parent_uuid": "47476828-8394-410b-9524-50f5a93629b4",
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
              "uuid": "e8b4cc4a-8581-40c7-9416-658f98ebb54d",
              "parent_uuid": "47476828-8394-410b-9524-50f5a93629b4",
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
              "uuid": "6ac2e169-b2b8-4d97-86d9-957bd9995026",
              "parent_uuid": "47476828-8394-410b-9524-50f5a93629b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebe1d10d-4789-4377-9677-372e5c9398e3",
                  "parent_uuid": "6ac2e169-b2b8-4d97-86d9-957bd9995026",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6fa8f1f-00a8-4253-b42b-3cbddd6d7471",
              "parent_uuid": "47476828-8394-410b-9524-50f5a93629b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb0cea25-bc96-41a0-81ee-f101d428d048",
                  "parent_uuid": "e6fa8f1f-00a8-4253-b42b-3cbddd6d7471",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efc1867a-54d0-4e3b-b1ef-b4390ec3f6ce",
              "parent_uuid": "47476828-8394-410b-9524-50f5a93629b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbd1f36a-158b-4cd8-a30e-fa2b08e142d7",
                  "parent_uuid": "efc1867a-54d0-4e3b-b1ef-b4390ec3f6ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccc89d23-ccc7-4400-b155-38fbda503e9d",
              "parent_uuid": "47476828-8394-410b-9524-50f5a93629b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76f968fa-5a12-4f1c-8311-25421ce7500c",
                  "parent_uuid": "ccc89d23-ccc7-4400-b155-38fbda503e9d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c8ed2815-ae3e-49e8-9dec-5917b5a72109",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bae08858-9b46-489b-8fa9-ae595ed2e642",
              "parent_uuid": "c8ed2815-ae3e-49e8-9dec-5917b5a72109",
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
              "uuid": "043bc504-0a74-4c1f-be21-7d77c506cf97",
              "parent_uuid": "c8ed2815-ae3e-49e8-9dec-5917b5a72109",
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
              "uuid": "20a35f2b-f76b-40bb-a6bc-978283e6865c",
              "parent_uuid": "c8ed2815-ae3e-49e8-9dec-5917b5a72109",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d37be1c8-2149-40fd-ad77-445d53efd904",
                  "parent_uuid": "20a35f2b-f76b-40bb-a6bc-978283e6865c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f11236e6-c1e4-4ffd-a3c5-f29ebe03e522",
              "parent_uuid": "c8ed2815-ae3e-49e8-9dec-5917b5a72109",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb8ff165-542a-43fd-a950-1708532b7afa",
                  "parent_uuid": "f11236e6-c1e4-4ffd-a3c5-f29ebe03e522",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69115909-fb8d-4ead-8369-37f33572ef5a",
              "parent_uuid": "c8ed2815-ae3e-49e8-9dec-5917b5a72109",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32935345-aaa6-4fbf-ad92-fe9d5427b290",
                  "parent_uuid": "69115909-fb8d-4ead-8369-37f33572ef5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61c667ae-4027-4d74-bf85-2a72c19084a1",
              "parent_uuid": "c8ed2815-ae3e-49e8-9dec-5917b5a72109",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f5617d2-c5fe-414f-aff0-1d171b5b287c",
                  "parent_uuid": "61c667ae-4027-4d74-bf85-2a72c19084a1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "daa0779f-74cc-433a-b817-4a2230420833",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6db46e12-5e76-4aad-8a84-3d937db79893",
              "parent_uuid": "daa0779f-74cc-433a-b817-4a2230420833",
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
              "uuid": "729b3ec5-dc1d-4650-9cc9-9fbb523612a7",
              "parent_uuid": "daa0779f-74cc-433a-b817-4a2230420833",
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
              "uuid": "520e0d5e-75b8-4bc7-b08d-a812a5afc7fb",
              "parent_uuid": "daa0779f-74cc-433a-b817-4a2230420833",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff2d8a45-593b-45ca-94b2-239d40badb48",
                  "parent_uuid": "520e0d5e-75b8-4bc7-b08d-a812a5afc7fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2f20909-934c-4ce4-a7db-d6368c72f6fc",
              "parent_uuid": "daa0779f-74cc-433a-b817-4a2230420833",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fa8bdd7-df89-467a-ac03-3d509765b0d3",
                  "parent_uuid": "b2f20909-934c-4ce4-a7db-d6368c72f6fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51f2be40-6686-40a8-8638-0bf5755a56f0",
              "parent_uuid": "daa0779f-74cc-433a-b817-4a2230420833",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8322ae55-39fa-4c0f-9b60-528f2837ad55",
                  "parent_uuid": "51f2be40-6686-40a8-8638-0bf5755a56f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6444903e-3b32-43d0-8fb7-26ce004645a2",
              "parent_uuid": "daa0779f-74cc-433a-b817-4a2230420833",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e3bea2b-4a24-49d6-92db-29c7a4b1652a",
                  "parent_uuid": "6444903e-3b32-43d0-8fb7-26ce004645a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2ce5de5-a977-4746-bfe7-6246dcdf253f",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7494850a-4088-41ed-958c-68075baa664e",
              "parent_uuid": "c2ce5de5-a977-4746-bfe7-6246dcdf253f",
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
              "uuid": "938d7f87-2e3d-4be3-8352-23203fca4247",
              "parent_uuid": "c2ce5de5-a977-4746-bfe7-6246dcdf253f",
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
              "uuid": "361155ce-4aac-4eb9-9237-baaf629e4d63",
              "parent_uuid": "c2ce5de5-a977-4746-bfe7-6246dcdf253f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15511e90-4e71-4f63-832f-6c740ab44483",
                  "parent_uuid": "361155ce-4aac-4eb9-9237-baaf629e4d63",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb05bc12-6cf2-4925-983f-502d481ba52a",
              "parent_uuid": "c2ce5de5-a977-4746-bfe7-6246dcdf253f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce91a7ef-4ec2-44b8-a078-e11c7696b328",
                  "parent_uuid": "cb05bc12-6cf2-4925-983f-502d481ba52a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b06670a1-e5fa-49dd-bb2f-f4f81cf8b8c4",
              "parent_uuid": "c2ce5de5-a977-4746-bfe7-6246dcdf253f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f49f0aa8-d6f0-4c84-8b26-2e8f2a7d13b4",
                  "parent_uuid": "b06670a1-e5fa-49dd-bb2f-f4f81cf8b8c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af995472-f51c-485c-a365-faf1142b3bbd",
              "parent_uuid": "c2ce5de5-a977-4746-bfe7-6246dcdf253f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e97752b-def6-4806-abcf-5c9835518596",
                  "parent_uuid": "af995472-f51c-485c-a365-faf1142b3bbd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23004713-fe19-4992-ab8f-d44cb751f71a",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "70a059fe-2625-4166-a166-c4408a222e3a",
              "parent_uuid": "23004713-fe19-4992-ab8f-d44cb751f71a",
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
              "uuid": "fa7f4d35-9a4e-4e1e-b9dc-0d2318a7109b",
              "parent_uuid": "23004713-fe19-4992-ab8f-d44cb751f71a",
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
              "uuid": "27b454f4-4ae7-4127-be3d-5a8f2e963402",
              "parent_uuid": "23004713-fe19-4992-ab8f-d44cb751f71a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4e96513-44eb-4f8c-b230-24e2ec9fadc5",
                  "parent_uuid": "27b454f4-4ae7-4127-be3d-5a8f2e963402",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5b2cff0-aa13-45af-894c-7329a871e2a2",
              "parent_uuid": "23004713-fe19-4992-ab8f-d44cb751f71a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be1f8fd5-928c-4893-a52c-eb8a97707e23",
                  "parent_uuid": "f5b2cff0-aa13-45af-894c-7329a871e2a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ee0342b-8f2c-405e-a59d-15b3bb61a4d6",
              "parent_uuid": "23004713-fe19-4992-ab8f-d44cb751f71a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c9b1b5c-668c-42e4-82e8-35f769ab41e8",
                  "parent_uuid": "9ee0342b-8f2c-405e-a59d-15b3bb61a4d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ec4478e-b526-4266-b89e-cd987f209a01",
              "parent_uuid": "23004713-fe19-4992-ab8f-d44cb751f71a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6cf421d8-dbe8-4cf7-8cfa-e349f431f208",
                  "parent_uuid": "2ec4478e-b526-4266-b89e-cd987f209a01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "77d56ba7-4447-43ac-901a-9b5b02ed1d97",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72f3fb21-7188-4061-94b2-8158c93cabc9",
              "parent_uuid": "77d56ba7-4447-43ac-901a-9b5b02ed1d97",
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
              "uuid": "75176375-bd77-4f2a-837e-f5897b0fabe8",
              "parent_uuid": "77d56ba7-4447-43ac-901a-9b5b02ed1d97",
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
              "uuid": "fde5bda9-6ed4-435f-9a3e-03ab1a707f21",
              "parent_uuid": "77d56ba7-4447-43ac-901a-9b5b02ed1d97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a4c948f-e53a-4d6f-8789-5443fb118e9e",
                  "parent_uuid": "fde5bda9-6ed4-435f-9a3e-03ab1a707f21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d353e1f-1762-426b-ba36-e915db668e2e",
              "parent_uuid": "77d56ba7-4447-43ac-901a-9b5b02ed1d97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3e6dae1-41e4-468c-be13-602f0b7897c6",
                  "parent_uuid": "4d353e1f-1762-426b-ba36-e915db668e2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed85b69b-4384-4026-a036-3dafb497eb09",
              "parent_uuid": "77d56ba7-4447-43ac-901a-9b5b02ed1d97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d3f8d2f-f41d-4581-8c0b-dbac7e554d47",
                  "parent_uuid": "ed85b69b-4384-4026-a036-3dafb497eb09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2960b5e0-714f-4111-b890-05169c06a7ea",
              "parent_uuid": "77d56ba7-4447-43ac-901a-9b5b02ed1d97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3488deac-28b8-4173-840a-c5878a518af4",
                  "parent_uuid": "2960b5e0-714f-4111-b890-05169c06a7ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "41a46dd5-5a03-4dd0-8ce4-fbb83a465164",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "026c5c16-9abb-4efb-baa8-394eaa96ba13",
              "parent_uuid": "41a46dd5-5a03-4dd0-8ce4-fbb83a465164",
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
              "uuid": "b1a5a342-979d-418c-8eee-db1dc7d772e6",
              "parent_uuid": "41a46dd5-5a03-4dd0-8ce4-fbb83a465164",
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
              "uuid": "72a43d96-1d4a-4907-b278-ee1bf3efb834",
              "parent_uuid": "41a46dd5-5a03-4dd0-8ce4-fbb83a465164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc56f331-9280-44c7-8967-a201ccc86906",
                  "parent_uuid": "72a43d96-1d4a-4907-b278-ee1bf3efb834",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f6574a5-3797-422b-93a3-4efa63ec2bf8",
              "parent_uuid": "41a46dd5-5a03-4dd0-8ce4-fbb83a465164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b49eb40-87e5-4e08-8e7a-de856ccddb90",
                  "parent_uuid": "1f6574a5-3797-422b-93a3-4efa63ec2bf8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c04dd71a-24cb-4683-a474-a5df771406be",
              "parent_uuid": "41a46dd5-5a03-4dd0-8ce4-fbb83a465164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef3d4ced-684e-4454-9a34-6e5f2d9f68b4",
                  "parent_uuid": "c04dd71a-24cb-4683-a474-a5df771406be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ff1d3cf-10be-4fd7-b392-8d2b7fab0bd0",
              "parent_uuid": "41a46dd5-5a03-4dd0-8ce4-fbb83a465164",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "214dc59c-eaea-4de6-8ec5-b52e79d934ba",
                  "parent_uuid": "3ff1d3cf-10be-4fd7-b392-8d2b7fab0bd0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7df22fa-b677-44b8-8ab0-a5c3c21c94bf",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "327951cb-e8ef-4f25-b652-b0899433aee4",
              "parent_uuid": "a7df22fa-b677-44b8-8ab0-a5c3c21c94bf",
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
              "uuid": "fb7e96b6-7167-4d89-8713-839d16c27f54",
              "parent_uuid": "a7df22fa-b677-44b8-8ab0-a5c3c21c94bf",
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
              "uuid": "568d74a3-e851-4357-af0c-7697aa3d1429",
              "parent_uuid": "a7df22fa-b677-44b8-8ab0-a5c3c21c94bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "496f9b9b-0883-4b19-8545-dfaa43ea05b9",
                  "parent_uuid": "568d74a3-e851-4357-af0c-7697aa3d1429",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c5d102f-52db-4660-a584-69d86dc22991",
              "parent_uuid": "a7df22fa-b677-44b8-8ab0-a5c3c21c94bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d8e9cb6-c4c6-4abe-b5da-87bfa1a77916",
                  "parent_uuid": "1c5d102f-52db-4660-a584-69d86dc22991",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5662f58a-3187-4eec-a18b-d51451fe4c5e",
              "parent_uuid": "a7df22fa-b677-44b8-8ab0-a5c3c21c94bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c06f7250-9c3d-48c7-b853-ed99ec1b341f",
                  "parent_uuid": "5662f58a-3187-4eec-a18b-d51451fe4c5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8fa3a5e-0386-4f3b-9562-8e2127810a25",
              "parent_uuid": "a7df22fa-b677-44b8-8ab0-a5c3c21c94bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8228006a-42c0-44df-bbbd-709eda1fc286",
                  "parent_uuid": "e8fa3a5e-0386-4f3b-9562-8e2127810a25",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5fe2b5fd-c464-4ec4-9734-2caef9b3fc15",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "229890e0-9efc-4065-8cab-71cc160b44b3",
              "parent_uuid": "5fe2b5fd-c464-4ec4-9734-2caef9b3fc15",
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
          "uuid": "b7b7c19e-f133-42a8-ae6a-c39c11fc4691",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "380cb10a-807e-4bbe-b43f-af0920dad8cf",
              "parent_uuid": "b7b7c19e-f133-42a8-ae6a-c39c11fc4691",
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
          "uuid": "bf2574cd-d59f-4d1f-94ab-2a1a77dbef61",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1831be5f-e767-4fcb-890f-5eb3303ee67f",
              "parent_uuid": "bf2574cd-d59f-4d1f-94ab-2a1a77dbef61",
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
              "uuid": "d3855be3-7244-4871-b905-ee554f62c9c2",
              "parent_uuid": "bf2574cd-d59f-4d1f-94ab-2a1a77dbef61",
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
              "uuid": "785829a6-5476-41f6-9b3c-7edd9fadf352",
              "parent_uuid": "bf2574cd-d59f-4d1f-94ab-2a1a77dbef61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff736783-97cb-45b5-a99b-3380c1fca180",
                  "parent_uuid": "785829a6-5476-41f6-9b3c-7edd9fadf352",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "741d6fb6-94bd-42dd-b697-7e6c5dab9975",
              "parent_uuid": "bf2574cd-d59f-4d1f-94ab-2a1a77dbef61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4aaaefe0-6da2-40cd-82d6-464adf8d739f",
                  "parent_uuid": "741d6fb6-94bd-42dd-b697-7e6c5dab9975",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2298d857-9b91-44ac-b255-492e56637feb",
              "parent_uuid": "bf2574cd-d59f-4d1f-94ab-2a1a77dbef61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "471d5385-f45f-4b13-8fe8-9c3e097725a0",
                  "parent_uuid": "2298d857-9b91-44ac-b255-492e56637feb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "015c8a67-14eb-4892-a068-c92915c4398f",
              "parent_uuid": "bf2574cd-d59f-4d1f-94ab-2a1a77dbef61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2f4d1f9-ed96-43e6-bb71-3d9ab9464326",
                  "parent_uuid": "015c8a67-14eb-4892-a068-c92915c4398f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5e9a44fa-a4b5-430f-a09b-1bf3423b548a",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05d4744b-2fd2-4395-9ad2-387c0839de12",
              "parent_uuid": "5e9a44fa-a4b5-430f-a09b-1bf3423b548a",
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
              "uuid": "82d023f3-5bd8-413b-a920-6e511713dafb",
              "parent_uuid": "5e9a44fa-a4b5-430f-a09b-1bf3423b548a",
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
              "uuid": "673eaa2e-3c04-46d8-b4ff-96578a1d91a9",
              "parent_uuid": "5e9a44fa-a4b5-430f-a09b-1bf3423b548a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "439aa1cb-c692-4321-b2b4-6a4da3f8a607",
                  "parent_uuid": "673eaa2e-3c04-46d8-b4ff-96578a1d91a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9cf5b31-37cb-488f-8c32-7341859482c3",
              "parent_uuid": "5e9a44fa-a4b5-430f-a09b-1bf3423b548a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "518698f8-9f84-44be-9d75-9e028b2f845d",
                  "parent_uuid": "b9cf5b31-37cb-488f-8c32-7341859482c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e796bb18-ffc1-4e7b-bbde-d14033faad87",
              "parent_uuid": "5e9a44fa-a4b5-430f-a09b-1bf3423b548a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c013ea0c-6264-45aa-bb92-16545caf5f40",
                  "parent_uuid": "e796bb18-ffc1-4e7b-bbde-d14033faad87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0ff6d3d-399d-4d24-a1ea-17d7084d9bfa",
              "parent_uuid": "5e9a44fa-a4b5-430f-a09b-1bf3423b548a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58327633-a710-46b8-b8a0-78ddb79bf013",
                  "parent_uuid": "e0ff6d3d-399d-4d24-a1ea-17d7084d9bfa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "070965e3-1a5b-4fa0-a957-4dbd9276e7a2",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "030cddf2-5d27-4e32-814f-70ea2d17fc55",
              "parent_uuid": "070965e3-1a5b-4fa0-a957-4dbd9276e7a2",
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
              "uuid": "6b10f317-2000-4a83-a6e6-233f2cee99c6",
              "parent_uuid": "070965e3-1a5b-4fa0-a957-4dbd9276e7a2",
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
              "uuid": "de94bd6d-975a-46cf-a26d-f4c4f5119f5f",
              "parent_uuid": "070965e3-1a5b-4fa0-a957-4dbd9276e7a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87a03850-44b0-44e7-aafd-501d9fb56f02",
                  "parent_uuid": "de94bd6d-975a-46cf-a26d-f4c4f5119f5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f9c5bdb-eea8-453b-948c-44ef8e684312",
              "parent_uuid": "070965e3-1a5b-4fa0-a957-4dbd9276e7a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60f89dee-3703-4209-b0d6-8f2a65916ecb",
                  "parent_uuid": "8f9c5bdb-eea8-453b-948c-44ef8e684312",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48d0ccd3-4d64-44db-8e59-8536016e3c1a",
              "parent_uuid": "070965e3-1a5b-4fa0-a957-4dbd9276e7a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ae5ca32-6bd5-4597-aea2-98c96abe0384",
                  "parent_uuid": "48d0ccd3-4d64-44db-8e59-8536016e3c1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80f21311-92e6-4313-8448-6b42e793207e",
              "parent_uuid": "070965e3-1a5b-4fa0-a957-4dbd9276e7a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16e3be9f-e5e0-49c1-b69c-b70cf283e8b6",
                  "parent_uuid": "80f21311-92e6-4313-8448-6b42e793207e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7605e33a-3463-4c03-8822-431f9ea4d8e0",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b778ef0b-dcfb-4fc6-9308-2421d19d1667",
              "parent_uuid": "7605e33a-3463-4c03-8822-431f9ea4d8e0",
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
              "uuid": "d4e4f27e-5cc8-4e6e-8574-038796fd53c6",
              "parent_uuid": "7605e33a-3463-4c03-8822-431f9ea4d8e0",
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
              "uuid": "7dde323b-6afd-4f5f-a5b3-9634a355b711",
              "parent_uuid": "7605e33a-3463-4c03-8822-431f9ea4d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84bd1806-7a1a-4093-ba57-e2bf4dfb8901",
                  "parent_uuid": "7dde323b-6afd-4f5f-a5b3-9634a355b711",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da5dfb13-4163-4547-a971-c9efde609210",
              "parent_uuid": "7605e33a-3463-4c03-8822-431f9ea4d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c0c5d82-22e5-401e-87ff-dcabe4837966",
                  "parent_uuid": "da5dfb13-4163-4547-a971-c9efde609210",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2896e6ce-091c-41ab-b548-f86535ae4b1c",
              "parent_uuid": "7605e33a-3463-4c03-8822-431f9ea4d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7954c8db-7d55-4893-8264-cab911b295fb",
                  "parent_uuid": "2896e6ce-091c-41ab-b548-f86535ae4b1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d133b11f-8bf9-4e8f-b017-18fa27b20f0b",
              "parent_uuid": "7605e33a-3463-4c03-8822-431f9ea4d8e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "272ab7c3-e5c7-4267-ab4e-6aa9786433d9",
                  "parent_uuid": "d133b11f-8bf9-4e8f-b017-18fa27b20f0b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dcf90161-ea47-487d-8d7c-cd397bc78298",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3806b8a9-462a-4698-b0bf-f39a3c8e1562",
              "parent_uuid": "dcf90161-ea47-487d-8d7c-cd397bc78298",
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
              "uuid": "c636706b-c32a-4e16-b733-d15b507c90a2",
              "parent_uuid": "dcf90161-ea47-487d-8d7c-cd397bc78298",
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
              "uuid": "f8401e92-5472-45bd-9f6b-d76b777533e6",
              "parent_uuid": "dcf90161-ea47-487d-8d7c-cd397bc78298",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8751d095-be27-44af-848b-2b98ed19a753",
                  "parent_uuid": "f8401e92-5472-45bd-9f6b-d76b777533e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17d54673-5aaf-463a-9dc5-29affdc309ad",
              "parent_uuid": "dcf90161-ea47-487d-8d7c-cd397bc78298",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1dd1924-20f0-48e3-a1c7-8be44f778eaf",
                  "parent_uuid": "17d54673-5aaf-463a-9dc5-29affdc309ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7797db8b-e6b6-4e7b-b9ee-2f8a287579eb",
              "parent_uuid": "dcf90161-ea47-487d-8d7c-cd397bc78298",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34f158b3-cbb7-4e71-93f1-ce9d08aa8fdb",
                  "parent_uuid": "7797db8b-e6b6-4e7b-b9ee-2f8a287579eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00841d8c-4648-4dd0-a6ae-263e36dd89f5",
              "parent_uuid": "dcf90161-ea47-487d-8d7c-cd397bc78298",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b0456c2-1a2d-4d97-a546-a98f3a7cde12",
                  "parent_uuid": "00841d8c-4648-4dd0-a6ae-263e36dd89f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fb08ea0d-1e2f-4dd9-817d-f85dbdf0b1fc",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87c7fcf7-0aac-4ae1-a428-9566b3ef1300",
              "parent_uuid": "fb08ea0d-1e2f-4dd9-817d-f85dbdf0b1fc",
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
              "uuid": "ed8058c1-645f-469b-a20b-0f8553eace71",
              "parent_uuid": "fb08ea0d-1e2f-4dd9-817d-f85dbdf0b1fc",
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
              "uuid": "3ec1faa6-f1f7-4c7c-acd6-25970e07b93c",
              "parent_uuid": "fb08ea0d-1e2f-4dd9-817d-f85dbdf0b1fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d97e5dff-3132-452d-b1d3-914fee5a8df7",
                  "parent_uuid": "3ec1faa6-f1f7-4c7c-acd6-25970e07b93c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80c159e5-72c3-4ff1-920f-2ea2fcb23616",
              "parent_uuid": "fb08ea0d-1e2f-4dd9-817d-f85dbdf0b1fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16068701-c2c4-49d0-9a90-efcf655a3d93",
                  "parent_uuid": "80c159e5-72c3-4ff1-920f-2ea2fcb23616",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72f75d9c-0cac-47e5-8677-2feb832a38da",
              "parent_uuid": "fb08ea0d-1e2f-4dd9-817d-f85dbdf0b1fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3429e3c7-4995-4899-a5d6-d6c05be8e3f5",
                  "parent_uuid": "72f75d9c-0cac-47e5-8677-2feb832a38da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a71e225f-1644-4f5b-bfee-30c4b01fb09f",
              "parent_uuid": "fb08ea0d-1e2f-4dd9-817d-f85dbdf0b1fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a990684-7d7b-4c04-a253-dacc7f66bd39",
                  "parent_uuid": "a71e225f-1644-4f5b-bfee-30c4b01fb09f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4420f849-47d3-4a76-ac08-5fba9072e9a5",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57b4580f-4133-43b7-887d-1480c27fcb0b",
              "parent_uuid": "4420f849-47d3-4a76-ac08-5fba9072e9a5",
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
              "uuid": "b4459b89-2edd-4226-82e1-92872c48122e",
              "parent_uuid": "4420f849-47d3-4a76-ac08-5fba9072e9a5",
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
              "uuid": "d99e741d-66bf-414a-a132-bb386edfbfd7",
              "parent_uuid": "4420f849-47d3-4a76-ac08-5fba9072e9a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a65566c-363a-4a08-b75a-8e5b18f2b44e",
                  "parent_uuid": "d99e741d-66bf-414a-a132-bb386edfbfd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27748cec-7104-420c-86e1-8db64c5288f1",
              "parent_uuid": "4420f849-47d3-4a76-ac08-5fba9072e9a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd2fb60c-5490-4f61-8a9b-05ad193083ef",
                  "parent_uuid": "27748cec-7104-420c-86e1-8db64c5288f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4f37bd9-29b9-4139-b4b4-b2c09469ea85",
              "parent_uuid": "4420f849-47d3-4a76-ac08-5fba9072e9a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2109941-6c6b-4e73-a38a-b17720989386",
                  "parent_uuid": "a4f37bd9-29b9-4139-b4b4-b2c09469ea85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11069fec-163c-4056-a88c-21bcf4b6b0a4",
              "parent_uuid": "4420f849-47d3-4a76-ac08-5fba9072e9a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67d39232-8903-4ecc-bfcb-4d37e1fa0a0b",
                  "parent_uuid": "11069fec-163c-4056-a88c-21bcf4b6b0a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0546cf47-e647-4576-a90e-97db119365f7",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9880ae7f-d9e5-44fe-a133-d8ae4193ed7e",
              "parent_uuid": "0546cf47-e647-4576-a90e-97db119365f7",
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
              "uuid": "1ff81942-6516-41e7-933b-a31bd165c175",
              "parent_uuid": "0546cf47-e647-4576-a90e-97db119365f7",
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
              "uuid": "7d591968-fc3e-4dd7-be7d-d7227f6cd177",
              "parent_uuid": "0546cf47-e647-4576-a90e-97db119365f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec025c28-82d0-4392-99a8-19354267c44f",
                  "parent_uuid": "7d591968-fc3e-4dd7-be7d-d7227f6cd177",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15b1e210-6a5f-4fc1-85e7-76cf74795dc1",
              "parent_uuid": "0546cf47-e647-4576-a90e-97db119365f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe0bd6a1-e7dc-49e1-a3a1-59d38c924087",
                  "parent_uuid": "15b1e210-6a5f-4fc1-85e7-76cf74795dc1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e80954ce-0218-47f5-8bdc-05f6ac106a61",
              "parent_uuid": "0546cf47-e647-4576-a90e-97db119365f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13f0bea2-eca2-471a-a048-ce76f48a9463",
                  "parent_uuid": "e80954ce-0218-47f5-8bdc-05f6ac106a61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d13f8f6d-dda6-4960-8aeb-3a40029e6f0a",
              "parent_uuid": "0546cf47-e647-4576-a90e-97db119365f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78586d2b-9562-4ea9-9ecc-e478b75b37b0",
                  "parent_uuid": "d13f8f6d-dda6-4960-8aeb-3a40029e6f0a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1e8b3729-29c2-40cc-8e9c-8e615cfb57c1",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2402158c-5ee1-4b04-82e8-7cbbbad51a91",
              "parent_uuid": "1e8b3729-29c2-40cc-8e9c-8e615cfb57c1",
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
          "uuid": "2bb5adb3-6c6d-4b70-aa3d-ad30eebf3486",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c868a6a-c4b5-4e57-8581-183337eab16c",
              "parent_uuid": "2bb5adb3-6c6d-4b70-aa3d-ad30eebf3486",
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
              "uuid": "0bef859d-639d-44ff-9086-27c57733a25e",
              "parent_uuid": "2bb5adb3-6c6d-4b70-aa3d-ad30eebf3486",
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
              "uuid": "51d6f675-f053-4f85-b5a2-ec22a64b3119",
              "parent_uuid": "2bb5adb3-6c6d-4b70-aa3d-ad30eebf3486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a5ffb51-6be6-4d0e-be33-09bd2327496a",
                  "parent_uuid": "51d6f675-f053-4f85-b5a2-ec22a64b3119",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f92d21f4-9e8d-4dca-b181-a68da2292a72",
              "parent_uuid": "2bb5adb3-6c6d-4b70-aa3d-ad30eebf3486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86cdd7d0-c8e7-4bfb-824f-91be73324810",
                  "parent_uuid": "f92d21f4-9e8d-4dca-b181-a68da2292a72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5df58455-3162-499d-9b81-ead1debd6f8e",
              "parent_uuid": "2bb5adb3-6c6d-4b70-aa3d-ad30eebf3486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5aa1646d-e3eb-43ac-bcdc-03d99b6d3df7",
                  "parent_uuid": "5df58455-3162-499d-9b81-ead1debd6f8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "937171f1-bf55-4fe9-a33e-e11ba09ffd91",
              "parent_uuid": "2bb5adb3-6c6d-4b70-aa3d-ad30eebf3486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0470ff6-6853-4c3c-b08a-7baa5da6affb",
                  "parent_uuid": "937171f1-bf55-4fe9-a33e-e11ba09ffd91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8bb9e5bb-02b9-4038-a8e9-2e079662905b",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8fa6acb-4c80-4cd7-a30d-08c1727acf81",
              "parent_uuid": "8bb9e5bb-02b9-4038-a8e9-2e079662905b",
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
              "uuid": "0bd62d23-4e32-4b9a-8487-888de04ba339",
              "parent_uuid": "8bb9e5bb-02b9-4038-a8e9-2e079662905b",
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
              "uuid": "427d1b2b-0cbe-4ef0-a797-f40c68b1d447",
              "parent_uuid": "8bb9e5bb-02b9-4038-a8e9-2e079662905b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "657a8e64-e7d4-476e-9c07-e6635182dfc5",
                  "parent_uuid": "427d1b2b-0cbe-4ef0-a797-f40c68b1d447",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcfc19fc-163d-4333-a465-b74670452b44",
              "parent_uuid": "8bb9e5bb-02b9-4038-a8e9-2e079662905b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6019bb8-9ff1-4f2e-ae2b-3d9b43cc5a06",
                  "parent_uuid": "fcfc19fc-163d-4333-a465-b74670452b44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5739adcb-a253-4a79-b1f7-5b4fee71e203",
              "parent_uuid": "8bb9e5bb-02b9-4038-a8e9-2e079662905b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46beaa94-372e-436a-a034-7ad20dd4d7ae",
                  "parent_uuid": "5739adcb-a253-4a79-b1f7-5b4fee71e203",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da69bc18-4e99-48c5-a216-0b2cfec7ff55",
              "parent_uuid": "8bb9e5bb-02b9-4038-a8e9-2e079662905b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0360fdb6-6c12-41b6-ad09-eb396eefafd8",
                  "parent_uuid": "da69bc18-4e99-48c5-a216-0b2cfec7ff55",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d9234ded-1e66-4db6-9fa4-403c20eeab0b",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c4b6eec-4e36-4578-b6b0-1fff7df23af4",
              "parent_uuid": "d9234ded-1e66-4db6-9fa4-403c20eeab0b",
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
          "uuid": "cc542d58-f359-4cde-812d-775afb4c972b",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1bbbc030-d384-4d1e-8cfb-9fa08213d4ce",
              "parent_uuid": "cc542d58-f359-4cde-812d-775afb4c972b",
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
          "uuid": "0b53ed2c-e6f4-4f60-94af-d77c4d535a02",
          "parent_uuid": "33a299f6-97c0-4208-a110-0d0f2b98a4af",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "846c12c2-e92b-4e19-a898-43e23927cf97",
              "parent_uuid": "0b53ed2c-e6f4-4f60-94af-d77c4d535a02",
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
                  "uuid": "515ed988-c0f7-4fdb-acc0-3d3b932b64b2",
                  "parent_uuid": "846c12c2-e92b-4e19-a898-43e23927cf97",
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

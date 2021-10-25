
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
  "uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "dba84172-880b-4116-874f-e0eac74309eb",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "1b388730-12f1-4df3-890f-2900e59788bf",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "ee73a547-11e1-45b0-b232-4b7b9b54ab44",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "b1ec02e0-51a2-436c-a7a9-ddd00e099526",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "3a21c423-9f1f-4ec4-bfc8-31f6841ed973",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "0326c0ee-9be9-4109-a108-2838ca8cf2a4",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "a9fdaaf2-b536-46a7-8143-561e759042b4",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
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
      "uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
      "parent_uuid": "9e9bf282-ccd3-4ae4-9202-97648486580b",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e4c96417-c2cb-46b4-96a9-ff4858a2bd54",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "54ebb214-c279-47ad-abc6-aa09109942ed",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "e3b86b85-6ec7-4e6d-94a6-d0e5060a25c1",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "c2f7d44a-b061-4cc9-998b-2bba900a470e",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "a2ab92a3-7fac-4908-a82e-b78651222419",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "5ef577db-6b65-4b01-99c5-bc919778e631",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "0d54d9d1-68be-4dc1-95a4-2894a65528d7",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "f4740dbb-c7ab-4fc4-be2f-2b395e75b301",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "f9a4cd80-71b8-4308-8ada-40247c86e192",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "33948410-6580-4636-b3ec-c76a579a1aa7",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
              "uuid": "045938d7-15d1-42c9-beed-9a7571d8c78c",
              "parent_uuid": "23ecedc7-e3e5-45b6-890b-a7cd4400baae",
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
          "uuid": "5c53fa70-40c5-4752-92a8-abf9d4455b92",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "59996eec-0c63-4b95-a70b-2144eb462e27",
              "parent_uuid": "5c53fa70-40c5-4752-92a8-abf9d4455b92",
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
              "uuid": "d885d9f1-872b-48e9-b3af-203631dcdb8f",
              "parent_uuid": "5c53fa70-40c5-4752-92a8-abf9d4455b92",
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
              "uuid": "afa9d333-3022-4755-8a98-9e3e4b608dcc",
              "parent_uuid": "5c53fa70-40c5-4752-92a8-abf9d4455b92",
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
              "uuid": "50710bf1-2e68-442a-b68e-80b53da9bea3",
              "parent_uuid": "5c53fa70-40c5-4752-92a8-abf9d4455b92",
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
          "uuid": "61bb0056-1937-45b4-b34e-cbba2cc27e94",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f7f350a-4905-4791-b3ab-039ef963b363",
              "parent_uuid": "61bb0056-1937-45b4-b34e-cbba2cc27e94",
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
              "uuid": "67e02100-32cd-4863-85d3-bf074f11ab98",
              "parent_uuid": "61bb0056-1937-45b4-b34e-cbba2cc27e94",
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
              "uuid": "37389c90-97d2-4049-9233-8cf445295e34",
              "parent_uuid": "61bb0056-1937-45b4-b34e-cbba2cc27e94",
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
              "uuid": "bb0d8ea5-ec79-4053-a040-95ba8f8f9869",
              "parent_uuid": "61bb0056-1937-45b4-b34e-cbba2cc27e94",
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
              "uuid": "ae639006-a69b-46c0-ae7d-e4c18b5def90",
              "parent_uuid": "61bb0056-1937-45b4-b34e-cbba2cc27e94",
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
              "uuid": "feb011c2-6554-4e74-896d-56a822cc66d2",
              "parent_uuid": "61bb0056-1937-45b4-b34e-cbba2cc27e94",
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
          "uuid": "3d08eec8-1583-4547-8124-a0505469bc99",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8eee79e9-7546-41f7-a5be-d242d2aaab00",
              "parent_uuid": "3d08eec8-1583-4547-8124-a0505469bc99",
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
          "uuid": "056b9941-63e0-4830-b78f-95f9e8a47847",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1e333a4-fe94-49b3-ae6d-2c3d0a3a92c8",
              "parent_uuid": "056b9941-63e0-4830-b78f-95f9e8a47847",
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
              "uuid": "45ffedba-ba7e-426c-a8a2-2a79bba174bf",
              "parent_uuid": "056b9941-63e0-4830-b78f-95f9e8a47847",
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
              "uuid": "15425fa6-3a86-4a8a-8029-4005083d7ae1",
              "parent_uuid": "056b9941-63e0-4830-b78f-95f9e8a47847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c218672b-0a9d-4a11-90c8-15abaf1da560",
                  "parent_uuid": "15425fa6-3a86-4a8a-8029-4005083d7ae1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a1c7017-c358-47f4-bc1d-8eb0e46e399b",
              "parent_uuid": "056b9941-63e0-4830-b78f-95f9e8a47847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b138325-f957-444b-8493-17632fcbb074",
                  "parent_uuid": "7a1c7017-c358-47f4-bc1d-8eb0e46e399b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d7e1503-2628-42cf-984d-3f5e5554c9b6",
              "parent_uuid": "056b9941-63e0-4830-b78f-95f9e8a47847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e48aba97-fc21-4e76-976b-14f847bf6914",
                  "parent_uuid": "4d7e1503-2628-42cf-984d-3f5e5554c9b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56eab8ad-aba5-4b6c-8a9d-9331435e3eee",
              "parent_uuid": "056b9941-63e0-4830-b78f-95f9e8a47847",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5590afcd-8b45-406b-9cfb-90cfcf6814b0",
                  "parent_uuid": "56eab8ad-aba5-4b6c-8a9d-9331435e3eee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23bd9efe-d6d6-41f1-b9fb-e419f2df8565",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2c5b861-f8e0-4eee-b38c-28dc2150f84d",
              "parent_uuid": "23bd9efe-d6d6-41f1-b9fb-e419f2df8565",
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
              "uuid": "37379c9b-e1c1-4b5f-ab5b-2b1b4971c5c6",
              "parent_uuid": "23bd9efe-d6d6-41f1-b9fb-e419f2df8565",
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
              "uuid": "4ba66ed8-ce06-4c4c-b811-9d4dec28b737",
              "parent_uuid": "23bd9efe-d6d6-41f1-b9fb-e419f2df8565",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c775b82e-fa39-439f-905d-c93be09eb5be",
                  "parent_uuid": "4ba66ed8-ce06-4c4c-b811-9d4dec28b737",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68d64d95-db66-4599-a5ec-a83e3b00accc",
              "parent_uuid": "23bd9efe-d6d6-41f1-b9fb-e419f2df8565",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "158d1ce1-f96f-49f3-b005-e5ba8e57d046",
                  "parent_uuid": "68d64d95-db66-4599-a5ec-a83e3b00accc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ed1a631-1ef2-4327-b547-e7a27e77d740",
              "parent_uuid": "23bd9efe-d6d6-41f1-b9fb-e419f2df8565",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1ebadea-e398-4ff5-b72b-6f53d18233d7",
                  "parent_uuid": "6ed1a631-1ef2-4327-b547-e7a27e77d740",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e98d431e-4b1b-4337-9e37-41384d8bfdbd",
              "parent_uuid": "23bd9efe-d6d6-41f1-b9fb-e419f2df8565",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d2ed395-1a84-4541-86a6-21218d9c7d48",
                  "parent_uuid": "e98d431e-4b1b-4337-9e37-41384d8bfdbd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c05882b-f2b9-43b5-b6e9-99213d12ca99",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "236fad68-64d2-41e0-9b07-d7b5f9829b5f",
              "parent_uuid": "6c05882b-f2b9-43b5-b6e9-99213d12ca99",
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
              "uuid": "1ad6ef76-7ce7-422f-bb7d-639aa681cb8c",
              "parent_uuid": "6c05882b-f2b9-43b5-b6e9-99213d12ca99",
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
              "uuid": "11006d86-1c5d-40a5-b4a5-62aba9c77310",
              "parent_uuid": "6c05882b-f2b9-43b5-b6e9-99213d12ca99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79fe94c2-4cdc-4286-a123-7673ec14f858",
                  "parent_uuid": "11006d86-1c5d-40a5-b4a5-62aba9c77310",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c8cd10e-12a9-458c-951f-e86579bb32fa",
              "parent_uuid": "6c05882b-f2b9-43b5-b6e9-99213d12ca99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "288df13a-2ce6-4871-9624-a2b8c295b4f2",
                  "parent_uuid": "7c8cd10e-12a9-458c-951f-e86579bb32fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17776ff3-fddd-45fa-8f9e-b34ae96df5d8",
              "parent_uuid": "6c05882b-f2b9-43b5-b6e9-99213d12ca99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aee4a9b6-742e-40c1-9674-67463a6f255e",
                  "parent_uuid": "17776ff3-fddd-45fa-8f9e-b34ae96df5d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83528181-17de-4066-bf67-907ccb6de2a9",
              "parent_uuid": "6c05882b-f2b9-43b5-b6e9-99213d12ca99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6d58757-73d0-4362-b68b-d028335e1161",
                  "parent_uuid": "83528181-17de-4066-bf67-907ccb6de2a9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4854ecb1-c05d-48c2-b965-922e7e03e6c1",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d857f0be-734f-4d5f-a2ab-65bdf36f49f8",
              "parent_uuid": "4854ecb1-c05d-48c2-b965-922e7e03e6c1",
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
              "uuid": "a88d060b-c958-4df5-9a7f-4db18756640b",
              "parent_uuid": "4854ecb1-c05d-48c2-b965-922e7e03e6c1",
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
              "uuid": "1afdfe23-5452-41d7-a727-33bd468ead90",
              "parent_uuid": "4854ecb1-c05d-48c2-b965-922e7e03e6c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9a59c2e-9759-462b-85c0-4750a9459301",
                  "parent_uuid": "1afdfe23-5452-41d7-a727-33bd468ead90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9145dc8e-7193-43fc-b57f-deb22bce91b2",
              "parent_uuid": "4854ecb1-c05d-48c2-b965-922e7e03e6c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d3a5559-266d-4789-86dc-b1fdafd7b0e3",
                  "parent_uuid": "9145dc8e-7193-43fc-b57f-deb22bce91b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2964cc08-12a3-4927-88e2-bf5028b4ce27",
              "parent_uuid": "4854ecb1-c05d-48c2-b965-922e7e03e6c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2fd9e009-7326-4cc9-968b-e08b66bab1ea",
                  "parent_uuid": "2964cc08-12a3-4927-88e2-bf5028b4ce27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e634f9b-4535-49b9-b210-42eeec508fdb",
              "parent_uuid": "4854ecb1-c05d-48c2-b965-922e7e03e6c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59a07538-f9af-4638-b902-8c9248868af5",
                  "parent_uuid": "7e634f9b-4535-49b9-b210-42eeec508fdb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e23a16c-59dd-4661-b6d6-a2239f99ed2f",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50574112-d204-4298-9a83-53b23fa3568a",
              "parent_uuid": "4e23a16c-59dd-4661-b6d6-a2239f99ed2f",
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
              "uuid": "d1728305-690d-4bc0-be93-de02f71f5844",
              "parent_uuid": "4e23a16c-59dd-4661-b6d6-a2239f99ed2f",
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
              "uuid": "539c7c91-7cca-4008-b96b-31f1c5691baa",
              "parent_uuid": "4e23a16c-59dd-4661-b6d6-a2239f99ed2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ccf5c4a-dc46-4283-9fc5-5b44f49c27aa",
                  "parent_uuid": "539c7c91-7cca-4008-b96b-31f1c5691baa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48c088ed-0a4c-4585-a641-cab5bdf72b8a",
              "parent_uuid": "4e23a16c-59dd-4661-b6d6-a2239f99ed2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f340a64-cf22-4892-8a1c-d5007d9fe7c0",
                  "parent_uuid": "48c088ed-0a4c-4585-a641-cab5bdf72b8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97c8a6ee-b322-4c6b-b897-bddf6b2fa2a9",
              "parent_uuid": "4e23a16c-59dd-4661-b6d6-a2239f99ed2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b79dc6c-9bf5-44fd-9582-2e9a91fcf409",
                  "parent_uuid": "97c8a6ee-b322-4c6b-b897-bddf6b2fa2a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c8a8587-c9c3-4e3f-b13b-9868823e8da2",
              "parent_uuid": "4e23a16c-59dd-4661-b6d6-a2239f99ed2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6424b7f9-dc02-4c55-8d51-2a213489824b",
                  "parent_uuid": "9c8a8587-c9c3-4e3f-b13b-9868823e8da2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ecd9c5a6-e81a-4df8-b9a3-4d7dd3c22425",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa7062a1-1388-4ff0-9971-1d8656a05147",
              "parent_uuid": "ecd9c5a6-e81a-4df8-b9a3-4d7dd3c22425",
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
              "uuid": "84a46da4-090c-4253-b0f3-9c47e7631226",
              "parent_uuid": "ecd9c5a6-e81a-4df8-b9a3-4d7dd3c22425",
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
              "uuid": "21bd7815-d006-43f6-b579-3f9512f776b0",
              "parent_uuid": "ecd9c5a6-e81a-4df8-b9a3-4d7dd3c22425",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16432d0a-c613-4f12-80f6-592f4a185b60",
                  "parent_uuid": "21bd7815-d006-43f6-b579-3f9512f776b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cef730dd-7eb5-44cd-9a4c-bd4aeda447b7",
              "parent_uuid": "ecd9c5a6-e81a-4df8-b9a3-4d7dd3c22425",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d496cef9-4917-4059-9be5-e6815f0f0862",
                  "parent_uuid": "cef730dd-7eb5-44cd-9a4c-bd4aeda447b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c111349-3f4f-42a9-b1c9-630668079deb",
              "parent_uuid": "ecd9c5a6-e81a-4df8-b9a3-4d7dd3c22425",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bae37212-0fe7-4303-8b02-303596f9d93b",
                  "parent_uuid": "4c111349-3f4f-42a9-b1c9-630668079deb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a726a5f6-4ee2-49a7-a517-bb4a88b9a7e5",
              "parent_uuid": "ecd9c5a6-e81a-4df8-b9a3-4d7dd3c22425",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f13f3244-5473-49bb-a4fb-19a505348435",
                  "parent_uuid": "a726a5f6-4ee2-49a7-a517-bb4a88b9a7e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "deff6ca2-15f0-49b5-a23a-7c2daf699d84",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5face4b5-5dbc-492e-97de-00d2cf294e29",
              "parent_uuid": "deff6ca2-15f0-49b5-a23a-7c2daf699d84",
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
              "uuid": "6f9cb2de-f8c5-416b-a396-25b6455c0942",
              "parent_uuid": "deff6ca2-15f0-49b5-a23a-7c2daf699d84",
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
              "uuid": "636de5b1-85f2-4573-8eb2-108b34cdda5a",
              "parent_uuid": "deff6ca2-15f0-49b5-a23a-7c2daf699d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1f86f68-2986-471d-8aea-5a7665241a08",
                  "parent_uuid": "636de5b1-85f2-4573-8eb2-108b34cdda5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35940fd0-55c4-452b-bcc6-5c3410c05cce",
              "parent_uuid": "deff6ca2-15f0-49b5-a23a-7c2daf699d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1ead0f9-cbcb-45b4-8e78-4831f3ce5571",
                  "parent_uuid": "35940fd0-55c4-452b-bcc6-5c3410c05cce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e771baf-d258-43d7-9878-f9d0f0cf1518",
              "parent_uuid": "deff6ca2-15f0-49b5-a23a-7c2daf699d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b3e2044-d83f-4159-a63e-c01f3a5a172c",
                  "parent_uuid": "1e771baf-d258-43d7-9878-f9d0f0cf1518",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f549d30a-cd26-4497-8388-818fd50ecab4",
              "parent_uuid": "deff6ca2-15f0-49b5-a23a-7c2daf699d84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56e084cc-c883-446f-af79-1542a50c7f2a",
                  "parent_uuid": "f549d30a-cd26-4497-8388-818fd50ecab4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "50c09a23-4d43-4f23-a7ed-3c44c78768ce",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23a80095-4ca8-4c3c-aef6-e334c4cfa1d8",
              "parent_uuid": "50c09a23-4d43-4f23-a7ed-3c44c78768ce",
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
              "uuid": "1b28785e-4678-44cb-8310-1ec21086723f",
              "parent_uuid": "50c09a23-4d43-4f23-a7ed-3c44c78768ce",
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
              "uuid": "7fd2e8ba-6f0d-4496-af53-7f728ca7f7af",
              "parent_uuid": "50c09a23-4d43-4f23-a7ed-3c44c78768ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0b87e9b-9c5f-48b9-816a-249341b3b764",
                  "parent_uuid": "7fd2e8ba-6f0d-4496-af53-7f728ca7f7af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4f9acef-16ff-4485-8b4f-6704d6350826",
              "parent_uuid": "50c09a23-4d43-4f23-a7ed-3c44c78768ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db65c9e3-5d43-49ba-9c5b-85ac5ce01935",
                  "parent_uuid": "e4f9acef-16ff-4485-8b4f-6704d6350826",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6779eb94-f6c3-46ad-a242-aadecdf05d9a",
              "parent_uuid": "50c09a23-4d43-4f23-a7ed-3c44c78768ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1941c278-0d06-403c-9994-b6efc394e0e1",
                  "parent_uuid": "6779eb94-f6c3-46ad-a242-aadecdf05d9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "527133e1-7e50-4587-b9e3-14a38398398a",
              "parent_uuid": "50c09a23-4d43-4f23-a7ed-3c44c78768ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba9177ef-8ae2-4fde-86ce-0b15811f5146",
                  "parent_uuid": "527133e1-7e50-4587-b9e3-14a38398398a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2aad75e5-d81d-482d-873c-89c4df6f6b03",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3f663fc5-846f-48cb-bb09-bad1e984fa27",
              "parent_uuid": "2aad75e5-d81d-482d-873c-89c4df6f6b03",
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
          "uuid": "4e44f283-38df-4121-92e3-a2737f1fd73b",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "809dddc8-31c3-4bcc-a368-0cca13ebf311",
              "parent_uuid": "4e44f283-38df-4121-92e3-a2737f1fd73b",
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
              "uuid": "36946a54-643c-4f5e-9ae7-f571e6a97258",
              "parent_uuid": "4e44f283-38df-4121-92e3-a2737f1fd73b",
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
              "uuid": "6a9dfcfb-81aa-4813-9a63-c3cc04cb6403",
              "parent_uuid": "4e44f283-38df-4121-92e3-a2737f1fd73b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae607612-8fa9-46be-85ca-10e03527ec34",
                  "parent_uuid": "6a9dfcfb-81aa-4813-9a63-c3cc04cb6403",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7639b93-ff32-45bc-a915-9588082e7cdb",
              "parent_uuid": "4e44f283-38df-4121-92e3-a2737f1fd73b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08a04860-c2da-4266-bda4-12ab940ddb3a",
                  "parent_uuid": "d7639b93-ff32-45bc-a915-9588082e7cdb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9a2efeb-103d-42bc-9a1e-736c8d2fdadb",
              "parent_uuid": "4e44f283-38df-4121-92e3-a2737f1fd73b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fa63cca-0a22-4536-bb76-0312cbd9ad58",
                  "parent_uuid": "e9a2efeb-103d-42bc-9a1e-736c8d2fdadb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bff9f3b4-3238-41f6-8c2d-8eab7dc9796b",
              "parent_uuid": "4e44f283-38df-4121-92e3-a2737f1fd73b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a05823a7-4ab8-48d5-b61d-a773f4e7de30",
                  "parent_uuid": "bff9f3b4-3238-41f6-8c2d-8eab7dc9796b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b59e207-0d41-47e7-afde-88cca3ac3a93",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a320a751-022d-4612-b4a6-e0444ae8d49a",
              "parent_uuid": "8b59e207-0d41-47e7-afde-88cca3ac3a93",
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
          "uuid": "ce137d6a-1c3b-48a3-ad2f-29f39180a7f9",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "505d0223-07e1-418e-9099-87b44c10e4cd",
              "parent_uuid": "ce137d6a-1c3b-48a3-ad2f-29f39180a7f9",
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
          "uuid": "73d22a69-80a6-4fea-9786-a8af45429103",
          "parent_uuid": "51f77b05-f992-40d3-a0f8-3b78c664c18f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c1e525b5-60f8-4a1c-8456-84a020cd0f03",
              "parent_uuid": "73d22a69-80a6-4fea-9786-a8af45429103",
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
                  "uuid": "dafa5b07-8b61-4793-a9fc-eb6efb7707ba",
                  "parent_uuid": "c1e525b5-60f8-4a1c-8456-84a020cd0f03",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

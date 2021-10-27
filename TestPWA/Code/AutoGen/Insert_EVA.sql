
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
  "uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "2873b713-175c-4421-a839-7ea5d82fbf29",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "fed9a3c7-62a1-44bc-9e9d-9955aca10f0b",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "5c9d249a-53ef-46ec-9460-f544db61eb59",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "1592a04d-d081-4d20-b419-6f06fbc9fa9d",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "8d71cc77-d2ee-443e-b1d9-be7357535e08",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "034535c9-ca66-48bf-9f8c-b68492c036cd",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "a95c9704-a60e-4122-9c0e-e9164da09aa1",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
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
      "uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
      "parent_uuid": "72b18b2d-2ed8-4f80-b2a8-b0fa2ad0227a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6d74088a-86d9-4640-8a0d-c79b35b4e1ed",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "adf4c909-6769-4e57-bca2-8ea1fc2953b7",
              "parent_uuid": "6d74088a-86d9-4640-8a0d-c79b35b4e1ed",
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
              "uuid": "57fb7792-bb45-4697-bc21-3883f1f339ac",
              "parent_uuid": "6d74088a-86d9-4640-8a0d-c79b35b4e1ed",
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
              "uuid": "2f7fa7fb-4d00-4cae-b995-b2ada2d31e5f",
              "parent_uuid": "6d74088a-86d9-4640-8a0d-c79b35b4e1ed",
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
              "uuid": "e35330eb-df51-44b1-8da8-56a73ebb568a",
              "parent_uuid": "6d74088a-86d9-4640-8a0d-c79b35b4e1ed",
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
          "uuid": "4e03969c-4d5c-45a8-a333-2bc1c9f9a144",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "6de828e0-8967-4f96-ae49-b9664cb48dd8",
              "parent_uuid": "4e03969c-4d5c-45a8-a333-2bc1c9f9a144",
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
              "uuid": "912b8405-77e7-40e9-8f93-b6ce24b17b1a",
              "parent_uuid": "4e03969c-4d5c-45a8-a333-2bc1c9f9a144",
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
              "uuid": "fa171a09-2602-46c2-bbff-eda6358405f0",
              "parent_uuid": "4e03969c-4d5c-45a8-a333-2bc1c9f9a144",
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
              "uuid": "890553cd-d085-4c88-be1b-0f9abf4d53bf",
              "parent_uuid": "4e03969c-4d5c-45a8-a333-2bc1c9f9a144",
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
          "uuid": "e223ccb2-4166-4890-a186-b79fe4be7c7f",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7030b71-f925-43c0-8164-7c8777502400",
              "parent_uuid": "e223ccb2-4166-4890-a186-b79fe4be7c7f",
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
              "uuid": "dd0e9d71-8713-4269-be62-a3a65dc0fee1",
              "parent_uuid": "e223ccb2-4166-4890-a186-b79fe4be7c7f",
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
              "uuid": "272923d4-6615-4f4f-9115-7fe41b352231",
              "parent_uuid": "e223ccb2-4166-4890-a186-b79fe4be7c7f",
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
              "uuid": "5104f350-9891-40fa-bc7f-719eb356f78e",
              "parent_uuid": "e223ccb2-4166-4890-a186-b79fe4be7c7f",
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
              "uuid": "ac1c5dca-d8e3-44b8-88b6-bf051381c551",
              "parent_uuid": "e223ccb2-4166-4890-a186-b79fe4be7c7f",
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
              "uuid": "65d77a1f-4907-429a-95fa-6a00fe3a66ea",
              "parent_uuid": "e223ccb2-4166-4890-a186-b79fe4be7c7f",
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
          "uuid": "485fd89b-c8f9-4eec-9641-24c190c366ce",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8d42eafb-532b-4872-a4de-59093f93c125",
              "parent_uuid": "485fd89b-c8f9-4eec-9641-24c190c366ce",
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
          "uuid": "aef86307-f04c-49ae-8a23-449077722145",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbbe83aa-cc58-44f1-81fc-d163019eee53",
              "parent_uuid": "aef86307-f04c-49ae-8a23-449077722145",
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
              "uuid": "a4d6f2b4-4612-4649-add8-9602bcb8e81b",
              "parent_uuid": "aef86307-f04c-49ae-8a23-449077722145",
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
              "uuid": "35482ba6-a656-4586-be42-e62c61272336",
              "parent_uuid": "aef86307-f04c-49ae-8a23-449077722145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a11e3456-266f-40f7-976b-132cea984551",
                  "parent_uuid": "35482ba6-a656-4586-be42-e62c61272336",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "146b3428-ae75-430f-8242-adf04c520e2f",
              "parent_uuid": "aef86307-f04c-49ae-8a23-449077722145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c478035-b796-4271-a42e-de0fc0994c59",
                  "parent_uuid": "146b3428-ae75-430f-8242-adf04c520e2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8473afd-92f2-46f2-a509-329c10286bea",
              "parent_uuid": "aef86307-f04c-49ae-8a23-449077722145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e41e981a-6379-4843-9d77-a6f9a806f2be",
                  "parent_uuid": "e8473afd-92f2-46f2-a509-329c10286bea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25a73fce-6318-4574-ae66-eb4914a06a0b",
              "parent_uuid": "aef86307-f04c-49ae-8a23-449077722145",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c44b79ca-dc58-4a62-841a-2510fbd43eb2",
                  "parent_uuid": "25a73fce-6318-4574-ae66-eb4914a06a0b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6852294f-8611-4c63-bdc3-3a1921fa9574",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6fb68c7-d14e-4d19-aebf-79c859ce8b45",
              "parent_uuid": "6852294f-8611-4c63-bdc3-3a1921fa9574",
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
              "uuid": "43f55537-2bf9-4d07-92d5-544c646ef27f",
              "parent_uuid": "6852294f-8611-4c63-bdc3-3a1921fa9574",
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
              "uuid": "57d2191f-68d9-4ce4-bf0f-4a81298c2e59",
              "parent_uuid": "6852294f-8611-4c63-bdc3-3a1921fa9574",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed2c47a6-2cfe-4bc3-8e33-414f10e9708d",
                  "parent_uuid": "57d2191f-68d9-4ce4-bf0f-4a81298c2e59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "746d0071-f957-4d5f-819f-e050f4526106",
              "parent_uuid": "6852294f-8611-4c63-bdc3-3a1921fa9574",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce4d8c14-b691-43f7-acec-dfe87bb06d00",
                  "parent_uuid": "746d0071-f957-4d5f-819f-e050f4526106",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3d2e50a-6ab6-41bd-8304-4ca6e75df08f",
              "parent_uuid": "6852294f-8611-4c63-bdc3-3a1921fa9574",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9278e29-0d9e-4b82-897d-f36f44dded31",
                  "parent_uuid": "f3d2e50a-6ab6-41bd-8304-4ca6e75df08f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df191ab1-796b-4d4e-9380-781fcaeb651d",
              "parent_uuid": "6852294f-8611-4c63-bdc3-3a1921fa9574",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "846b5de7-ed2a-4927-a607-b05aed88969c",
                  "parent_uuid": "df191ab1-796b-4d4e-9380-781fcaeb651d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "087639cc-3de4-4b51-88bf-5da4c2bd580e",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcc820f2-7689-4185-81ef-4e97f43d01cc",
              "parent_uuid": "087639cc-3de4-4b51-88bf-5da4c2bd580e",
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
              "uuid": "9ec317d2-65a9-4070-8fce-b0bf0811043f",
              "parent_uuid": "087639cc-3de4-4b51-88bf-5da4c2bd580e",
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
              "uuid": "f9f18041-ca15-4336-89b8-4c93419d3747",
              "parent_uuid": "087639cc-3de4-4b51-88bf-5da4c2bd580e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c86fb559-762a-4444-ab32-8a8a9223aafc",
                  "parent_uuid": "f9f18041-ca15-4336-89b8-4c93419d3747",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb2f77e4-1607-44c8-bf1d-33ff207e7812",
              "parent_uuid": "087639cc-3de4-4b51-88bf-5da4c2bd580e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9cab09f3-bbe1-4d83-b462-bfb9e3e2a68d",
                  "parent_uuid": "bb2f77e4-1607-44c8-bf1d-33ff207e7812",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d1471d9-ad69-4dc9-879c-739f4c708bf4",
              "parent_uuid": "087639cc-3de4-4b51-88bf-5da4c2bd580e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d31c26da-5463-4ae0-bf28-807da45be447",
                  "parent_uuid": "4d1471d9-ad69-4dc9-879c-739f4c708bf4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59ff342d-03c7-4ea1-8217-2a4fbe08044b",
              "parent_uuid": "087639cc-3de4-4b51-88bf-5da4c2bd580e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cdd1476-106c-4d73-82b5-ab1d05aeef4f",
                  "parent_uuid": "59ff342d-03c7-4ea1-8217-2a4fbe08044b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "24876b03-409e-49a1-bb35-e59ad34afddd",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0cd26e04-99bf-4cb1-8212-ff2ef0840ec0",
              "parent_uuid": "24876b03-409e-49a1-bb35-e59ad34afddd",
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
              "uuid": "6dec747d-1785-4ac3-96ab-5ad71b163e92",
              "parent_uuid": "24876b03-409e-49a1-bb35-e59ad34afddd",
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
              "uuid": "3600571d-a0ce-4d65-8a8a-6b4298319291",
              "parent_uuid": "24876b03-409e-49a1-bb35-e59ad34afddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1919af1c-cbd7-46c8-94df-a25c177d4c14",
                  "parent_uuid": "3600571d-a0ce-4d65-8a8a-6b4298319291",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2e4ff97-4c40-41a3-a24b-08cab8850bb0",
              "parent_uuid": "24876b03-409e-49a1-bb35-e59ad34afddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9518563c-f24c-4f08-8d32-389609794b41",
                  "parent_uuid": "a2e4ff97-4c40-41a3-a24b-08cab8850bb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c3220b3-b727-42da-bc8f-7b78901e8b92",
              "parent_uuid": "24876b03-409e-49a1-bb35-e59ad34afddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fca1615-d9fa-4488-ad26-4ae61f8c071f",
                  "parent_uuid": "6c3220b3-b727-42da-bc8f-7b78901e8b92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17f50a06-d465-495a-8e98-378eccf173a5",
              "parent_uuid": "24876b03-409e-49a1-bb35-e59ad34afddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d43129d1-91c0-457e-bacf-7c0b7b1b4352",
                  "parent_uuid": "17f50a06-d465-495a-8e98-378eccf173a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8d999c30-7847-42f7-ac80-c46cbbe763cb",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad1a73d8-8016-4956-a5a0-30d1706a6881",
              "parent_uuid": "8d999c30-7847-42f7-ac80-c46cbbe763cb",
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
              "uuid": "5724ed18-f44a-4341-a65f-cbe4553745be",
              "parent_uuid": "8d999c30-7847-42f7-ac80-c46cbbe763cb",
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
              "uuid": "b352bf29-b91e-4ecb-89c2-ddf9a2a79704",
              "parent_uuid": "8d999c30-7847-42f7-ac80-c46cbbe763cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13c81776-c46c-4905-bd77-ab1e17087d83",
                  "parent_uuid": "b352bf29-b91e-4ecb-89c2-ddf9a2a79704",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae8a7afe-10b3-43a1-85aa-608eff471f76",
              "parent_uuid": "8d999c30-7847-42f7-ac80-c46cbbe763cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "306c818d-6823-41e5-9fed-0b636e0e6c5b",
                  "parent_uuid": "ae8a7afe-10b3-43a1-85aa-608eff471f76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41d8071f-3e25-42a4-836e-7a54f87c03fa",
              "parent_uuid": "8d999c30-7847-42f7-ac80-c46cbbe763cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41923450-c9e6-4b33-ae58-9238f4171518",
                  "parent_uuid": "41d8071f-3e25-42a4-836e-7a54f87c03fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "444d8d10-ad8c-4526-8bb9-3da00fd2c950",
              "parent_uuid": "8d999c30-7847-42f7-ac80-c46cbbe763cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "652f95b7-8095-425b-954d-13d8c8c9cfb3",
                  "parent_uuid": "444d8d10-ad8c-4526-8bb9-3da00fd2c950",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b37ea1f8-005c-4007-bc89-356bee639867",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aad0c5a2-3126-4462-b960-ca81a0c485f2",
              "parent_uuid": "b37ea1f8-005c-4007-bc89-356bee639867",
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
              "uuid": "a93e2a53-7190-447e-b586-adc37d2899be",
              "parent_uuid": "b37ea1f8-005c-4007-bc89-356bee639867",
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
              "uuid": "d2ad341a-3158-4290-9470-0da4c37cb104",
              "parent_uuid": "b37ea1f8-005c-4007-bc89-356bee639867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d9b236d-37d6-4cb0-9cf6-6e0292657a48",
                  "parent_uuid": "d2ad341a-3158-4290-9470-0da4c37cb104",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bfc69fe-fa5b-485c-b21d-e40cb983921f",
              "parent_uuid": "b37ea1f8-005c-4007-bc89-356bee639867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1fefb288-86a8-40ba-bba5-a35703325f83",
                  "parent_uuid": "4bfc69fe-fa5b-485c-b21d-e40cb983921f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0609fb7-73ca-4e1b-ae22-c0de5bc15e4d",
              "parent_uuid": "b37ea1f8-005c-4007-bc89-356bee639867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "beabaf5a-caa1-4666-a5ec-59f7ff4e7553",
                  "parent_uuid": "e0609fb7-73ca-4e1b-ae22-c0de5bc15e4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c67bed22-968c-421b-aaac-82d065fa23a8",
              "parent_uuid": "b37ea1f8-005c-4007-bc89-356bee639867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f72a6f29-43d0-429c-8cea-7b0ec1908341",
                  "parent_uuid": "c67bed22-968c-421b-aaac-82d065fa23a8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a6fedfe4-cf44-4c8b-8855-22e2f89b2ff7",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65613e7a-c707-4313-be63-6fbe7dec7202",
              "parent_uuid": "a6fedfe4-cf44-4c8b-8855-22e2f89b2ff7",
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
              "uuid": "6d2eeed4-549d-4036-80a3-0ddd888db82d",
              "parent_uuid": "a6fedfe4-cf44-4c8b-8855-22e2f89b2ff7",
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
              "uuid": "208a4ae9-a044-4470-9f09-bc0d95fadfd8",
              "parent_uuid": "a6fedfe4-cf44-4c8b-8855-22e2f89b2ff7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff8cd300-d238-4ff0-825f-31400c836a5c",
                  "parent_uuid": "208a4ae9-a044-4470-9f09-bc0d95fadfd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "721ef0d8-c17e-49d6-bb4d-00afc970362e",
              "parent_uuid": "a6fedfe4-cf44-4c8b-8855-22e2f89b2ff7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0517ae0-f64c-457f-9177-d66e5bdf8f3a",
                  "parent_uuid": "721ef0d8-c17e-49d6-bb4d-00afc970362e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f62022e1-0a1c-42c8-933c-602275e7ed12",
              "parent_uuid": "a6fedfe4-cf44-4c8b-8855-22e2f89b2ff7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b754ee0-bb61-4e86-a416-2f1f9e93d686",
                  "parent_uuid": "f62022e1-0a1c-42c8-933c-602275e7ed12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7e9e058-5e0f-4816-85b3-862c1d8a3cbc",
              "parent_uuid": "a6fedfe4-cf44-4c8b-8855-22e2f89b2ff7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a1c03d2-34b0-4091-b25f-b1f42ed094ef",
                  "parent_uuid": "b7e9e058-5e0f-4816-85b3-862c1d8a3cbc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79dba44f-8019-4cc8-994d-578c9d5ca114",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfaf2e45-7cce-4848-b710-dbaa25a0e471",
              "parent_uuid": "79dba44f-8019-4cc8-994d-578c9d5ca114",
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
              "uuid": "fc665df6-77e8-4f69-bde6-6d729943baac",
              "parent_uuid": "79dba44f-8019-4cc8-994d-578c9d5ca114",
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
              "uuid": "b43e0ada-2b23-4060-a0e3-331b7ecadc58",
              "parent_uuid": "79dba44f-8019-4cc8-994d-578c9d5ca114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f97f22f5-48da-483b-b66d-c3d82a11ce0b",
                  "parent_uuid": "b43e0ada-2b23-4060-a0e3-331b7ecadc58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5665cf9-e278-42f0-8e82-e76e00da1e49",
              "parent_uuid": "79dba44f-8019-4cc8-994d-578c9d5ca114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "469e1158-a372-4af2-b0f6-643b02f0137d",
                  "parent_uuid": "a5665cf9-e278-42f0-8e82-e76e00da1e49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd89c518-1ba6-4243-9deb-8137726379ad",
              "parent_uuid": "79dba44f-8019-4cc8-994d-578c9d5ca114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9463d869-734b-45a5-aa36-11dac22cba23",
                  "parent_uuid": "bd89c518-1ba6-4243-9deb-8137726379ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cae0c6b-071f-4b80-ac80-8a24d59f7e34",
              "parent_uuid": "79dba44f-8019-4cc8-994d-578c9d5ca114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db5c619b-6fd7-4e2e-a63e-6613b72ad73a",
                  "parent_uuid": "3cae0c6b-071f-4b80-ac80-8a24d59f7e34",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "887161db-04b4-4643-bc81-a9092b8676eb",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10099662-782d-4cb9-9712-95d1a7f9d1b8",
              "parent_uuid": "887161db-04b4-4643-bc81-a9092b8676eb",
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
              "uuid": "aef3ab06-1509-4e65-a2c9-f8d67826eca1",
              "parent_uuid": "887161db-04b4-4643-bc81-a9092b8676eb",
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
              "uuid": "40e68514-120a-41cc-9b0d-2ee2f8494aea",
              "parent_uuid": "887161db-04b4-4643-bc81-a9092b8676eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1db57dd5-9edd-46bd-9842-3307db0ef7bf",
                  "parent_uuid": "40e68514-120a-41cc-9b0d-2ee2f8494aea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50ae0b7e-3d50-4e95-aead-bf5867b94d67",
              "parent_uuid": "887161db-04b4-4643-bc81-a9092b8676eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99db85bc-0568-4f99-bd81-fafdee88fa71",
                  "parent_uuid": "50ae0b7e-3d50-4e95-aead-bf5867b94d67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b8ba0ac-fa3b-4830-91e5-21958765e637",
              "parent_uuid": "887161db-04b4-4643-bc81-a9092b8676eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10f5c77d-da89-4cca-b52c-1d4a1a51e261",
                  "parent_uuid": "2b8ba0ac-fa3b-4830-91e5-21958765e637",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd506cf9-671c-441e-aa9b-8778be1c299f",
              "parent_uuid": "887161db-04b4-4643-bc81-a9092b8676eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ab4892d-9e00-4a8d-82e2-290513982c54",
                  "parent_uuid": "dd506cf9-671c-441e-aa9b-8778be1c299f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bcb49264-cd9c-4c0c-8ab1-33a3c315b663",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbe26979-ce46-481f-b2f1-2c6928b5882e",
              "parent_uuid": "bcb49264-cd9c-4c0c-8ab1-33a3c315b663",
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
              "uuid": "f9c6e255-5550-4a7d-8d95-40a2bbaf8398",
              "parent_uuid": "bcb49264-cd9c-4c0c-8ab1-33a3c315b663",
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
              "uuid": "386a642c-776d-4d69-a5c8-3364b1b2908e",
              "parent_uuid": "bcb49264-cd9c-4c0c-8ab1-33a3c315b663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67eb8a55-a2eb-4893-a040-1cfa34b2fe50",
                  "parent_uuid": "386a642c-776d-4d69-a5c8-3364b1b2908e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8bc1c03-f4a3-477a-9a51-6bce3aacfefc",
              "parent_uuid": "bcb49264-cd9c-4c0c-8ab1-33a3c315b663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec5c98fe-1ff1-46bd-a76e-91f0d4194f6d",
                  "parent_uuid": "a8bc1c03-f4a3-477a-9a51-6bce3aacfefc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcf7a6e4-6a2c-4063-a544-df1782bf6161",
              "parent_uuid": "bcb49264-cd9c-4c0c-8ab1-33a3c315b663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2c834f8-b9cb-4def-8acf-028cddc6b465",
                  "parent_uuid": "fcf7a6e4-6a2c-4063-a544-df1782bf6161",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84ab91ad-d1a6-44a9-a521-784a43d7fb3d",
              "parent_uuid": "bcb49264-cd9c-4c0c-8ab1-33a3c315b663",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c29b9588-8741-4588-9a5d-04369e56a5e5",
                  "parent_uuid": "84ab91ad-d1a6-44a9-a521-784a43d7fb3d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b7e6356-49c5-43f0-9309-92da3bfc696c",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13c2c74d-0d57-4313-835f-6c6dc87bed14",
              "parent_uuid": "8b7e6356-49c5-43f0-9309-92da3bfc696c",
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
              "uuid": "ecd5cd47-ac88-4822-8018-833463e2d091",
              "parent_uuid": "8b7e6356-49c5-43f0-9309-92da3bfc696c",
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
              "uuid": "95806dcf-ec60-4284-8542-27904e2a44b1",
              "parent_uuid": "8b7e6356-49c5-43f0-9309-92da3bfc696c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe5f050f-4908-4106-8377-2029332ff474",
                  "parent_uuid": "95806dcf-ec60-4284-8542-27904e2a44b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ede2080-0972-429d-9d53-f2fb300eb6a6",
              "parent_uuid": "8b7e6356-49c5-43f0-9309-92da3bfc696c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a13c501f-672a-4e15-b75e-19e2b8f3c64a",
                  "parent_uuid": "3ede2080-0972-429d-9d53-f2fb300eb6a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "633710b3-656f-4ec0-b984-fff0e6898624",
              "parent_uuid": "8b7e6356-49c5-43f0-9309-92da3bfc696c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4de59b0b-6d3e-4ca6-8600-8636e3922313",
                  "parent_uuid": "633710b3-656f-4ec0-b984-fff0e6898624",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68771205-4e53-4e9c-897c-e3a86a604749",
              "parent_uuid": "8b7e6356-49c5-43f0-9309-92da3bfc696c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c62bce8-b7f0-45d5-9711-5f7cd4f28a36",
                  "parent_uuid": "68771205-4e53-4e9c-897c-e3a86a604749",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6537077-96da-4a8b-be68-cb04595c24c6",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c858d180-cc56-45eb-a205-490cdd54538b",
              "parent_uuid": "d6537077-96da-4a8b-be68-cb04595c24c6",
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
              "uuid": "03283230-6730-4fc0-847f-b192ae997e46",
              "parent_uuid": "d6537077-96da-4a8b-be68-cb04595c24c6",
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
              "uuid": "1a95e52a-f1fd-425b-a6be-1a40501bfc2e",
              "parent_uuid": "d6537077-96da-4a8b-be68-cb04595c24c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a1a1e6a-0764-4841-8499-2a462e567372",
                  "parent_uuid": "1a95e52a-f1fd-425b-a6be-1a40501bfc2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3345cd88-43df-4d69-a966-d2bb17738eb5",
              "parent_uuid": "d6537077-96da-4a8b-be68-cb04595c24c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5227cf0-8189-4c21-94e1-89727b4e5e59",
                  "parent_uuid": "3345cd88-43df-4d69-a966-d2bb17738eb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61c8a957-9a6a-4779-8f9f-a308c267ed48",
              "parent_uuid": "d6537077-96da-4a8b-be68-cb04595c24c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bb8f9a6-192a-4613-aad2-37fdfa77b410",
                  "parent_uuid": "61c8a957-9a6a-4779-8f9f-a308c267ed48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "952214ed-4c00-4f33-8dba-d9eb8304764f",
              "parent_uuid": "d6537077-96da-4a8b-be68-cb04595c24c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cb36188-9cd5-4828-9467-5ac0eeda7648",
                  "parent_uuid": "952214ed-4c00-4f33-8dba-d9eb8304764f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5a072ddd-21b3-44c4-aeae-1a48c2e81c99",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46be28b7-a1bb-4de2-8e92-b665bc83571c",
              "parent_uuid": "5a072ddd-21b3-44c4-aeae-1a48c2e81c99",
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
              "uuid": "74643194-a88e-4c08-a111-13e505079329",
              "parent_uuid": "5a072ddd-21b3-44c4-aeae-1a48c2e81c99",
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
              "uuid": "8d703b88-72cb-4ba3-bad2-a6585c6ea339",
              "parent_uuid": "5a072ddd-21b3-44c4-aeae-1a48c2e81c99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "710a68be-5b6a-4c18-88b0-284607db7fc5",
                  "parent_uuid": "8d703b88-72cb-4ba3-bad2-a6585c6ea339",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46cc3861-13a5-4d11-9d70-f3e47b76baa2",
              "parent_uuid": "5a072ddd-21b3-44c4-aeae-1a48c2e81c99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0aae15a1-6a7b-4ed0-82d7-61bbab5b25a9",
                  "parent_uuid": "46cc3861-13a5-4d11-9d70-f3e47b76baa2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "124e8e6a-0d66-4e0a-b182-9985ef4385d6",
              "parent_uuid": "5a072ddd-21b3-44c4-aeae-1a48c2e81c99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cbf20ea-cd5f-456a-a443-ae9beff77a9b",
                  "parent_uuid": "124e8e6a-0d66-4e0a-b182-9985ef4385d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "793aafa6-5d27-44e8-b56a-2d9c92364040",
              "parent_uuid": "5a072ddd-21b3-44c4-aeae-1a48c2e81c99",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7a183a1-fb85-45aa-b324-a6338b52cd06",
                  "parent_uuid": "793aafa6-5d27-44e8-b56a-2d9c92364040",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bb167499-7657-416f-a6bf-b863dd9a5fa8",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ba57ba7-fe25-4979-a239-30578374b3f2",
              "parent_uuid": "bb167499-7657-416f-a6bf-b863dd9a5fa8",
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
              "uuid": "3893374a-892c-436e-ae71-6f299bbdbea3",
              "parent_uuid": "bb167499-7657-416f-a6bf-b863dd9a5fa8",
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
              "uuid": "36561331-74bc-4866-ba7e-d74bc0f479a2",
              "parent_uuid": "bb167499-7657-416f-a6bf-b863dd9a5fa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67648093-e08d-4bd0-bb1a-ce03def81aea",
                  "parent_uuid": "36561331-74bc-4866-ba7e-d74bc0f479a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86ccef90-21e8-4788-a324-32ea0a6e1321",
              "parent_uuid": "bb167499-7657-416f-a6bf-b863dd9a5fa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "564410a2-76a4-4e4d-bddc-72cfb6ca4321",
                  "parent_uuid": "86ccef90-21e8-4788-a324-32ea0a6e1321",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea6c8013-23c1-4bf4-b7d6-62e748b10507",
              "parent_uuid": "bb167499-7657-416f-a6bf-b863dd9a5fa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90a8c9c7-03e7-451c-ba5e-702d81af1d1a",
                  "parent_uuid": "ea6c8013-23c1-4bf4-b7d6-62e748b10507",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff538f48-9afd-4af6-95c1-ba136bdb449a",
              "parent_uuid": "bb167499-7657-416f-a6bf-b863dd9a5fa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e858b7ed-a0eb-49d0-b525-d29ae9e98d21",
                  "parent_uuid": "ff538f48-9afd-4af6-95c1-ba136bdb449a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a4d89f77-9dd0-428e-8d5c-d51362d3846c",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f66cc16-7e35-43b9-ac2a-f93a84fa7946",
              "parent_uuid": "a4d89f77-9dd0-428e-8d5c-d51362d3846c",
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
          "uuid": "a599a675-4483-44d0-87c7-9ae9c3b07641",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6663538d-c8db-4d9f-8968-4267b3024ed4",
              "parent_uuid": "a599a675-4483-44d0-87c7-9ae9c3b07641",
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
          "uuid": "2d7d7752-de95-467b-bb3c-7b8ca76a672e",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3203b745-31ce-43c4-9893-cf6027af2498",
              "parent_uuid": "2d7d7752-de95-467b-bb3c-7b8ca76a672e",
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
              "uuid": "698a8077-f0d2-4b1f-bd42-9510f7faec77",
              "parent_uuid": "2d7d7752-de95-467b-bb3c-7b8ca76a672e",
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
              "uuid": "70d0dafb-28d8-43fc-b423-008370aaa10c",
              "parent_uuid": "2d7d7752-de95-467b-bb3c-7b8ca76a672e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e14ebd41-9fb4-4d0e-a34e-0ecd9e83c69f",
                  "parent_uuid": "70d0dafb-28d8-43fc-b423-008370aaa10c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16881fa6-1d5b-4f6b-b390-3ffde161a141",
              "parent_uuid": "2d7d7752-de95-467b-bb3c-7b8ca76a672e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "907a18b9-adad-4035-99a4-67934f39d8fd",
                  "parent_uuid": "16881fa6-1d5b-4f6b-b390-3ffde161a141",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f70e7bf-e456-4beb-9699-f6e90b4114cd",
              "parent_uuid": "2d7d7752-de95-467b-bb3c-7b8ca76a672e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c11895c-ce46-4fe3-8768-9ab265e560aa",
                  "parent_uuid": "2f70e7bf-e456-4beb-9699-f6e90b4114cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e48bcd8-cc8f-4317-81e8-95392eabac52",
              "parent_uuid": "2d7d7752-de95-467b-bb3c-7b8ca76a672e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfe93c9c-7645-4597-b76d-d579a677acca",
                  "parent_uuid": "3e48bcd8-cc8f-4317-81e8-95392eabac52",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3f4e2def-65e1-4d71-9446-899816f908df",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c505051d-9a81-47ab-8efc-fd64875a7e55",
              "parent_uuid": "3f4e2def-65e1-4d71-9446-899816f908df",
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
              "uuid": "73d42ba3-cd3e-43fb-a34b-3f61c0c73033",
              "parent_uuid": "3f4e2def-65e1-4d71-9446-899816f908df",
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
              "uuid": "56c44b73-d4b8-4ac7-94ae-6e479f710323",
              "parent_uuid": "3f4e2def-65e1-4d71-9446-899816f908df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c624f6cd-3b08-4520-81af-1ebf038403f9",
                  "parent_uuid": "56c44b73-d4b8-4ac7-94ae-6e479f710323",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66575a00-228c-476a-a095-2636d4ca3bf6",
              "parent_uuid": "3f4e2def-65e1-4d71-9446-899816f908df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "348ff559-cd17-4c94-9ed6-1bd09f051fef",
                  "parent_uuid": "66575a00-228c-476a-a095-2636d4ca3bf6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d931ef3-84f3-4823-9096-31d4a5ef0e30",
              "parent_uuid": "3f4e2def-65e1-4d71-9446-899816f908df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13394f9c-b9fc-4203-baa4-d54b39387eb1",
                  "parent_uuid": "4d931ef3-84f3-4823-9096-31d4a5ef0e30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "312311c5-cc67-471b-836a-d966464b7cc3",
              "parent_uuid": "3f4e2def-65e1-4d71-9446-899816f908df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "891f25a9-cd18-412f-9ba0-e115fad5eb84",
                  "parent_uuid": "312311c5-cc67-471b-836a-d966464b7cc3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8192c39b-2a01-4139-996a-db98e2d32477",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aede4ac4-cbd4-4839-8b3b-fa4da45781be",
              "parent_uuid": "8192c39b-2a01-4139-996a-db98e2d32477",
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
              "uuid": "4242628f-b538-43cf-aade-cbffab516a7e",
              "parent_uuid": "8192c39b-2a01-4139-996a-db98e2d32477",
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
              "uuid": "b5fb6ed9-1f8b-4a03-a89b-29a10a673078",
              "parent_uuid": "8192c39b-2a01-4139-996a-db98e2d32477",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65560183-504d-4939-929b-84ac82e30407",
                  "parent_uuid": "b5fb6ed9-1f8b-4a03-a89b-29a10a673078",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0f9db03-a58f-4f9a-a2bc-b5c4a5886d74",
              "parent_uuid": "8192c39b-2a01-4139-996a-db98e2d32477",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14b09cbe-0d5e-499b-99ba-5c6ccdc33e42",
                  "parent_uuid": "b0f9db03-a58f-4f9a-a2bc-b5c4a5886d74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8abbbb8-a09a-4bc5-9b6c-bcfdb5a73394",
              "parent_uuid": "8192c39b-2a01-4139-996a-db98e2d32477",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00c3554d-1588-4517-99b8-5bf39adbb246",
                  "parent_uuid": "b8abbbb8-a09a-4bc5-9b6c-bcfdb5a73394",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b617cc38-c3de-4cc4-bb8d-632ff3e90af2",
              "parent_uuid": "8192c39b-2a01-4139-996a-db98e2d32477",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "614ed698-0648-4d06-98c8-1f62297f44ff",
                  "parent_uuid": "b617cc38-c3de-4cc4-bb8d-632ff3e90af2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2aefff2b-e8e8-40e2-816b-a895a57447a2",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "304ae902-723f-464f-b98a-d97d5784e9c9",
              "parent_uuid": "2aefff2b-e8e8-40e2-816b-a895a57447a2",
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
              "uuid": "a8799be5-6d28-427b-8786-180c800cc4b9",
              "parent_uuid": "2aefff2b-e8e8-40e2-816b-a895a57447a2",
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
              "uuid": "5b743cee-a514-4179-a7f6-61b6441ae1de",
              "parent_uuid": "2aefff2b-e8e8-40e2-816b-a895a57447a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d56ee20-bd9c-4f24-85cd-575037077329",
                  "parent_uuid": "5b743cee-a514-4179-a7f6-61b6441ae1de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ed688ab-391f-49eb-8aa1-8e12aa42a204",
              "parent_uuid": "2aefff2b-e8e8-40e2-816b-a895a57447a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ba5670c-4956-4123-8103-d4fc97a42768",
                  "parent_uuid": "9ed688ab-391f-49eb-8aa1-8e12aa42a204",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b21eb5ec-48ae-433b-a111-6da39a02d6df",
              "parent_uuid": "2aefff2b-e8e8-40e2-816b-a895a57447a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76b45937-454a-4223-94cc-8dc93015a7c7",
                  "parent_uuid": "b21eb5ec-48ae-433b-a111-6da39a02d6df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "215842bb-6bb5-4530-8f78-08fd1e7f13c3",
              "parent_uuid": "2aefff2b-e8e8-40e2-816b-a895a57447a2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccbb1652-8f90-4b31-97d2-97976086c4f5",
                  "parent_uuid": "215842bb-6bb5-4530-8f78-08fd1e7f13c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e96ac838-98f5-4942-accc-27df20cebfa5",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "17c3ae59-31a2-4b48-95bd-d598d98e451c",
              "parent_uuid": "e96ac838-98f5-4942-accc-27df20cebfa5",
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
              "uuid": "86364b8a-1d59-43f6-b483-d477e5cb9e56",
              "parent_uuid": "e96ac838-98f5-4942-accc-27df20cebfa5",
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
              "uuid": "0076cb4e-061b-4082-85fb-917b393af376",
              "parent_uuid": "e96ac838-98f5-4942-accc-27df20cebfa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad5c73bf-10cc-4388-9af5-121fc42fe491",
                  "parent_uuid": "0076cb4e-061b-4082-85fb-917b393af376",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe8560a3-2ffc-4e33-a977-2b2ffdc1bdc8",
              "parent_uuid": "e96ac838-98f5-4942-accc-27df20cebfa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c576e2cc-d471-482a-b10b-802209b8bc55",
                  "parent_uuid": "fe8560a3-2ffc-4e33-a977-2b2ffdc1bdc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7abc0abf-6943-412b-97a4-1b7ac72dad64",
              "parent_uuid": "e96ac838-98f5-4942-accc-27df20cebfa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "809d014d-394d-45df-8468-86787d0ba52d",
                  "parent_uuid": "7abc0abf-6943-412b-97a4-1b7ac72dad64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0d41bf1-3932-4932-94aa-e86dbe9e1497",
              "parent_uuid": "e96ac838-98f5-4942-accc-27df20cebfa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f6f7c81-7793-4e9a-ab40-05ede1ad9092",
                  "parent_uuid": "f0d41bf1-3932-4932-94aa-e86dbe9e1497",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d35c02ec-6d9f-4227-acea-76095ef3ac38",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "77499abd-8da0-4588-b9d7-31885c404f4c",
              "parent_uuid": "d35c02ec-6d9f-4227-acea-76095ef3ac38",
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
              "uuid": "75122ea5-bca4-4b37-898c-8402d85a96ab",
              "parent_uuid": "d35c02ec-6d9f-4227-acea-76095ef3ac38",
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
              "uuid": "04ea3eed-66ea-49a6-a10f-66e798eb5ab8",
              "parent_uuid": "d35c02ec-6d9f-4227-acea-76095ef3ac38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f044ceeb-65b8-42e6-9845-7b361809cd07",
                  "parent_uuid": "04ea3eed-66ea-49a6-a10f-66e798eb5ab8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bb8d9f5-d9f9-48ed-adeb-7e510ef65afb",
              "parent_uuid": "d35c02ec-6d9f-4227-acea-76095ef3ac38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a702da9-6e4b-4867-b339-28fe6739726f",
                  "parent_uuid": "9bb8d9f5-d9f9-48ed-adeb-7e510ef65afb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3162a50a-9fe6-460a-94ee-94e0688b0ede",
              "parent_uuid": "d35c02ec-6d9f-4227-acea-76095ef3ac38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ad8023e-0bf3-4b33-b33e-7ef2069f7794",
                  "parent_uuid": "3162a50a-9fe6-460a-94ee-94e0688b0ede",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c7ee6f8-acde-4466-9906-0b7676d1be11",
              "parent_uuid": "d35c02ec-6d9f-4227-acea-76095ef3ac38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12e2795b-3bbd-46c3-8662-59025fe09b52",
                  "parent_uuid": "6c7ee6f8-acde-4466-9906-0b7676d1be11",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "42c5bf21-957b-4d05-b343-62e39eb4bc8f",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "76e04e1a-15d8-46d3-a49f-414d313ed6fe",
              "parent_uuid": "42c5bf21-957b-4d05-b343-62e39eb4bc8f",
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
              "uuid": "44c2ec2d-295e-4532-b38a-8c92f6dfaa50",
              "parent_uuid": "42c5bf21-957b-4d05-b343-62e39eb4bc8f",
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
              "uuid": "3b39f3a1-7428-44c3-946e-e2090956282e",
              "parent_uuid": "42c5bf21-957b-4d05-b343-62e39eb4bc8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "460684d9-e05f-423b-b400-009d85a0f508",
                  "parent_uuid": "3b39f3a1-7428-44c3-946e-e2090956282e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8cf11ce-6f7b-4f90-9622-37b098e7ba16",
              "parent_uuid": "42c5bf21-957b-4d05-b343-62e39eb4bc8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da0826bd-8123-48a6-99d1-3c65d89582bf",
                  "parent_uuid": "e8cf11ce-6f7b-4f90-9622-37b098e7ba16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a90d62c8-25f4-4c82-88be-dd6121c19b43",
              "parent_uuid": "42c5bf21-957b-4d05-b343-62e39eb4bc8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e9e83a7-cd9e-4247-b46d-1acc8fc6b281",
                  "parent_uuid": "a90d62c8-25f4-4c82-88be-dd6121c19b43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44721354-7174-4fb1-a261-dce7c4458767",
              "parent_uuid": "42c5bf21-957b-4d05-b343-62e39eb4bc8f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05606071-3670-4ab8-b90c-727cab8d9c70",
                  "parent_uuid": "44721354-7174-4fb1-a261-dce7c4458767",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "21ceac83-e240-47cf-9206-15fa7e5b94b9",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08031469-37cb-4411-8608-5388c0a604af",
              "parent_uuid": "21ceac83-e240-47cf-9206-15fa7e5b94b9",
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
              "uuid": "9dd8a47c-288b-4698-b160-3ea0352b9cc4",
              "parent_uuid": "21ceac83-e240-47cf-9206-15fa7e5b94b9",
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
              "uuid": "737a681d-a1c6-40fa-b452-7147e4dbfe34",
              "parent_uuid": "21ceac83-e240-47cf-9206-15fa7e5b94b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "935663c5-f215-4f3d-bc0e-c552368c63fa",
                  "parent_uuid": "737a681d-a1c6-40fa-b452-7147e4dbfe34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0588a93-2191-44ab-9b0c-522a53a79127",
              "parent_uuid": "21ceac83-e240-47cf-9206-15fa7e5b94b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "589ad8e5-5830-4ed1-b408-b146b1c96454",
                  "parent_uuid": "c0588a93-2191-44ab-9b0c-522a53a79127",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67613706-8a44-4c35-87d7-4588bb21faf9",
              "parent_uuid": "21ceac83-e240-47cf-9206-15fa7e5b94b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14d4fc00-c2b0-47bb-8e8c-8585f72fe01e",
                  "parent_uuid": "67613706-8a44-4c35-87d7-4588bb21faf9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1acb848c-6193-4a40-a9ef-6604bf3e0b3e",
              "parent_uuid": "21ceac83-e240-47cf-9206-15fa7e5b94b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b25f50a1-8725-482a-a5f3-8ebd769d1a38",
                  "parent_uuid": "1acb848c-6193-4a40-a9ef-6604bf3e0b3e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14e9f368-dcdd-4d6a-b4c9-ec9a0db104e8",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2b331ceb-4dc0-48f4-9de7-03a4478c4037",
              "parent_uuid": "14e9f368-dcdd-4d6a-b4c9-ec9a0db104e8",
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
          "uuid": "6632fa14-6464-49e1-9b9b-e9253a6732d2",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5acdd28a-a9f8-43cc-8444-0173b27d1bde",
              "parent_uuid": "6632fa14-6464-49e1-9b9b-e9253a6732d2",
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
              "uuid": "1a1a3a39-3688-4d5b-9c9f-96a729685f3a",
              "parent_uuid": "6632fa14-6464-49e1-9b9b-e9253a6732d2",
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
              "uuid": "2160baf0-0469-4ab6-997e-e7e5a868b305",
              "parent_uuid": "6632fa14-6464-49e1-9b9b-e9253a6732d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1afb9df2-532a-4977-9869-64d14eb70da4",
                  "parent_uuid": "2160baf0-0469-4ab6-997e-e7e5a868b305",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4f1f958-8269-444b-9dd0-e0126b448b89",
              "parent_uuid": "6632fa14-6464-49e1-9b9b-e9253a6732d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b3b3ea7-e86d-4e6d-bd4f-d36114e4a302",
                  "parent_uuid": "a4f1f958-8269-444b-9dd0-e0126b448b89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bbef024-ea2e-46f5-a505-2d0e0bddc8d2",
              "parent_uuid": "6632fa14-6464-49e1-9b9b-e9253a6732d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ec1a349-4526-414d-a460-793c0e20647b",
                  "parent_uuid": "5bbef024-ea2e-46f5-a505-2d0e0bddc8d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ad0956f-3752-4eec-b264-10d1753c0e0d",
              "parent_uuid": "6632fa14-6464-49e1-9b9b-e9253a6732d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a63444ee-0ae0-4fbf-bce1-4de35f719101",
                  "parent_uuid": "4ad0956f-3752-4eec-b264-10d1753c0e0d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9418fcde-5942-4e04-97e8-fd9b8342da46",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e07f251-0851-44c2-81c6-01937e6bc279",
              "parent_uuid": "9418fcde-5942-4e04-97e8-fd9b8342da46",
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
              "uuid": "3b68683a-003e-4fab-8852-acbcb4e04649",
              "parent_uuid": "9418fcde-5942-4e04-97e8-fd9b8342da46",
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
              "uuid": "25983300-9efb-4c74-9e34-7c27b98d816e",
              "parent_uuid": "9418fcde-5942-4e04-97e8-fd9b8342da46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39d518d5-bbed-4f27-8e95-831678b9d695",
                  "parent_uuid": "25983300-9efb-4c74-9e34-7c27b98d816e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d961a57-2007-4a2d-8f95-2c00a3b66486",
              "parent_uuid": "9418fcde-5942-4e04-97e8-fd9b8342da46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c633d44-f4cf-43f2-ba92-371558afe045",
                  "parent_uuid": "0d961a57-2007-4a2d-8f95-2c00a3b66486",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c8cb0f9-d955-4ab4-86be-291799a35616",
              "parent_uuid": "9418fcde-5942-4e04-97e8-fd9b8342da46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1442748e-6d42-4fdf-95b9-2e314222c42b",
                  "parent_uuid": "2c8cb0f9-d955-4ab4-86be-291799a35616",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5f62fac-0cc6-4ca5-a4f7-4bf91f59ccab",
              "parent_uuid": "9418fcde-5942-4e04-97e8-fd9b8342da46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90526ad1-0035-4ed0-b39a-21a3786f7933",
                  "parent_uuid": "c5f62fac-0cc6-4ca5-a4f7-4bf91f59ccab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "011aad58-0103-4ae1-8967-a851577ba2cf",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7ec7043-46fe-4fa4-b39c-4983b49c6244",
              "parent_uuid": "011aad58-0103-4ae1-8967-a851577ba2cf",
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
          "uuid": "3623e664-ad67-4a3e-b88c-8441a04b5b79",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11c3e77c-94b9-4b53-bc3c-0aad34075dbf",
              "parent_uuid": "3623e664-ad67-4a3e-b88c-8441a04b5b79",
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
          "uuid": "3a19a466-bc61-4ad8-8620-cde3839dbac2",
          "parent_uuid": "2606f128-cbfc-42f5-9d81-86f8858c8e4e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3402e11f-7e3f-46aa-bc20-e647aceaf088",
              "parent_uuid": "3a19a466-bc61-4ad8-8620-cde3839dbac2",
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
                  "uuid": "eb17af1c-cc74-4218-8335-d706a990ab46",
                  "parent_uuid": "3402e11f-7e3f-46aa-bc20-e647aceaf088",
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

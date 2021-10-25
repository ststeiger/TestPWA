
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
  "uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "2c395fdd-4120-46e3-9ef5-f459ba5795b2",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "8172ebad-27d6-4d82-a489-6333792a105b",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "09e7820a-289a-4e90-8c89-aef8a67cbf96",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "7868a935-81c5-4ca9-b561-35a7b8438742",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "a0bfeaf4-8bfd-48de-b452-e48cf77bc208",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "c6eb2969-5726-4bbc-adb8-21bce27e78c5",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "b1edc0c9-58f0-4021-8df0-b8c7d0cc2f12",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
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
      "uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
      "parent_uuid": "a9065ee4-fe51-40c2-aa43-636463c0e814",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6a972e24-8523-4959-9f6e-2b200bcf5fbd",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a680b827-9c20-4620-ba41-95edfbfad4a9",
              "parent_uuid": "6a972e24-8523-4959-9f6e-2b200bcf5fbd",
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
              "uuid": "71d8af70-7171-439e-891a-25e211600841",
              "parent_uuid": "6a972e24-8523-4959-9f6e-2b200bcf5fbd",
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
              "uuid": "af3c11da-8a97-4aa9-a85e-c2f23ff209b8",
              "parent_uuid": "6a972e24-8523-4959-9f6e-2b200bcf5fbd",
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
              "uuid": "2c1e061a-c193-435d-9d10-d622cbc7bf42",
              "parent_uuid": "6a972e24-8523-4959-9f6e-2b200bcf5fbd",
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
          "uuid": "e3ace967-0364-4b7c-ab6f-d9e20402d884",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a3772dac-4004-45e6-8e73-e900316f784d",
              "parent_uuid": "e3ace967-0364-4b7c-ab6f-d9e20402d884",
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
              "uuid": "66592e7e-bda3-47ed-9f30-029728543aa2",
              "parent_uuid": "e3ace967-0364-4b7c-ab6f-d9e20402d884",
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
              "uuid": "d9e3a702-9dd9-474d-ae05-00fcd831db6e",
              "parent_uuid": "e3ace967-0364-4b7c-ab6f-d9e20402d884",
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
              "uuid": "22a25c0e-7ce0-4341-8b7a-0f8bf245aa13",
              "parent_uuid": "e3ace967-0364-4b7c-ab6f-d9e20402d884",
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
          "uuid": "40312f7e-2b6b-45cc-88f4-387d451aa5b7",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b81d822-70d8-4d6e-8440-4e908374fa85",
              "parent_uuid": "40312f7e-2b6b-45cc-88f4-387d451aa5b7",
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
              "uuid": "8a9e3220-ac97-429f-bc8c-4ebd4e663c01",
              "parent_uuid": "40312f7e-2b6b-45cc-88f4-387d451aa5b7",
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
              "uuid": "ffa4713e-a6c2-47d7-9c30-621a3dfeecf0",
              "parent_uuid": "40312f7e-2b6b-45cc-88f4-387d451aa5b7",
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
              "uuid": "dcfb16b4-ea12-4267-8d9f-f456f36b5342",
              "parent_uuid": "40312f7e-2b6b-45cc-88f4-387d451aa5b7",
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
              "uuid": "757981f9-5014-446e-91db-eeab338b7a5b",
              "parent_uuid": "40312f7e-2b6b-45cc-88f4-387d451aa5b7",
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
              "uuid": "a64318c0-9bb2-4685-be20-ea0abda621fc",
              "parent_uuid": "40312f7e-2b6b-45cc-88f4-387d451aa5b7",
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
          "uuid": "3190d9b8-0972-46cd-bc96-5bffc892830d",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4c88e32d-0cba-4968-b8fb-835245437552",
              "parent_uuid": "3190d9b8-0972-46cd-bc96-5bffc892830d",
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
          "uuid": "2b69b493-23bf-4606-a5c4-60be746d7a14",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01d712e2-ce87-47b3-9545-7b50add4cd7a",
              "parent_uuid": "2b69b493-23bf-4606-a5c4-60be746d7a14",
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
              "uuid": "d5d30212-05c8-4f2b-8385-7e6c9dfe6d99",
              "parent_uuid": "2b69b493-23bf-4606-a5c4-60be746d7a14",
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
              "uuid": "0d877853-1e75-4e95-8e80-47581abfc0e7",
              "parent_uuid": "2b69b493-23bf-4606-a5c4-60be746d7a14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40201479-f69e-4855-86f7-0f4104514924",
                  "parent_uuid": "0d877853-1e75-4e95-8e80-47581abfc0e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d075aa11-e857-4e8b-87ac-772ed4eac90f",
              "parent_uuid": "2b69b493-23bf-4606-a5c4-60be746d7a14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04264b9d-076c-4131-a9a1-374c19b6a7e6",
                  "parent_uuid": "d075aa11-e857-4e8b-87ac-772ed4eac90f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d643db7a-6cae-4b76-9f7c-42d2fb24077f",
              "parent_uuid": "2b69b493-23bf-4606-a5c4-60be746d7a14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb7d39d3-59a3-4ad2-978b-89a6ea20f15b",
                  "parent_uuid": "d643db7a-6cae-4b76-9f7c-42d2fb24077f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce8bbc16-60d9-4747-b361-c1d8ed0e3e09",
              "parent_uuid": "2b69b493-23bf-4606-a5c4-60be746d7a14",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd965316-ea9a-4bb9-9c8c-09b5983e469c",
                  "parent_uuid": "ce8bbc16-60d9-4747-b361-c1d8ed0e3e09",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0bf15359-d8b5-4ee1-88aa-0011b9bbeb8e",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfdc878c-07d6-4d48-a13b-6eed05898f35",
              "parent_uuid": "0bf15359-d8b5-4ee1-88aa-0011b9bbeb8e",
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
              "uuid": "8845f1e0-ab7e-47cb-8430-461106268507",
              "parent_uuid": "0bf15359-d8b5-4ee1-88aa-0011b9bbeb8e",
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
              "uuid": "1523bd13-ddc1-4c38-99ec-ba029fa3a557",
              "parent_uuid": "0bf15359-d8b5-4ee1-88aa-0011b9bbeb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1dc0b89e-19db-4ea3-908c-7c1a793e8c96",
                  "parent_uuid": "1523bd13-ddc1-4c38-99ec-ba029fa3a557",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad949866-a21d-4ef4-b3e4-867a51d8d372",
              "parent_uuid": "0bf15359-d8b5-4ee1-88aa-0011b9bbeb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0510efa-cb6e-4d22-b904-a87666b24274",
                  "parent_uuid": "ad949866-a21d-4ef4-b3e4-867a51d8d372",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "252c6af6-73c5-4091-a1d6-0c209c5efcd0",
              "parent_uuid": "0bf15359-d8b5-4ee1-88aa-0011b9bbeb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "585a534f-52a0-4d83-aef0-6d71c03f55e4",
                  "parent_uuid": "252c6af6-73c5-4091-a1d6-0c209c5efcd0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5380eb8-c90e-4575-8727-ac669cf34f50",
              "parent_uuid": "0bf15359-d8b5-4ee1-88aa-0011b9bbeb8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aac9a896-c04b-4ed1-a638-bd50354ecedd",
                  "parent_uuid": "c5380eb8-c90e-4575-8727-ac669cf34f50",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c96bba64-47f5-4d24-98d7-5502f80b34e9",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1811bd0f-3e88-435c-9dad-795501a0cb6e",
              "parent_uuid": "c96bba64-47f5-4d24-98d7-5502f80b34e9",
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
              "uuid": "47539ead-9f49-4483-9880-95c7a2e1e7a6",
              "parent_uuid": "c96bba64-47f5-4d24-98d7-5502f80b34e9",
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
              "uuid": "5bb84ea5-527d-4e20-9e4d-5252fa5a068d",
              "parent_uuid": "c96bba64-47f5-4d24-98d7-5502f80b34e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c2bce35-96e9-4f3f-b99c-f3b507100e48",
                  "parent_uuid": "5bb84ea5-527d-4e20-9e4d-5252fa5a068d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "005dc00e-e2cf-48ca-96f1-d02f468b5948",
              "parent_uuid": "c96bba64-47f5-4d24-98d7-5502f80b34e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50f2e497-fc50-428c-a60e-e164baa2a773",
                  "parent_uuid": "005dc00e-e2cf-48ca-96f1-d02f468b5948",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f83a930-ab6a-4d5f-9209-2962455d19b1",
              "parent_uuid": "c96bba64-47f5-4d24-98d7-5502f80b34e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5aa7139-6267-449f-94fd-50f2539d48da",
                  "parent_uuid": "5f83a930-ab6a-4d5f-9209-2962455d19b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d12921d-f027-4b11-8aaa-29523e07cc3d",
              "parent_uuid": "c96bba64-47f5-4d24-98d7-5502f80b34e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc52b0eb-cb80-4741-aa1a-33c4cbae8048",
                  "parent_uuid": "5d12921d-f027-4b11-8aaa-29523e07cc3d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b11c02bc-b108-40d4-b109-5177ee4936c3",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e25ef2be-b99c-4c20-99b7-f4e4a77b7bcb",
              "parent_uuid": "b11c02bc-b108-40d4-b109-5177ee4936c3",
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
              "uuid": "7c559493-9f4e-4669-b0ae-e783d91ec071",
              "parent_uuid": "b11c02bc-b108-40d4-b109-5177ee4936c3",
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
              "uuid": "e130ba75-d776-4778-87b1-f86d6e3efbb6",
              "parent_uuid": "b11c02bc-b108-40d4-b109-5177ee4936c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de3f7e04-ee83-48a6-bdd9-229d6bdcb611",
                  "parent_uuid": "e130ba75-d776-4778-87b1-f86d6e3efbb6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89c2c3c3-13c1-4cf7-907d-b202a11f8fe0",
              "parent_uuid": "b11c02bc-b108-40d4-b109-5177ee4936c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44e779ab-9cca-4e47-ab33-2b98e3a77d12",
                  "parent_uuid": "89c2c3c3-13c1-4cf7-907d-b202a11f8fe0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e97d435f-2d7c-4589-899c-166b911be6f1",
              "parent_uuid": "b11c02bc-b108-40d4-b109-5177ee4936c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec52ce6d-a66a-4654-a211-efbcf2c50894",
                  "parent_uuid": "e97d435f-2d7c-4589-899c-166b911be6f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e55d7dd-6283-40f6-bc40-e4368f6a50f5",
              "parent_uuid": "b11c02bc-b108-40d4-b109-5177ee4936c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f026099-6fc8-4f40-9dbb-2ebc8f220f37",
                  "parent_uuid": "4e55d7dd-6283-40f6-bc40-e4368f6a50f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e22772a-ab13-4605-96d4-9eccb4e74868",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f1bf020-6b3a-4a69-bbad-8a0f637c2ec5",
              "parent_uuid": "4e22772a-ab13-4605-96d4-9eccb4e74868",
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
              "uuid": "1f613ec0-a249-4dd2-8781-8851a01f53f5",
              "parent_uuid": "4e22772a-ab13-4605-96d4-9eccb4e74868",
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
              "uuid": "d5b6d191-6396-4dc3-8e71-fe27cd2eded9",
              "parent_uuid": "4e22772a-ab13-4605-96d4-9eccb4e74868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4edea44-e0b5-4e24-b81c-4c3d0366967e",
                  "parent_uuid": "d5b6d191-6396-4dc3-8e71-fe27cd2eded9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22a59741-ba40-4aee-ae6a-5709e0d36d55",
              "parent_uuid": "4e22772a-ab13-4605-96d4-9eccb4e74868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dc4b0ca-032e-407e-a487-5aa88172b42c",
                  "parent_uuid": "22a59741-ba40-4aee-ae6a-5709e0d36d55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ae3cf5f-7d79-4b58-81e8-e742749b074e",
              "parent_uuid": "4e22772a-ab13-4605-96d4-9eccb4e74868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b148356b-0419-4af8-b3d1-57ecb3cc1ce9",
                  "parent_uuid": "2ae3cf5f-7d79-4b58-81e8-e742749b074e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f6bae92-761e-4cec-bd8e-965bf37d3000",
              "parent_uuid": "4e22772a-ab13-4605-96d4-9eccb4e74868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4092eb9b-32ab-4bad-9e0d-262db8470b59",
                  "parent_uuid": "0f6bae92-761e-4cec-bd8e-965bf37d3000",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5e4c7252-18fa-451d-b68f-7ce898c555bd",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b967650a-8274-4dd2-93a5-2e5941c36fb9",
              "parent_uuid": "5e4c7252-18fa-451d-b68f-7ce898c555bd",
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
              "uuid": "bccbd3a4-3e4b-4600-8485-35ce979064df",
              "parent_uuid": "5e4c7252-18fa-451d-b68f-7ce898c555bd",
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
              "uuid": "e1ab7ddf-f7f1-4cfd-b881-e64092c83339",
              "parent_uuid": "5e4c7252-18fa-451d-b68f-7ce898c555bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be877119-1f50-4080-8392-86d3804bf1e2",
                  "parent_uuid": "e1ab7ddf-f7f1-4cfd-b881-e64092c83339",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "062efc27-7332-40ae-847c-e6a5de16d797",
              "parent_uuid": "5e4c7252-18fa-451d-b68f-7ce898c555bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e911f1a6-cf02-49d1-8c4a-2ed087eb360d",
                  "parent_uuid": "062efc27-7332-40ae-847c-e6a5de16d797",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8a05cac-1dc6-44e8-a56f-67db9234fb95",
              "parent_uuid": "5e4c7252-18fa-451d-b68f-7ce898c555bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20277c7c-aaf1-40c8-af0e-0736f6722cf2",
                  "parent_uuid": "c8a05cac-1dc6-44e8-a56f-67db9234fb95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "939b83aa-ff76-428e-8b2a-59d639dae814",
              "parent_uuid": "5e4c7252-18fa-451d-b68f-7ce898c555bd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2af3770d-f1aa-40ca-9e44-5154e33d4aec",
                  "parent_uuid": "939b83aa-ff76-428e-8b2a-59d639dae814",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bd9c60e1-2baa-42a8-9f7b-3ec659f2b86c",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d64b652a-fbb3-45f8-b371-526f00d7f393",
              "parent_uuid": "bd9c60e1-2baa-42a8-9f7b-3ec659f2b86c",
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
              "uuid": "5d5996c8-17fe-450a-b3fb-336fba00de36",
              "parent_uuid": "bd9c60e1-2baa-42a8-9f7b-3ec659f2b86c",
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
              "uuid": "0eab1db6-c2fc-4b31-a574-10447e117724",
              "parent_uuid": "bd9c60e1-2baa-42a8-9f7b-3ec659f2b86c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2e51431-3d16-470f-af07-bb731efab27f",
                  "parent_uuid": "0eab1db6-c2fc-4b31-a574-10447e117724",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fae664be-ef1f-4688-8bce-27446bc7d4b3",
              "parent_uuid": "bd9c60e1-2baa-42a8-9f7b-3ec659f2b86c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bdcd90de-7b20-41b3-8937-09097e67e60b",
                  "parent_uuid": "fae664be-ef1f-4688-8bce-27446bc7d4b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86478567-2038-4f5d-9988-991c2373936f",
              "parent_uuid": "bd9c60e1-2baa-42a8-9f7b-3ec659f2b86c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "584f3e85-2f73-4669-8255-09966b3a5ac7",
                  "parent_uuid": "86478567-2038-4f5d-9988-991c2373936f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88e6de2b-b0b2-41c5-a12b-e963e331f3b1",
              "parent_uuid": "bd9c60e1-2baa-42a8-9f7b-3ec659f2b86c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "769a13ed-a9e6-414e-b353-1a8f90aaa913",
                  "parent_uuid": "88e6de2b-b0b2-41c5-a12b-e963e331f3b1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4021424d-8562-476d-ad04-55bba64d0b47",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce0db8f3-ffdf-4269-ab2f-1680ac7eea09",
              "parent_uuid": "4021424d-8562-476d-ad04-55bba64d0b47",
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
              "uuid": "78f91e71-8b36-4773-90d4-c03866fead2b",
              "parent_uuid": "4021424d-8562-476d-ad04-55bba64d0b47",
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
              "uuid": "cebb5848-b60b-490d-8eb4-114e705efed0",
              "parent_uuid": "4021424d-8562-476d-ad04-55bba64d0b47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "598f3597-ff70-4ac7-8d89-49a0de371ec7",
                  "parent_uuid": "cebb5848-b60b-490d-8eb4-114e705efed0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0b354e2-ccfd-4235-8180-788f73c2a407",
              "parent_uuid": "4021424d-8562-476d-ad04-55bba64d0b47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f79e4878-816e-4c12-96ad-ba27452376fa",
                  "parent_uuid": "a0b354e2-ccfd-4235-8180-788f73c2a407",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21e09dea-013a-4f56-bb94-186728c6c172",
              "parent_uuid": "4021424d-8562-476d-ad04-55bba64d0b47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1569188c-ad71-4fcd-8289-9dc8cac5d3fe",
                  "parent_uuid": "21e09dea-013a-4f56-bb94-186728c6c172",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed8ce5f3-fd41-451b-a393-6b9489c317a4",
              "parent_uuid": "4021424d-8562-476d-ad04-55bba64d0b47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a5083a4-ec40-4fbb-9f05-c46edaae6da1",
                  "parent_uuid": "ed8ce5f3-fd41-451b-a393-6b9489c317a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "83dab9c8-8e64-4f5b-8c67-c24e3b2b3321",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be8dc5a2-d292-40b1-8918-01809a97b7f0",
              "parent_uuid": "83dab9c8-8e64-4f5b-8c67-c24e3b2b3321",
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
              "uuid": "62c8cd9c-aa94-45bc-82e2-6d7f8e4067f1",
              "parent_uuid": "83dab9c8-8e64-4f5b-8c67-c24e3b2b3321",
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
              "uuid": "ad3ab17a-b758-4e92-ae90-33c80c0ebb41",
              "parent_uuid": "83dab9c8-8e64-4f5b-8c67-c24e3b2b3321",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8023b73c-df2c-4fd2-9d67-023497959fe6",
                  "parent_uuid": "ad3ab17a-b758-4e92-ae90-33c80c0ebb41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42a71c85-e748-40ef-8704-6d9068509776",
              "parent_uuid": "83dab9c8-8e64-4f5b-8c67-c24e3b2b3321",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77d12358-e3b2-494c-8ca9-7c68b663b407",
                  "parent_uuid": "42a71c85-e748-40ef-8704-6d9068509776",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e75cf57-d828-4fa0-9093-12b12e67690f",
              "parent_uuid": "83dab9c8-8e64-4f5b-8c67-c24e3b2b3321",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2591b89d-2ce3-459c-b742-af2f30aee0cc",
                  "parent_uuid": "4e75cf57-d828-4fa0-9093-12b12e67690f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e34219d-7bab-49bc-8f6f-aa45d4cfd799",
              "parent_uuid": "83dab9c8-8e64-4f5b-8c67-c24e3b2b3321",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9d7ff29-9afc-4d6a-ae4a-95b62e8995b5",
                  "parent_uuid": "6e34219d-7bab-49bc-8f6f-aa45d4cfd799",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ccc1f9e0-f839-4d44-9f44-f68a2779b304",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98e7580b-a58a-4b87-bf02-aafa84427deb",
              "parent_uuid": "ccc1f9e0-f839-4d44-9f44-f68a2779b304",
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
              "uuid": "c13d1401-b741-45a9-bf96-9c9b02a0a4e0",
              "parent_uuid": "ccc1f9e0-f839-4d44-9f44-f68a2779b304",
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
              "uuid": "6b2951c1-c94e-45de-8c93-3ac406871467",
              "parent_uuid": "ccc1f9e0-f839-4d44-9f44-f68a2779b304",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5971a449-d76c-463b-8fcf-8a7bd6183987",
                  "parent_uuid": "6b2951c1-c94e-45de-8c93-3ac406871467",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf4751fa-6469-4aa3-a4d9-d4fe0d1b52d9",
              "parent_uuid": "ccc1f9e0-f839-4d44-9f44-f68a2779b304",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b32d6a78-2db7-4087-920f-a65afe53565d",
                  "parent_uuid": "cf4751fa-6469-4aa3-a4d9-d4fe0d1b52d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04ec32c3-c68e-4350-98e9-8960d2f5cdb8",
              "parent_uuid": "ccc1f9e0-f839-4d44-9f44-f68a2779b304",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e2001bb-d78f-4d08-a4f8-c5f49c515df4",
                  "parent_uuid": "04ec32c3-c68e-4350-98e9-8960d2f5cdb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4de81ff-aab5-48e3-becb-96a6c498c88b",
              "parent_uuid": "ccc1f9e0-f839-4d44-9f44-f68a2779b304",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96ba001d-801f-4d12-b75a-ca3538bbe7f4",
                  "parent_uuid": "e4de81ff-aab5-48e3-becb-96a6c498c88b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "187578fc-130b-4035-b970-47d78598da1f",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49a5f684-20eb-4b54-ac5a-a50fbbe64aaf",
              "parent_uuid": "187578fc-130b-4035-b970-47d78598da1f",
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
              "uuid": "af5e736c-7698-4cf0-8bbc-fc1d901158b0",
              "parent_uuid": "187578fc-130b-4035-b970-47d78598da1f",
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
              "uuid": "f9245d06-b0b1-480d-a5c9-d2bd5e977e0e",
              "parent_uuid": "187578fc-130b-4035-b970-47d78598da1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5bfe3d1-c44d-4991-a2e7-a1e374b7f043",
                  "parent_uuid": "f9245d06-b0b1-480d-a5c9-d2bd5e977e0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e25ad246-8053-44ec-b9cf-36e0cc0af492",
              "parent_uuid": "187578fc-130b-4035-b970-47d78598da1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14db49d4-eec0-4736-aab9-100b21f61e0b",
                  "parent_uuid": "e25ad246-8053-44ec-b9cf-36e0cc0af492",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6805d786-d587-4950-b5ad-72ad06bd82ee",
              "parent_uuid": "187578fc-130b-4035-b970-47d78598da1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f8bd93f-5a10-4799-8e32-64cc7b3b3f9a",
                  "parent_uuid": "6805d786-d587-4950-b5ad-72ad06bd82ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e4b321b-6e05-48b1-a3e7-cfbb2a6b6b47",
              "parent_uuid": "187578fc-130b-4035-b970-47d78598da1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73fa5ff3-787c-43ff-a129-da6fddf02400",
                  "parent_uuid": "9e4b321b-6e05-48b1-a3e7-cfbb2a6b6b47",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fa06e423-0ca7-4819-8f66-833278d56c5f",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "73d89041-69ed-4b8f-8eca-4bdb487b60e3",
              "parent_uuid": "fa06e423-0ca7-4819-8f66-833278d56c5f",
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
              "uuid": "c0c86393-910c-45a0-a958-16fa33be0038",
              "parent_uuid": "fa06e423-0ca7-4819-8f66-833278d56c5f",
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
              "uuid": "c35bfa6d-c7c6-4576-b344-45923fba9a15",
              "parent_uuid": "fa06e423-0ca7-4819-8f66-833278d56c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9cdc0dec-8c50-43b3-b2fe-95a1e8ec61d7",
                  "parent_uuid": "c35bfa6d-c7c6-4576-b344-45923fba9a15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "039ba75e-7bfc-4541-ac72-966ad02a372a",
              "parent_uuid": "fa06e423-0ca7-4819-8f66-833278d56c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71fb7df0-d29c-4ef9-950c-5f508587a6d5",
                  "parent_uuid": "039ba75e-7bfc-4541-ac72-966ad02a372a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12a181ff-b752-4f4b-b6ae-c73a83ee8420",
              "parent_uuid": "fa06e423-0ca7-4819-8f66-833278d56c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "285e6d4c-6508-400d-a874-9f0da0b3cceb",
                  "parent_uuid": "12a181ff-b752-4f4b-b6ae-c73a83ee8420",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc83cbcb-abc2-4144-a982-f3139c37000b",
              "parent_uuid": "fa06e423-0ca7-4819-8f66-833278d56c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7e65701-b680-4624-827b-ed55ae7a2786",
                  "parent_uuid": "bc83cbcb-abc2-4144-a982-f3139c37000b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "085d6124-410c-458e-b801-49089cd78d23",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7333dfe1-f348-4f91-b177-92176c18f175",
              "parent_uuid": "085d6124-410c-458e-b801-49089cd78d23",
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
              "uuid": "7700d812-785d-439c-bfc0-5732614440a0",
              "parent_uuid": "085d6124-410c-458e-b801-49089cd78d23",
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
              "uuid": "0d167641-af0a-4091-a03f-299e275f4090",
              "parent_uuid": "085d6124-410c-458e-b801-49089cd78d23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a81495de-82f3-42a8-9a5f-46921853dd6d",
                  "parent_uuid": "0d167641-af0a-4091-a03f-299e275f4090",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b98bb2b1-c1c8-4654-8d44-2b7e3a7821c5",
              "parent_uuid": "085d6124-410c-458e-b801-49089cd78d23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21e9ce7b-e3e6-4ad8-8dd6-0c022e27abad",
                  "parent_uuid": "b98bb2b1-c1c8-4654-8d44-2b7e3a7821c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a70fab00-0a7b-4516-affd-a69064d272b4",
              "parent_uuid": "085d6124-410c-458e-b801-49089cd78d23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "397209e9-9d3b-4c60-a1db-6f5d6d1fb72d",
                  "parent_uuid": "a70fab00-0a7b-4516-affd-a69064d272b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2b02079-503f-4f98-96f2-53c0597bc264",
              "parent_uuid": "085d6124-410c-458e-b801-49089cd78d23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efc68e1d-3e6e-48f0-8b9c-a0d25f238c17",
                  "parent_uuid": "c2b02079-503f-4f98-96f2-53c0597bc264",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "419e5b66-cd64-4064-9c36-73806e5f4893",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2ddb817-cfc2-4416-b9bb-690ec0e5e25d",
              "parent_uuid": "419e5b66-cd64-4064-9c36-73806e5f4893",
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
              "uuid": "d9217016-9674-44ca-89d6-32725cf73770",
              "parent_uuid": "419e5b66-cd64-4064-9c36-73806e5f4893",
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
              "uuid": "5180d03a-797f-44f3-9f26-9bb680e47cbd",
              "parent_uuid": "419e5b66-cd64-4064-9c36-73806e5f4893",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6e7895b-9568-4a7b-89da-3a5a5f86c4a6",
                  "parent_uuid": "5180d03a-797f-44f3-9f26-9bb680e47cbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bd21f14-19e0-4918-a4cb-f4c8b0c2cb9c",
              "parent_uuid": "419e5b66-cd64-4064-9c36-73806e5f4893",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9aa9855d-cc32-4767-af08-3a095066daca",
                  "parent_uuid": "6bd21f14-19e0-4918-a4cb-f4c8b0c2cb9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15cf0991-9fa7-44e2-9214-a6d6283112e0",
              "parent_uuid": "419e5b66-cd64-4064-9c36-73806e5f4893",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34933bc2-458b-4d81-8529-8d7354ca417d",
                  "parent_uuid": "15cf0991-9fa7-44e2-9214-a6d6283112e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17d25376-de8e-4aa6-9bba-2b9f44fe6b4e",
              "parent_uuid": "419e5b66-cd64-4064-9c36-73806e5f4893",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16fb1c6f-01fa-4f12-9e52-26d95653963c",
                  "parent_uuid": "17d25376-de8e-4aa6-9bba-2b9f44fe6b4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f3fe0630-4ff8-45c5-8b72-25b1535df4c8",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8481e18d-c30d-4db8-9acf-312f2b216d63",
              "parent_uuid": "f3fe0630-4ff8-45c5-8b72-25b1535df4c8",
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
          "uuid": "1ed3fa1c-cabd-4658-aedd-9d6ce9fbae3a",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5755cdbb-8f0a-4899-88f0-c6fd2edd80a8",
              "parent_uuid": "1ed3fa1c-cabd-4658-aedd-9d6ce9fbae3a",
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
          "uuid": "6c95dd28-2b26-4bf1-bd5d-bbbd9388b0b7",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97b8bf61-8239-4dec-863d-665f8c91ccfe",
              "parent_uuid": "6c95dd28-2b26-4bf1-bd5d-bbbd9388b0b7",
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
              "uuid": "e1e45425-d6ac-4590-98bc-a95c376751b7",
              "parent_uuid": "6c95dd28-2b26-4bf1-bd5d-bbbd9388b0b7",
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
              "uuid": "96fe105c-ea01-4b63-a4fa-08ab074c323c",
              "parent_uuid": "6c95dd28-2b26-4bf1-bd5d-bbbd9388b0b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b99a26e-13dd-4a4e-80d6-4f1e437150d3",
                  "parent_uuid": "96fe105c-ea01-4b63-a4fa-08ab074c323c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16ca9209-f946-46d2-a64f-e80a40787007",
              "parent_uuid": "6c95dd28-2b26-4bf1-bd5d-bbbd9388b0b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6186679-71b1-4f7d-96f7-8d90ed192af7",
                  "parent_uuid": "16ca9209-f946-46d2-a64f-e80a40787007",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "547e5a95-a8d5-43fd-98e4-3da75a34f3d9",
              "parent_uuid": "6c95dd28-2b26-4bf1-bd5d-bbbd9388b0b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be517fb4-c526-4496-9ac5-b886a1abf2a2",
                  "parent_uuid": "547e5a95-a8d5-43fd-98e4-3da75a34f3d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4aebb704-6dda-4071-972e-9943a38b0c4d",
              "parent_uuid": "6c95dd28-2b26-4bf1-bd5d-bbbd9388b0b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "974405a8-55a9-43aa-9f50-78172b00aedc",
                  "parent_uuid": "4aebb704-6dda-4071-972e-9943a38b0c4d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "03bb089d-f70b-45d4-bbe7-43ef4002ba3c",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6c18b49-9975-450c-8d84-3579d0cc1063",
              "parent_uuid": "03bb089d-f70b-45d4-bbe7-43ef4002ba3c",
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
              "uuid": "e04cb825-b9b2-4a18-b8d6-eaa9af51a302",
              "parent_uuid": "03bb089d-f70b-45d4-bbe7-43ef4002ba3c",
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
              "uuid": "a86b1703-62de-4fb1-9679-aedd4511f7a0",
              "parent_uuid": "03bb089d-f70b-45d4-bbe7-43ef4002ba3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "940c6690-92cd-4a11-9855-5c94285be7d9",
                  "parent_uuid": "a86b1703-62de-4fb1-9679-aedd4511f7a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c51c0422-3b7b-4382-906f-dc56b63d0a7a",
              "parent_uuid": "03bb089d-f70b-45d4-bbe7-43ef4002ba3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b6cd5e5-1960-48f8-8112-cba10a3b27d0",
                  "parent_uuid": "c51c0422-3b7b-4382-906f-dc56b63d0a7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d444a6c1-c23c-4021-a0e9-3b5d7fd0a19d",
              "parent_uuid": "03bb089d-f70b-45d4-bbe7-43ef4002ba3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54f46272-440c-4588-bcd8-1621630a8b6d",
                  "parent_uuid": "d444a6c1-c23c-4021-a0e9-3b5d7fd0a19d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96a512f7-2932-4aa4-8d61-87be9fc380f7",
              "parent_uuid": "03bb089d-f70b-45d4-bbe7-43ef4002ba3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5765dc14-a3fb-4896-b8cd-a549513821e2",
                  "parent_uuid": "96a512f7-2932-4aa4-8d61-87be9fc380f7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "080a211c-d1ef-4228-b6fe-f167c37bd37a",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0d80c98-2d1b-4d6f-8292-a88861327548",
              "parent_uuid": "080a211c-d1ef-4228-b6fe-f167c37bd37a",
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
              "uuid": "47c8fe4a-a905-4e74-9c1e-87cfca79d480",
              "parent_uuid": "080a211c-d1ef-4228-b6fe-f167c37bd37a",
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
              "uuid": "ca1d6b58-c37c-4b9d-8d2d-8e04601ea73c",
              "parent_uuid": "080a211c-d1ef-4228-b6fe-f167c37bd37a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf1ea2af-483f-4f5d-a6cc-aaa0600301d8",
                  "parent_uuid": "ca1d6b58-c37c-4b9d-8d2d-8e04601ea73c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2add9d0-8168-48de-8d3b-91fb45b679b7",
              "parent_uuid": "080a211c-d1ef-4228-b6fe-f167c37bd37a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a11b2d3-df21-44f7-9e30-19fd829bb1ef",
                  "parent_uuid": "e2add9d0-8168-48de-8d3b-91fb45b679b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cbfe6b8-54ba-46e0-b1ab-8142aaca7518",
              "parent_uuid": "080a211c-d1ef-4228-b6fe-f167c37bd37a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e01393ae-38fc-4072-ba8e-1c7590894054",
                  "parent_uuid": "9cbfe6b8-54ba-46e0-b1ab-8142aaca7518",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae7f8a19-021d-47d3-95df-e1ca00c1f8e4",
              "parent_uuid": "080a211c-d1ef-4228-b6fe-f167c37bd37a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92982ea9-8501-46b0-8f05-1998b6ece0c3",
                  "parent_uuid": "ae7f8a19-021d-47d3-95df-e1ca00c1f8e4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d815a46-936a-4d51-bd0d-a16683a451c2",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71fe44d4-45b6-4201-8c96-d303d74c9a9b",
              "parent_uuid": "6d815a46-936a-4d51-bd0d-a16683a451c2",
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
              "uuid": "71d602ed-e03b-4477-9306-97c05f404bd3",
              "parent_uuid": "6d815a46-936a-4d51-bd0d-a16683a451c2",
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
              "uuid": "16fdb543-1f8d-4a15-a1ed-2e102fbf46ef",
              "parent_uuid": "6d815a46-936a-4d51-bd0d-a16683a451c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ec76153-c4e0-4274-a1ee-bca5e5b3c3d1",
                  "parent_uuid": "16fdb543-1f8d-4a15-a1ed-2e102fbf46ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d47ee0b4-d70c-49b9-81a0-7ecb09c7274e",
              "parent_uuid": "6d815a46-936a-4d51-bd0d-a16683a451c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c63eafc7-22f4-4661-8132-3c2e4cf40a04",
                  "parent_uuid": "d47ee0b4-d70c-49b9-81a0-7ecb09c7274e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab3eb88d-b9f6-455b-8fe5-3d30d7a05308",
              "parent_uuid": "6d815a46-936a-4d51-bd0d-a16683a451c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bae7fe16-b5ff-43c0-86b4-2beb12b432c0",
                  "parent_uuid": "ab3eb88d-b9f6-455b-8fe5-3d30d7a05308",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10e20a26-6294-4eb2-977c-4017d7a13a7a",
              "parent_uuid": "6d815a46-936a-4d51-bd0d-a16683a451c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e14e9ce-d953-4da2-ab28-1a05a357eb99",
                  "parent_uuid": "10e20a26-6294-4eb2-977c-4017d7a13a7a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ae6b5cc5-c505-4e9f-afa4-b13ba2031ae5",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "93f7152f-ba6e-432f-909f-ba10a699c84a",
              "parent_uuid": "ae6b5cc5-c505-4e9f-afa4-b13ba2031ae5",
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
              "uuid": "5a12d9f6-da77-49f4-b54c-cf4dc663cacd",
              "parent_uuid": "ae6b5cc5-c505-4e9f-afa4-b13ba2031ae5",
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
              "uuid": "79cafe6b-047e-4db5-a6fd-b1b17f56ea69",
              "parent_uuid": "ae6b5cc5-c505-4e9f-afa4-b13ba2031ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcb5bedf-2a29-4526-bb24-d27ad68b9ef6",
                  "parent_uuid": "79cafe6b-047e-4db5-a6fd-b1b17f56ea69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a17b503b-768b-4a81-8743-de161647970a",
              "parent_uuid": "ae6b5cc5-c505-4e9f-afa4-b13ba2031ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4beee962-7893-473e-bf9f-8023899c0c4f",
                  "parent_uuid": "a17b503b-768b-4a81-8743-de161647970a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "204e4359-4fdd-4687-8ef4-fc60f750a73a",
              "parent_uuid": "ae6b5cc5-c505-4e9f-afa4-b13ba2031ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4453ba2-3815-41c4-be12-5df78fddaac2",
                  "parent_uuid": "204e4359-4fdd-4687-8ef4-fc60f750a73a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05e9a123-bf3c-49bc-a2be-48281b14a38b",
              "parent_uuid": "ae6b5cc5-c505-4e9f-afa4-b13ba2031ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0aad5897-9dcc-4409-b110-62f9054c1508",
                  "parent_uuid": "05e9a123-bf3c-49bc-a2be-48281b14a38b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0dad8548-81e0-42df-81c6-c1bb60551329",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f0e67fc7-c9c6-4389-bd2e-cea96bd41185",
              "parent_uuid": "0dad8548-81e0-42df-81c6-c1bb60551329",
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
              "uuid": "a4bb7e8c-001c-4909-a00f-7d2839f9b06c",
              "parent_uuid": "0dad8548-81e0-42df-81c6-c1bb60551329",
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
              "uuid": "482d9952-a4f0-4663-b401-d216dace180a",
              "parent_uuid": "0dad8548-81e0-42df-81c6-c1bb60551329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1165c55b-7e6c-40d1-9098-1306ea458e7a",
                  "parent_uuid": "482d9952-a4f0-4663-b401-d216dace180a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ea43b6e-7be5-4be1-aa97-45e7b5b2c00e",
              "parent_uuid": "0dad8548-81e0-42df-81c6-c1bb60551329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6d6690f-d2d6-4e4b-b252-ffb031e73a03",
                  "parent_uuid": "1ea43b6e-7be5-4be1-aa97-45e7b5b2c00e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee038e10-bdca-464a-9d54-f24b4d2d0d96",
              "parent_uuid": "0dad8548-81e0-42df-81c6-c1bb60551329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cfd0539-5a57-46b8-ac5e-fe0d7e9fed6f",
                  "parent_uuid": "ee038e10-bdca-464a-9d54-f24b4d2d0d96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d94a23ea-9060-4e2f-b4bc-3a5251429a55",
              "parent_uuid": "0dad8548-81e0-42df-81c6-c1bb60551329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6548f42f-fae9-4713-afa8-35df16de7203",
                  "parent_uuid": "d94a23ea-9060-4e2f-b4bc-3a5251429a55",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b75a4b52-8269-4f0e-8b63-6f2c8f67754d",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8633aaaa-e1ea-4dd3-a6bd-2cf13ded9d11",
              "parent_uuid": "b75a4b52-8269-4f0e-8b63-6f2c8f67754d",
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
              "uuid": "2d278f56-99e4-45cf-94dc-a2eb19cab62c",
              "parent_uuid": "b75a4b52-8269-4f0e-8b63-6f2c8f67754d",
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
              "uuid": "fb3797a1-48f6-4cfe-ad89-ddc9f7523416",
              "parent_uuid": "b75a4b52-8269-4f0e-8b63-6f2c8f67754d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50f8cd83-3cfa-4f3a-b790-16cbe51cc0b0",
                  "parent_uuid": "fb3797a1-48f6-4cfe-ad89-ddc9f7523416",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36797c22-42eb-45b3-837b-86f8154c4665",
              "parent_uuid": "b75a4b52-8269-4f0e-8b63-6f2c8f67754d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46b71d53-fca6-441e-8d63-275b230d91e5",
                  "parent_uuid": "36797c22-42eb-45b3-837b-86f8154c4665",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc3c0df1-eed1-43bd-a1d3-3927166875df",
              "parent_uuid": "b75a4b52-8269-4f0e-8b63-6f2c8f67754d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "215511bb-9648-485f-841e-f17eb6b9df2a",
                  "parent_uuid": "dc3c0df1-eed1-43bd-a1d3-3927166875df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d869803-9ff9-4120-b376-962b7e7987af",
              "parent_uuid": "b75a4b52-8269-4f0e-8b63-6f2c8f67754d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cae39c6b-d676-4144-a281-0a281a0a0943",
                  "parent_uuid": "3d869803-9ff9-4120-b376-962b7e7987af",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8fa10c4f-ad57-4789-9a01-2eb77bd01805",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b3b17d1-2b1f-409a-80aa-a6c7fc25183a",
              "parent_uuid": "8fa10c4f-ad57-4789-9a01-2eb77bd01805",
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
              "uuid": "d6aac472-562f-4b82-bfac-cbb51eb9b813",
              "parent_uuid": "8fa10c4f-ad57-4789-9a01-2eb77bd01805",
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
              "uuid": "c423478c-07e5-4bd0-a272-5e5fe4d6bfaf",
              "parent_uuid": "8fa10c4f-ad57-4789-9a01-2eb77bd01805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6157cee-d8be-4f7a-9005-18e6816db457",
                  "parent_uuid": "c423478c-07e5-4bd0-a272-5e5fe4d6bfaf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c69f0f8d-b9b6-4919-a2db-cd0be9ea2e9f",
              "parent_uuid": "8fa10c4f-ad57-4789-9a01-2eb77bd01805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5a19c5b-9960-4cee-b9a5-ef5b348efbd1",
                  "parent_uuid": "c69f0f8d-b9b6-4919-a2db-cd0be9ea2e9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b77b11c7-6aa5-41c1-afeb-b40b19fadce0",
              "parent_uuid": "8fa10c4f-ad57-4789-9a01-2eb77bd01805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c55fcf08-c28c-46c1-874d-a2722067c5ae",
                  "parent_uuid": "b77b11c7-6aa5-41c1-afeb-b40b19fadce0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d17adce-69b5-4893-ae88-36798d5ae2bb",
              "parent_uuid": "8fa10c4f-ad57-4789-9a01-2eb77bd01805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "527b1880-1d48-45b4-880b-db97d06352cd",
                  "parent_uuid": "9d17adce-69b5-4893-ae88-36798d5ae2bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a5f6f729-0ceb-4379-bc65-8636d3afc69c",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "560c4769-b864-4be6-845b-e8d9afadf8a3",
              "parent_uuid": "a5f6f729-0ceb-4379-bc65-8636d3afc69c",
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
          "uuid": "3022d7bb-4558-4a65-889c-934b4b6f510a",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "413f0c19-72a8-4176-9603-ba12b59aab62",
              "parent_uuid": "3022d7bb-4558-4a65-889c-934b4b6f510a",
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
              "uuid": "2b6a6c22-96d4-4e27-ac72-fcc129dddfa9",
              "parent_uuid": "3022d7bb-4558-4a65-889c-934b4b6f510a",
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
              "uuid": "830378db-11c0-48c8-8a1f-bc000f980f8c",
              "parent_uuid": "3022d7bb-4558-4a65-889c-934b4b6f510a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc3f71ed-4d2c-4453-8afc-a8fa3362fb69",
                  "parent_uuid": "830378db-11c0-48c8-8a1f-bc000f980f8c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3604fc9d-c5b7-46d3-9149-c342bb87107e",
              "parent_uuid": "3022d7bb-4558-4a65-889c-934b4b6f510a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b319c08-d70a-4b98-a8d6-e2c9841b10e3",
                  "parent_uuid": "3604fc9d-c5b7-46d3-9149-c342bb87107e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "912b16cc-49f9-4945-938c-a42c95fabd34",
              "parent_uuid": "3022d7bb-4558-4a65-889c-934b4b6f510a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fa7d547-5e4e-4b72-b738-2d580cb76d0d",
                  "parent_uuid": "912b16cc-49f9-4945-938c-a42c95fabd34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0990021-e5b1-4e75-9475-c5f1c3fc9850",
              "parent_uuid": "3022d7bb-4558-4a65-889c-934b4b6f510a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c9fc14c-4856-4047-9da7-1b3a30d73d93",
                  "parent_uuid": "c0990021-e5b1-4e75-9475-c5f1c3fc9850",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "812c785b-085d-431d-aa95-1eed2283e6b3",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b3cf1d0-5cbc-4438-9287-e9cc6296297b",
              "parent_uuid": "812c785b-085d-431d-aa95-1eed2283e6b3",
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
              "uuid": "d5262d34-eef3-486c-a6b3-aa4fb89a90bb",
              "parent_uuid": "812c785b-085d-431d-aa95-1eed2283e6b3",
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
              "uuid": "fe3b374b-8212-44e7-9832-d282610b1a00",
              "parent_uuid": "812c785b-085d-431d-aa95-1eed2283e6b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fb00507-ab23-4964-b3c2-7d7d17c42d4c",
                  "parent_uuid": "fe3b374b-8212-44e7-9832-d282610b1a00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b3189bf-4008-4e4a-87ce-62af8c265704",
              "parent_uuid": "812c785b-085d-431d-aa95-1eed2283e6b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d3ad83b-083e-4b03-b74f-08305b8eb7ec",
                  "parent_uuid": "5b3189bf-4008-4e4a-87ce-62af8c265704",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a8a5f62-1c3c-4b5d-a24c-c88be201b2a9",
              "parent_uuid": "812c785b-085d-431d-aa95-1eed2283e6b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38366594-3751-4f7a-a091-b397b4f2378e",
                  "parent_uuid": "0a8a5f62-1c3c-4b5d-a24c-c88be201b2a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2af305e8-1099-409d-ae5d-10013c4ad673",
              "parent_uuid": "812c785b-085d-431d-aa95-1eed2283e6b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3428b7c6-9975-45c8-956a-e4e5f65e7cea",
                  "parent_uuid": "2af305e8-1099-409d-ae5d-10013c4ad673",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dd28857e-9546-4158-8caa-8d2d8bd4e298",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7e5a572-517a-4d6b-a6a1-4d2ca88b6fb3",
              "parent_uuid": "dd28857e-9546-4158-8caa-8d2d8bd4e298",
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
          "uuid": "d66acc9d-c5de-470e-946e-ea9700f60df9",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ecf4d5d-44cf-4c03-9a31-170e16bf78b6",
              "parent_uuid": "d66acc9d-c5de-470e-946e-ea9700f60df9",
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
          "uuid": "e284d664-1109-40d4-a435-d045539f507a",
          "parent_uuid": "b932687a-e8f7-4f2f-a5de-4f870422a1a5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6140a6d1-da5b-4379-af4e-6ccc08d6f524",
              "parent_uuid": "e284d664-1109-40d4-a435-d045539f507a",
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
                  "uuid": "6dfc5bba-43d4-4a8b-badb-59becedce1ab",
                  "parent_uuid": "6140a6d1-da5b-4379-af4e-6ccc08d6f524",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
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

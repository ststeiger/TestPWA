
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
  "uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "41c8d8ef-f63c-4bc3-bc47-e94c7ae1e8c0",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "da20ae04-263d-47ad-a341-857c52a4a4c9",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "50dd01e1-5acf-4ec3-8f84-387131170708",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "014660a4-d23a-441c-accd-265dc1585ab5",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "d876d934-cba4-4e55-bac3-69c2cfb2c9f4",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "39b7e6a8-a8f9-48fc-a5ad-ee2b10cadbd1",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "ece5e70d-32c3-4962-be4c-b862656c759a",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
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
      "uuid": "2621f843-1022-4d52-a905-26e894e0335f",
      "parent_uuid": "500e0ff4-11a4-4a9b-87e7-f0a6db9b2b67",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "c01c3154-3e70-4a5b-aa49-db0896395c89",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "91af6d45-39f7-43d7-8df5-476b1826779a",
              "parent_uuid": "c01c3154-3e70-4a5b-aa49-db0896395c89",
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
              "uuid": "9c6bf2bf-d7fe-4558-bdff-0e4ce1aa91eb",
              "parent_uuid": "c01c3154-3e70-4a5b-aa49-db0896395c89",
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
              "uuid": "7a59f383-6ebc-4b1a-933a-9a4daa2cdaf4",
              "parent_uuid": "c01c3154-3e70-4a5b-aa49-db0896395c89",
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
              "uuid": "f339a1ae-1c94-4e99-a619-5fe77ef5ea1a",
              "parent_uuid": "c01c3154-3e70-4a5b-aa49-db0896395c89",
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
          "uuid": "dac8e266-1300-42f7-893c-193db798e279",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "1f9d980a-2df3-436e-b0b3-42e140e370d0",
              "parent_uuid": "dac8e266-1300-42f7-893c-193db798e279",
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
              "uuid": "e5364408-2196-44a7-90fa-f6b8354a4e8f",
              "parent_uuid": "dac8e266-1300-42f7-893c-193db798e279",
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
              "uuid": "7217710f-d908-411a-9b5a-35022c3158b5",
              "parent_uuid": "dac8e266-1300-42f7-893c-193db798e279",
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
              "uuid": "131995c3-459c-4462-952e-c0be7f494e5b",
              "parent_uuid": "dac8e266-1300-42f7-893c-193db798e279",
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
          "uuid": "cbb2ba29-618c-45fe-9421-1145d893292b",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e982641-e8ba-4a0a-ace4-b12f97491c60",
              "parent_uuid": "cbb2ba29-618c-45fe-9421-1145d893292b",
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
              "uuid": "ed3daf0f-5b32-4a82-b33c-07a7144e80cd",
              "parent_uuid": "cbb2ba29-618c-45fe-9421-1145d893292b",
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
              "uuid": "fa57b9df-e7ef-44f5-bd57-70febb2f6403",
              "parent_uuid": "cbb2ba29-618c-45fe-9421-1145d893292b",
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
              "uuid": "474bcc81-7c9a-4ea3-8ce0-4e035ceee5c6",
              "parent_uuid": "cbb2ba29-618c-45fe-9421-1145d893292b",
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
              "uuid": "1696f4e6-7593-4e3c-a654-9f3afc40013b",
              "parent_uuid": "cbb2ba29-618c-45fe-9421-1145d893292b",
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
              "uuid": "aaa195ec-c219-49c3-a008-dfe9b9cf577d",
              "parent_uuid": "cbb2ba29-618c-45fe-9421-1145d893292b",
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
          "uuid": "54ba01bf-1ab0-42f2-9c63-22d5ccdae326",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "52d3e6f6-d734-4c78-a747-751707cb13af",
              "parent_uuid": "54ba01bf-1ab0-42f2-9c63-22d5ccdae326",
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
          "uuid": "5b547b00-62d7-41b2-958b-67d00468c85b",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19575295-c3ec-4738-a2df-a22adee67d92",
              "parent_uuid": "5b547b00-62d7-41b2-958b-67d00468c85b",
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
              "uuid": "73860bfa-5e55-4d75-8a3f-677899979170",
              "parent_uuid": "5b547b00-62d7-41b2-958b-67d00468c85b",
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
              "uuid": "ca094cab-a0a5-4d6b-b609-5a96b1bf9232",
              "parent_uuid": "5b547b00-62d7-41b2-958b-67d00468c85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2c5fdbd-b525-4f31-a7b4-c58968f0cca0",
                  "parent_uuid": "ca094cab-a0a5-4d6b-b609-5a96b1bf9232",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "253edc03-dbc6-447b-afed-c8e92d23bacf",
              "parent_uuid": "5b547b00-62d7-41b2-958b-67d00468c85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba68b05e-980b-489c-9905-5184828331f4",
                  "parent_uuid": "253edc03-dbc6-447b-afed-c8e92d23bacf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "555df664-b426-43d3-b354-ba9b2fb576d3",
              "parent_uuid": "5b547b00-62d7-41b2-958b-67d00468c85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2262ec2c-92de-4586-882e-da2df19973c5",
                  "parent_uuid": "555df664-b426-43d3-b354-ba9b2fb576d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d82db4e8-1170-4c72-9ff7-6bb57f4c7e57",
              "parent_uuid": "5b547b00-62d7-41b2-958b-67d00468c85b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4fa07308-82b5-4d47-a342-6ccca51eb138",
                  "parent_uuid": "d82db4e8-1170-4c72-9ff7-6bb57f4c7e57",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c469cc16-c63a-448c-85cd-6bbe5751d1cf",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b8a5b78-4357-4804-b738-afe1dac2276b",
              "parent_uuid": "c469cc16-c63a-448c-85cd-6bbe5751d1cf",
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
              "uuid": "ee6f51c3-c388-42f4-9bdf-ba6e94ce88b8",
              "parent_uuid": "c469cc16-c63a-448c-85cd-6bbe5751d1cf",
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
              "uuid": "58178870-0b9d-4295-b951-21a1c098a76e",
              "parent_uuid": "c469cc16-c63a-448c-85cd-6bbe5751d1cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea2c8097-2cd0-4cf7-a111-a4402b7be401",
                  "parent_uuid": "58178870-0b9d-4295-b951-21a1c098a76e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3025fc83-26ae-42ba-b01e-2f7b8d03fc65",
              "parent_uuid": "c469cc16-c63a-448c-85cd-6bbe5751d1cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44536c64-09c0-4656-98b9-716d07f8dfdd",
                  "parent_uuid": "3025fc83-26ae-42ba-b01e-2f7b8d03fc65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa9b5739-c420-4f0e-9a96-6e9b783c97b0",
              "parent_uuid": "c469cc16-c63a-448c-85cd-6bbe5751d1cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc7220be-49aa-4645-b9f3-f06a5bf1c9d5",
                  "parent_uuid": "aa9b5739-c420-4f0e-9a96-6e9b783c97b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb626c7a-2ce4-4317-b44a-739150332f75",
              "parent_uuid": "c469cc16-c63a-448c-85cd-6bbe5751d1cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba1d5283-71c2-4814-8d9c-a111c9daf09e",
                  "parent_uuid": "cb626c7a-2ce4-4317-b44a-739150332f75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c9cb1de-5024-4e6c-9978-fe90a4084798",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e293c28a-4ce6-46fe-9b47-6a5976fe54f7",
              "parent_uuid": "7c9cb1de-5024-4e6c-9978-fe90a4084798",
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
              "uuid": "525e82af-185b-49e8-9412-8ddbcc9b44d9",
              "parent_uuid": "7c9cb1de-5024-4e6c-9978-fe90a4084798",
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
              "uuid": "742b4d9c-1436-48c4-adc1-31399dbecfcb",
              "parent_uuid": "7c9cb1de-5024-4e6c-9978-fe90a4084798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d7f5268-193d-44d4-a5fb-63100f9ce127",
                  "parent_uuid": "742b4d9c-1436-48c4-adc1-31399dbecfcb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cae18a70-f709-4d65-a21d-22c20f63d173",
              "parent_uuid": "7c9cb1de-5024-4e6c-9978-fe90a4084798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6283a606-ba95-4e86-bab6-de350eb32075",
                  "parent_uuid": "cae18a70-f709-4d65-a21d-22c20f63d173",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "594455fe-4ed5-4380-bebf-c0898545bfd8",
              "parent_uuid": "7c9cb1de-5024-4e6c-9978-fe90a4084798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f8c1bc7-e873-49aa-b2e1-d9214b03ab4b",
                  "parent_uuid": "594455fe-4ed5-4380-bebf-c0898545bfd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6eca60bd-ac67-4399-8a7e-9ee3ea1aa23e",
              "parent_uuid": "7c9cb1de-5024-4e6c-9978-fe90a4084798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "556eb2e7-3c57-40c3-8515-deb6e3385419",
                  "parent_uuid": "6eca60bd-ac67-4399-8a7e-9ee3ea1aa23e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8bbebdce-912e-4447-b36a-6d14661f3af6",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d7924bd-8b55-48e8-bd0e-f5fe8c895031",
              "parent_uuid": "8bbebdce-912e-4447-b36a-6d14661f3af6",
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
              "uuid": "3a446201-1e77-42eb-b376-020e3e271fd4",
              "parent_uuid": "8bbebdce-912e-4447-b36a-6d14661f3af6",
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
              "uuid": "11735392-1fa7-4b2e-a687-cf2dd1c2158d",
              "parent_uuid": "8bbebdce-912e-4447-b36a-6d14661f3af6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70ecb7d1-ea09-4acc-b15f-83eb697213fe",
                  "parent_uuid": "11735392-1fa7-4b2e-a687-cf2dd1c2158d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3f440a2-8c16-40bc-af8e-cb9071d88e3e",
              "parent_uuid": "8bbebdce-912e-4447-b36a-6d14661f3af6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1ba67f2-7844-4f96-ac40-d1686d5b5893",
                  "parent_uuid": "b3f440a2-8c16-40bc-af8e-cb9071d88e3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aaf90f74-e228-4783-9162-1b9729b6aa07",
              "parent_uuid": "8bbebdce-912e-4447-b36a-6d14661f3af6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce83e153-711a-42bc-b2c3-d7e6de912c5c",
                  "parent_uuid": "aaf90f74-e228-4783-9162-1b9729b6aa07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0b94878-1228-4fa8-8119-8c1baf1494d7",
              "parent_uuid": "8bbebdce-912e-4447-b36a-6d14661f3af6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ebcf2d8-ecd0-4fc6-a9d8-9333ccac83ec",
                  "parent_uuid": "a0b94878-1228-4fa8-8119-8c1baf1494d7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "21efcc3e-a71d-4ccc-b498-3bbb301831cd",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f955cced-54da-43c4-acb5-3c4ff9d740b7",
              "parent_uuid": "21efcc3e-a71d-4ccc-b498-3bbb301831cd",
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
          "uuid": "84c2ff49-4ca2-4a6d-9015-87f4327ab4d1",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8fb4ead-9d18-486c-9412-f3f2e29f2ba6",
              "parent_uuid": "84c2ff49-4ca2-4a6d-9015-87f4327ab4d1",
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
              "uuid": "2dfc0625-0c78-46fc-90b9-a426cab848ca",
              "parent_uuid": "84c2ff49-4ca2-4a6d-9015-87f4327ab4d1",
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
              "uuid": "7dbd9164-2037-4334-b58a-3b55a96cdae6",
              "parent_uuid": "84c2ff49-4ca2-4a6d-9015-87f4327ab4d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "115ca6b9-77a5-43da-84a9-b55da26bbd07",
                  "parent_uuid": "7dbd9164-2037-4334-b58a-3b55a96cdae6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dffcfee3-cb6d-4d54-bb43-147d08ecd0b8",
              "parent_uuid": "84c2ff49-4ca2-4a6d-9015-87f4327ab4d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7efa6e01-7fae-46da-a82f-2999fc2b0b45",
                  "parent_uuid": "dffcfee3-cb6d-4d54-bb43-147d08ecd0b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9636aa6a-306f-4786-a8aa-952ece46e7ba",
              "parent_uuid": "84c2ff49-4ca2-4a6d-9015-87f4327ab4d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0359464-a518-4db9-bc4c-a47e9eefcc64",
                  "parent_uuid": "9636aa6a-306f-4786-a8aa-952ece46e7ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b6184a2-e74c-4782-a579-1fee605a6414",
              "parent_uuid": "84c2ff49-4ca2-4a6d-9015-87f4327ab4d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "425a78aa-ddd3-49be-920d-d0fbaf9f6055",
                  "parent_uuid": "2b6184a2-e74c-4782-a579-1fee605a6414",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "51ea373b-aee4-46ee-91fb-6c0435792c5f",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e32294c-2c84-4905-8948-ac59e4b0e142",
              "parent_uuid": "51ea373b-aee4-46ee-91fb-6c0435792c5f",
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
              "uuid": "a7bb229e-ca26-44fd-b384-e8753b4916ac",
              "parent_uuid": "51ea373b-aee4-46ee-91fb-6c0435792c5f",
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
              "uuid": "ea018fba-5936-4552-880d-79229da39472",
              "parent_uuid": "51ea373b-aee4-46ee-91fb-6c0435792c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56793b95-dc3f-467a-9ee0-4a06c3e7a461",
                  "parent_uuid": "ea018fba-5936-4552-880d-79229da39472",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c4113b2-3bb1-4496-b18c-b4313edadee2",
              "parent_uuid": "51ea373b-aee4-46ee-91fb-6c0435792c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0de5aa7e-78df-4135-8c55-0e9ac10d56fb",
                  "parent_uuid": "8c4113b2-3bb1-4496-b18c-b4313edadee2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92971b3d-5d52-4b31-8f95-fcb832e5f396",
              "parent_uuid": "51ea373b-aee4-46ee-91fb-6c0435792c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63bca00f-cca8-4062-9e1e-a3a78934a13e",
                  "parent_uuid": "92971b3d-5d52-4b31-8f95-fcb832e5f396",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bdb8a32c-f231-4e1b-8f22-016789e58820",
              "parent_uuid": "51ea373b-aee4-46ee-91fb-6c0435792c5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78c1fa86-91e9-4c54-b3d3-a98ffbb49cd8",
                  "parent_uuid": "bdb8a32c-f231-4e1b-8f22-016789e58820",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "65596391-fa97-482b-a234-2988e7ad9dcb",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff6a5910-5a47-4a86-9eef-3cfbd4abbacf",
              "parent_uuid": "65596391-fa97-482b-a234-2988e7ad9dcb",
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
              "uuid": "c8d8cd08-070f-4fe4-a4af-a198dd73c4f8",
              "parent_uuid": "65596391-fa97-482b-a234-2988e7ad9dcb",
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
              "uuid": "ffad3317-c3ea-4f43-8c9c-fb6faaa7626b",
              "parent_uuid": "65596391-fa97-482b-a234-2988e7ad9dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9dc01d7-a098-48be-a74b-c188565d2404",
                  "parent_uuid": "ffad3317-c3ea-4f43-8c9c-fb6faaa7626b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "820a40c4-ba08-4f38-8bbf-56dfe3da4537",
              "parent_uuid": "65596391-fa97-482b-a234-2988e7ad9dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d265ad6d-46a4-49a7-8876-595c47d49a91",
                  "parent_uuid": "820a40c4-ba08-4f38-8bbf-56dfe3da4537",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5f00087-8093-47b8-ba5b-b0cc25d6d1b4",
              "parent_uuid": "65596391-fa97-482b-a234-2988e7ad9dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "873cada4-0d7a-49c4-ac6e-43bc3192e9ff",
                  "parent_uuid": "b5f00087-8093-47b8-ba5b-b0cc25d6d1b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95605110-49c2-46dc-86fc-c976e3e4fdcf",
              "parent_uuid": "65596391-fa97-482b-a234-2988e7ad9dcb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02b62938-deb5-49f7-aab9-855179636b7a",
                  "parent_uuid": "95605110-49c2-46dc-86fc-c976e3e4fdcf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "19055910-b53b-45a6-b6f8-ab0ab120b578",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc4b7e78-170a-4fa7-9b38-169a12d9b2c0",
              "parent_uuid": "19055910-b53b-45a6-b6f8-ab0ab120b578",
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
              "uuid": "b6334b2b-df4b-42e7-b372-a5f2a9ae673e",
              "parent_uuid": "19055910-b53b-45a6-b6f8-ab0ab120b578",
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
              "uuid": "feb1b1db-ee3b-44ea-8010-f3b18c2da054",
              "parent_uuid": "19055910-b53b-45a6-b6f8-ab0ab120b578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "658c43c0-40ec-4ce1-a748-b83f1a1a45a8",
                  "parent_uuid": "feb1b1db-ee3b-44ea-8010-f3b18c2da054",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8af0b992-56bd-46cd-9ffd-77389e1d08da",
              "parent_uuid": "19055910-b53b-45a6-b6f8-ab0ab120b578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d600636-67bd-4fb5-bb21-44ed5d55e08a",
                  "parent_uuid": "8af0b992-56bd-46cd-9ffd-77389e1d08da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db9cbb28-a460-4e79-924f-e2d564381098",
              "parent_uuid": "19055910-b53b-45a6-b6f8-ab0ab120b578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1121a2b1-b421-4c1a-82ea-1dad14a408e0",
                  "parent_uuid": "db9cbb28-a460-4e79-924f-e2d564381098",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45329e84-1cba-4720-9144-0dbe725703e1",
              "parent_uuid": "19055910-b53b-45a6-b6f8-ab0ab120b578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "134e03b0-866f-49cc-8950-b3e1ec3cf708",
                  "parent_uuid": "45329e84-1cba-4720-9144-0dbe725703e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f6028fae-73ff-4244-ba4c-94e3d8149ea8",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e74f88e-89e4-4405-ac08-0fc4f03ab39f",
              "parent_uuid": "f6028fae-73ff-4244-ba4c-94e3d8149ea8",
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
              "uuid": "bba301b9-2a15-4701-a140-50b01be94c07",
              "parent_uuid": "f6028fae-73ff-4244-ba4c-94e3d8149ea8",
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
              "uuid": "a6ded86e-6281-441b-b05c-55d42e0457f0",
              "parent_uuid": "f6028fae-73ff-4244-ba4c-94e3d8149ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af100ecf-5090-47e3-bfc3-0d1c48d4cd7b",
                  "parent_uuid": "a6ded86e-6281-441b-b05c-55d42e0457f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d941046-7c8b-4de0-ada7-1ed0792d2021",
              "parent_uuid": "f6028fae-73ff-4244-ba4c-94e3d8149ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43c9d049-98f5-4016-b3be-eda771fea80e",
                  "parent_uuid": "7d941046-7c8b-4de0-ada7-1ed0792d2021",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13734f4a-37e2-4749-a113-6e1485db6970",
              "parent_uuid": "f6028fae-73ff-4244-ba4c-94e3d8149ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d3a70c8-4907-49a5-8fd3-9e6fda4fd8ac",
                  "parent_uuid": "13734f4a-37e2-4749-a113-6e1485db6970",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "606aa0b7-74b9-46a4-b959-ac880e90244c",
              "parent_uuid": "f6028fae-73ff-4244-ba4c-94e3d8149ea8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d7dc99e-ee02-44c1-96bb-2889ee52ba1a",
                  "parent_uuid": "606aa0b7-74b9-46a4-b959-ac880e90244c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d253f193-fd65-40ff-9778-752355ce2116",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "729986ab-550a-414d-9a9b-e3fc993a0f20",
              "parent_uuid": "d253f193-fd65-40ff-9778-752355ce2116",
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
              "uuid": "28a92f98-16ee-4e65-8f95-0f5127e6e628",
              "parent_uuid": "d253f193-fd65-40ff-9778-752355ce2116",
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
              "uuid": "794d41c3-99f4-491a-9ee0-5fb9f493200a",
              "parent_uuid": "d253f193-fd65-40ff-9778-752355ce2116",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b2e028e-3c08-468f-80c1-2dea8d311a5a",
                  "parent_uuid": "794d41c3-99f4-491a-9ee0-5fb9f493200a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f04421c-f67f-480c-ad29-fc4530eb4a7c",
              "parent_uuid": "d253f193-fd65-40ff-9778-752355ce2116",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2bef9b0-7c14-4a93-8a05-5f3f924a33d1",
                  "parent_uuid": "4f04421c-f67f-480c-ad29-fc4530eb4a7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23235483-7c99-4717-9cdb-7cdf44ba2b4f",
              "parent_uuid": "d253f193-fd65-40ff-9778-752355ce2116",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35dad0dc-bd64-45be-a725-b5c2aa06cd6c",
                  "parent_uuid": "23235483-7c99-4717-9cdb-7cdf44ba2b4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "729c1680-b38b-4a3d-bf5f-d45a78695ecc",
              "parent_uuid": "d253f193-fd65-40ff-9778-752355ce2116",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fa8481d-f593-4c43-b672-fc448dd07656",
                  "parent_uuid": "729c1680-b38b-4a3d-bf5f-d45a78695ecc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76b2457d-7b52-4c00-b588-cea6dd4ded1d",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd4b24af-ecf6-4c6c-81d5-1bf7b9e0228b",
              "parent_uuid": "76b2457d-7b52-4c00-b588-cea6dd4ded1d",
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
              "uuid": "45995231-fde0-4901-b1b6-f24a0bbcaa26",
              "parent_uuid": "76b2457d-7b52-4c00-b588-cea6dd4ded1d",
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
              "uuid": "ebcb82ac-20fb-4178-a862-c1a640673da8",
              "parent_uuid": "76b2457d-7b52-4c00-b588-cea6dd4ded1d",
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
                  "uuid": "22981528-b14d-413a-994f-d7c2f00419cc",
                  "parent_uuid": "ebcb82ac-20fb-4178-a862-c1a640673da8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "410e4532-f2e0-42c4-ad6e-55020888e603",
              "parent_uuid": "76b2457d-7b52-4c00-b588-cea6dd4ded1d",
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
                  "uuid": "c3ee5a83-929a-41e7-958c-7774005f1272",
                  "parent_uuid": "410e4532-f2e0-42c4-ad6e-55020888e603",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52150bec-9eec-47c5-97bf-6fd48e5480a0",
              "parent_uuid": "76b2457d-7b52-4c00-b588-cea6dd4ded1d",
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
                  "uuid": "81325faf-b9ea-4e98-b915-65e4d744c86c",
                  "parent_uuid": "52150bec-9eec-47c5-97bf-6fd48e5480a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1901c950-5dee-4f11-ab13-3350948633a5",
              "parent_uuid": "76b2457d-7b52-4c00-b588-cea6dd4ded1d",
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
                  "uuid": "70f76aeb-6b70-42dc-b7d6-4bd8fade6688",
                  "parent_uuid": "1901c950-5dee-4f11-ab13-3350948633a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "930297da-6abb-4169-9847-d01a8a36dffa",
              "parent_uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
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
              "uuid": "ca488d72-85d6-4bd5-a042-028395e0ed2d",
              "parent_uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
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
              "uuid": "fb0f79ec-749d-460c-93d8-fd7f89e3209b",
              "parent_uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
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
              "uuid": "03c49507-bcf0-4978-aa1e-df82877a7a44",
              "parent_uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
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
                  "uuid": "f7f3c1cc-c3b2-46ac-9763-65fb1481a16a",
                  "parent_uuid": "03c49507-bcf0-4978-aa1e-df82877a7a44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33e18f38-7dd8-4d9c-b3e2-056bf6a4d1f3",
              "parent_uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
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
                  "uuid": "938ec892-c244-4012-87d6-1114521d145e",
                  "parent_uuid": "33e18f38-7dd8-4d9c-b3e2-056bf6a4d1f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "98ef6654-2ad1-4ea6-a90b-a9c34aa765ef",
              "parent_uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
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
                  "uuid": "6b81edec-60ab-4b75-a9ed-dcd2de88454f",
                  "parent_uuid": "98ef6654-2ad1-4ea6-a90b-a9c34aa765ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f9fac71-85b0-4c04-a603-48b4f5b7df28",
              "parent_uuid": "03c53c7b-2e29-4360-aeda-220c3cced7ba",
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
                  "uuid": "ec030d5c-1a75-412f-a8e7-88e5deb0af48",
                  "parent_uuid": "3f9fac71-85b0-4c04-a603-48b4f5b7df28",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da6f383b-e223-4888-a359-125e0b59cf2d",
              "parent_uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
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
              "uuid": "e6776d74-bf3f-4428-8cf2-79ee294bcb94",
              "parent_uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
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
              "uuid": "1b751dff-381b-42aa-ab6d-eee6510c0a31",
              "parent_uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
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
                  "uuid": "1769827f-717c-4a7f-b0c1-3f03e8b30eef",
                  "parent_uuid": "1b751dff-381b-42aa-ab6d-eee6510c0a31",
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
              "uuid": "545e0b0a-1dd7-4fd6-94d8-2ced6884bf0c",
              "parent_uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
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
                  "uuid": "1387260d-9a48-4e1d-8128-9c5b0b22b0f2",
                  "parent_uuid": "545e0b0a-1dd7-4fd6-94d8-2ced6884bf0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0044045d-4a79-47fa-aa7c-138bb1d28347",
              "parent_uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
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
                  "uuid": "752ed1df-9260-4931-99f5-37d47095d406",
                  "parent_uuid": "0044045d-4a79-47fa-aa7c-138bb1d28347",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9530e737-2012-4748-aff3-f08d2c15f849",
              "parent_uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
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
                  "uuid": "c72fa52e-bd77-425c-b1ba-2d71db6b845f",
                  "parent_uuid": "9530e737-2012-4748-aff3-f08d2c15f849",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b333db4-3601-42a2-81dc-756a8072d404",
              "parent_uuid": "4a86d0f0-7d9c-42f8-a321-e347bd573b26",
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
                  "uuid": "6ded4b4c-7723-4a07-bfb4-33939e3a764a",
                  "parent_uuid": "9b333db4-3601-42a2-81dc-756a8072d404",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c21a39c9-1a9d-4032-9567-4d3a1927a5b9",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8031967d-5932-4898-b222-cccf21d99770",
              "parent_uuid": "c21a39c9-1a9d-4032-9567-4d3a1927a5b9",
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
              "uuid": "5d6c25d4-4319-4117-a903-b427b7cc9bac",
              "parent_uuid": "c21a39c9-1a9d-4032-9567-4d3a1927a5b9",
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
              "uuid": "4e0b1728-34a8-40d3-9ddf-43910b199736",
              "parent_uuid": "c21a39c9-1a9d-4032-9567-4d3a1927a5b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f92a15a1-85bd-47a3-b8b5-41060e1f47e8",
                  "parent_uuid": "4e0b1728-34a8-40d3-9ddf-43910b199736",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "744c8afe-e310-49a0-8c1c-e4043bb97ee3",
              "parent_uuid": "c21a39c9-1a9d-4032-9567-4d3a1927a5b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93dac6ff-4e1d-4960-8660-3a9f3b70822f",
                  "parent_uuid": "744c8afe-e310-49a0-8c1c-e4043bb97ee3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a85ccff-b964-4242-8323-cecf636bfda5",
              "parent_uuid": "c21a39c9-1a9d-4032-9567-4d3a1927a5b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1906a354-1acd-4da9-91b2-f470aca572e5",
                  "parent_uuid": "0a85ccff-b964-4242-8323-cecf636bfda5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dda6c902-a4a8-401c-8507-b92f9f8f9b20",
              "parent_uuid": "c21a39c9-1a9d-4032-9567-4d3a1927a5b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e2a21a6-c9bd-427f-8aa7-efced553a450",
                  "parent_uuid": "dda6c902-a4a8-401c-8507-b92f9f8f9b20",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "28622186-b126-4237-87ab-36767de40e75",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2fcc839a-a366-4fbf-ade9-fce9234c40f1",
              "parent_uuid": "28622186-b126-4237-87ab-36767de40e75",
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
              "uuid": "4751c5fd-ac02-4d9b-a7e2-735b3f497aa5",
              "parent_uuid": "28622186-b126-4237-87ab-36767de40e75",
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
              "uuid": "5ae1ace7-91f8-4232-8307-fb762f7b9219",
              "parent_uuid": "28622186-b126-4237-87ab-36767de40e75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a125015-9232-45d0-ad70-aea06d7cddce",
                  "parent_uuid": "5ae1ace7-91f8-4232-8307-fb762f7b9219",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cad22077-5977-4abf-aac5-4c568155c466",
              "parent_uuid": "28622186-b126-4237-87ab-36767de40e75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33d76c71-cd0d-4e50-885c-6a53e3b7ef8b",
                  "parent_uuid": "cad22077-5977-4abf-aac5-4c568155c466",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bb2e3c7-eb82-49b3-bb8b-1d78d906cf94",
              "parent_uuid": "28622186-b126-4237-87ab-36767de40e75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e6d6ed2-cde8-4d09-a37f-4805f912a3cd",
                  "parent_uuid": "1bb2e3c7-eb82-49b3-bb8b-1d78d906cf94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7ba7e1d-fa1a-44e0-867e-b38459ba9498",
              "parent_uuid": "28622186-b126-4237-87ab-36767de40e75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9776a22-f5a5-40ec-bc2e-b25f04915ba1",
                  "parent_uuid": "b7ba7e1d-fa1a-44e0-867e-b38459ba9498",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ec8c3370-5ff8-4201-9a7f-fd6b4b3dc856",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95a5f3b2-a882-4379-ac0d-ca79c0167ae1",
              "parent_uuid": "ec8c3370-5ff8-4201-9a7f-fd6b4b3dc856",
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
              "uuid": "70114487-c423-4e14-b26a-f020b85f3fd1",
              "parent_uuid": "ec8c3370-5ff8-4201-9a7f-fd6b4b3dc856",
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
              "uuid": "4074cd6e-fc19-43d0-9a14-73d10d3a2d08",
              "parent_uuid": "ec8c3370-5ff8-4201-9a7f-fd6b4b3dc856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfbd2e46-17a6-4b8e-9dc5-ebe1d5111c97",
                  "parent_uuid": "4074cd6e-fc19-43d0-9a14-73d10d3a2d08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bfd0e99-7f0a-4e22-bf51-b9bad9377e7c",
              "parent_uuid": "ec8c3370-5ff8-4201-9a7f-fd6b4b3dc856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee616e4f-ae8e-4d0b-9f91-803b34ce7645",
                  "parent_uuid": "5bfd0e99-7f0a-4e22-bf51-b9bad9377e7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4843a58-083f-459b-b7ab-a6010e329b21",
              "parent_uuid": "ec8c3370-5ff8-4201-9a7f-fd6b4b3dc856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6180db6e-045e-4a6f-a41b-2489ae1d1951",
                  "parent_uuid": "e4843a58-083f-459b-b7ab-a6010e329b21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "874c495d-919b-49e5-9054-6c8e11f86d06",
              "parent_uuid": "ec8c3370-5ff8-4201-9a7f-fd6b4b3dc856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5d17a6a-7bc1-4dc4-a6df-fef78fc9e97f",
                  "parent_uuid": "874c495d-919b-49e5-9054-6c8e11f86d06",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "036a9c57-3167-42de-a897-abdb1c0e0908",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d04c3a3a-43b1-4879-8634-19749d64edba",
              "parent_uuid": "036a9c57-3167-42de-a897-abdb1c0e0908",
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
              "uuid": "295fa269-c781-4ab2-976e-281565a0f50e",
              "parent_uuid": "036a9c57-3167-42de-a897-abdb1c0e0908",
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
              "uuid": "b41af496-32ed-4208-903f-d2b7d54294b4",
              "parent_uuid": "036a9c57-3167-42de-a897-abdb1c0e0908",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31a985cd-fd3a-4cd4-a2b0-0cb80b954c04",
                  "parent_uuid": "b41af496-32ed-4208-903f-d2b7d54294b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8e869b0-f65e-42e2-8f85-0485536f63fb",
              "parent_uuid": "036a9c57-3167-42de-a897-abdb1c0e0908",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2e8839a-7cd0-4816-9723-498fdb1fb3b9",
                  "parent_uuid": "e8e869b0-f65e-42e2-8f85-0485536f63fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab5697ea-57c5-4ed6-91ac-4d75751293cd",
              "parent_uuid": "036a9c57-3167-42de-a897-abdb1c0e0908",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "090bb572-db1a-4d04-8336-b70d3aa04550",
                  "parent_uuid": "ab5697ea-57c5-4ed6-91ac-4d75751293cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ef830c8-38db-4eca-bc0f-ac1123498800",
              "parent_uuid": "036a9c57-3167-42de-a897-abdb1c0e0908",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "998b36d2-7a21-4dd8-8989-d03ef8c2123b",
                  "parent_uuid": "6ef830c8-38db-4eca-bc0f-ac1123498800",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "44e2da84-2634-4bdd-ab73-c73803a3ce92",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a82ae2fd-2194-497d-bea1-4b264476910b",
              "parent_uuid": "44e2da84-2634-4bdd-ab73-c73803a3ce92",
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
          "uuid": "fd511103-2a3e-4f7f-ade8-70f5971c2fe2",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9d05eeab-85d6-453d-a4fb-1be6b00ee717",
              "parent_uuid": "fd511103-2a3e-4f7f-ade8-70f5971c2fe2",
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
              "uuid": "835b5f2c-a859-47d9-aa7e-f553070f1085",
              "parent_uuid": "fd511103-2a3e-4f7f-ade8-70f5971c2fe2",
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
              "uuid": "e8cc23df-248b-4e21-bcd0-b15bcc3ba040",
              "parent_uuid": "fd511103-2a3e-4f7f-ade8-70f5971c2fe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e211dad-dd14-4825-b919-4d7bf325f6a8",
                  "parent_uuid": "e8cc23df-248b-4e21-bcd0-b15bcc3ba040",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7ee5a54-187a-4922-adc7-5b1ad75d8f1d",
              "parent_uuid": "fd511103-2a3e-4f7f-ade8-70f5971c2fe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "686dedbb-cc30-43bc-aabf-34087453dc17",
                  "parent_uuid": "c7ee5a54-187a-4922-adc7-5b1ad75d8f1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57787325-5188-447d-886f-227bdf7c99f9",
              "parent_uuid": "fd511103-2a3e-4f7f-ade8-70f5971c2fe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e915feb-3bc5-401e-bc2b-8138ce10a162",
                  "parent_uuid": "57787325-5188-447d-886f-227bdf7c99f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb0b7f3e-5277-4a47-b2c4-c91e1f646847",
              "parent_uuid": "fd511103-2a3e-4f7f-ade8-70f5971c2fe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c2154ab-a7ab-4070-b11b-edb6da9e49b0",
                  "parent_uuid": "eb0b7f3e-5277-4a47-b2c4-c91e1f646847",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c8d9086-7bf8-494c-a61c-179bfd213751",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3bedcbbc-fdb3-4060-83b1-4c9f08311e09",
              "parent_uuid": "7c8d9086-7bf8-494c-a61c-179bfd213751",
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
              "uuid": "2d5dfc1a-fd89-4fff-80e4-4246d9998501",
              "parent_uuid": "7c8d9086-7bf8-494c-a61c-179bfd213751",
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
              "uuid": "64ccbebf-2424-49a3-8068-794c9c66cce2",
              "parent_uuid": "7c8d9086-7bf8-494c-a61c-179bfd213751",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3325425-889d-465c-8ac2-c9fa766985e2",
                  "parent_uuid": "64ccbebf-2424-49a3-8068-794c9c66cce2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3e93fb2-66b4-44be-9da4-7bb28458ede2",
              "parent_uuid": "7c8d9086-7bf8-494c-a61c-179bfd213751",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "135e3a85-54fc-4bc8-8c18-172e9aebf6d2",
                  "parent_uuid": "b3e93fb2-66b4-44be-9da4-7bb28458ede2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ece6b0c-4290-4ece-85f0-bcc53e47ee8b",
              "parent_uuid": "7c8d9086-7bf8-494c-a61c-179bfd213751",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a3eeaee-1dd2-4ac6-bfbb-0217149a75a8",
                  "parent_uuid": "5ece6b0c-4290-4ece-85f0-bcc53e47ee8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01dd8a3e-f392-4aae-89c9-90eaa838431b",
              "parent_uuid": "7c8d9086-7bf8-494c-a61c-179bfd213751",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee397f93-6059-49f8-934e-213268d825fc",
                  "parent_uuid": "01dd8a3e-f392-4aae-89c9-90eaa838431b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fdca59a6-bbb1-4494-8493-62ae51e67c48",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5a80f32-a746-40f0-aa49-e4824a57b37c",
              "parent_uuid": "fdca59a6-bbb1-4494-8493-62ae51e67c48",
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
              "uuid": "092944b6-6724-4978-89ee-037cd6b8eaa0",
              "parent_uuid": "fdca59a6-bbb1-4494-8493-62ae51e67c48",
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
              "uuid": "2758fb49-65f8-42f8-b0b0-85ff91ed89dd",
              "parent_uuid": "fdca59a6-bbb1-4494-8493-62ae51e67c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c82f2af2-6f17-4b98-80be-4ceab3c6c4d4",
                  "parent_uuid": "2758fb49-65f8-42f8-b0b0-85ff91ed89dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d449661-17d1-440c-b328-efe94297dd42",
              "parent_uuid": "fdca59a6-bbb1-4494-8493-62ae51e67c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17187a3b-4715-4eb3-8f33-fdf957986adc",
                  "parent_uuid": "7d449661-17d1-440c-b328-efe94297dd42",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42382c40-8891-4b47-8394-2bb55baa52a0",
              "parent_uuid": "fdca59a6-bbb1-4494-8493-62ae51e67c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7eabfb8d-4585-4618-b5ea-8e1f858bf83b",
                  "parent_uuid": "42382c40-8891-4b47-8394-2bb55baa52a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8bf8e6a2-3d33-4207-82cd-4aa21b433fc8",
              "parent_uuid": "fdca59a6-bbb1-4494-8493-62ae51e67c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c909fbe-f083-49ae-9fd5-a8bb59e319de",
                  "parent_uuid": "8bf8e6a2-3d33-4207-82cd-4aa21b433fc8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2ec91904-729d-492f-9979-af4f3aabec5f",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50ba3a61-6085-4287-b7b2-8d118bda9151",
              "parent_uuid": "2ec91904-729d-492f-9979-af4f3aabec5f",
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
              "uuid": "bfabffd2-c296-4802-bde6-0f05e952ddec",
              "parent_uuid": "2ec91904-729d-492f-9979-af4f3aabec5f",
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
              "uuid": "fae18100-d285-46bf-9ed7-cdb0e5c10667",
              "parent_uuid": "2ec91904-729d-492f-9979-af4f3aabec5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cdddc85-ba12-44b3-ad3f-4e2ebf377bca",
                  "parent_uuid": "fae18100-d285-46bf-9ed7-cdb0e5c10667",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93468ee3-7f72-46a5-8454-15a6e12f3515",
              "parent_uuid": "2ec91904-729d-492f-9979-af4f3aabec5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18dc1383-c8a6-46fa-a413-92a868a27b88",
                  "parent_uuid": "93468ee3-7f72-46a5-8454-15a6e12f3515",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "570618ce-0f03-4a09-81f3-cb6d337d7b0d",
              "parent_uuid": "2ec91904-729d-492f-9979-af4f3aabec5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02e212f4-b77f-4100-aa53-aaaf32c5ab99",
                  "parent_uuid": "570618ce-0f03-4a09-81f3-cb6d337d7b0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a82d49a9-651f-4d00-b013-a4fbbfcd741b",
              "parent_uuid": "2ec91904-729d-492f-9979-af4f3aabec5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71066a26-32e3-48b4-bbb0-706fe2b2c176",
                  "parent_uuid": "a82d49a9-651f-4d00-b013-a4fbbfcd741b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "40836da7-0a11-4bd2-8b2e-affbed8d32c7",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cd2c348-0ba4-4c9e-8d02-3e3fdfe7be6e",
              "parent_uuid": "40836da7-0a11-4bd2-8b2e-affbed8d32c7",
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
              "uuid": "280116b9-df50-4aa6-87c3-a8171b546203",
              "parent_uuid": "40836da7-0a11-4bd2-8b2e-affbed8d32c7",
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
              "uuid": "c6daedfc-2d5c-4100-8ff3-9e235e01452a",
              "parent_uuid": "40836da7-0a11-4bd2-8b2e-affbed8d32c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41eb9604-bc1e-41e5-ac59-d189e63bdfd5",
                  "parent_uuid": "c6daedfc-2d5c-4100-8ff3-9e235e01452a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eda9186a-ae0f-4b76-842b-7e524609833c",
              "parent_uuid": "40836da7-0a11-4bd2-8b2e-affbed8d32c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52ae6f48-db6a-4802-8376-6e8232e0b43e",
                  "parent_uuid": "eda9186a-ae0f-4b76-842b-7e524609833c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a6f4ddb-e541-48f2-89bd-860c5a77c407",
              "parent_uuid": "40836da7-0a11-4bd2-8b2e-affbed8d32c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5b7bc1d-d5a9-49e7-8093-1219283254ab",
                  "parent_uuid": "2a6f4ddb-e541-48f2-89bd-860c5a77c407",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3683807-9e2c-4b98-b8af-710145236e38",
              "parent_uuid": "40836da7-0a11-4bd2-8b2e-affbed8d32c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75efee8f-02e3-4958-b99b-6ee554d7368b",
                  "parent_uuid": "a3683807-9e2c-4b98-b8af-710145236e38",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a75133eb-166d-49a4-b5e1-d4a231c7cde8",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58ca90e1-7fe4-4e30-ae06-3cbaa1307df4",
              "parent_uuid": "a75133eb-166d-49a4-b5e1-d4a231c7cde8",
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
          "uuid": "d5232f1e-8385-4287-bded-56cbf48fe16b",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb6b08b4-b167-41f0-aadf-cd39b091c554",
              "parent_uuid": "d5232f1e-8385-4287-bded-56cbf48fe16b",
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
          "uuid": "916806e4-99ad-4317-bdbc-c5ffa6f410d0",
          "parent_uuid": "2621f843-1022-4d52-a905-26e894e0335f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4636aa18-b46e-4991-86b1-b10a479a27f2",
              "parent_uuid": "916806e4-99ad-4317-bdbc-c5ffa6f410d0",
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
                  "uuid": "cf2388b1-6693-40d7-a4d3-7412e9d85201",
                  "parent_uuid": "4636aa18-b46e-4991-86b1-b10a479a27f2",
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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

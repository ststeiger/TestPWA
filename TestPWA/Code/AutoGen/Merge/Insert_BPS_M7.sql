
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
  "uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
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
      "uuid": "af519515-4e0b-4185-b145-342119b34eed",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
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
      "uuid": "bf2f4bdc-ce74-4bd6-8f8d-bc265b33671b",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
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
      "uuid": "2f41df3f-6712-4b84-af12-1508d0f0388b",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
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
      "uuid": "0731196b-1518-4e9d-96b2-9fcb1e5875d4",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
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
      "uuid": "3e087a3f-9b43-44bc-8966-ba9cf2d97301",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
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
      "uuid": "74ddb1ba-791c-4c4c-93a7-704cc3bda536",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "29"
        ]
      ],
      "children": [],
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "6ae602ce-65b9-4393-a631-ef3171616f50",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
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
      "uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
      "parent_uuid": "6759bd7c-5880-41de-ae59-9eec0bae0e22",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "043d5d8e-70c6-4466-8898-73bf1cff0510",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "97b16621-32b3-45f5-8f08-066c3013b89a",
              "parent_uuid": "043d5d8e-70c6-4466-8898-73bf1cff0510",
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
              "uuid": "a11d26a7-4124-4690-bf6a-30ddc4144923",
              "parent_uuid": "043d5d8e-70c6-4466-8898-73bf1cff0510",
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
              "uuid": "f3d49347-95ad-4f1f-b83f-5187fcb420cf",
              "parent_uuid": "043d5d8e-70c6-4466-8898-73bf1cff0510",
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
              "uuid": "e3628e5e-6bdc-46d4-8402-0659ad1c8572",
              "parent_uuid": "043d5d8e-70c6-4466-8898-73bf1cff0510",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk:     BPS M7 </span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "aae381a7-7f24-4989-978f-0ee24375d27d",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "997ee207-76b0-435f-a2c7-21a50684bd2c",
              "parent_uuid": "aae381a7-7f24-4989-978f-0ee24375d27d",
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
                  "height",
                  "20"
                ]
              ],
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e4b98938-9d5f-497d-84f9-deadad32e8b8",
              "parent_uuid": "aae381a7-7f24-4989-978f-0ee24375d27d",
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
              "uuid": "40b5880c-ea45-4f04-a142-c132cd8da76c",
              "parent_uuid": "aae381a7-7f24-4989-978f-0ee24375d27d",
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
              "uuid": "b7195096-26f3-4708-a827-42483d3e7c83",
              "parent_uuid": "aae381a7-7f24-4989-978f-0ee24375d27d",
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
          "uuid": "8aeae8c9-d1b6-416f-9733-b1f7e54bb66b",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "67da3a6b-de9d-457d-ba10-42a1ae723d60",
              "parent_uuid": "8aeae8c9-d1b6-416f-9733-b1f7e54bb66b",
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
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "143"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f4eab682-f169-4ccc-93de-775d43e95acb",
              "parent_uuid": "8aeae8c9-d1b6-416f-9733-b1f7e54bb66b",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "aff331f2-daa5-4934-94d6-af6f3db72b51",
              "parent_uuid": "8aeae8c9-d1b6-416f-9733-b1f7e54bb66b",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "453874be-f30c-4198-8107-5d7324656e37",
              "parent_uuid": "8aeae8c9-d1b6-416f-9733-b1f7e54bb66b",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "746e5ef9-f95e-4a82-8312-8b468e1f2258",
              "parent_uuid": "8aeae8c9-d1b6-416f-9733-b1f7e54bb66b",
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
              "uuid": "22e87da0-4cc6-4094-9a5f-3c57e441208a",
              "parent_uuid": "8aeae8c9-d1b6-416f-9733-b1f7e54bb66b",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "7d7a61cf-09fd-48d6-b862-06689a98d071",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f4cf8861-6476-4a9d-b30d-f9c1c68c62d1",
              "parent_uuid": "7d7a61cf-09fd-48d6-b862-06689a98d071",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "2353b42a-9f81-42a9-98d2-1e98f76a33fd",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3d55c1b-42ce-4782-b7b9-4aa6512732c2",
              "parent_uuid": "2353b42a-9f81-42a9-98d2-1e98f76a33fd",
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
              "uuid": "f1bad4ff-8543-423b-98fe-a4cc25ce2d1c",
              "parent_uuid": "2353b42a-9f81-42a9-98d2-1e98f76a33fd",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f8deea8e-1808-4e9f-8d83-9982aa37f13c",
              "parent_uuid": "2353b42a-9f81-42a9-98d2-1e98f76a33fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b269a0f1-5f14-4902-ac87-7a64f41f0d85",
                  "parent_uuid": "f8deea8e-1808-4e9f-8d83-9982aa37f13c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3f70e88-b7ac-4d25-af49-134f95585f32",
              "parent_uuid": "2353b42a-9f81-42a9-98d2-1e98f76a33fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "229f90ae-f569-45c7-9d56-0726af98d21d",
                  "parent_uuid": "b3f70e88-b7ac-4d25-af49-134f95585f32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c20f9113-ec10-4207-b8be-88320550252b",
              "parent_uuid": "2353b42a-9f81-42a9-98d2-1e98f76a33fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0072b963-860d-4929-829c-5a5afc3c8947",
                  "parent_uuid": "c20f9113-ec10-4207-b8be-88320550252b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03f33e32-262d-4b62-a18b-c2917529d020",
              "parent_uuid": "2353b42a-9f81-42a9-98d2-1e98f76a33fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a598378e-8171-43b3-80bf-1da87e1672e7",
                  "parent_uuid": "03f33e32-262d-4b62-a18b-c2917529d020",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2106dfec-ae49-4caf-a65c-ac109318b77d",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35c307da-aa4c-49ec-b905-76562e0572fd",
              "parent_uuid": "2106dfec-ae49-4caf-a65c-ac109318b77d",
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
              "uuid": "9da4f37e-cee4-4763-8cfd-2f232f1918e9",
              "parent_uuid": "2106dfec-ae49-4caf-a65c-ac109318b77d",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0e76b79b-0e15-457b-bb49-143840d317ef",
              "parent_uuid": "2106dfec-ae49-4caf-a65c-ac109318b77d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e0e83b1-defd-4c57-b85f-8278a8f634b5",
                  "parent_uuid": "0e76b79b-0e15-457b-bb49-143840d317ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ea5dba1-5b27-4932-9161-1c937e35f9a0",
              "parent_uuid": "2106dfec-ae49-4caf-a65c-ac109318b77d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b14d4cb0-8653-4d3f-b05b-2c86cb6f820d",
                  "parent_uuid": "2ea5dba1-5b27-4932-9161-1c937e35f9a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4940b6a-a7aa-4458-98aa-082e0da8205e",
              "parent_uuid": "2106dfec-ae49-4caf-a65c-ac109318b77d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e156c239-42a3-4cb9-96ab-ddc884f77b37",
                  "parent_uuid": "b4940b6a-a7aa-4458-98aa-082e0da8205e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ae8752c-f556-4331-9846-6db183e447bd",
              "parent_uuid": "2106dfec-ae49-4caf-a65c-ac109318b77d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "971cdd9e-552d-4194-a3a0-9397dd2458ea",
                  "parent_uuid": "2ae8752c-f556-4331-9846-6db183e447bd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c9121fa1-2812-4bd1-8914-6252cff83007",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b14bffb7-e891-4192-bada-f91eef7e2a24",
              "parent_uuid": "c9121fa1-2812-4bd1-8914-6252cff83007",
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
              "innerHtml": "\r\n                    <span>Doppelspurbanderolierer reinigen und justieren</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "dce1bde4-436a-4bc4-8f9a-11e97108e318",
              "parent_uuid": "c9121fa1-2812-4bd1-8914-6252cff83007",
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
              "innerHtml": "\r\n                    <span>79</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "df81782b-732a-44fc-aa69-75d4b289f54e",
              "parent_uuid": "c9121fa1-2812-4bd1-8914-6252cff83007",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5d5bb567-d960-497b-85db-21fca998694b",
                  "parent_uuid": "df81782b-732a-44fc-aa69-75d4b289f54e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b5719de-a70e-48a2-9894-46f5c7ad447a",
              "parent_uuid": "c9121fa1-2812-4bd1-8914-6252cff83007",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3b9e4f92-6d15-492f-99dd-02707b8f8fb1",
                  "parent_uuid": "8b5719de-a70e-48a2-9894-46f5c7ad447a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "025a101e-648e-4459-91c8-d74f74a0bd3e",
              "parent_uuid": "c9121fa1-2812-4bd1-8914-6252cff83007",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9fe9c6df-a178-4897-a9df-80fe3fc2a491",
                  "parent_uuid": "025a101e-648e-4459-91c8-d74f74a0bd3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66a534c1-b440-497c-aa28-fc81107875a0",
              "parent_uuid": "c9121fa1-2812-4bd1-8914-6252cff83007",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e61e2c46-a63f-4658-894c-879d67d63fcf",
                  "parent_uuid": "66a534c1-b440-497c-aa28-fc81107875a0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "15483e62-ac4f-48f9-ad7d-b4c1a2cf5ec9",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d97bde26-1ba5-48e4-910a-706b1a180e9d",
              "parent_uuid": "15483e62-ac4f-48f9-ad7d-b4c1a2cf5ec9",
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
              "innerHtml": "\r\n                    <span>Flach- Zahnriemen Hauptantrieb prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8bb0fc20-7df8-4933-ace1-98a6359f88ea",
              "parent_uuid": "15483e62-ac4f-48f9-ad7d-b4c1a2cf5ec9",
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
              "innerHtml": "\r\n                    <span>87</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7f7d7ed5-bb49-4c83-9717-3fe55fd497af",
              "parent_uuid": "15483e62-ac4f-48f9-ad7d-b4c1a2cf5ec9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ab992b01-5cbd-486a-9516-8145ddc0a85e",
                  "parent_uuid": "7f7d7ed5-bb49-4c83-9717-3fe55fd497af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b13418e-7719-4a1d-8f12-94ffe6c39580",
              "parent_uuid": "15483e62-ac4f-48f9-ad7d-b4c1a2cf5ec9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3963060c-0b65-47af-bf3e-0af80390158a",
                  "parent_uuid": "1b13418e-7719-4a1d-8f12-94ffe6c39580",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "897f3ee1-258c-41ef-aef5-6b8d5185d8df",
              "parent_uuid": "15483e62-ac4f-48f9-ad7d-b4c1a2cf5ec9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "094d8fbd-7bbd-42e4-af6d-1ad91e3b61eb",
                  "parent_uuid": "897f3ee1-258c-41ef-aef5-6b8d5185d8df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3b16cd8-d2c7-4c8a-9a8e-69933a65b1d9",
              "parent_uuid": "15483e62-ac4f-48f9-ad7d-b4c1a2cf5ec9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c453dc93-4991-411f-bdd6-5b399112939a",
                  "parent_uuid": "d3b16cd8-d2c7-4c8a-9a8e-69933a65b1d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a95d7da7-304c-4214-97e7-68a7da39f89c",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "15a879ed-f1c8-4d5a-9241-742abe1b653a",
              "parent_uuid": "a95d7da7-304c-4214-97e7-68a7da39f89c",
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "106ed7d7-108f-4ff8-b6eb-c76e0d7c2d3c",
              "parent_uuid": "a95d7da7-304c-4214-97e7-68a7da39f89c",
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
              "uuid": "1cac9e11-70a9-4e8a-a096-4a2d5ccb4a9a",
              "parent_uuid": "a95d7da7-304c-4214-97e7-68a7da39f89c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "127a6577-70f3-4e0e-b49a-ca1d7fc6a243",
                  "parent_uuid": "1cac9e11-70a9-4e8a-a096-4a2d5ccb4a9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dbb5474-6648-4eee-8505-22cbda8a1e84",
              "parent_uuid": "a95d7da7-304c-4214-97e7-68a7da39f89c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7f073c12-7207-4f84-acec-66f7d8196945",
                  "parent_uuid": "0dbb5474-6648-4eee-8505-22cbda8a1e84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "415bd0b2-0cf8-4e09-8b5d-e67427881039",
              "parent_uuid": "a95d7da7-304c-4214-97e7-68a7da39f89c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5a82149f-33ac-4090-86f0-25b91c640319",
                  "parent_uuid": "415bd0b2-0cf8-4e09-8b5d-e67427881039",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c51c65b-1646-4b88-91a3-69e51d739467",
              "parent_uuid": "a95d7da7-304c-4214-97e7-68a7da39f89c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "366be632-1f72-4bb2-99fb-8ca7772c3a26",
                  "parent_uuid": "9c51c65b-1646-4b88-91a3-69e51d739467",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "506d5d89-39a2-45ea-a8a7-178861360633",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbcd1ff3-aba8-446a-9df9-6724c8e29c09",
              "parent_uuid": "506d5d89-39a2-45ea-a8a7-178861360633",
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhaltewalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1eebe425-b2d0-47d0-af83-6c5928691eca",
              "parent_uuid": "506d5d89-39a2-45ea-a8a7-178861360633",
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
              "uuid": "23807998-185e-4a94-b577-683e1204af33",
              "parent_uuid": "506d5d89-39a2-45ea-a8a7-178861360633",
              "tagName": "td",
              "properties": [
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
                  "uuid": "99b50043-8718-46f7-88b1-bcffb26e0161",
                  "parent_uuid": "23807998-185e-4a94-b577-683e1204af33",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70016c27-947f-4251-aeb2-da69c89b46d4",
              "parent_uuid": "506d5d89-39a2-45ea-a8a7-178861360633",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c7814f8f-f963-4afe-843b-cca629b67f34",
                  "parent_uuid": "70016c27-947f-4251-aeb2-da69c89b46d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28fda69a-0e32-48ae-9914-6f11719e9ebd",
              "parent_uuid": "506d5d89-39a2-45ea-a8a7-178861360633",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8a3b34c0-912c-4853-bb10-7c6a537a7c99",
                  "parent_uuid": "28fda69a-0e32-48ae-9914-6f11719e9ebd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d16e32a0-af80-4615-9c34-3438baeb61c5",
              "parent_uuid": "506d5d89-39a2-45ea-a8a7-178861360633",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1475cbf2-0641-41bd-8360-dd4bd0d97b7f",
                  "parent_uuid": "d16e32a0-af80-4615-9c34-3438baeb61c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cf16c2f5-96ac-43b1-8e27-36ac61c852bf",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75bdc67e-a6a4-482b-b21e-8e514f51c0d8",
              "parent_uuid": "cf16c2f5-96ac-43b1-8e27-36ac61c852bf",
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
              "uuid": "f9fa359a-c3fa-4d51-a1bc-e88d5ad824de",
              "parent_uuid": "cf16c2f5-96ac-43b1-8e27-36ac61c852bf",
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
              "uuid": "8aaecb1c-4fd5-4449-8d7f-9e24f9b23a4e",
              "parent_uuid": "cf16c2f5-96ac-43b1-8e27-36ac61c852bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ad07ce8e-8350-4093-92bd-4d5aacc177b0",
                  "parent_uuid": "8aaecb1c-4fd5-4449-8d7f-9e24f9b23a4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "838c7443-8b8b-48e4-b6c1-f4cf12e450f7",
              "parent_uuid": "cf16c2f5-96ac-43b1-8e27-36ac61c852bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "50b760b3-3533-4b17-9181-706072841723",
                  "parent_uuid": "838c7443-8b8b-48e4-b6c1-f4cf12e450f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6eb02c15-35d4-4dc5-9ab7-274d0a41da95",
              "parent_uuid": "cf16c2f5-96ac-43b1-8e27-36ac61c852bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "26b95c32-a462-4a05-b98c-97e4aa032fc4",
                  "parent_uuid": "6eb02c15-35d4-4dc5-9ab7-274d0a41da95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33777eaa-5a3e-48b1-8988-8fe0ecd62d8a",
              "parent_uuid": "cf16c2f5-96ac-43b1-8e27-36ac61c852bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "df9d9294-5027-4d80-a6d3-fb1cb461dc8d",
                  "parent_uuid": "33777eaa-5a3e-48b1-8988-8fe0ecd62d8a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e5b84be-e6fe-432d-afcb-e37505c4a7e4",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e68755fb-456a-44b7-b99e-2fd7823fdbcf",
              "parent_uuid": "7e5b84be-e6fe-432d-afcb-e37505c4a7e4",
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
              "innerHtml": "\r\n                    <span>Lichtschranken Schiebetürenüberwachung reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e8436251-8e27-453e-8ce0-b01d6517a8fb",
              "parent_uuid": "7e5b84be-e6fe-432d-afcb-e37505c4a7e4",
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
              "uuid": "36855693-0360-46aa-be0f-4fbbd0089824",
              "parent_uuid": "7e5b84be-e6fe-432d-afcb-e37505c4a7e4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dc077922-7ada-4ec7-a712-422a090f084f",
                  "parent_uuid": "36855693-0360-46aa-be0f-4fbbd0089824",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41a420cd-4c90-40c6-9576-bb154bf603aa",
              "parent_uuid": "7e5b84be-e6fe-432d-afcb-e37505c4a7e4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0547f392-19da-44d0-89c3-23ac6ab7fde9",
                  "parent_uuid": "41a420cd-4c90-40c6-9576-bb154bf603aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1917f5f3-ad6d-43f4-9d30-9e3888784dc4",
              "parent_uuid": "7e5b84be-e6fe-432d-afcb-e37505c4a7e4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c9e03209-99eb-4067-8bf6-cb21f32b3a54",
                  "parent_uuid": "1917f5f3-ad6d-43f4-9d30-9e3888784dc4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29790003-70a3-4555-a893-e60aa50c7dfe",
              "parent_uuid": "7e5b84be-e6fe-432d-afcb-e37505c4a7e4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6a1d5fdb-92c1-4984-9b6a-a648075b011f",
                  "parent_uuid": "29790003-70a3-4555-a893-e60aa50c7dfe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a4252564-0864-4beb-8762-acfd4d4ded3e",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "213f1292-62e4-4ee5-9811-391a45286d7b",
              "parent_uuid": "a4252564-0864-4beb-8762-acfd4d4ded3e",
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
              "innerHtml": "\r\n                    <span>Banknotenweichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ff85d9b4-b913-4912-bf9c-3ed65f22e20c",
              "parent_uuid": "a4252564-0864-4beb-8762-acfd4d4ded3e",
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
              "uuid": "9436688a-171f-497b-8572-a458f357b478",
              "parent_uuid": "a4252564-0864-4beb-8762-acfd4d4ded3e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "92604297-f457-4e24-a7ba-93e4ec8d1f36",
                  "parent_uuid": "9436688a-171f-497b-8572-a458f357b478",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22c65d96-ec77-49b4-bd52-085bf8aa87cf",
              "parent_uuid": "a4252564-0864-4beb-8762-acfd4d4ded3e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2c070e70-06d0-4a2d-90e4-bb50d2cb910d",
                  "parent_uuid": "22c65d96-ec77-49b4-bd52-085bf8aa87cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd6d8fa0-9cf3-4529-96f6-c61b89c342d0",
              "parent_uuid": "a4252564-0864-4beb-8762-acfd4d4ded3e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0d40df32-8d97-4b37-a5f0-2731cbf6cb51",
                  "parent_uuid": "cd6d8fa0-9cf3-4529-96f6-c61b89c342d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fab105ac-57de-4f37-82b8-d63265685b42",
              "parent_uuid": "a4252564-0864-4beb-8762-acfd4d4ded3e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f77a4d6d-6dcd-433d-a64a-6497c2b2a1c8",
                  "parent_uuid": "fab105ac-57de-4f37-82b8-d63265685b42",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4aca6aae-7b7e-4d67-9c45-4d498e134c36",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33d3a055-3f63-4df5-bdd4-aaec5bf8ea2a",
              "parent_uuid": "4aca6aae-7b7e-4d67-9c45-4d498e134c36",
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
              "innerHtml": "\r\n                    <span>Bündler prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0aed4f5b-3e52-4b8f-aed0-446e8334300c",
              "parent_uuid": "4aca6aae-7b7e-4d67-9c45-4d498e134c36",
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
              "innerHtml": "\r\n                    <span>90</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "31652a37-73af-4028-aea1-5da1d230558d",
              "parent_uuid": "4aca6aae-7b7e-4d67-9c45-4d498e134c36",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fb11bdd8-0dd0-4816-999c-dae018b5f3ce",
                  "parent_uuid": "31652a37-73af-4028-aea1-5da1d230558d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec00439a-0b9a-4052-8a37-63b0873a23de",
              "parent_uuid": "4aca6aae-7b7e-4d67-9c45-4d498e134c36",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ec3e0506-8f57-4759-8ec9-73b7671f2ca4",
                  "parent_uuid": "ec00439a-0b9a-4052-8a37-63b0873a23de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b172d64-374b-460e-8ed0-83c1b1ae9cb5",
              "parent_uuid": "4aca6aae-7b7e-4d67-9c45-4d498e134c36",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fa71369b-e616-4188-9daa-f6220df71596",
                  "parent_uuid": "2b172d64-374b-460e-8ed0-83c1b1ae9cb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f34cb4d5-efe8-4d98-a9df-956df919fdf9",
              "parent_uuid": "4aca6aae-7b7e-4d67-9c45-4d498e134c36",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5768c9a4-a418-408f-ae69-84b3bb92838a",
                  "parent_uuid": "f34cb4d5-efe8-4d98-a9df-956df919fdf9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "319f2c7f-5699-4a51-84a4-8e77d1c99a5d",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e597da8-0ec4-4167-811c-0f7c7dd6554c",
              "parent_uuid": "319f2c7f-5699-4a51-84a4-8e77d1c99a5d",
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
              "uuid": "b689c144-c770-48b7-ace0-095a5a8ef014",
              "parent_uuid": "319f2c7f-5699-4a51-84a4-8e77d1c99a5d",
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
              "innerHtml": "\r\n                    <span>140</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "462c4055-d85e-436d-87da-831ebf3039fc",
              "parent_uuid": "319f2c7f-5699-4a51-84a4-8e77d1c99a5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb41dae3-73af-4f33-bfe1-5a55b02661fd",
                  "parent_uuid": "462c4055-d85e-436d-87da-831ebf3039fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "602e2272-fa66-4d0c-83e8-234f96dbb701",
              "parent_uuid": "319f2c7f-5699-4a51-84a4-8e77d1c99a5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b4429d29-97f6-4dbd-9fec-c28d69a832ae",
                  "parent_uuid": "602e2272-fa66-4d0c-83e8-234f96dbb701",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "953527c9-1c8a-40d7-953a-74122b56cb50",
              "parent_uuid": "319f2c7f-5699-4a51-84a4-8e77d1c99a5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a419d193-a80d-4f04-ab7b-6bea91cdb087",
                  "parent_uuid": "953527c9-1c8a-40d7-953a-74122b56cb50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37f439d4-08b1-4852-bf6c-0c4188b60d54",
              "parent_uuid": "319f2c7f-5699-4a51-84a4-8e77d1c99a5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "33844767-911a-4ed6-95a7-816165660ea2",
                  "parent_uuid": "37f439d4-08b1-4852-bf6c-0c4188b60d54",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e8ff976f-df42-4b9d-b930-5a2f7dc33cbb",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd23c4d5-a040-4bad-92e5-5fa195d3b030",
              "parent_uuid": "e8ff976f-df42-4b9d-b930-5a2f7dc33cbb",
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
              "uuid": "380b75e3-7ee1-4fae-a1d5-0a8aba883c7a",
              "parent_uuid": "e8ff976f-df42-4b9d-b930-5a2f7dc33cbb",
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
              "uuid": "b032236b-251b-4c31-8b85-1ce22fa46b1b",
              "parent_uuid": "e8ff976f-df42-4b9d-b930-5a2f7dc33cbb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0b751c01-4e39-431c-b3c0-2fd985ec306c",
                  "parent_uuid": "b032236b-251b-4c31-8b85-1ce22fa46b1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0e37a9c-de93-4a2d-8afe-763ff58bd92e",
              "parent_uuid": "e8ff976f-df42-4b9d-b930-5a2f7dc33cbb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "abb08ea2-5b20-4bd0-80b9-f0205901a68a",
                  "parent_uuid": "a0e37a9c-de93-4a2d-8afe-763ff58bd92e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba231c72-cfb7-497a-8db2-0ec26dffaf19",
              "parent_uuid": "e8ff976f-df42-4b9d-b930-5a2f7dc33cbb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "98d93a3f-ffce-4360-9f66-b71b52c6bd3d",
                  "parent_uuid": "ba231c72-cfb7-497a-8db2-0ec26dffaf19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "810ef332-c508-4c2d-8803-dac2a9389f50",
              "parent_uuid": "e8ff976f-df42-4b9d-b930-5a2f7dc33cbb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "91648624-10dc-48b1-a411-4421ae0a6c5a",
                  "parent_uuid": "810ef332-c508-4c2d-8803-dac2a9389f50",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "67d03192-f4d3-4487-88b5-cbdcaf2bbb5e",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2be1d6e0-03d2-4be3-b45c-fc0173b7d21f",
              "parent_uuid": "67d03192-f4d3-4487-88b5-cbdcaf2bbb5e",
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
              "uuid": "ce63a524-ee39-4606-9ca3-094c646c6133",
              "parent_uuid": "67d03192-f4d3-4487-88b5-cbdcaf2bbb5e",
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
              "innerHtml": "\r\n                    <span>99</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "06b5dc79-8afc-4c3c-add3-66916c3544ac",
              "parent_uuid": "67d03192-f4d3-4487-88b5-cbdcaf2bbb5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f42c9b48-f6a3-46ac-b0f1-a9a3a10ddffd",
                  "parent_uuid": "06b5dc79-8afc-4c3c-add3-66916c3544ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "440cd779-7318-4a2f-a8b5-502a4002f5e7",
              "parent_uuid": "67d03192-f4d3-4487-88b5-cbdcaf2bbb5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c53f12a0-ac0a-4b98-bd1f-ea8eafe76b37",
                  "parent_uuid": "440cd779-7318-4a2f-a8b5-502a4002f5e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0701a318-ce9d-405a-aab8-6f5412d25cda",
              "parent_uuid": "67d03192-f4d3-4487-88b5-cbdcaf2bbb5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "12fdf33d-291e-48d2-a13f-e91e8ddb9651",
                  "parent_uuid": "0701a318-ce9d-405a-aab8-6f5412d25cda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b3ab88b-c282-42b1-83e2-82b2b4179316",
              "parent_uuid": "67d03192-f4d3-4487-88b5-cbdcaf2bbb5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a009f570-db93-4b4d-9f71-3895567ef2eb",
                  "parent_uuid": "5b3ab88b-c282-42b1-83e2-82b2b4179316",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "132d5adb-747a-44a9-9477-a5dffa110014",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d7db9cb-651a-4c71-bab1-4031c684ea9b",
              "parent_uuid": "132d5adb-747a-44a9-9477-a5dffa110014",
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
              "uuid": "225d4261-ae50-4e33-8624-f1deb1b76ebd",
              "parent_uuid": "132d5adb-747a-44a9-9477-a5dffa110014",
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
              "innerHtml": "\r\n                    <span>94</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c3ac6d54-a387-4af6-8596-d6cb50b76e70",
              "parent_uuid": "132d5adb-747a-44a9-9477-a5dffa110014",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c09a240c-773c-406b-a2ab-a15e0253ee69",
                  "parent_uuid": "c3ac6d54-a387-4af6-8596-d6cb50b76e70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b456b060-448b-484a-b7b1-0ca36a4bc612",
              "parent_uuid": "132d5adb-747a-44a9-9477-a5dffa110014",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c8eec50a-a5c9-45e6-a12f-183b7cd70e43",
                  "parent_uuid": "b456b060-448b-484a-b7b1-0ca36a4bc612",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3d3c74e-3c81-4783-8f5e-20b5233d60b0",
              "parent_uuid": "132d5adb-747a-44a9-9477-a5dffa110014",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c3b838a-3a25-411e-bafe-395b798c7e06",
                  "parent_uuid": "f3d3c74e-3c81-4783-8f5e-20b5233d60b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ae069a1-067b-4aea-8e70-079f28181fae",
              "parent_uuid": "132d5adb-747a-44a9-9477-a5dffa110014",
              "tagName": "td",
              "properties": [
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
                  "uuid": "39f726d0-16ba-4ee4-a0e8-8b5bd02984d9",
                  "parent_uuid": "9ae069a1-067b-4aea-8e70-079f28181fae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70c8dfc1-191b-45f3-bc7c-0375c5ae4921",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4e9a2b0-d629-4c57-a82d-16d59a945c1f",
              "parent_uuid": "70c8dfc1-191b-45f3-bc7c-0375c5ae4921",
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
              "uuid": "34a01f5a-2062-48e3-a9ef-de21afbc2f70",
              "parent_uuid": "70c8dfc1-191b-45f3-bc7c-0375c5ae4921",
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
              "innerHtml": "\r\n                    <span>66</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "51deae0b-c37a-4779-93e3-661d9ec77ba1",
              "parent_uuid": "70c8dfc1-191b-45f3-bc7c-0375c5ae4921",
              "tagName": "td",
              "properties": [
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
                  "uuid": "750dd3e5-8de5-4f49-9df0-ded327d1443b",
                  "parent_uuid": "51deae0b-c37a-4779-93e3-661d9ec77ba1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6aceb95d-66fe-4f0e-b4b5-bbdcc3d0f6a5",
              "parent_uuid": "70c8dfc1-191b-45f3-bc7c-0375c5ae4921",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8cb1a7c7-c773-455d-ad0f-5fff7a821c64",
                  "parent_uuid": "6aceb95d-66fe-4f0e-b4b5-bbdcc3d0f6a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dca8315-2c74-44d4-86a7-df5ed631c854",
              "parent_uuid": "70c8dfc1-191b-45f3-bc7c-0375c5ae4921",
              "tagName": "td",
              "properties": [
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
                  "uuid": "39e45140-c8bb-49d9-afd1-9f3f280564fb",
                  "parent_uuid": "6dca8315-2c74-44d4-86a7-df5ed631c854",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af032c08-9131-4703-9771-8ab257cdb5cd",
              "parent_uuid": "70c8dfc1-191b-45f3-bc7c-0375c5ae4921",
              "tagName": "td",
              "properties": [
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
                  "uuid": "62efd79c-f13d-47c8-9322-ccb23a3cc60b",
                  "parent_uuid": "af032c08-9131-4703-9771-8ab257cdb5cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc7f1ea4-c839-435a-92c0-11fd48f5e255",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b734b190-ebd8-4849-bd65-6e7e58413283",
              "parent_uuid": "bc7f1ea4-c839-435a-92c0-11fd48f5e255",
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
              "uuid": "ed409c28-1f10-4095-af46-2fd2d00385e4",
              "parent_uuid": "bc7f1ea4-c839-435a-92c0-11fd48f5e255",
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
              "uuid": "32a9fdfc-8f49-4439-8414-e54fc7b778c5",
              "parent_uuid": "bc7f1ea4-c839-435a-92c0-11fd48f5e255",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dac5c16b-f4fa-42e3-81ed-6a192acfdb3e",
                  "parent_uuid": "32a9fdfc-8f49-4439-8414-e54fc7b778c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee9af29d-be04-4653-b6fd-ad1259fd630f",
              "parent_uuid": "bc7f1ea4-c839-435a-92c0-11fd48f5e255",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb5f33e9-0ee8-4911-b129-74f81fda5cf9",
                  "parent_uuid": "ee9af29d-be04-4653-b6fd-ad1259fd630f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "739aede3-43ee-487c-a469-02f2a61645c8",
              "parent_uuid": "bc7f1ea4-c839-435a-92c0-11fd48f5e255",
              "tagName": "td",
              "properties": [
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
                  "uuid": "806cdc06-762d-4e05-a990-aacc8e608037",
                  "parent_uuid": "739aede3-43ee-487c-a469-02f2a61645c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b20aeb7-f0a1-4263-8e5c-0f50b93d9201",
              "parent_uuid": "bc7f1ea4-c839-435a-92c0-11fd48f5e255",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c440d71-358f-4e04-b515-c0604d417250",
                  "parent_uuid": "2b20aeb7-f0a1-4263-8e5c-0f50b93d9201",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6f51726-1c78-424e-aadf-d92985f1a8f0",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "621daa42-5e0e-409a-be8f-62c5bf9fe7dc",
              "parent_uuid": "e6f51726-1c78-424e-aadf-d92985f1a8f0",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "1593045a-0d58-4737-80e4-718cf2707fbd",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3f87682-7ca2-4420-86f1-d0f8dd5d5294",
              "parent_uuid": "1593045a-0d58-4737-80e4-718cf2707fbd",
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "9cc5089f-1ff0-4d4d-9ff6-b667622010a0",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01c05c92-df98-49e0-97a4-24206982715f",
              "parent_uuid": "9cc5089f-1ff0-4d4d-9ff6-b667622010a0",
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
                  "uuid": "b13fe6b2-c737-4eba-94fb-c3ed010a63e9",
                  "parent_uuid": "01c05c92-df98-49e0-97a4-24206982715f",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "cd29cec9-d98d-4c1c-bcae-e4b2906d5590",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "6abb5e9d-a763-4bca-97a0-161ef4e2301f",
              "parent_uuid": "cd29cec9-d98d-4c1c-bcae-e4b2906d5590",
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
                  "11"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "3f51ed96-c65e-4427-97f9-d8a83b30ffe1",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "67903563-444f-42f9-8502-7fa4fe5a8251",
              "parent_uuid": "3f51ed96-c65e-4427-97f9-d8a83b30ffe1",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei eingeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "e7193adb-3f16-401d-acf6-2147abc1f620",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "669a3877-df95-4916-ac93-2f64061d820d",
              "parent_uuid": "e7193adb-3f16-401d-acf6-2147abc1f620",
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
              "innerHtml": "<span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "165c0af6-4fbf-4834-b3b5-3fede79664d2",
              "parent_uuid": "e7193adb-3f16-401d-acf6-2147abc1f620",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "90186939-2a3c-48c7-8ac2-032e8531ebbc",
              "parent_uuid": "e7193adb-3f16-401d-acf6-2147abc1f620",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9db7cdfd-da6a-44d1-9ffa-a9dd2a42cadd",
              "parent_uuid": "e7193adb-3f16-401d-acf6-2147abc1f620",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6dd255b4-115b-4262-bb42-ded89a8e71eb",
              "parent_uuid": "e7193adb-3f16-401d-acf6-2147abc1f620",
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
              "uuid": "f4d323d6-3fb6-46a0-9621-0d16a5ace949",
              "parent_uuid": "e7193adb-3f16-401d-acf6-2147abc1f620",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "2e1fc798-2cc3-4200-9bcb-a55ee27c7d49",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "fceba6c1-b12e-4925-ae98-963dfc3387aa",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50913654-3360-4de6-b7bf-31f7578de1d9",
              "parent_uuid": "fceba6c1-b12e-4925-ae98-963dfc3387aa",
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
              "uuid": "4a1a53cb-6edf-4fa6-b237-d39694c8616a",
              "parent_uuid": "fceba6c1-b12e-4925-ae98-963dfc3387aa",
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
              "innerHtml": "\r\n                    <span>148</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f636a83c-6216-4de8-903c-9dfc23f32716",
              "parent_uuid": "fceba6c1-b12e-4925-ae98-963dfc3387aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b0ca99cf-1454-479e-a5eb-c988618e94f1",
                  "parent_uuid": "f636a83c-6216-4de8-903c-9dfc23f32716",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f57387d-e457-4645-9f32-a90b8ba86f1a",
              "parent_uuid": "fceba6c1-b12e-4925-ae98-963dfc3387aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9be2087-414a-4b79-89e7-842689f3acb4",
                  "parent_uuid": "8f57387d-e457-4645-9f32-a90b8ba86f1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e275aeb8-bafd-4dac-8637-a76ba9a47bcd",
              "parent_uuid": "fceba6c1-b12e-4925-ae98-963dfc3387aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5dd33ff0-ea30-459b-8ed5-7cbe20dc7007",
                  "parent_uuid": "e275aeb8-bafd-4dac-8637-a76ba9a47bcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a534c59-9a65-47f1-aefd-c48433ce31f9",
              "parent_uuid": "fceba6c1-b12e-4925-ae98-963dfc3387aa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "50b86af1-d911-4199-99f5-0eb4bec86c20",
                  "parent_uuid": "9a534c59-9a65-47f1-aefd-c48433ce31f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5535f3f3-384b-4cd6-abf7-7698ec784e23",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26f9ad71-0d0f-47d3-9108-5e308aa66f5d",
              "parent_uuid": "5535f3f3-384b-4cd6-abf7-7698ec784e23",
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
              "uuid": "7b64823a-6e13-4e46-b9c2-1c627c189524",
              "parent_uuid": "5535f3f3-384b-4cd6-abf7-7698ec784e23",
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
              "innerHtml": "\r\n                    <span>103</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "98e1c806-b5cb-47a7-86ab-3b779d4fd015",
              "parent_uuid": "5535f3f3-384b-4cd6-abf7-7698ec784e23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fe441d08-6e5c-4695-9a4e-3a9c715964a2",
                  "parent_uuid": "98e1c806-b5cb-47a7-86ab-3b779d4fd015",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83e894ac-4e73-406f-934f-3b2ed4452f9e",
              "parent_uuid": "5535f3f3-384b-4cd6-abf7-7698ec784e23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f33b8da8-85c3-4c64-9cde-586984e3c4e5",
                  "parent_uuid": "83e894ac-4e73-406f-934f-3b2ed4452f9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3475563a-53c6-4b11-92bf-f3f8b77faa0d",
              "parent_uuid": "5535f3f3-384b-4cd6-abf7-7698ec784e23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "50fa51ce-ddd7-484b-8e5e-c0725a8d305d",
                  "parent_uuid": "3475563a-53c6-4b11-92bf-f3f8b77faa0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e8def55-74e0-43e3-9278-eef071bed4d1",
              "parent_uuid": "5535f3f3-384b-4cd6-abf7-7698ec784e23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1ce52857-1d61-4591-a2c7-7c748689449c",
                  "parent_uuid": "1e8def55-74e0-43e3-9278-eef071bed4d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "c06e7d07-32f0-44b6-b63d-6183bc919a7d",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7294259-0ac2-41f8-8e63-1ac7e1781dfd",
              "parent_uuid": "c06e7d07-32f0-44b6-b63d-6183bc919a7d",
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
              "uuid": "75736790-fa71-4cad-9afe-d5f57229c2ac",
              "parent_uuid": "c06e7d07-32f0-44b6-b63d-6183bc919a7d",
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
              "uuid": "cd418c0c-04f6-477e-97fb-31b5e99e1bf4",
              "parent_uuid": "c06e7d07-32f0-44b6-b63d-6183bc919a7d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a02b4594-184f-4dd7-9c60-01b989a0c496",
                  "parent_uuid": "cd418c0c-04f6-477e-97fb-31b5e99e1bf4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f2440e5-d5a5-4595-9958-1fe709c90eb7",
              "parent_uuid": "c06e7d07-32f0-44b6-b63d-6183bc919a7d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "422132a2-3aca-460f-ad3f-5f618d2341ff",
                  "parent_uuid": "5f2440e5-d5a5-4595-9958-1fe709c90eb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "289d5cd1-1c87-49a9-a822-a6675f0d6a26",
              "parent_uuid": "c06e7d07-32f0-44b6-b63d-6183bc919a7d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c83e93fc-5864-4be5-a636-6715529d3f7f",
                  "parent_uuid": "289d5cd1-1c87-49a9-a822-a6675f0d6a26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e68325b9-80d8-45ff-bbff-c4a88fac204e",
              "parent_uuid": "c06e7d07-32f0-44b6-b63d-6183bc919a7d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8ca066e6-3f28-49b8-be87-c61bc9c55b0b",
                  "parent_uuid": "e68325b9-80d8-45ff-bbff-c4a88fac204e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2329cb65-3764-41ce-b8e7-346f413706b2",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "25ddd9dc-7539-4cf5-8f2d-145874de4caf",
              "parent_uuid": "2329cb65-3764-41ce-b8e7-346f413706b2",
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
              "uuid": "9e076fec-a4c7-4b9a-bafc-0834a46dc643",
              "parent_uuid": "2329cb65-3764-41ce-b8e7-346f413706b2",
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
              "innerHtml": "\r\n                    <span>102</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "57ecf6cb-0c62-4bb7-b428-23f4e9c34aae",
              "parent_uuid": "2329cb65-3764-41ce-b8e7-346f413706b2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b16cf933-4edd-45de-b11b-5829e0c49438",
                  "parent_uuid": "57ecf6cb-0c62-4bb7-b428-23f4e9c34aae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0f4dfba-c327-48a7-a6db-387ac250462d",
              "parent_uuid": "2329cb65-3764-41ce-b8e7-346f413706b2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7acd03da-e024-4cb4-9d1c-8de5d5efb9ee",
                  "parent_uuid": "b0f4dfba-c327-48a7-a6db-387ac250462d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c76cfaec-ea91-468f-a71a-41cd778ab2fa",
              "parent_uuid": "2329cb65-3764-41ce-b8e7-346f413706b2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7af085c8-5a0e-4de5-89b5-ab32bdae6455",
                  "parent_uuid": "c76cfaec-ea91-468f-a71a-41cd778ab2fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b359ad4-34d8-4cf0-a4eb-5e0c896f2e08",
              "parent_uuid": "2329cb65-3764-41ce-b8e7-346f413706b2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "723a96af-b09b-4eae-a665-c8d6de2b7fa3",
                  "parent_uuid": "8b359ad4-34d8-4cf0-a4eb-5e0c896f2e08",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9665edcd-1b11-4462-8c29-6657841c2c2d",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd489f2e-1ca2-42d3-8588-6fd827aefdb7",
              "parent_uuid": "9665edcd-1b11-4462-8c29-6657841c2c2d",
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
          "uuid": "97c96fbc-3ea7-4503-8d83-655f8c229898",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65603294-556b-4526-b50b-7b33a0c86c31",
              "parent_uuid": "97c96fbc-3ea7-4503-8d83-655f8c229898",
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
          "uuid": "33548ab7-b08e-4923-8cb4-108afe34cd93",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c65b3260-6ea8-4990-b128-d6511f4b111c",
              "parent_uuid": "33548ab7-b08e-4923-8cb4-108afe34cd93",
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
                  "uuid": "742ec16b-c997-4518-8868-c3ed54eacc65",
                  "parent_uuid": "c65b3260-6ea8-4990-b128-d6511f4b111c",
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
        },
        {
          "uuid": "588626e9-88e4-4d04-9c13-e36d9d4c4986",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "becede52-f37c-46cd-b92a-f08d2d518939",
              "parent_uuid": "588626e9-88e4-4d04-9c13-e36d9d4c4986",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ],
                [
                  "height",
                  "60"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "65f229ae-6514-4b66-882b-eb26703b12a9",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "16b7f47e-e825-4a5d-a046-e240d7c299c1",
              "parent_uuid": "65f229ae-6514-4b66-882b-eb26703b12a9",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000"
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei laufender Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "baa65ee8-8726-4322-90d8-04eff3abb782",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "92d05bc9-71ed-44a5-b14f-1409d5dfa000",
              "parent_uuid": "baa65ee8-8726-4322-90d8-04eff3abb782",
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
              "uuid": "e0da46d7-ea07-49e3-85cb-07bf92680060",
              "parent_uuid": "baa65ee8-8726-4322-90d8-04eff3abb782",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f7199ca1-0044-4da0-a1f8-c023809531b5",
              "parent_uuid": "baa65ee8-8726-4322-90d8-04eff3abb782",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9efce534-5efd-4fea-a154-6d24f1bd746b",
              "parent_uuid": "baa65ee8-8726-4322-90d8-04eff3abb782",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "c54e8561-5a0f-4244-ac4b-3db506be6b83",
              "parent_uuid": "baa65ee8-8726-4322-90d8-04eff3abb782",
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
              "uuid": "a962ff5d-3a9b-47ca-b08d-3f95a5df0045",
              "parent_uuid": "baa65ee8-8726-4322-90d8-04eff3abb782",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "d94a92e0-362e-4fd8-969c-ebaa33b75561",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b39d326d-32ad-439a-9bba-2d6e718f36f6",
              "parent_uuid": "d94a92e0-362e-4fd8-969c-ebaa33b75561",
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
              "uuid": "6763e2f3-ba20-4952-a3b1-7cc98d991464",
              "parent_uuid": "d94a92e0-362e-4fd8-969c-ebaa33b75561",
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
              "uuid": "4c43f459-6044-413b-bde6-a80e75707e9b",
              "parent_uuid": "d94a92e0-362e-4fd8-969c-ebaa33b75561",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8ee1e3dd-d2f9-483c-a1ec-43c0efe8447f",
                  "parent_uuid": "4c43f459-6044-413b-bde6-a80e75707e9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "271f72e9-1192-4697-8874-1e826005a818",
              "parent_uuid": "d94a92e0-362e-4fd8-969c-ebaa33b75561",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cf4d9afc-18d3-45ac-b21c-72c27acfc1d6",
                  "parent_uuid": "271f72e9-1192-4697-8874-1e826005a818",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4700f141-358d-4165-809f-feec6302f83c",
              "parent_uuid": "d94a92e0-362e-4fd8-969c-ebaa33b75561",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d5e7b01e-9637-45a1-a38c-9217ba25994f",
                  "parent_uuid": "4700f141-358d-4165-809f-feec6302f83c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72a40bab-d612-4078-b1ce-bf038dbc1136",
              "parent_uuid": "d94a92e0-362e-4fd8-969c-ebaa33b75561",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3904a9e6-3348-47e9-9922-f4561b159c46",
                  "parent_uuid": "72a40bab-d612-4078-b1ce-bf038dbc1136",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "766efb37-46a4-42e6-8d9a-8da277a30e2a",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca05b6d4-dacd-4180-889c-119ea1ee85a6",
              "parent_uuid": "766efb37-46a4-42e6-8d9a-8da277a30e2a",
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
              "uuid": "b5679787-ac43-4107-b6ef-ad1dbb1e28a2",
              "parent_uuid": "766efb37-46a4-42e6-8d9a-8da277a30e2a",
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
              "innerHtml": "\r\n                    <span>109</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "61b795a6-7c0f-40c3-9837-39aa94f908e2",
              "parent_uuid": "766efb37-46a4-42e6-8d9a-8da277a30e2a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "91046aea-db14-441f-a490-feb65f279dfa",
                  "parent_uuid": "61b795a6-7c0f-40c3-9837-39aa94f908e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e912a747-96aa-493d-a343-571533c2d306",
              "parent_uuid": "766efb37-46a4-42e6-8d9a-8da277a30e2a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ab7eeef1-a670-4d55-9725-9e7dc68d6a65",
                  "parent_uuid": "e912a747-96aa-493d-a343-571533c2d306",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2d34303-b8ca-45a5-938c-ab443c255114",
              "parent_uuid": "766efb37-46a4-42e6-8d9a-8da277a30e2a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3a4bfedd-459f-4b5b-8ac9-4471010c47e0",
                  "parent_uuid": "a2d34303-b8ca-45a5-938c-ab443c255114",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90cc66e7-0fea-41ad-bbb5-e820ad510e4b",
              "parent_uuid": "766efb37-46a4-42e6-8d9a-8da277a30e2a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1314ce38-b90e-4930-8e3f-eb23de5c0014",
                  "parent_uuid": "90cc66e7-0fea-41ad-bbb5-e820ad510e4b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "7b369a20-e864-4d38-975c-d35e70a54606",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1f459f7-e769-46da-a715-22a4aeb81b74",
              "parent_uuid": "7b369a20-e864-4d38-975c-d35e70a54606",
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
              "uuid": "f7614e6b-a40e-4d66-9772-ca64f8cdcd6b",
              "parent_uuid": "7b369a20-e864-4d38-975c-d35e70a54606",
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
              "innerHtml": "\r\n                    <span>112</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d66fdb61-3ee9-4d8c-b8a3-486bd02f6326",
              "parent_uuid": "7b369a20-e864-4d38-975c-d35e70a54606",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bd9476bf-2419-4d18-a763-d188d300d7c1",
                  "parent_uuid": "d66fdb61-3ee9-4d8c-b8a3-486bd02f6326",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71fb494b-0f7e-426c-aed1-768cd01600e5",
              "parent_uuid": "7b369a20-e864-4d38-975c-d35e70a54606",
              "tagName": "td",
              "properties": [
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
                  "uuid": "07208241-96da-4049-920d-e03aa970cc7c",
                  "parent_uuid": "71fb494b-0f7e-426c-aed1-768cd01600e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea659d93-d718-4767-90d4-bfb0c08ce8e6",
              "parent_uuid": "7b369a20-e864-4d38-975c-d35e70a54606",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9269a572-8d2c-4c5b-bb8f-b4ff0ef5dd98",
                  "parent_uuid": "ea659d93-d718-4767-90d4-bfb0c08ce8e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd32dd17-6ec0-4814-8f5c-07e7090b3aec",
              "parent_uuid": "7b369a20-e864-4d38-975c-d35e70a54606",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d0f479a4-00b2-4423-9c63-2beafa7eba0e",
                  "parent_uuid": "fd32dd17-6ec0-4814-8f5c-07e7090b3aec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "5e765b50-39b9-4bdf-86b5-092a9a5ae70d",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "006dce8d-8e78-49f3-bef3-52090c258f26",
              "parent_uuid": "5e765b50-39b9-4bdf-86b5-092a9a5ae70d",
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
              "uuid": "3bb26b83-a612-4669-b705-927ca34a4062",
              "parent_uuid": "5e765b50-39b9-4bdf-86b5-092a9a5ae70d",
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
              "uuid": "53a71e74-e9a0-4a6a-8b7e-10196f7e0dfa",
              "parent_uuid": "5e765b50-39b9-4bdf-86b5-092a9a5ae70d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5701e984-8c6d-4770-8c0c-c8b844804b77",
                  "parent_uuid": "53a71e74-e9a0-4a6a-8b7e-10196f7e0dfa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "834462bb-253b-4fb2-af4c-af81b3695e0c",
              "parent_uuid": "5e765b50-39b9-4bdf-86b5-092a9a5ae70d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e9025455-adc7-4209-bad8-d89cc25b3558",
                  "parent_uuid": "834462bb-253b-4fb2-af4c-af81b3695e0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25868387-f4e0-4771-bbf1-829ab212bcdf",
              "parent_uuid": "5e765b50-39b9-4bdf-86b5-092a9a5ae70d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "821826e6-401c-43cd-abb4-3cb5988444f8",
                  "parent_uuid": "25868387-f4e0-4771-bbf1-829ab212bcdf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa885294-97b4-4efe-840a-4cb11fa6eb48",
              "parent_uuid": "5e765b50-39b9-4bdf-86b5-092a9a5ae70d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f03c43b5-4015-4f74-b557-d027e98c2461",
                  "parent_uuid": "fa885294-97b4-4efe-840a-4cb11fa6eb48",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "80903637-4c0c-4c8c-a2e5-8a0e1607ba45",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58d1e6d0-2159-4823-8d8a-01ded418ac1c",
              "parent_uuid": "80903637-4c0c-4c8c-a2e5-8a0e1607ba45",
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
              "uuid": "80299a24-949f-4855-939f-ee494473c610",
              "parent_uuid": "80903637-4c0c-4c8c-a2e5-8a0e1607ba45",
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
              "innerHtml": "\r\n                    <span>150</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9b9f9afc-5d35-4350-850d-4d1e91987055",
              "parent_uuid": "80903637-4c0c-4c8c-a2e5-8a0e1607ba45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "23262d60-3eb6-4130-a546-a61ab67d69fe",
                  "parent_uuid": "9b9f9afc-5d35-4350-850d-4d1e91987055",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6656304-8e16-4065-be41-8ab6d0fd3abb",
              "parent_uuid": "80903637-4c0c-4c8c-a2e5-8a0e1607ba45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7ece4795-9fdc-4836-a3b9-ae301e617ead",
                  "parent_uuid": "e6656304-8e16-4065-be41-8ab6d0fd3abb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76aa40e5-daf8-4619-8645-b9d3e29e5354",
              "parent_uuid": "80903637-4c0c-4c8c-a2e5-8a0e1607ba45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6b42ab5d-10de-4caf-b7b4-a9b9977c7972",
                  "parent_uuid": "76aa40e5-daf8-4619-8645-b9d3e29e5354",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "271662af-81f1-4090-a9c0-aab91b7efa87",
              "parent_uuid": "80903637-4c0c-4c8c-a2e5-8a0e1607ba45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "41b97387-0304-4faf-94fc-c7712904f4f8",
                  "parent_uuid": "271662af-81f1-4090-a9c0-aab91b7efa87",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "a8dffc14-3d23-4d0b-8f03-d210d8bd86f0",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "deace60b-67ac-4031-a0d2-9eade20e6f3e",
              "parent_uuid": "a8dffc14-3d23-4d0b-8f03-d210d8bd86f0",
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
              "uuid": "39c49a87-232c-405c-866c-111157b8bd4c",
              "parent_uuid": "a8dffc14-3d23-4d0b-8f03-d210d8bd86f0",
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
              "innerHtml": "\r\n                    <span>106</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2a0a3640-42af-462e-b29d-6df2a0f82e50",
              "parent_uuid": "a8dffc14-3d23-4d0b-8f03-d210d8bd86f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "078bf64c-040c-4e96-ab12-ae3a8d52ba1b",
                  "parent_uuid": "2a0a3640-42af-462e-b29d-6df2a0f82e50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccc604de-0278-465c-8581-dbec90e8271c",
              "parent_uuid": "a8dffc14-3d23-4d0b-8f03-d210d8bd86f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a65f60cb-3d00-47e7-a751-ff0a66fd3646",
                  "parent_uuid": "ccc604de-0278-465c-8581-dbec90e8271c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f982a73-b2d9-49e7-9410-334b678c72c7",
              "parent_uuid": "a8dffc14-3d23-4d0b-8f03-d210d8bd86f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "15624a9e-f05e-4567-a22d-ccdecefaf38d",
                  "parent_uuid": "1f982a73-b2d9-49e7-9410-334b678c72c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c8656cb-4273-4ebe-b0cc-a199e32c64c4",
              "parent_uuid": "a8dffc14-3d23-4d0b-8f03-d210d8bd86f0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fadc81f3-1977-4b70-ada8-c0a2458eb1d5",
                  "parent_uuid": "5c8656cb-4273-4ebe-b0cc-a199e32c64c4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "20ddff24-90cc-4a98-bc05-d2776adfbc13",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "415a7b45-4f3c-4e80-8bb9-316177890b36",
              "parent_uuid": "20ddff24-90cc-4a98-bc05-d2776adfbc13",
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
          "uuid": "cee26d90-59ef-44cc-b096-627ef2f56f97",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63f87fa8-fe32-4536-b3f2-477f09914627",
              "parent_uuid": "cee26d90-59ef-44cc-b096-627ef2f56f97",
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
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "fe33af6c-1957-4ae1-8d13-a44ebb2b88bb",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "840a8d8c-03c0-4558-aab7-8ffa6893aecf",
              "parent_uuid": "fe33af6c-1957-4ae1-8d13-a44ebb2b88bb",
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
                  "uuid": "b6b836f7-8fd1-469c-8a31-7aef63314c00",
                  "parent_uuid": "840a8d8c-03c0-4558-aab7-8ffa6893aecf",
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
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "b6fc5820-1b8f-49c9-848f-7a4f124baffc",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2a8e337-9963-420c-a002-6c1c5366ebda",
              "parent_uuid": "b6fc5820-1b8f-49c9-848f-7a4f124baffc",
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
                  "11"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "06afa32f-bcc0-42a6-a515-4728086cb8b4",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "61231484-4edc-4f79-b425-14c6fc6e69fc",
              "parent_uuid": "06afa32f-bcc0-42a6-a515-4728086cb8b4",
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
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Benötigte Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "1e62c2a2-63e1-4b50-a7c9-e9e072323af2",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5a28039c-4e2f-427e-9379-6cd906ebd6b4",
              "parent_uuid": "1e62c2a2-63e1-4b50-a7c9-e9e072323af2",
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
                  "border-right: none; vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "82cb7b11-dc82-44a9-bffd-57d0d12f0828",
              "parent_uuid": "1e62c2a2-63e1-4b50-a7c9-e9e072323af2",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "2"
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
              "uuid": "8cc98532-ed88-4b3b-915d-51e579d97cdb",
              "parent_uuid": "1e62c2a2-63e1-4b50-a7c9-e9e072323af2",
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
              "uuid": "b88d4385-848f-4860-ad37-17be121cdfe9",
              "parent_uuid": "1e62c2a2-63e1-4b50-a7c9-e9e072323af2",
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
            },
            {
              "uuid": "4075134e-6e5e-4364-b2be-9f6d66a805eb",
              "parent_uuid": "1e62c2a2-63e1-4b50-a7c9-e9e072323af2",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "adb8d3b2-d990-4d1b-8562-7c4de979e656",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a401f24-4fb8-490b-b7d4-15d47a36630f",
              "parent_uuid": "adb8d3b2-d990-4d1b-8562-7c4de979e656",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 3467 (M415)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c1977c49-2842-4597-82b0-80856b2b7bd3",
              "parent_uuid": "adb8d3b2-d990-4d1b-8562-7c4de979e656",
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
              "innerHtml": "\r\n                    <span>262 407 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7d3afbbf-3692-4728-b6b3-1fe0bb7a91e5",
              "parent_uuid": "adb8d3b2-d990-4d1b-8562-7c4de979e656",
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
              "uuid": "0ead6c6e-82dc-4dd6-8b30-385053bae7fb",
              "parent_uuid": "adb8d3b2-d990-4d1b-8562-7c4de979e656",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "38bffe9f-f72f-4914-bcaf-9508c4c06aea",
              "parent_uuid": "adb8d3b2-d990-4d1b-8562-7c4de979e656",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "ffaf4eb5-4ab7-4bac-8445-d02a42835edb",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f205bd2c-c86d-4708-b836-920fda0dd495",
              "parent_uuid": "ffaf4eb5-4ab7-4bac-8445-d02a42835edb",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2409 (M414)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c16086eb-538e-41a1-b6b2-c85cc9ec4c87",
              "parent_uuid": "ffaf4eb5-4ab7-4bac-8445-d02a42835edb",
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
              "innerHtml": "\r\n                    <span>263 536 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8a7d80fd-e64e-4fba-a5b4-34897eb58284",
              "parent_uuid": "ffaf4eb5-4ab7-4bac-8445-d02a42835edb",
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
              "uuid": "8aa3ad1f-3881-4e30-a598-99d73d971551",
              "parent_uuid": "ffaf4eb5-4ab7-4bac-8445-d02a42835edb",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "e637189c-99ce-421d-8abc-45ee6a5c7d79",
              "parent_uuid": "ffaf4eb5-4ab7-4bac-8445-d02a42835edb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "25feb52c-d3d3-43d7-a5a2-fe3c1d03deb8",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dce15272-ad48-492f-a88b-820057782c39",
              "parent_uuid": "25feb52c-d3d3-43d7-a5a2-fe3c1d03deb8",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2135 (M402)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "78bcf7c3-6f43-4924-b817-fa65c29af6f9",
              "parent_uuid": "25feb52c-d3d3-43d7-a5a2-fe3c1d03deb8",
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
              "innerHtml": "\r\n                    <span>262 507 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d5cacead-148f-4b3b-b488-1704fa1967dc",
              "parent_uuid": "25feb52c-d3d3-43d7-a5a2-fe3c1d03deb8",
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
              "uuid": "8a73c360-59bc-40b0-a8a1-7db6c1aa6bf2",
              "parent_uuid": "25feb52c-d3d3-43d7-a5a2-fe3c1d03deb8",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "adb08280-9f7b-4a01-a6d2-ae19ed5b9b17",
              "parent_uuid": "25feb52c-d3d3-43d7-a5a2-fe3c1d03deb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "079a98d9-962c-4058-ab23-879eb387a3bc",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86fd7c4b-22a7-4969-8961-947ed44a04b1",
              "parent_uuid": "079a98d9-962c-4058-ab23-879eb387a3bc",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 1510 (M306)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3b709391-4822-4ebc-a81d-1cd693aec5ba",
              "parent_uuid": "079a98d9-962c-4058-ab23-879eb387a3bc",
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
              "innerHtml": "\r\n                    <span>117 363 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "023a18d7-a878-4cb3-a979-a74ffd2005de",
              "parent_uuid": "079a98d9-962c-4058-ab23-879eb387a3bc",
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
              "uuid": "3b93d2be-f730-4094-af3b-fe6a2ef4beb1",
              "parent_uuid": "079a98d9-962c-4058-ab23-879eb387a3bc",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "9f9ecf78-987c-4465-bad4-88a7c85d3b0b",
              "parent_uuid": "079a98d9-962c-4058-ab23-879eb387a3bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "b92963c1-31b0-4112-9082-1d62dd02ba46",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa30adfc-7263-4bf1-a2d8-4b34a60c1404",
              "parent_uuid": "b92963c1-31b0-4112-9082-1d62dd02ba46",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 990 (M376)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cdfd41da-eefd-4d04-bc34-9e247d6b628b",
              "parent_uuid": "b92963c1-31b0-4112-9082-1d62dd02ba46",
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
              "innerHtml": "\r\n                    <span>268 909 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9777a0a6-4c93-4d51-9bad-7351f2543ce7",
              "parent_uuid": "b92963c1-31b0-4112-9082-1d62dd02ba46",
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
              "uuid": "73d1d1f8-97d4-4c54-a0de-4fc395080544",
              "parent_uuid": "b92963c1-31b0-4112-9082-1d62dd02ba46",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "5400731e-4546-410e-b300-bb7842b1cb69",
              "parent_uuid": "b92963c1-31b0-4112-9082-1d62dd02ba46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "acc65c7f-8455-4d8e-a5f0-b0c86dc06807",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab8441a6-6a60-46a2-a383-a618eb183d9f",
              "parent_uuid": "acc65c7f-8455-4d8e-a5f0-b0c86dc06807",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 297 (M281)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6cf73c36-dd7b-4a03-b8a9-d80024fa74f8",
              "parent_uuid": "acc65c7f-8455-4d8e-a5f0-b0c86dc06807",
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
              "innerHtml": "\r\n                    <span>244 040 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "88bb863b-cda1-480d-86b1-53203d3c3040",
              "parent_uuid": "acc65c7f-8455-4d8e-a5f0-b0c86dc06807",
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
              "uuid": "78240e3a-ad59-47c7-9d17-409c2bd097d0",
              "parent_uuid": "acc65c7f-8455-4d8e-a5f0-b0c86dc06807",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "99abea88-db7d-40fa-b731-5fed7436838b",
              "parent_uuid": "acc65c7f-8455-4d8e-a5f0-b0c86dc06807",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "0df564ef-b084-4e50-8fb2-ac7d6ef0cfbf",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a54ed0ff-25a0-4207-b52f-c873a0c33fe7",
              "parent_uuid": "0df564ef-b084-4e50-8fb2-ac7d6ef0cfbf",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M280)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1c3ce04a-38b8-4d63-b81c-f223bb7c3253",
              "parent_uuid": "0df564ef-b084-4e50-8fb2-ac7d6ef0cfbf",
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
              "uuid": "7d0e7094-0de5-4818-8d9c-8ccf0689288c",
              "parent_uuid": "0df564ef-b084-4e50-8fb2-ac7d6ef0cfbf",
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
              "uuid": "7342042c-d95c-4276-b112-8eba4d0d4e3d",
              "parent_uuid": "0df564ef-b084-4e50-8fb2-ac7d6ef0cfbf",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "2dca468b-30d5-4325-83a1-a5e86a0e5c27",
              "parent_uuid": "0df564ef-b084-4e50-8fb2-ac7d6ef0cfbf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "9e52fdfe-b5e8-4a18-99a3-146ae5ade520",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae32a243-d740-4b4d-aa09-a175fbb24f5e",
              "parent_uuid": "9e52fdfe-b5e8-4a18-99a3-146ae5ade520",
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
              "uuid": "b22e08f9-82c4-41fd-baa1-047149173aed",
              "parent_uuid": "9e52fdfe-b5e8-4a18-99a3-146ae5ade520",
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
              "innerHtml": "\r\n                    <span>272 900 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4e209b6d-6174-4a8b-afb4-4362fc1fae1c",
              "parent_uuid": "9e52fdfe-b5e8-4a18-99a3-146ae5ade520",
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
              "uuid": "9fc97af6-e988-4faa-871e-24f8a67138f5",
              "parent_uuid": "9e52fdfe-b5e8-4a18-99a3-146ae5ade520",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "8ddb5832-788f-43fe-9b39-2a2d1e76a787",
              "parent_uuid": "9e52fdfe-b5e8-4a18-99a3-146ae5ade520",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 56,
          "lvl": 0
        },
        {
          "uuid": "ed6dba26-b0da-4e0d-b7f2-aa0eeb5827b4",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cce9c6d-9831-470a-b921-6faf542c5a6d",
              "parent_uuid": "ed6dba26-b0da-4e0d-b7f2-aa0eeb5827b4",
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
              "uuid": "5c45873b-33c1-4462-a854-adc1f10b44ec",
              "parent_uuid": "ed6dba26-b0da-4e0d-b7f2-aa0eeb5827b4",
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
              "uuid": "d2f2ea52-2d83-4899-885b-c159f9efe2bf",
              "parent_uuid": "ed6dba26-b0da-4e0d-b7f2-aa0eeb5827b4",
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
              "uuid": "bb3576be-3fea-415f-a85a-6a0fafa6b021",
              "parent_uuid": "ed6dba26-b0da-4e0d-b7f2-aa0eeb5827b4",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "cc0fff00-a591-4123-ac3a-d70f45d62df9",
              "parent_uuid": "ed6dba26-b0da-4e0d-b7f2-aa0eeb5827b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 57,
          "lvl": 0
        },
        {
          "uuid": "80876100-b1aa-48e6-b982-fee7a781ec34",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fd2b63b-2c9a-4bab-ac11-c667dcac7f53",
              "parent_uuid": "80876100-b1aa-48e6-b982-fee7a781ec34",
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
              "innerHtml": "\r\n                    <span>Einlaufblech (M308)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0b489f3e-2949-438f-838b-6dd9ba9f9d03",
              "parent_uuid": "80876100-b1aa-48e6-b982-fee7a781ec34",
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
              "innerHtml": "\r\n                    <span>155 487 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ca749299-1816-4bff-b354-eedbc6d306fa",
              "parent_uuid": "80876100-b1aa-48e6-b982-fee7a781ec34",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "bb45df60-203b-4710-a1b6-a4950f9e84f6",
              "parent_uuid": "80876100-b1aa-48e6-b982-fee7a781ec34",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a94fb465-f2f8-4ead-aa78-fb41fe9fdd75",
              "parent_uuid": "80876100-b1aa-48e6-b982-fee7a781ec34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 58,
          "lvl": 0
        },
        {
          "uuid": "daf9c0ae-042e-4297-a20a-419f99ce5180",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3af44b09-2d82-4af6-8252-74346b8c21ea",
              "parent_uuid": "daf9c0ae-042e-4297-a20a-419f99ce5180",
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
              "innerHtml": "\r\n                    <span>Schieber</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "25e8c891-813e-4f18-8ef8-4517937a8c20",
              "parent_uuid": "daf9c0ae-042e-4297-a20a-419f99ce5180",
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
              "innerHtml": "\r\n                    <span>212 408 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b6451408-832d-4d09-acb3-d9933fca8905",
              "parent_uuid": "daf9c0ae-042e-4297-a20a-419f99ce5180",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "3a33bc3b-c972-4d2c-912d-0d30df14bf5e",
              "parent_uuid": "daf9c0ae-042e-4297-a20a-419f99ce5180",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "f735d4f6-44ee-4502-b8c2-3176421a079e",
              "parent_uuid": "daf9c0ae-042e-4297-a20a-419f99ce5180",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 59,
          "lvl": 0
        },
        {
          "uuid": "4aa71407-ab3d-483f-9ff0-934ebce6dea0",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c46c01f2-dd39-4a7d-aca1-5cdd68eb5abe",
              "parent_uuid": "4aa71407-ab3d-483f-9ff0-934ebce6dea0",
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
              "innerHtml": "\r\n                    <span>Kugellager (6007 LB) Rotor</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1da46884-1c7b-4eb3-a686-47ea3f07048c",
              "parent_uuid": "4aa71407-ab3d-483f-9ff0-934ebce6dea0",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8b8b7289-43d0-4535-947c-ad377728e198",
              "parent_uuid": "4aa71407-ab3d-483f-9ff0-934ebce6dea0",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "bfc3f04c-c9ce-444a-9828-38338745b88c",
              "parent_uuid": "4aa71407-ab3d-483f-9ff0-934ebce6dea0",
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
              "innerHtml": "\r\n                    <span size=\"1\" color=\"#000000\">Werkstatt</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "ee052c3d-0380-4a5e-8896-5fc5ed6aa3b8",
              "parent_uuid": "4aa71407-ab3d-483f-9ff0-934ebce6dea0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 60,
          "lvl": 0
        },
        {
          "uuid": "546a87ae-7c2c-492d-a7f4-b97ffc6bfe7b",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "267cd94d-5adb-4c61-a25d-8277b0f11f94",
              "parent_uuid": "546a87ae-7c2c-492d-a7f4-b97ffc6bfe7b",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "height",
                  "30"
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
          "sort": 61,
          "lvl": 0
        },
        {
          "uuid": "6a97b164-6836-4ebe-8fb8-1db5371366ab",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8745da3d-de46-437f-903d-076fe2358fc5",
              "parent_uuid": "6a97b164-6836-4ebe-8fb8-1db5371366ab",
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 62,
          "lvl": 0
        },
        {
          "uuid": "1dcdee3d-8e7f-4974-a36c-af355bfc95bb",
          "parent_uuid": "97cc0f66-9d26-4548-af37-9057f3961fd3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "484d06e5-1c84-4ee7-86f9-2e5d72235ad2",
              "parent_uuid": "1dcdee3d-8e7f-4974-a36c-af355bfc95bb",
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
                  "uuid": "612d9c1b-9de0-4fb7-b6d3-cf4286781990",
                  "parent_uuid": "484d06e5-1c84-4ee7-86f9-2e5d72235ad2",
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
          "sort": 63,
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
    ,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS cl_uid 
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
		,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'F1A2DD8A-2D11-496E-9B14-13559405089F'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

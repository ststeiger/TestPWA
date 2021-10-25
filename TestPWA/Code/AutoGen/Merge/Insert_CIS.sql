
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
  "uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "8355d49c-27af-4986-8407-3cf63e90c134",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "ccf08983-7c5e-420c-aa7c-093fc9548901",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "548c433f-0f95-4800-b4ea-7ef9f9e7ea1c",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "20559065-5d4a-4ef5-adae-31a45d0cdaea",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "fefba4ce-63cc-4fce-832c-03031e1c6386",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "875c8e7f-752e-4583-a17b-03e18d186f04",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "af289b81-339d-46ee-8cc3-a7341a739bd5",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
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
      "uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
      "parent_uuid": "0a99139b-a836-4a59-9b31-0ac8469b564e",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "9cdf1350-2708-4d65-b65d-78c20b03d347",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4b4f1d8b-a040-4b53-90df-1b3b23095d07",
              "parent_uuid": "9cdf1350-2708-4d65-b65d-78c20b03d347",
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
              "uuid": "2733823c-6d60-489a-b591-ef8b39da183f",
              "parent_uuid": "9cdf1350-2708-4d65-b65d-78c20b03d347",
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
              "uuid": "1b394c8e-139a-4243-a452-79a2bdc4bb2d",
              "parent_uuid": "9cdf1350-2708-4d65-b65d-78c20b03d347",
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
              "uuid": "b12348dc-05a1-4ae6-a231-1700d2695f0e",
              "parent_uuid": "9cdf1350-2708-4d65-b65d-78c20b03d347",
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
          "uuid": "0826dab6-d5ba-4abf-a062-7bebc27d8136",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f28ab277-2969-4482-89b0-bd88d16e0f5f",
              "parent_uuid": "0826dab6-d5ba-4abf-a062-7bebc27d8136",
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
              "uuid": "59e6827e-1659-4a8f-973f-29d1a56f803d",
              "parent_uuid": "0826dab6-d5ba-4abf-a062-7bebc27d8136",
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
              "uuid": "24a17d60-c6a7-4736-892d-2a6f76820b7b",
              "parent_uuid": "0826dab6-d5ba-4abf-a062-7bebc27d8136",
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
              "uuid": "95107688-9d9d-462d-bc4e-38bf7d8c3ed4",
              "parent_uuid": "0826dab6-d5ba-4abf-a062-7bebc27d8136",
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
          "uuid": "cc4545bd-8c8f-495c-9003-191339660652",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9914e66e-a2b4-490d-819e-b07de7f9391a",
              "parent_uuid": "cc4545bd-8c8f-495c-9003-191339660652",
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
              "uuid": "4613f7bc-93b2-4fb4-a2c5-47f187068cdd",
              "parent_uuid": "cc4545bd-8c8f-495c-9003-191339660652",
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
              "uuid": "c0152b87-c0fc-4279-a6b1-437d9f7f1268",
              "parent_uuid": "cc4545bd-8c8f-495c-9003-191339660652",
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
              "uuid": "06396b81-6897-4fc7-a0d4-f01eba6aaee4",
              "parent_uuid": "cc4545bd-8c8f-495c-9003-191339660652",
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
              "uuid": "7c8a2982-b08e-4dde-a5df-a5c5a4b57c5f",
              "parent_uuid": "cc4545bd-8c8f-495c-9003-191339660652",
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
              "uuid": "9ee76645-ec80-4a98-b963-a0180e9533ad",
              "parent_uuid": "cc4545bd-8c8f-495c-9003-191339660652",
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
          "uuid": "2feadf4c-aea9-49d9-867b-7b1afcca5de3",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4f28ea58-0d14-4301-a20c-846a6299adf1",
              "parent_uuid": "2feadf4c-aea9-49d9-867b-7b1afcca5de3",
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
          "uuid": "2bea18d8-516b-459d-8ba0-d9f5703d1eae",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "094a51c9-e789-405d-919a-3d0b1d388301",
              "parent_uuid": "2bea18d8-516b-459d-8ba0-d9f5703d1eae",
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
              "uuid": "e5036b10-ad01-4509-991c-e43d9f6f7cf1",
              "parent_uuid": "2bea18d8-516b-459d-8ba0-d9f5703d1eae",
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
              "uuid": "fd0f2eb5-7365-4fdc-ae29-929811dafce2",
              "parent_uuid": "2bea18d8-516b-459d-8ba0-d9f5703d1eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9453c77-0b8e-4700-9038-5c11277ab33d",
                  "parent_uuid": "fd0f2eb5-7365-4fdc-ae29-929811dafce2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e6f4c61-8300-48b5-b3db-f3fc9363a63b",
              "parent_uuid": "2bea18d8-516b-459d-8ba0-d9f5703d1eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d02d962-8891-4542-ade6-351fff0869f6",
                  "parent_uuid": "6e6f4c61-8300-48b5-b3db-f3fc9363a63b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c8b9939-878e-4c5c-ab15-c2fbadbb2e86",
              "parent_uuid": "2bea18d8-516b-459d-8ba0-d9f5703d1eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6cbb4115-7380-4d3c-a680-f35e662f25d1",
                  "parent_uuid": "6c8b9939-878e-4c5c-ab15-c2fbadbb2e86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e810fd23-fbcf-4e22-b88f-16a1ad059b17",
              "parent_uuid": "2bea18d8-516b-459d-8ba0-d9f5703d1eae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57b31e6d-15b6-485a-9c88-9fee913a6b81",
                  "parent_uuid": "e810fd23-fbcf-4e22-b88f-16a1ad059b17",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d4e1788b-0faf-4da9-8423-2f0ac3543128",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa14e718-3521-4293-af41-d32693675ccd",
              "parent_uuid": "d4e1788b-0faf-4da9-8423-2f0ac3543128",
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
              "uuid": "0b7686c5-448c-4da5-bcb2-e3bfdd375fc0",
              "parent_uuid": "d4e1788b-0faf-4da9-8423-2f0ac3543128",
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
              "uuid": "08476b1e-3a37-4dbf-adb7-0ec564e97eca",
              "parent_uuid": "d4e1788b-0faf-4da9-8423-2f0ac3543128",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cb365dc-585c-44ae-a0f7-1031475446f1",
                  "parent_uuid": "08476b1e-3a37-4dbf-adb7-0ec564e97eca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d776959-c0fd-4346-8181-c7d280af4196",
              "parent_uuid": "d4e1788b-0faf-4da9-8423-2f0ac3543128",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92d485a1-49d6-40da-b112-cceb1cb73a5d",
                  "parent_uuid": "8d776959-c0fd-4346-8181-c7d280af4196",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91e69a1d-c3f1-4647-ba4c-bb7abf482eed",
              "parent_uuid": "d4e1788b-0faf-4da9-8423-2f0ac3543128",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b7be516-5b90-478c-a627-f786ea583136",
                  "parent_uuid": "91e69a1d-c3f1-4647-ba4c-bb7abf482eed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ff7e9b1-853a-4fdd-8798-741b9fbc5c8c",
              "parent_uuid": "d4e1788b-0faf-4da9-8423-2f0ac3543128",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "450faff3-52e2-48f1-840d-4f61a8e64db2",
                  "parent_uuid": "7ff7e9b1-853a-4fdd-8798-741b9fbc5c8c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0930d91-3f5e-4bbb-ab5c-34a8b8419efa",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5938dcee-00ad-4634-b251-b0544ee15a92",
              "parent_uuid": "e0930d91-3f5e-4bbb-ab5c-34a8b8419efa",
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
              "uuid": "2d9d9705-adf8-409b-8daf-24b331884fb0",
              "parent_uuid": "e0930d91-3f5e-4bbb-ab5c-34a8b8419efa",
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
              "uuid": "c1784ce1-e9f3-45b5-8839-05e924a87d72",
              "parent_uuid": "e0930d91-3f5e-4bbb-ab5c-34a8b8419efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c88e526c-caca-480e-ba86-42b8b311a204",
                  "parent_uuid": "c1784ce1-e9f3-45b5-8839-05e924a87d72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d0fff27-48f0-40c4-acb5-96dc4d0a2d95",
              "parent_uuid": "e0930d91-3f5e-4bbb-ab5c-34a8b8419efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41f5ff6c-45e1-46a5-ab0e-1cad7ca4c12d",
                  "parent_uuid": "5d0fff27-48f0-40c4-acb5-96dc4d0a2d95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4798ed13-673e-4abf-83ee-a0e62c67d600",
              "parent_uuid": "e0930d91-3f5e-4bbb-ab5c-34a8b8419efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c50c8b57-b131-4c68-8700-1a3e9785fb30",
                  "parent_uuid": "4798ed13-673e-4abf-83ee-a0e62c67d600",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb8458ef-7945-447c-b0c5-0e83cec891a0",
              "parent_uuid": "e0930d91-3f5e-4bbb-ab5c-34a8b8419efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "436e473f-e0f1-4248-8972-0e2ba565e8e8",
                  "parent_uuid": "bb8458ef-7945-447c-b0c5-0e83cec891a0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7ac6a810-5b86-42e9-929f-854a47cf4324",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "29c8a3ea-9ed2-4502-93fd-9af50f3c575a",
              "parent_uuid": "7ac6a810-5b86-42e9-929f-854a47cf4324",
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
              "uuid": "fce33c05-297b-4b56-a986-1bb52dee7631",
              "parent_uuid": "7ac6a810-5b86-42e9-929f-854a47cf4324",
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
              "uuid": "8b18891a-b638-41f3-aec6-c0da852440e6",
              "parent_uuid": "7ac6a810-5b86-42e9-929f-854a47cf4324",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68710a3b-3b97-46c9-a045-96a5802ceac0",
                  "parent_uuid": "8b18891a-b638-41f3-aec6-c0da852440e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd464bbc-0314-4362-aacf-66de2191ca1b",
              "parent_uuid": "7ac6a810-5b86-42e9-929f-854a47cf4324",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8da84737-b522-482f-85de-05efa50ff376",
                  "parent_uuid": "dd464bbc-0314-4362-aacf-66de2191ca1b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ffecc6a-116a-457a-926b-54cf420b9a06",
              "parent_uuid": "7ac6a810-5b86-42e9-929f-854a47cf4324",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5534519-b104-467d-9f30-b363c6e06b58",
                  "parent_uuid": "3ffecc6a-116a-457a-926b-54cf420b9a06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3421ac2-c7b5-41ea-a640-a9e6a14a8d92",
              "parent_uuid": "7ac6a810-5b86-42e9-929f-854a47cf4324",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f99fb8a4-f2de-4905-ae68-202dde292d18",
                  "parent_uuid": "f3421ac2-c7b5-41ea-a640-a9e6a14a8d92",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d114e687-d7e6-43eb-873e-ca75deb416a8",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c8394b17-962c-4a6f-ae82-1ff42442890c",
              "parent_uuid": "d114e687-d7e6-43eb-873e-ca75deb416a8",
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
          "uuid": "7c9bc50b-dc27-47f8-a200-ef8c4ec7d0ca",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d22162c-d8bc-497c-b5d8-fb836ca64a77",
              "parent_uuid": "7c9bc50b-dc27-47f8-a200-ef8c4ec7d0ca",
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
              "uuid": "972d8efc-1754-42f0-aecb-c4516aa18629",
              "parent_uuid": "7c9bc50b-dc27-47f8-a200-ef8c4ec7d0ca",
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
              "uuid": "f16c73b0-aff0-4e5f-bd07-b72457ac9122",
              "parent_uuid": "7c9bc50b-dc27-47f8-a200-ef8c4ec7d0ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8d82cec-02c5-44b8-a1dd-28e0610de9dd",
                  "parent_uuid": "f16c73b0-aff0-4e5f-bd07-b72457ac9122",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4257081f-192d-4cac-80ea-eedf3c003193",
              "parent_uuid": "7c9bc50b-dc27-47f8-a200-ef8c4ec7d0ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a464f1b4-2601-4e5d-ad14-11f7f37ab4c9",
                  "parent_uuid": "4257081f-192d-4cac-80ea-eedf3c003193",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "194a03b8-e479-4c95-a0da-5d415505ff24",
              "parent_uuid": "7c9bc50b-dc27-47f8-a200-ef8c4ec7d0ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e934df3-d244-45f9-b148-1e30bfff0c82",
                  "parent_uuid": "194a03b8-e479-4c95-a0da-5d415505ff24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99bf4830-1730-43ec-86de-1a63bcec8756",
              "parent_uuid": "7c9bc50b-dc27-47f8-a200-ef8c4ec7d0ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2016e009-ee68-49e6-b80a-9a577358406d",
                  "parent_uuid": "99bf4830-1730-43ec-86de-1a63bcec8756",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dd3b0bbb-aebf-4e70-9cb5-35cf3fdfe8ef",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8ab7f39a-adbe-41d0-88d1-2c52d0ba1e2a",
              "parent_uuid": "dd3b0bbb-aebf-4e70-9cb5-35cf3fdfe8ef",
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
              "uuid": "d0baa316-53bc-41b5-9f20-3533bfe56eef",
              "parent_uuid": "dd3b0bbb-aebf-4e70-9cb5-35cf3fdfe8ef",
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
              "uuid": "b46f9feb-2776-4bf9-ae91-905e647fa782",
              "parent_uuid": "dd3b0bbb-aebf-4e70-9cb5-35cf3fdfe8ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b65f6c20-1540-4222-8f13-2506fb2e4b7f",
                  "parent_uuid": "b46f9feb-2776-4bf9-ae91-905e647fa782",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "354f5ee0-8e5d-473d-9c44-632463045916",
              "parent_uuid": "dd3b0bbb-aebf-4e70-9cb5-35cf3fdfe8ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22f91859-2166-404f-9bcd-1f94863bd1d5",
                  "parent_uuid": "354f5ee0-8e5d-473d-9c44-632463045916",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ae3e932-c08a-4342-9476-7859efc7d2e9",
              "parent_uuid": "dd3b0bbb-aebf-4e70-9cb5-35cf3fdfe8ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5da691aa-7355-4b4d-a286-57af5fca7e94",
                  "parent_uuid": "8ae3e932-c08a-4342-9476-7859efc7d2e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f030140-6083-40eb-b350-7f3d2001ce66",
              "parent_uuid": "dd3b0bbb-aebf-4e70-9cb5-35cf3fdfe8ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80ffef90-1398-4ed0-9699-4e662648db58",
                  "parent_uuid": "2f030140-6083-40eb-b350-7f3d2001ce66",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1a9ae3f0-70d1-4470-b8a2-3cfc781d5bac",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "500dc70f-8dce-420a-9dcd-ca342d94d6eb",
              "parent_uuid": "1a9ae3f0-70d1-4470-b8a2-3cfc781d5bac",
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
              "uuid": "3ecda22b-7c45-414a-9eb5-e0379bd27e77",
              "parent_uuid": "1a9ae3f0-70d1-4470-b8a2-3cfc781d5bac",
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
              "uuid": "a22977e9-22e6-4db3-bbd0-172426e52c74",
              "parent_uuid": "1a9ae3f0-70d1-4470-b8a2-3cfc781d5bac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a8a5d7c-f7fd-4380-9775-daf31c446846",
                  "parent_uuid": "a22977e9-22e6-4db3-bbd0-172426e52c74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ec86f32-568d-422f-b8f7-6c83ec6ebcb9",
              "parent_uuid": "1a9ae3f0-70d1-4470-b8a2-3cfc781d5bac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7c32fe8-4686-49e1-8b7d-107562b398ce",
                  "parent_uuid": "3ec86f32-568d-422f-b8f7-6c83ec6ebcb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39a5c21c-546b-445d-a533-005f2a72c81d",
              "parent_uuid": "1a9ae3f0-70d1-4470-b8a2-3cfc781d5bac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c27594e9-6153-47f5-866a-3192619b4a65",
                  "parent_uuid": "39a5c21c-546b-445d-a533-005f2a72c81d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d2db99c-47a1-4150-8bce-56beb2567aaa",
              "parent_uuid": "1a9ae3f0-70d1-4470-b8a2-3cfc781d5bac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a564f2ca-f5fc-402a-bc4e-4bff1cd222a4",
                  "parent_uuid": "7d2db99c-47a1-4150-8bce-56beb2567aaa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "896fd476-005f-43cf-8b74-2541111a4fd1",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c17598d3-659c-473a-b2e0-77b4aa3211a5",
              "parent_uuid": "896fd476-005f-43cf-8b74-2541111a4fd1",
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
              "uuid": "bf79c839-be6d-46b8-8ba0-4f853b3ea73b",
              "parent_uuid": "896fd476-005f-43cf-8b74-2541111a4fd1",
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
              "uuid": "e1858b87-ab8b-490f-a42a-322637495afb",
              "parent_uuid": "896fd476-005f-43cf-8b74-2541111a4fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8932c99c-3915-4c1c-a68d-e5910fd1cb58",
                  "parent_uuid": "e1858b87-ab8b-490f-a42a-322637495afb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b52c09f-9a18-4626-84cc-6f15653b302c",
              "parent_uuid": "896fd476-005f-43cf-8b74-2541111a4fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9372747f-a89e-4fec-8ecf-66423d51fb48",
                  "parent_uuid": "4b52c09f-9a18-4626-84cc-6f15653b302c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "594fb3fb-d9a5-44b4-926c-9b4d160e0853",
              "parent_uuid": "896fd476-005f-43cf-8b74-2541111a4fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0093760-fdd7-4546-a88e-0900f1c8fe32",
                  "parent_uuid": "594fb3fb-d9a5-44b4-926c-9b4d160e0853",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3a65f77-9831-468a-ac3d-c572620435a6",
              "parent_uuid": "896fd476-005f-43cf-8b74-2541111a4fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd08e586-9d22-44d8-a321-e939318c6c52",
                  "parent_uuid": "c3a65f77-9831-468a-ac3d-c572620435a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "257f872b-65fa-4b3d-b618-2db259085d7f",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6744a176-0ea1-4cc5-9ddf-7f4fdee36896",
              "parent_uuid": "257f872b-65fa-4b3d-b618-2db259085d7f",
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
              "uuid": "23a86819-1a77-41e1-be9d-32d00d9b67fd",
              "parent_uuid": "257f872b-65fa-4b3d-b618-2db259085d7f",
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
              "uuid": "553bc2ab-9fa3-436f-b55e-a20102485de2",
              "parent_uuid": "257f872b-65fa-4b3d-b618-2db259085d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4270dab-5c81-454e-9815-8e903a1fce0f",
                  "parent_uuid": "553bc2ab-9fa3-436f-b55e-a20102485de2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64363524-a4e9-4d88-9543-3483e3b3858e",
              "parent_uuid": "257f872b-65fa-4b3d-b618-2db259085d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62ff6d57-dcfa-4393-839a-81ff1d2e5536",
                  "parent_uuid": "64363524-a4e9-4d88-9543-3483e3b3858e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec919135-e611-4166-bb09-766870609f98",
              "parent_uuid": "257f872b-65fa-4b3d-b618-2db259085d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7436f8cb-454d-4750-a0ee-1030000d8c3a",
                  "parent_uuid": "ec919135-e611-4166-bb09-766870609f98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce688f0f-352c-47c6-9040-b7f8db8bbc5f",
              "parent_uuid": "257f872b-65fa-4b3d-b618-2db259085d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35751d46-104c-4238-8ad1-b4335f08defb",
                  "parent_uuid": "ce688f0f-352c-47c6-9040-b7f8db8bbc5f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d91114f4-127a-49ec-81f7-c122d021bbc7",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05598f0d-e0ed-4134-851f-0fce8d5a8e0d",
              "parent_uuid": "d91114f4-127a-49ec-81f7-c122d021bbc7",
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
              "uuid": "1e47b9a7-43ee-4e2e-b714-f1ce6bc26885",
              "parent_uuid": "d91114f4-127a-49ec-81f7-c122d021bbc7",
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
              "uuid": "fb68f2dd-2541-4af0-9b48-ee5026c1aafe",
              "parent_uuid": "d91114f4-127a-49ec-81f7-c122d021bbc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f3434a4-937a-402b-9b94-b8edbffb0e04",
                  "parent_uuid": "fb68f2dd-2541-4af0-9b48-ee5026c1aafe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a153bcb-39c0-4f4f-833f-912e51d422ed",
              "parent_uuid": "d91114f4-127a-49ec-81f7-c122d021bbc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ca21577-843c-4c37-a97f-895012c10e0f",
                  "parent_uuid": "3a153bcb-39c0-4f4f-833f-912e51d422ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5e4b91f-a20e-4c57-b1eb-cab7f70ee7e5",
              "parent_uuid": "d91114f4-127a-49ec-81f7-c122d021bbc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d26f954d-fd1d-471f-8c76-376d52cf5a21",
                  "parent_uuid": "d5e4b91f-a20e-4c57-b1eb-cab7f70ee7e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c158020-7c39-40d4-bc70-c2bb73d7044a",
              "parent_uuid": "d91114f4-127a-49ec-81f7-c122d021bbc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4cca097-b36b-4344-b2a0-d25e94f097de",
                  "parent_uuid": "9c158020-7c39-40d4-bc70-c2bb73d7044a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ce3004e1-1b7a-4d86-9a06-e1a009b5ed90",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ae9ee0f-d115-46fb-93a1-cba20f39ea6c",
              "parent_uuid": "ce3004e1-1b7a-4d86-9a06-e1a009b5ed90",
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
              "uuid": "02c026d6-6215-4457-a6f0-71b18dcaceae",
              "parent_uuid": "ce3004e1-1b7a-4d86-9a06-e1a009b5ed90",
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
              "uuid": "1696d16e-55b8-4d6f-97fc-e55047c3d84d",
              "parent_uuid": "ce3004e1-1b7a-4d86-9a06-e1a009b5ed90",
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
                  "uuid": "6d8c59b5-7cf8-4e7f-b3ce-a8523c39d1bb",
                  "parent_uuid": "1696d16e-55b8-4d6f-97fc-e55047c3d84d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d589ad9b-4111-4b94-a406-21c44b7d5014",
              "parent_uuid": "ce3004e1-1b7a-4d86-9a06-e1a009b5ed90",
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
                  "uuid": "fedc25c0-b61e-43be-9747-bb49430988c5",
                  "parent_uuid": "d589ad9b-4111-4b94-a406-21c44b7d5014",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0fa5c66-444e-43f3-b91a-962eaa6bba3a",
              "parent_uuid": "ce3004e1-1b7a-4d86-9a06-e1a009b5ed90",
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
                  "uuid": "7279900e-9b02-4e51-bd1e-6bb28d1f49d7",
                  "parent_uuid": "a0fa5c66-444e-43f3-b91a-962eaa6bba3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c59c1829-69f6-477a-86bc-5a52f0c29695",
              "parent_uuid": "ce3004e1-1b7a-4d86-9a06-e1a009b5ed90",
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
                  "uuid": "40470489-2ede-4347-af28-340e277ff21b",
                  "parent_uuid": "c59c1829-69f6-477a-86bc-5a52f0c29695",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2fe1bfb-bce2-4bb8-8134-26ddcfe50396",
              "parent_uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
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
              "uuid": "8cb9982f-9b9e-4040-9738-20e631f01d0c",
              "parent_uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
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
              "uuid": "65c683fe-3739-4fd2-a5eb-d0f4b84925d3",
              "parent_uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
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
              "uuid": "db9482fb-ff5b-4d69-8002-93ef85aa6290",
              "parent_uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
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
                  "uuid": "1acbd5e0-8d6e-474d-a7cf-fd0394558c05",
                  "parent_uuid": "db9482fb-ff5b-4d69-8002-93ef85aa6290",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3e2c8ec-bde0-414a-b9a3-553601452fa6",
              "parent_uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
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
                  "uuid": "4289f559-203d-4332-a12e-d8946e45c6e4",
                  "parent_uuid": "a3e2c8ec-bde0-414a-b9a3-553601452fa6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbbcb5cb-b224-4991-ba7d-9537d4c9aa9e",
              "parent_uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
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
                  "uuid": "b1622afd-5c66-4135-ade4-682cd9290e06",
                  "parent_uuid": "dbbcb5cb-b224-4991-ba7d-9537d4c9aa9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8666d37b-c986-41eb-a263-6a56856bcca4",
              "parent_uuid": "425c1fbc-c560-4e48-b831-d6e5175e7a61",
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
                  "uuid": "f3bee9a9-1ce9-4134-a666-8aba74477613",
                  "parent_uuid": "8666d37b-c986-41eb-a263-6a56856bcca4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f44b361-8e9d-4f62-a220-b66cae41cee6",
              "parent_uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
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
              "uuid": "b164ef5c-9ce2-4dff-9511-7ef67f6050b3",
              "parent_uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
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
              "uuid": "f7b5a1de-1b53-452e-8626-b7f15c7a7b0a",
              "parent_uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
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
                  "uuid": "78d2950b-a882-4b43-8aa7-9e06ba01db92",
                  "parent_uuid": "f7b5a1de-1b53-452e-8626-b7f15c7a7b0a",
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
              "uuid": "524a3d25-6baa-4f54-993e-f7dd7cf70aa2",
              "parent_uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
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
                  "uuid": "2998a86b-be6e-4a6a-8cdb-352387ec8b50",
                  "parent_uuid": "524a3d25-6baa-4f54-993e-f7dd7cf70aa2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68b48509-6e25-457d-bc48-17545637cfb0",
              "parent_uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
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
                  "uuid": "69c991fa-8a2c-4c0a-b72d-ff5f10262cfe",
                  "parent_uuid": "68b48509-6e25-457d-bc48-17545637cfb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7248584c-30ef-422b-9682-4a8b718dd244",
              "parent_uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
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
                  "uuid": "f2a49ff3-ca79-42cf-b570-4c8f8f61cc3d",
                  "parent_uuid": "7248584c-30ef-422b-9682-4a8b718dd244",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e425420b-13ef-44df-9b3b-b08cf833e390",
              "parent_uuid": "bbab2551-7702-4dc1-ac82-5db315578004",
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
                  "uuid": "4bae39ef-d31d-44dc-81ec-77211a302792",
                  "parent_uuid": "e425420b-13ef-44df-9b3b-b08cf833e390",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "87935b1e-d82c-4b9a-afdd-32e582db4716",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4035355d-8a21-45ce-8b7e-0e97c56bb383",
              "parent_uuid": "87935b1e-d82c-4b9a-afdd-32e582db4716",
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
              "uuid": "38a1787f-2f33-409c-bd5f-2d6a8be123f4",
              "parent_uuid": "87935b1e-d82c-4b9a-afdd-32e582db4716",
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
              "uuid": "4ce8d292-4e0d-464f-9176-7b37bc4e2582",
              "parent_uuid": "87935b1e-d82c-4b9a-afdd-32e582db4716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b14e8926-9d1e-46b1-98cf-578012a6398d",
                  "parent_uuid": "4ce8d292-4e0d-464f-9176-7b37bc4e2582",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b40fde99-5960-483a-86dd-8e44c0cdc4f7",
              "parent_uuid": "87935b1e-d82c-4b9a-afdd-32e582db4716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5474dc5f-fffb-4445-bf12-eaabd8c59ced",
                  "parent_uuid": "b40fde99-5960-483a-86dd-8e44c0cdc4f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77ac7d43-a4e8-4e90-8856-cd1c72f98873",
              "parent_uuid": "87935b1e-d82c-4b9a-afdd-32e582db4716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9762d9fe-68f4-4ee1-8f50-d07deb478eb5",
                  "parent_uuid": "77ac7d43-a4e8-4e90-8856-cd1c72f98873",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a5a1448-496e-4d0e-82d4-05d6f1086f12",
              "parent_uuid": "87935b1e-d82c-4b9a-afdd-32e582db4716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3ede919-30bc-4595-8d72-0f0c119dccb2",
                  "parent_uuid": "8a5a1448-496e-4d0e-82d4-05d6f1086f12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "866e369f-82c7-4774-a5f8-2dc50e0322fe",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b739d916-bbeb-440b-bb4f-0456728129a4",
              "parent_uuid": "866e369f-82c7-4774-a5f8-2dc50e0322fe",
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
              "uuid": "9df995b3-ce64-4621-a6f0-f1176656da17",
              "parent_uuid": "866e369f-82c7-4774-a5f8-2dc50e0322fe",
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
              "uuid": "bf004dce-2011-40e2-bfa0-495f924ce406",
              "parent_uuid": "866e369f-82c7-4774-a5f8-2dc50e0322fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70189581-c880-4ca1-8988-45c35f048f3c",
                  "parent_uuid": "bf004dce-2011-40e2-bfa0-495f924ce406",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cdaf1fb-56e7-43a9-a50d-15e9d56bba43",
              "parent_uuid": "866e369f-82c7-4774-a5f8-2dc50e0322fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "228d835e-1ec6-477d-ae60-1ac1d99fede1",
                  "parent_uuid": "5cdaf1fb-56e7-43a9-a50d-15e9d56bba43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d42a5ba4-2abc-40f8-80a1-73c46819e02e",
              "parent_uuid": "866e369f-82c7-4774-a5f8-2dc50e0322fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e9e8b1c-a62f-4282-82de-c699b13b7c71",
                  "parent_uuid": "d42a5ba4-2abc-40f8-80a1-73c46819e02e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "193aa7b7-942a-4c6b-b4f0-0d0221c9a167",
              "parent_uuid": "866e369f-82c7-4774-a5f8-2dc50e0322fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2eb4be9b-2d95-42c3-9d08-64a008f9471c",
                  "parent_uuid": "193aa7b7-942a-4c6b-b4f0-0d0221c9a167",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bb2fff22-f14e-4a76-b2a7-93b2b0c0702b",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64b57331-5540-459b-9515-30918885d659",
              "parent_uuid": "bb2fff22-f14e-4a76-b2a7-93b2b0c0702b",
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
              "uuid": "87fff3e4-6fc8-4708-84a1-2a481d00ff62",
              "parent_uuid": "bb2fff22-f14e-4a76-b2a7-93b2b0c0702b",
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
              "uuid": "81825efc-b647-4293-ab83-7be090efddb0",
              "parent_uuid": "bb2fff22-f14e-4a76-b2a7-93b2b0c0702b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b2dd3cf-eb6f-485c-a30e-165a8e91a6a8",
                  "parent_uuid": "81825efc-b647-4293-ab83-7be090efddb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d99f334-a652-4e1f-941a-487d34b3f3a8",
              "parent_uuid": "bb2fff22-f14e-4a76-b2a7-93b2b0c0702b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c61da2f6-d7a2-4c5e-8d9a-245d5b96a21b",
                  "parent_uuid": "9d99f334-a652-4e1f-941a-487d34b3f3a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b10df09-d237-4ae9-a08e-ee89563c739f",
              "parent_uuid": "bb2fff22-f14e-4a76-b2a7-93b2b0c0702b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5285ad13-a934-43a9-867a-e7de552cfdeb",
                  "parent_uuid": "4b10df09-d237-4ae9-a08e-ee89563c739f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e9083bd-4c4c-48c0-93c9-a0eb06e927e5",
              "parent_uuid": "bb2fff22-f14e-4a76-b2a7-93b2b0c0702b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2efadcdb-5f2d-4a91-b321-7a416184291b",
                  "parent_uuid": "5e9083bd-4c4c-48c0-93c9-a0eb06e927e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "585a68ca-4d70-43a7-8d9a-d3a2e011d5df",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c9eff44-fa48-4a30-882d-a4537aefc35c",
              "parent_uuid": "585a68ca-4d70-43a7-8d9a-d3a2e011d5df",
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
              "uuid": "dd8ad074-d53f-40d2-926a-9c67a683b171",
              "parent_uuid": "585a68ca-4d70-43a7-8d9a-d3a2e011d5df",
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
              "uuid": "03ab0a4b-c6a4-497b-b8fd-71482dabba8d",
              "parent_uuid": "585a68ca-4d70-43a7-8d9a-d3a2e011d5df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cabc8c56-4d3a-4155-8da9-e616e034afaa",
                  "parent_uuid": "03ab0a4b-c6a4-497b-b8fd-71482dabba8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3fef0963-b4aa-4604-a10c-a1c7360ef3b4",
              "parent_uuid": "585a68ca-4d70-43a7-8d9a-d3a2e011d5df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e18654a-faf1-4ef5-b128-dbeda8153c59",
                  "parent_uuid": "3fef0963-b4aa-4604-a10c-a1c7360ef3b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c64ec48-a341-4cb3-9c56-093066a15289",
              "parent_uuid": "585a68ca-4d70-43a7-8d9a-d3a2e011d5df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48710366-5e6d-4062-b3ba-f179e367867d",
                  "parent_uuid": "0c64ec48-a341-4cb3-9c56-093066a15289",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9d35d31-2106-4de0-9174-a5adbe598a97",
              "parent_uuid": "585a68ca-4d70-43a7-8d9a-d3a2e011d5df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a2322cf-145b-41ac-85b8-f89439e4de21",
                  "parent_uuid": "a9d35d31-2106-4de0-9174-a5adbe598a97",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "891978e1-e0fd-44b8-aa2c-b27f1547f36a",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "72e58e58-aad8-4dc7-9781-043a1b3b03ec",
              "parent_uuid": "891978e1-e0fd-44b8-aa2c-b27f1547f36a",
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
          "uuid": "3c304e8c-9056-454c-843f-779be97a3fa5",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ee95d57-9306-44b6-882e-07ef717e4be4",
              "parent_uuid": "3c304e8c-9056-454c-843f-779be97a3fa5",
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
              "uuid": "32024965-c124-4455-906c-107bfc9befc9",
              "parent_uuid": "3c304e8c-9056-454c-843f-779be97a3fa5",
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
              "uuid": "ad962dc3-53ce-4360-b59c-aa8757ed388c",
              "parent_uuid": "3c304e8c-9056-454c-843f-779be97a3fa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ecf2bafd-7c33-450a-a0af-c04d2b25cfda",
                  "parent_uuid": "ad962dc3-53ce-4360-b59c-aa8757ed388c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4d0004f-3f98-4176-a1d9-43264437dc1c",
              "parent_uuid": "3c304e8c-9056-454c-843f-779be97a3fa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11415dfd-ec79-4841-b777-082b0d9f9b42",
                  "parent_uuid": "e4d0004f-3f98-4176-a1d9-43264437dc1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c87a5d21-ebe4-4bba-af51-48decbd3c390",
              "parent_uuid": "3c304e8c-9056-454c-843f-779be97a3fa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e94d638e-f026-4a28-9a27-52487f470c80",
                  "parent_uuid": "c87a5d21-ebe4-4bba-af51-48decbd3c390",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6fdc150-1d51-4c04-8263-326c4f5a0a77",
              "parent_uuid": "3c304e8c-9056-454c-843f-779be97a3fa5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63eeb66b-55cb-4737-bb74-9b588f9e2e1b",
                  "parent_uuid": "b6fdc150-1d51-4c04-8263-326c4f5a0a77",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "90ec4bbf-af29-404d-a4b0-9228b054892d",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "962a5dc6-145b-4be4-bb84-5abc7d00d900",
              "parent_uuid": "90ec4bbf-af29-404d-a4b0-9228b054892d",
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
              "uuid": "f231cd70-dab4-4741-8b77-15b8a00f0f52",
              "parent_uuid": "90ec4bbf-af29-404d-a4b0-9228b054892d",
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
              "uuid": "ce07fa71-5c9b-45a7-955e-b308ef3ba4a8",
              "parent_uuid": "90ec4bbf-af29-404d-a4b0-9228b054892d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b52755f-22c7-4440-abe0-bd07f7b755b1",
                  "parent_uuid": "ce07fa71-5c9b-45a7-955e-b308ef3ba4a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "506818a6-bdf3-4392-a528-ed2f8c683dbf",
              "parent_uuid": "90ec4bbf-af29-404d-a4b0-9228b054892d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3ff1418-4a50-4789-9ba0-2bc63fd33c90",
                  "parent_uuid": "506818a6-bdf3-4392-a528-ed2f8c683dbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac4c87aa-ebc2-4644-9a31-78c96e9265ca",
              "parent_uuid": "90ec4bbf-af29-404d-a4b0-9228b054892d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5e9de68-56c7-4807-a731-d044bdfbb803",
                  "parent_uuid": "ac4c87aa-ebc2-4644-9a31-78c96e9265ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31bf5159-db20-4859-b251-4e4b585d79e8",
              "parent_uuid": "90ec4bbf-af29-404d-a4b0-9228b054892d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50d6b798-0ee2-44d6-bb34-83cdb0354228",
                  "parent_uuid": "31bf5159-db20-4859-b251-4e4b585d79e8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "239fb335-d76f-45f6-9375-dbbfae81dfa6",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "384c0793-0b93-4a62-a6d5-3918e98f878c",
              "parent_uuid": "239fb335-d76f-45f6-9375-dbbfae81dfa6",
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
              "uuid": "f1c3cab3-d8a0-471c-af1c-3372b6bbf1fb",
              "parent_uuid": "239fb335-d76f-45f6-9375-dbbfae81dfa6",
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
              "uuid": "b27d8bf9-8fa0-4c26-8ebd-27cee87dace5",
              "parent_uuid": "239fb335-d76f-45f6-9375-dbbfae81dfa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e59c6dbc-b9ab-4185-898b-b024c9dbb278",
                  "parent_uuid": "b27d8bf9-8fa0-4c26-8ebd-27cee87dace5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a26345d4-9df8-4e4d-915e-8b77b6e56108",
              "parent_uuid": "239fb335-d76f-45f6-9375-dbbfae81dfa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97199676-6560-4fe7-a8d5-ecd56ccb80ad",
                  "parent_uuid": "a26345d4-9df8-4e4d-915e-8b77b6e56108",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b304487b-3308-44c3-8fc5-a025d529b56d",
              "parent_uuid": "239fb335-d76f-45f6-9375-dbbfae81dfa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40b3fb15-157e-4cca-b893-9467616dec9a",
                  "parent_uuid": "b304487b-3308-44c3-8fc5-a025d529b56d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e72db3fa-5196-491c-8d44-962405225ceb",
              "parent_uuid": "239fb335-d76f-45f6-9375-dbbfae81dfa6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "749b4367-f2a2-49a3-b6bc-7966588101fa",
                  "parent_uuid": "e72db3fa-5196-491c-8d44-962405225ceb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "347aa12c-accb-4edc-8c91-5ff8b56fcedc",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62b24014-5af4-47c8-aa82-46826d540c62",
              "parent_uuid": "347aa12c-accb-4edc-8c91-5ff8b56fcedc",
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
              "uuid": "9b12103b-0357-4f0f-b362-eece8c33020f",
              "parent_uuid": "347aa12c-accb-4edc-8c91-5ff8b56fcedc",
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
              "uuid": "0c05ae67-5d38-4963-a821-caf17eb71dcf",
              "parent_uuid": "347aa12c-accb-4edc-8c91-5ff8b56fcedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e8bc40f-f49a-4c8a-802b-fa74f7572379",
                  "parent_uuid": "0c05ae67-5d38-4963-a821-caf17eb71dcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5e54578-0890-4205-bcee-b0257d194991",
              "parent_uuid": "347aa12c-accb-4edc-8c91-5ff8b56fcedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b41e8a2-cc41-4304-957b-1ba642064952",
                  "parent_uuid": "a5e54578-0890-4205-bcee-b0257d194991",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb93da67-4f57-4830-b410-b68b42d91551",
              "parent_uuid": "347aa12c-accb-4edc-8c91-5ff8b56fcedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44cc8bc6-97ad-4336-a1be-acdfd8f1a3be",
                  "parent_uuid": "bb93da67-4f57-4830-b410-b68b42d91551",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f1e9fb4-d2f9-4a52-8cdc-3292a93d659d",
              "parent_uuid": "347aa12c-accb-4edc-8c91-5ff8b56fcedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "559e6d9a-4742-4952-a196-2a9eae0fc025",
                  "parent_uuid": "3f1e9fb4-d2f9-4a52-8cdc-3292a93d659d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8c3934e4-638c-4720-8e2e-f61c6b807045",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2744d397-effe-47b5-b261-2e9255a679ec",
              "parent_uuid": "8c3934e4-638c-4720-8e2e-f61c6b807045",
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
              "uuid": "12dec073-8bf1-472d-b467-704f44eda5b1",
              "parent_uuid": "8c3934e4-638c-4720-8e2e-f61c6b807045",
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
              "uuid": "713d3a3f-9fd5-4400-a6fe-47623c806d75",
              "parent_uuid": "8c3934e4-638c-4720-8e2e-f61c6b807045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20c51382-9cdb-4feb-82a8-fbbbf5f15ed2",
                  "parent_uuid": "713d3a3f-9fd5-4400-a6fe-47623c806d75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ec9b324-af26-4aa3-9ff2-83255244facd",
              "parent_uuid": "8c3934e4-638c-4720-8e2e-f61c6b807045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cabe8c14-7eca-410f-8ddb-1ff2ba6504d2",
                  "parent_uuid": "4ec9b324-af26-4aa3-9ff2-83255244facd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbc52aaf-08cb-40dd-baa9-79c2cd25c968",
              "parent_uuid": "8c3934e4-638c-4720-8e2e-f61c6b807045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d56da293-f657-4c6b-ad26-92a985348f82",
                  "parent_uuid": "fbc52aaf-08cb-40dd-baa9-79c2cd25c968",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6dc42d5-cb7f-40f3-9896-3ccbf72ed4ca",
              "parent_uuid": "8c3934e4-638c-4720-8e2e-f61c6b807045",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e8ab149-e8c3-4ddd-b77d-14d154b2d972",
                  "parent_uuid": "e6dc42d5-cb7f-40f3-9896-3ccbf72ed4ca",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23488c0b-38a8-4bc2-b44b-077246ff3661",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aed2d0a6-6081-49aa-94e2-0f55aeddd683",
              "parent_uuid": "23488c0b-38a8-4bc2-b44b-077246ff3661",
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
          "uuid": "02796ee2-893d-490a-a853-3fe6acc8a452",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "801a15aa-a024-47f4-802f-94e90f359870",
              "parent_uuid": "02796ee2-893d-490a-a853-3fe6acc8a452",
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
          "uuid": "d991affc-fcde-4c11-848b-1f27d85fb39e",
          "parent_uuid": "a9b6d97d-9590-42d3-be8c-74a188963489",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b1836a8-7624-4ead-884e-95357a76b005",
              "parent_uuid": "d991affc-fcde-4c11-848b-1f27d85fb39e",
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
                  "uuid": "e08b76cc-4cc6-4215-b804-82d3747fc97f",
                  "parent_uuid": "3b1836a8-7624-4ead-884e-95357a76b005",
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

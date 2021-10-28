
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
  "uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "e6630754-9504-41c9-8c15-10678aa0705e",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "ac82e2f5-29c1-4810-baec-f506bf181edd",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "f1aacdbd-86f0-4cf0-97c6-a5ea67b8e0e3",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "165451ef-59c0-485a-8c3c-b79e8593ef59",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "4c2ae1d8-f8e4-4082-8f8b-bbb6b02d27ba",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "09ec7e78-9a1e-47cb-a3ec-223ef9f36139",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "6939df3e-a27e-4d34-b67b-7c166be53014",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
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
      "uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
      "parent_uuid": "25b76555-6c0a-4822-bdb4-14f2c470789a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "325fdf0b-5f97-4676-af59-1a53dcc1d318",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "50e14f39-ce88-4a8d-9586-0da953857dc2",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "412539af-c61b-4b8a-8dae-097f471039e5",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "d8a6b7ed-fa84-4fb3-a344-c4e8ad1ec09f",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "3b13f159-a905-4e5d-928f-c814815f33a0",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "81c4641f-c4e4-44af-bc3f-c9e1f56a2141",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "20f422ea-9b9b-4c51-845a-d49746543f65",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "3998d968-6cb4-4582-9d60-d7720fcac241",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "03cadf21-9234-4f08-86f4-d21ef91241d9",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "cc28f656-dae2-4b5f-9dfa-5285a9706cf8",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
              "uuid": "c47e1d90-cffa-48ca-81ab-bbc6fd021328",
              "parent_uuid": "e9e795d3-39e6-4a88-ab3f-3062ff5411a2",
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
          "uuid": "12282f62-e350-4d56-a644-317584b3fa91",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "937b667c-da87-4aac-afa3-4c45c0cd155a",
              "parent_uuid": "12282f62-e350-4d56-a644-317584b3fa91",
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
              "uuid": "fd0a588b-b0d2-4b0d-a412-aa732dce1c81",
              "parent_uuid": "12282f62-e350-4d56-a644-317584b3fa91",
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
              "uuid": "96dc1f1b-3453-4615-8de4-367dd1c7e50d",
              "parent_uuid": "12282f62-e350-4d56-a644-317584b3fa91",
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
              "uuid": "547a28eb-eca5-47d5-ac27-290c03df540a",
              "parent_uuid": "12282f62-e350-4d56-a644-317584b3fa91",
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
          "uuid": "0e985b01-7ca0-4e35-8c24-18cc5e5b4e5e",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7cbddd9e-7010-44dc-a379-b36ad634e357",
              "parent_uuid": "0e985b01-7ca0-4e35-8c24-18cc5e5b4e5e",
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
              "uuid": "8d457af8-8fd7-4c54-abdf-365e0eb032ed",
              "parent_uuid": "0e985b01-7ca0-4e35-8c24-18cc5e5b4e5e",
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
              "uuid": "375b3a5f-7e0a-4f74-a407-d3b22400442d",
              "parent_uuid": "0e985b01-7ca0-4e35-8c24-18cc5e5b4e5e",
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
              "uuid": "908a93bb-5900-4870-8d8e-3c4d72661453",
              "parent_uuid": "0e985b01-7ca0-4e35-8c24-18cc5e5b4e5e",
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
              "uuid": "61d585d6-282a-494e-8481-8a5a809242c0",
              "parent_uuid": "0e985b01-7ca0-4e35-8c24-18cc5e5b4e5e",
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
              "uuid": "51e337d3-e676-40c7-9274-ac439c30871e",
              "parent_uuid": "0e985b01-7ca0-4e35-8c24-18cc5e5b4e5e",
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
          "uuid": "78dc3d0a-46c4-48e6-ba54-149310933797",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f3ea141c-3d4a-4d7a-b4c3-a22ab1c7d051",
              "parent_uuid": "78dc3d0a-46c4-48e6-ba54-149310933797",
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
          "uuid": "1e910dc5-fb38-4c21-9443-46d8eaa0dcd3",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3eecf737-e94d-4fdf-87dd-2ae6aa862c5b",
              "parent_uuid": "1e910dc5-fb38-4c21-9443-46d8eaa0dcd3",
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
              "uuid": "7b740e94-477c-45fe-ac0a-6a142b24ddfa",
              "parent_uuid": "1e910dc5-fb38-4c21-9443-46d8eaa0dcd3",
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
              "uuid": "933c51c4-4544-4232-8714-774e0ac160c3",
              "parent_uuid": "1e910dc5-fb38-4c21-9443-46d8eaa0dcd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd63f38f-e4f8-4f86-9ba6-3a90c7855a65",
                  "parent_uuid": "933c51c4-4544-4232-8714-774e0ac160c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a76a912a-d4f7-478a-998f-885e867c4152",
              "parent_uuid": "1e910dc5-fb38-4c21-9443-46d8eaa0dcd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3dbc4fe-b98e-4eb3-bd6b-b7601584c7c5",
                  "parent_uuid": "a76a912a-d4f7-478a-998f-885e867c4152",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df493f88-af54-4fac-a235-f9ae51b6bd80",
              "parent_uuid": "1e910dc5-fb38-4c21-9443-46d8eaa0dcd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e272238b-16a2-495c-8964-05d6f59759c7",
                  "parent_uuid": "df493f88-af54-4fac-a235-f9ae51b6bd80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64ab7e6e-ade1-4281-a100-10b082b231fe",
              "parent_uuid": "1e910dc5-fb38-4c21-9443-46d8eaa0dcd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87d521a2-7d3c-4084-8f2b-f1e7af180429",
                  "parent_uuid": "64ab7e6e-ade1-4281-a100-10b082b231fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c0729685-5f07-457f-a0ce-165171f60e3a",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e64f3d99-b5f7-4e36-a620-665ffa901720",
              "parent_uuid": "c0729685-5f07-457f-a0ce-165171f60e3a",
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
              "uuid": "2067bbf7-e395-4780-b29e-c7dc628ba7d6",
              "parent_uuid": "c0729685-5f07-457f-a0ce-165171f60e3a",
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
              "uuid": "071e3dac-4061-4ac8-a0ba-2d1bf1c5c93b",
              "parent_uuid": "c0729685-5f07-457f-a0ce-165171f60e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4577e934-ca3e-45b0-893c-e28efd149a5c",
                  "parent_uuid": "071e3dac-4061-4ac8-a0ba-2d1bf1c5c93b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a89e8d7-a921-4c61-8434-92b72caa71d1",
              "parent_uuid": "c0729685-5f07-457f-a0ce-165171f60e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e23a97a3-5215-45b5-9c34-89b1aeb2f197",
                  "parent_uuid": "1a89e8d7-a921-4c61-8434-92b72caa71d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68617ea8-69ae-433f-a690-f9ea57a5c939",
              "parent_uuid": "c0729685-5f07-457f-a0ce-165171f60e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f451b296-1521-4187-9507-cd248543e96f",
                  "parent_uuid": "68617ea8-69ae-433f-a690-f9ea57a5c939",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6072e858-2237-43b0-91fb-1b0ff29b87be",
              "parent_uuid": "c0729685-5f07-457f-a0ce-165171f60e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e18c106-13f3-4dac-a2f3-0e94fcc65bef",
                  "parent_uuid": "6072e858-2237-43b0-91fb-1b0ff29b87be",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "87fc0f36-5f10-4ace-8e16-f6ec5dddd551",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04798b91-7d59-4bb1-b587-8340a9325d92",
              "parent_uuid": "87fc0f36-5f10-4ace-8e16-f6ec5dddd551",
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
              "uuid": "b579f144-998b-4a34-85d9-892c7cc96538",
              "parent_uuid": "87fc0f36-5f10-4ace-8e16-f6ec5dddd551",
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
              "uuid": "60b587f8-385c-4956-968e-c83779be0208",
              "parent_uuid": "87fc0f36-5f10-4ace-8e16-f6ec5dddd551",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f274c69e-534b-4b4d-aa41-405896448958",
                  "parent_uuid": "60b587f8-385c-4956-968e-c83779be0208",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a0da5ab-07fb-4c8d-8c32-e7c6a62ba435",
              "parent_uuid": "87fc0f36-5f10-4ace-8e16-f6ec5dddd551",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17e752d0-1fb2-4996-80e0-4cc3f8299d6d",
                  "parent_uuid": "5a0da5ab-07fb-4c8d-8c32-e7c6a62ba435",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "854d666a-d67f-4be7-84af-11b11ba39f65",
              "parent_uuid": "87fc0f36-5f10-4ace-8e16-f6ec5dddd551",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a17bc21-9ced-42a3-a512-891cb9c5cea4",
                  "parent_uuid": "854d666a-d67f-4be7-84af-11b11ba39f65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8443b7d8-1389-408f-81cf-af362f3b39a6",
              "parent_uuid": "87fc0f36-5f10-4ace-8e16-f6ec5dddd551",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85772ba1-dce5-4a86-b548-ca5c3dc9ec8d",
                  "parent_uuid": "8443b7d8-1389-408f-81cf-af362f3b39a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37485341-db46-43a8-88ea-03e6d714e7b5",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "671ce32c-fde8-4bc9-aef1-6df0b19ced03",
              "parent_uuid": "37485341-db46-43a8-88ea-03e6d714e7b5",
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
              "uuid": "4f125341-69b0-4d4d-aea0-d521794a7e60",
              "parent_uuid": "37485341-db46-43a8-88ea-03e6d714e7b5",
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
              "uuid": "0a3cfa24-3d3a-4487-a117-079cba7f185a",
              "parent_uuid": "37485341-db46-43a8-88ea-03e6d714e7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0771e502-e56d-4883-a6c7-773915ef5963",
                  "parent_uuid": "0a3cfa24-3d3a-4487-a117-079cba7f185a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3fb7062-0fda-4b61-949c-74a98ae7938a",
              "parent_uuid": "37485341-db46-43a8-88ea-03e6d714e7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0041f57-2a68-4d5f-9063-338adcfbaa2e",
                  "parent_uuid": "b3fb7062-0fda-4b61-949c-74a98ae7938a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5576945c-738f-4500-81fd-5de8ebce561a",
              "parent_uuid": "37485341-db46-43a8-88ea-03e6d714e7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80b1d152-ee6e-42a3-a09f-86c3cd442783",
                  "parent_uuid": "5576945c-738f-4500-81fd-5de8ebce561a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51553af3-1edf-47db-b769-c7161a32ad54",
              "parent_uuid": "37485341-db46-43a8-88ea-03e6d714e7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe6efb92-4800-46ec-81df-548555648313",
                  "parent_uuid": "51553af3-1edf-47db-b769-c7161a32ad54",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3a1c1c6e-29f9-41a6-906f-e563b17a16f4",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01129f67-ba7e-481a-b3f1-9d596001b396",
              "parent_uuid": "3a1c1c6e-29f9-41a6-906f-e563b17a16f4",
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
              "uuid": "bc2b0db4-2bba-49b5-8fbd-e7fa070cb339",
              "parent_uuid": "3a1c1c6e-29f9-41a6-906f-e563b17a16f4",
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
              "uuid": "13026106-ae84-405f-bb42-14783d80c318",
              "parent_uuid": "3a1c1c6e-29f9-41a6-906f-e563b17a16f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6ec2bf2-e745-4d83-988f-b362ecbddfc8",
                  "parent_uuid": "13026106-ae84-405f-bb42-14783d80c318",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b65ecf12-93ba-4b05-ac8f-4e6d806dfc35",
              "parent_uuid": "3a1c1c6e-29f9-41a6-906f-e563b17a16f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ac6ebf3-dc14-4aaf-a6c6-f472d8a798ea",
                  "parent_uuid": "b65ecf12-93ba-4b05-ac8f-4e6d806dfc35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92433a97-cb3a-4378-970c-3ac40c41bfbd",
              "parent_uuid": "3a1c1c6e-29f9-41a6-906f-e563b17a16f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae72a256-5356-4964-8049-3f38c0d59336",
                  "parent_uuid": "92433a97-cb3a-4378-970c-3ac40c41bfbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57fa3777-6ca2-41ff-8cc9-5b08c30fec9f",
              "parent_uuid": "3a1c1c6e-29f9-41a6-906f-e563b17a16f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "605eabac-854f-4ce7-b15d-4a8cf611f82a",
                  "parent_uuid": "57fa3777-6ca2-41ff-8cc9-5b08c30fec9f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "69df0e9d-8598-4602-aeb4-20f235aabb6c",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d0f2b3d-526c-4048-bd32-9005c516b0bc",
              "parent_uuid": "69df0e9d-8598-4602-aeb4-20f235aabb6c",
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
              "uuid": "6be8ca66-ab8d-477e-95b5-d2bcd43be275",
              "parent_uuid": "69df0e9d-8598-4602-aeb4-20f235aabb6c",
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
              "uuid": "1bf6b507-3b25-4988-854f-9573d099c60b",
              "parent_uuid": "69df0e9d-8598-4602-aeb4-20f235aabb6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4024cb32-2b51-4f48-9834-95de348a8098",
                  "parent_uuid": "1bf6b507-3b25-4988-854f-9573d099c60b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2484b240-404d-4357-8a1b-31599e734457",
              "parent_uuid": "69df0e9d-8598-4602-aeb4-20f235aabb6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13673b3d-d6a3-47b2-9257-1bda1addd482",
                  "parent_uuid": "2484b240-404d-4357-8a1b-31599e734457",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d633f25d-2818-4479-86dc-5a88281bc800",
              "parent_uuid": "69df0e9d-8598-4602-aeb4-20f235aabb6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4b2c326-ac48-4b5d-aede-806210d0e4a5",
                  "parent_uuid": "d633f25d-2818-4479-86dc-5a88281bc800",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69d3e9c8-6f78-4fca-93c4-f0b0c881ab18",
              "parent_uuid": "69df0e9d-8598-4602-aeb4-20f235aabb6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c83d32b-3af4-4407-a2a1-fddf6bd7954a",
                  "parent_uuid": "69d3e9c8-6f78-4fca-93c4-f0b0c881ab18",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ebd1842d-4bec-4eaa-ad08-340008781ccd",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4d6e85d-9815-4f24-a2f2-4943acc5ebed",
              "parent_uuid": "ebd1842d-4bec-4eaa-ad08-340008781ccd",
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
              "uuid": "861555be-e296-4fd4-99d2-07df2c46c9ae",
              "parent_uuid": "ebd1842d-4bec-4eaa-ad08-340008781ccd",
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
              "uuid": "a304203e-7b8c-4b9e-a1a3-31920073e3a6",
              "parent_uuid": "ebd1842d-4bec-4eaa-ad08-340008781ccd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f046138-9374-47c1-8d51-6097fadd5fb2",
                  "parent_uuid": "a304203e-7b8c-4b9e-a1a3-31920073e3a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6873552c-62d4-452a-a1f7-2a0d429b0097",
              "parent_uuid": "ebd1842d-4bec-4eaa-ad08-340008781ccd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "017498f3-a799-4f2a-9cac-7bad7d668e1d",
                  "parent_uuid": "6873552c-62d4-452a-a1f7-2a0d429b0097",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bea3094b-5d04-4df3-a247-fa199cf557ee",
              "parent_uuid": "ebd1842d-4bec-4eaa-ad08-340008781ccd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3e6bfac-d85d-4a99-ab2d-478362fbe4fa",
                  "parent_uuid": "bea3094b-5d04-4df3-a247-fa199cf557ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85c729c9-c739-4efc-8663-d5a6bca69868",
              "parent_uuid": "ebd1842d-4bec-4eaa-ad08-340008781ccd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15c6da19-0cf8-4609-9640-c511c9358c97",
                  "parent_uuid": "85c729c9-c739-4efc-8663-d5a6bca69868",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "03e1b298-c805-4582-b8f4-e058b9f9bbb9",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "201eb32f-1ec4-48bd-9a7e-e10e77b819fc",
              "parent_uuid": "03e1b298-c805-4582-b8f4-e058b9f9bbb9",
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
              "uuid": "754b0f31-2909-4005-a55c-8c974a5e6c80",
              "parent_uuid": "03e1b298-c805-4582-b8f4-e058b9f9bbb9",
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
              "uuid": "4f1c50d4-e869-44b6-b009-09c0aee6e2fe",
              "parent_uuid": "03e1b298-c805-4582-b8f4-e058b9f9bbb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aaec9859-38a1-4144-8a1b-7d6101839963",
                  "parent_uuid": "4f1c50d4-e869-44b6-b009-09c0aee6e2fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cd2352c-669c-4e8e-bcf0-c19eb5babd37",
              "parent_uuid": "03e1b298-c805-4582-b8f4-e058b9f9bbb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0d61b24-28ec-4d06-9319-8ed6d8e5865e",
                  "parent_uuid": "3cd2352c-669c-4e8e-bcf0-c19eb5babd37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93bfa15f-7500-416e-84db-24564959d008",
              "parent_uuid": "03e1b298-c805-4582-b8f4-e058b9f9bbb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e07bc4fd-af7a-4727-9184-f88deed2779e",
                  "parent_uuid": "93bfa15f-7500-416e-84db-24564959d008",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e16c3e2-a324-4357-a66b-57a10e4e21ba",
              "parent_uuid": "03e1b298-c805-4582-b8f4-e058b9f9bbb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "134baea2-34a9-4d3b-be2c-30daecf64419",
                  "parent_uuid": "8e16c3e2-a324-4357-a66b-57a10e4e21ba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db8b4012-b58b-45db-9987-81610793ced9",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4b61dc5d-40b9-4af3-b9c5-5d314fcdea66",
              "parent_uuid": "db8b4012-b58b-45db-9987-81610793ced9",
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
          "uuid": "ee2f1e1b-c518-47d5-980b-e2bf58dea89e",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12a2e582-c630-4595-8fc6-8c0831091c76",
              "parent_uuid": "ee2f1e1b-c518-47d5-980b-e2bf58dea89e",
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
              "uuid": "fe757787-1e3d-402a-8647-2fbec7a525dc",
              "parent_uuid": "ee2f1e1b-c518-47d5-980b-e2bf58dea89e",
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
              "uuid": "4c11ea5e-e8d9-43f0-a789-4cc5a4ca5c53",
              "parent_uuid": "ee2f1e1b-c518-47d5-980b-e2bf58dea89e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "027228fd-bdf3-465f-b324-ac727c8f81d9",
                  "parent_uuid": "4c11ea5e-e8d9-43f0-a789-4cc5a4ca5c53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fbce69c-6938-4f9c-9f21-9732bde85476",
              "parent_uuid": "ee2f1e1b-c518-47d5-980b-e2bf58dea89e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36ee0ab9-57c8-47fa-b101-ef3ceaaff116",
                  "parent_uuid": "0fbce69c-6938-4f9c-9f21-9732bde85476",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da705352-2fca-48b2-abec-dd71d1db054c",
              "parent_uuid": "ee2f1e1b-c518-47d5-980b-e2bf58dea89e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41b9b91c-3639-4ee3-905a-b343bf676c1e",
                  "parent_uuid": "da705352-2fca-48b2-abec-dd71d1db054c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "795132d0-a03d-44de-8a30-b36835df5e0d",
              "parent_uuid": "ee2f1e1b-c518-47d5-980b-e2bf58dea89e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97fe2d7b-d655-4f28-9310-665191b53293",
                  "parent_uuid": "795132d0-a03d-44de-8a30-b36835df5e0d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a8c4f215-646a-4054-a717-68f377e795e3",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcad1c68-83ba-4319-b593-3c79af468a36",
              "parent_uuid": "a8c4f215-646a-4054-a717-68f377e795e3",
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
          "uuid": "6d1d02f0-cf50-428c-82be-4bd380e7525a",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0bdbb050-d7bd-4f8e-b128-197216e96fe7",
              "parent_uuid": "6d1d02f0-cf50-428c-82be-4bd380e7525a",
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
          "uuid": "89b4817d-b61c-4d4b-aaed-1054c62b95b9",
          "parent_uuid": "1ab2ed00-a015-4e63-88e1-7d8a0f97bce7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c33a4af0-dc86-4f38-ae20-b10b02d2147f",
              "parent_uuid": "89b4817d-b61c-4d4b-aaed-1054c62b95b9",
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
                  "uuid": "39553a5a-33ae-424b-8151-a063ce19d962",
                  "parent_uuid": "c33a4af0-dc86-4f38-ae20-b10b02d2147f",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 


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
  "uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "afc51a81-1617-458b-895d-1e752f9b5584",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "832c9586-9d75-45a3-8b79-f40c7dadabe5",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "19258dec-e505-42e6-be9f-83672ba3f771",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "a17692a0-2337-4357-b9e6-7c7d478887be",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "54d35a57-f962-4c3e-85bb-7bf5c56a4cf3",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "b2c860e8-96e4-4b10-8187-173687c54251",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "939d95e5-fd8c-4fdc-9a8d-5b2ddee01bd9",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
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
      "uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
      "parent_uuid": "d35a8359-d660-4ace-995e-c9521ecfa74d",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "e80090b0-3021-4f8a-8db9-18d253999c92",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "147cc52f-da33-4d86-acd8-0fcd76a25ff6",
              "parent_uuid": "e80090b0-3021-4f8a-8db9-18d253999c92",
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
              "uuid": "7c340736-ac11-4953-a12f-159a27406380",
              "parent_uuid": "e80090b0-3021-4f8a-8db9-18d253999c92",
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
              "uuid": "b2c4ea84-1a9d-45cc-ada5-983a4432836e",
              "parent_uuid": "e80090b0-3021-4f8a-8db9-18d253999c92",
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
              "uuid": "707c79cb-cc58-44d3-a017-996c099aa692",
              "parent_uuid": "e80090b0-3021-4f8a-8db9-18d253999c92",
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
          "uuid": "50697c1a-3813-4cb4-b9c3-07771ba97114",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f651cb8e-a3aa-47cf-b4f2-2ad5866c26b7",
              "parent_uuid": "50697c1a-3813-4cb4-b9c3-07771ba97114",
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
              "uuid": "d764dd05-5280-4cfc-8ece-1bcc00a7d6de",
              "parent_uuid": "50697c1a-3813-4cb4-b9c3-07771ba97114",
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
              "uuid": "aa074cc9-f668-43fd-b585-b453a1c4310a",
              "parent_uuid": "50697c1a-3813-4cb4-b9c3-07771ba97114",
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
              "uuid": "32beaad3-5e5a-459e-9cbf-4c15062218ba",
              "parent_uuid": "50697c1a-3813-4cb4-b9c3-07771ba97114",
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
          "uuid": "70a576a1-087d-4573-9770-f7e689959724",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3e936a6-6e35-40ba-a95d-0be8200d3ec5",
              "parent_uuid": "70a576a1-087d-4573-9770-f7e689959724",
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
              "uuid": "bbfce4d0-8221-4c31-9dd7-4aa13c2fba05",
              "parent_uuid": "70a576a1-087d-4573-9770-f7e689959724",
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
              "uuid": "0234055a-990e-4a5e-aaf7-75a061b6ecf6",
              "parent_uuid": "70a576a1-087d-4573-9770-f7e689959724",
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
              "uuid": "21469a55-4b04-446c-84f5-83f49589585b",
              "parent_uuid": "70a576a1-087d-4573-9770-f7e689959724",
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
              "uuid": "8bffbabc-5186-440e-b3d6-8c86952eef06",
              "parent_uuid": "70a576a1-087d-4573-9770-f7e689959724",
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
              "uuid": "5ba7d29f-77cb-4924-b1e1-b5a5e534b956",
              "parent_uuid": "70a576a1-087d-4573-9770-f7e689959724",
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
          "uuid": "fd640ec4-06ca-4081-bd9d-b0b26d9e8653",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e5739c19-fedd-43c5-a1d8-7ce62052a162",
              "parent_uuid": "fd640ec4-06ca-4081-bd9d-b0b26d9e8653",
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
          "uuid": "6543e37a-c69e-4595-80fb-cb89cddba3fd",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27a6b238-32e4-4ccb-9e3c-5834a68797d9",
              "parent_uuid": "6543e37a-c69e-4595-80fb-cb89cddba3fd",
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
              "uuid": "310f4809-0b19-4402-9562-156480fd2ffa",
              "parent_uuid": "6543e37a-c69e-4595-80fb-cb89cddba3fd",
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
              "uuid": "f0732e9c-bb3b-4b1f-ac2f-a758596a4645",
              "parent_uuid": "6543e37a-c69e-4595-80fb-cb89cddba3fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "989bba70-4dff-4428-96aa-155723f2e12a",
                  "parent_uuid": "f0732e9c-bb3b-4b1f-ac2f-a758596a4645",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69d7acad-1b40-4783-82bb-06a5cc44fb6a",
              "parent_uuid": "6543e37a-c69e-4595-80fb-cb89cddba3fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74d7090f-3e9b-4f6b-86d9-9833840976c6",
                  "parent_uuid": "69d7acad-1b40-4783-82bb-06a5cc44fb6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95695fc0-d6d5-4e28-bced-c529779c7dca",
              "parent_uuid": "6543e37a-c69e-4595-80fb-cb89cddba3fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4f96b46-dde2-4bb8-ada2-25829ea54ee8",
                  "parent_uuid": "95695fc0-d6d5-4e28-bced-c529779c7dca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2feb703-d4db-485c-849e-f7dd0f327b84",
              "parent_uuid": "6543e37a-c69e-4595-80fb-cb89cddba3fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5bad20d-5fed-4bf8-a6ee-8190d0b007a2",
                  "parent_uuid": "e2feb703-d4db-485c-849e-f7dd0f327b84",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "03d7ec78-4136-41c6-917a-1fcf0c80ada7",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12fccbb4-c7f9-4f60-8e44-f2b2d8cacad6",
              "parent_uuid": "03d7ec78-4136-41c6-917a-1fcf0c80ada7",
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
              "uuid": "8e82e1f4-81d4-4f68-bbbd-e84f50278831",
              "parent_uuid": "03d7ec78-4136-41c6-917a-1fcf0c80ada7",
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
              "uuid": "935027a8-dfe1-49eb-919a-936873f8e4ea",
              "parent_uuid": "03d7ec78-4136-41c6-917a-1fcf0c80ada7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00bfbd95-ce0c-4977-a4ad-523fe319fef4",
                  "parent_uuid": "935027a8-dfe1-49eb-919a-936873f8e4ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "808aae26-9555-4855-850f-297ec2c975c8",
              "parent_uuid": "03d7ec78-4136-41c6-917a-1fcf0c80ada7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91306698-5411-4a93-be5d-738021f43a07",
                  "parent_uuid": "808aae26-9555-4855-850f-297ec2c975c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e2be722-491b-4aab-ad7f-d68da53847ac",
              "parent_uuid": "03d7ec78-4136-41c6-917a-1fcf0c80ada7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5fac361-5a74-41e8-8aa3-ea62e2e583c1",
                  "parent_uuid": "2e2be722-491b-4aab-ad7f-d68da53847ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2b8569a-d868-4e2f-b236-eb66c0f058bb",
              "parent_uuid": "03d7ec78-4136-41c6-917a-1fcf0c80ada7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b8ee285-226c-45e5-80e8-6f1f3e8e75c1",
                  "parent_uuid": "e2b8569a-d868-4e2f-b236-eb66c0f058bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f149c5a-74c3-44c9-9487-5467c8c54f12",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95470c3d-b9fd-4030-bd78-7fcadb392b99",
              "parent_uuid": "0f149c5a-74c3-44c9-9487-5467c8c54f12",
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
              "uuid": "d1957b6f-36f4-423d-bea9-1d2186cacc25",
              "parent_uuid": "0f149c5a-74c3-44c9-9487-5467c8c54f12",
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
              "uuid": "a5f0c35b-f641-4093-81ee-e691f9ae32dd",
              "parent_uuid": "0f149c5a-74c3-44c9-9487-5467c8c54f12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7802148-1ac4-4128-83cc-e2ba62119ca7",
                  "parent_uuid": "a5f0c35b-f641-4093-81ee-e691f9ae32dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af956085-a278-4fbc-9c3f-266255364a7d",
              "parent_uuid": "0f149c5a-74c3-44c9-9487-5467c8c54f12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a936d78-6414-4d6f-b12b-9a7520f43b1b",
                  "parent_uuid": "af956085-a278-4fbc-9c3f-266255364a7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30a9d89b-1776-42bb-8d8a-2a4d7bd0b22e",
              "parent_uuid": "0f149c5a-74c3-44c9-9487-5467c8c54f12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a6fe1a4-d78d-4b86-8c9e-d7ad9aefcaf8",
                  "parent_uuid": "30a9d89b-1776-42bb-8d8a-2a4d7bd0b22e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d298e57-5a43-4014-b926-2113a181a7df",
              "parent_uuid": "0f149c5a-74c3-44c9-9487-5467c8c54f12",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91d81154-85e3-499f-9c12-9317655be3b6",
                  "parent_uuid": "5d298e57-5a43-4014-b926-2113a181a7df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e9ecd307-4db1-4682-8634-b8c4b749cb23",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcd19acf-1800-43ae-ae33-f31e23b8ed84",
              "parent_uuid": "e9ecd307-4db1-4682-8634-b8c4b749cb23",
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
              "uuid": "42fbc383-1d63-46b6-9a9c-26fdf345ed47",
              "parent_uuid": "e9ecd307-4db1-4682-8634-b8c4b749cb23",
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
              "uuid": "3db3b433-1ef2-4d2c-8111-032e07240244",
              "parent_uuid": "e9ecd307-4db1-4682-8634-b8c4b749cb23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0383aed-699b-419b-9af1-72485d437d63",
                  "parent_uuid": "3db3b433-1ef2-4d2c-8111-032e07240244",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19abc15c-5d8e-4eee-801f-2e57e949241a",
              "parent_uuid": "e9ecd307-4db1-4682-8634-b8c4b749cb23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c30609f8-5ee7-4ccf-b428-93ee34bcdf3f",
                  "parent_uuid": "19abc15c-5d8e-4eee-801f-2e57e949241a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e23a301c-589c-43cb-9dd8-1ed0df0371a8",
              "parent_uuid": "e9ecd307-4db1-4682-8634-b8c4b749cb23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f33b5a6-1785-44a8-bc45-1b29c4c651b7",
                  "parent_uuid": "e23a301c-589c-43cb-9dd8-1ed0df0371a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f22a5b3-674a-4674-9136-4d0cfa95f9fa",
              "parent_uuid": "e9ecd307-4db1-4682-8634-b8c4b749cb23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4eb46ec8-9f90-4c40-9d6b-215a2a5b1722",
                  "parent_uuid": "8f22a5b3-674a-4674-9136-4d0cfa95f9fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38db0755-68c8-414c-b8f0-15ba79ee0e89",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "57f55f7a-3674-4672-a550-0efb9e4bdb12",
              "parent_uuid": "38db0755-68c8-414c-b8f0-15ba79ee0e89",
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
          "uuid": "eb22f584-8482-4d6d-ae8f-061cd4f1d14d",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47ea7967-a4d8-4c2b-97f0-05e65066e402",
              "parent_uuid": "eb22f584-8482-4d6d-ae8f-061cd4f1d14d",
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
              "uuid": "77e20355-51b5-4568-b18d-fa4f81e1d1d1",
              "parent_uuid": "eb22f584-8482-4d6d-ae8f-061cd4f1d14d",
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
              "uuid": "009b4ba0-6c2e-4cd1-a9d2-b1d848ce655f",
              "parent_uuid": "eb22f584-8482-4d6d-ae8f-061cd4f1d14d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bd3e6cd-77d4-440e-b7b0-c47d2029ae5c",
                  "parent_uuid": "009b4ba0-6c2e-4cd1-a9d2-b1d848ce655f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94ec4bd6-0804-4aae-a1ac-73f94b46f22b",
              "parent_uuid": "eb22f584-8482-4d6d-ae8f-061cd4f1d14d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93d6f14a-41f9-4af0-b78f-cbfa889e1c86",
                  "parent_uuid": "94ec4bd6-0804-4aae-a1ac-73f94b46f22b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b442cd6-5a45-48f6-ba78-1d3cf2fd1f1c",
              "parent_uuid": "eb22f584-8482-4d6d-ae8f-061cd4f1d14d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4d3db61-5b7f-4ec8-90b9-7f4ddc523f7a",
                  "parent_uuid": "3b442cd6-5a45-48f6-ba78-1d3cf2fd1f1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bc73e56-6510-40da-8c30-9c5cccbaa4ac",
              "parent_uuid": "eb22f584-8482-4d6d-ae8f-061cd4f1d14d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "036a6056-647b-4c09-a887-3cd84cb03def",
                  "parent_uuid": "0bc73e56-6510-40da-8c30-9c5cccbaa4ac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9acf609d-e2d1-422a-a875-065fc6f362fc",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "44a25e39-770f-41d9-8856-793cf21cbf60",
              "parent_uuid": "9acf609d-e2d1-422a-a875-065fc6f362fc",
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
              "uuid": "16fc2de6-d3fd-47f9-acd0-ef296f5a471c",
              "parent_uuid": "9acf609d-e2d1-422a-a875-065fc6f362fc",
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
              "uuid": "988aa2b5-480a-41f5-b203-f957756f8bac",
              "parent_uuid": "9acf609d-e2d1-422a-a875-065fc6f362fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "063c5a59-ea45-4ae4-bd90-b136b6fb5448",
                  "parent_uuid": "988aa2b5-480a-41f5-b203-f957756f8bac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbfa66d7-f676-4499-a218-bdfdd27f39b1",
              "parent_uuid": "9acf609d-e2d1-422a-a875-065fc6f362fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e4d5e9f-dd48-498d-8cfe-a31a0db8f4bd",
                  "parent_uuid": "fbfa66d7-f676-4499-a218-bdfdd27f39b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2251ee5c-9a6e-4941-938c-e7c81c19aedf",
              "parent_uuid": "9acf609d-e2d1-422a-a875-065fc6f362fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e084f7d-1936-48e6-91c8-59f195a4ca1e",
                  "parent_uuid": "2251ee5c-9a6e-4941-938c-e7c81c19aedf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6579291a-a9bf-41d2-a9d0-c41b8120f59b",
              "parent_uuid": "9acf609d-e2d1-422a-a875-065fc6f362fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4211d291-5bfc-4f24-9c5c-9008b60c1723",
                  "parent_uuid": "6579291a-a9bf-41d2-a9d0-c41b8120f59b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f48c68b4-c046-4c75-9c18-3a7832b2e871",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d9878fe-25da-4c2a-bec5-1207ee958310",
              "parent_uuid": "f48c68b4-c046-4c75-9c18-3a7832b2e871",
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
              "uuid": "7ad5dbc2-2687-4d6f-aa19-2ca9e5525c8e",
              "parent_uuid": "f48c68b4-c046-4c75-9c18-3a7832b2e871",
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
              "uuid": "a73685b0-bbd7-4a4c-becf-c825179cfc5f",
              "parent_uuid": "f48c68b4-c046-4c75-9c18-3a7832b2e871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a94b55f-ed69-4b0e-a476-faab504f976d",
                  "parent_uuid": "a73685b0-bbd7-4a4c-becf-c825179cfc5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1763686c-165f-4c72-ba57-843226151ede",
              "parent_uuid": "f48c68b4-c046-4c75-9c18-3a7832b2e871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de1a4421-bc7f-44f6-8867-21b6526665c5",
                  "parent_uuid": "1763686c-165f-4c72-ba57-843226151ede",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9941a34-5de1-410f-9273-8c6ede815e6e",
              "parent_uuid": "f48c68b4-c046-4c75-9c18-3a7832b2e871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "924d4e1e-97be-4067-960c-ff8f49623e2b",
                  "parent_uuid": "d9941a34-5de1-410f-9273-8c6ede815e6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1387e8f5-86b2-4c58-84d8-2e43514cc7f7",
              "parent_uuid": "f48c68b4-c046-4c75-9c18-3a7832b2e871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4a5613a-ed71-4449-9680-6e52f96eef82",
                  "parent_uuid": "1387e8f5-86b2-4c58-84d8-2e43514cc7f7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e1aa04b-97e9-428f-abab-dd1e449b2d07",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8caf171b-8a2e-49f7-929f-d52ef888c7b7",
              "parent_uuid": "8e1aa04b-97e9-428f-abab-dd1e449b2d07",
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
              "uuid": "1bbb2f3a-38ba-484a-a8d8-8794d00f675b",
              "parent_uuid": "8e1aa04b-97e9-428f-abab-dd1e449b2d07",
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
              "uuid": "12d6ce65-3c32-4698-8ac3-c5acc57d3f2a",
              "parent_uuid": "8e1aa04b-97e9-428f-abab-dd1e449b2d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ca767b4-54d1-4a8a-a05b-6d0da9a59afa",
                  "parent_uuid": "12d6ce65-3c32-4698-8ac3-c5acc57d3f2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "658d7f55-3ff8-421c-96c9-683a8d1410ed",
              "parent_uuid": "8e1aa04b-97e9-428f-abab-dd1e449b2d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4725bcf-6d8b-4ec8-b8ee-0c0ba06076b8",
                  "parent_uuid": "658d7f55-3ff8-421c-96c9-683a8d1410ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f9027e2-5b17-4f7f-a3d4-b6809aa9d148",
              "parent_uuid": "8e1aa04b-97e9-428f-abab-dd1e449b2d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32df767e-5efa-44cf-85a4-37baff5c5414",
                  "parent_uuid": "6f9027e2-5b17-4f7f-a3d4-b6809aa9d148",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "097b5235-5d55-49c6-98a7-395b1a0ae343",
              "parent_uuid": "8e1aa04b-97e9-428f-abab-dd1e449b2d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3293ebb-d73a-4f04-8777-192abdc0c3c5",
                  "parent_uuid": "097b5235-5d55-49c6-98a7-395b1a0ae343",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18b6dea5-1741-452e-a96b-d31125037003",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5bc05e3-d9c4-4442-b2c0-e8298b5a986c",
              "parent_uuid": "18b6dea5-1741-452e-a96b-d31125037003",
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
              "uuid": "2f47dc21-a47e-493b-8855-58f1c980908d",
              "parent_uuid": "18b6dea5-1741-452e-a96b-d31125037003",
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
              "uuid": "d7a0776c-2093-4f5a-bfc5-9447c9366c4e",
              "parent_uuid": "18b6dea5-1741-452e-a96b-d31125037003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8388bac-6710-40e1-859a-6af50927bd22",
                  "parent_uuid": "d7a0776c-2093-4f5a-bfc5-9447c9366c4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa68c926-c5d8-4bdf-9b1e-826b02a57e52",
              "parent_uuid": "18b6dea5-1741-452e-a96b-d31125037003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb0d719a-4860-4f46-9fe2-f9dcf9f7c8d5",
                  "parent_uuid": "fa68c926-c5d8-4bdf-9b1e-826b02a57e52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7fdbd1ac-bd06-4c71-b958-b9c4bd5766fc",
              "parent_uuid": "18b6dea5-1741-452e-a96b-d31125037003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ed5cfb2-7f16-410b-9be2-571abb6d0235",
                  "parent_uuid": "7fdbd1ac-bd06-4c71-b958-b9c4bd5766fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa91d703-d9fc-4240-9e5d-6361c6f45496",
              "parent_uuid": "18b6dea5-1741-452e-a96b-d31125037003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9cdeeca-c677-4b01-bbf0-97730a23f7e6",
                  "parent_uuid": "aa91d703-d9fc-4240-9e5d-6361c6f45496",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31e7c742-3220-4bdd-844e-ad98fa97390a",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8dc2d927-ecb3-42d2-92a0-17006953e6f0",
              "parent_uuid": "31e7c742-3220-4bdd-844e-ad98fa97390a",
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
              "uuid": "659819e8-3d9e-4886-ae6d-d990b0b76419",
              "parent_uuid": "31e7c742-3220-4bdd-844e-ad98fa97390a",
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
              "uuid": "2d921afe-9f6c-4a23-9307-67fdda4a4752",
              "parent_uuid": "31e7c742-3220-4bdd-844e-ad98fa97390a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cfbb8c1-ebfc-4577-98f0-1e27bad36673",
                  "parent_uuid": "2d921afe-9f6c-4a23-9307-67fdda4a4752",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b39b2ea-043e-4f00-a8ec-42a88f03f860",
              "parent_uuid": "31e7c742-3220-4bdd-844e-ad98fa97390a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9181dfc3-4029-486d-bd96-6c8a7293be0a",
                  "parent_uuid": "5b39b2ea-043e-4f00-a8ec-42a88f03f860",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f31d0e21-293f-4b16-a7ee-a822094fa798",
              "parent_uuid": "31e7c742-3220-4bdd-844e-ad98fa97390a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "960a8fa3-df85-4fef-b9c8-0373726a1121",
                  "parent_uuid": "f31d0e21-293f-4b16-a7ee-a822094fa798",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3fa66123-f43a-4fd7-bacd-00f971057003",
              "parent_uuid": "31e7c742-3220-4bdd-844e-ad98fa97390a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01c32929-166c-4d3d-bac8-f5c0c3485f66",
                  "parent_uuid": "3fa66123-f43a-4fd7-bacd-00f971057003",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "42b1fa1b-a4c3-4ca5-bf6d-9c4d98b8f361",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2cb830c7-752e-41d5-8b83-55cda8d9164d",
              "parent_uuid": "42b1fa1b-a4c3-4ca5-bf6d-9c4d98b8f361",
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
              "uuid": "66a9cdb4-d2e7-455d-a691-8e951c869e21",
              "parent_uuid": "42b1fa1b-a4c3-4ca5-bf6d-9c4d98b8f361",
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
              "uuid": "103a9164-42cc-4714-8c53-59ebb069eb44",
              "parent_uuid": "42b1fa1b-a4c3-4ca5-bf6d-9c4d98b8f361",
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
                  "uuid": "b3fa08f9-bf84-4d99-b682-2bfff7098f72",
                  "parent_uuid": "103a9164-42cc-4714-8c53-59ebb069eb44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e2948ed-c3b7-475f-aae3-096a31797639",
              "parent_uuid": "42b1fa1b-a4c3-4ca5-bf6d-9c4d98b8f361",
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
                  "uuid": "5cde82df-70d1-48ae-bef9-b39491a367a4",
                  "parent_uuid": "1e2948ed-c3b7-475f-aae3-096a31797639",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3703a0bb-f7f1-4d0a-9413-969d97f2866b",
              "parent_uuid": "42b1fa1b-a4c3-4ca5-bf6d-9c4d98b8f361",
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
                  "uuid": "18ef264b-1cfb-452b-ab07-1dadd32953be",
                  "parent_uuid": "3703a0bb-f7f1-4d0a-9413-969d97f2866b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2124b0fe-f7da-47b8-aff2-ceb11a7a21db",
              "parent_uuid": "42b1fa1b-a4c3-4ca5-bf6d-9c4d98b8f361",
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
                  "uuid": "85ee9dcd-86c7-4e14-85be-abc0813f7bf2",
                  "parent_uuid": "2124b0fe-f7da-47b8-aff2-ceb11a7a21db",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eeb04e2e-9fcf-42a5-98b4-60d889737281",
              "parent_uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
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
              "uuid": "74e48571-a6d4-4435-9b26-31770a9e3905",
              "parent_uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
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
              "uuid": "d9c8b5ae-dd68-4d65-8829-630c7ac5277b",
              "parent_uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
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
              "uuid": "3a2d52fc-e05d-41f6-820c-91e2ffb0fe88",
              "parent_uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
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
                  "uuid": "5e3d7d1e-dbe3-4722-85fe-aba1d85f3364",
                  "parent_uuid": "3a2d52fc-e05d-41f6-820c-91e2ffb0fe88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4103b5d3-44c8-4fd3-8bc3-be655ee2e2c1",
              "parent_uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
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
                  "uuid": "f7f92e85-96ab-4b2a-8179-d05e891d0062",
                  "parent_uuid": "4103b5d3-44c8-4fd3-8bc3-be655ee2e2c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "556034c4-d541-41a4-8813-170071c59b20",
              "parent_uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
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
                  "uuid": "b7145be1-97cc-4fc0-91b8-8fca7cada431",
                  "parent_uuid": "556034c4-d541-41a4-8813-170071c59b20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96240e60-7517-4d53-b41c-687e1a79c749",
              "parent_uuid": "7f491c15-d9ef-4194-ab28-94da07fa7dc4",
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
                  "uuid": "072ca0d8-61f5-4042-9fc7-26c41b720d79",
                  "parent_uuid": "96240e60-7517-4d53-b41c-687e1a79c749",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6334722-494d-4857-9634-288d4a18169e",
              "parent_uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
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
              "uuid": "f770c9f5-ee42-4fb6-be28-6d88d81606d7",
              "parent_uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
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
              "uuid": "2780ac9c-b5d2-4dbb-8a6f-eef6ce4b7869",
              "parent_uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
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
                  "uuid": "b91467ad-fa9e-42e7-b4bd-ce46656ec3da",
                  "parent_uuid": "2780ac9c-b5d2-4dbb-8a6f-eef6ce4b7869",
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
              "uuid": "4e4ee657-b964-46f6-b324-c53dd6c5c13c",
              "parent_uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
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
                  "uuid": "45a03c63-6512-4e12-ba72-8e17dd29d004",
                  "parent_uuid": "4e4ee657-b964-46f6-b324-c53dd6c5c13c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db0948e2-9862-4496-8469-2bef096b1910",
              "parent_uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
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
                  "uuid": "962f96d2-9edd-4e9b-8728-0ac67ab3117e",
                  "parent_uuid": "db0948e2-9862-4496-8469-2bef096b1910",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "177e4223-1478-4e20-86bb-b33ea5c3b122",
              "parent_uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
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
                  "uuid": "ba1f4250-77ef-488f-aa54-4ba220c02856",
                  "parent_uuid": "177e4223-1478-4e20-86bb-b33ea5c3b122",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25a16292-86b4-4692-a75e-e9c983835623",
              "parent_uuid": "4f4c42a7-5098-4ed6-8399-5ac5c520c28a",
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
                  "uuid": "78738138-9f71-499e-8cfa-30e02cb968d9",
                  "parent_uuid": "25a16292-86b4-4692-a75e-e9c983835623",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a09f983c-9d1a-4ca8-9265-a03d9ed0a71d",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13365185-c825-432c-ad3b-c6ba02ddb6ae",
              "parent_uuid": "a09f983c-9d1a-4ca8-9265-a03d9ed0a71d",
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
              "uuid": "c1cb8b16-da26-4334-8f8b-45541d7a430e",
              "parent_uuid": "a09f983c-9d1a-4ca8-9265-a03d9ed0a71d",
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
              "uuid": "240fa5d5-eecb-4041-97e5-7127e5fcee41",
              "parent_uuid": "a09f983c-9d1a-4ca8-9265-a03d9ed0a71d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a84ae7c-9fc5-489b-a690-b0bc782a881f",
                  "parent_uuid": "240fa5d5-eecb-4041-97e5-7127e5fcee41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1d6f0c5-b0d7-469c-b069-4410b53e0875",
              "parent_uuid": "a09f983c-9d1a-4ca8-9265-a03d9ed0a71d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afb3a789-a824-4d95-a97b-095caa8938c1",
                  "parent_uuid": "b1d6f0c5-b0d7-469c-b069-4410b53e0875",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e104d78e-0e8e-4c4f-a41e-3c63a247f5f4",
              "parent_uuid": "a09f983c-9d1a-4ca8-9265-a03d9ed0a71d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "487ebf57-b500-4e3d-be09-03bc9a422235",
                  "parent_uuid": "e104d78e-0e8e-4c4f-a41e-3c63a247f5f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c004e58e-4bb9-48cd-9441-091a9a120509",
              "parent_uuid": "a09f983c-9d1a-4ca8-9265-a03d9ed0a71d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2d4de97-5d51-4fec-84f4-4a2c8e23656e",
                  "parent_uuid": "c004e58e-4bb9-48cd-9441-091a9a120509",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3449e6f6-aac5-4028-9b3e-e2c7cbdb0b81",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ba23d85-a713-49d7-9abc-d49dab8066ba",
              "parent_uuid": "3449e6f6-aac5-4028-9b3e-e2c7cbdb0b81",
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
              "uuid": "dbcd13ac-19a4-4ba5-9b1e-ed61712de566",
              "parent_uuid": "3449e6f6-aac5-4028-9b3e-e2c7cbdb0b81",
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
              "uuid": "427d6f3c-954a-413d-b057-56467fc14f44",
              "parent_uuid": "3449e6f6-aac5-4028-9b3e-e2c7cbdb0b81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42de3fec-6538-4e63-a7e1-b0a383f870c5",
                  "parent_uuid": "427d6f3c-954a-413d-b057-56467fc14f44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4eb332c-1c72-4552-817c-64b5b755b23e",
              "parent_uuid": "3449e6f6-aac5-4028-9b3e-e2c7cbdb0b81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a1090f9-b99c-4e53-8067-a7326140fa15",
                  "parent_uuid": "c4eb332c-1c72-4552-817c-64b5b755b23e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "176d7ad3-7bf4-46c2-9946-ddd3bc6e011a",
              "parent_uuid": "3449e6f6-aac5-4028-9b3e-e2c7cbdb0b81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14623710-2ec8-4a37-b26e-df174319d51d",
                  "parent_uuid": "176d7ad3-7bf4-46c2-9946-ddd3bc6e011a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c200be6-702e-4b25-bdd7-223fd360503f",
              "parent_uuid": "3449e6f6-aac5-4028-9b3e-e2c7cbdb0b81",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a9fe1a9-b0ee-4936-af63-03d1ef50ae9b",
                  "parent_uuid": "9c200be6-702e-4b25-bdd7-223fd360503f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ea0b6599-7038-46a1-9a38-deec638d9986",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38c04129-cbde-496d-b0bc-38a2ffd4c5c5",
              "parent_uuid": "ea0b6599-7038-46a1-9a38-deec638d9986",
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
              "uuid": "f4be7d11-a937-4d40-ba10-1df8a243afd8",
              "parent_uuid": "ea0b6599-7038-46a1-9a38-deec638d9986",
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
              "uuid": "3d119af8-2ae5-41b7-b916-9d17ff19f50a",
              "parent_uuid": "ea0b6599-7038-46a1-9a38-deec638d9986",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "362974b6-7a06-47d6-8326-cef30de1de8d",
                  "parent_uuid": "3d119af8-2ae5-41b7-b916-9d17ff19f50a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b62b552-daad-4eca-910e-a2f6c4f0e1e6",
              "parent_uuid": "ea0b6599-7038-46a1-9a38-deec638d9986",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e499d3a-6ddf-483c-8940-48cb3fa41546",
                  "parent_uuid": "5b62b552-daad-4eca-910e-a2f6c4f0e1e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44216f8f-fcb3-4600-ae08-a3d5e04fc20b",
              "parent_uuid": "ea0b6599-7038-46a1-9a38-deec638d9986",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77d1aa01-765b-4db9-8547-0688451d3c31",
                  "parent_uuid": "44216f8f-fcb3-4600-ae08-a3d5e04fc20b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1c3c188-5dc9-4765-930c-7a3c177673ed",
              "parent_uuid": "ea0b6599-7038-46a1-9a38-deec638d9986",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "073df1ed-574b-4f8b-8352-4c63ecb78586",
                  "parent_uuid": "a1c3c188-5dc9-4765-930c-7a3c177673ed",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cfcf6657-b088-40de-9e61-2cd97f59d261",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4764b0ed-4ce4-488d-b65c-6b892da11f3c",
              "parent_uuid": "cfcf6657-b088-40de-9e61-2cd97f59d261",
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
              "uuid": "cc1a9e9f-9820-4efa-94b3-e2d1c554b725",
              "parent_uuid": "cfcf6657-b088-40de-9e61-2cd97f59d261",
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
              "uuid": "cc042f25-6e59-48f3-a4ad-f7eeca1d60a7",
              "parent_uuid": "cfcf6657-b088-40de-9e61-2cd97f59d261",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df02dfde-4eae-4fb6-9f75-8922b0dbdfca",
                  "parent_uuid": "cc042f25-6e59-48f3-a4ad-f7eeca1d60a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b1a1eb2-842d-428c-9cd3-cb34b964da11",
              "parent_uuid": "cfcf6657-b088-40de-9e61-2cd97f59d261",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "faa8dacb-3214-4c85-8d37-9ed1055430cc",
                  "parent_uuid": "6b1a1eb2-842d-428c-9cd3-cb34b964da11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db41ccf3-82e9-4ed0-b2f7-6d1798129a95",
              "parent_uuid": "cfcf6657-b088-40de-9e61-2cd97f59d261",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2f572d8-e4a6-41ce-93b6-18bcbb5d6121",
                  "parent_uuid": "db41ccf3-82e9-4ed0-b2f7-6d1798129a95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b016cf07-ad20-4a12-a765-e1e2f8ff7903",
              "parent_uuid": "cfcf6657-b088-40de-9e61-2cd97f59d261",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e06e565-a35e-46e2-9f2f-775feb290375",
                  "parent_uuid": "b016cf07-ad20-4a12-a765-e1e2f8ff7903",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b6d4c9df-ee8d-4ce5-a3d6-e3186e483e7b",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "73385703-fabb-4183-902a-c9ce42909598",
              "parent_uuid": "b6d4c9df-ee8d-4ce5-a3d6-e3186e483e7b",
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
          "uuid": "25a0b008-4679-4078-8d3d-4f4bc9a05956",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96b412d4-d250-4c3b-b509-16f74f59db8f",
              "parent_uuid": "25a0b008-4679-4078-8d3d-4f4bc9a05956",
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
              "uuid": "3de60b17-0656-48bc-b93a-515574661f29",
              "parent_uuid": "25a0b008-4679-4078-8d3d-4f4bc9a05956",
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
              "uuid": "9f9a0362-713d-4f3d-ad73-952e247d2eff",
              "parent_uuid": "25a0b008-4679-4078-8d3d-4f4bc9a05956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc0c2604-cdd4-497a-a8d0-e74ff714cdd5",
                  "parent_uuid": "9f9a0362-713d-4f3d-ad73-952e247d2eff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "791a0210-2695-4587-ad87-0882809bbeae",
              "parent_uuid": "25a0b008-4679-4078-8d3d-4f4bc9a05956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1483e792-c87d-4d86-b127-dab4a7b2ad88",
                  "parent_uuid": "791a0210-2695-4587-ad87-0882809bbeae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fddf713-73f1-46c2-9d45-c5b68027ef40",
              "parent_uuid": "25a0b008-4679-4078-8d3d-4f4bc9a05956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ba28ea2-9ef9-4ab8-a289-d4132d967b4a",
                  "parent_uuid": "0fddf713-73f1-46c2-9d45-c5b68027ef40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f295496-6d0d-49f1-9d54-706d4723d65a",
              "parent_uuid": "25a0b008-4679-4078-8d3d-4f4bc9a05956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "575ad8ca-b0df-4d0c-acdd-c75b12c29c90",
                  "parent_uuid": "5f295496-6d0d-49f1-9d54-706d4723d65a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "91abc442-940e-45e6-afa1-3a05e98aaa9b",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e67c98e-9e59-4fc1-81b0-920683588caa",
              "parent_uuid": "91abc442-940e-45e6-afa1-3a05e98aaa9b",
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
              "uuid": "43ce8bc0-f043-487e-8a7f-e0413b85721d",
              "parent_uuid": "91abc442-940e-45e6-afa1-3a05e98aaa9b",
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
              "uuid": "4f43e1dd-68fc-4afd-99cc-b6c763ff145a",
              "parent_uuid": "91abc442-940e-45e6-afa1-3a05e98aaa9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2048057e-534b-4703-b372-0f32cc686c2a",
                  "parent_uuid": "4f43e1dd-68fc-4afd-99cc-b6c763ff145a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77249afe-ddb3-4c3d-ac3e-907a826843af",
              "parent_uuid": "91abc442-940e-45e6-afa1-3a05e98aaa9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84eecc16-0619-44b2-a0fc-1f332467cee9",
                  "parent_uuid": "77249afe-ddb3-4c3d-ac3e-907a826843af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53210335-aef5-485e-aa2c-b10ec42b8b7e",
              "parent_uuid": "91abc442-940e-45e6-afa1-3a05e98aaa9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0468b7c9-5c0c-4e80-b095-56faadb975bc",
                  "parent_uuid": "53210335-aef5-485e-aa2c-b10ec42b8b7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd10080a-87ef-41a7-acb7-0f35f56ccbc9",
              "parent_uuid": "91abc442-940e-45e6-afa1-3a05e98aaa9b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c4a23e8-82f0-4651-a7e2-241e45f7c617",
                  "parent_uuid": "bd10080a-87ef-41a7-acb7-0f35f56ccbc9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b54437a6-b70e-47a2-a6f7-149196d9490f",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d1c787d-b15d-4764-8aea-4353b495075a",
              "parent_uuid": "b54437a6-b70e-47a2-a6f7-149196d9490f",
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
              "uuid": "9c208513-bc44-479f-9f4e-cb4284e1cc24",
              "parent_uuid": "b54437a6-b70e-47a2-a6f7-149196d9490f",
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
              "uuid": "180bd065-9fd8-485d-9075-39c6db9ca8f2",
              "parent_uuid": "b54437a6-b70e-47a2-a6f7-149196d9490f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54ca0318-9fe8-4389-a4dc-912a0dcb6713",
                  "parent_uuid": "180bd065-9fd8-485d-9075-39c6db9ca8f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "02d3bdf2-e49d-47c4-be5f-690835dadc39",
              "parent_uuid": "b54437a6-b70e-47a2-a6f7-149196d9490f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04e7b3f9-f9df-46e1-9c82-8333186c20ba",
                  "parent_uuid": "02d3bdf2-e49d-47c4-be5f-690835dadc39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed796dac-e3ec-4bc9-bb16-53c359497f78",
              "parent_uuid": "b54437a6-b70e-47a2-a6f7-149196d9490f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "faae91f7-e6e9-4b6c-a358-b32d3b4530c7",
                  "parent_uuid": "ed796dac-e3ec-4bc9-bb16-53c359497f78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f0dc9b0-b737-4f01-8136-fe5b4a36c05b",
              "parent_uuid": "b54437a6-b70e-47a2-a6f7-149196d9490f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02519087-0731-46cb-a6b0-c1fb4d551752",
                  "parent_uuid": "3f0dc9b0-b737-4f01-8136-fe5b4a36c05b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f5ca8905-1c91-4def-9d93-447c476ee33a",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9419d6d-ee72-420f-b339-bb4555344025",
              "parent_uuid": "f5ca8905-1c91-4def-9d93-447c476ee33a",
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
              "uuid": "3f050e44-a61f-459a-9022-4f78cae557b3",
              "parent_uuid": "f5ca8905-1c91-4def-9d93-447c476ee33a",
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
              "uuid": "8d0387e8-3821-44f4-abf9-ac7b03b0bd8a",
              "parent_uuid": "f5ca8905-1c91-4def-9d93-447c476ee33a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2f42998-57e4-4e10-bdde-bc994eb2a51b",
                  "parent_uuid": "8d0387e8-3821-44f4-abf9-ac7b03b0bd8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68f08c8e-0ba4-4539-92e9-ee55f0ea8590",
              "parent_uuid": "f5ca8905-1c91-4def-9d93-447c476ee33a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69d8462a-46de-4c4e-bf16-1cf325968b68",
                  "parent_uuid": "68f08c8e-0ba4-4539-92e9-ee55f0ea8590",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9837dd8a-3d40-4e0c-9baf-2f26bf3a36b3",
              "parent_uuid": "f5ca8905-1c91-4def-9d93-447c476ee33a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab76c108-caf6-42aa-b649-98c56cf1dfbb",
                  "parent_uuid": "9837dd8a-3d40-4e0c-9baf-2f26bf3a36b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f7cd965-5b1d-4565-9acf-14db916162c1",
              "parent_uuid": "f5ca8905-1c91-4def-9d93-447c476ee33a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18246ce7-1cb0-4d47-8393-d9c6bb9cb622",
                  "parent_uuid": "6f7cd965-5b1d-4565-9acf-14db916162c1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5b26850d-f1b8-4bf4-afa0-1ef7d9bb6270",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c2aa20f6-3d58-4f1d-8f44-27ba3d19a4ab",
              "parent_uuid": "5b26850d-f1b8-4bf4-afa0-1ef7d9bb6270",
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
              "uuid": "1fc7e520-a4e3-47d1-bc9d-a5703c263099",
              "parent_uuid": "5b26850d-f1b8-4bf4-afa0-1ef7d9bb6270",
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
              "uuid": "22c1df94-e9db-4380-8f08-82ab0d8cdafd",
              "parent_uuid": "5b26850d-f1b8-4bf4-afa0-1ef7d9bb6270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53d10349-47ae-46db-a7f5-6ad2e6039f8b",
                  "parent_uuid": "22c1df94-e9db-4380-8f08-82ab0d8cdafd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14c3db2f-09c4-4b86-b416-e8602e41d20b",
              "parent_uuid": "5b26850d-f1b8-4bf4-afa0-1ef7d9bb6270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f47c0a18-f3e0-4606-baed-6ce9a41df5e0",
                  "parent_uuid": "14c3db2f-09c4-4b86-b416-e8602e41d20b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67bc7796-feb2-4a35-a8f3-f2503ebd296b",
              "parent_uuid": "5b26850d-f1b8-4bf4-afa0-1ef7d9bb6270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "237d5abb-622e-4037-82da-64f7ab80528a",
                  "parent_uuid": "67bc7796-feb2-4a35-a8f3-f2503ebd296b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c386b9aa-f309-43c1-87f0-44be58aedfe0",
              "parent_uuid": "5b26850d-f1b8-4bf4-afa0-1ef7d9bb6270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3769a503-0405-493c-ad45-d5455751d0ca",
                  "parent_uuid": "c386b9aa-f309-43c1-87f0-44be58aedfe0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5bdf98c-04e6-43e3-b5cf-09de909bad54",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f417cbbe-dad0-4175-932e-874b3946eeb8",
              "parent_uuid": "c5bdf98c-04e6-43e3-b5cf-09de909bad54",
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
          "uuid": "87f93fd3-6195-47b0-b2a1-a1f8978c153c",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a401ae41-124a-44d2-b15e-0f0c6c6f7086",
              "parent_uuid": "87f93fd3-6195-47b0-b2a1-a1f8978c153c",
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
          "uuid": "ac274153-f1aa-475d-bd11-cf2cce51a7a8",
          "parent_uuid": "5f8e83e0-793c-4357-ac87-1f968d997657",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0ec3b2a-a0e4-40a6-bfbe-16179da3eaf4",
              "parent_uuid": "ac274153-f1aa-475d-bd11-cf2cce51a7a8",
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
                  "uuid": "ccbff32e-57b9-4b0c-af0d-8a06dce1f3a9",
                  "parent_uuid": "a0ec3b2a-a0e4-40a6-bfbe-16179da3eaf4",
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


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
  "uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "767374ee-2d07-45b3-b114-99871633e43a",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "c2af7ebf-b988-438a-b14e-ffa9f75d611b",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "8214972f-fcc8-4a4c-83ed-4c42a4ba1f0c",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "0cc7eccf-224a-4e05-a438-1a970aaf4d64",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "6ead81a4-6804-40e1-a013-00c5ad8850d3",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "3709c948-d89b-4c30-a296-5cbda4058ff9",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "af5cd984-4d28-4845-8c1d-e12ce64a3397",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
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
      "uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
      "parent_uuid": "3689169c-f769-4f0e-b05c-c574ab9537e3",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "2a7f9258-9abf-4063-8883-e79c511ca1f0",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "2557a742-cdc6-4b11-9df3-2ab1872a99ec",
              "parent_uuid": "2a7f9258-9abf-4063-8883-e79c511ca1f0",
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
              "uuid": "911acb80-5861-49e8-bd7c-2e710e5358b0",
              "parent_uuid": "2a7f9258-9abf-4063-8883-e79c511ca1f0",
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
              "uuid": "43eea8c5-da23-4b35-a1f0-7f9ee9aa1665",
              "parent_uuid": "2a7f9258-9abf-4063-8883-e79c511ca1f0",
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
              "uuid": "4adf3d50-0384-4777-845a-d97fbd18b413",
              "parent_uuid": "2a7f9258-9abf-4063-8883-e79c511ca1f0",
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
          "uuid": "955cf385-2c2a-47e3-a4fd-2a4919518140",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "b9a725a6-f254-42a5-a16f-e1e500a90d78",
              "parent_uuid": "955cf385-2c2a-47e3-a4fd-2a4919518140",
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
              "uuid": "b7df43bd-aec5-4ba6-9eef-4974e2989630",
              "parent_uuid": "955cf385-2c2a-47e3-a4fd-2a4919518140",
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
              "uuid": "b27de21b-1368-4b43-85cc-b79711f68d97",
              "parent_uuid": "955cf385-2c2a-47e3-a4fd-2a4919518140",
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
              "uuid": "d384feb3-4fa5-4e3f-8328-5c955042dcc9",
              "parent_uuid": "955cf385-2c2a-47e3-a4fd-2a4919518140",
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
          "uuid": "1d35180f-d1fc-49cf-8437-1818649e51c0",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c957bdd4-2071-47c6-be3c-4c0586430acf",
              "parent_uuid": "1d35180f-d1fc-49cf-8437-1818649e51c0",
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
              "uuid": "717a0b9b-51cb-4ae5-9572-77abcf3f714b",
              "parent_uuid": "1d35180f-d1fc-49cf-8437-1818649e51c0",
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
              "uuid": "78671fa0-b500-4245-a05a-3960368e1337",
              "parent_uuid": "1d35180f-d1fc-49cf-8437-1818649e51c0",
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
              "uuid": "1fcb9bea-ebde-4435-9db1-977aeb66bc77",
              "parent_uuid": "1d35180f-d1fc-49cf-8437-1818649e51c0",
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
              "uuid": "bf100bea-1505-4033-b3e9-4e8ed7d3863a",
              "parent_uuid": "1d35180f-d1fc-49cf-8437-1818649e51c0",
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
              "uuid": "06c86793-88d9-4fd6-b6f7-d54ebdddcead",
              "parent_uuid": "1d35180f-d1fc-49cf-8437-1818649e51c0",
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
          "uuid": "422d2d5e-1554-4d17-8c89-7fd985158a18",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f1b41142-88d8-42bd-ae30-a34860164ed9",
              "parent_uuid": "422d2d5e-1554-4d17-8c89-7fd985158a18",
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
          "uuid": "872d2479-00d7-4b51-96c0-0fef93095bf7",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a29d6c9-a55e-4d4d-864d-ce3d0d230a63",
              "parent_uuid": "872d2479-00d7-4b51-96c0-0fef93095bf7",
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
              "uuid": "3719b7cc-d86c-4821-8ca5-c75af572246d",
              "parent_uuid": "872d2479-00d7-4b51-96c0-0fef93095bf7",
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
              "uuid": "20c7c128-b630-4807-81fd-0f7f35426c68",
              "parent_uuid": "872d2479-00d7-4b51-96c0-0fef93095bf7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e5b8d55-107c-457f-83da-f60a7e953080",
                  "parent_uuid": "20c7c128-b630-4807-81fd-0f7f35426c68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c207f44e-4953-4e88-abf2-16d6f3ea613a",
              "parent_uuid": "872d2479-00d7-4b51-96c0-0fef93095bf7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7816b62c-6c14-48e4-8fb8-dbb80f905960",
                  "parent_uuid": "c207f44e-4953-4e88-abf2-16d6f3ea613a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a25c01d-f36a-4f95-aec8-b4875edb3317",
              "parent_uuid": "872d2479-00d7-4b51-96c0-0fef93095bf7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1eab4377-d8ed-4f32-a61d-4df31f450753",
                  "parent_uuid": "0a25c01d-f36a-4f95-aec8-b4875edb3317",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb7ac61f-c6ec-47bd-9d94-ab708a2d515f",
              "parent_uuid": "872d2479-00d7-4b51-96c0-0fef93095bf7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2b17633-413e-4e65-b04f-5d829ff12fd7",
                  "parent_uuid": "eb7ac61f-c6ec-47bd-9d94-ab708a2d515f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8f21e8fd-3a22-4598-8ba3-40634969bd3d",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dad4a069-1d8f-48ed-9de5-1fd28f7f90b5",
              "parent_uuid": "8f21e8fd-3a22-4598-8ba3-40634969bd3d",
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
              "uuid": "955327ff-12eb-40a2-b637-308b1c0c0ed6",
              "parent_uuid": "8f21e8fd-3a22-4598-8ba3-40634969bd3d",
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
              "uuid": "e8033d10-ca49-4cf2-beec-7c86f719aad2",
              "parent_uuid": "8f21e8fd-3a22-4598-8ba3-40634969bd3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39f992a7-8329-4e7e-b32f-014fd184900c",
                  "parent_uuid": "e8033d10-ca49-4cf2-beec-7c86f719aad2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31581908-8a8e-4950-91bd-9424f26df97d",
              "parent_uuid": "8f21e8fd-3a22-4598-8ba3-40634969bd3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3aa3cd17-a55a-42d6-aaeb-ccbf0a1ae254",
                  "parent_uuid": "31581908-8a8e-4950-91bd-9424f26df97d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db62f667-cec2-4865-a2ee-3ebc9ceb3614",
              "parent_uuid": "8f21e8fd-3a22-4598-8ba3-40634969bd3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27753f58-2e76-4e9b-928f-7a9c3910c3cf",
                  "parent_uuid": "db62f667-cec2-4865-a2ee-3ebc9ceb3614",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97a08efe-28b1-48a2-a264-6e8e0b39ee1a",
              "parent_uuid": "8f21e8fd-3a22-4598-8ba3-40634969bd3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a4b46a3-fb49-469e-9b74-6737c278ecbf",
                  "parent_uuid": "97a08efe-28b1-48a2-a264-6e8e0b39ee1a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6808a39-d723-47d6-895d-2a1d1475644e",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf9c5f78-2908-4978-97c7-5fb02614cee6",
              "parent_uuid": "d6808a39-d723-47d6-895d-2a1d1475644e",
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
              "uuid": "ec064e3e-823e-4417-85ea-265dbfd30e82",
              "parent_uuid": "d6808a39-d723-47d6-895d-2a1d1475644e",
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
              "uuid": "3deef649-84d6-476f-90bf-9e6fc27fd46a",
              "parent_uuid": "d6808a39-d723-47d6-895d-2a1d1475644e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fbd1ceae-5e16-4aba-98e4-8937e2819a21",
                  "parent_uuid": "3deef649-84d6-476f-90bf-9e6fc27fd46a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd5c9073-b399-4942-89ca-5785a415d3cf",
              "parent_uuid": "d6808a39-d723-47d6-895d-2a1d1475644e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "93b84508-57e4-482f-b0f4-1b85e00cec6f",
                  "parent_uuid": "bd5c9073-b399-4942-89ca-5785a415d3cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14267c05-0ba4-476c-888e-3b9b8c032ff0",
              "parent_uuid": "d6808a39-d723-47d6-895d-2a1d1475644e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c75c2f28-4cb2-4839-a0d4-aa2aa1ca4346",
                  "parent_uuid": "14267c05-0ba4-476c-888e-3b9b8c032ff0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ede050f-daa7-419c-81de-254e4045131d",
              "parent_uuid": "d6808a39-d723-47d6-895d-2a1d1475644e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7464c727-ef7b-45ac-a092-2f5b8a5ce277",
                  "parent_uuid": "7ede050f-daa7-419c-81de-254e4045131d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "da0996f9-ee64-4662-a5de-bec92e1d52ee",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31877bce-fa4e-4d3f-abc1-168cdc515069",
              "parent_uuid": "da0996f9-ee64-4662-a5de-bec92e1d52ee",
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
              "uuid": "4c4c18bf-c6ee-4a41-ab49-379bdbe932af",
              "parent_uuid": "da0996f9-ee64-4662-a5de-bec92e1d52ee",
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
              "uuid": "ab2a2f99-ad3e-4c5d-82cf-a62f9b684fbb",
              "parent_uuid": "da0996f9-ee64-4662-a5de-bec92e1d52ee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "961247d2-5018-42b6-b300-fb0ac5b20156",
                  "parent_uuid": "ab2a2f99-ad3e-4c5d-82cf-a62f9b684fbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57cf9f30-3aed-4904-a792-431cfca39bc3",
              "parent_uuid": "da0996f9-ee64-4662-a5de-bec92e1d52ee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cce5824b-982d-49d4-9fd8-f3567caf28ce",
                  "parent_uuid": "57cf9f30-3aed-4904-a792-431cfca39bc3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2145e1bf-c583-477c-bded-8d5e0ca7d1c9",
              "parent_uuid": "da0996f9-ee64-4662-a5de-bec92e1d52ee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "16eea609-98c4-4aa8-b312-eb34e7222cf2",
                  "parent_uuid": "2145e1bf-c583-477c-bded-8d5e0ca7d1c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbe891bd-9010-4159-89aa-77bcc9f08fbe",
              "parent_uuid": "da0996f9-ee64-4662-a5de-bec92e1d52ee",
              "tagName": "td",
              "properties": [
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
                  "uuid": "07776c5c-f590-4950-b5e1-352452025857",
                  "parent_uuid": "dbe891bd-9010-4159-89aa-77bcc9f08fbe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2949e66d-8d6d-430c-974b-2bde8bd1cdd3",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6f64bee-4317-40a2-87b3-c5fcb39d2989",
              "parent_uuid": "2949e66d-8d6d-430c-974b-2bde8bd1cdd3",
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
              "uuid": "cb0a7cba-8fac-4b12-82ea-dea65a625e14",
              "parent_uuid": "2949e66d-8d6d-430c-974b-2bde8bd1cdd3",
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
              "uuid": "b0a3df75-75f5-448c-9965-04198319f9fb",
              "parent_uuid": "2949e66d-8d6d-430c-974b-2bde8bd1cdd3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "189f7e69-f85e-4697-8e60-dd2b55ff4b29",
                  "parent_uuid": "b0a3df75-75f5-448c-9965-04198319f9fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23587270-a836-4b68-94a1-92f160fef6f4",
              "parent_uuid": "2949e66d-8d6d-430c-974b-2bde8bd1cdd3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "02622579-5f39-4d90-bd07-9889d2ba7ede",
                  "parent_uuid": "23587270-a836-4b68-94a1-92f160fef6f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4c3b0b8-a089-47aa-9509-6d9623a53614",
              "parent_uuid": "2949e66d-8d6d-430c-974b-2bde8bd1cdd3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "13c9ffba-7296-436a-b626-cf31984afa1a",
                  "parent_uuid": "b4c3b0b8-a089-47aa-9509-6d9623a53614",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25ab718a-f9b7-4c70-a1f5-1e3df8fa83c8",
              "parent_uuid": "2949e66d-8d6d-430c-974b-2bde8bd1cdd3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "001e2f42-d4bf-4f5a-b41c-d50d9a41ab3f",
                  "parent_uuid": "25ab718a-f9b7-4c70-a1f5-1e3df8fa83c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "225fa95e-7a84-4487-8106-630e13cc4e87",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "079022b5-9e19-4329-bd0a-f1971a1b1158",
              "parent_uuid": "225fa95e-7a84-4487-8106-630e13cc4e87",
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
              "uuid": "c50c6eb0-f2ae-41bc-9c2c-5e69f649d095",
              "parent_uuid": "225fa95e-7a84-4487-8106-630e13cc4e87",
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
              "uuid": "d6878c3c-61b1-4a5b-a7fc-38d55d121b64",
              "parent_uuid": "225fa95e-7a84-4487-8106-630e13cc4e87",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cdae54ff-e092-44fe-b088-5f6f9975cddc",
                  "parent_uuid": "d6878c3c-61b1-4a5b-a7fc-38d55d121b64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d9acef3-61aa-4188-b6dd-131c7168fc83",
              "parent_uuid": "225fa95e-7a84-4487-8106-630e13cc4e87",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0e63599a-abf1-4ac0-94f2-3275fb332c2c",
                  "parent_uuid": "0d9acef3-61aa-4188-b6dd-131c7168fc83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7056dc29-8585-4c99-8e29-d609a0716b0f",
              "parent_uuid": "225fa95e-7a84-4487-8106-630e13cc4e87",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0a5b7ce3-87ed-413e-868c-2b5b0fde5f34",
                  "parent_uuid": "7056dc29-8585-4c99-8e29-d609a0716b0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c3bd056-e6eb-4d70-8b6f-dc4fa6360063",
              "parent_uuid": "225fa95e-7a84-4487-8106-630e13cc4e87",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d87b261-b9b3-4fe4-acc6-348638dd20c9",
                  "parent_uuid": "9c3bd056-e6eb-4d70-8b6f-dc4fa6360063",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35b7a1aa-78ce-4630-ae94-2d2dab701fc6",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e481bb0-dae5-42dd-bcc9-91671471700b",
              "parent_uuid": "35b7a1aa-78ce-4630-ae94-2d2dab701fc6",
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
              "uuid": "980443b4-66a2-4c0c-88ae-f9de7027cb78",
              "parent_uuid": "35b7a1aa-78ce-4630-ae94-2d2dab701fc6",
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
              "uuid": "c1389807-30fe-469a-9944-5c86f213c52b",
              "parent_uuid": "35b7a1aa-78ce-4630-ae94-2d2dab701fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f4f66ea1-4797-4048-bcd8-326c907d832c",
                  "parent_uuid": "c1389807-30fe-469a-9944-5c86f213c52b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eaf2f946-388b-4b5c-93e4-594b9d4a568b",
              "parent_uuid": "35b7a1aa-78ce-4630-ae94-2d2dab701fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4906431c-b3f4-433d-99ad-6cbed5974a81",
                  "parent_uuid": "eaf2f946-388b-4b5c-93e4-594b9d4a568b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ed3e44e-9c69-425b-9f9f-32be5b7fcbef",
              "parent_uuid": "35b7a1aa-78ce-4630-ae94-2d2dab701fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d7f0164-f9db-4170-a766-37c1e4e20d7e",
                  "parent_uuid": "3ed3e44e-9c69-425b-9f9f-32be5b7fcbef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5db5806d-8f48-4459-b3ef-b1775aae2bf3",
              "parent_uuid": "35b7a1aa-78ce-4630-ae94-2d2dab701fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fcbe73e6-6745-499b-88b5-69d3e5eac32d",
                  "parent_uuid": "5db5806d-8f48-4459-b3ef-b1775aae2bf3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "28c87dc6-b598-4336-8b33-086a1343c382",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3409112-af3a-470a-954c-4868c1c4c990",
              "parent_uuid": "28c87dc6-b598-4336-8b33-086a1343c382",
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
              "uuid": "af101eda-984b-40ec-aca0-7bd336aecb66",
              "parent_uuid": "28c87dc6-b598-4336-8b33-086a1343c382",
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
              "uuid": "8a41b142-381b-4bc0-8579-f35a1d5452f1",
              "parent_uuid": "28c87dc6-b598-4336-8b33-086a1343c382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1bf7cfbe-1df9-45eb-bf97-e08edb042f46",
                  "parent_uuid": "8a41b142-381b-4bc0-8579-f35a1d5452f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73bb5ed7-fb8f-4458-8797-e85ccf2a0296",
              "parent_uuid": "28c87dc6-b598-4336-8b33-086a1343c382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9a228831-583e-498d-9dab-ce83c7dfd329",
                  "parent_uuid": "73bb5ed7-fb8f-4458-8797-e85ccf2a0296",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "152e9004-c26d-40c0-9358-a20ecb699fe0",
              "parent_uuid": "28c87dc6-b598-4336-8b33-086a1343c382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a2503c08-c603-46a1-805d-543326cd9cf2",
                  "parent_uuid": "152e9004-c26d-40c0-9358-a20ecb699fe0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53d8ab5f-bf73-4d0b-823a-0977c12e8eda",
              "parent_uuid": "28c87dc6-b598-4336-8b33-086a1343c382",
              "tagName": "td",
              "properties": [
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
                  "uuid": "330e8a3b-490a-4445-8da6-f0c6c1f44493",
                  "parent_uuid": "53d8ab5f-bf73-4d0b-823a-0977c12e8eda",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "001758c5-35fc-4a51-aaa2-1158a848b77f",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6339637d-5d63-40fe-812d-aec594a571f3",
              "parent_uuid": "001758c5-35fc-4a51-aaa2-1158a848b77f",
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
              "uuid": "84ed1ed1-29ec-40bf-80ed-ace78cb3fea8",
              "parent_uuid": "001758c5-35fc-4a51-aaa2-1158a848b77f",
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
              "uuid": "04945e9d-a7b7-427d-8eff-86399d6eac67",
              "parent_uuid": "001758c5-35fc-4a51-aaa2-1158a848b77f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8109e12d-3880-44d8-a2b9-5aa4b0f61631",
                  "parent_uuid": "04945e9d-a7b7-427d-8eff-86399d6eac67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ada8faf-97c5-4ebf-a2b7-5695c5aebc34",
              "parent_uuid": "001758c5-35fc-4a51-aaa2-1158a848b77f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a4336695-ed79-410c-825e-9c86c8b03b66",
                  "parent_uuid": "4ada8faf-97c5-4ebf-a2b7-5695c5aebc34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c3de469-2991-49ac-b844-347159d37361",
              "parent_uuid": "001758c5-35fc-4a51-aaa2-1158a848b77f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6369bf0d-6053-42cb-be2e-7f2b2be4415f",
                  "parent_uuid": "0c3de469-2991-49ac-b844-347159d37361",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "adb01d9e-b508-4934-861d-0845a22350fd",
              "parent_uuid": "001758c5-35fc-4a51-aaa2-1158a848b77f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "af74bfcc-d212-438a-b7c1-b2727ad313bd",
                  "parent_uuid": "adb01d9e-b508-4934-861d-0845a22350fd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0e1cb0d1-2e05-4f6e-a25f-324ad17b5b40",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7142aa1-4318-4789-b767-08dc78052ec8",
              "parent_uuid": "0e1cb0d1-2e05-4f6e-a25f-324ad17b5b40",
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
              "uuid": "90916092-27e1-4672-ae9a-eefa9f4061a8",
              "parent_uuid": "0e1cb0d1-2e05-4f6e-a25f-324ad17b5b40",
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
              "uuid": "8db691d2-4a0a-465d-95d5-d4bef48a5a66",
              "parent_uuid": "0e1cb0d1-2e05-4f6e-a25f-324ad17b5b40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4b5fa51e-0134-4362-9cac-fd5293d554cd",
                  "parent_uuid": "8db691d2-4a0a-465d-95d5-d4bef48a5a66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecd71b89-57b5-432e-a994-ba8ce9438151",
              "parent_uuid": "0e1cb0d1-2e05-4f6e-a25f-324ad17b5b40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e983eda4-3444-401c-98f4-a165e6b6bacf",
                  "parent_uuid": "ecd71b89-57b5-432e-a994-ba8ce9438151",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c49ca2e-f3fb-46e6-92f3-da00837cd527",
              "parent_uuid": "0e1cb0d1-2e05-4f6e-a25f-324ad17b5b40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eaa479d4-9fef-44fa-9c1f-d805c30048a1",
                  "parent_uuid": "9c49ca2e-f3fb-46e6-92f3-da00837cd527",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77d0df5b-a0a1-407e-82cc-878b11522f39",
              "parent_uuid": "0e1cb0d1-2e05-4f6e-a25f-324ad17b5b40",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dd66cc05-0809-4f20-a7e0-3f60e90de7cd",
                  "parent_uuid": "77d0df5b-a0a1-407e-82cc-878b11522f39",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ffe59063-5d9c-42d8-913d-93989ba4cfb3",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfb08e13-e07e-454f-800e-06df15f7b4d0",
              "parent_uuid": "ffe59063-5d9c-42d8-913d-93989ba4cfb3",
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
              "uuid": "d5cc7017-941f-4a4d-915d-6f1a2f3f975c",
              "parent_uuid": "ffe59063-5d9c-42d8-913d-93989ba4cfb3",
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
              "uuid": "e3cdb59e-f48f-43d5-91fd-56a5bfe0e0d2",
              "parent_uuid": "ffe59063-5d9c-42d8-913d-93989ba4cfb3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8316b3fd-1b91-40ad-9913-62d7a5dfd533",
                  "parent_uuid": "e3cdb59e-f48f-43d5-91fd-56a5bfe0e0d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15336b4f-cecf-4450-9a51-f3e334e8ab68",
              "parent_uuid": "ffe59063-5d9c-42d8-913d-93989ba4cfb3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d1c767c2-ec22-4e4f-9d3b-45305023c0b2",
                  "parent_uuid": "15336b4f-cecf-4450-9a51-f3e334e8ab68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1433fe2-119c-465d-9004-879235278e0a",
              "parent_uuid": "ffe59063-5d9c-42d8-913d-93989ba4cfb3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7de8a375-906a-4486-a46f-d45b776ebd7e",
                  "parent_uuid": "c1433fe2-119c-465d-9004-879235278e0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0197a53-6411-48a3-9c70-3342cc783aeb",
              "parent_uuid": "ffe59063-5d9c-42d8-913d-93989ba4cfb3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "44ead3f6-1dff-4488-aba7-99b492aee1d9",
                  "parent_uuid": "a0197a53-6411-48a3-9c70-3342cc783aeb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1db8c081-ed1a-4fcc-8b2e-f4f7937f896a",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d95f319-23a9-431d-bb80-3fa1fdbf1873",
              "parent_uuid": "1db8c081-ed1a-4fcc-8b2e-f4f7937f896a",
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
              "uuid": "ad5c1f94-12a9-404f-a896-f141eb50f6cd",
              "parent_uuid": "1db8c081-ed1a-4fcc-8b2e-f4f7937f896a",
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
              "uuid": "cf533bc9-3de1-4c44-8c61-8b9847669cc2",
              "parent_uuid": "1db8c081-ed1a-4fcc-8b2e-f4f7937f896a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e3e52c78-3e44-44cd-a4f9-c2ceae3a6e14",
                  "parent_uuid": "cf533bc9-3de1-4c44-8c61-8b9847669cc2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5fc878ff-33b1-4faf-9b23-c32ee7713974",
              "parent_uuid": "1db8c081-ed1a-4fcc-8b2e-f4f7937f896a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "226224c7-978c-4729-a0be-56c5c79265aa",
                  "parent_uuid": "5fc878ff-33b1-4faf-9b23-c32ee7713974",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfb56974-f720-46db-869d-163b5f66caea",
              "parent_uuid": "1db8c081-ed1a-4fcc-8b2e-f4f7937f896a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2db8786d-0f0d-4b9c-bf1f-09ccab97b36c",
                  "parent_uuid": "cfb56974-f720-46db-869d-163b5f66caea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51e9aded-65bf-419a-a10a-0b256212e54c",
              "parent_uuid": "1db8c081-ed1a-4fcc-8b2e-f4f7937f896a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4be9cb28-eba9-4da2-bbf5-7cc7c4f8b89b",
                  "parent_uuid": "51e9aded-65bf-419a-a10a-0b256212e54c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "202d7148-697b-40b9-9b42-0e254fc9cb16",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c342b22-b6b6-4319-b412-8debf570356b",
              "parent_uuid": "202d7148-697b-40b9-9b42-0e254fc9cb16",
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
              "uuid": "e2667d2e-60db-4523-ba05-b0a90c63e6ce",
              "parent_uuid": "202d7148-697b-40b9-9b42-0e254fc9cb16",
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
              "uuid": "901d0560-f475-4116-b354-0f39daebc156",
              "parent_uuid": "202d7148-697b-40b9-9b42-0e254fc9cb16",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f417e0c5-460d-4999-a53c-06c93ca00ff0",
                  "parent_uuid": "901d0560-f475-4116-b354-0f39daebc156",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fed9410d-1cfd-482d-aa9b-e5574eac9cca",
              "parent_uuid": "202d7148-697b-40b9-9b42-0e254fc9cb16",
              "tagName": "td",
              "properties": [
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
                  "uuid": "35639ae9-2923-4991-b7f2-f1f5894b4b02",
                  "parent_uuid": "fed9410d-1cfd-482d-aa9b-e5574eac9cca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "126623b8-33e9-421e-adda-61d5c9e7a30d",
              "parent_uuid": "202d7148-697b-40b9-9b42-0e254fc9cb16",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5083e78f-4eb1-4603-8189-6e0d7c2dc15d",
                  "parent_uuid": "126623b8-33e9-421e-adda-61d5c9e7a30d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26ddfdce-b4e9-4ade-a3c5-cb0f72eb9694",
              "parent_uuid": "202d7148-697b-40b9-9b42-0e254fc9cb16",
              "tagName": "td",
              "properties": [
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
                  "uuid": "86e9f708-17f9-4db4-b7df-14a3d4f02f0a",
                  "parent_uuid": "26ddfdce-b4e9-4ade-a3c5-cb0f72eb9694",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b299c99-69c1-4e4b-9df8-31c163c16c8e",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41bbba99-5916-49b3-8a40-431b004a5e51",
              "parent_uuid": "0b299c99-69c1-4e4b-9df8-31c163c16c8e",
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
              "uuid": "7242df2f-a46f-4aaf-bd0b-cad36fedfdff",
              "parent_uuid": "0b299c99-69c1-4e4b-9df8-31c163c16c8e",
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
              "uuid": "66500529-0538-47c0-b67b-b7ea7eeebb71",
              "parent_uuid": "0b299c99-69c1-4e4b-9df8-31c163c16c8e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bc2ca55c-d8b6-4363-a0a8-673f44503b57",
                  "parent_uuid": "66500529-0538-47c0-b67b-b7ea7eeebb71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34da6824-8313-45d1-925e-89854f4b9fcd",
              "parent_uuid": "0b299c99-69c1-4e4b-9df8-31c163c16c8e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "09a2ce88-6e5c-4156-9406-37ac9bf22c9e",
                  "parent_uuid": "34da6824-8313-45d1-925e-89854f4b9fcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09ef6001-5d17-40b3-833e-1f345a8bb43b",
              "parent_uuid": "0b299c99-69c1-4e4b-9df8-31c163c16c8e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d3e6c4c4-fa30-4f21-85c5-980d036c915c",
                  "parent_uuid": "09ef6001-5d17-40b3-833e-1f345a8bb43b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27d00856-ea2e-4025-b308-95dafabfa5c2",
              "parent_uuid": "0b299c99-69c1-4e4b-9df8-31c163c16c8e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eb69c102-d343-44a5-8dc8-336e1aa45091",
                  "parent_uuid": "27d00856-ea2e-4025-b308-95dafabfa5c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "98dedb22-3693-4747-bd30-d81f3bb39cc5",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f0ee572-bccc-44a9-9430-d6ec98cb2cfd",
              "parent_uuid": "98dedb22-3693-4747-bd30-d81f3bb39cc5",
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
              "uuid": "7066f0a1-3cd6-4a9a-94b8-7de6515a19f6",
              "parent_uuid": "98dedb22-3693-4747-bd30-d81f3bb39cc5",
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
              "uuid": "650d2891-0e73-4806-8cd3-d6378d0e0366",
              "parent_uuid": "98dedb22-3693-4747-bd30-d81f3bb39cc5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f8b15e6f-934d-401d-a5a4-91c444dff0ee",
                  "parent_uuid": "650d2891-0e73-4806-8cd3-d6378d0e0366",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b69e58d0-dc2a-4a4d-87b6-37750f36519e",
              "parent_uuid": "98dedb22-3693-4747-bd30-d81f3bb39cc5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea559281-d7d3-4101-b936-c4ab82841f63",
                  "parent_uuid": "b69e58d0-dc2a-4a4d-87b6-37750f36519e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ceda817-0b79-438f-9c4b-f4843121106b",
              "parent_uuid": "98dedb22-3693-4747-bd30-d81f3bb39cc5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e19e9d41-ad6a-4d18-8165-59821af1be91",
                  "parent_uuid": "7ceda817-0b79-438f-9c4b-f4843121106b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5f37461-6914-4853-a10d-9189086b40d6",
              "parent_uuid": "98dedb22-3693-4747-bd30-d81f3bb39cc5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9e7167c5-256d-484d-8616-fdd365b01d1d",
                  "parent_uuid": "f5f37461-6914-4853-a10d-9189086b40d6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "33ef988f-36e5-458a-8cd8-2c024a74fc5b",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "daf40164-0d8a-4b97-9199-34c002f201a8",
              "parent_uuid": "33ef988f-36e5-458a-8cd8-2c024a74fc5b",
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
              "uuid": "fd3c1205-e2f2-41e3-83e5-8da2363e1dbb",
              "parent_uuid": "33ef988f-36e5-458a-8cd8-2c024a74fc5b",
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
              "uuid": "b725fed0-f813-4e92-b77d-7b442d62c3c2",
              "parent_uuid": "33ef988f-36e5-458a-8cd8-2c024a74fc5b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "079776bc-cf3c-4ba7-8265-65fb1b96e8a2",
                  "parent_uuid": "b725fed0-f813-4e92-b77d-7b442d62c3c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a5a48be-67a6-4672-8ea2-ae007751a9fc",
              "parent_uuid": "33ef988f-36e5-458a-8cd8-2c024a74fc5b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c7943733-047d-4226-bf7e-b61adae07c50",
                  "parent_uuid": "4a5a48be-67a6-4672-8ea2-ae007751a9fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eacd2827-859a-4877-b89b-c6f9ed26224a",
              "parent_uuid": "33ef988f-36e5-458a-8cd8-2c024a74fc5b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d7cb9930-f593-4292-a622-300acf2abe60",
                  "parent_uuid": "eacd2827-859a-4877-b89b-c6f9ed26224a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77888c19-be1a-456c-80cb-08a796b670cd",
              "parent_uuid": "33ef988f-36e5-458a-8cd8-2c024a74fc5b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c34d79bd-4abb-480f-9045-5620a96fce42",
                  "parent_uuid": "77888c19-be1a-456c-80cb-08a796b670cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ba26d32d-a860-4aaa-83df-2b54f3a99b44",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f0eb303c-19fb-47c6-ac3a-67c34f7acde7",
              "parent_uuid": "ba26d32d-a860-4aaa-83df-2b54f3a99b44",
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
          "uuid": "da9be5d0-ff9a-47ac-bb61-b2878cf82770",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d64f505-bfce-4ce3-a20f-7d98979817c8",
              "parent_uuid": "da9be5d0-ff9a-47ac-bb61-b2878cf82770",
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
          "uuid": "94cc2e26-fa8b-434d-a371-f6a835301bc0",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cffb4838-5920-4601-b324-acf9c29ecfc8",
              "parent_uuid": "94cc2e26-fa8b-434d-a371-f6a835301bc0",
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
                  "uuid": "727863a1-e198-4849-a01a-d786cbafea66",
                  "parent_uuid": "cffb4838-5920-4601-b324-acf9c29ecfc8",
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
          "uuid": "ccedc9f1-beb4-4438-ace4-5539228b094a",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "2f7d82e6-a3eb-42fc-9701-6f4b602f7799",
              "parent_uuid": "ccedc9f1-beb4-4438-ace4-5539228b094a",
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
          "uuid": "cde39f78-2428-4964-802f-d41d6eca81ed",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9cea01d7-6a77-4110-b475-3ae997878fe7",
              "parent_uuid": "cde39f78-2428-4964-802f-d41d6eca81ed",
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
          "uuid": "3eb4e1e7-bd64-4a79-91af-b08d061248b1",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "871747db-6a1f-493a-8b07-a30e08d7e2bf",
              "parent_uuid": "3eb4e1e7-bd64-4a79-91af-b08d061248b1",
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
              "uuid": "293a6544-ba30-4a57-889e-b0f6cf456189",
              "parent_uuid": "3eb4e1e7-bd64-4a79-91af-b08d061248b1",
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
              "uuid": "e0192435-f817-43e1-a99c-6b41609efbbe",
              "parent_uuid": "3eb4e1e7-bd64-4a79-91af-b08d061248b1",
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
              "uuid": "4023a3b4-fc25-4cb7-ac8e-d7b3dd64cf24",
              "parent_uuid": "3eb4e1e7-bd64-4a79-91af-b08d061248b1",
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
              "uuid": "6e55d01b-0c58-42f2-8581-80b3c72e96a2",
              "parent_uuid": "3eb4e1e7-bd64-4a79-91af-b08d061248b1",
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
              "uuid": "e8d44de9-5d2b-4293-976f-ce6bb54450db",
              "parent_uuid": "3eb4e1e7-bd64-4a79-91af-b08d061248b1",
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
          "uuid": "4c36a068-0308-4f6e-b798-547f8cb29d9a",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "89103994-6d32-415f-9c2d-9c695fe96dd0",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "528a4a56-fa2a-44d2-b3c9-3bb0081b3528",
              "parent_uuid": "89103994-6d32-415f-9c2d-9c695fe96dd0",
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
              "uuid": "bed69a45-a3f1-44c4-acb3-33fded67b53f",
              "parent_uuid": "89103994-6d32-415f-9c2d-9c695fe96dd0",
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
              "uuid": "2273add2-9e9d-4e9d-826d-7137d540eada",
              "parent_uuid": "89103994-6d32-415f-9c2d-9c695fe96dd0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b8d54122-fec3-4ccd-b4d7-1ca4bd92f35f",
                  "parent_uuid": "2273add2-9e9d-4e9d-826d-7137d540eada",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b05e8c2-8975-4c2a-8a33-d71687d89495",
              "parent_uuid": "89103994-6d32-415f-9c2d-9c695fe96dd0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f950627d-eeae-4f77-860a-ab8a50f6d984",
                  "parent_uuid": "9b05e8c2-8975-4c2a-8a33-d71687d89495",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ab880c0-6bd0-48c4-a811-05a031e748c6",
              "parent_uuid": "89103994-6d32-415f-9c2d-9c695fe96dd0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2b78d848-70d4-4b3d-a97f-79b1ecb034ef",
                  "parent_uuid": "7ab880c0-6bd0-48c4-a811-05a031e748c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e03e2552-29f2-4e47-ae40-7bf029761d99",
              "parent_uuid": "89103994-6d32-415f-9c2d-9c695fe96dd0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "033d4ebd-a4a5-4872-8cba-42cffe7329c5",
                  "parent_uuid": "e03e2552-29f2-4e47-ae40-7bf029761d99",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c173193-4349-46a8-aa63-62d1f57c3afc",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c188526-bbd2-4fbe-a1be-4b92b0ee9ed8",
              "parent_uuid": "4c173193-4349-46a8-aa63-62d1f57c3afc",
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
              "uuid": "769daaee-9b74-419e-ad55-85292adf5f2a",
              "parent_uuid": "4c173193-4349-46a8-aa63-62d1f57c3afc",
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
              "uuid": "d3031cb3-78da-4138-8031-5b3241a45488",
              "parent_uuid": "4c173193-4349-46a8-aa63-62d1f57c3afc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "88239b5b-5f76-4368-a5be-c996380f1232",
                  "parent_uuid": "d3031cb3-78da-4138-8031-5b3241a45488",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92e432ec-f6ed-423e-81cc-a6631801f09d",
              "parent_uuid": "4c173193-4349-46a8-aa63-62d1f57c3afc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "90fa91bc-a3f0-4202-b157-bfd0266f42ba",
                  "parent_uuid": "92e432ec-f6ed-423e-81cc-a6631801f09d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae0c3d70-02df-435c-a7de-1e8a5ffc5e7a",
              "parent_uuid": "4c173193-4349-46a8-aa63-62d1f57c3afc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a0bdd6b8-bdfc-4a5c-a89a-9a7143d6f7fc",
                  "parent_uuid": "ae0c3d70-02df-435c-a7de-1e8a5ffc5e7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f8cd9ab-9ba4-42bf-a675-08bdd84f4779",
              "parent_uuid": "4c173193-4349-46a8-aa63-62d1f57c3afc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c3116531-0cfd-4457-b984-b9ac2b23d516",
                  "parent_uuid": "2f8cd9ab-9ba4-42bf-a675-08bdd84f4779",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "82851574-7ed5-4d4f-94a7-38b5345829bc",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e26bd8d-88f6-45e0-aa56-b78b5c3d329d",
              "parent_uuid": "82851574-7ed5-4d4f-94a7-38b5345829bc",
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
              "uuid": "12ff5718-0b69-4e8c-801c-60dc7bea4dcc",
              "parent_uuid": "82851574-7ed5-4d4f-94a7-38b5345829bc",
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
              "uuid": "b7aa30e7-438a-4fb6-8cb6-474f8179eaa3",
              "parent_uuid": "82851574-7ed5-4d4f-94a7-38b5345829bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f564c528-df9c-4aad-b363-6971b9917bf8",
                  "parent_uuid": "b7aa30e7-438a-4fb6-8cb6-474f8179eaa3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "066235d5-404a-42ba-b255-9ed0aa2bf1a0",
              "parent_uuid": "82851574-7ed5-4d4f-94a7-38b5345829bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ff15ba2c-6061-403b-9726-3af1d98bd374",
                  "parent_uuid": "066235d5-404a-42ba-b255-9ed0aa2bf1a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19816f57-ea8c-4c23-83ab-641e98576e7f",
              "parent_uuid": "82851574-7ed5-4d4f-94a7-38b5345829bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9ed24474-8eb4-46c8-99a0-e95bda038d86",
                  "parent_uuid": "19816f57-ea8c-4c23-83ab-641e98576e7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f490ee51-f7e3-4462-b296-bce292409520",
              "parent_uuid": "82851574-7ed5-4d4f-94a7-38b5345829bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "68397208-3152-465b-8c8f-fd903a710233",
                  "parent_uuid": "f490ee51-f7e3-4462-b296-bce292409520",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e785e47-97e6-4f15-bda0-4c13d43d715b",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3a9163d-94bc-4d27-a18e-aacc7e9ac892",
              "parent_uuid": "4e785e47-97e6-4f15-bda0-4c13d43d715b",
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
              "uuid": "de415a4a-45db-485d-938b-238a57663d32",
              "parent_uuid": "4e785e47-97e6-4f15-bda0-4c13d43d715b",
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
              "uuid": "64f11627-365b-455f-ac5f-d2182347a87e",
              "parent_uuid": "4e785e47-97e6-4f15-bda0-4c13d43d715b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cb1b27e5-8ef9-4a74-9453-bd5f638e4d10",
                  "parent_uuid": "64f11627-365b-455f-ac5f-d2182347a87e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16633ed2-91a2-448d-aeb8-c9d3e47ab311",
              "parent_uuid": "4e785e47-97e6-4f15-bda0-4c13d43d715b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "15f34bdf-eb39-4fdc-b043-10a5d81e723e",
                  "parent_uuid": "16633ed2-91a2-448d-aeb8-c9d3e47ab311",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bdc88f7-508c-4928-8c9b-2a8c25b25c3e",
              "parent_uuid": "4e785e47-97e6-4f15-bda0-4c13d43d715b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "36b4ce84-be34-4c48-a8a6-9b28cde1d37b",
                  "parent_uuid": "4bdc88f7-508c-4928-8c9b-2a8c25b25c3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f5bbdd9-76e4-4755-9f9d-fa7f8d2bfcae",
              "parent_uuid": "4e785e47-97e6-4f15-bda0-4c13d43d715b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c49ca6d6-93d7-44c8-b62c-6f94e21a6082",
                  "parent_uuid": "2f5bbdd9-76e4-4755-9f9d-fa7f8d2bfcae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "072e23f0-0085-450e-8c50-6be5c0aee388",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4e23dd7-cf14-4be7-bd69-0eea180e23a9",
              "parent_uuid": "072e23f0-0085-450e-8c50-6be5c0aee388",
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
          "uuid": "9c2819cf-bc6d-4602-b7fb-88e8e534aeb3",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "006fa6f4-20e6-4d3e-b0ae-3c2805a3333f",
              "parent_uuid": "9c2819cf-bc6d-4602-b7fb-88e8e534aeb3",
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
          "uuid": "35bc3fe5-686c-4fdf-b00a-db24fbb717dd",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35f80ffa-ccb4-4cb2-9242-7eeec2205dd2",
              "parent_uuid": "35bc3fe5-686c-4fdf-b00a-db24fbb717dd",
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
                  "uuid": "19739380-809b-4b23-895a-0a2c080a48fc",
                  "parent_uuid": "35f80ffa-ccb4-4cb2-9242-7eeec2205dd2",
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
          "uuid": "3b3ab847-ec8d-4d9d-a138-6c93fda4ea66",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "9dc886d6-1de2-4eac-8dca-dc4050b06700",
              "parent_uuid": "3b3ab847-ec8d-4d9d-a138-6c93fda4ea66",
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
          "uuid": "c40f4a42-3045-4182-bbbc-5528b2ffd064",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0c27d4a3-9b1d-438a-9ef4-3fc2d5c77853",
              "parent_uuid": "c40f4a42-3045-4182-bbbc-5528b2ffd064",
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
          "uuid": "48afa80e-00df-46e3-91b1-d8501a58a9f6",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41833c6b-5f14-4f66-9492-3fcb810b9fa3",
              "parent_uuid": "48afa80e-00df-46e3-91b1-d8501a58a9f6",
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
              "uuid": "8049339f-e1eb-47aa-bb47-07bf0425131a",
              "parent_uuid": "48afa80e-00df-46e3-91b1-d8501a58a9f6",
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
              "uuid": "47a11aeb-5aaf-40cb-91fc-8159ced26adb",
              "parent_uuid": "48afa80e-00df-46e3-91b1-d8501a58a9f6",
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
              "uuid": "2ad9b0e5-c77a-4f1e-a9ca-1e49f0e1a343",
              "parent_uuid": "48afa80e-00df-46e3-91b1-d8501a58a9f6",
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
              "uuid": "b304d9a0-9a9c-4398-b545-9dfe80e8dc31",
              "parent_uuid": "48afa80e-00df-46e3-91b1-d8501a58a9f6",
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
              "uuid": "84b9d5c1-e49b-4c1d-8ac6-16c262ecca68",
              "parent_uuid": "48afa80e-00df-46e3-91b1-d8501a58a9f6",
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
          "uuid": "62f00578-b0bf-4371-9386-d8bb8cdf3a45",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96ff2222-0448-4e9f-bc2a-1becf79eb592",
              "parent_uuid": "62f00578-b0bf-4371-9386-d8bb8cdf3a45",
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
              "uuid": "7e519711-5615-4cc6-b767-8bb17e9682a2",
              "parent_uuid": "62f00578-b0bf-4371-9386-d8bb8cdf3a45",
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
              "uuid": "6ec29817-d322-4fb9-8c9f-ab0effcffbf3",
              "parent_uuid": "62f00578-b0bf-4371-9386-d8bb8cdf3a45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d7c046f8-734a-4e8f-8aca-ad9bd75e6b41",
                  "parent_uuid": "6ec29817-d322-4fb9-8c9f-ab0effcffbf3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d610f095-19a1-44e3-99ba-cf78b3664c2c",
              "parent_uuid": "62f00578-b0bf-4371-9386-d8bb8cdf3a45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8ccf44c8-4f2a-40e2-8160-ce393ca3f511",
                  "parent_uuid": "d610f095-19a1-44e3-99ba-cf78b3664c2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7e54bb5-4c9a-48ad-8bbe-6d9ca0f1301e",
              "parent_uuid": "62f00578-b0bf-4371-9386-d8bb8cdf3a45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f0669a9b-441e-4bb3-a307-0b7d2c1e02d9",
                  "parent_uuid": "b7e54bb5-4c9a-48ad-8bbe-6d9ca0f1301e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a1eecbb-ab74-40c7-b543-585a065329b1",
              "parent_uuid": "62f00578-b0bf-4371-9386-d8bb8cdf3a45",
              "tagName": "td",
              "properties": [
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
                  "uuid": "258ae251-2147-413f-884e-837c39e3935a",
                  "parent_uuid": "8a1eecbb-ab74-40c7-b543-585a065329b1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ff949937-9411-4978-8bfc-db75d0841e14",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8f23c8a-080a-4792-8bc6-9fcba9008b41",
              "parent_uuid": "ff949937-9411-4978-8bfc-db75d0841e14",
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
              "uuid": "c6905f4e-c136-46ea-94ca-90d02130233c",
              "parent_uuid": "ff949937-9411-4978-8bfc-db75d0841e14",
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
              "uuid": "94eb6070-bc42-4c12-8fc4-9437ee832fa8",
              "parent_uuid": "ff949937-9411-4978-8bfc-db75d0841e14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aba3b796-0b09-48f1-9a28-cc7e1af5ffca",
                  "parent_uuid": "94eb6070-bc42-4c12-8fc4-9437ee832fa8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "329bc851-37e2-4796-823b-1afb220a0141",
              "parent_uuid": "ff949937-9411-4978-8bfc-db75d0841e14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6a29fa08-4389-45c6-99ee-122b8e994685",
                  "parent_uuid": "329bc851-37e2-4796-823b-1afb220a0141",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80311f60-e6b3-4a1b-960f-475601728853",
              "parent_uuid": "ff949937-9411-4978-8bfc-db75d0841e14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "942d18ec-e9ff-4e0d-a024-17cd4a7f304a",
                  "parent_uuid": "80311f60-e6b3-4a1b-960f-475601728853",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a942e6cb-bdb4-4d2c-aaca-097a30cb208c",
              "parent_uuid": "ff949937-9411-4978-8bfc-db75d0841e14",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b1912256-411b-4879-8da9-9dbf7792611c",
                  "parent_uuid": "a942e6cb-bdb4-4d2c-aaca-097a30cb208c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c8f64db-f9d4-42e0-aad0-3ac8389915bf",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b5901b4e-9681-4a31-b3e2-02396c6ca8c2",
              "parent_uuid": "7c8f64db-f9d4-42e0-aad0-3ac8389915bf",
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
              "uuid": "c255a93f-3f06-473d-83fd-9ea1450d2764",
              "parent_uuid": "7c8f64db-f9d4-42e0-aad0-3ac8389915bf",
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
              "uuid": "9c5eab67-7cd5-4273-8df4-e65c37f0cadf",
              "parent_uuid": "7c8f64db-f9d4-42e0-aad0-3ac8389915bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c5f5000c-40df-47c8-b4aa-8427aa24119a",
                  "parent_uuid": "9c5eab67-7cd5-4273-8df4-e65c37f0cadf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73cdacd1-e9e4-4713-bd94-04176d26f901",
              "parent_uuid": "7c8f64db-f9d4-42e0-aad0-3ac8389915bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ae83511b-07cb-4c1a-98d0-69f1697ba26e",
                  "parent_uuid": "73cdacd1-e9e4-4713-bd94-04176d26f901",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c93880cb-64fb-4760-85a5-5c5099ebd5e2",
              "parent_uuid": "7c8f64db-f9d4-42e0-aad0-3ac8389915bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "97d27d1f-0c47-43ab-9356-49f5d8343332",
                  "parent_uuid": "c93880cb-64fb-4760-85a5-5c5099ebd5e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3909ee8-0d5b-4ef5-8d4c-2a1a2cacec52",
              "parent_uuid": "7c8f64db-f9d4-42e0-aad0-3ac8389915bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0b4d8fcd-8309-4305-98de-df7f8599d974",
                  "parent_uuid": "d3909ee8-0d5b-4ef5-8d4c-2a1a2cacec52",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a38d334d-c504-46d0-8c81-ae286541e379",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc6dcd3e-f829-4863-bf16-16eb2fdff545",
              "parent_uuid": "a38d334d-c504-46d0-8c81-ae286541e379",
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
              "uuid": "b55d06ae-3cb5-496e-9e7f-b750dfefaeeb",
              "parent_uuid": "a38d334d-c504-46d0-8c81-ae286541e379",
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
              "uuid": "b6d7c938-facc-42c0-a757-07d5e4b10cc7",
              "parent_uuid": "a38d334d-c504-46d0-8c81-ae286541e379",
              "tagName": "td",
              "properties": [
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
                  "uuid": "00788690-c261-41f8-982d-c6334fb4c51a",
                  "parent_uuid": "b6d7c938-facc-42c0-a757-07d5e4b10cc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2517be18-ade4-4f47-9812-6e477be68e78",
              "parent_uuid": "a38d334d-c504-46d0-8c81-ae286541e379",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7ff7d860-0e57-4a4f-b75f-e997f5061926",
                  "parent_uuid": "2517be18-ade4-4f47-9812-6e477be68e78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42585e5a-045a-468a-8650-f9d17e737f5d",
              "parent_uuid": "a38d334d-c504-46d0-8c81-ae286541e379",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a706537f-31af-4b78-90e3-8a5e33566fc3",
                  "parent_uuid": "42585e5a-045a-468a-8650-f9d17e737f5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d07cd91e-230e-4d26-8c3e-d641903fccd4",
              "parent_uuid": "a38d334d-c504-46d0-8c81-ae286541e379",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7952b445-6633-4e6c-9cbf-039740534a95",
                  "parent_uuid": "d07cd91e-230e-4d26-8c3e-d641903fccd4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ae38f00c-5be3-4c97-b4f8-abc43753d851",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6835e997-66df-4867-b276-8395a6f335d0",
              "parent_uuid": "ae38f00c-5be3-4c97-b4f8-abc43753d851",
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
              "uuid": "7e9c6cc9-4b0f-4fc4-8406-6759dcea884e",
              "parent_uuid": "ae38f00c-5be3-4c97-b4f8-abc43753d851",
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
              "uuid": "1cfb0ead-905e-43fc-826c-9da90980d85f",
              "parent_uuid": "ae38f00c-5be3-4c97-b4f8-abc43753d851",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d1daf9fe-ae96-4ab9-be09-73438780e627",
                  "parent_uuid": "1cfb0ead-905e-43fc-826c-9da90980d85f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "baa1551a-7bfc-4b02-bc3b-bf870218b1d7",
              "parent_uuid": "ae38f00c-5be3-4c97-b4f8-abc43753d851",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0de5c35b-e0f6-4115-b503-3530bef5da8a",
                  "parent_uuid": "baa1551a-7bfc-4b02-bc3b-bf870218b1d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e118a225-fdf8-4f3d-9d4c-69e39329ebaf",
              "parent_uuid": "ae38f00c-5be3-4c97-b4f8-abc43753d851",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ecaabce3-d0e0-4044-926f-a05acc038bd8",
                  "parent_uuid": "e118a225-fdf8-4f3d-9d4c-69e39329ebaf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81afbc57-7cad-44c4-8c8c-f731ea5d1880",
              "parent_uuid": "ae38f00c-5be3-4c97-b4f8-abc43753d851",
              "tagName": "td",
              "properties": [
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
                  "uuid": "abf1347c-3cc5-412b-8544-a4425735e130",
                  "parent_uuid": "81afbc57-7cad-44c4-8c8c-f731ea5d1880",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d2cef19e-8b22-4786-a12d-9e1e0990588b",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e958b49e-ea4c-4dd7-8992-8162afeb6bbe",
              "parent_uuid": "d2cef19e-8b22-4786-a12d-9e1e0990588b",
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
              "uuid": "5e80fea5-d8ed-4ba1-b908-dc822fb0bf00",
              "parent_uuid": "d2cef19e-8b22-4786-a12d-9e1e0990588b",
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
              "uuid": "902e45e8-7a09-4038-9c39-f32a8090fbd6",
              "parent_uuid": "d2cef19e-8b22-4786-a12d-9e1e0990588b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "13d7b529-648e-4c46-b4b9-84689d60038d",
                  "parent_uuid": "902e45e8-7a09-4038-9c39-f32a8090fbd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a988e697-76ec-40a7-963e-d721b1444be9",
              "parent_uuid": "d2cef19e-8b22-4786-a12d-9e1e0990588b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "96cb08b7-0a15-4cd1-8ea6-1586a15eaae8",
                  "parent_uuid": "a988e697-76ec-40a7-963e-d721b1444be9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dca929fb-65c9-4096-9afe-1581c057b445",
              "parent_uuid": "d2cef19e-8b22-4786-a12d-9e1e0990588b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea662aaa-d6d6-415f-a051-2cad12a5e0e6",
                  "parent_uuid": "dca929fb-65c9-4096-9afe-1581c057b445",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f606d4bc-00c7-4f4d-9481-74875e82f781",
              "parent_uuid": "d2cef19e-8b22-4786-a12d-9e1e0990588b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7f29be7c-66b3-487a-9214-1191b10b5647",
                  "parent_uuid": "f606d4bc-00c7-4f4d-9481-74875e82f781",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e59ecd86-4ec3-49ff-a249-0a0d0ae6c96b",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3580f00-1af2-4bae-b30f-55397bbbf166",
              "parent_uuid": "e59ecd86-4ec3-49ff-a249-0a0d0ae6c96b",
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
          "uuid": "2523e8c8-be9b-45c7-91a7-b44e3a395532",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4744e527-2d85-4113-a1d5-2fe967d0dd4a",
              "parent_uuid": "2523e8c8-be9b-45c7-91a7-b44e3a395532",
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
          "uuid": "7fb7b0bf-3852-4f47-b875-881243f01159",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a60185ee-94e9-4708-9233-c53d2da0e178",
              "parent_uuid": "7fb7b0bf-3852-4f47-b875-881243f01159",
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
                  "uuid": "1bbb1c37-b570-49b7-ba55-839cf1a4816a",
                  "parent_uuid": "a60185ee-94e9-4708-9233-c53d2da0e178",
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
          "uuid": "04ac616e-aa4b-4753-ad95-81e6e9445c92",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3d6a09c-446d-4525-876b-91291b0e5079",
              "parent_uuid": "04ac616e-aa4b-4753-ad95-81e6e9445c92",
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
          "uuid": "3fcc14ec-9961-42cf-8549-4eb2ff78d6cd",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "117d312c-076b-45a7-ab2f-9905183696d1",
              "parent_uuid": "3fcc14ec-9961-42cf-8549-4eb2ff78d6cd",
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
          "uuid": "bae5e766-ba46-4df2-b7d3-29db64da207e",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba4b29e7-935a-46d6-a1b1-9b9a983b8622",
              "parent_uuid": "bae5e766-ba46-4df2-b7d3-29db64da207e",
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
              "uuid": "49c1b536-44ea-4cbb-ab7b-a76898ee7a19",
              "parent_uuid": "bae5e766-ba46-4df2-b7d3-29db64da207e",
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
              "uuid": "efa43c56-8e11-41dd-870f-fd54314832e6",
              "parent_uuid": "bae5e766-ba46-4df2-b7d3-29db64da207e",
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
              "uuid": "dff67122-8aac-48f6-804b-2ddc15d93f38",
              "parent_uuid": "bae5e766-ba46-4df2-b7d3-29db64da207e",
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
              "uuid": "c0cdec61-c99d-47fa-88e1-8bf44288d327",
              "parent_uuid": "bae5e766-ba46-4df2-b7d3-29db64da207e",
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
          "uuid": "c7bea581-6467-48eb-b848-3266276bd6f4",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1fe2ef2-8112-453f-bd45-0afa17850f8a",
              "parent_uuid": "c7bea581-6467-48eb-b848-3266276bd6f4",
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
              "uuid": "8d26ca07-368b-4527-b0af-9e70c226016b",
              "parent_uuid": "c7bea581-6467-48eb-b848-3266276bd6f4",
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
              "uuid": "b0db9121-d06a-4ecb-9791-0ca73d1f2c82",
              "parent_uuid": "c7bea581-6467-48eb-b848-3266276bd6f4",
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
              "uuid": "5dc75c65-2107-4c3a-9f29-54266a80ac9f",
              "parent_uuid": "c7bea581-6467-48eb-b848-3266276bd6f4",
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
              "uuid": "f55aef95-c806-4579-b476-353f83ca5fb1",
              "parent_uuid": "c7bea581-6467-48eb-b848-3266276bd6f4",
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
          "uuid": "7c1786d7-bd95-40ee-8887-77b28a6b678c",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d07b0070-72a0-4658-b29a-cb8dfccc9d50",
              "parent_uuid": "7c1786d7-bd95-40ee-8887-77b28a6b678c",
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
              "uuid": "f2ab41dd-89b8-4a5a-82c0-fde5baf9dc44",
              "parent_uuid": "7c1786d7-bd95-40ee-8887-77b28a6b678c",
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
              "uuid": "0d51bc06-37a0-4444-a60c-9a465f4edb7b",
              "parent_uuid": "7c1786d7-bd95-40ee-8887-77b28a6b678c",
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
              "uuid": "45e60287-c583-45a7-9b54-5ebf86ae1534",
              "parent_uuid": "7c1786d7-bd95-40ee-8887-77b28a6b678c",
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
              "uuid": "35abd784-50af-4a02-9291-10a37d12942f",
              "parent_uuid": "7c1786d7-bd95-40ee-8887-77b28a6b678c",
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
          "uuid": "6c55dcdb-e137-4744-8fb8-14b1b043d46d",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b530c1af-21f6-45fa-b317-5f7ce2a5403d",
              "parent_uuid": "6c55dcdb-e137-4744-8fb8-14b1b043d46d",
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
              "uuid": "3a3e91dc-c98c-4e4c-bc7c-e46e77690cbc",
              "parent_uuid": "6c55dcdb-e137-4744-8fb8-14b1b043d46d",
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
              "uuid": "296b6d02-90c4-4762-af86-6c35a732ac75",
              "parent_uuid": "6c55dcdb-e137-4744-8fb8-14b1b043d46d",
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
              "uuid": "c15ee510-7876-42d0-bbcb-0d55c92b5d41",
              "parent_uuid": "6c55dcdb-e137-4744-8fb8-14b1b043d46d",
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
              "uuid": "a7051589-9fb4-4f64-bb8e-489d0271ffb2",
              "parent_uuid": "6c55dcdb-e137-4744-8fb8-14b1b043d46d",
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
          "uuid": "6b189eb0-bde8-4437-a73a-849fdb4dead1",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "157a37a6-f8d7-49d7-84c5-d19d6867a932",
              "parent_uuid": "6b189eb0-bde8-4437-a73a-849fdb4dead1",
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
              "uuid": "7d319f78-8f25-4a40-af6a-5c81d92588e5",
              "parent_uuid": "6b189eb0-bde8-4437-a73a-849fdb4dead1",
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
              "uuid": "4f3af975-1715-4676-80ba-1b81d7a8ce71",
              "parent_uuid": "6b189eb0-bde8-4437-a73a-849fdb4dead1",
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
              "uuid": "f863d25f-176d-4501-bde0-3508ab4925f4",
              "parent_uuid": "6b189eb0-bde8-4437-a73a-849fdb4dead1",
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
              "uuid": "1a1d93ea-19f8-4f9c-8a5a-8b5a6256253d",
              "parent_uuid": "6b189eb0-bde8-4437-a73a-849fdb4dead1",
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
          "uuid": "e53c3464-8b94-44a0-bcbd-06cea14bc6c3",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06e22ad5-74b2-401f-972e-31f19f5aafd1",
              "parent_uuid": "e53c3464-8b94-44a0-bcbd-06cea14bc6c3",
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
              "uuid": "2c13ea5a-5950-47c1-9dec-75b4a618b3f5",
              "parent_uuid": "e53c3464-8b94-44a0-bcbd-06cea14bc6c3",
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
              "uuid": "f2e0f8cd-dcdd-4a38-9f08-cb5214bf5b89",
              "parent_uuid": "e53c3464-8b94-44a0-bcbd-06cea14bc6c3",
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
              "uuid": "e93647b4-0eba-46a5-9095-31ac6eafe57d",
              "parent_uuid": "e53c3464-8b94-44a0-bcbd-06cea14bc6c3",
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
              "uuid": "d80e8fa8-6a35-4116-bf0d-ec10bfa18805",
              "parent_uuid": "e53c3464-8b94-44a0-bcbd-06cea14bc6c3",
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
          "uuid": "4cd59a1a-c61c-4c27-9ebc-7c8196a77801",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aebbe75a-3ee8-4bf0-addd-e65bd7c2db0a",
              "parent_uuid": "4cd59a1a-c61c-4c27-9ebc-7c8196a77801",
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
              "uuid": "49e79d5e-ccb4-4fc6-a0e7-93dc63bdf891",
              "parent_uuid": "4cd59a1a-c61c-4c27-9ebc-7c8196a77801",
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
              "uuid": "801c7c0b-3d86-4cbe-a9ce-48ec0386d6a5",
              "parent_uuid": "4cd59a1a-c61c-4c27-9ebc-7c8196a77801",
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
              "uuid": "4d389496-3ec1-40c4-a5a2-a0b1f5087e4b",
              "parent_uuid": "4cd59a1a-c61c-4c27-9ebc-7c8196a77801",
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
              "uuid": "4aa10ac3-c81f-447d-9477-330e5b7d5ddb",
              "parent_uuid": "4cd59a1a-c61c-4c27-9ebc-7c8196a77801",
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
          "uuid": "51359898-97c8-49dc-bddd-4238fe6dcd44",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64de4754-99d8-4488-b66e-19238a599bf6",
              "parent_uuid": "51359898-97c8-49dc-bddd-4238fe6dcd44",
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
              "uuid": "4a0755f4-4116-409b-9213-d0e53ffe4640",
              "parent_uuid": "51359898-97c8-49dc-bddd-4238fe6dcd44",
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
              "uuid": "16d7b5a2-7fc6-4533-8b5d-e93c10f78b8b",
              "parent_uuid": "51359898-97c8-49dc-bddd-4238fe6dcd44",
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
              "uuid": "1d8b8bef-27a9-4277-82e4-9a511f244221",
              "parent_uuid": "51359898-97c8-49dc-bddd-4238fe6dcd44",
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
              "uuid": "1feec113-7ea0-48bf-846a-b1db4485b9c5",
              "parent_uuid": "51359898-97c8-49dc-bddd-4238fe6dcd44",
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
          "uuid": "2c11015a-dbed-4709-9a12-3ad425ccfeb8",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "abdcc22e-595c-470f-a073-5ede484e94c7",
              "parent_uuid": "2c11015a-dbed-4709-9a12-3ad425ccfeb8",
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
              "uuid": "88cddf89-d092-4590-a660-13eac76e873c",
              "parent_uuid": "2c11015a-dbed-4709-9a12-3ad425ccfeb8",
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
              "uuid": "bce58dfe-c370-44ff-9784-95b72056a142",
              "parent_uuid": "2c11015a-dbed-4709-9a12-3ad425ccfeb8",
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
              "uuid": "d25f0962-3648-4040-baba-05ebaf9be95b",
              "parent_uuid": "2c11015a-dbed-4709-9a12-3ad425ccfeb8",
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
              "uuid": "d3fd8368-6a08-4996-9761-2dcc8bdbe1ad",
              "parent_uuid": "2c11015a-dbed-4709-9a12-3ad425ccfeb8",
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
          "uuid": "b368932b-5feb-4b41-8289-7493e5148172",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8aeb46fd-2910-430e-8213-fcf30ac0dcfb",
              "parent_uuid": "b368932b-5feb-4b41-8289-7493e5148172",
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
              "uuid": "ee057dad-17c5-4865-a001-c70ea6e8b0a6",
              "parent_uuid": "b368932b-5feb-4b41-8289-7493e5148172",
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
              "uuid": "b43fc845-fbb1-47d9-b7b2-dbb4dcfff7b6",
              "parent_uuid": "b368932b-5feb-4b41-8289-7493e5148172",
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
              "uuid": "b7cf7320-7f8b-43ee-85c8-24298361e613",
              "parent_uuid": "b368932b-5feb-4b41-8289-7493e5148172",
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
              "uuid": "215b1344-186a-44a4-9b96-81b202f7bda4",
              "parent_uuid": "b368932b-5feb-4b41-8289-7493e5148172",
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
          "uuid": "96f402bd-7fff-49ed-818d-effe679d40cd",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8ad1fa4-585a-47df-ac16-54fde32017ae",
              "parent_uuid": "96f402bd-7fff-49ed-818d-effe679d40cd",
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
              "uuid": "836281ac-38e9-4df4-b888-d113483e5aa6",
              "parent_uuid": "96f402bd-7fff-49ed-818d-effe679d40cd",
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
              "uuid": "d2db7e6c-7d16-436a-950f-2941f0d2ee99",
              "parent_uuid": "96f402bd-7fff-49ed-818d-effe679d40cd",
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
              "uuid": "5a3d3df9-cd16-42d5-bfa6-54cf1535bf3e",
              "parent_uuid": "96f402bd-7fff-49ed-818d-effe679d40cd",
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
              "uuid": "7b7f9d7c-588e-4d8b-8410-790d0cf61196",
              "parent_uuid": "96f402bd-7fff-49ed-818d-effe679d40cd",
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
          "uuid": "af7b2c33-2a5c-490a-b30b-3c48253393a3",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c249c69-3c2f-4b4a-9f76-7003f83823df",
              "parent_uuid": "af7b2c33-2a5c-490a-b30b-3c48253393a3",
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
              "uuid": "e3399d26-d731-4fd9-8a34-57dbfa89762e",
              "parent_uuid": "af7b2c33-2a5c-490a-b30b-3c48253393a3",
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
              "uuid": "5362c522-f333-4f2e-8012-492476297d81",
              "parent_uuid": "af7b2c33-2a5c-490a-b30b-3c48253393a3",
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
              "uuid": "1af090f7-6695-48e5-9ae3-2a574213283b",
              "parent_uuid": "af7b2c33-2a5c-490a-b30b-3c48253393a3",
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
              "uuid": "c09f7f7e-6259-45ad-ae96-543842388235",
              "parent_uuid": "af7b2c33-2a5c-490a-b30b-3c48253393a3",
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
          "uuid": "cf483b53-b9f4-4a63-aa6b-ad122a80bda1",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "967cc61d-ebc5-4330-8327-7fa9ffb41841",
              "parent_uuid": "cf483b53-b9f4-4a63-aa6b-ad122a80bda1",
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
              "uuid": "e9845768-9e60-44b6-85da-6a4da5a4af6c",
              "parent_uuid": "cf483b53-b9f4-4a63-aa6b-ad122a80bda1",
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
              "uuid": "015fbf8e-1daa-400b-b1ec-10e5dfcd01b5",
              "parent_uuid": "cf483b53-b9f4-4a63-aa6b-ad122a80bda1",
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
              "uuid": "f0cc7c68-d556-4a45-b873-60da9f1a2750",
              "parent_uuid": "cf483b53-b9f4-4a63-aa6b-ad122a80bda1",
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
              "uuid": "4f62bfe5-bac8-4bdf-9650-533187627daf",
              "parent_uuid": "cf483b53-b9f4-4a63-aa6b-ad122a80bda1",
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
          "uuid": "f1191aa6-1f90-4b0d-9dd7-75292400eb35",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5669f6e-8e61-4829-9abf-d956c6356fbf",
              "parent_uuid": "f1191aa6-1f90-4b0d-9dd7-75292400eb35",
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
          "uuid": "cc7d0226-9f6a-4093-9c77-93f4d1dd3820",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2f89220-47c4-4825-8d20-49697973bc01",
              "parent_uuid": "cc7d0226-9f6a-4093-9c77-93f4d1dd3820",
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
          "uuid": "4cb0c19e-ff36-4899-b67a-e2f348cc7010",
          "parent_uuid": "4ee5b328-c573-49e5-a744-cdb81f3bbe7a",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c87d1f3-6787-4cc8-b14b-f6e884d30820",
              "parent_uuid": "4cb0c19e-ff36-4899-b67a-e2f348cc7010",
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
                  "uuid": "a4816643-4e17-4601-bf69-6ecce3b30151",
                  "parent_uuid": "1c87d1f3-6787-4cc8-b14b-f6e884d30820",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

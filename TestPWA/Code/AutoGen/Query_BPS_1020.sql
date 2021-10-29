
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
  "uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "528a1a44-cf75-42da-a3b2-ccba01115bc8",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "070a879f-9923-4a89-b39d-31d0be395395",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "9d5969b7-8987-47ba-bc30-ad5628e1717d",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "b0a60746-43a0-46b1-ac1c-0a6cd3564bc6",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "f7103326-bcff-4833-9a31-e245748dc23c",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "f4acebb0-1518-406d-a232-6affe9503afc",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "e331685c-fb38-4bdd-a983-863980863f51",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
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
      "uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
      "parent_uuid": "53a324f5-4fa2-42b0-9a1e-4af8bef3fcea",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1797a84a-068a-4790-a779-0e79a5873eaf",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "c7e66135-4f22-4f51-bd07-8a82c58e3a86",
              "parent_uuid": "1797a84a-068a-4790-a779-0e79a5873eaf",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e4a3dbeb-1795-46a7-8363-f5d51b4c3a22",
              "parent_uuid": "1797a84a-068a-4790-a779-0e79a5873eaf",
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
              "uuid": "d19bafc9-f515-41c8-a1bb-d72c7839fdb5",
              "parent_uuid": "1797a84a-068a-4790-a779-0e79a5873eaf",
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
              "uuid": "1c5262cb-3767-47c9-bc07-a8fad158ef66",
              "parent_uuid": "1797a84a-068a-4790-a779-0e79a5873eaf",
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
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<span>Bargeldgewerk:     BPS 1020</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "07218125-0a0a-483c-a814-b3dbc51c9cd7",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "b04e0d14-3ca3-4d27-b6c0-161933933f79",
              "parent_uuid": "07218125-0a0a-483c-a814-b3dbc51c9cd7",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Wartungsfirma:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "489f8f83-0a31-4ded-8861-6eea7fbea4e5",
              "parent_uuid": "07218125-0a0a-483c-a814-b3dbc51c9cd7",
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
              "uuid": "82820b29-cb4d-4e8f-887c-e362d7cd5c5c",
              "parent_uuid": "07218125-0a0a-483c-a814-b3dbc51c9cd7",
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
              "uuid": "dd7b46fb-f525-49cb-864c-3e9f6e2ac598",
              "parent_uuid": "07218125-0a0a-483c-a814-b3dbc51c9cd7",
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
              "innerHtml": "<span>Servicetechniker:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 1,
          "lvl": 0
        },
        {
          "uuid": "04104ced-c5e7-4d9e-b726-0c966e3601ff",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "55dc272b-7bb1-4f34-9cf9-704f7214d5f3",
              "parent_uuid": "04104ced-c5e7-4d9e-b726-0c966e3601ff",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 2px solid #000000"
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
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "<span>Stunden:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "76e487e6-58e6-42cb-a04c-3d09b2b697cf",
              "parent_uuid": "04104ced-c5e7-4d9e-b726-0c966e3601ff",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f6e13e4e-ff45-427d-93a2-3cc2dff6fcf2",
              "parent_uuid": "04104ced-c5e7-4d9e-b726-0c966e3601ff",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "051a95ea-3796-48e3-adfa-9272b7de45bf",
              "parent_uuid": "04104ced-c5e7-4d9e-b726-0c966e3601ff",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
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
              "innerHtml": "<span>Noten:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "03d6d94f-0c39-4f49-9d63-35c8ae6790dc",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42015a9a-13b6-460d-9334-6c851aff87c8",
              "parent_uuid": "03d6d94f-0c39-4f49-9d63-35c8ae6790dc",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "29605457-e0bf-4d6f-a596-22ff83449386",
              "parent_uuid": "03d6d94f-0c39-4f49-9d63-35c8ae6790dc",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d1f71afa-b04e-4810-9242-796ff096eba6",
              "parent_uuid": "03d6d94f-0c39-4f49-9d63-35c8ae6790dc",
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
              "uuid": "23991ef8-844e-4565-bdbf-ef19cbbc3170",
              "parent_uuid": "03d6d94f-0c39-4f49-9d63-35c8ae6790dc",
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
              "uuid": "e54ff717-d490-43e7-8906-304009cbb441",
              "parent_uuid": "03d6d94f-0c39-4f49-9d63-35c8ae6790dc",
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
              "uuid": "6aed913d-14a7-440f-a836-53d22c415ee3",
              "parent_uuid": "03d6d94f-0c39-4f49-9d63-35c8ae6790dc",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "ca4bcb13-203a-432a-a9c3-b8668f84e840",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9f47a318-a782-4680-8dcf-0378f8c9f8c4",
              "parent_uuid": "ca4bcb13-203a-432a-a9c3-b8668f84e840",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "3fd6fc7e-8f6c-41dc-a10c-ea2e006866f8",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81a948a1-9de1-4ad5-9800-1923c6a44eae",
              "parent_uuid": "3fd6fc7e-8f6c-41dc-a10c-ea2e006866f8",
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
              "uuid": "329a236f-2b31-4164-9a57-8db92fced3fb",
              "parent_uuid": "3fd6fc7e-8f6c-41dc-a10c-ea2e006866f8",
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
              "uuid": "f11201c1-a0ca-41c7-89f7-597fb820f2e4",
              "parent_uuid": "3fd6fc7e-8f6c-41dc-a10c-ea2e006866f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a4c52ac-9daf-4292-a515-d5fb102fe24f",
                  "parent_uuid": "f11201c1-a0ca-41c7-89f7-597fb820f2e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba079981-4bc8-447c-b861-81c84b12adad",
              "parent_uuid": "3fd6fc7e-8f6c-41dc-a10c-ea2e006866f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "033f89c0-bcae-4600-abc5-f3b94c1eb83d",
                  "parent_uuid": "ba079981-4bc8-447c-b861-81c84b12adad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63fc8914-b148-4659-b240-8b39e4ca5839",
              "parent_uuid": "3fd6fc7e-8f6c-41dc-a10c-ea2e006866f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1864f64c-ee93-4ac5-97fa-4d0074271990",
                  "parent_uuid": "63fc8914-b148-4659-b240-8b39e4ca5839",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d6f8e98-407c-43a9-a6eb-62fa4c0bdf37",
              "parent_uuid": "3fd6fc7e-8f6c-41dc-a10c-ea2e006866f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf960275-a2ff-4a58-92ed-bafadd1f6f8a",
                  "parent_uuid": "8d6f8e98-407c-43a9-a6eb-62fa4c0bdf37",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1a014619-60d6-4edb-a55c-9dede28c06fc",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d3fa137-9fc6-4ca5-9653-8239cc69b934",
              "parent_uuid": "1a014619-60d6-4edb-a55c-9dede28c06fc",
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
              "uuid": "a593a7f2-f49b-4225-be19-7f9458145b63",
              "parent_uuid": "1a014619-60d6-4edb-a55c-9dede28c06fc",
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
              "uuid": "6b9ec2bd-fc3f-4518-acbb-bdd2e2ae9a39",
              "parent_uuid": "1a014619-60d6-4edb-a55c-9dede28c06fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e2eba58-ece1-4379-8af1-8ecd5a2efaff",
                  "parent_uuid": "6b9ec2bd-fc3f-4518-acbb-bdd2e2ae9a39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cac212f0-4212-4dda-9293-7027e9625f1d",
              "parent_uuid": "1a014619-60d6-4edb-a55c-9dede28c06fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62147bea-ebac-4174-8cdf-8524df73438d",
                  "parent_uuid": "cac212f0-4212-4dda-9293-7027e9625f1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4d1b824-7883-4ffd-9fe7-26dfef180421",
              "parent_uuid": "1a014619-60d6-4edb-a55c-9dede28c06fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d518d370-3cb8-4c97-9bad-479582efeafe",
                  "parent_uuid": "a4d1b824-7883-4ffd-9fe7-26dfef180421",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "deb39e5f-801b-4bc4-9cfe-83eb81e65cdd",
              "parent_uuid": "1a014619-60d6-4edb-a55c-9dede28c06fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e937aa89-e54d-4fea-92d1-5878be41c98e",
                  "parent_uuid": "deb39e5f-801b-4bc4-9cfe-83eb81e65cdd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "545b8f6e-c6e3-4adc-b005-82b1ce9dd7fa",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d119d42-7cd2-4720-b5f8-b74425498e04",
              "parent_uuid": "545b8f6e-c6e3-4adc-b005-82b1ce9dd7fa",
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
              "innerHtml": "\r\n                    <span>Antriebsriemen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "096c6813-1bda-4ebd-9c16-643228373f39",
              "parent_uuid": "545b8f6e-c6e3-4adc-b005-82b1ce9dd7fa",
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
              "innerHtml": "<span>74</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0a5ecf28-8da3-422a-97a4-2e05c090ca51",
              "parent_uuid": "545b8f6e-c6e3-4adc-b005-82b1ce9dd7fa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "899a29f8-4b95-48a7-a50e-2ae1f464b9b3",
                  "parent_uuid": "0a5ecf28-8da3-422a-97a4-2e05c090ca51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c292f26f-2e35-471b-ae68-62be67448ebb",
              "parent_uuid": "545b8f6e-c6e3-4adc-b005-82b1ce9dd7fa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aedd7958-13d8-477c-8b74-79f8fe19e8a3",
                  "parent_uuid": "c292f26f-2e35-471b-ae68-62be67448ebb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39ee1da5-8db2-4b14-8e70-5a9a251da2cf",
              "parent_uuid": "545b8f6e-c6e3-4adc-b005-82b1ce9dd7fa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "adb0a6b7-9767-48fc-ba94-2c17c8e54f9a",
                  "parent_uuid": "39ee1da5-8db2-4b14-8e70-5a9a251da2cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "187e4ebb-cbf1-4eaa-b4ff-2ac2b1f9aa66",
              "parent_uuid": "545b8f6e-c6e3-4adc-b005-82b1ce9dd7fa",
              "tagName": "td",
              "properties": [
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
                  "uuid": "137a803f-79b9-49d5-982b-7dfa33429ab1",
                  "parent_uuid": "187e4ebb-cbf1-4eaa-b4ff-2ac2b1f9aa66",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6754ca4-24c9-465d-957c-f7df42274ecb",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d96a58f-7048-4f6f-9497-988d2d4f7f02",
              "parent_uuid": "e6754ca4-24c9-465d-957c-f7df42274ecb",
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4b4ce958-122d-4428-a794-d1083be7477d",
              "parent_uuid": "e6754ca4-24c9-465d-957c-f7df42274ecb",
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
              "innerHtml": "\r\n                    <span>57</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7d9d4720-4cca-4768-8cd2-107546a616b7",
              "parent_uuid": "e6754ca4-24c9-465d-957c-f7df42274ecb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5995e2de-4fa5-47c0-8741-05ef2c337614",
                  "parent_uuid": "7d9d4720-4cca-4768-8cd2-107546a616b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2726f38-40e2-49a9-afda-65db7271e299",
              "parent_uuid": "e6754ca4-24c9-465d-957c-f7df42274ecb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2d897893-c0cd-4656-8028-ab25d7b2076f",
                  "parent_uuid": "e2726f38-40e2-49a9-afda-65db7271e299",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b050f5c-a06d-4061-a887-8a664736ff55",
              "parent_uuid": "e6754ca4-24c9-465d-957c-f7df42274ecb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "353304d9-9a5e-4109-a91e-77a0e1623e41",
                  "parent_uuid": "9b050f5c-a06d-4061-a887-8a664736ff55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a03d52e-361e-4d6e-afb8-42f3555d0212",
              "parent_uuid": "e6754ca4-24c9-465d-957c-f7df42274ecb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8cd4beb0-7baf-45e8-86dc-d398e63f0cf6",
                  "parent_uuid": "0a03d52e-361e-4d6e-afb8-42f3555d0212",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3c5e597c-c17d-402f-934c-16763fb2da5d",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ef6352b-f29b-4232-9a36-1905ba51adb5",
              "parent_uuid": "3c5e597c-c17d-402f-934c-16763fb2da5d",
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhalteblock prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e76c3df7-e775-48ed-b426-34f7e15a0a96",
              "parent_uuid": "3c5e597c-c17d-402f-934c-16763fb2da5d",
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
              "innerHtml": "\r\n                    <span>59</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "682837cb-c7b3-499a-a6f5-e3ff0baf6901",
              "parent_uuid": "3c5e597c-c17d-402f-934c-16763fb2da5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cf06b77e-77d8-4702-b689-7111e1d668d3",
                  "parent_uuid": "682837cb-c7b3-499a-a6f5-e3ff0baf6901",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f06d16d2-802e-4424-9f78-7333aee4c1b2",
              "parent_uuid": "3c5e597c-c17d-402f-934c-16763fb2da5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "18264ec6-3ad2-4702-afc8-2c1001e0f082",
                  "parent_uuid": "f06d16d2-802e-4424-9f78-7333aee4c1b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0332f8db-2a3a-4dc2-aa2a-aad0c82345d3",
              "parent_uuid": "3c5e597c-c17d-402f-934c-16763fb2da5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5abfb226-f7c0-4ef0-97df-06fb9240299e",
                  "parent_uuid": "0332f8db-2a3a-4dc2-aa2a-aad0c82345d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c00f9f7-58e9-48bc-af9d-a5cc833e770f",
              "parent_uuid": "3c5e597c-c17d-402f-934c-16763fb2da5d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "916ce7d0-22db-49c5-95f7-4c300d0570b5",
                  "parent_uuid": "7c00f9f7-58e9-48bc-af9d-a5cc833e770f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8fdd3834-0eeb-41d8-b23d-12321d0fef9b",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4381390e-e940-41fa-b467-44b9acaa6728",
              "parent_uuid": "8fdd3834-0eeb-41d8-b23d-12321d0fef9b",
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
              "uuid": "e11f2e31-9172-4ed2-8cae-03f3f5e765a4",
              "parent_uuid": "8fdd3834-0eeb-41d8-b23d-12321d0fef9b",
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
              "innerHtml": "\r\n                    <span>27</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8f4ebe78-44a1-4241-af50-496b6baa4dcf",
              "parent_uuid": "8fdd3834-0eeb-41d8-b23d-12321d0fef9b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c0f1da43-5e0c-4443-bfa3-053a5ee29dba",
                  "parent_uuid": "8f4ebe78-44a1-4241-af50-496b6baa4dcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c99fcdf1-37e2-4c9b-8843-de2759547aaf",
              "parent_uuid": "8fdd3834-0eeb-41d8-b23d-12321d0fef9b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d443a836-9225-4311-8de5-a154cc898d50",
                  "parent_uuid": "c99fcdf1-37e2-4c9b-8843-de2759547aaf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b58abd6-2434-418e-8eb6-8c64bde44715",
              "parent_uuid": "8fdd3834-0eeb-41d8-b23d-12321d0fef9b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "27d8570e-6536-4121-9db7-faee303b66b1",
                  "parent_uuid": "3b58abd6-2434-418e-8eb6-8c64bde44715",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9662e8dd-52f7-4a7d-ad3f-b389ec5c5227",
              "parent_uuid": "8fdd3834-0eeb-41d8-b23d-12321d0fef9b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ba19ebe4-d6f7-44cb-ae7e-d8733ca808b1",
                  "parent_uuid": "9662e8dd-52f7-4a7d-ad3f-b389ec5c5227",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d3092a58-1fba-45cd-8b4d-85601725b29a",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e51c9730-be8d-4b9a-b12e-98c34f1e87b7",
              "parent_uuid": "d3092a58-1fba-45cd-8b4d-85601725b29a",
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
              "uuid": "c0187146-b24d-491e-a754-f74b424f47f1",
              "parent_uuid": "d3092a58-1fba-45cd-8b4d-85601725b29a",
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
              "innerHtml": "\r\n                    <span>80</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "49a7f069-3cac-49fb-bc93-959cf5c7b2b9",
              "parent_uuid": "d3092a58-1fba-45cd-8b4d-85601725b29a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a66c30d0-43de-4dd5-83c1-acc35cd47fa2",
                  "parent_uuid": "49a7f069-3cac-49fb-bc93-959cf5c7b2b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26a8744e-9932-4d8c-bbe6-e8c805f4d9bf",
              "parent_uuid": "d3092a58-1fba-45cd-8b4d-85601725b29a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cf48f44b-a3a1-45f9-9ba7-476f7687d043",
                  "parent_uuid": "26a8744e-9932-4d8c-bbe6-e8c805f4d9bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a592ee1-6e50-481a-85c2-1ddbf339c38a",
              "parent_uuid": "d3092a58-1fba-45cd-8b4d-85601725b29a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0d290e2e-f628-4089-8394-407f4a2a32fa",
                  "parent_uuid": "4a592ee1-6e50-481a-85c2-1ddbf339c38a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c90d4ae9-91b2-4981-afb8-f40759c0e2fd",
              "parent_uuid": "d3092a58-1fba-45cd-8b4d-85601725b29a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e4cbca58-74fa-466a-9682-07a4809f4fb4",
                  "parent_uuid": "c90d4ae9-91b2-4981-afb8-f40759c0e2fd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "adac5a58-efea-4dcd-adc5-a5e9076a047e",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ea622ea-6acd-4346-85d2-1399413ead2a",
              "parent_uuid": "adac5a58-efea-4dcd-adc5-a5e9076a047e",
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
              "uuid": "be90f491-21b0-4dba-b132-01cd8ebd2a15",
              "parent_uuid": "adac5a58-efea-4dcd-adc5-a5e9076a047e",
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
              "innerHtml": "\r\n                    <span>76</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "33c194ce-ad56-4bf2-aec8-779ac4b06d0e",
              "parent_uuid": "adac5a58-efea-4dcd-adc5-a5e9076a047e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cf36df9c-dde4-4fd7-b0f5-35327292e514",
                  "parent_uuid": "33c194ce-ad56-4bf2-aec8-779ac4b06d0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fa9fb8a-2dcc-4463-8215-967484396ec0",
              "parent_uuid": "adac5a58-efea-4dcd-adc5-a5e9076a047e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eda62f72-9f1c-4572-824a-5bc239f0dd66",
                  "parent_uuid": "0fa9fb8a-2dcc-4463-8215-967484396ec0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4158305f-268a-4033-a9f6-4070ccdbbe72",
              "parent_uuid": "adac5a58-efea-4dcd-adc5-a5e9076a047e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d1fbda6a-af69-425a-b42e-e40367b982cb",
                  "parent_uuid": "4158305f-268a-4033-a9f6-4070ccdbbe72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "705c9895-37b4-406c-b232-bdce2efe8475",
              "parent_uuid": "adac5a58-efea-4dcd-adc5-a5e9076a047e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "85d335c0-a082-4373-9d59-d70777736644",
                  "parent_uuid": "705c9895-37b4-406c-b232-bdce2efe8475",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5f21f467-7441-4917-a1f0-23c2879d6d97",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63a1b152-d1a4-4211-b0f7-4bfe209e59d6",
              "parent_uuid": "5f21f467-7441-4917-a1f0-23c2879d6d97",
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
              "uuid": "3b0f792a-2e97-42d4-9cb6-2e53731bc1d0",
              "parent_uuid": "5f21f467-7441-4917-a1f0-23c2879d6d97",
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
              "innerHtml": "\r\n                    <span>85</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "07e6bab6-1238-46d0-9ad7-b96cfe84aa7d",
              "parent_uuid": "5f21f467-7441-4917-a1f0-23c2879d6d97",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dd3af683-6d61-4b6f-b231-ba69106b8f27",
                  "parent_uuid": "07e6bab6-1238-46d0-9ad7-b96cfe84aa7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8fd89238-ba7b-4a25-aeb9-ba354fd4e17e",
              "parent_uuid": "5f21f467-7441-4917-a1f0-23c2879d6d97",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e4933468-a239-4eb1-b823-e41008f3badf",
                  "parent_uuid": "8fd89238-ba7b-4a25-aeb9-ba354fd4e17e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a0f2090-7b51-4efe-bfbb-9f7be2ed2e29",
              "parent_uuid": "5f21f467-7441-4917-a1f0-23c2879d6d97",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4b5f4ba3-67f0-4b39-9bef-40c3991c1e42",
                  "parent_uuid": "4a0f2090-7b51-4efe-bfbb-9f7be2ed2e29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c823351-6b8a-4950-9cb6-0cce5b686669",
              "parent_uuid": "5f21f467-7441-4917-a1f0-23c2879d6d97",
              "tagName": "td",
              "properties": [
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
                  "uuid": "43473f0f-c6ba-414d-921d-084852b042c4",
                  "parent_uuid": "3c823351-6b8a-4950-9cb6-0cce5b686669",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ddb9ebc8-412c-4e0b-a48c-e66bfcfd2285",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5285b688-1d4d-4fd9-80b6-fcc68271146d",
              "parent_uuid": "ddb9ebc8-412c-4e0b-a48c-e66bfcfd2285",
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
              "uuid": "2520a26a-d34c-44f8-a954-35ef5b534edc",
              "parent_uuid": "ddb9ebc8-412c-4e0b-a48c-e66bfcfd2285",
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
              "innerHtml": "\r\n                    <span>81</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dd792499-3ebc-4ccc-b294-50ee295465e8",
              "parent_uuid": "ddb9ebc8-412c-4e0b-a48c-e66bfcfd2285",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d5c309f8-b8d3-47fe-b247-af078ddea1b4",
                  "parent_uuid": "dd792499-3ebc-4ccc-b294-50ee295465e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aee4c3ce-d9ba-44d1-98df-e15b5d40d738",
              "parent_uuid": "ddb9ebc8-412c-4e0b-a48c-e66bfcfd2285",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9adfb654-62dc-4221-9cb8-c228430d2b2c",
                  "parent_uuid": "aee4c3ce-d9ba-44d1-98df-e15b5d40d738",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4da99003-2168-4acc-ad2b-f4af40b04fbb",
              "parent_uuid": "ddb9ebc8-412c-4e0b-a48c-e66bfcfd2285",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8bae97ba-9a35-4ff6-8fd1-44ae26bf308c",
                  "parent_uuid": "4da99003-2168-4acc-ad2b-f4af40b04fbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "050834bb-6457-4958-b32d-1c5202c440a8",
              "parent_uuid": "ddb9ebc8-412c-4e0b-a48c-e66bfcfd2285",
              "tagName": "td",
              "properties": [
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
                  "uuid": "485e54cc-2363-4a4a-9fc4-4255a8d08e28",
                  "parent_uuid": "050834bb-6457-4958-b32d-1c5202c440a8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1d475b22-6d8d-4309-8c65-3d919b7e2bb7",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d295052-2f2c-4f20-b767-77ec950d3af2",
              "parent_uuid": "1d475b22-6d8d-4309-8c65-3d919b7e2bb7",
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
              "uuid": "e0236fd3-56a6-45ab-9f3a-15bb2dde2e92",
              "parent_uuid": "1d475b22-6d8d-4309-8c65-3d919b7e2bb7",
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
              "innerHtml": "\r\n                    <span>56</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "002acdd7-5a35-4d32-bd91-d8f4861b18ce",
              "parent_uuid": "1d475b22-6d8d-4309-8c65-3d919b7e2bb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e0747099-3556-4273-9e39-6635dceb8228",
                  "parent_uuid": "002acdd7-5a35-4d32-bd91-d8f4861b18ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67cc88be-9146-47dc-8de3-72553c1aa013",
              "parent_uuid": "1d475b22-6d8d-4309-8c65-3d919b7e2bb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "63652b27-27ec-4cbc-96ae-2b889fb4f37d",
                  "parent_uuid": "67cc88be-9146-47dc-8de3-72553c1aa013",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f2711b1-58f1-497f-9a6d-fdb708e76c94",
              "parent_uuid": "1d475b22-6d8d-4309-8c65-3d919b7e2bb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ca74f964-902f-498c-9e73-46c9c26e0707",
                  "parent_uuid": "7f2711b1-58f1-497f-9a6d-fdb708e76c94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ef05341-4bb0-4a86-9a3e-70f9929a3d74",
              "parent_uuid": "1d475b22-6d8d-4309-8c65-3d919b7e2bb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1f5516f0-f6a2-427a-9aa6-7d657bdb65ce",
                  "parent_uuid": "8ef05341-4bb0-4a86-9a3e-70f9929a3d74",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f17e78a1-7dc2-4a2b-ad48-46529e627458",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5bedaaee-663b-4cb9-a744-ed45a75ee92d",
              "parent_uuid": "f17e78a1-7dc2-4a2b-ad48-46529e627458",
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
              "uuid": "01cfce1f-6ed1-4402-9f84-27b0f0c2f6bf",
              "parent_uuid": "f17e78a1-7dc2-4a2b-ad48-46529e627458",
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
              "uuid": "49a62ef8-b87e-425f-9da5-8968ceac90a8",
              "parent_uuid": "f17e78a1-7dc2-4a2b-ad48-46529e627458",
              "tagName": "td",
              "properties": [
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
                  "uuid": "94f1d16b-16a7-4a26-9cd6-e9e76c718c02",
                  "parent_uuid": "49a62ef8-b87e-425f-9da5-8968ceac90a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e896ec34-bd9e-4023-9ffe-c8c9eb437f69",
              "parent_uuid": "f17e78a1-7dc2-4a2b-ad48-46529e627458",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d4b8062f-1515-45d0-a093-17e16ce105b1",
                  "parent_uuid": "e896ec34-bd9e-4023-9ffe-c8c9eb437f69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e17039d3-25aa-4e75-8dbc-8f691c7716ca",
              "parent_uuid": "f17e78a1-7dc2-4a2b-ad48-46529e627458",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aa84322f-2254-4d51-bac2-74572e67fbc2",
                  "parent_uuid": "e17039d3-25aa-4e75-8dbc-8f691c7716ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ead3897-1a33-4eaf-ba86-c1aa53e8f821",
              "parent_uuid": "f17e78a1-7dc2-4a2b-ad48-46529e627458",
              "tagName": "td",
              "properties": [
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
                  "uuid": "14aea38a-fa60-4d30-816f-201d392d4ffd",
                  "parent_uuid": "9ead3897-1a33-4eaf-ba86-c1aa53e8f821",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2c71244a-c8e7-458e-be3f-c2b69dee40f0",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff7ad82d-9c53-4e26-87d4-66fdeb3a1576",
              "parent_uuid": "2c71244a-c8e7-458e-be3f-c2b69dee40f0",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "29"
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "d763e73d-5b96-49eb-9d2e-dcf7f2fe0c15",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f15abc28-a66c-4695-a0c5-040ca62df4a8",
              "parent_uuid": "d763e73d-5b96-49eb-9d2e-dcf7f2fe0c15",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "12a17b69-0420-4e93-8936-ac4bac8164ea",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1ffe026-18aa-4c8f-802a-426d16f6bea8",
              "parent_uuid": "12a17b69-0420-4e93-8936-ac4bac8164ea",
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
                  "uuid": "308fde85-667e-4d78-a7aa-b7bdd88ec7ea",
                  "parent_uuid": "e1ffe026-18aa-4c8f-802a-426d16f6bea8",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "2b4ab61d-a0bf-4121-962b-25f883c65b60",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8e1fbd68-028e-4491-be6a-8ea19c2858dd",
              "parent_uuid": "2b4ab61d-a0bf-4121-962b-25f883c65b60",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "50539c6b-a893-4379-8caf-c90b8dce4a39",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "0de6b81f-0527-4cad-b21d-fa26ea64fcca",
              "parent_uuid": "50539c6b-a893-4379-8caf-c90b8dce4a39",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei eingeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "2d8b1c5e-54d6-4f7a-abdf-882f04b0299e",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3766b43d-61bf-49dc-b08a-23dc88d2d923",
              "parent_uuid": "2d8b1c5e-54d6-4f7a-abdf-882f04b0299e",
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
              "uuid": "5d591b93-92a8-4baf-8e05-c84dd677c769",
              "parent_uuid": "2d8b1c5e-54d6-4f7a-abdf-882f04b0299e",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fd4f329d-edde-4f19-a45a-f21629aa0807",
              "parent_uuid": "2d8b1c5e-54d6-4f7a-abdf-882f04b0299e",
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
              "uuid": "1e4ca36f-3fa3-4f03-a0a5-1c83ed8b1550",
              "parent_uuid": "2d8b1c5e-54d6-4f7a-abdf-882f04b0299e",
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
              "uuid": "e39ec5ea-a666-48e6-9ccb-f307c06aea56",
              "parent_uuid": "2d8b1c5e-54d6-4f7a-abdf-882f04b0299e",
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
              "uuid": "e057d4cd-419d-406f-9ab3-780a222ea361",
              "parent_uuid": "2d8b1c5e-54d6-4f7a-abdf-882f04b0299e",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "07d35a45-8bfb-417b-a88a-862b5d6ee1e0",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59463246-0102-424c-b61b-910b58dd1444",
              "parent_uuid": "07d35a45-8bfb-417b-a88a-862b5d6ee1e0",
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
              "uuid": "5b05058b-d684-4851-a382-91e1335a5ba9",
              "parent_uuid": "07d35a45-8bfb-417b-a88a-862b5d6ee1e0",
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
              "uuid": "5aabf2b7-042b-460b-96fd-bf6441283b4d",
              "parent_uuid": "07d35a45-8bfb-417b-a88a-862b5d6ee1e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b14d4bb6-8e65-4d62-a124-04f016f83d96",
                  "parent_uuid": "5aabf2b7-042b-460b-96fd-bf6441283b4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5760bac7-16ea-420e-bccd-534497d8736f",
              "parent_uuid": "07d35a45-8bfb-417b-a88a-862b5d6ee1e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ff907e9e-9668-4eab-8c8e-048bf1e808ea",
                  "parent_uuid": "5760bac7-16ea-420e-bccd-534497d8736f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08369854-c381-420b-8209-16b76a67ac98",
              "parent_uuid": "07d35a45-8bfb-417b-a88a-862b5d6ee1e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2f96118b-8063-4caa-8cf2-8ccd60e1a1dc",
                  "parent_uuid": "08369854-c381-420b-8209-16b76a67ac98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55722d73-a56b-4d9e-a927-1dbd659c2aab",
              "parent_uuid": "07d35a45-8bfb-417b-a88a-862b5d6ee1e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d3cc0e89-134e-4dd4-b320-8ccc063c173d",
                  "parent_uuid": "55722d73-a56b-4d9e-a927-1dbd659c2aab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a23886d4-3bef-42be-bd33-c39bec5dd075",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6894b864-4c31-4648-a40b-b3c5055c5cc2",
              "parent_uuid": "a23886d4-3bef-42be-bd33-c39bec5dd075",
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
              "uuid": "1a20f170-cc76-4a3b-8fc6-c0fe573ff85c",
              "parent_uuid": "a23886d4-3bef-42be-bd33-c39bec5dd075",
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
              "uuid": "2655cb69-c2c0-442d-ae0d-a6d2cbfe2b23",
              "parent_uuid": "a23886d4-3bef-42be-bd33-c39bec5dd075",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0ec7bd2b-527d-4c41-8c4a-7dcecbbdb823",
                  "parent_uuid": "2655cb69-c2c0-442d-ae0d-a6d2cbfe2b23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8bb0707c-8d68-4911-9216-d84541eb014b",
              "parent_uuid": "a23886d4-3bef-42be-bd33-c39bec5dd075",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e95b7e1e-c887-45fe-8f2a-482c4e6f2656",
                  "parent_uuid": "8bb0707c-8d68-4911-9216-d84541eb014b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92bfaa05-6dc7-44f7-b50d-e1b4266de594",
              "parent_uuid": "a23886d4-3bef-42be-bd33-c39bec5dd075",
              "tagName": "td",
              "properties": [
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
                  "uuid": "35066268-ba77-4d0e-9bf8-962463e86540",
                  "parent_uuid": "92bfaa05-6dc7-44f7-b50d-e1b4266de594",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3a4eebb-095f-4b72-97e7-6f8cfec5a936",
              "parent_uuid": "a23886d4-3bef-42be-bd33-c39bec5dd075",
              "tagName": "td",
              "properties": [
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
                  "uuid": "32a7715b-ce4d-4c87-afc0-97dac62b0964",
                  "parent_uuid": "f3a4eebb-095f-4b72-97e7-6f8cfec5a936",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f32636bf-5a3b-413e-a65c-5f68e80fe0a1",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c8f8a88-c854-4b82-9cb5-dd759f0fd2d0",
              "parent_uuid": "f32636bf-5a3b-413e-a65c-5f68e80fe0a1",
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
              "uuid": "692f271a-8995-47ab-8da9-78038d10cd25",
              "parent_uuid": "f32636bf-5a3b-413e-a65c-5f68e80fe0a1",
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
              "uuid": "52d8b814-6c6b-41f3-9350-2889cb3d79b9",
              "parent_uuid": "f32636bf-5a3b-413e-a65c-5f68e80fe0a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b4d9a7af-8f84-4be4-97fe-2caeedbff78c",
                  "parent_uuid": "52d8b814-6c6b-41f3-9350-2889cb3d79b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0030f364-c597-4c36-9e3f-1d6652d564da",
              "parent_uuid": "f32636bf-5a3b-413e-a65c-5f68e80fe0a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "766abae7-3137-4741-a712-4c74ba3953b6",
                  "parent_uuid": "0030f364-c597-4c36-9e3f-1d6652d564da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80d5c280-9db9-429b-b660-7cce2fb8e8d3",
              "parent_uuid": "f32636bf-5a3b-413e-a65c-5f68e80fe0a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b72cc4d8-c146-469d-b197-751e5c373e72",
                  "parent_uuid": "80d5c280-9db9-429b-b660-7cce2fb8e8d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "880b5607-0e57-4e5c-9773-53304e683901",
              "parent_uuid": "f32636bf-5a3b-413e-a65c-5f68e80fe0a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7b90fc19-62c9-4ca9-bdd0-fee7c4c17859",
                  "parent_uuid": "880b5607-0e57-4e5c-9773-53304e683901",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b348a997-97aa-4e91-b9f4-cf52e0866d4c",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "516072db-1f95-4f09-ab48-d09a651f2dc2",
              "parent_uuid": "b348a997-97aa-4e91-b9f4-cf52e0866d4c",
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
              "uuid": "d7c3b726-adf2-4278-b0f3-d8f8c4773af2",
              "parent_uuid": "b348a997-97aa-4e91-b9f4-cf52e0866d4c",
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
              "innerHtml": "\r\n                    <span>88</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6ee04881-191d-4507-baef-bd7372dbfca0",
              "parent_uuid": "b348a997-97aa-4e91-b9f4-cf52e0866d4c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9bcc57fa-5796-4da2-a25c-728232b7db7a",
                  "parent_uuid": "6ee04881-191d-4507-baef-bd7372dbfca0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14c9bf54-ded8-43b8-89f1-1093dd562d35",
              "parent_uuid": "b348a997-97aa-4e91-b9f4-cf52e0866d4c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a302ac02-959e-47a7-8952-f7ae19fb6a1b",
                  "parent_uuid": "14c9bf54-ded8-43b8-89f1-1093dd562d35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b19c019b-1eea-466e-9f99-d32f818bb0e4",
              "parent_uuid": "b348a997-97aa-4e91-b9f4-cf52e0866d4c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a303660d-cae8-4e53-9f53-20c4cf668035",
                  "parent_uuid": "b19c019b-1eea-466e-9f99-d32f818bb0e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06b29ebf-a7c0-409d-819d-3a99037c1ba5",
              "parent_uuid": "b348a997-97aa-4e91-b9f4-cf52e0866d4c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "56b922a5-5f22-4c3e-a706-205719b76b7c",
                  "parent_uuid": "06b29ebf-a7c0-409d-819d-3a99037c1ba5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "170b6f3e-61c7-43f2-bb80-5160db4d03c0",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3517d949-b17b-4ff7-93e2-b11b17bf6221",
              "parent_uuid": "170b6f3e-61c7-43f2-bb80-5160db4d03c0",
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "8d0dddea-a21b-4ad5-aa8b-5373d8d0a0aa",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "429be58c-76fd-475a-a3f7-cb3ef1cb1edf",
              "parent_uuid": "8d0dddea-a21b-4ad5-aa8b-5373d8d0a0aa",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "d48d52f8-2c42-42d8-baa5-9d8d96d66439",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "616e7483-476b-4b71-ac2c-0f670e20479c",
              "parent_uuid": "d48d52f8-2c42-42d8-baa5-9d8d96d66439",
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
                  "uuid": "275ad1e1-af95-4e1b-b460-6061aa6b960c",
                  "parent_uuid": "616e7483-476b-4b71-ac2c-0f670e20479c",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "db47e5d7-07a9-4e2e-8a8c-8ff789852eb0",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b5e9375-47f7-40a0-84e9-39edc9e09f45",
              "parent_uuid": "db47e5d7-07a9-4e2e-8a8c-8ff789852eb0",
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "9385d0b9-a3de-45d7-be6d-ffa9b29625ac",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "68685450-c716-4186-b4cf-a1ddc3806df6",
              "parent_uuid": "9385d0b9-a3de-45d7-be6d-ffa9b29625ac",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei laufender Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "5b3a2a36-943b-4df4-9505-d74972d7c37a",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e023c0f-a369-430e-a25a-bdb39991c5e3",
              "parent_uuid": "5b3a2a36-943b-4df4-9505-d74972d7c37a",
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
              "uuid": "0d9ef377-5ed2-4c0d-b081-0d6cb6efe6b5",
              "parent_uuid": "5b3a2a36-943b-4df4-9505-d74972d7c37a",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a9ffe7cc-a4d6-4d98-a3bb-566e83206b78",
              "parent_uuid": "5b3a2a36-943b-4df4-9505-d74972d7c37a",
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
              "uuid": "f8dc09d2-b0e5-494f-abf2-c173db9316d0",
              "parent_uuid": "5b3a2a36-943b-4df4-9505-d74972d7c37a",
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
              "uuid": "c0ed1df8-a1db-404a-a9fe-8d1f2a4bf6f7",
              "parent_uuid": "5b3a2a36-943b-4df4-9505-d74972d7c37a",
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
              "uuid": "966993e2-89ac-499c-9b55-e49936e6f34e",
              "parent_uuid": "5b3a2a36-943b-4df4-9505-d74972d7c37a",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "27b3aa3a-14ab-4cb2-b8f6-8b2d74c0046a",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "6db5f361-f9e7-4429-ad03-27c92f79f2a6",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a627111-4558-4ed7-a0b7-5582e40c825b",
              "parent_uuid": "6db5f361-f9e7-4429-ad03-27c92f79f2a6",
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
              "uuid": "a5a29dd3-11b5-43d5-aa62-c9e458e148fd",
              "parent_uuid": "6db5f361-f9e7-4429-ad03-27c92f79f2a6",
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
              "uuid": "1229453e-d689-4213-a20d-641bf3bc4d99",
              "parent_uuid": "6db5f361-f9e7-4429-ad03-27c92f79f2a6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eda0a313-4475-4de9-9810-31cfad5f38bf",
                  "parent_uuid": "1229453e-d689-4213-a20d-641bf3bc4d99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cac086e-9241-4a02-bfc9-ecae3a6c3fc6",
              "parent_uuid": "6db5f361-f9e7-4429-ad03-27c92f79f2a6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7e89f2fd-e5b5-42d2-9466-d625318375c6",
                  "parent_uuid": "7cac086e-9241-4a02-bfc9-ecae3a6c3fc6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d01ade9-4af4-4813-b2f9-8f55925ddcae",
              "parent_uuid": "6db5f361-f9e7-4429-ad03-27c92f79f2a6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fca87bb1-c0f4-4216-b79b-331879b7dce5",
                  "parent_uuid": "4d01ade9-4af4-4813-b2f9-8f55925ddcae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27950d7d-81e8-4b26-8d6e-88c030d58b4a",
              "parent_uuid": "6db5f361-f9e7-4429-ad03-27c92f79f2a6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "09a850c3-ea1d-46d8-8997-f21554b30589",
                  "parent_uuid": "27950d7d-81e8-4b26-8d6e-88c030d58b4a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "bd5d2b49-9f20-4532-b18d-7cf9452c9fad",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd9e96ca-fc09-4f51-b204-48d069da3d2e",
              "parent_uuid": "bd5d2b49-9f20-4532-b18d-7cf9452c9fad",
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
              "uuid": "9ddf4b5c-37f9-4961-ace6-ff0be2a52ebe",
              "parent_uuid": "bd5d2b49-9f20-4532-b18d-7cf9452c9fad",
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
              "innerHtml": "\r\n                    <span>93</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "30532390-8926-4f42-bc06-fdc724910872",
              "parent_uuid": "bd5d2b49-9f20-4532-b18d-7cf9452c9fad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "912768f1-1b72-4151-9a98-d2ab2203de90",
                  "parent_uuid": "30532390-8926-4f42-bc06-fdc724910872",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "873e9937-14ab-4f47-b64f-db5501127345",
              "parent_uuid": "bd5d2b49-9f20-4532-b18d-7cf9452c9fad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0ce6ac02-92d5-459b-9d95-68d12d1f74fd",
                  "parent_uuid": "873e9937-14ab-4f47-b64f-db5501127345",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91e8ef93-dce4-4d78-9acd-3975ce09bb49",
              "parent_uuid": "bd5d2b49-9f20-4532-b18d-7cf9452c9fad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "448f37a0-7def-40d5-84f3-986930b6cfd1",
                  "parent_uuid": "91e8ef93-dce4-4d78-9acd-3975ce09bb49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38b61bf8-a472-42cb-a54b-dc1d58a3e669",
              "parent_uuid": "bd5d2b49-9f20-4532-b18d-7cf9452c9fad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "258caf02-7913-45c1-8518-72404a9a8f7e",
                  "parent_uuid": "38b61bf8-a472-42cb-a54b-dc1d58a3e669",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "3aedd187-9a19-4a6b-b09f-c0dc54f2591e",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2bb808f3-0eaa-4428-a2bf-db9574252769",
              "parent_uuid": "3aedd187-9a19-4a6b-b09f-c0dc54f2591e",
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
              "uuid": "b40342df-806f-41e1-8496-f9c6fa75c4f5",
              "parent_uuid": "3aedd187-9a19-4a6b-b09f-c0dc54f2591e",
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
              "innerHtml": "\r\n                    <span>96</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f5826d19-94b0-454e-992e-16d678f52754",
              "parent_uuid": "3aedd187-9a19-4a6b-b09f-c0dc54f2591e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "291b038f-5cbb-41b5-8b5e-777f7b2cdf02",
                  "parent_uuid": "f5826d19-94b0-454e-992e-16d678f52754",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88cfdef0-3f01-48ac-976d-c2a0c024cbfd",
              "parent_uuid": "3aedd187-9a19-4a6b-b09f-c0dc54f2591e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1918f0bb-a52e-450f-a738-6457babec09f",
                  "parent_uuid": "88cfdef0-3f01-48ac-976d-c2a0c024cbfd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf6bacd2-23b4-4ae8-8f8e-ddae6e3e6283",
              "parent_uuid": "3aedd187-9a19-4a6b-b09f-c0dc54f2591e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "48a6cd46-03aa-43b3-a3f7-3366a08b3def",
                  "parent_uuid": "cf6bacd2-23b4-4ae8-8f8e-ddae6e3e6283",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28804ac0-380e-4a09-b5c5-8e255254974e",
              "parent_uuid": "3aedd187-9a19-4a6b-b09f-c0dc54f2591e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "90c1d751-5b71-4f97-9080-34430d3d75eb",
                  "parent_uuid": "28804ac0-380e-4a09-b5c5-8e255254974e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "dc501f1e-ddab-4988-b56a-a47020a126b8",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01798256-342b-4402-bf1e-e65c86b88420",
              "parent_uuid": "dc501f1e-ddab-4988-b56a-a47020a126b8",
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
              "uuid": "8317032e-5423-464c-83b6-e6a934579c8a",
              "parent_uuid": "dc501f1e-ddab-4988-b56a-a47020a126b8",
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
              "uuid": "4ba071a2-d147-49ae-943d-68ab552eb600",
              "parent_uuid": "dc501f1e-ddab-4988-b56a-a47020a126b8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b588648a-4635-4bd5-971f-b454c57eb4e9",
                  "parent_uuid": "4ba071a2-d147-49ae-943d-68ab552eb600",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb575a56-c9cd-4c9c-a06d-88b6218679c6",
              "parent_uuid": "dc501f1e-ddab-4988-b56a-a47020a126b8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "89488fae-b122-40dd-b6a6-e20a7b5e908f",
                  "parent_uuid": "eb575a56-c9cd-4c9c-a06d-88b6218679c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c1183b5-5338-40f7-a4da-c15b50befd64",
              "parent_uuid": "dc501f1e-ddab-4988-b56a-a47020a126b8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9cef103-0eae-454d-aaba-390c3757870e",
                  "parent_uuid": "3c1183b5-5338-40f7-a4da-c15b50befd64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12707a00-1219-4cfe-a5e3-de06114b8cb3",
              "parent_uuid": "dc501f1e-ddab-4988-b56a-a47020a126b8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1993c8d3-6668-47b1-814c-013518caabaa",
                  "parent_uuid": "12707a00-1219-4cfe-a5e3-de06114b8cb3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "096192d6-1c95-4a1b-aa2d-e69762164d89",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ad6d88f-cbbf-4b56-9ed4-edebd1ca82a7",
              "parent_uuid": "096192d6-1c95-4a1b-aa2d-e69762164d89",
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
              "uuid": "a1f55ad4-de0f-452a-a67e-a90fb1f96198",
              "parent_uuid": "096192d6-1c95-4a1b-aa2d-e69762164d89",
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
              "innerHtml": "\r\n                    <span>124</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1735f62d-2753-4a66-9db1-1524a5209ed9",
              "parent_uuid": "096192d6-1c95-4a1b-aa2d-e69762164d89",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4f4515bb-0795-4824-b4fd-1ed475c15ce3",
                  "parent_uuid": "1735f62d-2753-4a66-9db1-1524a5209ed9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0ad3081-18e0-436b-a806-ec9dff0e04fd",
              "parent_uuid": "096192d6-1c95-4a1b-aa2d-e69762164d89",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1b615838-7d6a-4d41-bc93-fc7bd837e349",
                  "parent_uuid": "d0ad3081-18e0-436b-a806-ec9dff0e04fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7e71d8c-85b5-4a88-9564-64cdc43a05a4",
              "parent_uuid": "096192d6-1c95-4a1b-aa2d-e69762164d89",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2aa10655-1882-4ed5-b26a-37bb93f23b30",
                  "parent_uuid": "b7e71d8c-85b5-4a88-9564-64cdc43a05a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7bb802d4-afb0-438d-bc80-20a1a3624fd6",
              "parent_uuid": "096192d6-1c95-4a1b-aa2d-e69762164d89",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aca0fea3-82fa-413f-8520-b1818b2b3987",
                  "parent_uuid": "7bb802d4-afb0-438d-bc80-20a1a3624fd6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e06c5b6-59dc-45e7-9d34-83e836d26359",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "756029dc-3ed9-4911-8afe-852319464cbb",
              "parent_uuid": "8e06c5b6-59dc-45e7-9d34-83e836d26359",
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
              "uuid": "abec1a29-9ad9-4267-a796-84cc7641a495",
              "parent_uuid": "8e06c5b6-59dc-45e7-9d34-83e836d26359",
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
              "innerHtml": "\r\n                    <span>91</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d554fbeb-e273-46ec-8987-0d67ad0cfcba",
              "parent_uuid": "8e06c5b6-59dc-45e7-9d34-83e836d26359",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9aa5994b-b823-48e7-ae4f-d6927a2b3123",
                  "parent_uuid": "d554fbeb-e273-46ec-8987-0d67ad0cfcba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91977ddd-fa96-4522-a5f8-8aec4e43c089",
              "parent_uuid": "8e06c5b6-59dc-45e7-9d34-83e836d26359",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3b0aeeda-1d4c-465c-a3c7-aafc4fb1058e",
                  "parent_uuid": "91977ddd-fa96-4522-a5f8-8aec4e43c089",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1f92f0b-5821-4541-9d75-2ea765607fc7",
              "parent_uuid": "8e06c5b6-59dc-45e7-9d34-83e836d26359",
              "tagName": "td",
              "properties": [
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
                  "uuid": "56e45d7d-4c45-4926-9f50-93a530e4132e",
                  "parent_uuid": "e1f92f0b-5821-4541-9d75-2ea765607fc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4a48987-df87-43aa-9a84-587ce022ec5f",
              "parent_uuid": "8e06c5b6-59dc-45e7-9d34-83e836d26359",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4bb777dd-84a4-4d74-af08-13ab310e37ee",
                  "parent_uuid": "b4a48987-df87-43aa-9a84-587ce022ec5f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "818baad2-7e39-4fae-ab74-362397f37643",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c256569b-3e1d-4836-974b-f849702bcc6b",
              "parent_uuid": "818baad2-7e39-4fae-ab74-362397f37643",
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "922b6c17-584e-447f-ba47-fb328ef51e53",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a21419b-21f7-431f-a13c-25e88475b290",
              "parent_uuid": "922b6c17-584e-447f-ba47-fb328ef51e53",
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "7f0ad1ea-eb8a-4a3b-9ab5-6ad4d689de83",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10b4dc7a-73bd-44b9-b4e3-29722e699549",
              "parent_uuid": "7f0ad1ea-eb8a-4a3b-9ab5-6ad4d689de83",
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
                  "uuid": "b013d748-4219-47fb-a467-014a20a4fb3d",
                  "parent_uuid": "10b4dc7a-73bd-44b9-b4e3-29722e699549",
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "30a47202-fe23-4e3e-86ff-02f6415d99c7",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4caaf243-84b7-4e30-864e-ec1d9bf9e8dd",
              "parent_uuid": "30a47202-fe23-4e3e-86ff-02f6415d99c7",
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
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "6640c5e4-ee85-48a3-ae21-29efa92b14f4",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "43d3b36d-c733-4640-b36c-f1c3aeb3fc27",
              "parent_uuid": "6640c5e4-ee85-48a3-ae21-29efa92b14f4",
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
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "76f27bec-77b9-4f0c-ba9e-dd6ca99d935a",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "411adc94-ae0f-4af0-beef-5d089e37cbdf",
              "parent_uuid": "76f27bec-77b9-4f0c-ba9e-dd6ca99d935a",
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
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5450cde2-cdf8-4b46-8c89-438551bcd0e4",
              "parent_uuid": "76f27bec-77b9-4f0c-ba9e-dd6ca99d935a",
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
              "uuid": "2ae876d1-f392-4210-b3f3-546d633d55bb",
              "parent_uuid": "76f27bec-77b9-4f0c-ba9e-dd6ca99d935a",
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
              "uuid": "38a9a133-7ac5-4550-b412-18aa84851d18",
              "parent_uuid": "76f27bec-77b9-4f0c-ba9e-dd6ca99d935a",
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
              "uuid": "373864e5-2627-4222-8041-611c0a67d1e6",
              "parent_uuid": "76f27bec-77b9-4f0c-ba9e-dd6ca99d935a",
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
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "8decd973-4ae8-4aed-bae8-7073976e4cb0",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a99a4d4-95d1-4c8a-ab66-6781f1109845",
              "parent_uuid": "8decd973-4ae8-4aed-bae8-7073976e4cb0",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2842 (M276)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8f5f2570-eaa8-4eb9-a85b-e48415e7f184",
              "parent_uuid": "8decd973-4ae8-4aed-bae8-7073976e4cb0",
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
              "innerHtml": "\r\n                    <span>179 720 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "472538e1-636f-483e-9d4f-8b4f439a8f9e",
              "parent_uuid": "8decd973-4ae8-4aed-bae8-7073976e4cb0",
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
              "uuid": "4339d34b-571f-4424-af70-31f258351471",
              "parent_uuid": "8decd973-4ae8-4aed-bae8-7073976e4cb0",
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
              "innerHtml": "\r\n                    <span>3 G04</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6e9c8310-d630-4ca4-8a93-ea70c2ff12a3",
              "parent_uuid": "8decd973-4ae8-4aed-bae8-7073976e4cb0",
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
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "a5aef0ad-2a8a-4550-9644-b6ac3b44efda",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9ced40b-9d0f-4ed4-9e82-9100ba81644c",
              "parent_uuid": "a5aef0ad-2a8a-4550-9644-b6ac3b44efda",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2510</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bbe6858c-0272-4d4b-9ecf-1acd35419d82",
              "parent_uuid": "a5aef0ad-2a8a-4550-9644-b6ac3b44efda",
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
              "innerHtml": "\r\n                    <span>146 605 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "819ad2f2-dc11-4199-8993-9d759c5b5b33",
              "parent_uuid": "a5aef0ad-2a8a-4550-9644-b6ac3b44efda",
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
              "uuid": "b1ba850e-7eb0-4385-b0e2-3b8bdcfa9563",
              "parent_uuid": "a5aef0ad-2a8a-4550-9644-b6ac3b44efda",
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
              "innerHtml": "\r\n                    <span>3 H01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0aa0d01b-9e50-41a5-ad78-e3ea402c8406",
              "parent_uuid": "a5aef0ad-2a8a-4550-9644-b6ac3b44efda",
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
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "3336c6de-b338-4ce3-b5bb-3dfe1823b348",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3fe374a6-28ac-4803-a60b-a6df95b09f74",
              "parent_uuid": "3336c6de-b338-4ce3-b5bb-3dfe1823b348",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2233 (M274)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5cc16379-9d5c-4ee2-b508-25bbdafc468a",
              "parent_uuid": "3336c6de-b338-4ce3-b5bb-3dfe1823b348",
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
              "innerHtml": "\r\n                    <span>179 718 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8e4ceaf6-e4d2-416f-a762-51d5bd7b8794",
              "parent_uuid": "3336c6de-b338-4ce3-b5bb-3dfe1823b348",
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
              "uuid": "759f57ef-baac-47d7-b969-41f8cacba56c",
              "parent_uuid": "3336c6de-b338-4ce3-b5bb-3dfe1823b348",
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
              "innerHtml": "\r\n                    <span>3 G02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "cb0d10ab-8e3c-421b-af20-45267355e098",
              "parent_uuid": "3336c6de-b338-4ce3-b5bb-3dfe1823b348",
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
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "6503f23a-0c32-407d-ab5e-dc650abb7f5e",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de7da859-c8ad-4cf1-b5b9-848c36dd71a3",
              "parent_uuid": "6503f23a-0c32-407d-ab5e-dc650abb7f5e",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 1707 (M275)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b30c6e58-cdd9-4cc1-ac4b-41c45ab68909",
              "parent_uuid": "6503f23a-0c32-407d-ab5e-dc650abb7f5e",
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
              "innerHtml": "\r\n                    <span>179 719 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8183f64d-3ce5-4d3c-beeb-b0dca9ebb2bc",
              "parent_uuid": "6503f23a-0c32-407d-ab5e-dc650abb7f5e",
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
              "uuid": "527e18d3-9fda-470d-825e-7bf8c01bf94a",
              "parent_uuid": "6503f23a-0c32-407d-ab5e-dc650abb7f5e",
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
              "innerHtml": "\r\n                    <span>3 G01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "e29baf1c-9dd4-4110-8690-d3643a7887bb",
              "parent_uuid": "6503f23a-0c32-407d-ab5e-dc650abb7f5e",
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
          "uuid": "e12f99fc-eeb1-4341-832d-a129168edfb5",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54e0f87d-9663-4903-b6c3-c11a5f31cf79",
              "parent_uuid": "e12f99fc-eeb1-4341-832d-a129168edfb5",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M279)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "18cf283e-496d-4e39-9f5e-92dba37d4b7b",
              "parent_uuid": "e12f99fc-eeb1-4341-832d-a129168edfb5",
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
              "uuid": "34577dad-8347-4cf4-bc4f-865b4b4968a1",
              "parent_uuid": "e12f99fc-eeb1-4341-832d-a129168edfb5",
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
              "uuid": "a1376799-f6e7-4ca6-b010-cde7c0a49168",
              "parent_uuid": "e12f99fc-eeb1-4341-832d-a129168edfb5",
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
              "innerHtml": "\r\n                    <span>3 F02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "21b765fc-55cb-47cf-bb36-59656d8e9d61",
              "parent_uuid": "e12f99fc-eeb1-4341-832d-a129168edfb5",
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
          "uuid": "3b42b39e-6b2c-405f-8590-0902ecda2f81",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f228a642-b4e6-40fa-9bc1-0bda8c1121cc",
              "parent_uuid": "3b42b39e-6b2c-405f-8590-0902ecda2f81",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 236 (M269)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a6b08297-f245-4554-ba9f-3d5b26850079",
              "parent_uuid": "3b42b39e-6b2c-405f-8590-0902ecda2f81",
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
              "innerHtml": "\r\n                    s<span>174 264 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "892cd000-b0aa-41f0-812a-de8f020fa14c",
              "parent_uuid": "3b42b39e-6b2c-405f-8590-0902ecda2f81",
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
              "uuid": "ab7f5cae-04d6-410d-a30f-0950dada1d80",
              "parent_uuid": "3b42b39e-6b2c-405f-8590-0902ecda2f81",
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
              "innerHtml": "\r\n                    <span>3 F03</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "dadc9369-9e07-4d0d-847d-3d256203028e",
              "parent_uuid": "3b42b39e-6b2c-405f-8590-0902ecda2f81",
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
          "uuid": "6b784af3-39c0-42b4-80c2-c018a547a0e6",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d022803-3621-41f8-9547-20078efe059d",
              "parent_uuid": "6b784af3-39c0-42b4-80c2-c018a547a0e6",
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
              "uuid": "7ce48570-6334-44d8-b237-167756acb582",
              "parent_uuid": "6b784af3-39c0-42b4-80c2-c018a547a0e6",
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
              "innerHtml": "\r\n                    <span>272 900 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dd4d85f3-ce4b-498b-9483-c5a3efddd751",
              "parent_uuid": "6b784af3-39c0-42b4-80c2-c018a547a0e6",
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
              "uuid": "7dc66608-f526-4350-889b-41f6eec5058f",
              "parent_uuid": "6b784af3-39c0-42b4-80c2-c018a547a0e6",
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
              "innerHtml": "\r\n                    <span>1 E06</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "daa6f4f4-9459-4698-8c7f-dc246b96737d",
              "parent_uuid": "6b784af3-39c0-42b4-80c2-c018a547a0e6",
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
          "uuid": "70202ea1-7b0d-4a63-b31d-466c93aebc46",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2133bd4a-1b81-47bd-850e-b2cc44aeb7f7",
              "parent_uuid": "70202ea1-7b0d-4a63-b31d-466c93aebc46",
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
              "uuid": "cb81f060-9d4e-4d54-92bb-9290c1f22936",
              "parent_uuid": "70202ea1-7b0d-4a63-b31d-466c93aebc46",
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
              "uuid": "33b6094f-4574-486c-b566-ec4abf020ff8",
              "parent_uuid": "70202ea1-7b0d-4a63-b31d-466c93aebc46",
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
              "uuid": "17a2f05c-c19d-4820-877b-2f19019172fb",
              "parent_uuid": "70202ea1-7b0d-4a63-b31d-466c93aebc46",
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
              "innerHtml": "\r\n                    <span>1 E12</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "24dfa7dd-d0fe-4c32-9ae3-316173f01661",
              "parent_uuid": "70202ea1-7b0d-4a63-b31d-466c93aebc46",
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
          "uuid": "0d128864-7553-4de5-b687-960ada8b3e74",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1600dd9f-d31f-4227-a58a-733372c16753",
              "parent_uuid": "0d128864-7553-4de5-b687-960ada8b3e74",
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
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "3656debd-737b-4aaf-a14a-a0b65566ee28",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "800e501f-a656-4614-b94d-1f6d55ca2ec9",
              "parent_uuid": "3656debd-737b-4aaf-a14a-a0b65566ee28",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "03b9781e-9ad6-40b7-94d8-e6d2ca452adb",
          "parent_uuid": "0153ef13-b970-48f7-9140-d9fe0f165a02",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60c9d8e4-2c69-46cf-80cb-99a06541ed6d",
              "parent_uuid": "03b9781e-9ad6-40b7-94d8-e6d2ca452adb",
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
                  "uuid": "3e74e9e1-0ff8-4f21-acde-3b031fa8b8bd",
                  "parent_uuid": "60c9d8e4-2c69-46cf-80cb-99a06541ed6d",
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
          "sort": 56,
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

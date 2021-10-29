
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
  "uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "0b1e6c9e-0ad5-4db1-9195-237df6b8f239",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "f6bd635a-402d-43b8-86bf-7c616ad3b498",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "9647512f-7e5c-4c1c-8616-1e5709360706",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "68bc1797-684d-498f-a0de-7996e363f627",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "6f14e4b8-bc08-4f6f-a8a2-afbb852afe3e",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "b1c18531-0234-4abc-adda-74130cde22d9",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "864c738a-bf60-46e1-8f05-5ebb93009fec",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
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
      "uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
      "parent_uuid": "ad180eec-69b2-47e4-8213-95b4fe0f7d4f",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1b9de9e8-b2ea-47a8-8e77-6f697c097cd4",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4e772063-76fb-4717-a4ad-9a52cb5190b9",
              "parent_uuid": "1b9de9e8-b2ea-47a8-8e77-6f697c097cd4",
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
              "uuid": "e161d69c-7f23-4351-b2f9-54faa3cbbc8e",
              "parent_uuid": "1b9de9e8-b2ea-47a8-8e77-6f697c097cd4",
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
              "uuid": "298b450d-8279-4dea-bcf5-178649e9c7cc",
              "parent_uuid": "1b9de9e8-b2ea-47a8-8e77-6f697c097cd4",
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
              "uuid": "1c2c026c-07a4-4b56-99f4-fa6cdb48548e",
              "parent_uuid": "1b9de9e8-b2ea-47a8-8e77-6f697c097cd4",
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
          "uuid": "cfc88cd9-bb83-48fe-982c-f15ab778b44e",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "fce408a6-eea7-4965-859e-d9fa69d6286c",
              "parent_uuid": "cfc88cd9-bb83-48fe-982c-f15ab778b44e",
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
              "uuid": "99a8250b-2b6f-412e-92b0-88853aa99e11",
              "parent_uuid": "cfc88cd9-bb83-48fe-982c-f15ab778b44e",
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
              "uuid": "8ead8cb7-bb47-4790-8a88-5af29966c0e6",
              "parent_uuid": "cfc88cd9-bb83-48fe-982c-f15ab778b44e",
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
              "uuid": "ac13bc34-5acd-4693-8986-ee095368437c",
              "parent_uuid": "cfc88cd9-bb83-48fe-982c-f15ab778b44e",
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
          "uuid": "8cf948fe-199e-4b3b-a8b1-53e31ec924e2",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "293ec19e-c5c5-4fa3-9499-312084c010c7",
              "parent_uuid": "8cf948fe-199e-4b3b-a8b1-53e31ec924e2",
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
              "uuid": "3e614bd8-bbb7-47d3-91f9-bf3c180eb6b4",
              "parent_uuid": "8cf948fe-199e-4b3b-a8b1-53e31ec924e2",
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
              "uuid": "12ca6bdb-84f0-4478-b828-8c731bf939b2",
              "parent_uuid": "8cf948fe-199e-4b3b-a8b1-53e31ec924e2",
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
              "uuid": "0950dc2c-eea5-4bbf-bb72-a14c1d196b97",
              "parent_uuid": "8cf948fe-199e-4b3b-a8b1-53e31ec924e2",
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
              "uuid": "9a9c5af5-f20f-4f1a-96fa-93f145ceb92e",
              "parent_uuid": "8cf948fe-199e-4b3b-a8b1-53e31ec924e2",
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
              "uuid": "47dc8ca0-db4f-47ce-92bc-b3fb8e85dcbc",
              "parent_uuid": "8cf948fe-199e-4b3b-a8b1-53e31ec924e2",
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
          "uuid": "4636f41d-afc7-4165-ac24-035455ed7ab7",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1e523ff1-7946-49bc-94f7-aac47a200db7",
              "parent_uuid": "4636f41d-afc7-4165-ac24-035455ed7ab7",
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
          "uuid": "7136a0e9-5e75-4166-9610-f851fd15fc4c",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "985c2106-406f-48e7-a0d8-871211397fc7",
              "parent_uuid": "7136a0e9-5e75-4166-9610-f851fd15fc4c",
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
              "uuid": "f9454551-6c55-40be-aa47-74eda6de2ccb",
              "parent_uuid": "7136a0e9-5e75-4166-9610-f851fd15fc4c",
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
              "uuid": "781e0d44-c4ac-445d-8e9b-caad73bdec9e",
              "parent_uuid": "7136a0e9-5e75-4166-9610-f851fd15fc4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea2e1c93-7ad9-4aed-bb7f-bd20ded71b52",
                  "parent_uuid": "781e0d44-c4ac-445d-8e9b-caad73bdec9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab093433-505b-4fc2-b0b9-39d5bf29ac05",
              "parent_uuid": "7136a0e9-5e75-4166-9610-f851fd15fc4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8dd6e4bd-cfb8-4506-898b-b621772c092f",
                  "parent_uuid": "ab093433-505b-4fc2-b0b9-39d5bf29ac05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2196711e-9092-4dec-9bdd-bf87ad726015",
              "parent_uuid": "7136a0e9-5e75-4166-9610-f851fd15fc4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0924497f-c6ec-4a2d-9b85-daf4c6bf20da",
                  "parent_uuid": "2196711e-9092-4dec-9bdd-bf87ad726015",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccb41abb-3439-4181-8dcf-dddfcf0fff5b",
              "parent_uuid": "7136a0e9-5e75-4166-9610-f851fd15fc4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed8baa00-486c-405b-a3a1-e2e0b26f0fe7",
                  "parent_uuid": "ccb41abb-3439-4181-8dcf-dddfcf0fff5b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37922fbd-d1fb-4e93-a5ac-b5ee9e9d3d39",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c2ebb29c-a527-4108-ade4-7edb4fdef53f",
              "parent_uuid": "37922fbd-d1fb-4e93-a5ac-b5ee9e9d3d39",
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
              "uuid": "78c77f61-bf51-4d7f-bae1-c650db9fab77",
              "parent_uuid": "37922fbd-d1fb-4e93-a5ac-b5ee9e9d3d39",
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
              "uuid": "89deba85-2691-45ac-a6fa-a76ddc31aeab",
              "parent_uuid": "37922fbd-d1fb-4e93-a5ac-b5ee9e9d3d39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bc9543e-e398-4a25-8317-0d91d6fb2794",
                  "parent_uuid": "89deba85-2691-45ac-a6fa-a76ddc31aeab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c9289cb-f5ee-45ac-aa1a-c0e7e55f5b30",
              "parent_uuid": "37922fbd-d1fb-4e93-a5ac-b5ee9e9d3d39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16d6ca00-3a99-49bb-b410-7de4a9c5a4c0",
                  "parent_uuid": "5c9289cb-f5ee-45ac-aa1a-c0e7e55f5b30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b04d9ae4-4055-4558-a01d-3dfd5d7a416f",
              "parent_uuid": "37922fbd-d1fb-4e93-a5ac-b5ee9e9d3d39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73575795-284f-4dbb-8da8-b255d6c84d45",
                  "parent_uuid": "b04d9ae4-4055-4558-a01d-3dfd5d7a416f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6034bcf-ab2a-4cab-9e29-20cb05997bf7",
              "parent_uuid": "37922fbd-d1fb-4e93-a5ac-b5ee9e9d3d39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40ef6580-81d0-400d-87ba-58ddfb7800ce",
                  "parent_uuid": "b6034bcf-ab2a-4cab-9e29-20cb05997bf7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "46a01b0e-829a-49ee-9b46-9c1c82986032",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7926567a-5430-4356-8614-2e20484a8afb",
              "parent_uuid": "46a01b0e-829a-49ee-9b46-9c1c82986032",
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
              "uuid": "f9c6e907-23ed-4c95-ba49-a0ea3d4e6b65",
              "parent_uuid": "46a01b0e-829a-49ee-9b46-9c1c82986032",
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
              "uuid": "908302f3-e360-4923-ac0f-7fe2ffc3c945",
              "parent_uuid": "46a01b0e-829a-49ee-9b46-9c1c82986032",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0542ac6-ea07-4a62-b602-953dddbaea6d",
                  "parent_uuid": "908302f3-e360-4923-ac0f-7fe2ffc3c945",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5683b6af-1424-48c4-9061-93b853ec937d",
              "parent_uuid": "46a01b0e-829a-49ee-9b46-9c1c82986032",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ecaee18-22b6-49f0-97eb-fca7a71da211",
                  "parent_uuid": "5683b6af-1424-48c4-9061-93b853ec937d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cbca8247-de6a-4378-aabc-a3517ca39b0c",
              "parent_uuid": "46a01b0e-829a-49ee-9b46-9c1c82986032",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa2e9743-0d96-45f2-b729-f8f870786615",
                  "parent_uuid": "cbca8247-de6a-4378-aabc-a3517ca39b0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58dee788-437b-4485-af89-20c8cc9dcb44",
              "parent_uuid": "46a01b0e-829a-49ee-9b46-9c1c82986032",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bb509d5-2a4e-483a-96e0-f143bfe6120c",
                  "parent_uuid": "58dee788-437b-4485-af89-20c8cc9dcb44",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9afdb661-7a8a-4b0f-aa20-74f84a859f5a",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3d68040-a576-4790-ab2d-c30642712a4b",
              "parent_uuid": "9afdb661-7a8a-4b0f-aa20-74f84a859f5a",
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
              "uuid": "50447cf5-3072-4fba-9f65-3b139ee7fb89",
              "parent_uuid": "9afdb661-7a8a-4b0f-aa20-74f84a859f5a",
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
              "uuid": "fc6afff4-1dfc-4430-8c75-1001083bb298",
              "parent_uuid": "9afdb661-7a8a-4b0f-aa20-74f84a859f5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91791e77-9694-4f3b-bc2e-dce72f98507c",
                  "parent_uuid": "fc6afff4-1dfc-4430-8c75-1001083bb298",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a595880-7c1e-4b54-8943-8e3660050a30",
              "parent_uuid": "9afdb661-7a8a-4b0f-aa20-74f84a859f5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acbdf924-8826-4d5d-a624-d2cb80f9e282",
                  "parent_uuid": "5a595880-7c1e-4b54-8943-8e3660050a30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed833560-c03c-4a30-a96a-7dc0e3ec1142",
              "parent_uuid": "9afdb661-7a8a-4b0f-aa20-74f84a859f5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f183d21c-9082-453f-9742-c24517252e07",
                  "parent_uuid": "ed833560-c03c-4a30-a96a-7dc0e3ec1142",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ceb1774e-1470-4e29-90d0-441cd337be79",
              "parent_uuid": "9afdb661-7a8a-4b0f-aa20-74f84a859f5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "766878a7-2d79-479a-a81f-a10b9abf41d0",
                  "parent_uuid": "ceb1774e-1470-4e29-90d0-441cd337be79",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "91ec7f07-e254-403e-b850-87775d910ac9",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c95e6af-a358-4baa-9c21-1f14518b7257",
              "parent_uuid": "91ec7f07-e254-403e-b850-87775d910ac9",
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
              "uuid": "ee9101a3-c1ab-4b00-8361-9ffdb4387c46",
              "parent_uuid": "91ec7f07-e254-403e-b850-87775d910ac9",
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
              "uuid": "98f50717-fb15-434a-98fa-e6eda4c28b04",
              "parent_uuid": "91ec7f07-e254-403e-b850-87775d910ac9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4dfd3787-1ec7-4cb8-b817-420db6cf5f99",
                  "parent_uuid": "98f50717-fb15-434a-98fa-e6eda4c28b04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31974568-2bb5-45fc-bb22-08ff31228e13",
              "parent_uuid": "91ec7f07-e254-403e-b850-87775d910ac9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c586547-c5d7-4baa-8908-4bb7be3cd49e",
                  "parent_uuid": "31974568-2bb5-45fc-bb22-08ff31228e13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "811fdb3d-f900-48ef-9f38-aca2232e0fd8",
              "parent_uuid": "91ec7f07-e254-403e-b850-87775d910ac9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "901d69cb-4ec9-4f10-ae36-39b601e0d47d",
                  "parent_uuid": "811fdb3d-f900-48ef-9f38-aca2232e0fd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96f7c962-c161-438b-a5e3-8741fb004928",
              "parent_uuid": "91ec7f07-e254-403e-b850-87775d910ac9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ecb2b3b-b691-4e2a-888c-993bd782d9f9",
                  "parent_uuid": "96f7c962-c161-438b-a5e3-8741fb004928",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ffedfa5-8d3a-47d4-85bd-9d3d4b0410a0",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e3ca021-b031-4bcf-b167-d7b88315a921",
              "parent_uuid": "4ffedfa5-8d3a-47d4-85bd-9d3d4b0410a0",
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
              "uuid": "56b3f066-e13b-4ca9-b7f4-8fc092b9515f",
              "parent_uuid": "4ffedfa5-8d3a-47d4-85bd-9d3d4b0410a0",
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
              "uuid": "4b471241-0aa2-43c6-bfe1-11f903d34684",
              "parent_uuid": "4ffedfa5-8d3a-47d4-85bd-9d3d4b0410a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3044714c-5fdd-450a-adff-d0b435de112b",
                  "parent_uuid": "4b471241-0aa2-43c6-bfe1-11f903d34684",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9e754e5-03ed-457a-98df-de44822203d2",
              "parent_uuid": "4ffedfa5-8d3a-47d4-85bd-9d3d4b0410a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f34ddda4-ab1e-4e3b-b078-f9cfecb15df7",
                  "parent_uuid": "b9e754e5-03ed-457a-98df-de44822203d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25a4808b-1772-472e-a8fc-b40b13033910",
              "parent_uuid": "4ffedfa5-8d3a-47d4-85bd-9d3d4b0410a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65e80333-243b-4167-9e3f-41153c1f9f67",
                  "parent_uuid": "25a4808b-1772-472e-a8fc-b40b13033910",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "971fac73-33b4-4ba9-aed2-9837a1876b17",
              "parent_uuid": "4ffedfa5-8d3a-47d4-85bd-9d3d4b0410a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8575137e-68a4-4701-a4af-af85fc83948c",
                  "parent_uuid": "971fac73-33b4-4ba9-aed2-9837a1876b17",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "465d6271-5df1-41fb-9977-f0bdee8abddd",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a01c8a7-3598-444e-903b-27d6471602de",
              "parent_uuid": "465d6271-5df1-41fb-9977-f0bdee8abddd",
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
              "uuid": "43d508e3-b70a-4137-8874-c93a36bddee8",
              "parent_uuid": "465d6271-5df1-41fb-9977-f0bdee8abddd",
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
              "uuid": "ccf1a4bd-c96d-4755-abf5-9cda540419e2",
              "parent_uuid": "465d6271-5df1-41fb-9977-f0bdee8abddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f406cad0-acdf-4f59-b643-1932fa69b1a3",
                  "parent_uuid": "ccf1a4bd-c96d-4755-abf5-9cda540419e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "543b2178-09ae-4b6e-844c-d94791ceb59f",
              "parent_uuid": "465d6271-5df1-41fb-9977-f0bdee8abddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d48dd87-51bd-438f-8e53-d1bda061580a",
                  "parent_uuid": "543b2178-09ae-4b6e-844c-d94791ceb59f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8cbb5bf2-8014-434f-8eff-4c1770cbe5fa",
              "parent_uuid": "465d6271-5df1-41fb-9977-f0bdee8abddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebb286a0-3b29-4db4-b914-5dc919f03150",
                  "parent_uuid": "8cbb5bf2-8014-434f-8eff-4c1770cbe5fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5454250e-89a3-4b10-9386-f61b7a0a3979",
              "parent_uuid": "465d6271-5df1-41fb-9977-f0bdee8abddd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ad8abd7-aa86-4348-9a47-f4306abd069a",
                  "parent_uuid": "5454250e-89a3-4b10-9386-f61b7a0a3979",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1739f349-e9b1-4472-b635-7d9eb028824c",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7586486-1a74-4200-a453-eb5ac5c38ccc",
              "parent_uuid": "1739f349-e9b1-4472-b635-7d9eb028824c",
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
              "uuid": "04ae2e46-796c-4d54-b8c3-9ad054253cd8",
              "parent_uuid": "1739f349-e9b1-4472-b635-7d9eb028824c",
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
              "uuid": "888d70ad-53e8-4f6a-807c-dc6152dd8d59",
              "parent_uuid": "1739f349-e9b1-4472-b635-7d9eb028824c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a230ad9-5a0a-42ad-93cc-40618727eebc",
                  "parent_uuid": "888d70ad-53e8-4f6a-807c-dc6152dd8d59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "990a85cb-4b3c-4376-b219-7cf3f4d4b014",
              "parent_uuid": "1739f349-e9b1-4472-b635-7d9eb028824c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a658d20-0385-44b0-bb04-c210c7061e88",
                  "parent_uuid": "990a85cb-4b3c-4376-b219-7cf3f4d4b014",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "784476e9-018e-4441-bf03-3c7a5c1f1d6a",
              "parent_uuid": "1739f349-e9b1-4472-b635-7d9eb028824c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e24edb4e-40e7-4852-a181-d16fbc333bc9",
                  "parent_uuid": "784476e9-018e-4441-bf03-3c7a5c1f1d6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3d2c7bd-171d-4b5d-b7e4-3256107cc964",
              "parent_uuid": "1739f349-e9b1-4472-b635-7d9eb028824c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "380eea18-14f7-4e92-89b8-05a1f2845194",
                  "parent_uuid": "b3d2c7bd-171d-4b5d-b7e4-3256107cc964",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "65294344-f34b-4a1c-9c9c-812ce74d39dd",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fdc6c06f-8caf-4446-920e-964b9c5b00a4",
              "parent_uuid": "65294344-f34b-4a1c-9c9c-812ce74d39dd",
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
              "uuid": "9481f629-d3c1-4bc1-affc-d936a694ef65",
              "parent_uuid": "65294344-f34b-4a1c-9c9c-812ce74d39dd",
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
              "uuid": "4f1e7e84-172b-4b88-9149-ec96215e0daf",
              "parent_uuid": "65294344-f34b-4a1c-9c9c-812ce74d39dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f120bf94-3720-4e06-9784-d3e9e2a54451",
                  "parent_uuid": "4f1e7e84-172b-4b88-9149-ec96215e0daf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b78892a-a8a2-40f1-841f-71b3233a8788",
              "parent_uuid": "65294344-f34b-4a1c-9c9c-812ce74d39dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d9c8bf0-df64-492b-9c78-20c0412eb2c3",
                  "parent_uuid": "6b78892a-a8a2-40f1-841f-71b3233a8788",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aab452cf-2702-4f38-be6e-9efd2fa69375",
              "parent_uuid": "65294344-f34b-4a1c-9c9c-812ce74d39dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d37da672-4432-4170-9165-395db7fb70cc",
                  "parent_uuid": "aab452cf-2702-4f38-be6e-9efd2fa69375",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8138824-6191-4713-b610-1338a76201ad",
              "parent_uuid": "65294344-f34b-4a1c-9c9c-812ce74d39dd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff6c39c3-7a73-49bc-b7f5-a6b6cded58c9",
                  "parent_uuid": "c8138824-6191-4713-b610-1338a76201ad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5422e045-4763-4061-b741-69a405148552",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a43a582b-d956-4f89-818b-ddfbc1b27171",
              "parent_uuid": "5422e045-4763-4061-b741-69a405148552",
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
              "uuid": "b59584b4-0ce3-424e-a0bb-df9ff38986e3",
              "parent_uuid": "5422e045-4763-4061-b741-69a405148552",
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
              "uuid": "5d8b00d7-044e-433f-8fa1-1bd835afdca9",
              "parent_uuid": "5422e045-4763-4061-b741-69a405148552",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a60b23b2-1fa5-444d-a65b-2a45bbe4c55b",
                  "parent_uuid": "5d8b00d7-044e-433f-8fa1-1bd835afdca9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81661623-591a-42b3-817f-ba36f03fc77e",
              "parent_uuid": "5422e045-4763-4061-b741-69a405148552",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e57dac3-c41a-463b-949f-a3341c6cf052",
                  "parent_uuid": "81661623-591a-42b3-817f-ba36f03fc77e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6f46207-745a-48b8-a074-91aff59035f1",
              "parent_uuid": "5422e045-4763-4061-b741-69a405148552",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dee319ea-68f2-4c3d-989b-dcb0a6b86a9d",
                  "parent_uuid": "c6f46207-745a-48b8-a074-91aff59035f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc9c7c41-5323-4a3e-92c8-f6e0f25a3010",
              "parent_uuid": "5422e045-4763-4061-b741-69a405148552",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f96f45a-b1d7-49d8-bfff-af51ee319998",
                  "parent_uuid": "cc9c7c41-5323-4a3e-92c8-f6e0f25a3010",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2f65a9b1-4e32-48f4-a39e-7b6ea49975e8",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d12f9581-46f8-44dd-a4b9-f639e7ec506c",
              "parent_uuid": "2f65a9b1-4e32-48f4-a39e-7b6ea49975e8",
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
              "uuid": "1ac8fc84-d4a7-4df8-bfac-8cdee09d09f1",
              "parent_uuid": "2f65a9b1-4e32-48f4-a39e-7b6ea49975e8",
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
              "uuid": "de77ffe3-c665-4a57-94c0-4768c6323f35",
              "parent_uuid": "2f65a9b1-4e32-48f4-a39e-7b6ea49975e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aedb57ec-07d0-4b9a-9e78-b68af422e0ed",
                  "parent_uuid": "de77ffe3-c665-4a57-94c0-4768c6323f35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c7a885b-a298-449d-9f30-50e7fbdac6c9",
              "parent_uuid": "2f65a9b1-4e32-48f4-a39e-7b6ea49975e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a171bf5-f5d8-409b-bfff-48aca479525e",
                  "parent_uuid": "4c7a885b-a298-449d-9f30-50e7fbdac6c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a73bb5c-170e-44ce-81ea-2f15fac9472a",
              "parent_uuid": "2f65a9b1-4e32-48f4-a39e-7b6ea49975e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbcd144c-ed8b-46b9-9ad3-d1a39f1e2e9d",
                  "parent_uuid": "0a73bb5c-170e-44ce-81ea-2f15fac9472a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5185f9c-04f9-4d15-a94b-ff67373a3c55",
              "parent_uuid": "2f65a9b1-4e32-48f4-a39e-7b6ea49975e8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bad5e20d-bbdf-4acb-91ca-b5f6b903b149",
                  "parent_uuid": "b5185f9c-04f9-4d15-a94b-ff67373a3c55",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0433eeb5-47b4-4c51-9a80-4212c54ea3af",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0760ab8-c822-447f-836a-18ea8dfa1748",
              "parent_uuid": "0433eeb5-47b4-4c51-9a80-4212c54ea3af",
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
              "uuid": "ca1168b1-344b-4c0b-ad8d-9c189f80d1a2",
              "parent_uuid": "0433eeb5-47b4-4c51-9a80-4212c54ea3af",
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
              "uuid": "6eda50e3-9d78-4ffe-8fe8-9b16908d598f",
              "parent_uuid": "0433eeb5-47b4-4c51-9a80-4212c54ea3af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b25f34c5-4112-4bea-8e81-7b5bd9d41ff4",
                  "parent_uuid": "6eda50e3-9d78-4ffe-8fe8-9b16908d598f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8957c325-4151-46ee-91c4-00e12735d52d",
              "parent_uuid": "0433eeb5-47b4-4c51-9a80-4212c54ea3af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19311e0e-a746-4c5d-a8c5-e6f9be264d2b",
                  "parent_uuid": "8957c325-4151-46ee-91c4-00e12735d52d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83b75040-3030-4c2e-8506-76fded17e35b",
              "parent_uuid": "0433eeb5-47b4-4c51-9a80-4212c54ea3af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53ebf324-cb4a-4af2-8bad-a7417b24617f",
                  "parent_uuid": "83b75040-3030-4c2e-8506-76fded17e35b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f5b2bd9-0e91-4257-a480-5db80a853873",
              "parent_uuid": "0433eeb5-47b4-4c51-9a80-4212c54ea3af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25a68aa5-531c-430d-952b-6fd88c691448",
                  "parent_uuid": "4f5b2bd9-0e91-4257-a480-5db80a853873",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9b320996-b552-4f1b-a977-0635e6a0a769",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a38de90-7b3c-4496-8d5f-43083486395d",
              "parent_uuid": "9b320996-b552-4f1b-a977-0635e6a0a769",
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
              "uuid": "744ca05a-22e2-4e95-aa52-a72921b1e52c",
              "parent_uuid": "9b320996-b552-4f1b-a977-0635e6a0a769",
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
              "uuid": "fd97f6af-3e02-45a8-ae45-d1d9ea3ce3a7",
              "parent_uuid": "9b320996-b552-4f1b-a977-0635e6a0a769",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cff446e9-586e-4a0d-a260-a1ea0a79f35f",
                  "parent_uuid": "fd97f6af-3e02-45a8-ae45-d1d9ea3ce3a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8546243-3800-426a-86f4-db6268fb5bd0",
              "parent_uuid": "9b320996-b552-4f1b-a977-0635e6a0a769",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d64548f4-793f-4b60-ad99-183b9417db19",
                  "parent_uuid": "c8546243-3800-426a-86f4-db6268fb5bd0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b6cdc07-6ee3-45e6-ab7d-9b5d3cfb1ba2",
              "parent_uuid": "9b320996-b552-4f1b-a977-0635e6a0a769",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "649533de-2f98-4d7d-bc8e-914cb5060eb7",
                  "parent_uuid": "3b6cdc07-6ee3-45e6-ab7d-9b5d3cfb1ba2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b40d764-ca35-4fd3-a2cf-118c0644bae3",
              "parent_uuid": "9b320996-b552-4f1b-a977-0635e6a0a769",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6271d57e-46df-4160-8682-1756738561d5",
                  "parent_uuid": "4b40d764-ca35-4fd3-a2cf-118c0644bae3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79c0133d-14b9-4c24-ac07-00fdf6848ad2",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab9d4cbf-dacf-44db-a87d-cf6929d3badf",
              "parent_uuid": "79c0133d-14b9-4c24-ac07-00fdf6848ad2",
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
              "uuid": "6958ee1b-8d2b-460b-af31-3c0ca5f963ec",
              "parent_uuid": "79c0133d-14b9-4c24-ac07-00fdf6848ad2",
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
              "uuid": "de1cd210-465d-45c6-a86a-1428108fb05f",
              "parent_uuid": "79c0133d-14b9-4c24-ac07-00fdf6848ad2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "617d52db-4cde-4aeb-a4b2-2f4e1d18e970",
                  "parent_uuid": "de1cd210-465d-45c6-a86a-1428108fb05f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d30804a-a7c0-4c41-a93d-415f1751e060",
              "parent_uuid": "79c0133d-14b9-4c24-ac07-00fdf6848ad2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89c13351-ca3f-4c61-9744-b35c518addfa",
                  "parent_uuid": "1d30804a-a7c0-4c41-a93d-415f1751e060",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bafc64c6-8978-42fc-96bf-426d002a0163",
              "parent_uuid": "79c0133d-14b9-4c24-ac07-00fdf6848ad2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7d3c3a9-beb3-4a10-ae34-a18e8c217c03",
                  "parent_uuid": "bafc64c6-8978-42fc-96bf-426d002a0163",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da19a6c2-c59a-42b7-939c-b97518c13a37",
              "parent_uuid": "79c0133d-14b9-4c24-ac07-00fdf6848ad2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e97bf31-32d7-4558-aa8b-b2c9f3dd9b96",
                  "parent_uuid": "da19a6c2-c59a-42b7-939c-b97518c13a37",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "994ee637-3316-4f62-868c-7d2c7b669d00",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0211282-fa68-4cfc-a33c-6f632a81aeb4",
              "parent_uuid": "994ee637-3316-4f62-868c-7d2c7b669d00",
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
          "uuid": "2401e8ca-dc08-43e6-abb2-27ed7c5194a1",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b139ea0e-cda1-403c-a548-c97a533b3627",
              "parent_uuid": "2401e8ca-dc08-43e6-abb2-27ed7c5194a1",
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
          "uuid": "77d0c801-2f88-46b2-9579-e9b46af52e3f",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a50d8084-07f6-45e1-a6b8-0c4b69f59acf",
              "parent_uuid": "77d0c801-2f88-46b2-9579-e9b46af52e3f",
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
              "uuid": "68674d34-e520-4876-9775-ff47d19eef11",
              "parent_uuid": "77d0c801-2f88-46b2-9579-e9b46af52e3f",
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
              "uuid": "816acc56-24b6-4c6a-82d7-ffccb848b1a4",
              "parent_uuid": "77d0c801-2f88-46b2-9579-e9b46af52e3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14cfb7cb-ac5b-41f9-a29c-1050753961a7",
                  "parent_uuid": "816acc56-24b6-4c6a-82d7-ffccb848b1a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c88ef2b9-7222-4a9a-91de-f85c3fbfea1d",
              "parent_uuid": "77d0c801-2f88-46b2-9579-e9b46af52e3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e478f227-24e3-4870-a662-a379389de5a8",
                  "parent_uuid": "c88ef2b9-7222-4a9a-91de-f85c3fbfea1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88803248-a713-40b5-b600-51bc798dbd0b",
              "parent_uuid": "77d0c801-2f88-46b2-9579-e9b46af52e3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6102ba21-c955-42f4-a03a-c712de003bb8",
                  "parent_uuid": "88803248-a713-40b5-b600-51bc798dbd0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b41fdc0-9093-4f92-a575-4fb7fc86343b",
              "parent_uuid": "77d0c801-2f88-46b2-9579-e9b46af52e3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10fe17be-e95a-4e24-97d6-80ad7d5a97eb",
                  "parent_uuid": "6b41fdc0-9093-4f92-a575-4fb7fc86343b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f7474b19-6fc4-4a3c-9178-079a388722ab",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55f740c6-da97-461a-80af-b1411f22ffd2",
              "parent_uuid": "f7474b19-6fc4-4a3c-9178-079a388722ab",
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
              "uuid": "d61a2202-8d4f-452e-a302-3ba837707b55",
              "parent_uuid": "f7474b19-6fc4-4a3c-9178-079a388722ab",
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
              "uuid": "1ac1af45-e5f9-4d05-804c-1f7f143e11ee",
              "parent_uuid": "f7474b19-6fc4-4a3c-9178-079a388722ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3a86844-44ca-4533-b548-23b7b03f68e8",
                  "parent_uuid": "1ac1af45-e5f9-4d05-804c-1f7f143e11ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3aa65d5c-aab9-4a56-bd0e-8ebe47ecd34f",
              "parent_uuid": "f7474b19-6fc4-4a3c-9178-079a388722ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "088f9e78-2d9d-4ea1-9713-4ea640b43b86",
                  "parent_uuid": "3aa65d5c-aab9-4a56-bd0e-8ebe47ecd34f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9cf8d1d-939e-4786-bde3-1c6a70bc0e0e",
              "parent_uuid": "f7474b19-6fc4-4a3c-9178-079a388722ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b8c8362-8b83-4c00-a4b3-64da15c4d0c3",
                  "parent_uuid": "b9cf8d1d-939e-4786-bde3-1c6a70bc0e0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19a23970-fdd2-4f91-a5c9-03f5f5b9ace0",
              "parent_uuid": "f7474b19-6fc4-4a3c-9178-079a388722ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12d9dcef-99ac-4551-ba9c-330459e26d02",
                  "parent_uuid": "19a23970-fdd2-4f91-a5c9-03f5f5b9ace0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9b62c6de-4c6b-4cb9-88c9-7a89371f3e39",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e8b7803-e209-4a8a-977c-7b97eb4b82cc",
              "parent_uuid": "9b62c6de-4c6b-4cb9-88c9-7a89371f3e39",
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
              "uuid": "18981940-a32a-41ec-ace3-1e72a930f22e",
              "parent_uuid": "9b62c6de-4c6b-4cb9-88c9-7a89371f3e39",
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
              "uuid": "d28ed026-a21a-468b-847f-45ed19bbbb14",
              "parent_uuid": "9b62c6de-4c6b-4cb9-88c9-7a89371f3e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0968809-ce03-44a0-91b1-107e645c279b",
                  "parent_uuid": "d28ed026-a21a-468b-847f-45ed19bbbb14",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34895521-ef2a-49da-b5a4-84439028cc70",
              "parent_uuid": "9b62c6de-4c6b-4cb9-88c9-7a89371f3e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8147965-0833-46a8-add1-40d24229ec3e",
                  "parent_uuid": "34895521-ef2a-49da-b5a4-84439028cc70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac531865-9860-457a-9e0b-0180a66615fe",
              "parent_uuid": "9b62c6de-4c6b-4cb9-88c9-7a89371f3e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "962cdcb1-8e62-455d-b598-93b3f34d7ad4",
                  "parent_uuid": "ac531865-9860-457a-9e0b-0180a66615fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1143559-2e1b-4879-aa9e-ba438e45af9a",
              "parent_uuid": "9b62c6de-4c6b-4cb9-88c9-7a89371f3e39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "497bd1fd-abf2-49dc-9489-5ce7dc11f329",
                  "parent_uuid": "b1143559-2e1b-4879-aa9e-ba438e45af9a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f41374af-32eb-479a-b7a3-db99f0c99499",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "feba8758-378a-4476-89d1-8e90e95ebd52",
              "parent_uuid": "f41374af-32eb-479a-b7a3-db99f0c99499",
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
              "uuid": "15f2168b-37cd-4adb-a04b-8ec6a155dc77",
              "parent_uuid": "f41374af-32eb-479a-b7a3-db99f0c99499",
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
              "uuid": "72aeec30-4149-40e1-912a-cd052ad477e0",
              "parent_uuid": "f41374af-32eb-479a-b7a3-db99f0c99499",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb37796f-9843-4609-aeca-943f96f52fd2",
                  "parent_uuid": "72aeec30-4149-40e1-912a-cd052ad477e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b9f7210-0f24-4bf3-a9a2-ec0659731509",
              "parent_uuid": "f41374af-32eb-479a-b7a3-db99f0c99499",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de1d462a-bc97-4fd7-9bc1-6b9bc36343a5",
                  "parent_uuid": "9b9f7210-0f24-4bf3-a9a2-ec0659731509",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "791ed88a-f218-467e-a256-5ea4c12a0fe0",
              "parent_uuid": "f41374af-32eb-479a-b7a3-db99f0c99499",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6088ea96-a0f3-466e-b49b-7f0cefe08841",
                  "parent_uuid": "791ed88a-f218-467e-a256-5ea4c12a0fe0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d8f4567-0485-4eac-b234-c99586f877b1",
              "parent_uuid": "f41374af-32eb-479a-b7a3-db99f0c99499",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4578f278-59e6-4ca2-a0f8-89ab0808b96c",
                  "parent_uuid": "4d8f4567-0485-4eac-b234-c99586f877b1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b78f47a7-e6ff-49d7-920f-b910c5dedd5c",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0475e758-2952-4857-886b-c93118765413",
              "parent_uuid": "b78f47a7-e6ff-49d7-920f-b910c5dedd5c",
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
              "uuid": "c57c0895-ee84-4044-bb8a-3d6e3fb53350",
              "parent_uuid": "b78f47a7-e6ff-49d7-920f-b910c5dedd5c",
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
              "uuid": "e73982a6-dd9f-4309-9baf-2954af12aa4f",
              "parent_uuid": "b78f47a7-e6ff-49d7-920f-b910c5dedd5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1385200-af34-4775-b142-519411c26bf1",
                  "parent_uuid": "e73982a6-dd9f-4309-9baf-2954af12aa4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c04c066-c41b-4b94-aa4b-eca527ced5ad",
              "parent_uuid": "b78f47a7-e6ff-49d7-920f-b910c5dedd5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac2e0f20-94a2-48bb-b1fa-87f708faaa40",
                  "parent_uuid": "2c04c066-c41b-4b94-aa4b-eca527ced5ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a42ac3f-a7b9-44d2-b651-a2fffcc7d85a",
              "parent_uuid": "b78f47a7-e6ff-49d7-920f-b910c5dedd5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "024276dd-9f60-4939-a994-859cc4b7e7a7",
                  "parent_uuid": "0a42ac3f-a7b9-44d2-b651-a2fffcc7d85a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac584636-9681-4c8e-bdbf-547e80a4b2d2",
              "parent_uuid": "b78f47a7-e6ff-49d7-920f-b910c5dedd5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d0ee042-552b-4042-83fe-c1a47c63fb74",
                  "parent_uuid": "ac584636-9681-4c8e-bdbf-547e80a4b2d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d074740b-efc8-44b4-aeba-5bade1789997",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "449ba1a6-9e3b-4f1c-beef-df456ed69d30",
              "parent_uuid": "d074740b-efc8-44b4-aeba-5bade1789997",
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
              "uuid": "a6171c0d-2261-41ef-a9cb-bf678cf8d012",
              "parent_uuid": "d074740b-efc8-44b4-aeba-5bade1789997",
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
              "uuid": "6ed0f52c-eac0-44ce-9f68-b1d3367de4fe",
              "parent_uuid": "d074740b-efc8-44b4-aeba-5bade1789997",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75ae7142-7f6b-49fe-9e62-8bbf07221ba3",
                  "parent_uuid": "6ed0f52c-eac0-44ce-9f68-b1d3367de4fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "959c4032-7fd5-4236-aa66-f24972e19d17",
              "parent_uuid": "d074740b-efc8-44b4-aeba-5bade1789997",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c4d259d-5a58-4f50-b722-f5cd9138ae26",
                  "parent_uuid": "959c4032-7fd5-4236-aa66-f24972e19d17",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6528b733-7062-4474-9e31-d7e04c82d985",
              "parent_uuid": "d074740b-efc8-44b4-aeba-5bade1789997",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d025d24f-5a6c-45b1-86b8-de97cb090bc9",
                  "parent_uuid": "6528b733-7062-4474-9e31-d7e04c82d985",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d09bf638-a9e6-4a1a-bbba-98eea3d75c06",
              "parent_uuid": "d074740b-efc8-44b4-aeba-5bade1789997",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47997b3f-a769-4c5d-b62c-af44e9fea5d1",
                  "parent_uuid": "d09bf638-a9e6-4a1a-bbba-98eea3d75c06",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ce26f3d7-306d-4983-80da-b0ee69e335a8",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf2140bc-ca2b-4d30-9e12-c865368fa983",
              "parent_uuid": "ce26f3d7-306d-4983-80da-b0ee69e335a8",
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
              "uuid": "7c65b3e3-9ea8-447f-b5c8-66c19116dcda",
              "parent_uuid": "ce26f3d7-306d-4983-80da-b0ee69e335a8",
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
              "uuid": "a4180aea-c928-4d2e-8b93-1dade89fa776",
              "parent_uuid": "ce26f3d7-306d-4983-80da-b0ee69e335a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83caafea-effe-4eec-b203-c7d680eca801",
                  "parent_uuid": "a4180aea-c928-4d2e-8b93-1dade89fa776",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c682cf6e-6b23-4988-ba16-c1443fd48327",
              "parent_uuid": "ce26f3d7-306d-4983-80da-b0ee69e335a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28d7612a-8dc4-4b09-8dd7-b7ad99533a31",
                  "parent_uuid": "c682cf6e-6b23-4988-ba16-c1443fd48327",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4e525d2-0d24-4450-a945-1e451fcea3bc",
              "parent_uuid": "ce26f3d7-306d-4983-80da-b0ee69e335a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a7841f2-3f6d-420d-8516-1326ec2d5890",
                  "parent_uuid": "d4e525d2-0d24-4450-a945-1e451fcea3bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "daa4b465-f018-4fd1-bd04-3b680fb4757b",
              "parent_uuid": "ce26f3d7-306d-4983-80da-b0ee69e335a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e171117-0037-48f8-9789-1c09c4c0f02d",
                  "parent_uuid": "daa4b465-f018-4fd1-bd04-3b680fb4757b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e3c03205-1d0d-4f68-8eec-7dd8c4fbb679",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ea543dd-08b9-46b5-8da3-1e9893dd7df4",
              "parent_uuid": "e3c03205-1d0d-4f68-8eec-7dd8c4fbb679",
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
              "uuid": "7c0071e1-ca86-4850-9dae-b4d3b7dfb018",
              "parent_uuid": "e3c03205-1d0d-4f68-8eec-7dd8c4fbb679",
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
              "uuid": "d155d441-6f44-4d4b-af16-0bbdebc02536",
              "parent_uuid": "e3c03205-1d0d-4f68-8eec-7dd8c4fbb679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df365b35-47cb-4997-b105-460669af9b2d",
                  "parent_uuid": "d155d441-6f44-4d4b-af16-0bbdebc02536",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2916801-0c89-4f3d-8fbb-238d441c0b67",
              "parent_uuid": "e3c03205-1d0d-4f68-8eec-7dd8c4fbb679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc15159e-8f41-4865-8be1-4a17985496b4",
                  "parent_uuid": "d2916801-0c89-4f3d-8fbb-238d441c0b67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "038ecaf4-4373-4a33-8347-6ee5e8e5f6e1",
              "parent_uuid": "e3c03205-1d0d-4f68-8eec-7dd8c4fbb679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a33fafa4-f791-4fd4-80ff-0a0dfd7cb664",
                  "parent_uuid": "038ecaf4-4373-4a33-8347-6ee5e8e5f6e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf23ee12-7da7-4805-8164-5aa94eaab72c",
              "parent_uuid": "e3c03205-1d0d-4f68-8eec-7dd8c4fbb679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0faaeac4-0a78-41f0-b9b0-1565d9386242",
                  "parent_uuid": "bf23ee12-7da7-4805-8164-5aa94eaab72c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3203010e-ab11-43c6-84d3-da8eb4daeb25",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a4a0c0d9-dc89-40b5-96ca-b94af3455084",
              "parent_uuid": "3203010e-ab11-43c6-84d3-da8eb4daeb25",
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
          "uuid": "5602e004-a7dd-4dff-a9a1-1a34734e9a06",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "274f057c-2e28-4069-bbc4-ec99d5a9d6e7",
              "parent_uuid": "5602e004-a7dd-4dff-a9a1-1a34734e9a06",
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
              "uuid": "26f88d57-1ca2-4b3f-85bf-8b523b264f68",
              "parent_uuid": "5602e004-a7dd-4dff-a9a1-1a34734e9a06",
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
              "uuid": "be035f6d-fdd4-4b96-b532-4af62cfd5b1d",
              "parent_uuid": "5602e004-a7dd-4dff-a9a1-1a34734e9a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0178c69-e651-4e26-857e-8695d1c1baee",
                  "parent_uuid": "be035f6d-fdd4-4b96-b532-4af62cfd5b1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "034de90f-15fb-4300-b40c-70d056f30ff0",
              "parent_uuid": "5602e004-a7dd-4dff-a9a1-1a34734e9a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91a0fc05-fdf9-4a85-be73-13dc6d4ec7f1",
                  "parent_uuid": "034de90f-15fb-4300-b40c-70d056f30ff0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "84bc969a-6399-446e-a2d6-54648508d2bb",
              "parent_uuid": "5602e004-a7dd-4dff-a9a1-1a34734e9a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53fa59d4-f77e-4a70-b3df-c57dc1eb293e",
                  "parent_uuid": "84bc969a-6399-446e-a2d6-54648508d2bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c495b49-323e-4933-86a7-fe17cc160bb2",
              "parent_uuid": "5602e004-a7dd-4dff-a9a1-1a34734e9a06",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1d28e59-cba4-4093-b102-03688c1a425f",
                  "parent_uuid": "3c495b49-323e-4933-86a7-fe17cc160bb2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "97e8b3bd-9d09-4b98-afe5-09801f64bf6f",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a93d6b83-ac0b-4b71-a910-e7ad4e466762",
              "parent_uuid": "97e8b3bd-9d09-4b98-afe5-09801f64bf6f",
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
              "uuid": "78345e94-b78c-4a58-b867-4a58ff15cc8a",
              "parent_uuid": "97e8b3bd-9d09-4b98-afe5-09801f64bf6f",
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
              "uuid": "8453f5b6-e8e5-4264-86cb-38f35a02318a",
              "parent_uuid": "97e8b3bd-9d09-4b98-afe5-09801f64bf6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "964ca4df-fa17-4b2a-b294-b1c58bbadbca",
                  "parent_uuid": "8453f5b6-e8e5-4264-86cb-38f35a02318a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e7dd237-d6bc-4d23-8cb6-ad38db702da9",
              "parent_uuid": "97e8b3bd-9d09-4b98-afe5-09801f64bf6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a922a95-a18f-47b0-a191-5a6042f7f5dc",
                  "parent_uuid": "6e7dd237-d6bc-4d23-8cb6-ad38db702da9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b207af50-c5e6-4103-bbd7-337adfb74e65",
              "parent_uuid": "97e8b3bd-9d09-4b98-afe5-09801f64bf6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcce7bb5-945f-489d-ba0f-94654bccfa44",
                  "parent_uuid": "b207af50-c5e6-4103-bbd7-337adfb74e65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "908128de-74a3-419b-b584-87b56e02061d",
              "parent_uuid": "97e8b3bd-9d09-4b98-afe5-09801f64bf6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8fb972f-f669-41ab-a1ab-e6cd91aaf155",
                  "parent_uuid": "908128de-74a3-419b-b584-87b56e02061d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b3d656d-7595-49cf-988b-0ad758518203",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a830ba57-8872-4a04-aea5-ce1eb328ca87",
              "parent_uuid": "0b3d656d-7595-49cf-988b-0ad758518203",
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
          "uuid": "7a2d6c0f-8c15-4510-8911-7d964f1c0d0c",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3858fcc-a3a3-467a-9278-ecaa7aca7bbb",
              "parent_uuid": "7a2d6c0f-8c15-4510-8911-7d964f1c0d0c",
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
          "uuid": "bc7863ad-012b-446e-b3ea-b494d8b435eb",
          "parent_uuid": "94cf0592-69d9-465a-acc2-522136be6b76",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79d5a0f6-d9e7-4209-816c-50939535b0c0",
              "parent_uuid": "bc7863ad-012b-446e-b3ea-b494d8b435eb",
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
                  "uuid": "2ad386d5-3102-4742-9c3f-90cbb2658a8c",
                  "parent_uuid": "79d5a0f6-d9e7-4209-816c-50939535b0c0",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

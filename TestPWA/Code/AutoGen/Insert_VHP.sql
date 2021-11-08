
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
  "uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "cd905a14-fe73-419c-a6f4-dc8f5c8ad49f",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "905cf518-cde9-4fe6-bbd1-d53eb610a2e4",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "9d536025-190b-4f8f-ab68-ed4e476e86f9",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "8f88bca9-f249-4abf-87b1-465443f1b950",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "9099104e-656f-4a4f-868a-91c48a7f305a",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "13ee5dc4-e691-4de7-9611-891554d73a9f",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "be8786f2-403b-47ff-82d0-c8245fb552b6",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
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
      "uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
      "parent_uuid": "758e9a9f-fc95-422b-9094-53ea982050f3",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "17cc4fa0-e81f-4a89-9b2e-8780e5d4ba7a",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "785d70ce-bf77-45fe-880e-b33db831cfa0",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "ec97618c-1fa0-40c7-8942-67e4fafcdb03",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "f5ebba40-be46-4431-826a-cc41b0b83147",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "8a46f55a-de3a-438f-9b92-9f145497725f",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "aa368f2d-1075-4115-a235-87156ced3f01",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "d40455f2-7caa-4c90-8f3d-c48e8bc4051a",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "766dcaf9-f005-47ab-88b3-3700e0d2ad2d",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "1a713d1f-65fb-4e10-84ec-60fab1a14932",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "9f1b7512-99a1-4db4-8f57-6230db9004aa",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
              "uuid": "56d19b24-21ee-4cb2-a107-cb28d3be4955",
              "parent_uuid": "e18ebaca-ad41-41dd-97e4-7b7c461c21ec",
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
          "uuid": "3079f388-80cc-4b85-9bcb-bff4cd250569",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "ccc85348-108e-4c36-b21b-404fa6aa8c11",
              "parent_uuid": "3079f388-80cc-4b85-9bcb-bff4cd250569",
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
              "uuid": "29dcdb1c-ccba-4849-98d2-81638541986a",
              "parent_uuid": "3079f388-80cc-4b85-9bcb-bff4cd250569",
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
              "uuid": "0127fa96-9bf2-49c4-a005-dfd8d21396da",
              "parent_uuid": "3079f388-80cc-4b85-9bcb-bff4cd250569",
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
              "uuid": "6fb71fd6-d29e-41fa-a238-22d05fb19575",
              "parent_uuid": "3079f388-80cc-4b85-9bcb-bff4cd250569",
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
          "uuid": "a38a2f13-9b46-4c3e-9402-e2a8df13d0df",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9367f049-58a0-4df1-8a76-e9e053855b92",
              "parent_uuid": "a38a2f13-9b46-4c3e-9402-e2a8df13d0df",
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
              "uuid": "8987938a-b8a5-4e7b-926c-fe5826c38403",
              "parent_uuid": "a38a2f13-9b46-4c3e-9402-e2a8df13d0df",
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
              "uuid": "d12a3a60-e87f-493f-8be0-c84e3889a7ab",
              "parent_uuid": "a38a2f13-9b46-4c3e-9402-e2a8df13d0df",
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
              "uuid": "765dbcfd-5f76-4aeb-8097-2a6c1cc03308",
              "parent_uuid": "a38a2f13-9b46-4c3e-9402-e2a8df13d0df",
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
              "uuid": "7f1cb2c7-cc13-4ac3-9cc7-d1c942fbd9e4",
              "parent_uuid": "a38a2f13-9b46-4c3e-9402-e2a8df13d0df",
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
              "uuid": "37771dd5-9d6a-4d8e-a174-3ddd688ef36a",
              "parent_uuid": "a38a2f13-9b46-4c3e-9402-e2a8df13d0df",
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
          "uuid": "43faf0ac-3372-43c1-b435-1493c17e8a79",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "07344a52-c661-4456-8300-3a1841df92ce",
              "parent_uuid": "43faf0ac-3372-43c1-b435-1493c17e8a79",
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
          "uuid": "d11e15de-4825-4058-8e5e-647e8aa0e7b3",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "048e73ca-4f26-410e-b380-3d99b08f1cc3",
              "parent_uuid": "d11e15de-4825-4058-8e5e-647e8aa0e7b3",
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
              "uuid": "d8a4b6a5-d098-45e8-a86c-9a412a634a78",
              "parent_uuid": "d11e15de-4825-4058-8e5e-647e8aa0e7b3",
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
              "uuid": "37952893-853e-439c-aa8c-8198fb520fe3",
              "parent_uuid": "d11e15de-4825-4058-8e5e-647e8aa0e7b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1800a2f-f671-4884-929f-e7baf176bca4",
                  "parent_uuid": "37952893-853e-439c-aa8c-8198fb520fe3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3817956e-cce6-414f-ba71-fa81ae556282",
              "parent_uuid": "d11e15de-4825-4058-8e5e-647e8aa0e7b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40ed33c6-e57f-4cc3-8e20-c1b558a16b6b",
                  "parent_uuid": "3817956e-cce6-414f-ba71-fa81ae556282",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48b13f34-85b9-4f43-b95c-34781e7e7954",
              "parent_uuid": "d11e15de-4825-4058-8e5e-647e8aa0e7b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22dc4e82-8102-4e38-96ee-3d1752ea0dd1",
                  "parent_uuid": "48b13f34-85b9-4f43-b95c-34781e7e7954",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c88add7e-ee5f-46a3-ace5-b32a15ce1b85",
              "parent_uuid": "d11e15de-4825-4058-8e5e-647e8aa0e7b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d63b4e14-1b1b-4a6e-b0e9-09345bdeb873",
                  "parent_uuid": "c88add7e-ee5f-46a3-ace5-b32a15ce1b85",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f9bdfc45-1dd5-406a-a4b9-7afee2bac3f1",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6e6dc37-235e-45ba-a4b4-c846a7325913",
              "parent_uuid": "f9bdfc45-1dd5-406a-a4b9-7afee2bac3f1",
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
              "uuid": "ffee6664-e6a3-4725-91fe-d042096eb4f5",
              "parent_uuid": "f9bdfc45-1dd5-406a-a4b9-7afee2bac3f1",
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
              "uuid": "1c855e78-aa3c-458a-8af2-47838dfbada0",
              "parent_uuid": "f9bdfc45-1dd5-406a-a4b9-7afee2bac3f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0519022-6ec6-4578-9db8-ad4d2f43654e",
                  "parent_uuid": "1c855e78-aa3c-458a-8af2-47838dfbada0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b489a511-0315-45d4-bc95-5a497713677f",
              "parent_uuid": "f9bdfc45-1dd5-406a-a4b9-7afee2bac3f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f1afa32-aa58-48b4-95d7-a208eb5c1649",
                  "parent_uuid": "b489a511-0315-45d4-bc95-5a497713677f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5776c76-5c63-4d6a-992e-7ab3ed0b1eef",
              "parent_uuid": "f9bdfc45-1dd5-406a-a4b9-7afee2bac3f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "893ce8d7-a778-4794-a0b5-1d224a8b372d",
                  "parent_uuid": "a5776c76-5c63-4d6a-992e-7ab3ed0b1eef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cbb5f37-1364-48ee-8f23-1ffc0d52ddd7",
              "parent_uuid": "f9bdfc45-1dd5-406a-a4b9-7afee2bac3f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7b4ce94-a786-412f-8196-65c7e42ecafd",
                  "parent_uuid": "9cbb5f37-1364-48ee-8f23-1ffc0d52ddd7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d244f09-f01d-44f4-b0a0-9ec5c155fab2",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0fb0c81-0fb7-47ef-a5bf-5473b0f75614",
              "parent_uuid": "2d244f09-f01d-44f4-b0a0-9ec5c155fab2",
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
              "uuid": "0edcf2c7-49fd-4744-95c2-d3381e0c4b96",
              "parent_uuid": "2d244f09-f01d-44f4-b0a0-9ec5c155fab2",
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
              "uuid": "7d372bb2-d3a7-4af0-88d0-41330441303f",
              "parent_uuid": "2d244f09-f01d-44f4-b0a0-9ec5c155fab2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbb31be0-c7e1-4c25-8cd0-cdc8033ffb05",
                  "parent_uuid": "7d372bb2-d3a7-4af0-88d0-41330441303f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ae5c0d0-3aad-46a5-b305-b6f826b57316",
              "parent_uuid": "2d244f09-f01d-44f4-b0a0-9ec5c155fab2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f17341c9-6896-41b4-998e-d055c0a54261",
                  "parent_uuid": "1ae5c0d0-3aad-46a5-b305-b6f826b57316",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d83ec39-df70-4f33-a1d9-b6ba657780bd",
              "parent_uuid": "2d244f09-f01d-44f4-b0a0-9ec5c155fab2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aae18e1d-022f-49a0-9de7-c7aecc1bd030",
                  "parent_uuid": "2d83ec39-df70-4f33-a1d9-b6ba657780bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9a02b9f-c2b0-476b-b7f5-0f2b1256dba8",
              "parent_uuid": "2d244f09-f01d-44f4-b0a0-9ec5c155fab2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dd7b9db-8f52-48ce-bbd8-37386413a1cb",
                  "parent_uuid": "b9a02b9f-c2b0-476b-b7f5-0f2b1256dba8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9b04ea92-0a01-47d0-b82e-83c86307633f",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8068390b-3a96-4dab-916c-69c1ea4626ea",
              "parent_uuid": "9b04ea92-0a01-47d0-b82e-83c86307633f",
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
              "uuid": "a6a65f93-67e1-4345-b7a5-36819fb143d4",
              "parent_uuid": "9b04ea92-0a01-47d0-b82e-83c86307633f",
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
              "uuid": "afeca0f7-e64e-41d4-92b6-b80840069800",
              "parent_uuid": "9b04ea92-0a01-47d0-b82e-83c86307633f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c7d2046-ed5f-42de-b92b-e11389aebb54",
                  "parent_uuid": "afeca0f7-e64e-41d4-92b6-b80840069800",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f190a215-433a-4eb1-9cd6-bd85d10d954f",
              "parent_uuid": "9b04ea92-0a01-47d0-b82e-83c86307633f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8002e69-9eac-484b-9c98-081ebe6a5eac",
                  "parent_uuid": "f190a215-433a-4eb1-9cd6-bd85d10d954f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9d6698b-223c-4000-b91e-89c9df171a12",
              "parent_uuid": "9b04ea92-0a01-47d0-b82e-83c86307633f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9610389-654f-4b68-aac1-83a6d4c3ce3c",
                  "parent_uuid": "d9d6698b-223c-4000-b91e-89c9df171a12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1372d30-71ae-4cc9-8919-abab04b05075",
              "parent_uuid": "9b04ea92-0a01-47d0-b82e-83c86307633f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ce82f97-9d9b-4104-8265-f9efac964436",
                  "parent_uuid": "e1372d30-71ae-4cc9-8919-abab04b05075",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5f03abcb-4b43-4813-8969-43faa8d004e4",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "538192fb-6234-4809-b00b-deda4a4b24d2",
              "parent_uuid": "5f03abcb-4b43-4813-8969-43faa8d004e4",
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
              "uuid": "00310e28-bebd-4734-a0d0-e0dc0bca87f5",
              "parent_uuid": "5f03abcb-4b43-4813-8969-43faa8d004e4",
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
              "uuid": "13c9ee2d-96e0-42bf-8f2a-bbe06469b422",
              "parent_uuid": "5f03abcb-4b43-4813-8969-43faa8d004e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f998bc60-df46-4932-8e2a-3b92c53dae39",
                  "parent_uuid": "13c9ee2d-96e0-42bf-8f2a-bbe06469b422",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03f34bd1-d84c-44de-b46b-2809ed5dbebc",
              "parent_uuid": "5f03abcb-4b43-4813-8969-43faa8d004e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6c63085-d70c-4a48-81da-658b22db2d57",
                  "parent_uuid": "03f34bd1-d84c-44de-b46b-2809ed5dbebc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "daef4087-a102-490a-ab80-bb8745bbb142",
              "parent_uuid": "5f03abcb-4b43-4813-8969-43faa8d004e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "976ce9db-0414-44ee-a48d-093325c82553",
                  "parent_uuid": "daef4087-a102-490a-ab80-bb8745bbb142",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0b0b25f-56f0-459c-8986-22dfc335cc86",
              "parent_uuid": "5f03abcb-4b43-4813-8969-43faa8d004e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2babf236-7679-45ab-9244-8513c5bddf05",
                  "parent_uuid": "b0b0b25f-56f0-459c-8986-22dfc335cc86",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "775890c9-e7de-47ef-be0f-c06d5f09ba16",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0aabd4e5-4f77-4e74-a48c-1d184b1e71c8",
              "parent_uuid": "775890c9-e7de-47ef-be0f-c06d5f09ba16",
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
              "uuid": "ea9d45cd-8059-46ca-8795-a33b25598863",
              "parent_uuid": "775890c9-e7de-47ef-be0f-c06d5f09ba16",
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
              "uuid": "1c71b2c5-5d0d-4f65-9322-6dc233cc59f4",
              "parent_uuid": "775890c9-e7de-47ef-be0f-c06d5f09ba16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eedab249-5065-4b48-83bf-28570ff176a6",
                  "parent_uuid": "1c71b2c5-5d0d-4f65-9322-6dc233cc59f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e29f129c-a6c9-40f2-a1c8-d09c9933f03e",
              "parent_uuid": "775890c9-e7de-47ef-be0f-c06d5f09ba16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac4476b0-b269-4910-b210-b39a52b1e2cd",
                  "parent_uuid": "e29f129c-a6c9-40f2-a1c8-d09c9933f03e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "591ab7c7-0353-4326-9e84-d23e43b74e92",
              "parent_uuid": "775890c9-e7de-47ef-be0f-c06d5f09ba16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cc492d2-2805-42aa-a040-a4c6d055dad6",
                  "parent_uuid": "591ab7c7-0353-4326-9e84-d23e43b74e92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f250d43a-9df8-4fed-8194-6a5b82f3ad8f",
              "parent_uuid": "775890c9-e7de-47ef-be0f-c06d5f09ba16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "612252e4-202c-4c51-90dd-59befa0b797d",
                  "parent_uuid": "f250d43a-9df8-4fed-8194-6a5b82f3ad8f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "725e28f4-edb7-4d56-9339-020539c4b329",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "976b47eb-ae36-4210-b88a-02a93ba24a35",
              "parent_uuid": "725e28f4-edb7-4d56-9339-020539c4b329",
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
              "uuid": "db90de8e-fff8-43bd-b203-465d66fd5e8e",
              "parent_uuid": "725e28f4-edb7-4d56-9339-020539c4b329",
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
              "uuid": "5de38f5e-5f05-4447-b969-c3654e6d4e0e",
              "parent_uuid": "725e28f4-edb7-4d56-9339-020539c4b329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14375655-0d7a-4938-9634-67b637adc238",
                  "parent_uuid": "5de38f5e-5f05-4447-b969-c3654e6d4e0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdd4b8b2-99ea-4700-ba7f-62e154178f6e",
              "parent_uuid": "725e28f4-edb7-4d56-9339-020539c4b329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "918450a8-b2c1-494e-96e2-9ddcc09dc3b0",
                  "parent_uuid": "fdd4b8b2-99ea-4700-ba7f-62e154178f6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "139e1a77-2687-4398-b08a-8e9c0a70b00f",
              "parent_uuid": "725e28f4-edb7-4d56-9339-020539c4b329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb3ed2c2-bd06-41a9-970e-597a76209b9f",
                  "parent_uuid": "139e1a77-2687-4398-b08a-8e9c0a70b00f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d682f849-6c11-417c-ba5b-d2b3bb45b382",
              "parent_uuid": "725e28f4-edb7-4d56-9339-020539c4b329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92066f79-6a4a-4b02-aea1-581634ace2e4",
                  "parent_uuid": "d682f849-6c11-417c-ba5b-d2b3bb45b382",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86640835-8e6e-4f75-baf7-8ce3e43c95a9",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f345491c-b08f-4269-8f00-67e9c57cc514",
              "parent_uuid": "86640835-8e6e-4f75-baf7-8ce3e43c95a9",
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
              "uuid": "a9cca181-6960-4232-bb62-3ba19ec4ea5c",
              "parent_uuid": "86640835-8e6e-4f75-baf7-8ce3e43c95a9",
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
              "uuid": "98a323ed-7be0-4990-8c0e-7e3ba3b8a327",
              "parent_uuid": "86640835-8e6e-4f75-baf7-8ce3e43c95a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45871621-01c1-4207-b294-307ea8014c6c",
                  "parent_uuid": "98a323ed-7be0-4990-8c0e-7e3ba3b8a327",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a713899-dddb-4f3b-810f-2e342312f38f",
              "parent_uuid": "86640835-8e6e-4f75-baf7-8ce3e43c95a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d7cd289-0bf0-49ac-9bbe-a005712c1fdc",
                  "parent_uuid": "3a713899-dddb-4f3b-810f-2e342312f38f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76bcf2ba-18d8-4b04-8f89-e260aa2af8a9",
              "parent_uuid": "86640835-8e6e-4f75-baf7-8ce3e43c95a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "104db674-94d2-4286-b44a-0bc17623e74c",
                  "parent_uuid": "76bcf2ba-18d8-4b04-8f89-e260aa2af8a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a9b1708-42b5-4498-b204-7b86af010ffa",
              "parent_uuid": "86640835-8e6e-4f75-baf7-8ce3e43c95a9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a8ecad9-7dd8-4a76-a76c-71d5b6e05697",
                  "parent_uuid": "4a9b1708-42b5-4498-b204-7b86af010ffa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38693d1a-5b53-471c-a73b-a18817d17ef7",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "523b2776-3e6a-4ec4-899c-88b17d353e3c",
              "parent_uuid": "38693d1a-5b53-471c-a73b-a18817d17ef7",
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
          "uuid": "cc373ad0-8ed8-48a8-971d-9314cd465c40",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "13ed4398-1a7c-47c2-af69-bbaf4e418817",
              "parent_uuid": "cc373ad0-8ed8-48a8-971d-9314cd465c40",
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
              "uuid": "14e15548-f0ac-47d0-a853-ffc53b84c3fc",
              "parent_uuid": "cc373ad0-8ed8-48a8-971d-9314cd465c40",
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
              "uuid": "49b105e4-df2d-4987-9406-3c6afcc83879",
              "parent_uuid": "cc373ad0-8ed8-48a8-971d-9314cd465c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32dd5782-b8fa-4734-b707-d8a528bf8d25",
                  "parent_uuid": "49b105e4-df2d-4987-9406-3c6afcc83879",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e860ae29-8606-46e5-984f-ce39f5a70a86",
              "parent_uuid": "cc373ad0-8ed8-48a8-971d-9314cd465c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bf0c96c-5ccf-435a-87db-b72c8f8c3ebc",
                  "parent_uuid": "e860ae29-8606-46e5-984f-ce39f5a70a86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7319a002-313a-4aef-8d9f-39b4a2ee4ce0",
              "parent_uuid": "cc373ad0-8ed8-48a8-971d-9314cd465c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb96fd15-7fc4-4b51-8311-ffe7d830e14d",
                  "parent_uuid": "7319a002-313a-4aef-8d9f-39b4a2ee4ce0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8801ba66-98fd-42ff-b4e8-ad948afc4e6a",
              "parent_uuid": "cc373ad0-8ed8-48a8-971d-9314cd465c40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9d16bb2-474b-4e12-91fd-27315af78480",
                  "parent_uuid": "8801ba66-98fd-42ff-b4e8-ad948afc4e6a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e18ecc6c-c275-49a3-b495-1f48806e9473",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f5f1be7-0262-4405-be76-ba62c622ebd1",
              "parent_uuid": "e18ecc6c-c275-49a3-b495-1f48806e9473",
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
          "uuid": "04f8dbf0-6678-49e6-8296-aba84a5f6a3c",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3a6e0910-c75a-4b83-b89e-e31073c18941",
              "parent_uuid": "04f8dbf0-6678-49e6-8296-aba84a5f6a3c",
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
          "uuid": "aff53036-c10f-480d-b8c1-ed462f9aad6a",
          "parent_uuid": "c4d2fa78-7f70-4a54-bd95-6f0b92726d23",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ddbf56b8-2dd4-4a77-856d-5a3eda8b89a2",
              "parent_uuid": "aff53036-c10f-480d-b8c1-ed462f9aad6a",
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
                  "uuid": "18c662d3-1cbb-4922-b70e-b7cc5cd58619",
                  "parent_uuid": "ddbf56b8-2dd4-4a77-856d-5a3eda8b89a2",
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
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
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
		,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DA19D272-9439-47A7-9749-153DAFAB2B69'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

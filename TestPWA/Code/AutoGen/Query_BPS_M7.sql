
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
  "uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "a780e412-f501-4281-8e66-0989094985d8",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "709f29ab-d3de-427d-bb7a-67166d07da43",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "0e7b99f3-6cda-4f8d-b034-1e47b624625d",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "d5380adc-9751-4c80-b71a-a3b728439b5b",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "ef395b83-939a-4705-ae5b-8f204b99fc83",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "9cf73035-d777-4ad0-b5e3-30c5a6b43388",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "201bc881-97d0-4e9e-86ac-bd0abd527c1e",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
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
      "uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
      "parent_uuid": "c7549291-af4c-4559-8d61-019e83b4d7f2",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "2864ae46-41d2-4b26-b939-20a3a9123968",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "ec91e382-9df1-49fe-8704-63f18b497067",
              "parent_uuid": "2864ae46-41d2-4b26-b939-20a3a9123968",
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
              "uuid": "49f4580e-993a-48e2-9224-6c6ffadda798",
              "parent_uuid": "2864ae46-41d2-4b26-b939-20a3a9123968",
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
              "uuid": "a13efc5c-0dd8-469e-ab20-c06c9d778f37",
              "parent_uuid": "2864ae46-41d2-4b26-b939-20a3a9123968",
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
              "uuid": "a73277bf-f8f3-4133-9aa1-b7b3bf3173c4",
              "parent_uuid": "2864ae46-41d2-4b26-b939-20a3a9123968",
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
          "uuid": "97eb1a37-5d90-4486-b01d-0164cc2e3d10",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "bcc5cb9c-1f34-4049-bfbb-0ad0598364e9",
              "parent_uuid": "97eb1a37-5d90-4486-b01d-0164cc2e3d10",
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
              "uuid": "3f7b9619-6463-4116-aa3d-2c96235a39fd",
              "parent_uuid": "97eb1a37-5d90-4486-b01d-0164cc2e3d10",
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
              "uuid": "f6f4e558-abc9-4392-87a5-2b9f282cadf3",
              "parent_uuid": "97eb1a37-5d90-4486-b01d-0164cc2e3d10",
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
              "uuid": "57e078f4-0b80-43b7-9f55-fa1d53e0de55",
              "parent_uuid": "97eb1a37-5d90-4486-b01d-0164cc2e3d10",
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
          "uuid": "09abd361-4ded-4c10-82cf-f3fd335edaf1",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "51950f2a-4381-41ec-b10e-39c8f3d18a78",
              "parent_uuid": "09abd361-4ded-4c10-82cf-f3fd335edaf1",
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
              "uuid": "87901689-2ef8-4e0a-8e6b-a3caa046f310",
              "parent_uuid": "09abd361-4ded-4c10-82cf-f3fd335edaf1",
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
              "uuid": "3fde965a-5bc2-4d7a-87a1-e9e6110148cf",
              "parent_uuid": "09abd361-4ded-4c10-82cf-f3fd335edaf1",
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
              "uuid": "19fe766b-f3fc-48ef-a95c-540526dfc17b",
              "parent_uuid": "09abd361-4ded-4c10-82cf-f3fd335edaf1",
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
              "uuid": "e46215a3-cf0f-4f96-8614-af370fae4c27",
              "parent_uuid": "09abd361-4ded-4c10-82cf-f3fd335edaf1",
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
              "uuid": "40b501af-c598-4971-9ca8-92e597755f8d",
              "parent_uuid": "09abd361-4ded-4c10-82cf-f3fd335edaf1",
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
          "uuid": "cde576cb-27d7-4945-9429-e03f77bcad8d",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2931bd44-74aa-4b64-a250-b844e10ee9d8",
              "parent_uuid": "cde576cb-27d7-4945-9429-e03f77bcad8d",
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
          "uuid": "59eaaf1e-5984-48b5-b5e1-52fb8efade75",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34b6b065-347f-42ed-9a59-ad245d67afca",
              "parent_uuid": "59eaaf1e-5984-48b5-b5e1-52fb8efade75",
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
              "uuid": "dc9bc2d3-fc89-4119-b035-4b2523c3ebf5",
              "parent_uuid": "59eaaf1e-5984-48b5-b5e1-52fb8efade75",
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
              "uuid": "3c2d1591-604d-4f4d-9708-3f8480ae6100",
              "parent_uuid": "59eaaf1e-5984-48b5-b5e1-52fb8efade75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b62b62a9-677b-47c3-bcfd-af2cdc41e84b",
                  "parent_uuid": "3c2d1591-604d-4f4d-9708-3f8480ae6100",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8700feaa-d990-4740-8210-d2dcce8ace43",
              "parent_uuid": "59eaaf1e-5984-48b5-b5e1-52fb8efade75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43d519c8-652c-410a-8acb-fdf650fca3c2",
                  "parent_uuid": "8700feaa-d990-4740-8210-d2dcce8ace43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "400039a5-23bf-48e3-858e-9dc34b22a4f1",
              "parent_uuid": "59eaaf1e-5984-48b5-b5e1-52fb8efade75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25191d57-6863-4af6-bb18-0f80076b4425",
                  "parent_uuid": "400039a5-23bf-48e3-858e-9dc34b22a4f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "747d6c70-2be6-4a7b-bac3-ffb0b5e32fb2",
              "parent_uuid": "59eaaf1e-5984-48b5-b5e1-52fb8efade75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2800927b-6baa-4204-b865-75bd7c2f3671",
                  "parent_uuid": "747d6c70-2be6-4a7b-bac3-ffb0b5e32fb2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7a94503a-f45d-43e7-af07-d68047067615",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78fabb96-d5f1-49af-81b5-356460575855",
              "parent_uuid": "7a94503a-f45d-43e7-af07-d68047067615",
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
              "uuid": "9e3a4837-4b6d-4382-89aa-5be32a6ba926",
              "parent_uuid": "7a94503a-f45d-43e7-af07-d68047067615",
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
              "uuid": "67699194-e2c9-4d1f-86f4-324076c4d387",
              "parent_uuid": "7a94503a-f45d-43e7-af07-d68047067615",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e12cf71-c3e4-44e0-8713-755588daa8ed",
                  "parent_uuid": "67699194-e2c9-4d1f-86f4-324076c4d387",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e63b0f1-8b94-4645-a153-07455380d5dc",
              "parent_uuid": "7a94503a-f45d-43e7-af07-d68047067615",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5ded522-40ac-4548-b5c0-def29bbe2a0d",
                  "parent_uuid": "9e63b0f1-8b94-4645-a153-07455380d5dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23067ded-cbc4-4032-bb5c-b47a8e1da9ed",
              "parent_uuid": "7a94503a-f45d-43e7-af07-d68047067615",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8e2fc3b-ed5f-4257-bc36-fe8e80d19ab9",
                  "parent_uuid": "23067ded-cbc4-4032-bb5c-b47a8e1da9ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "784e223d-c3e7-4014-979e-7fb19cb0ccb8",
              "parent_uuid": "7a94503a-f45d-43e7-af07-d68047067615",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d0a6ebd-9e7f-4c36-ba75-ffb3b584683a",
                  "parent_uuid": "784e223d-c3e7-4014-979e-7fb19cb0ccb8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "770ce9a0-eff5-4ab2-83e9-5c3e4c9cba34",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78e83fec-9d3d-4d88-85c8-47dbf9c26673",
              "parent_uuid": "770ce9a0-eff5-4ab2-83e9-5c3e4c9cba34",
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
              "uuid": "323deb3b-861c-4a4d-8b1d-08192b0b1a10",
              "parent_uuid": "770ce9a0-eff5-4ab2-83e9-5c3e4c9cba34",
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
              "uuid": "ce81b135-7a2e-49e8-bfe3-4489ff640f76",
              "parent_uuid": "770ce9a0-eff5-4ab2-83e9-5c3e4c9cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f8408e8-9135-425d-a69c-0445038c5067",
                  "parent_uuid": "ce81b135-7a2e-49e8-bfe3-4489ff640f76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc70e6f1-0aa6-42b5-bec5-12950067a4fc",
              "parent_uuid": "770ce9a0-eff5-4ab2-83e9-5c3e4c9cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "882bdbb9-60c7-465c-acc0-dee87abc8845",
                  "parent_uuid": "cc70e6f1-0aa6-42b5-bec5-12950067a4fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f13b2d37-2685-4ddc-8015-f6bb24e485e2",
              "parent_uuid": "770ce9a0-eff5-4ab2-83e9-5c3e4c9cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37a7a9e5-d32a-4dfd-9b70-b950d69508fc",
                  "parent_uuid": "f13b2d37-2685-4ddc-8015-f6bb24e485e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9736c885-429b-41ac-abde-0dc34b97b718",
              "parent_uuid": "770ce9a0-eff5-4ab2-83e9-5c3e4c9cba34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d113eaa1-030e-4d20-991f-c5274bf16775",
                  "parent_uuid": "9736c885-429b-41ac-abde-0dc34b97b718",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "19b79947-2cc9-4766-b0a6-8a6f2e5fcc9e",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8ea41541-b45d-4000-9d17-f5c10a3b5f5f",
              "parent_uuid": "19b79947-2cc9-4766-b0a6-8a6f2e5fcc9e",
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
              "uuid": "12f163ac-fef4-4521-af5f-fb1abee6ebbc",
              "parent_uuid": "19b79947-2cc9-4766-b0a6-8a6f2e5fcc9e",
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
              "uuid": "5d8f4a33-02a6-4065-a911-023bac670bad",
              "parent_uuid": "19b79947-2cc9-4766-b0a6-8a6f2e5fcc9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a42fa2b-7efc-4e93-b56f-5efacc2ddb20",
                  "parent_uuid": "5d8f4a33-02a6-4065-a911-023bac670bad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8c8f971-9731-4474-b040-1e09d76f5b01",
              "parent_uuid": "19b79947-2cc9-4766-b0a6-8a6f2e5fcc9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ab02c83-05b8-4802-933a-5eb85bdb1ce4",
                  "parent_uuid": "d8c8f971-9731-4474-b040-1e09d76f5b01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f37b961d-6506-4823-a154-d751e4d999e8",
              "parent_uuid": "19b79947-2cc9-4766-b0a6-8a6f2e5fcc9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69a9127f-3dd9-4ebe-847d-b47a6aef5000",
                  "parent_uuid": "f37b961d-6506-4823-a154-d751e4d999e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f621eda-0415-4fda-986f-a2124aad0579",
              "parent_uuid": "19b79947-2cc9-4766-b0a6-8a6f2e5fcc9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8da15e6-e141-407c-ae41-a77e04ef515e",
                  "parent_uuid": "8f621eda-0415-4fda-986f-a2124aad0579",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b4cf4dc-a84c-45de-a7eb-2e64bf2a6bdb",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f03e7752-1ae0-496c-9ca3-1f778a71bb81",
              "parent_uuid": "8b4cf4dc-a84c-45de-a7eb-2e64bf2a6bdb",
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
              "uuid": "7f33a691-71ce-4743-b8c8-8cfb3e4c687d",
              "parent_uuid": "8b4cf4dc-a84c-45de-a7eb-2e64bf2a6bdb",
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
              "uuid": "19ea750c-e0c3-4a0d-a8cd-08c29b20e228",
              "parent_uuid": "8b4cf4dc-a84c-45de-a7eb-2e64bf2a6bdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87c115ba-c063-4e7b-8208-97307e8e020f",
                  "parent_uuid": "19ea750c-e0c3-4a0d-a8cd-08c29b20e228",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94d7cc23-5cd0-4f5e-9636-938aa0bdd04d",
              "parent_uuid": "8b4cf4dc-a84c-45de-a7eb-2e64bf2a6bdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2485e84-1d54-49ab-bd40-7868c02d9853",
                  "parent_uuid": "94d7cc23-5cd0-4f5e-9636-938aa0bdd04d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a98645b8-f9fd-441c-88fa-9b5d7f89d976",
              "parent_uuid": "8b4cf4dc-a84c-45de-a7eb-2e64bf2a6bdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e274a309-0a6b-486c-a250-80ac6200b2f0",
                  "parent_uuid": "a98645b8-f9fd-441c-88fa-9b5d7f89d976",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ee87ab2-d3c3-49b4-9170-950adb3e45c1",
              "parent_uuid": "8b4cf4dc-a84c-45de-a7eb-2e64bf2a6bdb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b7e1e5c-d73b-43e0-bbb6-043ba9613133",
                  "parent_uuid": "1ee87ab2-d3c3-49b4-9170-950adb3e45c1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7769c060-e09c-401c-a031-70d80e2977af",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7284e63c-8a09-4e9c-afc6-ddc179c3bd49",
              "parent_uuid": "7769c060-e09c-401c-a031-70d80e2977af",
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
              "uuid": "84435777-654a-4f14-88c6-330df48e243e",
              "parent_uuid": "7769c060-e09c-401c-a031-70d80e2977af",
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
              "uuid": "436a56af-ab25-4d5b-ab21-efa275bf6951",
              "parent_uuid": "7769c060-e09c-401c-a031-70d80e2977af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3883e5e-9348-4344-9670-726129dfebf7",
                  "parent_uuid": "436a56af-ab25-4d5b-ab21-efa275bf6951",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2db3c5db-0b9c-49d4-942c-ff8ad844885f",
              "parent_uuid": "7769c060-e09c-401c-a031-70d80e2977af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a26407d2-56de-49a8-a51e-661a75f2f24b",
                  "parent_uuid": "2db3c5db-0b9c-49d4-942c-ff8ad844885f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6faf10a-69ba-4dfc-82b8-7fc50e668f08",
              "parent_uuid": "7769c060-e09c-401c-a031-70d80e2977af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67af2121-baef-4ed4-a21c-f1eb92892ccf",
                  "parent_uuid": "c6faf10a-69ba-4dfc-82b8-7fc50e668f08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "121a9f0a-6905-4aae-b990-7302016760e5",
              "parent_uuid": "7769c060-e09c-401c-a031-70d80e2977af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e65b18ac-f609-4b87-9cef-7be73e03f601",
                  "parent_uuid": "121a9f0a-6905-4aae-b990-7302016760e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "02e0efa2-08dc-4ff3-8bb4-e0d38b95f46d",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e75a57e-94b4-4652-a22a-61539a2d6bf2",
              "parent_uuid": "02e0efa2-08dc-4ff3-8bb4-e0d38b95f46d",
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
              "uuid": "33407ef5-b7ce-48d1-b0bc-c04470510321",
              "parent_uuid": "02e0efa2-08dc-4ff3-8bb4-e0d38b95f46d",
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
              "uuid": "ca8a641d-15e7-45ff-91b6-dd25e2ef6f36",
              "parent_uuid": "02e0efa2-08dc-4ff3-8bb4-e0d38b95f46d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cf8eb2e-4083-412b-9714-188c5a9878dd",
                  "parent_uuid": "ca8a641d-15e7-45ff-91b6-dd25e2ef6f36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58a7a7b9-e860-402d-ac67-4996233b0eb2",
              "parent_uuid": "02e0efa2-08dc-4ff3-8bb4-e0d38b95f46d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28534669-fc20-4f31-8c78-067e953ce457",
                  "parent_uuid": "58a7a7b9-e860-402d-ac67-4996233b0eb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09bd24f3-6eab-4087-b1d0-d9c0b503e8d0",
              "parent_uuid": "02e0efa2-08dc-4ff3-8bb4-e0d38b95f46d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcb97256-73c5-4bf5-9198-6a15f5a8aef2",
                  "parent_uuid": "09bd24f3-6eab-4087-b1d0-d9c0b503e8d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a43b4a76-38c3-41c5-af76-17a04365dde8",
              "parent_uuid": "02e0efa2-08dc-4ff3-8bb4-e0d38b95f46d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f35abf9e-1d70-4848-92ae-d4882747952e",
                  "parent_uuid": "a43b4a76-38c3-41c5-af76-17a04365dde8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ce62e6d-80e9-4911-8af2-faee4a4ebb3a",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "506a47c6-893a-485c-a055-fe92dfc0548c",
              "parent_uuid": "1ce62e6d-80e9-4911-8af2-faee4a4ebb3a",
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
              "uuid": "0d41231c-9612-4039-9571-8bf82f990076",
              "parent_uuid": "1ce62e6d-80e9-4911-8af2-faee4a4ebb3a",
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
              "uuid": "4cb3d66b-b948-429c-93be-668a43946032",
              "parent_uuid": "1ce62e6d-80e9-4911-8af2-faee4a4ebb3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2178131b-a496-40df-ba11-9d046ca995b3",
                  "parent_uuid": "4cb3d66b-b948-429c-93be-668a43946032",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "822ccab7-d1e5-4c64-83bb-a6577ace1fdf",
              "parent_uuid": "1ce62e6d-80e9-4911-8af2-faee4a4ebb3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07f9a076-1e18-4788-8826-c4fa618fe401",
                  "parent_uuid": "822ccab7-d1e5-4c64-83bb-a6577ace1fdf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22e65ebd-fe1b-40e1-b521-f08417e5f862",
              "parent_uuid": "1ce62e6d-80e9-4911-8af2-faee4a4ebb3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7af885eb-a627-4a75-b3e0-fbb30d897b7f",
                  "parent_uuid": "22e65ebd-fe1b-40e1-b521-f08417e5f862",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73bc1249-cf66-47e5-83e8-1fe762796b06",
              "parent_uuid": "1ce62e6d-80e9-4911-8af2-faee4a4ebb3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01d90494-e7fc-4464-8b7b-09bce009aa43",
                  "parent_uuid": "73bc1249-cf66-47e5-83e8-1fe762796b06",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "933f3687-aa3d-4d91-bae1-4578fb543170",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9261ca38-45fe-4ea2-ad12-c2a8bdfc3f25",
              "parent_uuid": "933f3687-aa3d-4d91-bae1-4578fb543170",
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
              "uuid": "9779faa1-5d3b-4d87-afae-a99285addd1a",
              "parent_uuid": "933f3687-aa3d-4d91-bae1-4578fb543170",
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
              "uuid": "523110f1-f82f-4759-aeb8-f8e69297c65c",
              "parent_uuid": "933f3687-aa3d-4d91-bae1-4578fb543170",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "382d170f-eb9b-4067-bee6-f244f48deb9b",
                  "parent_uuid": "523110f1-f82f-4759-aeb8-f8e69297c65c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac0389d7-f409-4a56-8c5f-3734a38f70cf",
              "parent_uuid": "933f3687-aa3d-4d91-bae1-4578fb543170",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74c169ba-6bd2-4ea9-a90b-0657a318eeb2",
                  "parent_uuid": "ac0389d7-f409-4a56-8c5f-3734a38f70cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8c6c7a7-ef4c-44d1-a128-3fc6e24322ac",
              "parent_uuid": "933f3687-aa3d-4d91-bae1-4578fb543170",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9c83021-d225-41cb-a428-372cc47efb56",
                  "parent_uuid": "f8c6c7a7-ef4c-44d1-a128-3fc6e24322ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74c43f53-ffde-4bbb-8489-fea96b067ab0",
              "parent_uuid": "933f3687-aa3d-4d91-bae1-4578fb543170",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a07c1aaf-79e3-4a68-bd73-4e84f253e298",
                  "parent_uuid": "74c43f53-ffde-4bbb-8489-fea96b067ab0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3fed1709-0c33-4cd3-a1fa-69d8309e1d9e",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40d57c0b-1bda-4c85-9a11-cba7c1dc28df",
              "parent_uuid": "3fed1709-0c33-4cd3-a1fa-69d8309e1d9e",
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
              "uuid": "c87a8899-7c57-465c-9da2-b32081cae770",
              "parent_uuid": "3fed1709-0c33-4cd3-a1fa-69d8309e1d9e",
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
              "uuid": "b522f712-80b7-4928-b620-af02dd4b70d6",
              "parent_uuid": "3fed1709-0c33-4cd3-a1fa-69d8309e1d9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03227381-e539-4d12-8025-438ce1587099",
                  "parent_uuid": "b522f712-80b7-4928-b620-af02dd4b70d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6efc6098-e267-41e2-930e-7e3c93f2c776",
              "parent_uuid": "3fed1709-0c33-4cd3-a1fa-69d8309e1d9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b16c78a3-94a5-4f1b-bea5-70cadb268562",
                  "parent_uuid": "6efc6098-e267-41e2-930e-7e3c93f2c776",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acdc5be8-0a6f-4c54-96f8-febb1331d338",
              "parent_uuid": "3fed1709-0c33-4cd3-a1fa-69d8309e1d9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96c74a82-ae9e-4463-925b-2b3897b43d2c",
                  "parent_uuid": "acdc5be8-0a6f-4c54-96f8-febb1331d338",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2bef248-f827-415f-8d58-76484edbda74",
              "parent_uuid": "3fed1709-0c33-4cd3-a1fa-69d8309e1d9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f93fafe-0bbd-42ed-81de-823ed47b0dc6",
                  "parent_uuid": "b2bef248-f827-415f-8d58-76484edbda74",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3130cc1e-f7d7-49c0-b5da-b22845407bd0",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "387b9745-decb-4cbe-a03e-5111e4019acf",
              "parent_uuid": "3130cc1e-f7d7-49c0-b5da-b22845407bd0",
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
              "uuid": "1244cfcf-5c65-4818-afec-6a6bc6a1fdf9",
              "parent_uuid": "3130cc1e-f7d7-49c0-b5da-b22845407bd0",
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
              "uuid": "550dcd15-4d05-44c5-8481-ba09028a10c5",
              "parent_uuid": "3130cc1e-f7d7-49c0-b5da-b22845407bd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec06495f-8854-418f-a8e5-bb66cad32051",
                  "parent_uuid": "550dcd15-4d05-44c5-8481-ba09028a10c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "044d4dc2-3e61-4287-abde-fe3b438e65fb",
              "parent_uuid": "3130cc1e-f7d7-49c0-b5da-b22845407bd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "437776b9-45df-44f6-9a8c-5457a6df1439",
                  "parent_uuid": "044d4dc2-3e61-4287-abde-fe3b438e65fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccee1933-fbe7-43f7-9959-c3f7c45b69de",
              "parent_uuid": "3130cc1e-f7d7-49c0-b5da-b22845407bd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fdcc7bf-4336-4131-b6ac-705add5f6f0f",
                  "parent_uuid": "ccee1933-fbe7-43f7-9959-c3f7c45b69de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a8ebd63-e638-41bc-95f5-d9ac8e205c47",
              "parent_uuid": "3130cc1e-f7d7-49c0-b5da-b22845407bd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5b0b8f4-efa2-47de-bed2-2560a611c53c",
                  "parent_uuid": "0a8ebd63-e638-41bc-95f5-d9ac8e205c47",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "54335cd7-0692-4628-9663-f75af4cd9542",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "83cb5685-5733-4df1-8cc7-99de743c3faf",
              "parent_uuid": "54335cd7-0692-4628-9663-f75af4cd9542",
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
              "uuid": "d073ab77-0c55-47f4-8862-7c4d558a2016",
              "parent_uuid": "54335cd7-0692-4628-9663-f75af4cd9542",
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
              "uuid": "d7743f69-8547-44dd-b58b-f45273321fe1",
              "parent_uuid": "54335cd7-0692-4628-9663-f75af4cd9542",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb4e05b5-b347-446c-a98e-cb43189d641a",
                  "parent_uuid": "d7743f69-8547-44dd-b58b-f45273321fe1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92a58694-08c8-4c0a-84c6-e3319321a428",
              "parent_uuid": "54335cd7-0692-4628-9663-f75af4cd9542",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8add4ba9-0082-4fae-9036-5b3a54271770",
                  "parent_uuid": "92a58694-08c8-4c0a-84c6-e3319321a428",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a761116-bc05-4902-8a59-576300f00370",
              "parent_uuid": "54335cd7-0692-4628-9663-f75af4cd9542",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf934c3f-2a70-4a15-8ad3-3dc1ac66c3d8",
                  "parent_uuid": "3a761116-bc05-4902-8a59-576300f00370",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7935ed94-3dd9-4c26-9541-c9dd52ef2f1f",
              "parent_uuid": "54335cd7-0692-4628-9663-f75af4cd9542",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d890d008-42d7-4050-9053-8c1986b5b16e",
                  "parent_uuid": "7935ed94-3dd9-4c26-9541-c9dd52ef2f1f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c3d76b65-9bee-4644-9a0b-fec9f69e695f",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8ca0643-8f23-4ac1-ac33-962378f309f0",
              "parent_uuid": "c3d76b65-9bee-4644-9a0b-fec9f69e695f",
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
              "uuid": "c05eb260-7e65-4d12-a95b-926988879162",
              "parent_uuid": "c3d76b65-9bee-4644-9a0b-fec9f69e695f",
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
              "uuid": "70a62c88-ec15-4a7b-82e0-097c03337445",
              "parent_uuid": "c3d76b65-9bee-4644-9a0b-fec9f69e695f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d8ad9e3-55ee-4136-abaa-10e91b51766f",
                  "parent_uuid": "70a62c88-ec15-4a7b-82e0-097c03337445",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb99af6e-4c4c-4475-96f2-00da7b0d3d5f",
              "parent_uuid": "c3d76b65-9bee-4644-9a0b-fec9f69e695f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4eac9ce3-2845-4988-8639-8c641213d152",
                  "parent_uuid": "cb99af6e-4c4c-4475-96f2-00da7b0d3d5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a40ab5e2-d6d5-4fbb-a522-04370f854164",
              "parent_uuid": "c3d76b65-9bee-4644-9a0b-fec9f69e695f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b07d76c9-2b9d-4300-b0a1-90ea6d16c0d6",
                  "parent_uuid": "a40ab5e2-d6d5-4fbb-a522-04370f854164",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6328caf7-d42c-4cbf-a1ec-feb2bf7e672a",
              "parent_uuid": "c3d76b65-9bee-4644-9a0b-fec9f69e695f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f945fbd-4dcb-434e-a19d-d76f137fef1d",
                  "parent_uuid": "6328caf7-d42c-4cbf-a1ec-feb2bf7e672a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0d876b68-a849-48bc-b3fd-cc3d415cf4b8",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "add8cbfb-5277-41dd-ae86-4ade5e3565c4",
              "parent_uuid": "0d876b68-a849-48bc-b3fd-cc3d415cf4b8",
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
              "uuid": "1bb94a1c-d1b1-44de-b020-494663bee21b",
              "parent_uuid": "0d876b68-a849-48bc-b3fd-cc3d415cf4b8",
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
              "uuid": "4a01a47f-9428-4fd7-97f7-ae9a606add87",
              "parent_uuid": "0d876b68-a849-48bc-b3fd-cc3d415cf4b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19d2f74e-fdce-451d-b453-12f565d43203",
                  "parent_uuid": "4a01a47f-9428-4fd7-97f7-ae9a606add87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3afade1-81f4-45e7-80cf-be67dd27ea48",
              "parent_uuid": "0d876b68-a849-48bc-b3fd-cc3d415cf4b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "458f3810-137a-486a-9277-8b28211ebda7",
                  "parent_uuid": "b3afade1-81f4-45e7-80cf-be67dd27ea48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39b6e04d-2496-412b-8617-c2075cc83175",
              "parent_uuid": "0d876b68-a849-48bc-b3fd-cc3d415cf4b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "671b80e6-bcb4-4ec0-8c29-8e3626ee1d76",
                  "parent_uuid": "39b6e04d-2496-412b-8617-c2075cc83175",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af02768c-8b51-4e76-9db1-3ed19bc4c74c",
              "parent_uuid": "0d876b68-a849-48bc-b3fd-cc3d415cf4b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e439cffc-c644-4bdd-9c33-a833f337e33e",
                  "parent_uuid": "af02768c-8b51-4e76-9db1-3ed19bc4c74c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b8019942-d184-489b-aeee-3f1a5d3c22e5",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4acf9c64-f00f-45f0-92da-078b8c73ec90",
              "parent_uuid": "b8019942-d184-489b-aeee-3f1a5d3c22e5",
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
              "uuid": "79e5f92b-0619-433d-9d09-1bceea4031d0",
              "parent_uuid": "b8019942-d184-489b-aeee-3f1a5d3c22e5",
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
              "uuid": "696df104-7644-4b12-aa36-6f5462c06cf8",
              "parent_uuid": "b8019942-d184-489b-aeee-3f1a5d3c22e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcbb3bfc-4cc5-4b80-8974-badb7f234020",
                  "parent_uuid": "696df104-7644-4b12-aa36-6f5462c06cf8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6944fd0-550a-4465-a58d-563889b95d8d",
              "parent_uuid": "b8019942-d184-489b-aeee-3f1a5d3c22e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d4e91b4-d9be-4c10-b0b0-61ecfa57615a",
                  "parent_uuid": "c6944fd0-550a-4465-a58d-563889b95d8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ae08fcf-19e1-4d6f-a8ad-23e6f2186341",
              "parent_uuid": "b8019942-d184-489b-aeee-3f1a5d3c22e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e6960b5-f553-4f77-b89a-16ab9407b937",
                  "parent_uuid": "9ae08fcf-19e1-4d6f-a8ad-23e6f2186341",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc0dee3e-9f54-418a-8ed3-8b3354fdccdf",
              "parent_uuid": "b8019942-d184-489b-aeee-3f1a5d3c22e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef1a9c11-4ff9-41a6-bae9-d6112dd77cc7",
                  "parent_uuid": "fc0dee3e-9f54-418a-8ed3-8b3354fdccdf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7407b3d5-5abe-4e28-8565-193a3a74acc8",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "960c88b9-216f-4420-b266-06503dbdcb53",
              "parent_uuid": "7407b3d5-5abe-4e28-8565-193a3a74acc8",
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
              "uuid": "b70113fa-d0fe-49d0-abe1-7c6b1c337845",
              "parent_uuid": "7407b3d5-5abe-4e28-8565-193a3a74acc8",
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
              "uuid": "a84dcc0d-c743-4cf8-ba3f-8e186d7e0186",
              "parent_uuid": "7407b3d5-5abe-4e28-8565-193a3a74acc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9155c41b-aeae-4982-b948-f66a838cf72d",
                  "parent_uuid": "a84dcc0d-c743-4cf8-ba3f-8e186d7e0186",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c55b2fcc-3576-4587-aaa7-56d8da8b9374",
              "parent_uuid": "7407b3d5-5abe-4e28-8565-193a3a74acc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f170861d-9785-4aa7-86df-19aff68a522f",
                  "parent_uuid": "c55b2fcc-3576-4587-aaa7-56d8da8b9374",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aaba8884-42e0-49fa-94f0-2568f1d6e658",
              "parent_uuid": "7407b3d5-5abe-4e28-8565-193a3a74acc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcf356f3-fddb-48be-87e7-441864e1e486",
                  "parent_uuid": "aaba8884-42e0-49fa-94f0-2568f1d6e658",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b79fed4c-dfd0-4b76-9abe-6330d1b2155d",
              "parent_uuid": "7407b3d5-5abe-4e28-8565-193a3a74acc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5725cdbe-e1c3-46a5-b473-953c087c18d1",
                  "parent_uuid": "b79fed4c-dfd0-4b76-9abe-6330d1b2155d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c4c6766-23ed-4f56-a23b-96f3f7f8f897",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24206bf5-c788-4c76-8173-76e4765a2584",
              "parent_uuid": "0c4c6766-23ed-4f56-a23b-96f3f7f8f897",
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
          "uuid": "2eca0a36-9ad4-4eaf-8796-d857071b3981",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33a50819-074d-45ee-9cc6-b97c08b51d48",
              "parent_uuid": "2eca0a36-9ad4-4eaf-8796-d857071b3981",
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
          "uuid": "a7321080-f7a1-49c9-b2bc-8a742dbe0b75",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d26690f-09f1-4bdd-86c6-eaa2c9fa87ee",
              "parent_uuid": "a7321080-f7a1-49c9-b2bc-8a742dbe0b75",
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
                  "uuid": "72f0baf4-72ba-446f-b521-8e9d78946601",
                  "parent_uuid": "4d26690f-09f1-4bdd-86c6-eaa2c9fa87ee",
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
          "uuid": "4fdc0feb-7df5-478b-9ce4-96791baed280",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "4f67bf93-e9d3-441c-9f02-c7d6986c3878",
              "parent_uuid": "4fdc0feb-7df5-478b-9ce4-96791baed280",
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
          "uuid": "5a2d137a-1825-4b06-aa73-9027da3548d7",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "886afdc8-21be-4d13-a83b-83f00b253cb0",
              "parent_uuid": "5a2d137a-1825-4b06-aa73-9027da3548d7",
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
          "uuid": "551d808a-5590-400a-b10b-f06c6b82fb63",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95760284-3b4e-4c40-8284-3ae7ff57a68a",
              "parent_uuid": "551d808a-5590-400a-b10b-f06c6b82fb63",
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
              "uuid": "df5b8221-3feb-4e32-86cc-b267f37bde8d",
              "parent_uuid": "551d808a-5590-400a-b10b-f06c6b82fb63",
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
              "uuid": "39bb62d2-e558-4940-9f82-b7ad24afab9b",
              "parent_uuid": "551d808a-5590-400a-b10b-f06c6b82fb63",
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
              "uuid": "38cca569-9df4-4dc1-a7dc-9c21a20cc745",
              "parent_uuid": "551d808a-5590-400a-b10b-f06c6b82fb63",
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
              "uuid": "964e9429-67e6-48eb-9fbc-335cac34e1c8",
              "parent_uuid": "551d808a-5590-400a-b10b-f06c6b82fb63",
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
              "uuid": "8f1afa1b-8246-41f0-8035-9836bb6e441f",
              "parent_uuid": "551d808a-5590-400a-b10b-f06c6b82fb63",
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
          "uuid": "7f893034-b7db-46c7-91a2-aff6103745bc",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "753d41b0-429b-41ec-96f3-0db80bb6fecb",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3618844-2e11-4ef6-a074-58081b6b082f",
              "parent_uuid": "753d41b0-429b-41ec-96f3-0db80bb6fecb",
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
              "uuid": "5968b8bc-63f7-4c15-a6bf-6424aba15613",
              "parent_uuid": "753d41b0-429b-41ec-96f3-0db80bb6fecb",
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
              "uuid": "99cedce3-2756-49f9-833e-3760c772887a",
              "parent_uuid": "753d41b0-429b-41ec-96f3-0db80bb6fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b6a5766-4209-4187-ae71-b60defc87dbe",
                  "parent_uuid": "99cedce3-2756-49f9-833e-3760c772887a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6f705dd-a8cf-4e62-8f6d-738844144859",
              "parent_uuid": "753d41b0-429b-41ec-96f3-0db80bb6fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28f9c9a8-1608-4c74-a7b9-ba019d7803d9",
                  "parent_uuid": "b6f705dd-a8cf-4e62-8f6d-738844144859",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21ad61e9-973e-4c5d-b44a-9e3a4d3ce45c",
              "parent_uuid": "753d41b0-429b-41ec-96f3-0db80bb6fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32ca1d59-04ab-4f24-b13d-1f5fb454f9d6",
                  "parent_uuid": "21ad61e9-973e-4c5d-b44a-9e3a4d3ce45c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bcd3170-4973-42f8-8f73-25f1f185a234",
              "parent_uuid": "753d41b0-429b-41ec-96f3-0db80bb6fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dac9f60d-8204-42d6-ab92-cb13a1eaf9fe",
                  "parent_uuid": "9bcd3170-4973-42f8-8f73-25f1f185a234",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d9ae8e17-73d0-4215-b152-2a8bd0b35e54",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "957eb82e-e785-409f-9609-33b7052e5134",
              "parent_uuid": "d9ae8e17-73d0-4215-b152-2a8bd0b35e54",
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
              "uuid": "41752785-0c71-41a3-ab9f-5595a0789003",
              "parent_uuid": "d9ae8e17-73d0-4215-b152-2a8bd0b35e54",
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
              "uuid": "08e3f1b3-11c9-48d7-9d01-1c3cea41a01c",
              "parent_uuid": "d9ae8e17-73d0-4215-b152-2a8bd0b35e54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31dabef4-f0b3-4b01-a061-8d4ce64cfbf9",
                  "parent_uuid": "08e3f1b3-11c9-48d7-9d01-1c3cea41a01c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05a89e8a-5009-4b63-afe2-56e8191517e7",
              "parent_uuid": "d9ae8e17-73d0-4215-b152-2a8bd0b35e54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "901937ae-4af9-460f-8534-e0515e8874ad",
                  "parent_uuid": "05a89e8a-5009-4b63-afe2-56e8191517e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73c704c4-4ddd-4c4a-87e2-b684a665f3b7",
              "parent_uuid": "d9ae8e17-73d0-4215-b152-2a8bd0b35e54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f04cb782-d478-4f55-ab74-5ccb688ed342",
                  "parent_uuid": "73c704c4-4ddd-4c4a-87e2-b684a665f3b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d1c4b50-f0d2-4605-83d1-3cc5c964fdcf",
              "parent_uuid": "d9ae8e17-73d0-4215-b152-2a8bd0b35e54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8979131e-9be8-4752-8d08-9799888ef44e",
                  "parent_uuid": "5d1c4b50-f0d2-4605-83d1-3cc5c964fdcf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e88e8c22-a67f-4a0c-9cd5-dc878fb6ca83",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52ce6629-8846-4216-b91a-d7eca64ed2d3",
              "parent_uuid": "e88e8c22-a67f-4a0c-9cd5-dc878fb6ca83",
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
              "uuid": "3fea0a79-03bb-4f25-afc5-ef3c7cfa74fe",
              "parent_uuid": "e88e8c22-a67f-4a0c-9cd5-dc878fb6ca83",
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
              "uuid": "c1a3f985-a0c0-4770-8d16-77e673e3d176",
              "parent_uuid": "e88e8c22-a67f-4a0c-9cd5-dc878fb6ca83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e32edbdd-7edd-4053-9bb6-b504a81e917a",
                  "parent_uuid": "c1a3f985-a0c0-4770-8d16-77e673e3d176",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a19d4b4a-d219-4526-906f-099c20553e3d",
              "parent_uuid": "e88e8c22-a67f-4a0c-9cd5-dc878fb6ca83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c23cb8e-265f-461f-936e-3ac028e0bcaa",
                  "parent_uuid": "a19d4b4a-d219-4526-906f-099c20553e3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "797a2257-3583-4a51-a6fd-2df4bc027fdb",
              "parent_uuid": "e88e8c22-a67f-4a0c-9cd5-dc878fb6ca83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c730c7d-443e-4eac-a413-7d5de6f318a8",
                  "parent_uuid": "797a2257-3583-4a51-a6fd-2df4bc027fdb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d6b818a-f0c9-4fd2-a479-8e4977c5401c",
              "parent_uuid": "e88e8c22-a67f-4a0c-9cd5-dc878fb6ca83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1cb3950-e2b2-4028-b713-b83abc9a649e",
                  "parent_uuid": "5d6b818a-f0c9-4fd2-a479-8e4977c5401c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7632ac6d-52b1-4957-97dd-6ab0bf07c481",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "986383d4-84b4-4732-b796-efe7c829d613",
              "parent_uuid": "7632ac6d-52b1-4957-97dd-6ab0bf07c481",
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
              "uuid": "68c37a2f-b0dd-42a2-b8a6-03bacd32ac18",
              "parent_uuid": "7632ac6d-52b1-4957-97dd-6ab0bf07c481",
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
              "uuid": "be37c596-3786-4682-af97-a619b1ed3ea9",
              "parent_uuid": "7632ac6d-52b1-4957-97dd-6ab0bf07c481",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd9a8efd-ec39-475c-affd-b6caa3497b37",
                  "parent_uuid": "be37c596-3786-4682-af97-a619b1ed3ea9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "611273d6-5061-49e2-b15d-7081681f0741",
              "parent_uuid": "7632ac6d-52b1-4957-97dd-6ab0bf07c481",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e954840-31ef-466e-b830-19572c4d31df",
                  "parent_uuid": "611273d6-5061-49e2-b15d-7081681f0741",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5d0fff7-fad0-47c6-a547-269ef58df68a",
              "parent_uuid": "7632ac6d-52b1-4957-97dd-6ab0bf07c481",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee61c93c-3478-4e48-864b-27f58f02642d",
                  "parent_uuid": "d5d0fff7-fad0-47c6-a547-269ef58df68a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f5b5aee-9e52-4124-b87e-39283ab3be4d",
              "parent_uuid": "7632ac6d-52b1-4957-97dd-6ab0bf07c481",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5780da46-0fc6-4074-8a9f-d7c64952d682",
                  "parent_uuid": "9f5b5aee-9e52-4124-b87e-39283ab3be4d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "39239391-3994-4c62-8fd5-f624b7910796",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a716858-75b6-43ba-b8cc-56f7a96c0882",
              "parent_uuid": "39239391-3994-4c62-8fd5-f624b7910796",
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
          "uuid": "b03c69d4-5c3b-4d43-9844-195865319ee1",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ddcbc67-2b26-4292-897b-b9886119e429",
              "parent_uuid": "b03c69d4-5c3b-4d43-9844-195865319ee1",
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
          "uuid": "4796a0dc-fafc-42bd-897d-9e81ddfb89b5",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8118c872-9eff-489e-8807-9648bc80fde8",
              "parent_uuid": "4796a0dc-fafc-42bd-897d-9e81ddfb89b5",
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
                  "uuid": "79366ec1-6019-44d6-9ada-43f106acdf8f",
                  "parent_uuid": "8118c872-9eff-489e-8807-9648bc80fde8",
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
          "uuid": "a7eed87f-bdae-4d8b-83f4-7ae0d693192b",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "231a62f3-8f32-4810-96ad-291f2a98c4dd",
              "parent_uuid": "a7eed87f-bdae-4d8b-83f4-7ae0d693192b",
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
          "uuid": "c487b176-ef5f-4872-b18b-3bf2a6c12b0d",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "45b79ea3-4770-4f5e-83d6-ab305dcd2bf2",
              "parent_uuid": "c487b176-ef5f-4872-b18b-3bf2a6c12b0d",
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
          "uuid": "0d93af77-e254-4d50-897b-ef6418f54ad3",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d278c997-a0e9-4fb7-a15f-fa0c52ca131f",
              "parent_uuid": "0d93af77-e254-4d50-897b-ef6418f54ad3",
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
              "uuid": "2296ec94-8790-4488-aa0b-9bad488c111c",
              "parent_uuid": "0d93af77-e254-4d50-897b-ef6418f54ad3",
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
              "uuid": "64edd501-d15c-4639-866b-89bf8c65bb12",
              "parent_uuid": "0d93af77-e254-4d50-897b-ef6418f54ad3",
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
              "uuid": "e5338b90-c68a-408e-964e-30fa512e9fd0",
              "parent_uuid": "0d93af77-e254-4d50-897b-ef6418f54ad3",
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
              "uuid": "82e7e502-dd16-4db1-8859-524c66f33fe9",
              "parent_uuid": "0d93af77-e254-4d50-897b-ef6418f54ad3",
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
              "uuid": "6b4ded03-fbbc-49fa-bd5a-23b688cd4cac",
              "parent_uuid": "0d93af77-e254-4d50-897b-ef6418f54ad3",
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
          "uuid": "89d2b078-dc4d-46f3-9e5c-57d2cab210be",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "036eb964-b1e4-4d2c-8fc2-039d5b3d53e9",
              "parent_uuid": "89d2b078-dc4d-46f3-9e5c-57d2cab210be",
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
              "uuid": "8129e9b3-558e-40a8-886b-ad0656a2554a",
              "parent_uuid": "89d2b078-dc4d-46f3-9e5c-57d2cab210be",
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
              "uuid": "db177755-4036-46e1-8431-1d2159f94c41",
              "parent_uuid": "89d2b078-dc4d-46f3-9e5c-57d2cab210be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efa9a382-997c-49b2-a16d-d44279e52e31",
                  "parent_uuid": "db177755-4036-46e1-8431-1d2159f94c41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69b9b096-cda8-486f-8d2d-01358df28fe2",
              "parent_uuid": "89d2b078-dc4d-46f3-9e5c-57d2cab210be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10a142d8-7902-4b4c-a98b-37eaac857a5f",
                  "parent_uuid": "69b9b096-cda8-486f-8d2d-01358df28fe2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62769651-0542-4cb6-8fe1-386a8601f6da",
              "parent_uuid": "89d2b078-dc4d-46f3-9e5c-57d2cab210be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c648c98a-1484-49f6-a3fe-d3869ace856f",
                  "parent_uuid": "62769651-0542-4cb6-8fe1-386a8601f6da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7afaaa91-37e5-4863-a6bf-41331f2177ec",
              "parent_uuid": "89d2b078-dc4d-46f3-9e5c-57d2cab210be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b03e681-8672-42bc-a83e-2ae70fd2b040",
                  "parent_uuid": "7afaaa91-37e5-4863-a6bf-41331f2177ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "45074e98-645a-4b69-90fc-19876b87d482",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68d6d2e2-71bc-4df2-8360-5915d4ba5971",
              "parent_uuid": "45074e98-645a-4b69-90fc-19876b87d482",
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
              "uuid": "27f1eea4-b6f6-400a-b721-edff3661b8ed",
              "parent_uuid": "45074e98-645a-4b69-90fc-19876b87d482",
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
              "uuid": "25281082-a874-4546-92b6-48ff6da655df",
              "parent_uuid": "45074e98-645a-4b69-90fc-19876b87d482",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "689065f8-8d41-4ffc-bcbd-b250c12cae88",
                  "parent_uuid": "25281082-a874-4546-92b6-48ff6da655df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f8da152-274a-40f7-90f0-02bf19422e4d",
              "parent_uuid": "45074e98-645a-4b69-90fc-19876b87d482",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d192e9ae-6c40-465e-9a21-1a2706c8af04",
                  "parent_uuid": "7f8da152-274a-40f7-90f0-02bf19422e4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9b39045-afeb-4706-8456-a0b6e970e96a",
              "parent_uuid": "45074e98-645a-4b69-90fc-19876b87d482",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "549d5912-9d0b-4b04-ab91-ea43a5d4f59a",
                  "parent_uuid": "c9b39045-afeb-4706-8456-a0b6e970e96a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8d579df-0502-4286-9c51-09e38bfe3cf9",
              "parent_uuid": "45074e98-645a-4b69-90fc-19876b87d482",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "652f1801-b3dd-4be5-9850-2e77db075d39",
                  "parent_uuid": "e8d579df-0502-4286-9c51-09e38bfe3cf9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eec59cfd-cef8-44a4-bdca-3f0c052d4738",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24b92e0f-f9c7-4fdf-add4-fb02759e00fb",
              "parent_uuid": "eec59cfd-cef8-44a4-bdca-3f0c052d4738",
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
              "uuid": "9fa5d42f-aad8-46f4-aafd-5cbe6d73d240",
              "parent_uuid": "eec59cfd-cef8-44a4-bdca-3f0c052d4738",
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
              "uuid": "f36b772c-d3fe-4f42-9291-008a54687585",
              "parent_uuid": "eec59cfd-cef8-44a4-bdca-3f0c052d4738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35d064de-a0c7-4302-8aa3-6c12ab452f70",
                  "parent_uuid": "f36b772c-d3fe-4f42-9291-008a54687585",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8732baf-aa06-4d9c-b400-5f6002a33e02",
              "parent_uuid": "eec59cfd-cef8-44a4-bdca-3f0c052d4738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dfa1cb2-7984-421b-805a-f358853fc956",
                  "parent_uuid": "c8732baf-aa06-4d9c-b400-5f6002a33e02",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cbb44ac2-6ab7-4b4a-bed7-ceb781186f9d",
              "parent_uuid": "eec59cfd-cef8-44a4-bdca-3f0c052d4738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76bf7bc9-df2d-4862-9e2d-20ac0199f603",
                  "parent_uuid": "cbb44ac2-6ab7-4b4a-bed7-ceb781186f9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed3d57ab-4bd4-426c-a88f-76e28c7c266c",
              "parent_uuid": "eec59cfd-cef8-44a4-bdca-3f0c052d4738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05e7df19-6129-49aa-a8a2-c6778e9a9408",
                  "parent_uuid": "ed3d57ab-4bd4-426c-a88f-76e28c7c266c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9a548d4-a903-4e14-8712-5e21c86782ba",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78ffe199-d689-4bc8-a485-056100515f14",
              "parent_uuid": "b9a548d4-a903-4e14-8712-5e21c86782ba",
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
              "uuid": "dbfa9c41-3e97-4876-894e-0ddd01978dc3",
              "parent_uuid": "b9a548d4-a903-4e14-8712-5e21c86782ba",
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
              "uuid": "006d2054-dc82-4925-b662-7ace8b9cba61",
              "parent_uuid": "b9a548d4-a903-4e14-8712-5e21c86782ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9f0304c-aa07-427d-aa23-d03663895d00",
                  "parent_uuid": "006d2054-dc82-4925-b662-7ace8b9cba61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f318a1f-b05d-455f-82fe-c65c08ffaadf",
              "parent_uuid": "b9a548d4-a903-4e14-8712-5e21c86782ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b342ee0f-5cf9-4774-bae3-ff3689ff69bf",
                  "parent_uuid": "3f318a1f-b05d-455f-82fe-c65c08ffaadf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b09b5e76-1744-4229-ad54-b12c7a143532",
              "parent_uuid": "b9a548d4-a903-4e14-8712-5e21c86782ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e12a2b10-f7f6-478c-b37b-e4afb83adc4f",
                  "parent_uuid": "b09b5e76-1744-4229-ad54-b12c7a143532",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c64a75f-fbff-4b7f-8c7d-8b81e9dd6cd1",
              "parent_uuid": "b9a548d4-a903-4e14-8712-5e21c86782ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0ae71aa-2ef2-48c8-821f-489d20b52b84",
                  "parent_uuid": "7c64a75f-fbff-4b7f-8c7d-8b81e9dd6cd1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a9a3dc5-c504-4624-a817-d2434ea2805b",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e34f785-1ac3-47fd-879a-f0129343fd55",
              "parent_uuid": "8a9a3dc5-c504-4624-a817-d2434ea2805b",
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
              "uuid": "ad0714bf-4995-4584-9cb8-14ea301ddd2a",
              "parent_uuid": "8a9a3dc5-c504-4624-a817-d2434ea2805b",
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
              "uuid": "0a805755-aeb5-4ff2-a519-8941297a6970",
              "parent_uuid": "8a9a3dc5-c504-4624-a817-d2434ea2805b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41852e67-6b60-47bf-aeee-e1f9df5aacd9",
                  "parent_uuid": "0a805755-aeb5-4ff2-a519-8941297a6970",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ad54ecd-6b12-4ee2-83d1-6760f2b131ed",
              "parent_uuid": "8a9a3dc5-c504-4624-a817-d2434ea2805b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b0fad9b-44d1-47bc-abb4-97182117382a",
                  "parent_uuid": "2ad54ecd-6b12-4ee2-83d1-6760f2b131ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9770f637-d98a-47f9-ae02-dc6b98428463",
              "parent_uuid": "8a9a3dc5-c504-4624-a817-d2434ea2805b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "404c3468-72ef-42f7-9c99-07adc18dde1f",
                  "parent_uuid": "9770f637-d98a-47f9-ae02-dc6b98428463",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f091e3b-7e80-452c-be5f-f347484d9e60",
              "parent_uuid": "8a9a3dc5-c504-4624-a817-d2434ea2805b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75b3fa63-9eed-44ee-91c2-429858f2d7c0",
                  "parent_uuid": "4f091e3b-7e80-452c-be5f-f347484d9e60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d2d5b8b-918d-4489-baa6-c5568598f7b5",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cdb29818-122f-46c5-a635-9823c58f5fa8",
              "parent_uuid": "2d2d5b8b-918d-4489-baa6-c5568598f7b5",
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
              "uuid": "4b7624de-6831-4900-86fe-abfff103ac1d",
              "parent_uuid": "2d2d5b8b-918d-4489-baa6-c5568598f7b5",
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
              "uuid": "c43ec9ab-4b33-4030-8afd-c928057229b7",
              "parent_uuid": "2d2d5b8b-918d-4489-baa6-c5568598f7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07af2b12-b311-4242-b2b5-b165d3faa8c2",
                  "parent_uuid": "c43ec9ab-4b33-4030-8afd-c928057229b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9e624f6-f753-46c1-9ae0-50a4311a7c63",
              "parent_uuid": "2d2d5b8b-918d-4489-baa6-c5568598f7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1531cba-8d2c-4b44-b165-bf0be77920f4",
                  "parent_uuid": "b9e624f6-f753-46c1-9ae0-50a4311a7c63",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91f54e23-1832-49cc-b722-44628ae5a7de",
              "parent_uuid": "2d2d5b8b-918d-4489-baa6-c5568598f7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b2cee85-0d50-4a4a-a114-96eb9383018b",
                  "parent_uuid": "91f54e23-1832-49cc-b722-44628ae5a7de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fff21553-a37a-4f4d-b7fe-995c1177e8b9",
              "parent_uuid": "2d2d5b8b-918d-4489-baa6-c5568598f7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d4853f0-baeb-4c53-869e-e88f9ec46b7d",
                  "parent_uuid": "fff21553-a37a-4f4d-b7fe-995c1177e8b9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d76031a-fb05-4491-8a19-28a80606b2ed",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c43d7748-070d-42d6-82cb-10cdc69e4bfa",
              "parent_uuid": "9d76031a-fb05-4491-8a19-28a80606b2ed",
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
          "uuid": "8ed06aba-a0b0-486e-8774-5ee162375746",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "375260d8-e380-44b3-a3a7-24042679c1a1",
              "parent_uuid": "8ed06aba-a0b0-486e-8774-5ee162375746",
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
          "uuid": "f127eb2f-b5c6-4e8d-83da-605a910dd580",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f0715b5a-aa8c-410b-b6af-4a3a8f76bd71",
              "parent_uuid": "f127eb2f-b5c6-4e8d-83da-605a910dd580",
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
                  "uuid": "74d060e4-83bd-47c8-b571-028739c0c83e",
                  "parent_uuid": "f0715b5a-aa8c-410b-b6af-4a3a8f76bd71",
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
          "uuid": "1c59495e-cb03-4f94-a77b-6b3d4606f4aa",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a292686-2ce8-46c3-b694-4edde0900c88",
              "parent_uuid": "1c59495e-cb03-4f94-a77b-6b3d4606f4aa",
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
          "uuid": "b36cd5cd-6c47-412e-a73c-24c8b22fc45d",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "6dc97836-64ac-455b-9c26-0d151c18a6f6",
              "parent_uuid": "b36cd5cd-6c47-412e-a73c-24c8b22fc45d",
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
          "uuid": "0e8b9522-59da-418a-9233-7288ccc78aad",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35fb8c9c-f7de-4271-b64b-da5acd1620c5",
              "parent_uuid": "0e8b9522-59da-418a-9233-7288ccc78aad",
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
              "uuid": "38168f1d-ebd6-4db5-9264-4da7da6c5024",
              "parent_uuid": "0e8b9522-59da-418a-9233-7288ccc78aad",
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
              "uuid": "4d96e125-abde-4eb3-9721-9f7ffb1adf8e",
              "parent_uuid": "0e8b9522-59da-418a-9233-7288ccc78aad",
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
              "uuid": "23b28e0f-02f9-4c06-9099-dbdb44db31a8",
              "parent_uuid": "0e8b9522-59da-418a-9233-7288ccc78aad",
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
              "uuid": "7fd3e412-f6e4-46eb-b71f-eb09dd777338",
              "parent_uuid": "0e8b9522-59da-418a-9233-7288ccc78aad",
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
          "uuid": "053c92c2-9d16-47e2-852b-9ea69e603ef8",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e224338d-c5f4-4585-90b6-7e2cb417e95b",
              "parent_uuid": "053c92c2-9d16-47e2-852b-9ea69e603ef8",
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
              "uuid": "5058f894-e0ef-4949-853e-42ab9ce551bc",
              "parent_uuid": "053c92c2-9d16-47e2-852b-9ea69e603ef8",
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
              "uuid": "a3d2f97e-98a9-444a-9423-84577b763aff",
              "parent_uuid": "053c92c2-9d16-47e2-852b-9ea69e603ef8",
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
              "uuid": "7918291a-528e-44f6-82a7-6b7148d396c5",
              "parent_uuid": "053c92c2-9d16-47e2-852b-9ea69e603ef8",
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
              "uuid": "c8cb5137-fcf6-4bef-82a2-db9c0983f86e",
              "parent_uuid": "053c92c2-9d16-47e2-852b-9ea69e603ef8",
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
          "uuid": "3e035432-7691-461f-82a3-eef4cd7ea878",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3877c12c-41b6-468e-baca-717a16f8241e",
              "parent_uuid": "3e035432-7691-461f-82a3-eef4cd7ea878",
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
              "uuid": "34dbea3e-6ec2-42f3-ae60-b8d6dc6ca22c",
              "parent_uuid": "3e035432-7691-461f-82a3-eef4cd7ea878",
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
              "uuid": "b88b397f-d3e7-4ab3-92ec-b7d21ea0df60",
              "parent_uuid": "3e035432-7691-461f-82a3-eef4cd7ea878",
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
              "uuid": "c407a846-a9c6-42d5-a204-e7467fd63af1",
              "parent_uuid": "3e035432-7691-461f-82a3-eef4cd7ea878",
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
              "uuid": "07e1d8cd-29f3-4c9d-9364-62949fa38215",
              "parent_uuid": "3e035432-7691-461f-82a3-eef4cd7ea878",
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
          "uuid": "43d10f38-1ec1-47c0-b25b-54a450cf478b",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b1924bf-f568-4116-b28b-4133444d0fa7",
              "parent_uuid": "43d10f38-1ec1-47c0-b25b-54a450cf478b",
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
              "uuid": "b7f754bf-14b8-4541-bd4e-70d2999a5640",
              "parent_uuid": "43d10f38-1ec1-47c0-b25b-54a450cf478b",
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
              "uuid": "69328370-8bc1-4077-a3d9-5757d696d4be",
              "parent_uuid": "43d10f38-1ec1-47c0-b25b-54a450cf478b",
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
              "uuid": "d800a5d9-b235-4532-ab3e-50c5367f823d",
              "parent_uuid": "43d10f38-1ec1-47c0-b25b-54a450cf478b",
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
              "uuid": "c3d39382-d6df-40b8-b7d6-773de3759d84",
              "parent_uuid": "43d10f38-1ec1-47c0-b25b-54a450cf478b",
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
          "uuid": "7e78ae00-a978-46d1-806e-aa445c4ef429",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5eec55cd-2792-4828-bb8d-df8739b02880",
              "parent_uuid": "7e78ae00-a978-46d1-806e-aa445c4ef429",
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
              "uuid": "2df15747-2713-4399-a5a0-a73812bea8b3",
              "parent_uuid": "7e78ae00-a978-46d1-806e-aa445c4ef429",
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
              "uuid": "08140200-36b1-45db-b87a-0582b07edd2d",
              "parent_uuid": "7e78ae00-a978-46d1-806e-aa445c4ef429",
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
              "uuid": "fffecec6-3588-4b37-95d6-e61e91425a46",
              "parent_uuid": "7e78ae00-a978-46d1-806e-aa445c4ef429",
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
              "uuid": "bcd128eb-e19f-4cad-9923-937f5ce91771",
              "parent_uuid": "7e78ae00-a978-46d1-806e-aa445c4ef429",
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
          "uuid": "adc43c6c-0998-4a4b-8853-8035f4e0cd33",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1cf00bb8-21e8-4546-84eb-201763d77ab1",
              "parent_uuid": "adc43c6c-0998-4a4b-8853-8035f4e0cd33",
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
              "uuid": "514c8d0d-8163-4d87-8563-6a59147131fe",
              "parent_uuid": "adc43c6c-0998-4a4b-8853-8035f4e0cd33",
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
              "uuid": "57e57c57-c00a-4df8-b516-6f126209b9d8",
              "parent_uuid": "adc43c6c-0998-4a4b-8853-8035f4e0cd33",
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
              "uuid": "45a48dcf-d66e-4f80-9c23-2bfd714852be",
              "parent_uuid": "adc43c6c-0998-4a4b-8853-8035f4e0cd33",
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
              "uuid": "901f40ef-31cf-43e1-ad7b-99207cfd590a",
              "parent_uuid": "adc43c6c-0998-4a4b-8853-8035f4e0cd33",
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
          "uuid": "017b5606-7be7-4f84-bf43-307f817b5ab3",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e455b15c-a8b3-421a-ab4b-ac90689c28a5",
              "parent_uuid": "017b5606-7be7-4f84-bf43-307f817b5ab3",
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
              "uuid": "91ba64b9-63b3-4f7f-b82d-ef9ac2737ff9",
              "parent_uuid": "017b5606-7be7-4f84-bf43-307f817b5ab3",
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
              "uuid": "9314e15d-45c5-4afc-8e82-8ff8cb63f8ef",
              "parent_uuid": "017b5606-7be7-4f84-bf43-307f817b5ab3",
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
              "uuid": "3212fe05-261f-4e8c-b4e2-62cfa991cf11",
              "parent_uuid": "017b5606-7be7-4f84-bf43-307f817b5ab3",
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
              "uuid": "8e0e92ad-30df-4d36-bbcc-5d6674f0d33f",
              "parent_uuid": "017b5606-7be7-4f84-bf43-307f817b5ab3",
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
          "uuid": "246c8322-e204-4a3d-a94b-0731c0120eaa",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c139697d-74ef-496b-9fd0-bdc2d731bf5f",
              "parent_uuid": "246c8322-e204-4a3d-a94b-0731c0120eaa",
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
              "uuid": "dc73c5c3-4827-45b2-bf6d-2a8e30a35171",
              "parent_uuid": "246c8322-e204-4a3d-a94b-0731c0120eaa",
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
              "uuid": "e97364be-50b9-4a49-a8b2-845b5aca6ae5",
              "parent_uuid": "246c8322-e204-4a3d-a94b-0731c0120eaa",
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
              "uuid": "1ef3513b-e8c1-4aad-9e4d-8f0efb164c8c",
              "parent_uuid": "246c8322-e204-4a3d-a94b-0731c0120eaa",
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
              "uuid": "bd23939d-3e08-41dd-b5d8-36659aed02e3",
              "parent_uuid": "246c8322-e204-4a3d-a94b-0731c0120eaa",
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
          "uuid": "4f7081f8-913f-4a34-a3c3-7e674f3ce716",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96aeeda3-51b0-41d3-b630-2e44d9f83577",
              "parent_uuid": "4f7081f8-913f-4a34-a3c3-7e674f3ce716",
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
              "uuid": "d9ab0e53-0dd1-489c-a868-fe9dd3fbd4fd",
              "parent_uuid": "4f7081f8-913f-4a34-a3c3-7e674f3ce716",
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
              "uuid": "a25739b4-fccc-4d1c-bda6-27ee65e2a6fe",
              "parent_uuid": "4f7081f8-913f-4a34-a3c3-7e674f3ce716",
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
              "uuid": "a5913b29-dfc3-4e44-aac5-22b883222813",
              "parent_uuid": "4f7081f8-913f-4a34-a3c3-7e674f3ce716",
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
              "uuid": "d6776b6a-f870-48f6-ab92-85f57d680471",
              "parent_uuid": "4f7081f8-913f-4a34-a3c3-7e674f3ce716",
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
          "uuid": "5887e3fc-b2ba-4bc0-990d-92433b008982",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e70bf986-abaa-41ae-9be5-5b5215c50121",
              "parent_uuid": "5887e3fc-b2ba-4bc0-990d-92433b008982",
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
              "uuid": "4a032532-e46a-4f6b-bf1e-5ded74bdd901",
              "parent_uuid": "5887e3fc-b2ba-4bc0-990d-92433b008982",
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
              "uuid": "6b67432f-eb30-458f-9372-24e97a7b7306",
              "parent_uuid": "5887e3fc-b2ba-4bc0-990d-92433b008982",
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
              "uuid": "24ba2f80-5eeb-4de5-8ef9-38bfab7f0959",
              "parent_uuid": "5887e3fc-b2ba-4bc0-990d-92433b008982",
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
              "uuid": "9edc0ca9-193a-4a8c-87d7-5d1f5d113715",
              "parent_uuid": "5887e3fc-b2ba-4bc0-990d-92433b008982",
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
          "uuid": "5aade3c4-091d-4636-8951-58885eabf81f",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53f13586-c9e0-4ad9-8274-94795c88bf1f",
              "parent_uuid": "5aade3c4-091d-4636-8951-58885eabf81f",
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
              "uuid": "f21fca25-60f5-4b4c-9a66-a22d288b90fc",
              "parent_uuid": "5aade3c4-091d-4636-8951-58885eabf81f",
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
              "uuid": "bea0b64f-1543-4129-a10d-25fb2af8f165",
              "parent_uuid": "5aade3c4-091d-4636-8951-58885eabf81f",
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
              "uuid": "fec0a0f4-910e-42ff-b01c-29231aa45ca3",
              "parent_uuid": "5aade3c4-091d-4636-8951-58885eabf81f",
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
              "uuid": "84b15f2a-ec24-465f-9cce-365ddad20f5c",
              "parent_uuid": "5aade3c4-091d-4636-8951-58885eabf81f",
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
          "uuid": "41280fd2-0148-4a9a-95dd-40f5f7cb530b",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26bd50c1-d7e5-43d8-a0ff-f73426ee08cd",
              "parent_uuid": "41280fd2-0148-4a9a-95dd-40f5f7cb530b",
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
              "uuid": "d66fbe43-af46-415e-8940-c4544f22eef5",
              "parent_uuid": "41280fd2-0148-4a9a-95dd-40f5f7cb530b",
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
              "uuid": "10389e12-dd3d-4dc4-a610-82bc920b44f0",
              "parent_uuid": "41280fd2-0148-4a9a-95dd-40f5f7cb530b",
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
              "uuid": "117c755e-a387-4137-8946-37629dd1570a",
              "parent_uuid": "41280fd2-0148-4a9a-95dd-40f5f7cb530b",
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
              "uuid": "b7e72a2d-409e-40e2-8772-54aef9cacb85",
              "parent_uuid": "41280fd2-0148-4a9a-95dd-40f5f7cb530b",
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
          "uuid": "3a341060-47db-468d-a696-3934328eda20",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "245c41fa-6c9b-456f-b227-7a998ffe1d1f",
              "parent_uuid": "3a341060-47db-468d-a696-3934328eda20",
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
              "uuid": "c8dd2936-13ab-44b3-925a-87ac69ea55a5",
              "parent_uuid": "3a341060-47db-468d-a696-3934328eda20",
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
              "uuid": "ae2622e1-0a42-42b2-a49b-5c47e10e6753",
              "parent_uuid": "3a341060-47db-468d-a696-3934328eda20",
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
              "uuid": "7a1a97d8-c988-43fa-a783-bcc619063c32",
              "parent_uuid": "3a341060-47db-468d-a696-3934328eda20",
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
              "uuid": "9b39dbb5-b14d-41f7-9c84-9e425e9e747f",
              "parent_uuid": "3a341060-47db-468d-a696-3934328eda20",
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
          "uuid": "47774211-9682-4d84-896e-a175b3454ae0",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f333bb7a-af1f-4985-9b48-0878bd7e545e",
              "parent_uuid": "47774211-9682-4d84-896e-a175b3454ae0",
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
          "uuid": "d2f05e63-54d8-41fa-be5a-86a9d82e38c2",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39f886bf-74cb-46ed-ad95-0a8bb92d9daf",
              "parent_uuid": "d2f05e63-54d8-41fa-be5a-86a9d82e38c2",
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
          "uuid": "c04d2f66-218a-462f-8725-34bc1f4a45b2",
          "parent_uuid": "2a4e5d2c-bfb3-4c89-8f71-1f68b46b0b7d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "801d628d-d27f-45e6-95ca-21993ddba824",
              "parent_uuid": "c04d2f66-218a-462f-8725-34bc1f4a45b2",
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
                  "uuid": "b62f4752-cb57-4231-8cd4-350fe38da98a",
                  "parent_uuid": "801d628d-d27f-45e6-95ca-21993ddba824",
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

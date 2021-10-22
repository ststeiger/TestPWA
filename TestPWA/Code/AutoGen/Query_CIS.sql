
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
  "uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "855d4c98-a4a3-45bc-a877-85d32ed7c755",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "59e2cdd8-552b-4fdb-acfc-0c1fb49d977e",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "55ed4e78-3c07-47b2-bf61-e5eb985d955c",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "5c5cac94-8f50-43e4-b07c-8baf0ef2f7cd",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "6ed249dd-aece-4a7a-9e9d-1ed27a1906b5",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "ee308f26-f2ea-45cf-a7e0-16703209f793",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "f0b1c793-50e5-442a-be09-5b6009927355",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "8eee2964-b2be-4e4d-8d28-31675b15158b",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
              "uuid": "69b499e5-dee9-4a65-abca-ce25012096b9",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
              "uuid": "46d4983f-68e5-4ea1-b2bf-fb5f9f75c227",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
              "uuid": "f475064a-3096-4a93-b7af-bda7bf897d81",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
          "uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4e37eac5-1021-4ee4-8659-59f7429793bc",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
              "uuid": "857051fc-a896-4197-8cab-0f9bba44fcdf",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
              "uuid": "43266d47-f2a8-48b5-a3d0-a39e32dd5752",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
              "uuid": "4b7bd802-e472-45bc-9a83-63c65e1ef575",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
          "uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09cafa01-5984-4012-a9fa-aa37bbb5d0d7",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "571f2524-411f-435a-8aa2-51a5ec2ed3c5",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "319f69fc-a6ac-42fb-bb6f-5140bd2e921f",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "332c9ab0-0dd5-422d-86ec-2fbc8a4683a9",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "01e4159f-e38e-4c7b-be04-25c4e1bdba0e",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "534f9505-154a-4935-b35e-bd91320f6818",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
          "uuid": "c36bb2ce-f183-4f23-ba89-d0a872d0eee0",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d9dd8037-2730-4578-a13b-4b26ba09bf70",
              "parent_uuid": "c36bb2ce-f183-4f23-ba89-d0a872d0eee0",
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
          "uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fef53fac-f5dc-47b5-a165-e5ec4928a71f",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
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
              "uuid": "a89fb274-520b-487b-a7cc-4593bd2f3c03",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
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
              "uuid": "77d4551d-3ca3-4d0e-8fa1-eb2497d5c97d",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "52471159-3615-4501-89f1-1caf9f2a3387",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b434a678-de22-448f-b785-657b1bd16e9c",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "d652e9cb-4695-4c67-b1db-f481b4efcd63",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21423569-f342-4a81-8b6b-13c9d3457ff6",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
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
              "uuid": "e25ac3bd-d705-4f22-91f4-f2b8ae1260c9",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
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
              "uuid": "8d33e1a0-3566-4a81-8cdf-0241bb1348ca",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6a66dace-3a34-4826-9290-6e61474189b8",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6f16d012-ccf8-4bae-8e7a-ff47d45c2dc5",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "1305d23c-63b7-481e-b6f3-283d828d76a0",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca21d352-abbe-4aed-a660-3a8e09f03666",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
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
              "uuid": "a029aca2-e9e9-457a-8ab0-15e2fdadfa07",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
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
              "uuid": "fdc9260b-09a4-446a-999b-74bed4c5b642",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "cb474b60-30da-4b98-916f-7a5ad29f7b2c",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "50e5e95d-ae79-412b-91a0-960b6d763e13",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "a179071c-5376-4411-b36a-efabcad655df",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c985141d-95df-495d-a84f-97307cb087f9",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
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
              "uuid": "b9220a9b-1ef0-4486-b0cb-989e566309cb",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
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
              "uuid": "f4d61928-29b5-4934-ab30-f8d5f4d36a3f",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "3d5d6425-5e8a-4a27-a382-7f9c70a46d80",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "be1a562d-d36d-412f-833b-14f8053cc59a",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "15a87efe-97e6-43a8-9715-3d3455f7027f",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "a1a977ee-ee48-4dd4-83b9-30edb6a0077f",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e9760912-a604-4de0-9f29-b86308c6c021",
              "parent_uuid": "a1a977ee-ee48-4dd4-83b9-30edb6a0077f",
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
          "uuid": "bec481eb-1984-4481-848e-542842bf648b",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "421d9b35-2351-4725-a1af-9d7fc5550ea2",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
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
              "uuid": "d76d7c3d-4d14-4a59-a40a-2f2a82873aaf",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
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
              "uuid": "84833149-87df-454a-81a3-b8ad4703bad1",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "8244fbc8-6977-4370-8157-d05d5948c3eb",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0983b1cb-300e-482c-9061-b4336caae699",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "0f177e46-7e9f-4423-99e1-88172f6e522a",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5830643a-df7a-4076-a7ac-d31f8043bb1c",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
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
              "uuid": "b03d44d1-b9e1-4810-a78f-739c057fe7cc",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
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
              "uuid": "6da70e9e-9a72-4d22-ad5d-e02d3c4a00be",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "5cafadc3-97b1-488c-a170-665a9eb4d92c",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "db91aab5-9621-4d49-9ab7-ad7b1126b134",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "8bb82ae8-0b7c-4db2-b413-c1e9575d0319",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c63bdb53-6f98-4eaf-8c0e-b511badd0db0",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
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
              "uuid": "fd497053-30c4-433e-959a-391cbe984d6e",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
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
              "uuid": "8bec5a52-4c8e-483c-8f58-ecb4dd62883d",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "11591a69-8be4-4154-bac9-87a2dc36742a",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0ed599a1-6688-4324-bd5f-6837b536e271",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "d6ab79a3-8c05-46a6-80bf-d04da4ce33ae",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6677a5db-ab83-4dc6-b4b9-8d88c5fd70a1",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
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
              "uuid": "8ee6a1ff-eab8-47eb-b7c3-f4249a57ac96",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
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
              "uuid": "d98167eb-bebf-4d89-90a5-01e11d936281",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "54ffdd1a-9a9f-48cc-8377-71d64b834974",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "587401a0-cec5-4e0f-8f22-eb6c5ae860a0",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "bff74945-869f-4770-8f81-255a6af94548",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1d3231a-af37-4f31-a0ba-3d66fddb23d7",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
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
              "uuid": "36ff99bc-d255-48c5-b544-34b89f73b708",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
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
              "uuid": "43b12e94-ea1a-4206-a865-241689621acc",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9f530243-527a-40fd-add7-9f10f0eeecdc",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "4723cfc6-b1e0-4d0d-a1d3-104ced737076",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "4cdf2e10-5da2-4774-afab-d3baeca66275",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "923e70d2-be39-4ecd-813b-68f6b886cc07",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
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
              "uuid": "6ce6a870-7ac0-467e-909c-1a830b8c7e64",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
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
              "uuid": "b88c654c-f559-420b-90bb-a7c5b09e57d9",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "514a2deb-b740-48f1-b1ce-6d86912acefb",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "3f1cf248-a3bb-4b05-ab1f-bc9a2969b498",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "1e12b70c-ce01-4407-9b93-12a36cd68948",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d72123ba-58da-46f9-a3d8-c1eb3fd08a40",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
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
              "uuid": "169c382b-2c11-4e13-9bb9-cae179444d63",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
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
              "uuid": "35cd4250-ee75-45a2-8f50-a68b15ff40f8",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "b90b63ff-e13b-4ee0-bd0c-1cb5ee0b661c",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "23a8557e-18ac-4413-b1ba-a3d577a41315",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "c2b3ae65-21be-4e84-84d8-618ce0501fd2",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b24cd64f-c18c-46e1-8c87-e8e14cb42541",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
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
              "uuid": "0766437a-e472-4b4e-b35d-5496fa9679de",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
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
              "uuid": "9ce70817-d2f8-4d4f-9e07-5da9ce1929ac",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
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
              "uuid": "71da34d6-d926-4e1e-ae7a-7d58a776c260",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "e439ab4e-1201-4fd1-a512-281f6a8b6f4e",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "b8866fcb-f367-4097-bec6-4dc6d6dcdba5",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "bcc25c6a-6cba-4893-b48e-628c609f857b",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8db9db34-9a1c-4458-a7fa-abf478678263",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
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
              "uuid": "24d317f3-c7d4-4978-8e07-fa446eb67192",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
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
              "uuid": "eb4874c4-e0ae-4aa6-881c-d8195b308024",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
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
              "innerHtml": "<input type=\"text\" style=\"width: 100%; display: block; box-sizing: border-box;\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d93fe9a8-7bc8-4113-b282-4b967510215a",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "fb655937-a186-484d-be38-a9ee151cf578",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "8a45561b-64f1-4840-b978-23f5c8a5f4ca",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "0f6116a6-602e-40c0-9332-1e42e86657be",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dbbacce0-2dbe-46c7-af9d-be7f35d620d0",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
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
              "uuid": "d57f22e3-dce9-4471-bf5d-da4ebc3274b5",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
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
              "uuid": "f9b90473-601c-4c38-b930-71ebeb1252bc",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "f37d0170-6f97-46b8-87ce-c98015819ee4",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d3e7af38-0be3-4948-8754-68162f0d573e",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "7e2b6906-f6f1-439a-8126-f95719bbe6b8",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f134bf0-ed36-40de-87db-63d2a7be5ca3",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
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
              "uuid": "660b382f-4c49-4302-8217-f4374e0775be",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
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
              "uuid": "a9c1a23f-fa7d-47fd-ab3b-7aba264cff9b",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a31d0f1c-0905-4c95-80cb-b0dc0fd65602",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "3f707dbf-fb06-4f61-804a-f3dbbc94a24c",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "615d14ab-f9ff-43fb-9975-6ee9beed06fe",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d50531e2-78a1-4536-88c2-02ebf7cedaae",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
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
              "uuid": "db400bb3-9f6d-4b4a-980f-d1a43d850896",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
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
              "uuid": "11444d16-f278-46f0-a2e8-e7ca8627fcaf",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e377a368-0a78-4d70-885b-adc42f27f5de",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "2c1539c4-8b80-4d7a-b284-805ee8f698ee",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "570fb198-0ec2-4424-a1f4-c79ecbcb468c",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c94df85e-4054-40eb-b4d3-f6eabb60e5b4",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
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
              "uuid": "ff8c2aa0-f387-431f-a306-a206d9dfd0c9",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
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
              "uuid": "25cc3563-3c2f-4b8f-91d6-ccc87df07e79",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "00768347-1556-46f5-8366-ad37cd47ef5d",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0d94a759-1624-4251-b81d-c0bacda7bd13",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "eeae759a-74d0-432a-bd8c-4bae5d240aff",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "9bee6327-ba24-4940-95d7-fc0d63f5f04e",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d6ccbdaa-6a82-48cb-8226-3f541b395209",
              "parent_uuid": "9bee6327-ba24-4940-95d7-fc0d63f5f04e",
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
          "uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86c415fa-7ec7-4ee2-a6e3-191b7a6802b3",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
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
              "uuid": "08d4646b-9030-412c-9fab-6a7ff8f1d20b",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
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
              "uuid": "db0385cf-0486-42c2-91e8-b2df7920d088",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a058ad22-1847-4b68-ad82-d7d61267cd8d",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6b230bd0-01db-4acf-a6c1-d4fa330471ad",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "50ef41e5-51ea-4f03-abc0-850b562572ff",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28e7ae65-b455-4457-9800-d740d3e58d8d",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
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
              "uuid": "461cd7f4-f9bc-4552-acde-914e2c97b266",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
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
              "uuid": "cc3eb5fd-b2d9-473b-a95b-553b3885435b",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "53ac8811-6cc1-4412-a33b-551eec1329ae",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "ed1449ca-cac9-476c-81e3-5ab26c1d8a8d",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "df815d07-9490-4a04-8819-dc4433bf2e97",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ade8b83-6347-4d01-a038-faa7654705bd",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
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
              "uuid": "c43037de-6146-49c6-a215-ef1892991343",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
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
              "uuid": "404aba8d-0cb6-4c5a-be9c-603515209140",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "181b8afa-ca35-491c-b2dc-021adae030da",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "e2c1f850-7fae-4414-9115-3ac3983d2e11",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "de3ed4d0-be1d-4a0c-a518-25b0d5b35a69",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3656d7cf-b1e4-4f41-ad11-6d9af71789de",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
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
              "uuid": "d08a14d5-66a2-4581-a129-33d4e5c72973",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
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
              "uuid": "7a0c6a84-53b7-40c5-927c-66974c207ede",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "bf2c6839-52d2-4444-a4b5-01aeb9236c21",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "e7d65aac-f4b3-40bd-ba20-b86afaa4c451",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "60d7e187-b5f0-4dfb-a081-d33bb90acd2e",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "734a5d37-3807-4b1c-b588-688dd71dfb23",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
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
              "uuid": "14af8894-132b-4965-a4b5-c9b48401ccdb",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
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
              "uuid": "2f7cf59a-1a8e-4288-b669-3f514d61a548",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "0f022c69-f778-43ea-97b0-10dbf12e7c9d",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "4f3bb506-8496-41ce-9ee0-8935fdecba70",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "3d3e03b2-1431-4445-8581-80ecdac52548",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "89d3802c-765d-4890-9e00-6ff45026a076",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d7219e8-8965-4d90-820e-ae82c164356a",
              "parent_uuid": "89d3802c-765d-4890-9e00-6ff45026a076",
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
          "uuid": "8924adfd-425b-4306-827c-c88b84321c94",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79088ef0-089f-42ca-b68d-f6184cdf9fce",
              "parent_uuid": "8924adfd-425b-4306-827c-c88b84321c94",
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
          "uuid": "ce863dc3-b75e-4803-977d-d3b4b8c6fbd5",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57685485-092a-4396-be50-5db159750a8b",
              "parent_uuid": "ce863dc3-b75e-4803-977d-d3b4b8c6fbd5",
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
              "innerHtml": "\r\n                    <textarea class=\"notes\"></textarea>\r\n                ",
              "children": [],
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 
